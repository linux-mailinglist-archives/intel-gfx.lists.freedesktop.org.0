Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5631AE5E76
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jun 2025 09:51:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFEC010E4F5;
	Tue, 24 Jun 2025 07:51:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NahBwWII";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2A5010E4F5;
 Tue, 24 Jun 2025 07:51:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750751473; x=1782287473;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AzEHTNoNyWkJehmcpYmI0CVBLRa7d8ivpb1mCWypMcw=;
 b=NahBwWIIWkg2ZqfeoiszWf2ZJplP/GDxb7ekvMh0rQhrIMV/hEulPw0L
 R0P8yIGhv27zHRZfGoowTymerfYm1kbfH2LqPBKjhYENWOGJgnDUDHuZx
 f1N4TUF5nkXOru3yOI3qkEM9M963AvIAoskVhM5XHGl2SXGItEMqJjpGc
 k4itArDpaRqUhAVPxiSUp6VbrDmTX8fWz7gW+Zu1nZIPrB2UGnbV0d4V1
 ncGDirIL3sw9uR7y+gvCkYs8K4JpGh15kF3/9IOpnzgr0nYI3DZPHZ2ky
 Nzgb2XiO0t7Sgc4AVgY8gEDJ9XjQcydkcUWxOkxZtqoP43VfSKSgSNGzU A==;
X-CSE-ConnectionGUID: Bs+ZNhwDT1Czi6suRHdOog==
X-CSE-MsgGUID: 9bK8FDvJT0eR+TmBDuyavA==
X-IronPort-AV: E=McAfee;i="6800,10657,11473"; a="78398217"
X-IronPort-AV: E=Sophos;i="6.16,261,1744095600"; d="scan'208";a="78398217"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2025 00:51:13 -0700
X-CSE-ConnectionGUID: YPqhffRLTrKHZb5KcNVU3Q==
X-CSE-MsgGUID: S1ol9UxMTseN5yRBioZ59A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,261,1744095600"; d="scan'208";a="175446380"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa002.fm.intel.com with ESMTP; 24 Jun 2025 00:51:11 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, ankit.k.nautiyal@intel.com,
 jani.nikula@linux.intel.com
Subject: [PATCH v7 02/18] drm/i915/display: Add source param for dc balance
Date: Tue, 24 Jun 2025 13:19:32 +0530
Message-ID: <20250624074948.671761-3-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250624074948.671761-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250624074948.671761-1-mitulkumar.ajitkumar.golani@intel.com>
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
index 0ac5484c0043..201a22d71bf0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -196,6 +196,7 @@ struct intel_display_platforms {
 					  ((__display)->platform.dgfx && DISPLAY_VER(__display) == 14)) && \
 					 HAS_DSC(__display))
 #define HAS_VRR(__display)		(DISPLAY_VER(__display) >= 11)
+#define HAS_VRR_DC_BALANCE(__display)	(DISPLAY_VER(__display) >= 30)
 #define INTEL_NUM_PIPES(__display)	(hweight8(DISPLAY_RUNTIME_INFO(__display)->pipe_mask))
 #define OVERLAY_NEEDS_PHYSICAL(__display)	(DISPLAY_INFO(__display)->overlay_needs_physical)
 #define SUPPORTS_TV(__display)		(DISPLAY_INFO(__display)->supports_tv)
-- 
2.48.1

