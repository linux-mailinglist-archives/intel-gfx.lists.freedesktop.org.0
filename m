Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 365808C015E
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2024 17:48:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C21111267F;
	Wed,  8 May 2024 15:48:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nIIla5nP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC7C51126C1
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 May 2024 15:48:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715183299; x=1746719299;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yI2SY50fTDSTQEv1k/ndsena8lXou8uV49KpvAtgYLY=;
 b=nIIla5nPkXInbA8LIkxdlkGvjHSMBTyInK/nLkQJ2wXd4K+yLArm8/ot
 ftlb/4Gd8fWyimCRaQbo796owLSZWvtyggJJDKPrpaEPLoHQ+RpYIiWEh
 66sKGvbL2JbOmrXEks8Tazv7nyCE5IYteSSCM1UgiJN4E0WzU1K4cSzzI
 Te1O+asRwFsiRvk2JvqmY30fJJcJvqKqZ04d7J/elNjsH56UnkaFo148K
 nsTYxzXC2qiJrtimrJMHdJ7pk+4Zf/OVSQv2AtQdT2f5A2xgXZD8Z/bYI
 iGqyfdIw+JkhVAKrtGrK5FS19oOBUbnVTETBO7ml6p3ipJndALszXq7cD A==;
X-CSE-ConnectionGUID: hhV+p/K/RFKGqvU+X5XTFA==
X-CSE-MsgGUID: GLUHVI1RTAGoJwrHxT61gA==
X-IronPort-AV: E=McAfee;i="6600,9927,11067"; a="28532125"
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="28532125"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 08:48:19 -0700
X-CSE-ConnectionGUID: MpBQ/EqpS86L2I8TQgsf5w==
X-CSE-MsgGUID: q34RuJVaQF66+qHdH7bFsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="29447101"
Received: from mklonows-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.105])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 08:48:18 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 04/10] drm/i915: pass dev_priv explicitly to
 TRANS_VRR_VMAXSHIFT
Date: Wed,  8 May 2024 18:47:50 +0300
Message-Id: <6117aa8936a8e91c58a7a0bada21f266c79a0e5f.1715183162.git.jani.nikula@intel.com>
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
explicitly to the TRANS_VRR_VMAXSHIFT register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 775c878ca72f..9739ef525e13 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1261,7 +1261,7 @@
 #define _TRANS_VRR_VMAXSHIFT_B		0x61428
 #define _TRANS_VRR_VMAXSHIFT_C		0x62428
 #define _TRANS_VRR_VMAXSHIFT_D		0x63428
-#define TRANS_VRR_VMAXSHIFT(trans)	_MMIO_TRANS2(dev_priv, trans, \
+#define TRANS_VRR_VMAXSHIFT(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, \
 					_TRANS_VRR_VMAXSHIFT_A)
 #define   VRR_VMAXSHIFT_DEC_MASK	REG_GENMASK(29, 16)
 #define   VRR_VMAXSHIFT_DEC		REG_BIT(16)
-- 
2.39.2

