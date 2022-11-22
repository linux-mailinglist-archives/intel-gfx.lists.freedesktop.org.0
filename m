Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D1E3633C19
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 13:09:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA76810E3EF;
	Tue, 22 Nov 2022 12:09:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79AAC10E3DD
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Nov 2022 12:08:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669118923; x=1700654923;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=xGrokdZz/jbnWr5FOdt/hssglEfIe6ZXn+2WZuztTEY=;
 b=iv8t6Ei6s2MxiIQJqPZzTO6hFzgo5f8v5RC9ll89i3u4CO535/d9/MWu
 b0MzbGb4E70GFxeStkRmWexgy4MKKUo/QgTg3goNUAxq3AdNEudqZO5bC
 6nFpZ6ViwyzMKySuzhLutmdh6+eQOYr3EDZN2nCMKhXD8c37L5toGcXvs
 MLo7bvhqOTBMpBTI562gp5VJvTcc6Os/xCCoGp5eU6xdHGyqx+dzVDBNr
 /H3gkJcUqAbQdNHpGIoMvpNBtuaUuHOaL275mlmtqW+VVHZfP1cN4wZEv
 +GcOzbb6mjrGRL6kH1/kmvRk/ViFG4KtutAQLqRIMwfipiZufepz3yq2W A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="313829545"
X-IronPort-AV: E=Sophos;i="5.96,183,1665471600"; d="scan'208";a="313829545"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 04:08:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="641395838"
X-IronPort-AV: E=Sophos;i="5.96,183,1665471600"; d="scan'208";a="641395838"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 22 Nov 2022 04:08:40 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 22 Nov 2022 14:08:40 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Nov 2022 14:08:20 +0200
Message-Id: <20221122120825.26338-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221122120825.26338-1-ville.syrjala@linux.intel.com>
References: <20221122120825.26338-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/10] drm/i915/dvo: Define a few more DVO
 register bits
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

Define a few extra interrupt related bits on the DVO register.
One of these we included in the DVO_PRESERVE_MASK already.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dvo.c | 3 ++-
 drivers/gpu/drm/i915/i915_reg.h          | 4 +++-
 2 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index d20334d3394c..255deb55b932 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -290,7 +290,8 @@ static void intel_dvo_pre_enable(struct intel_atomic_state *state,
 
 	/* Save the data order, since I don't know what it should be set to. */
 	dvo_val = intel_de_read(i915, DVO(port)) &
-		  (DVO_PRESERVE_MASK | DVO_DATA_ORDER_GBRG);
+		  (DVO_DEDICATED_INT_ENABLE |
+		   DVO_PRESERVE_MASK | DVO_DATA_ORDER_GBRG);
 	dvo_val |= DVO_DATA_ORDER_FP | DVO_BORDER_ENABLE |
 		   DVO_BLANK_ACTIVE_HIGH;
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index f5ae171eaee0..89c834d8fff8 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2589,6 +2589,9 @@
 #define   DVO_PIPE_STALL		(1 << 28)
 #define   DVO_PIPE_STALL_TV		(2 << 28)
 #define   DVO_PIPE_STALL_MASK		(3 << 28)
+#define   DVO_INTERRUPT_SELECT		(1 << 27)
+#define   DVO_DEDICATED_INT_ENABLE	(1 << 26)
+#define   DVO_PRESERVE_MASK		(0x3 << 24)
 #define   DVO_USE_VGA_SYNC		(1 << 15)
 #define   DVO_DATA_ORDER_I740		(0 << 14)
 #define   DVO_DATA_ORDER_FP		(1 << 14)
@@ -2606,7 +2609,6 @@
 #define   DVO_BLANK_ACTIVE_HIGH		(1 << 2)
 #define   DVO_OUTPUT_CSTATE_PIXELS	(1 << 1)	/* SDG only */
 #define   DVO_OUTPUT_SOURCE_SIZE_PIXELS	(1 << 0)	/* SDG only */
-#define   DVO_PRESERVE_MASK		(0x7 << 24)
 #define _DVOA_SRCDIM		0x61124
 #define _DVOB_SRCDIM		0x61144
 #define _DVOC_SRCDIM		0x61164
-- 
2.37.4

