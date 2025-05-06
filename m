Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F3CAAAC8DD
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 16:57:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9898A10E6BF;
	Tue,  6 May 2025 14:57:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QSiTAgCR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDE4810E6C1;
 Tue,  6 May 2025 14:57:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746543439; x=1778079439;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oqvch3/Q7rke2QjgRfID1TYzKWSo0IR5PFhhY30e1T0=;
 b=QSiTAgCRfaHv6rpZxLPqzhKZfq1oEtk9DBbrt9U6pUAemP7zlrRTiwdv
 ADTW58exmT085K+IDDc8S1rIAjnpRhN82RiAmyLu8/eea99Pp9YrUcNpG
 focCiq9sk7y9mNq2bxJpdfLrAuSHP+29ZKEq8kSlGcCrklXSvBvJOizJW
 LUfrovWCjXvpiC/A9Or102dRTxwN/rdwGgoSR4EszbyavN3tr3i+i0z/Z
 4whez11khND/BM+WuVIX6zHFDm7ryJdHgJSSvvvAeQeq0Z31HdIoZAbsS
 zyaHRXvxqhiUjAbzRChhlFjPb7GXiKPYmg2fV+5JSz++4NVu7NM9/weRH w==;
X-CSE-ConnectionGUID: QN0KqYcsS/S21zGpwOM7Xw==
X-CSE-MsgGUID: Sg82PtiaQ+CMXpCN9+5HSA==
X-IronPort-AV: E=McAfee;i="6700,10204,11425"; a="59205981"
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="59205981"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 07:57:19 -0700
X-CSE-ConnectionGUID: gEmZ5ypsTeqddYI1HDLVYQ==
X-CSE-MsgGUID: zGOI4xozTZiZ/1TOggOMxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="166572145"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa002.jf.intel.com with ESMTP; 06 May 2025 07:57:17 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	ville.syrjala@intel.com
Subject: [PATCH v4 03/17] drm/i915/display: Add source param for dc balance
Date: Tue,  6 May 2025 20:25:03 +0530
Message-ID: <20250506145517.4129419-4-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250506145517.4129419-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250506145517.4129419-1-mitulkumar.ajitkumar.golani@intel.com>
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

Add source param for dc balance enablement further.

--v2:
- Arrange in alphabetic order. (Ankit)
- Update name. (Ankit)

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 87c666792c0d..fd886e1283f1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -193,6 +193,7 @@ struct intel_display_platforms {
 					  ((__display)->platform.dgfx && DISPLAY_VER(__display) == 14)) && \
 					 HAS_DSC(__display))
 #define HAS_VRR(__display)		(DISPLAY_VER(__display) >= 11)
+#define HAS_VRR_DC_BALANCE(__display)	(DISPLAY_VER(__display) >= 30)
 #define INTEL_NUM_PIPES(__display)	(hweight8(DISPLAY_RUNTIME_INFO(__display)->pipe_mask))
 #define OVERLAY_NEEDS_PHYSICAL(__display)	(DISPLAY_INFO(__display)->overlay_needs_physical)
 #define SUPPORTS_TV(__display)		(DISPLAY_INFO(__display)->supports_tv)
-- 
2.48.1

