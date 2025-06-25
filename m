Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6E50AE8460
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jun 2025 15:21:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 259C710E71A;
	Wed, 25 Jun 2025 13:21:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Yh9S/cBq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAC4F10E71A
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Jun 2025 13:21:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750857706; x=1782393706;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=SVqE3PyHA3T4IC8O0hK/eBfAar2f4mkDgqiHJqPN5Rw=;
 b=Yh9S/cBq6KlArHKtR+vgqIX+YR2+dWgFkFdZG/Ggo9yvJ/jCKPi2EIeT
 iunYRMxZHoK+vOs3JaxYs/UXUXuU65C5lpra6IMu6eg6zC43CJm7BMN9g
 EhKq8lpbxKA7QF4H91H2NIz4I1dSzXMTQ0wzAHcRiqt8YANkFDPyr8Nbx
 vw8eIuQkszcm8+OmSsiPDp5xmzzqpmLbC5xhWD9Sdd7hdq4KwOSTh0Qo4
 8FchdaPP6aClmC1/w+570gHSx3sN2aOFz+QbzVZO6NgJ5a1yq6ic7nVXf
 V4xMkPiQOf41MoCtk10LGI/nNvyllry09mnCJpgmjCAue6wxCUl2ChkWR A==;
X-CSE-ConnectionGUID: mm1wQ0LWTvCx0WbvEMpXSg==
X-CSE-MsgGUID: rcMo/RNbT4in9OtFL2+18Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11474"; a="53223924"
X-IronPort-AV: E=Sophos;i="6.16,264,1744095600"; d="scan'208";a="53223924"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 06:21:46 -0700
X-CSE-ConnectionGUID: BbcgLo3tRV2LRCDi+vptyQ==
X-CSE-MsgGUID: WeNKQN+gSCaNf32q2UtXXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,264,1744095600"; d="scan'208";a="151727866"
Received: from monicael-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.78])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 06:21:44 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH] drm/i915: remove unused DISPLAY_PLANE_FLIP_PENDING() macro
Date: Wed, 25 Jun 2025 16:21:40 +0300
Message-Id: <20250625132140.1564473-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

DISPLAY_PLANE_FLIP_PENDING() has been unused since commit fd3a40242e87
("drm/i915: Rip out legacy page_flip completion/irq handling"). Remove.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 04fb40867cc0..8d56b3c45451 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -385,7 +385,6 @@
 #define VLV_PCBR	_MMIO(VLV_DISPLAY_BASE + 0x2120)
 #define VLV_PCBR_ADDR_SHIFT	12
 
-#define   DISPLAY_PLANE_FLIP_PENDING(plane) (1 << (11 - (plane))) /* A and B only */
 #define EIR		_MMIO(0x20b0)
 #define EMR		_MMIO(0x20b4)
 #define ESR		_MMIO(0x20b8)
-- 
2.39.5

