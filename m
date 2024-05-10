Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D76F8C278E
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 17:23:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E73910E69B;
	Fri, 10 May 2024 15:23:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Br9LewAY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 017C010E69B
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2024 15:23:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715354617; x=1746890617;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=50no068SGg7qPJKSAuyCxE/N9dpIIeBwp+N0y3LYEJE=;
 b=Br9LewAYbopc/UGEUtYSGGpJ8kbI6ng1WhXplPqnXUHycVEA9VJiWlYw
 iET8OpVFUAmEURqYVstP7LX1ZxmZpirT/FRHeGT1AYdBuRmp/d9sUnXXO
 rwXW5WC/bE8DduxvvFYDDV7Au6UmDyEG4MAvyMuIAfwp7XgBClsiAkvCC
 IbbVmrplfWe7MuvtdthhIcOnqQXwc3OXeS/xQu//oFvE0bMYCaXl6Mwji
 +r4hpHHxj2YTA4H9GJDayL/GV12N5PLKfX7ZLeFP7TVU4/YLjUnWqgr0Z
 H6CVPA54pnFLFVsYg1CkiRXjIL19wnX1D1hjaZsaxM06bxmUYb/5F+DcC w==;
X-CSE-ConnectionGUID: jUwYuLoRQbOCAP2KNisciQ==
X-CSE-MsgGUID: duubN975REiCfvlSV/UshA==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="11468852"
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="11468852"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 08:23:37 -0700
X-CSE-ConnectionGUID: +NmKs/DISIacLQJMD14QWQ==
X-CSE-MsgGUID: xVNI4sb2Tg6d1byOC3CNRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,151,1712646000"; d="scan'208";a="29594856"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 May 2024 08:23:35 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 10 May 2024 18:23:34 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 01/16] drm/i915: Nuke _MMIO_PLANE_GAMC()
Date: Fri, 10 May 2024 18:23:14 +0300
Message-ID: <20240510152329.24098-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240510152329.24098-1-ville.syrjala@linux.intel.com>
References: <20240510152329.24098-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

_MMIO_PLANE_GAMC() is some leftover macro that is never used.
Get rid of it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 256d73c25701..0f4a2d542d81 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -5151,8 +5151,6 @@ enum skl_power_gate {
 #define  WM_DBG_DISALLOW_MAXFIFO	(1 << 1)
 #define  WM_DBG_DISALLOW_SPRITE		(1 << 2)
 
-#define _MMIO_PLANE_GAMC(plane, i, a, b)  _MMIO(_PIPE(plane, a, b) + (i) * 4)
-
 /* Plane CSC Registers */
 #define _PLANE_CSC_RY_GY_1_A	0x70210
 #define _PLANE_CSC_RY_GY_2_A	0x70310
-- 
2.43.2

