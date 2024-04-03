Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 752D9896D3D
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 12:52:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9D801129DC;
	Wed,  3 Apr 2024 10:52:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="leu4WxYx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12F4B1129D6;
 Wed,  3 Apr 2024 10:52:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712141530; x=1743677530;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VRdiBD2h4YYNRaplzIAtm23xXiVy17j8IOALa3XHnlw=;
 b=leu4WxYxuK5l9mCN2Rzx1UWVqcvxrMetw/mAM5UI60PmyK0vfMa8ZgIu
 LwTvNdbKsGXrhWJDLN5ayI4DC27Stdu+KF4FjKeSJfvw8ZDNpCAK9w3fK
 suA6O08N3YVTvqdG1EAZ6R7LCmOkhKCMA2j19YGHAwEiCcMUxPI/5kg1J
 BChicdhpMAqup7F5BxZAu1BQU9S7UDlYfAfHcJ98QSscNKR0r5Z7MHXVx
 JTtVWO6RCHp856jVHR3CK3xblIqoYSp1G+bDYp2Crgmch8zITQwayWNDn
 JCXsVfciKLQHPFZdLerYIRrAygp2YqrSQS7EwfGBU6jFJMGWtkmfqh0nD w==;
X-CSE-ConnectionGUID: woHFo84tQz2G3lo8bPX7rQ==
X-CSE-MsgGUID: LmA4ISaGQBaj5/2WCfWX4Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="7212196"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; 
   d="scan'208";a="7212196"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 03:51:47 -0700
X-CSE-ConnectionGUID: LoKkpaFtTca1zWxJPf/rPA==
X-CSE-MsgGUID: TMKX9bKTTWKp5/ZWUOJecg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18493397"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 03:51:44 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Subject: [PATCH 16/25] drm/xe/xe2hpd: Define a new DRAM type INTEL_DRAM_GDDR
Date: Wed,  3 Apr 2024 16:21:14 +0530
Message-Id: <20240403105123.1327669-17-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240403105123.1327669-1-balasubramani.vivekanandan@intel.com>
References: <20240403105123.1327669-1-balasubramani.vivekanandan@intel.com>
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

Defined a new DRAM type to be used in the following patches.
The following patch first makes use of this new type in the i915
display. So without this define, build would fail when the shared
display code is built for Xe.

Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
---
 drivers/gpu/drm/xe/xe_device_types.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
index 1df3dcc17d75..e7aa2dd3df8d 100644
--- a/drivers/gpu/drm/xe/xe_device_types.h
+++ b/drivers/gpu/drm/xe/xe_device_types.h
@@ -480,6 +480,7 @@ struct xe_device {
 			INTEL_DRAM_LPDDR4,
 			INTEL_DRAM_DDR5,
 			INTEL_DRAM_LPDDR5,
+			INTEL_DRAM_GDDR,
 		} type;
 		u8 num_qgv_points;
 		u8 num_psf_gv_points;
-- 
2.25.1

