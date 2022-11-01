Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AA61614553
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Nov 2022 08:58:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C4D810E1EC;
	Tue,  1 Nov 2022 07:57:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88E4A10E1C1
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Nov 2022 07:57:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667289470; x=1698825470;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xvulVZ2vF0Gm2+mXj/7z/IxTWoRhYsK4tr0C/m49wDs=;
 b=IIH2ppnlhqtNltA/I0efjcj27GmDGu2BEHUsewq7LCWif7mrdRXAcMsB
 vFffIc32sDGpBSPg1CI/WiyBISBjcizclt8SoiALzH/Z0HiM/7TT4IwKx
 NkYcXIZh9CEt3UYUEN9M6dlNErMUJ/bH2dc+nt/CQmuwtlbiJTGBZy36l
 nmXJiEZ4b9xmepHCqBuEDJzfsQKqPbflSnTdEXVMUZ9jjj7zuEtESQoPf
 Q8Ob8tqUBK02s6KyeLy9I+D8Uvvtbib4A3F1KvByRMH13NC1fog9MgcyY
 QmK/tkRgzT3hHc5mUHs+C6IHZDjaDTQQTxPjHFQeraADwF/pKkQlAsHJk Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="306705364"
X-IronPort-AV: E=Sophos;i="5.95,230,1661842800"; d="scan'208";a="306705364"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2022 00:57:50 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="633802613"
X-IronPort-AV: E=Sophos;i="5.95,230,1661842800"; d="scan'208";a="633802613"
Received: from srr4-3-linux-118-swatish2.iind.intel.com ([10.223.34.130])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2022 00:57:48 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Nov 2022 13:29:27 +0530
Message-Id: <20221101075927.15146-1-swati2.sharma@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dsc: Source supports DSC from
 DISPLAY_VER >= 11
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

i915 driver supports DSC from DISPLAY_VER >= 11. Fix it.

Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7400d6b4c587..02e64f0284d8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1012,7 +1012,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	 * Output bpp is stored in 6.4 format so right shift by 4 to get the
 	 * integer value since we support only integer values of bpp.
 	 */
-	if (DISPLAY_VER(dev_priv) >= 10 &&
+	if (DISPLAY_VER(dev_priv) >= 11 &&
 	    drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd)) {
 		/*
 		 * TBD pass the connector BPC,
@@ -2906,7 +2906,7 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp)
 	intel_dp_set_max_sink_lane_count(intel_dp);
 
 	/* Read the eDP DSC DPCD registers */
-	if (DISPLAY_VER(dev_priv) >= 10)
+	if (DISPLAY_VER(dev_priv) >= 11)
 		intel_dp_get_dsc_sink_cap(intel_dp);
 
 	/*
-- 
2.25.1

