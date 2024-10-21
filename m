Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C70A79A6878
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2024 14:32:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6272110E4C7;
	Mon, 21 Oct 2024 12:32:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="em9X6rZb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BD9110E4DA;
 Mon, 21 Oct 2024 12:32:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729513926; x=1761049926;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lsf/Wv3DCum3YHpq1M/40fopATnzNr8uOgp/EeDpTLU=;
 b=em9X6rZbCJS7KIPmvXL215JfKrO/E2UPi9yLAajs9r8KFchSDfcs/B30
 LxnJjc2SUjanBlBxSS9Dk+ZnR6v0wWbbfDm8eaKYctYwlF18NFMUADB1n
 e+0sR5nuyEPZn44kK/FZN7VZyt/jEFBgZ5ziX/Vvif9U4Ff5nFHofRXue
 +gqYyRhV+ivVQzqmV8WwxLuOdJ94l19SKm2MYoVXjPIEMQfR2sApr/EPO
 uBPDHzutLt4W8oNClmGy2ymuULZpATZj/VeNFdVt7+uYuc4b25fPkAaC2
 Dr89LQZPdYgip254kLiRKNzvmsYtg6sn26vIo2q+WJOaiTsAnMReY78q3 A==;
X-CSE-ConnectionGUID: g3Hnnx8MRxuWs5ei906eJg==
X-CSE-MsgGUID: f3YB9MXgSp6ZrCkOmCrn/w==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="46459628"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="46459628"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 05:32:06 -0700
X-CSE-ConnectionGUID: UfwLfGc5TvqTwfGySLRPAA==
X-CSE-MsgGUID: TsOa18uUQu+3ckNtiWK/Xw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,220,1725346800"; d="scan'208";a="79866058"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 05:32:05 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	suraj.kandpal@intel.com
Subject: [PATCH 04/16] drm/i915/vdsc: Introduce 3rd VDSC engine VDSC2
Date: Mon, 21 Oct 2024 18:04:02 +0530
Message-ID: <20241021123414.3993899-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241021123414.3993899-1-ankit.k.nautiyal@intel.com>
References: <20241021123414.3993899-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
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

Introduce the register bits to enable the 3rd DSC engine VDSC2.
Add support to read/write these bits.

v2: Only introduce bits that are used and update the subject and commit
message. (Suraj)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c     | 20 +++++++++++++++----
 .../gpu/drm/i915/display/intel_vdsc_regs.h    |  2 ++
 2 files changed, 18 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 198446738662..70b75de921de 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -380,6 +380,8 @@ intel_dsc_power_domain(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
 static int intel_dsc_get_vdsc_per_pipe(const struct intel_crtc_state *crtc_state)
 {
 	switch (crtc_state->dsc.dsc_split) {
+	case 3:
+		return 3;
 	case 2:
 		return 2;
 	case 0:
@@ -782,6 +784,12 @@ void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
 		dss_ctl2_val |= VDSC1_ENABLE;
 		dss_ctl1_val |= JOINER_ENABLE;
 	}
+
+	if (vdsc_instances_per_pipe > 2) {
+		dss_ctl2_val |= VDSC2_ENABLE;
+		dss_ctl2_val |= SMALL_JOINER_CONFIG_3_ENGINES;
+	}
+
 	if (crtc_state->joiner_pipes) {
 		if (intel_crtc_ultrajoiner_enable_needed(crtc_state))
 			dss_ctl1_val |= ULTRA_JOINER_ENABLE;
@@ -983,11 +991,15 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
 	if (!crtc_state->dsc.compression_enable)
 		goto out;
 
-	if ((dss_ctl1 & JOINER_ENABLE) &&
-	    (dss_ctl2 & VDSC1_ENABLE))
-		crtc_state->dsc.dsc_split = 2;
-	else
+	if (dss_ctl1 & JOINER_ENABLE) {
+		if (dss_ctl2 & (VDSC2_ENABLE | SMALL_JOINER_CONFIG_3_ENGINES))
+			crtc_state->dsc.dsc_split = 3;
+
+		else if (dss_ctl2 & VDSC1_ENABLE)
+			crtc_state->dsc.dsc_split = 2;
+	} else {
 		crtc_state->dsc.dsc_split = 0;
+	}
 
 	intel_dsc_get_pps_config(crtc_state);
 out:
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
index d7a72b95ee7e..474a7f9f3881 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
@@ -22,6 +22,8 @@
 
 #define DSS_CTL2				_MMIO(0x67404)
 #define  VDSC0_ENABLE				REG_BIT(31)
+#define  VDSC2_ENABLE				REG_BIT(30)
+#define  SMALL_JOINER_CONFIG_3_ENGINES		REG_BIT(23)
 #define  VDSC1_ENABLE				REG_BIT(15)
 #define  RIGHT_DL_BUF_TARGET_DEPTH_MASK		(0xfff << 0)
 #define  RIGHT_DL_BUF_TARGET_DEPTH(pixels)	((pixels) << 0)
-- 
2.45.2

