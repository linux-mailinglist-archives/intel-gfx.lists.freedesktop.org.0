Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 964B789FD0C
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Apr 2024 18:36:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FD9011340E;
	Wed, 10 Apr 2024 16:36:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NTa67Kao";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F8A911340E
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Apr 2024 16:36:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712766999; x=1744302999;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cSb1qQeVGZBRem6f7+0CezJa0uer6NmrxACKbZaVAMw=;
 b=NTa67Kao+ZxZEC0hzhldChaIU8VGEoB27GCnSgJVBiZM4T+XgRNc2JhR
 FMZCMY5PR4VRpbZoLr1AkzUG8Xxa0CRwhcTtZs1dxnhpai85rqZaoejxJ
 ujPj+g9/drDGKM7+yezqiDM2QHwhm+Emn2l76WDi6A20el0HjbcO1qPdv
 5Mkx7IwJxpTlp/j+9KMQ2w2e5VhPGq3sXxCp7cT7TQTgrMaLMfUVJqDZU
 1h09nfCGbiO/rO2RELxDc1oIWzMoXyOwaU8J76W1n5R/cYTIvF9WYuXpr
 ohmXYRNG4ZXsDuYAkUMBG6hDlb1xTJpGhBa5jl+/63R6Y+q85QNDUTWTe g==;
X-CSE-ConnectionGUID: xThFOgEWTVOKSDq9F/nabg==
X-CSE-MsgGUID: zss6AFInS/mlhRBF9lNU6A==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="19292877"
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="19292877"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 09:36:38 -0700
X-CSE-ConnectionGUID: XWeizwYJT/qkKI/nQEeu4g==
X-CSE-MsgGUID: fO2QwHFCQdCNEXbRIixf+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="51580330"
Received: from oakasatk-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.60.54])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 09:36:37 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/3] drm/i915/dsi: remove unused _MIPIA_AUTOPWG register
 definition
Date: Wed, 10 Apr 2024 19:36:26 +0300
Message-Id: <f2cd93fee60173c9ba772cad1e20f7f5e543cbde.1712766927.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1712766927.git.jani.nikula@intel.com>
References: <cover.1712766927.git.jani.nikula@intel.com>
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

There are other unused registers, but this is also unusable and
inadequate. Remove.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/vlv_dsi_regs.h | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/vlv_dsi_regs.h b/drivers/gpu/drm/i915/display/vlv_dsi_regs.h
index abbe427e462e..b0cdaad7db9c 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi_regs.h
+++ b/drivers/gpu/drm/i915/display/vlv_dsi_regs.h
@@ -93,9 +93,6 @@
 #define  TEARING_EFFECT_DELAY_SHIFT			0
 #define  TEARING_EFFECT_DELAY_MASK			(0xffff << 0)
 
-/* XXX: all bits reserved */
-#define _MIPIA_AUTOPWG			(VLV_DISPLAY_BASE + 0x611a0)
-
 /* MIPI DSI Controller and D-PHY registers */
 
 #define _MIPIA_DEVICE_READY		(_MIPI_MMIO_BASE(dev_priv) + 0xb000)
-- 
2.39.2

