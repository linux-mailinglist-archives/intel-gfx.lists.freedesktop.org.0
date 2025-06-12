Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 183A7AD7492
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jun 2025 16:50:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A8A210E88E;
	Thu, 12 Jun 2025 14:50:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QsaHw/4I";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07F5D10E88E;
 Thu, 12 Jun 2025 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749739833; x=1781275833;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kwR9euM8cXWK+WCn5ITip5tysDFwGaT38fE1YovYbuo=;
 b=QsaHw/4I8h0b86rA3nq3wJHTTomnV5XmgXA28zeKePXDb/Ll1Npp2hDk
 ZRPG+cXx0GJMwnhNQVlH+NG06jYcijDtmQhFRyxDMx8hnMupexoxfpdV1
 N8Aa1KKOR0PyYsS5VJzx5j9uVPDjaRZ4tTk0IUmwYUX6xfWRGZeDND/de
 YmlHrRwv9I4fqbflS1S8BnAwIAM2XpigPDDnQTb0w2MBkmXFulaHdJj4r
 r19kJ0DVmvw51c4iIUkqV6B2wHMM5bCsb9BSOofChX8rJLj1npCL8eI6O
 MBsThAsUIbGtW9mWlp6T0EvxUaPYV3m/tYh55xOdNXaa59PAMPGfuKt8V Q==;
X-CSE-ConnectionGUID: BAq+rTMoS6CsrL+msj1pfg==
X-CSE-MsgGUID: w2TOXdbsStqtcAKxFevxCw==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="52066752"
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="52066752"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 07:50:33 -0700
X-CSE-ConnectionGUID: Tmylq6pERK+t3VP0OwmXyg==
X-CSE-MsgGUID: Si7JfK2UTZGysToP5Vcgsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="152826204"
Received: from abityuts-desk.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.200])
 by orviesa005.jf.intel.com with SMTP; 12 Jun 2025 07:50:30 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 12 Jun 2025 17:50:29 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH 3/6] drm/i915/dsb: Introduce intel_dsb_exec_time_us()
Date: Thu, 12 Jun 2025 17:50:15 +0300
Message-ID: <20250612145018.8735-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250612145018.8735-1-ville.syrjala@linux.intel.com>
References: <20250612145018.8735-1-ville.syrjala@linux.intel.com>
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
intel_dsb_arm_exec_time_us(), and also add its counterpart
for the non-arming register write section. For the non-arming
part we'll just throw in a random 80 usec for now so the total
is 100usec. The total exec time will be needed by the upcoming
flip queue code.

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 26 ++++++++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_dsb.h |  1 +
 2 files changed, 25 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 50d8c4900644..06a615d36a86 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -685,14 +685,36 @@ static u32 dsb_error_int_en(struct intel_display *display)
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

