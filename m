Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C008AD2097
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Jun 2025 16:11:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E20810E3AA;
	Mon,  9 Jun 2025 14:11:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Mpv7M9f8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D04EF10E3B9;
 Mon,  9 Jun 2025 14:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749478260; x=1781014260;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kczoTSvmuRsjeC5ibTD77J+6bwsmGq2yj3giLC56tfU=;
 b=Mpv7M9f8UKGz7+BlmsBQn24c8YqNwDU3+wFM3MBMXmzeV9HyTMAxK2hG
 PnKFdwr5Xzy5JEQJA7fru4RxeG0oiuL+bo8Jcu1WBfO7xL+JdY/lNk59C
 1UqLOEZlQZl+wW+5bB7Dbl3+VTxiRJIhxVZYH4+IGS8NgI4bh0g/ViieG
 GoDFAybgqZYV7kzwTrsInKiblM0phTQVbnF+wi8Z+UxgjAvWh7Tf1K2Y9
 Ia4kvacwenhrt99ZTXECRxYlokMQCG5kJ9gp/thJsAg1EJWzAsTaFKSuS
 O8V3FrzE+xsmgCFUoxpj6IkjDGcGY03jFwNcLtFY7hJGb6VpEvSc+qamb Q==;
X-CSE-ConnectionGUID: DaSUirD4RRuT3kvs0bW8hA==
X-CSE-MsgGUID: Ud2uSMzWTkmAGGWjAiogzA==
X-IronPort-AV: E=McAfee;i="6800,10657,11459"; a="55360717"
X-IronPort-AV: E=Sophos;i="6.16,222,1744095600"; d="scan'208";a="55360717"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2025 07:11:00 -0700
X-CSE-ConnectionGUID: OQ2mftVjQL+UW/p4Hi3RNg==
X-CSE-MsgGUID: bmrYAl28S6KjrB2m+jFiYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,222,1744095600"; d="scan'208";a="151765498"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.99])
 by orviesa005.jf.intel.com with SMTP; 09 Jun 2025 07:10:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 09 Jun 2025 17:10:56 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v4 03/21] drm/i915/dsb: Introduce intel_dsb_exec_time_us()
Date: Mon,  9 Jun 2025 17:10:28 +0300
Message-ID: <20250609141046.6244-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250609141046.6244-1-ville.syrjala@linux.intel.com>
References: <20250609141046.6244-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Pull the magic 20 usec DSB execution deadline into
intel_dsb_arm_exec_time_us(), and also add its counterapart
for the non-arming register write section. For the non-arming
part we'll just throw in a random 80 usec for now so the total
is 100usec. The total exec time will be needed by the upcoming
flip queue code.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 26 ++++++++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_dsb.h |  1 +
 2 files changed, 25 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 8cbb5695c651..c8011f5e4076 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -686,14 +686,36 @@ static u32 dsb_error_int_en(struct intel_display *display)
 	return errors;
 }
 
+/*
+ * FIXME calibrate these sensibly, ideally compute based on
+ * the number of regisetrs to be written. But that requires
+ * measuring the actual DSB execution speed on each platform
+ * (and the speed also depends on CDCLK and memory clock)...
+ */
+static int intel_dsb_noarm_exec_time_us(void)
+{
+	return 80;
+}
+
+static int intel_dsb_arm_exec_time_us(void)
+{
+	return 20;
+}
+
+int intel_dsb_exec_time_us(void)
+{
+	return intel_dsb_noarm_exec_time_us() +
+		intel_dsb_arm_exec_time_us();
+}
+
 void intel_dsb_vblank_evade(struct intel_atomic_state *state,
 			    struct intel_dsb *dsb)
 {
 	struct intel_crtc *crtc = dsb->crtc;
 	const struct intel_crtc_state *crtc_state =
 		intel_pre_commit_crtc_state(state, crtc);
-	/* FIXME calibrate sensibly */
-	int latency = intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode, 20);
+	int latency = intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode,
+					       intel_dsb_arm_exec_time_us());
 	int start, end;
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h b/drivers/gpu/drm/i915/display/intel_dsb.h
index ab6489749866..6bcfb03f3415 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.h
+++ b/drivers/gpu/drm/i915/display/intel_dsb.h
@@ -35,6 +35,7 @@ struct intel_dsb *intel_dsb_prepare(struct intel_atomic_state *state,
 void intel_dsb_finish(struct intel_dsb *dsb);
 void intel_dsb_gosub_finish(struct intel_dsb *dsb);
 void intel_dsb_cleanup(struct intel_dsb *dsb);
+int intel_dsb_exec_time_us(void);
 void intel_dsb_reg_write(struct intel_dsb *dsb,
 			 i915_reg_t reg, u32 val);
 void intel_dsb_reg_write_indexed(struct intel_dsb *dsb,
-- 
2.49.0

