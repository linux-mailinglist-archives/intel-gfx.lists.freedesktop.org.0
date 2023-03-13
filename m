Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 800FE6B72C8
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Mar 2023 10:39:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C781710E492;
	Mon, 13 Mar 2023 09:39:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C8E410E492
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Mar 2023 09:39:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678700361; x=1710236361;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9NYJn5uV0rDaSEg/MTB13aHjF7CqtTKlZCxJf+Y4kDY=;
 b=lvcEBWQ9m9l2YACWdRxc49mO4ejc798qrRx7SIsb8pG9RxJgg2eb45Zp
 vdcHjUgS6iQrftjTylvFH3XZICj5EnQmiiMIYkmON4jL9aq16ajOY3+BY
 2V4p3b/H5e4qGmsTwgDXo+uszEUNtdVS5wA/U/0tqq6qkuzPxCAFBhWUm
 4x8PWppxfOxaS9DKzWsN3zXNhfu/J7tOq5IoQW5/uWjJCfzQ/YeGbLDq7
 bY+n6dPUagthJTXaoOcM7Ume7W2cmbi2jYRMs4VxFUx0Yw7MSk1mPBe0p
 LY6ITADdAc21NfUI4CVUFRhB94GIObUITbZqXHif5VLMzJfT9AyHG6c9k A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10647"; a="325461505"
X-IronPort-AV: E=Sophos;i="5.98,256,1673942400"; d="scan'208";a="325461505"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2023 02:39:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10647"; a="711061602"
X-IronPort-AV: E=Sophos;i="5.98,256,1673942400"; d="scan'208";a="711061602"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga001.jf.intel.com with SMTP; 13 Mar 2023 02:39:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 13 Mar 2023 11:39:13 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Mar 2023 11:39:13 +0200
Message-Id: <20230313093913.30198-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Fix build with WERROR=y
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Remove the unused i915 variable to fix the build with WERROR=y.

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Fixes: d1b3657fb5b6 ("drm/i915: Remove redundant check for DG1")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 90af399cb0a3..e7ee24bcad89 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1476,8 +1476,6 @@ gen12_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 static void
 dg1_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 {
-	struct drm_i915_private *i915 = gt->i915;
-
 	gen12_gt_workarounds_init(gt, wal);
 
 	/* Wa_1409420604:dg1 */
-- 
2.39.2

