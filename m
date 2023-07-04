Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79BDE747281
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jul 2023 15:18:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1871310E13E;
	Tue,  4 Jul 2023 13:18:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB14010E13E
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jul 2023 13:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688476685; x=1720012685;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hyygj3oFWwl8CHW+uYKP9C0UPaoeSXB531qyLy+t81U=;
 b=a2+D80P9stbl2Pru8RXWDrX7DaQRJbwHRQictUkFsqEfiKeDIkZc+4dl
 RSSwQxKpyJTY3LfwqKQH1D+OisveZNit/vi6R+rYlTsmkU4joIwXqnxvj
 uuz74qMhi5ZDTaKEl4n/+TY2oB9V+tXxZchki2kqmhaSiAQyn9NRwMRZi
 7IyLBuM+RmBvRCAQWwgoy8NBkpG3SzeCWVv/XoJhlTZ6TbIvyiz6kVsyu
 iJ4X7X/S8jPctnFb7wFUpgWYubM7lgGfdYiBrTC/4ltxsKW6JU7n3O0s3
 aZyuvHGxz80oTpBhwMY9vPBw12PGvg2OOj0A/S1p5Ls6u9Jk5YB4PBXjY Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="429157276"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="429157276"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2023 06:18:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="892865432"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="892865432"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga005.jf.intel.com with ESMTP; 04 Jul 2023 06:18:01 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Jul 2023 16:17:57 +0300
Message-Id: <20230704131758.14024-2-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20230704131758.14024-1-stanislav.lisovskiy@intel.com>
References: <20230704131758.14024-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Add helper function for getting
 number of VDSC engines
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

Currently we are using dsc_split and bigjoiner variables for determining
amount of VDSC instances, however that might change in future, if we happen
to have more of those.
So lets pack all that logic into single function for convenience, so that
at least this isn't hardcoded throughout the whole VDSC code.

v2: - s/u8/int/ (Jani Nikula)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 15 +++++++++++----
 drivers/gpu/drm/i915/display/intel_vdsc.h |  1 +
 2 files changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index bd9116d2cd76..530f3c08a172 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -293,6 +293,16 @@ intel_dsc_power_domain(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
 		return POWER_DOMAIN_TRANSCODER_VDSC_PW2;
 }
 
+int intel_dsc_get_num_vdsc_instances(const struct intel_crtc_state *crtc_state)
+{
+	int num_vdsc_instances = (crtc_state->dsc.dsc_split) ? 2 : 1;
+
+	if (crtc_state->bigjoiner_pipes)
+		num_vdsc_instances *= 2;
+
+	return num_vdsc_instances;
+}
+
 static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -303,11 +313,8 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 	u32 pps_val = 0;
 	u32 rc_buf_thresh_dword[4];
 	u32 rc_range_params_dword[8];
-	u8 num_vdsc_instances = (crtc_state->dsc.dsc_split) ? 2 : 1;
 	int i = 0;
-
-	if (crtc_state->bigjoiner_pipes)
-		num_vdsc_instances *= 2;
+	int num_vdsc_instances = intel_dsc_get_num_vdsc_instances(crtc_state);
 
 	/* Populate PICTURE_PARAMETER_SET_0 registers */
 	pps_val = DSC_VER_MAJ | vdsc_cfg->dsc_version_minor <<
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.h b/drivers/gpu/drm/i915/display/intel_vdsc.h
index 8763f00fa7e2..2cc41ff08909 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.h
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.h
@@ -22,6 +22,7 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state);
 enum intel_display_power_domain
 intel_dsc_power_domain(struct intel_crtc *crtc, enum transcoder cpu_transcoder);
 struct intel_crtc *intel_dsc_get_bigjoiner_secondary(const struct intel_crtc *primary_crtc);
+int intel_dsc_get_num_vdsc_instances(const struct intel_crtc_state *crtc_state);
 void intel_dsc_dsi_pps_write(struct intel_encoder *encoder,
 			     const struct intel_crtc_state *crtc_state);
 void intel_dsc_dp_pps_write(struct intel_encoder *encoder,
-- 
2.37.3

