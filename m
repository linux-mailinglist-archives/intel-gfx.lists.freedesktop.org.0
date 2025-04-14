Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C2EAA875EB
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Apr 2025 04:54:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C331C10E25F;
	Mon, 14 Apr 2025 02:54:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H+CJ2OFg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8349D10E2D8;
 Mon, 14 Apr 2025 02:54:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744599272; x=1776135272;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6se5R8yepP16bz4Q/O11BPcg5gkYiRCtsD2+pdFa8sE=;
 b=H+CJ2OFgJ2JEfhPmkgtiIbkIFuUu+pZostjdIfr/LxRXen22xwJkt6IP
 H5Ue+6GOWBGFQGc41up2MDuSG9yXKeHSOEgxkjbqYxRtlOlfq2wDUnxR9
 Kaco37U12i2nW4jAseDrjiQf4DQLTpLAEHQYK8oWr+den6kHDeF7O5Qws
 e0BiUPO3p2dwlWbalFzTzI4gWy/eHmSFReeh/mriDyIql+XKyfFKupouv
 +2BxnUZphCpjgS8KLLqXh3e4TrMisic2fECCrRbHQuVScSGx3ucS5bmGM
 KbWLHSRxff6UwnG22yvBY7Uoi0XGEQoO+B0DMRVsPt9h0mG8V+QB9BOlr Q==;
X-CSE-ConnectionGUID: C74vyj0WR4KkuvJKKP3RIQ==
X-CSE-MsgGUID: X7ylUX7NSHC11SdE+z9NyA==
X-IronPort-AV: E=McAfee;i="6700,10204,11402"; a="46189565"
X-IronPort-AV: E=Sophos;i="6.15,211,1739865600"; d="scan'208";a="46189565"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2025 19:54:31 -0700
X-CSE-ConnectionGUID: 7cVq++B2TZep6NFJi9Sv2w==
X-CSE-MsgGUID: SLMU6EC7QnCgghyLdv9xvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,211,1739865600"; d="scan'208";a="130016217"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2025 19:54:29 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: suraj.kandpal@intel.com, stable@vger.kernel.org, ankit.k.nautiyal@intel.com
Subject: [PATCH 1/2] drm/i915/display: Add macro for checking 3 DSC engines
Date: Mon, 14 Apr 2025 08:12:55 +0530
Message-ID: <20250414024256.2782702-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250414024256.2782702-1-ankit.k.nautiyal@intel.com>
References: <20250414024256.2782702-1-ankit.k.nautiyal@intel.com>
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

3 DSC engines per pipe is currently supported only for BMG.
Add a macro to check whether a platform supports 3 DSC engines per pipe.

Bspec: 50175
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 368b0d3417c2..1a215791d0ba 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -163,6 +163,7 @@ struct intel_display_platforms {
 #define HAS_DP_MST(__display)		(DISPLAY_INFO(__display)->has_dp_mst)
 #define HAS_DSB(__display)		(DISPLAY_INFO(__display)->has_dsb)
 #define HAS_DSC(__display)		(DISPLAY_RUNTIME_INFO(__display)->has_dsc)
+#define HAS_DSC_3ENGINES(__display)	(DISPLAY_VERx100(display) == 1401 && HAS_DSC(__display))
 #define HAS_DSC_MST(__display)		(DISPLAY_VER(__display) >= 12 && HAS_DSC(__display))
 #define HAS_FBC(__display)		(DISPLAY_RUNTIME_INFO(__display)->fbc_mask != 0)
 #define HAS_FBC_DIRTY_RECT(__display)	(DISPLAY_VER(__display) >= 30)
-- 
2.34.1

