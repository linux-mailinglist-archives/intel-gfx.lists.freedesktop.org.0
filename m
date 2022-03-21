Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D7B4E30F0
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Mar 2022 20:50:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5168B10E48B;
	Mon, 21 Mar 2022 19:50:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D8B910E48B
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Mar 2022 19:50:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647892219; x=1679428219;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=7Do5Cg9RxAc8t2xYI5HJDkqr2wxp0lFQM0BXCR1yLK8=;
 b=nSoYbRyAASCXCygJfCu/sliCTlmJDn0Cp2IxgC2C7StP3rkbALuiTl0N
 FkP8ZFXpXB0m8XCoVJufNpobxqecFFUMmNuPkLIEfxDjjCpK1t4IPm9vf
 HxNySeaK9SYUqERvw3P7xRkdsPOfxMqb0BUK/cLmspOyG8QwK8jONwQFD
 05Jd3EftsVAY61O2xMCrG62eU/rdDGFTpSRm7oHtgVS9xcIljTUDCzIO2
 3GHWnwITxbgO09ipOJBtWVBM0D4ruEpFJrtNhhG4C9G7uix45aIZpK1uo
 le+Q+8WS/QcMUhu9WkbhE4RzbW++zkDzKr3xen+UbkB2rfUzqHYs7lg8l Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10293"; a="245109500"
X-IronPort-AV: E=Sophos;i="5.90,199,1643702400"; d="scan'208";a="245109500"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2022 12:50:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,199,1643702400"; d="scan'208";a="646723730"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by fmsmga002.fm.intel.com with SMTP; 21 Mar 2022 12:50:16 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 21 Mar 2022 21:50:15 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Mar 2022 21:50:06 +0200
Message-Id: <20220321195006.775-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220321195006.775-1-ville.syrjala@linux.intel.com>
References: <20220321195006.775-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: Remove dead members from dev_priv
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

Remove some zombies from our device structure.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 217c09422711..98f04e0ebdbe 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -635,12 +635,6 @@ struct drm_i915_private {
 
 	struct list_head global_obj_list;
 
-	/*
-	 * For reading active_pipes holding any crtc lock is
-	 * sufficient, for writing must hold all of them.
-	 */
-	u8 active_pipes;
-
 	struct i915_frontbuffer_tracking fb_tracking;
 
 	struct intel_atomic_helper {
@@ -670,8 +664,6 @@ struct drm_i915_private {
 
 	struct i915_gpu_error gpu_error;
 
-	struct drm_i915_gem_object *vlv_pctx;
-
 	/* list of fbdev register on this device */
 	struct intel_fbdev *fbdev;
 	struct work_struct fbdev_suspend_work;
@@ -692,7 +684,6 @@ struct drm_i915_private {
 	u32 bxt_phy_grc;
 
 	u32 suspend_count;
-	bool power_domains_suspended;
 	struct i915_suspend_saved_registers regfile;
 	struct vlv_s0ix_state *vlv_s0ix_state;
 
-- 
2.34.1

