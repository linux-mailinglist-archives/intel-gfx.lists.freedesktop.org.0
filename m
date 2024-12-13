Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 725F19F07E1
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2024 10:27:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5152810EF7B;
	Fri, 13 Dec 2024 09:27:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BIuGkCPC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D425110EF7B;
 Fri, 13 Dec 2024 09:27:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734082069; x=1765618069;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3jknrA0FemZWGjfi95rhd2p4FeaPfVtpKIIBGNb08kY=;
 b=BIuGkCPCSVT8Ss/tuJUh/KFfVhXmdLMT+Jku8A6Qoyk8YQrl2ZTRrzWi
 8J8T9+U/lkz9BKrGqda6syuDH+PzAJOl7XMfAyNMWepxKUAZzL3yjz1rW
 jro/6ISdVQ6vsFPbZTCyqXUJzk2GLN2rYhfsowlluLW0PJ2X6hO1NsO5Y
 /oPL5cuVPra08kYzo8bbtF5AF4HmDClbRJO0mhUIhsKoUj1j1ca5LZH79
 iZ1so+zpy8CDx3Y//rWG11SRMKEMUl4qYY/y204i0VRddFeQ3gWzNUm+U
 9TM+a0kv0p0rMixX+18VMpHvOd5h8seKkkFy1ni+w+IHMesNJptXNE8TA Q==;
X-CSE-ConnectionGUID: yJReil1fQ++NdY1SGiD6YA==
X-CSE-MsgGUID: NX+FXOSuQEuQOEuwhHutbA==
X-IronPort-AV: E=McAfee;i="6700,10204,11278"; a="45915541"
X-IronPort-AV: E=Sophos;i="6.12,214,1728975600"; d="scan'208";a="45915541"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 01:27:49 -0800
X-CSE-ConnectionGUID: XCDq2icLS6C3KTyyWrtqvg==
X-CSE-MsgGUID: 2IIevbyKQZy+zK8+DoVQJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,230,1728975600"; d="scan'208";a="101505399"
Received: from linux-x299-aorus-gaming-3-pro.iind.intel.com ([10.223.34.130])
 by orviesa004-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Dec 2024 01:27:47 -0800
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Swati Sharma <swati2.sharma@intel.com>, Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH] drm/i915/dsc: Expose dsc sink max slice count via debugfs
Date: Fri, 13 Dec 2024 15:00:08 +0530
Message-Id: <20241213093008.2149452-1-swati2.sharma@intel.com>
X-Mailer: git-send-email 2.25.1
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

Number of DSC slices can be shown in the DSC debugfs so that
test can take a call whether the configuration can support forcing
bigjoiner/ultrajoiner.

v2: used intel_dp_is_edp() as the parameter to
    drm_dp_dsc_sink_max_slice_count() (Jani N)

Reviewed-by: Nemesa Garg <nemesa.garg@intel.com> (v1)
Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/3387
Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 3eb7565cd83c..a7c744654274 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1013,6 +1013,8 @@ static int i915_dsc_fec_support_show(struct seq_file *m, void *data)
 								      DP_DSC_YCbCr444)));
 		seq_printf(m, "DSC_Sink_BPP_Precision: %d\n",
 			   drm_dp_dsc_sink_bpp_incr(connector->dp.dsc_dpcd));
+		seq_printf(m, "DSC_Sink_Max_Slice_Count: %d\n",
+			   drm_dp_dsc_sink_max_slice_count((connector->dp.dsc_dpcd), intel_dp_is_edp(intel_dp)));
 		seq_printf(m, "Force_DSC_Enable: %s\n",
 			   str_yes_no(intel_dp->force_dsc_en));
 		if (!intel_dp_is_edp(intel_dp))
-- 
2.25.1

