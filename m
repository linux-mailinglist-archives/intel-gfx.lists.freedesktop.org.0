Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A04D9D7BBD
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Nov 2024 07:51:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2CE610E1B5;
	Mon, 25 Nov 2024 06:51:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PWQSEl42";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88A4A10E151
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Nov 2024 06:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732517514; x=1764053514;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=swR7AAk63JIuneNcpRQhFP2DKjIS3sVTZ2Y5r2JLig4=;
 b=PWQSEl42IY2N6wzZBa5NvqxtjjNH6p+hGUUU4Mft0WyrBHMpxn+iER72
 ZdWXPRbiIIZ5BwCbJpoquVX41RfZ7aHhDaX5jYqwatmfQEPMPVOxTxXLF
 /p3oTw7l9jEcYb48WzE1tSjfpjXZL3NhW7zoXbuWatv3aT8Z3FvSRxXbq
 WahsBCfBioTrzbEggiwOMp770GQGoV4CH/5/ghxmEX7/h5Oqfi4YlrZn8
 ZNOmAh/uH1h6QOOLERQJ75BgbiNtVId/OgqkSoUCL6xuslg5CjoYDBm/p
 fYxpEJhGPWyKjxBuNESZar7w+orU1lhOHlAUGhXV4LVz54j0nUEEHHzcM Q==;
X-CSE-ConnectionGUID: 8pMs91kFR/O4EoNAk51FmA==
X-CSE-MsgGUID: Emqf9p1DRKG1HrD1k7F0hg==
X-IronPort-AV: E=McAfee;i="6700,10204,11266"; a="43105888"
X-IronPort-AV: E=Sophos;i="6.12,182,1728975600"; d="scan'208";a="43105888"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2024 22:51:51 -0800
X-CSE-ConnectionGUID: C07ej8KtR0SV9wEJqxBGfA==
X-CSE-MsgGUID: TddbmPRmRcuBYWpzEaoxhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,182,1728975600"; d="scan'208";a="90802679"
Received: from vsrini4-xps-8920.iind.intel.com (HELO localhost.localdomain)
 ([10.99.123.50])
 by fmviesa006.fm.intel.com with ESMTP; 24 Nov 2024 22:51:49 -0800
From: Vidya Srinivas <vidya.srinivas@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@intel.com, ville.syrjala@linux.intel.com, bgeffon@google.com,
 shawn.c.lee@intel.com, Vidya Srinivas <vidya.srinivas@intel.com>
Subject: [PATCH 1/2] Revert "drm/i915/dpt: Make DPT object unshrinkable"
Date: Mon, 25 Nov 2024 11:58:03 +0530
Message-Id: <20241125062804.412536-1-vidya.srinivas@intel.com>
X-Mailer: git-send-email 2.34.1
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

Reason for revert: Restricting the DPT object to not be
shrunk makes some chromebooks run out of memory and
causes DMA remap failures.

This reverts commit 43e2b37e2ab660c3565d4cff27922bc70e79c3f1.
Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_object.h | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index 3dc61cbd2e11..bb713e096db2 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -283,9 +283,7 @@ bool i915_gem_object_has_iomem(const struct drm_i915_gem_object *obj);
 static inline bool
 i915_gem_object_is_shrinkable(const struct drm_i915_gem_object *obj)
 {
-	/* TODO: make DPT shrinkable when it has no bound vmas */
-	return i915_gem_object_type_has(obj, I915_GEM_OBJECT_IS_SHRINKABLE) &&
-		!obj->is_dpt;
+	return i915_gem_object_type_has(obj, I915_GEM_OBJECT_IS_SHRINKABLE);
 }
 
 static inline bool
-- 
2.34.1

