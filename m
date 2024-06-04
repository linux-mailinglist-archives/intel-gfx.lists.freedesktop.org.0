Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E7A18FB736
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:30:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0784010E508;
	Tue,  4 Jun 2024 15:30:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LSZqhGQg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 294AF10E501
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:30:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717515001; x=1749051001;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2ZFfp2o+r6CnL0E7YCDuMhLJjU9nWc2oysgdINdMs+o=;
 b=LSZqhGQgFSFc/YHdQZLWbbJUw4LMr34vMYgkTjaYb1qkw02lICOWDbmj
 mwl5uu9Gjwtoq/gkX4maltgcaF2farO2Z5vyP1L/7DtBNylQL9/4s/2IH
 FDF2PCRZiXUq7MJfzh67WyWiIbiza6VqLvpcL06E2jYlwcz+AvgDPeMiq
 FAxMlb9+trA/9UVbpv+WXQX/laMH/U2VGxyIWpB+QjdmQggsh2hsgnnH9
 p7UqMzqI0TrQIuAvqgkfA7YlgFSCP4TGsB4ZFGAgLdPQpEGRLsWzJgP26
 H5ZaFjKnBCFtTY0vel39XwY2SfIPRDc2R0WeW98bRuZaYg6eOvfv3hLa5 A==;
X-CSE-ConnectionGUID: XUCdGVX4SyW1wONvF44SbA==
X-CSE-MsgGUID: ptHF2sk8SkmJXDankQS6aQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="13949769"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="13949769"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:30:01 -0700
X-CSE-ConnectionGUID: MbvDnQn1RkifRLP87gP/0w==
X-CSE-MsgGUID: OqJQPhRFRna76JDE4ycS4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="41714920"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:30:00 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 44/65] drm/i915: pass dev_priv explicitly to _DSPBPOS
Date: Tue,  4 Jun 2024 18:26:02 +0300
Message-Id: <da803b096949c492af3d82f5e5e4d2ae50139e22.1717514638.git.jani.nikula@intel.com>
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
explicitly to the _DSPBPOS register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 7fd2d5e07b48..38c8b98d95c3 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2311,7 +2311,7 @@
 #define   DISP_SPRITE_ABOVE_OVERLAY	REG_BIT(0)
 #define _DSPBADDR(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x71184)
 #define _DSPBSTRIDE(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x71188)
-#define _DSPBPOS		(DISPLAY_MMIO_BASE(dev_priv) + 0x7118C)
+#define _DSPBPOS(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x7118C)
 #define _DSPBSIZE		(DISPLAY_MMIO_BASE(dev_priv) + 0x71190)
 #define _DSPBSURF		(DISPLAY_MMIO_BASE(dev_priv) + 0x7119C)
 #define _DSPBTILEOFF		(DISPLAY_MMIO_BASE(dev_priv) + 0x711A4)
-- 
2.39.2

