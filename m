Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E4FE93B52D
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2024 18:40:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95A4B10E766;
	Wed, 24 Jul 2024 16:40:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XcjqYiJa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C54510E752
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jul 2024 16:40:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721839211; x=1753375211;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jgLWq/sQWuNgNBYMctBGfEz/R1u0J4aLKrUf/Ifr8Rc=;
 b=XcjqYiJaIK42FwyZcYjfTIUeNnfz0KTa5hN7m/ir3OdNxiO80CVYUnUE
 MNaGJvjXzv4axauFMB7ew5/2bcdkQQsfyewEWd9WHXQvIOGPiInOrO9x7
 pLySLQwO6o7wUjg4lifQfKBoUSv5PWllu6XAXiSBa4wXb9D6PwhlVdjzL
 xsCDNME2mE4PJuUGwu3dAy9mbzlopu7xEvvIVbrvaomr1krErNWWtt4XN
 7+TjeKr4hyp6J2yAb1nqAeTtgoj1EMrs7lY/d9XnEkey28PGTNJBhhmHY
 qhci3vHLQzYZGsTwVNlXzzJh6fmiSuI4zP3Q0mRBeZUIfQ6rJ9lrlX0XE g==;
X-CSE-ConnectionGUID: HMUPS4MpSieWwfYeYLg8LA==
X-CSE-MsgGUID: zy3Z4nGQR8mfzFmsrZp4RQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11143"; a="30197452"
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="30197452"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2024 09:40:10 -0700
X-CSE-ConnectionGUID: dhfUTKKzRwqt+kQ9hboIww==
X-CSE-MsgGUID: +LeIALLzQkiQl9EKThgNlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="52580002"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa009.fm.intel.com with ESMTP; 24 Jul 2024 09:40:09 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, ankit.k.nautiyal@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/dp: Clear VSC SDP during post ddi disable routine
Date: Wed, 24 Jul 2024 22:07:43 +0530
Message-ID: <20240724163743.3668407-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240723042802.3618046-1-suraj.kandpal@intel.com>
References: <20240723042802.3618046-1-suraj.kandpal@intel.com>
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

--v2
-Make the comment match the code [Jani]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 1e43e32e0519..37cd7165a5b3 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4369,8 +4369,11 @@ void intel_dp_set_infoframes(struct intel_encoder *encoder,
 	if (!enable && HAS_DSC(dev_priv))
 		val &= ~VDIP_ENABLE_PPS;
 
-	/* When PSR is enabled, this routine doesn't disable VSC DIP */
-	if (!crtc_state->has_psr)
+	/*
+	 * This routine disables VSC DIP if the function is called
+	 * to disable SDP or if it does not have PSR
+	 */
+	if (!enable || !crtc_state->has_psr)
 		val &= ~VIDEO_DIP_ENABLE_VSC_HSW;
 
 	intel_de_write(dev_priv, reg, val);
-- 
2.43.2

