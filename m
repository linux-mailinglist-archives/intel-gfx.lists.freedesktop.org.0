Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F4399398E3
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2024 06:30:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C52A610E3E8;
	Tue, 23 Jul 2024 04:30:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lwUhSva+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9190810E3E8
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jul 2024 04:30:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721709030; x=1753245030;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=L/s7FRFUB2orgbS0GDWqOeQk+yRQ9EebK5bZahjq7dI=;
 b=lwUhSva++thtaQp59B1oRuBQUAO71H/sYHdOKNPeQx4LMLDmyMURqxZL
 dCUqWqGFynA8x7bRvr5L2itCLoWksNUNewboXDIsrfjSMNmXxzdm1VG2k
 ttddA+v+G0QKiOjTSTmT9mQYjCrMaveGxvT8GwUYQ9e26IwlhQC5WkiGR
 0AhJAhMOiPSPDfmnihPVZJbYQqhWAV4FqUWg6NS5pbmAgHTv7IdMnsCOe
 8D/ZiIXTyunD1VC5GO2TEXgyQQeHbul7X0HsdSI1TCyZkSzQ4T5BrmZ1X
 Smg30LQFC3L5poapc4P7UBh0LrtfOzFYmlK5pYM7JjK1RNgKg6x+wsTBR Q==;
X-CSE-ConnectionGUID: 2c+w7HvRSaGmWkbAD6HbPg==
X-CSE-MsgGUID: cOmtu+a+RYqaXpHAOZSKwg==
X-IronPort-AV: E=McAfee;i="6700,10204,11141"; a="29898223"
X-IronPort-AV: E=Sophos;i="6.09,229,1716274800"; d="scan'208";a="29898223"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 21:30:28 -0700
X-CSE-ConnectionGUID: 6QmS0PWPRyCs/dSTfjrZ2w==
X-CSE-MsgGUID: u2VJyQiOTDKIKYbcl0QgcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,229,1716274800"; d="scan'208";a="52160577"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa010.fm.intel.com with ESMTP; 22 Jul 2024 21:30:26 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/dp: Clear VSC SDP during post ddi disable routine
Date: Tue, 23 Jul 2024 09:58:01 +0530
Message-ID: <20240723042802.3618046-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
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

Clear VSC SDP if intel_dp_set_infoframes is called from post ddi disable
routine i.e with the variable of enable as false. This is to avoid
an infoframes.enable mismatch issue which is caused when pipe is
connected to eDp which has psr then connected to DPMST. In this case
eDp's post ddi disable routine does not clear infoframes.enable VSC
for the given pipe and DPMST does not recompute VSC SDP and write
infoframes.enable which causes a mismatch.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 1e43e32e0519..8b60d7f34ab8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4370,7 +4370,7 @@ void intel_dp_set_infoframes(struct intel_encoder *encoder,
 		val &= ~VDIP_ENABLE_PPS;
 
 	/* When PSR is enabled, this routine doesn't disable VSC DIP */
-	if (!crtc_state->has_psr)
+	if (!enable || !crtc_state->has_psr)
 		val &= ~VIDEO_DIP_ENABLE_VSC_HSW;
 
 	intel_de_write(dev_priv, reg, val);
-- 
2.43.2

