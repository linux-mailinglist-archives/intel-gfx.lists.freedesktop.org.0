Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85221A36847
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2025 23:29:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D730510E0A6;
	Fri, 14 Feb 2025 22:29:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="joX47rqZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 572CF10E097;
 Fri, 14 Feb 2025 22:29:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739572144; x=1771108144;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Snrj1c2YaGBu1sa5QHA378/N7gZ5Qa8o30R7crxqGlU=;
 b=joX47rqZraJhZQu9IHZ1NKJSBSqPf30AmqZzLcCYJr4AfS7VWUSYcbmK
 0auqvOGoNBLSa1+FkPshNmXNh3cEQIjP7LI/7xd0uXVSTG2zJTItRYLf7
 hy0bkNyRB2XzZf7V/4YAirDq49Nvvgvt1D6Zd5qUJPInAWTDh5t5DMSlb
 G+yMQ0PaIF7ZA+2L6RFEuOCrRX+mVzef2JZ+sXJdXTHj0i+pcy2mz5Td2
 9V2eOEe5HnVfU6MzubDH96ey3wcxxI2W+X4/7eJqNQx1feVacjQlERKAO
 pofg6ziZeEgUnUW09w6yRoy+0x1JMgmPcb8bC1lZDZoyp0O/4f5yv24vC g==;
X-CSE-ConnectionGUID: Z6lA/I4nQuC6PQZ0LBFjzw==
X-CSE-MsgGUID: MpIXCnpcTCiL/1VvqEwLOg==
X-IronPort-AV: E=McAfee;i="6700,10204,11345"; a="44262185"
X-IronPort-AV: E=Sophos;i="6.13,287,1732608000"; d="scan'208";a="44262185"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 14:29:03 -0800
X-CSE-ConnectionGUID: 2Urm+iPKRgGmex5ppzOPng==
X-CSE-MsgGUID: FPLCIQIhSBG1ieUCLuRdhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="150734594"
Received: from vkasired-desk2.fm.intel.com ([10.105.128.132])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 14:29:03 -0800
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Vivek Kasireddy <vivek.kasireddy@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Subject: [PATCH] drm/i915/xe2hpd: Identify the memory type for SKUs with GDDR
 + ECC
Date: Fri, 14 Feb 2025 13:59:44 -0800
Message-ID: <20250214215944.187407-1-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.47.1
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

Some SKUs of Xe2_HPD platforms (such as BMG) have GDDR memory type
with ECC enabled. We need to identify this scenario and add a new
case in xelpdp_get_dram_info() to handle it. In addition, the
derating value needs to be adjusted accordingly to compensate for
the limited bandwidth.

Bspec: 64602
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 5 ++++-
 drivers/gpu/drm/i915/i915_drv.h         | 1 +
 drivers/gpu/drm/i915/soc/intel_dram.c   | 4 ++++
 drivers/gpu/drm/xe/xe_device_types.h    | 1 +
 4 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 23edc81741de..b8a9651b74d3 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -244,6 +244,7 @@ static int icl_get_qgv_points(struct drm_i915_private *dev_priv,
 			qi->deinterleave = 4;
 			break;
 		case INTEL_DRAM_GDDR:
+		case INTEL_DRAM_GDDR_ECC:
 			qi->channel_width = 32;
 			break;
 		default:
@@ -630,9 +631,11 @@ static int xe2_hpd_get_bw_info(struct drm_i915_private *i915,
 	for (i = 0; i < qi.num_points; i++) {
 		const struct intel_qgv_point *point = &qi.points[i];
 		int bw = num_channels * (qi.channel_width / 8) * point->dclk;
+		u8 derating = i915->dram_info.type == INTEL_DRAM_GDDR_ECC ?
+				45 : sa->derating;
 
 		i915->display.bw.max[0].deratedbw[i] =
-			min(maxdebw, (100 - sa->derating) * bw / 100);
+			min(maxdebw, (100 - derating) * bw / 100);
 		i915->display.bw.max[0].peakbw[i] = bw;
 
 		drm_dbg_kms(&i915->drm, "QGV %d: deratedbw=%u peakbw: %u\n",
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index ffc346379cc2..54538b6f85df 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -305,6 +305,7 @@ struct drm_i915_private {
 			INTEL_DRAM_DDR5,
 			INTEL_DRAM_LPDDR5,
 			INTEL_DRAM_GDDR,
+			INTEL_DRAM_GDDR_ECC,
 		} type;
 		u8 num_qgv_points;
 		u8 num_psf_gv_points;
diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
index 9e310f4099f4..f60eedb0e92c 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.c
+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
@@ -687,6 +687,10 @@ static int xelpdp_get_dram_info(struct drm_i915_private *i915)
 		drm_WARN_ON(&i915->drm, !IS_DGFX(i915));
 		dram_info->type = INTEL_DRAM_GDDR;
 		break;
+	case 9:
+		drm_WARN_ON(&i915->drm, !IS_DGFX(i915));
+		dram_info->type = INTEL_DRAM_GDDR_ECC;
+		break;
 	default:
 		MISSING_CASE(val);
 		return -EINVAL;
diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
index 4656305dd45a..0921e957d784 100644
--- a/drivers/gpu/drm/xe/xe_device_types.h
+++ b/drivers/gpu/drm/xe/xe_device_types.h
@@ -575,6 +575,7 @@ struct xe_device {
 			INTEL_DRAM_DDR5,
 			INTEL_DRAM_LPDDR5,
 			INTEL_DRAM_GDDR,
+			INTEL_DRAM_GDDR_ECC,
 		} type;
 		u8 num_qgv_points;
 		u8 num_psf_gv_points;
-- 
2.47.1

