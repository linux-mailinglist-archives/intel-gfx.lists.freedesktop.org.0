Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C242C8247A5
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 18:45:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EB1710E51C;
	Thu,  4 Jan 2024 17:45:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12FA010E51C
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jan 2024 17:45:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704390324; x=1735926324;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=40K8eRA2y9Wn5HpyiOrQeVc04UESbxxtWX856srVkBc=;
 b=gWxSBQPYrMl25w95I1W1RAY1qrbAs+7Nc8rdOBzAXNQaBFC7J8DvLJti
 n2WnA9aQClddJXEXRPYkVRai+ZBE73w1/Ln9GiMAfQnG52/FKJMHmvyN7
 KF/S7spD4No6qYVX1A3bIDisrcReBXWgcVOfCuootO7AMgPD5/oMxWILh
 bi5+ucv2IhaDrGxntuIgctJLjCFOwXiNj118pXOk44rXpbcyg6TNtAzhJ
 wdBfa//3phuPaRWewNPGqpQZEc+rSmyLtZU5Z4SWEOXvRZmPY/kX8loMZ
 arKGj1IvCKK0pbHME7Dyu9+G8CEKljjdXrCY701qXZ8OYL3kCx+DrHew3 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="4093837"
X-IronPort-AV: E=Sophos;i="6.04,331,1695711600"; 
   d="scan'208";a="4093837"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 09:43:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="923988765"
X-IronPort-AV: E=Sophos;i="6.04,331,1695711600"; d="scan'208";a="923988765"
Received: from pdelarag-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.32])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 09:43:54 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/5] drm/i915/irq: use DISPLAY_VER instead of GRAPHICS_VER
Date: Thu,  4 Jan 2024 19:43:46 +0200
Message-Id: <20240104174350.823605-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
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
 drivers/gpu/drm/i915/display/intel_display_irq.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 6964f4b95865..99843883cef7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1587,7 +1587,7 @@ void ilk_de_irq_postinstall(struct drm_i915_private *i915)
 	struct intel_uncore *uncore = &i915->uncore;
 	u32 display_mask, extra_mask;
 
-	if (GRAPHICS_VER(i915) >= 7) {
+	if (DISPLAY_VER(i915) >= 7) {
 		display_mask = (DE_MASTER_IRQ_CONTROL | DE_GSE_IVB |
 				DE_PCH_EVENT_IVB | DE_AUX_CHANNEL_A_IVB);
 		extra_mask = (DE_PIPEC_VBLANK_IVB | DE_PIPEB_VBLANK_IVB |
-- 
2.39.2

