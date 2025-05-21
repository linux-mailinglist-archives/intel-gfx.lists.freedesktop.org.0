Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB418ABFCDA
	for <lists+intel-gfx@lfdr.de>; Wed, 21 May 2025 20:29:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B617410E849;
	Wed, 21 May 2025 18:18:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S9rypxtu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9756B10E7BC;
 Wed, 21 May 2025 18:17:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747851428; x=1779387428;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BxVrjIPdtme8X+GMTumYX+drF4Sg1ugZXha+mEg0G3Y=;
 b=S9rypxtuAJnCwt1QwjJe6eYhuMv3c3uCcIJRjTb8Ka1dKeytRuW9YMHx
 1ZHVkry3y7yMlukjMXNyKYVN4OeAedPKSMQBR4vsAm1hIxtmu3pL7gwAo
 lPDwCpTFa6gWfEKy/zHHCiPqPOrw6X56OYNYLE/76HxV2yQ1CO/9EqNK0
 7bEnAzG0Wsj/9YAHFP5H0854MT3J47NRvZylS+ALRvf4EURubZ9sn29VL
 QCWEEmBaKHs8cQHeB/ak8Q6Pjxa0K8MROA9VVpoSlhonq2J/JhXAp9uok
 9tnne9aNLh3/sNVcZ89DycPfjy4ZX2iNvYr6kD2qRCX8lrNyH1YLkRaj9 w==;
X-CSE-ConnectionGUID: X9XsL68PQISDa/etrcWqJA==
X-CSE-MsgGUID: MLPgZ1bERduQKuaFcYC8Jw==
X-IronPort-AV: E=McAfee;i="6700,10204,11440"; a="75244756"
X-IronPort-AV: E=Sophos;i="6.15,304,1739865600"; d="scan'208";a="75244756"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2025 11:17:08 -0700
X-CSE-ConnectionGUID: MhIuL25mRcevcPvP+7zi7A==
X-CSE-MsgGUID: GyYfPyLfSBOn1sGXI9THOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,304,1739865600"; d="scan'208";a="145322293"
Received: from oandoniu-mobl3.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.255])
 by orviesa005.jf.intel.com with SMTP; 21 May 2025 11:17:05 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 21 May 2025 21:17:04 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v2 06/13] drm/i915/dsb: Introduce intel_dsb_exec_time_us()
Date: Wed, 21 May 2025 21:16:38 +0300
Message-ID: <20250521181645.32737-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250521181645.32737-1-ville.syrjala@linux.intel.com>
References: <20250521181645.32737-1-ville.syrjala@linux.intel.com>
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
index 82cb58cf9c6a..1b663065a1cd 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -593,14 +593,36 @@ static u32 dsb_error_int_en(struct intel_display *display)
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
index 6a90ffe1f6ff..91703ef974f6 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.h
+++ b/drivers/gpu/drm/i915/display/intel_dsb.h
@@ -34,6 +34,7 @@ struct intel_dsb *intel_dsb_prepare(struct intel_atomic_state *state,
 				    unsigned int max_cmds);
 void intel_dsb_finish(struct intel_dsb *dsb);
 void intel_dsb_cleanup(struct intel_dsb *dsb);
+int intel_dsb_exec_time_us(void);
 void intel_dsb_reg_write(struct intel_dsb *dsb,
 			 i915_reg_t reg, u32 val);
 void intel_dsb_reg_write_indexed(struct intel_dsb *dsb,
-- 
2.49.0

