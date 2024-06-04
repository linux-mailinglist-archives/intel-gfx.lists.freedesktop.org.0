Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3D608FB727
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:29:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EC1F10E4FA;
	Tue,  4 Jun 2024 15:29:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LxP57fHU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0A9510E4FA
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:29:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717514964; x=1749050964;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=O4C2pMAqF/N6vdOi8+Wsj49VhAD8eISJhRfmNhlPMDU=;
 b=LxP57fHUCJ8c3eddoLu9BheidzwjQUVPuZTbpASON2Ja0Hw50sPYjM80
 ub/WDZ90hAfdQhIHsUohiFeJ5ION7o54+gd8lwMLeDhVvfF4ZDn0LdYtl
 R7XQSl8uwKf2C3XmASQ/YReMP/TWsUXuW1AeEz9LRrSkbA9GgIMeR/Z2y
 XOu6FP8Xd6L52rqmc5lWmH954QptVnTtvnI1iEy/eurUxa39nrmxZeo+L
 MHoO1TP2Xq8cu0FfTeuGuPFzw9L6w9IHdb4pKUo7M4vAZI3A+ovlc5+gC
 iScvk+83qfPRb9nwLLIJzeWlJ7EFg7Z0q0w9zYuBU4uLuBtThsw3zUUjM w==;
X-CSE-ConnectionGUID: 6p6NSdGdRQGs2pSOECETVQ==
X-CSE-MsgGUID: vWtmhBhxToWMypTjHD+aAg==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="13949618"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="13949618"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:29:24 -0700
X-CSE-ConnectionGUID: gSo9B3WMT66bwVoPOtbVcg==
X-CSE-MsgGUID: ZQ3VRkj+T2ayKjGsxDUDIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="60465774"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:29:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 37/65] drm/i915: pass dev_priv explicitly to _TRANSBCONF
Date: Tue,  4 Jun 2024 18:25:55 +0300
Message-Id: <070a8e7d9e7c5f875b071138e60ac3d0008493da.1717514638.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1717514638.git.jani.nikula@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
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
explicitly to the _TRANSBCONF register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 0a2111b0cd98..8dd4b5a72b22 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2297,7 +2297,7 @@
 
 /* Pipe B */
 #define _PIPEBDSL(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x71000)
-#define _TRANSBCONF		(DISPLAY_MMIO_BASE(dev_priv) + 0x71008)
+#define _TRANSBCONF(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x71008)
 #define _PIPEBSTAT		(DISPLAY_MMIO_BASE(dev_priv) + 0x71024)
 #define _PIPEBFRAMEHIGH		0x71040
 #define _PIPEBFRAMEPIXEL	0x71044
-- 
2.39.2

