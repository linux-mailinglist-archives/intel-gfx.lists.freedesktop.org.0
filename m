Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9EBFA3EB8F
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2025 04:59:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89B7110E202;
	Fri, 21 Feb 2025 03:59:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NKwpvZLr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3777810E202;
 Fri, 21 Feb 2025 03:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740110373; x=1771646373;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=msE/ExPWDO5Nhu5Sxp2liKGLyITMm7k39SsdFxHywC4=;
 b=NKwpvZLrg3iHhOSksRwITuODBIPSGmLjtsKBwm1ENzX4pRYdMZsNGQKg
 B441Z7mJucOsSU19ioJbSh+Jk1iKHoqFnlOAbLR1aw+BStFP+zHQNl3rq
 P1hLgUxvecBFLPTvTxdgPLr2/qyF9WOnnJGc5gKZlvQaqSZOryNXUOQXP
 /ATrgxORgnSFAOhF/XrPCI/XvL5IWB9dVOd2vd5JQUxXpbawBGRUMwXdO
 ZPaU8uuRLipxvxKNLAV47PPBaorKu53oK904gPZbvUx7Vnsr6OePJSMYy
 86ALRy49YmoH20tnSwouw7SBdFf4gM9I3NRLpOUNFgJEWk8JNuICMLLa4 w==;
X-CSE-ConnectionGUID: +DkrQLcMRXWevhZIz9+3cg==
X-CSE-MsgGUID: +T1eLY+9QtWyOXgL2x+NPQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11351"; a="51560304"
X-IronPort-AV: E=Sophos;i="6.13,303,1732608000"; d="scan'208";a="51560304"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2025 19:59:32 -0800
X-CSE-ConnectionGUID: vKKwCw4oR8K7A61amYvx5Q==
X-CSE-MsgGUID: m61yi9IkQGmu/roCfUkTow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="115099627"
Received: from gyu3-linux.itwn.intel.com (HELO gyu3-linux.itwn.corp.intel.com)
 ([10.225.64.210])
 by orviesa010.jf.intel.com with ESMTP; 20 Feb 2025 19:59:30 -0800
From: gareth.yu@intel.com
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	shawn.c.lee.intel.om@freedesktop.org, william.tseng@intel.com,
	ankit.k.nautiyal@intel.com, Gareth Yu <gareth.yu@intel.com>,
	Suraj Kandpal <suraj.kandpal@intel.com>,
	Juha-Pekka Heikkil <juha-pekka.heikkila@intel.com>
Subject: [PATCH] drm/i915/vdsc: Correct the conditions of DSC1.1 and DSC 1.2
 for rc params calculation
Date: Fri, 21 Feb 2025 12:14:01 +0800
Message-Id: <20250221041401.2219258-1-gareth.yu@intel.com>
X-Mailer: git-send-email 2.34.1
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

From: Gareth Yu <gareth.yu@intel.com>

The condition change is because Gen 14 begins to support DSC 1.2
and need to check if the sink supports DSC1.2

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13719

Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: Juha-Pekka Heikkil <juha-pekka.heikkila@intel.com>
Signed-off-by: Gareth Yu <gareth.yu@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index b355c479eda3..555180e40b72 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -320,7 +320,7 @@ int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
 	 * upto uncompressed bpp-1, hence add calculations for all the rc
 	 * parameters
 	 */
-	if (DISPLAY_VER(dev_priv) >= 13) {
+	if ((DISPLAY_VER(dev_priv) >= 14) && (vdsc_cfg->dsc_version_minor >= 2)) {
 		calculate_rc_params(vdsc_cfg);
 	} else {
 		if ((compressed_bpp == 8 ||
-- 
2.34.1

