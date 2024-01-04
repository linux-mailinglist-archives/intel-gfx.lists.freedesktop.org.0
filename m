Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B12778247A6
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 18:45:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CF3010E51E;
	Thu,  4 Jan 2024 17:45:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B99D510E51C
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jan 2024 17:45:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704390325; x=1735926325;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=g2TXPus0QgItlnIKdjyuhk7s0En8qWEg8uLT5hEs4hs=;
 b=CJwesVVzK57PDGW5d2+Pew61zVaSyu1lzbRPHvppdI2T+4h9I37oKrRs
 egBNsXek4AaNbPWY7z2/JjgK7LQ9C13GHg5pBe6SqgyvY72PRSx+HZLgD
 rM3l6h1V8BQP8Zp+pNSCkhV2Paej2koiUHUUElGNP/TRWSoQ2hksA3eOA
 YYFRk2b931QmGrdSVWzm99x4Z+fpapkLODzE2gpqxHZFe7Zlxq7YQnuU+
 rUy+0QANr693NsMAh5UYI7J6L5RPMZOyh/xsT6ugSNVmPJhmPehApN8ys
 2AT/d4/B8m0KTLtD92cF9zIu4qTJ1phy5FZfTgD/LC8HbIVNY/lxf19tw g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="4093873"
X-IronPort-AV: E=Sophos;i="6.04,331,1695711600"; 
   d="scan'208";a="4093873"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 09:44:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="923988848"
X-IronPort-AV: E=Sophos;i="6.04,331,1695711600"; d="scan'208";a="923988848"
Received: from pdelarag-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.32])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 09:44:07 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 4/5] drm/i915/display: use IS_DISPLAY_VER instead of
 IS_GRAPHICS_VER
Date: Thu,  4 Jan 2024 19:43:49 +0200
Message-Id: <20240104174350.823605-4-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240104174350.823605-1-jani.nikula@intel.com>
References: <20240104174350.823605-1-jani.nikula@intel.com>
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Display code should not care about graphics version.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 0b522c6a8d6f..c02d79b50006 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -1012,7 +1012,7 @@ static void __intel_display_device_info_runtime_init(struct drm_i915_private *i9
 		goto display_fused_off;
 	}
 
-	if (IS_GRAPHICS_VER(i915, 7, 8) && HAS_PCH_SPLIT(i915)) {
+	if (IS_DISPLAY_VER(i915, 7, 8) && HAS_PCH_SPLIT(i915)) {
 		u32 fuse_strap = intel_de_read(i915, FUSE_STRAP);
 		u32 sfuse_strap = intel_de_read(i915, SFUSE_STRAP);
 
-- 
2.39.2

