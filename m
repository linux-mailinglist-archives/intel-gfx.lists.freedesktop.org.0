Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1ADAC35F7F
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 15:08:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D029A10E750;
	Wed,  5 Nov 2025 14:08:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aUYk/XAN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC6CC10E750;
 Wed,  5 Nov 2025 14:08:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762351691; x=1793887691;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oQJQspQuQ+TkgRKzi/Yh+f09gZP9buOYKLuQRBdj66w=;
 b=aUYk/XANOyrfdW4EMg19RF/7QwnVzU/GH59A/fZWBbdcNaAfUVJGFMME
 d1rNQFKySIQbYrKIp29ZGh72P5Nrjfkeko2df0Rjq9fvrMmE7pNVoJBzl
 BpSW3thXTHtAyXFjpK3+3h+JhKpKtnmhckBtYBxRJtmlc672xVp68A0Uo
 r4TBeSqWTSyecvm7PmF6ZVOv53p2KyrpLhtAntpuUR8KR4JFPJIgMLHgp
 IVDfbh4w2X7M2jyUfPe6GuHLDlTSZt2kuKh71TEVt/qtX7EnNVBcOZMDh
 5qsqsjrBhloryU7AdJWAfB0UX2/XzCI2RBfcb2LvzCRL+imyFqvqKIDm4 g==;
X-CSE-ConnectionGUID: yWWUgASfTvqDN1VyZvEGrg==
X-CSE-MsgGUID: fNVtx1OqRfGzHk/3jAk6IQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11603"; a="64348190"
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="64348190"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 06:08:11 -0800
X-CSE-ConnectionGUID: HnIOqmoBTEesY9T7ze2qOw==
X-CSE-MsgGUID: roCsfVMRTH+59bn0rqXNjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="191562927"
Received: from rfrazer-mobl3.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.124.221.150])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 06:08:10 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: gustavo.sousa@intel.com
Subject: [CI 01/17] drm/i915/xe3p_lpd: Add Xe3p_LPD display IP features
Date: Wed,  5 Nov 2025 11:06:50 -0300
Message-ID: <20251105140651.71713-20-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251105140651.71713-19-gustavo.sousa@intel.com>
References: <20251105140651.71713-19-gustavo.sousa@intel.com>
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

From: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>

Xe3p_LPD (display version 35) is similar to Xe2_LPD with respect to the
features described by struct intel_display_device_info, so reuse its
device descriptor.

v2:
  - Add reference to Bspec 74201. (Shekhar)

Bspec: 74201, 74304
Signed-off-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
Reviewed-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
Link: https://patch.msgid.link/20251103-xe3p_lpd-basic-enabling-v3-1-00e87b510ae7@intel.com
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 328447a5e5e8..1170afaa8680 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -1507,6 +1507,7 @@ static const struct {
 	{ 20,  0, &xe2_lpd_display },
 	{ 30,  0, &xe2_lpd_display },
 	{ 30,  2, &wcl_display },
+	{ 35,  0, &xe2_lpd_display },
 };
 
 static const struct intel_display_device_info *
-- 
2.51.0

