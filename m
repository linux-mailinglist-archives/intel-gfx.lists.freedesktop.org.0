Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39ED18C0162
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2024 17:48:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E8D2112BEB;
	Wed,  8 May 2024 15:48:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JL7duz8E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36766112BEB
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 May 2024 15:48:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715183317; x=1746719317;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RABHxFKi6hPCEm3pJLr5N+DNFkBHZsOnE9JZ3S0xkUc=;
 b=JL7duz8EfjfFOSRZHEebx6WWw+wtA5m5kLTwn/eB9EawIWcIIuevyaIp
 7XVcN94/uESsUdOibRvLgLHH47AefvIVeTfp7nYCIGxY5jV/3fhQB2IHt
 FFArVyPfA6e8Onjhn+Wa32kzI4pAAk7IxetTFkJALOFBciZd6Kb4+aYXV
 3mws/4qXb9tN/Zh7bMqc5JiZ17aCdv8qOftkKS3Z/WFoc4t0fU/FqURUO
 D6cyEq+E1oAmUfsFuv4r8w6tGjQxfXFoop+ruhfoschaHHm0VEOqwQE/x
 H1Q3dx//PBPoNhR6m8lCGa2IfXLqXSY+Pj312uAuJ+HHGauPix1Gftss6 Q==;
X-CSE-ConnectionGUID: r+sNC4HUTd+mTaCPQGy4iQ==
X-CSE-MsgGUID: PV6QKtf/S5+46CRiBSx7cg==
X-IronPort-AV: E=McAfee;i="6600,9927,11067"; a="11215379"
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="11215379"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 08:48:37 -0700
X-CSE-ConnectionGUID: hHScRgUBRVakbzr+s/6pVA==
X-CSE-MsgGUID: i2Kc6WuwTaiI4UoWN49k9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="28884891"
Received: from mklonows-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.105])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 08:48:35 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 08/10] drm/i915: pass dev_priv explicitly to TRANS_VRR_STATUS2
Date: Wed,  8 May 2024 18:47:54 +0300
Message-Id: <a8e095f1ac3b3d41343f7e6d8dd191e9e2a6d76a.1715183162.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1715183162.git.jani.nikula@intel.com>
References: <cover.1715183162.git.jani.nikula@intel.com>
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

Avoid the implicit dev_priv local variable use, and pass dev_priv
explicitly to the TRANS_VRR_STATUS2 register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 9f63d68eb9a0..18c8ef911579 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1310,7 +1310,7 @@
 #define _TRANS_VRR_STATUS2_B		0x6143C
 #define _TRANS_VRR_STATUS2_C		0x6243C
 #define _TRANS_VRR_STATUS2_D		0x6343C
-#define TRANS_VRR_STATUS2(trans)	_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_STATUS2_A)
+#define TRANS_VRR_STATUS2(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_STATUS2_A)
 #define   VRR_STATUS2_VERT_LN_CNT_MASK	REG_GENMASK(19, 0)
 
 #define _TRANS_PUSH_A			0x60A70
-- 
2.39.2

