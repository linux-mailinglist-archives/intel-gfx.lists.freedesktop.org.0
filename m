Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8BDF4B0AF8
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 11:37:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33A0A10E7EB;
	Thu, 10 Feb 2022 10:37:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52D0510E7EB
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Feb 2022 10:37:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644489436; x=1676025436;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XEPgE9A42s8ZM8cCVp+frZqoLKC7e2fa+Bbppp2cOfw=;
 b=UINaZ7qZM164uClRs9Je7rBY9571L1PIsbcl9BWfQi+BzwaUocBtqqop
 cjtL4o5/HZU98JsYVKRQedhBS6S0AuRPsLiW6TcYtJmOj8/hklVh/RUax
 XPgumwY655YMnq4y2Pm5a2sP5p+qP86CtaYMpsYV8Xe+rKGc590ayQxwC
 sjljLkIJwZQw1S3vTB1Ry94HzDpSxAKDjXJYOr766QmjkWyWsbUgmVYp0
 uQ0OIFDk58TTA5/SrxBwldea7MBH3djdL2xM15dMCIjP2CLMsuzt+K1XR
 RJCNsg8n/i8NP3OO0DhFuMuYhMm8wAOPl2OYm/u9Oa0QymDgLVggvbjQA A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10253"; a="236865324"
X-IronPort-AV: E=Sophos;i="5.88,358,1635231600"; d="scan'208";a="236865324"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 02:37:08 -0800
X-IronPort-AV: E=Sophos;i="5.88,358,1635231600"; d="scan'208";a="701644976"
Received: from dhogarty-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.10.221])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 02:37:07 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Feb 2022 12:36:44 +0200
Message-Id: <82f63313057ed2d96856b3f8d76536826a897bc7.1644489329.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1644489329.git.jani.nikula@intel.com>
References: <cover.1644489329.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/5] drm/i915/opregion: early exit from encoder
 notify if SWSCI isn't there
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

Newer platforms aren't supposed to have mailbox #2 or SWSCI
support. Bail out early from encoder notify if that is the case,
skipping the out-of-bounds checks and debug messages.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_opregion.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index e540e5b9073b..ce3d44cc2461 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -358,11 +358,17 @@ int intel_opregion_notify_encoder(struct intel_encoder *intel_encoder,
 	u32 parm = 0;
 	u32 type = 0;
 	u32 port;
+	int ret;
 
 	/* don't care about old stuff for now */
 	if (!HAS_DDI(dev_priv))
 		return 0;
 
+	/* Avoid port out of bounds checks if SWSCI isn't there. */
+	ret = check_swsci_function(dev_priv, SWSCI_SBCB_DISPLAY_POWER_STATE);
+	if (ret)
+		return ret;
+
 	if (intel_encoder->type == INTEL_OUTPUT_DSI)
 		port = 0;
 	else
-- 
2.30.2

