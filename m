Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3A97C2A112
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 06:30:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFDB810E34D;
	Mon,  3 Nov 2025 05:30:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="my8f0m/+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 847DE10E13A;
 Mon,  3 Nov 2025 05:30:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762147801; x=1793683801;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WNwA2ukHIfsi9u6pZy/QT3pEDvGR4g5zjrM9Oax90Do=;
 b=my8f0m/+Lc8HxxnOsrbZZLj/gcNFxYkLwxNyHtyXW27QdLAC2ULobCMb
 9KucgRorhda9skqua4RqhxzgJd3g1Rjj/dLd6JzzmzISpRz18kWvGTyoS
 W7MX4i1CUbr0RDmzRiBXrz+9RHEpe5Y4ZOHlPpq2pNepiP1bzyZ5FhdID
 84KKS2k2opk76GMhABSvNnDmIpZwtKkpuabLjz0Flk/S0TRxNrrztEPJ2
 1mTRY1T2OCu4IVt2M0CqSe9uGMVadtJNZ44qwS75UxoqjCgnIs8KgyH0H
 4BiKFBi2X2Z7ePwCiFIxaTJn2aZwVMRDB3/Z1hGYcpE5Ikok9ZmvFZbjW A==;
X-CSE-ConnectionGUID: pJnXRjojSLe6Z+RLJEWBQg==
X-CSE-MsgGUID: lUmB35nAQs2z8pD1kQ5rMw==
X-IronPort-AV: E=McAfee;i="6800,10657,11601"; a="66831972"
X-IronPort-AV: E=Sophos;i="6.19,275,1754982000"; d="scan'208";a="66831972"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2025 21:30:01 -0800
X-CSE-ConnectionGUID: G/rsmz3eQG2xYmdoyOwzEw==
X-CSE-MsgGUID: E/aXCUvvTW+goAxxSl2TTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,275,1754982000"; d="scan'208";a="186925159"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa008.jf.intel.com with ESMTP; 02 Nov 2025 21:29:59 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, uma.shankar@intel.com,
 ville.syrjala@linux.intel.com
Subject: [RESEND, 01/22] drm/i915/display: Add source param for dc balance
Date: Mon,  3 Nov 2025 10:59:41 +0530
Message-ID: <20251103053002.3002695-2-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251103053002.3002695-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20251103053002.3002695-1-mitulkumar.ajitkumar.golani@intel.com>
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
index ece66c8c4ce6..a43b90b53b68 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -199,6 +199,7 @@ struct intel_display_platforms {
 #define HAS_ULTRAJOINER(__display)	(((__display)->platform.dgfx && \
 					  DISPLAY_VER(__display) == 14) && HAS_DSC(__display))
 #define HAS_VRR(__display)		(DISPLAY_VER(__display) >= 11)
+#define HAS_VRR_DC_BALANCE(__display)	(DISPLAY_VER(__display) >= 30)
 #define INTEL_NUM_PIPES(__display)	(hweight8(DISPLAY_RUNTIME_INFO(__display)->pipe_mask))
 #define OVERLAY_NEEDS_PHYSICAL(__display)	(DISPLAY_INFO(__display)->overlay_needs_physical)
 #define SUPPORTS_TV(__display)		(DISPLAY_INFO(__display)->supports_tv)
-- 
2.48.1

