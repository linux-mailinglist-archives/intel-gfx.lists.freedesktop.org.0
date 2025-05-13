Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A227AB4AD4
	for <lists+intel-gfx@lfdr.de>; Tue, 13 May 2025 07:18:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B90510E50F;
	Tue, 13 May 2025 05:18:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G0YZOSdF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09AD710E50F;
 Tue, 13 May 2025 05:18:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747113534; x=1778649534;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fQ0ErX8lMxIiHa60yNkDVHLIb9efkVuUPGoJGbYEw5o=;
 b=G0YZOSdF/9+Jf3cdsLFm8rn5mF5cIQj1qembo38fiEqHz1M42vwnehmv
 utSxdLyglkgisbTiXk4wYwRskyQN0aQeMmqD3ZbmDnk49rCuRvfCPKEz5
 F5VdwdmwzbP8WGEiQ1obor5gsHMelU+md+Pc5unqu4RY2mDuVHsNcVzwN
 6ytEpIO8luVgGXwN/fGvy4NkYu9azcCrH7+ThlDgZ3Nx+9lHFvV93IW+d
 xqk3E+QrXXlLhWuRNX5AUhOwkgfVshZklPmLTpRbc52hvYHiiRuemQyXq
 BxYw/4T40b+MxCVGXrr8uFWu5hWnfbvaxSw7D2OlN4QBehZJurEUXREek w==;
X-CSE-ConnectionGUID: EcjiHqgkSR6jgVXIvxVUXA==
X-CSE-MsgGUID: HDnWN5w2Sn2JAU5jvcdvtQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="51597782"
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="51597782"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 22:18:54 -0700
X-CSE-ConnectionGUID: qvgRUJblS7ygzuWoM8RfgA==
X-CSE-MsgGUID: zI6XU8YzRquXFotHaUingw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="137506100"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa006.jf.intel.com with ESMTP; 12 May 2025 22:18:52 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	ville.syrjala@intel.com
Subject: [PATCH v5 02/17] drm/i915/display: Add source param for dc balance
Date: Tue, 13 May 2025 10:46:45 +0530
Message-ID: <20250513051700.507389-3-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250513051700.507389-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250513051700.507389-1-mitulkumar.ajitkumar.golani@intel.com>
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
index fe14a92ae8c6..71a6199f5475 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -194,6 +194,7 @@ struct intel_display_platforms {
 					  ((__display)->platform.dgfx && DISPLAY_VER(__display) == 14)) && \
 					 HAS_DSC(__display))
 #define HAS_VRR(__display)		(DISPLAY_VER(__display) >= 11)
+#define HAS_VRR_DC_BALANCE(__display)	(DISPLAY_VER(__display) >= 30)
 #define INTEL_NUM_PIPES(__display)	(hweight8(DISPLAY_RUNTIME_INFO(__display)->pipe_mask))
 #define OVERLAY_NEEDS_PHYSICAL(__display)	(DISPLAY_INFO(__display)->overlay_needs_physical)
 #define SUPPORTS_TV(__display)		(DISPLAY_INFO(__display)->supports_tv)
-- 
2.48.1

