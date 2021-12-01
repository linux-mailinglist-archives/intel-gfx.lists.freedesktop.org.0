Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA15F464F49
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Dec 2021 14:58:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5E1672DA2;
	Wed,  1 Dec 2021 13:58:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 078A072DA1
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Dec 2021 13:58:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10184"; a="236404843"
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="236404843"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 05:58:00 -0800
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="609560395"
Received: from pwedlarx-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.26.43])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 05:57:58 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Dec 2021 15:57:11 +0200
Message-Id: <ed6c43455d13c90ebfed442b196625af5e6ede88.1638366969.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1638366969.git.jani.nikula@intel.com>
References: <cover.1638366969.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 09/10] drm/i915/display: convert dp_to_i915()
 to a macro
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

Avoid looking into the guts of struct drm_i915_private in
headers. Again, converting an inline function to a macro is less than
ideal, but avoids having to pull in i915_drv.h just for the to_i915()
part.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 14b4c3bb6030..f6e76b4d377d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1883,11 +1883,7 @@ dp_to_lspcon(struct intel_dp *intel_dp)
 	return &dp_to_dig_port(intel_dp)->lspcon;
 }
 
-static inline struct drm_i915_private *
-dp_to_i915(struct intel_dp *intel_dp)
-{
-	return to_i915(dp_to_dig_port(intel_dp)->base.base.dev);
-}
+#define dp_to_i915(__intel_dp) to_i915(dp_to_dig_port(__intel_dp)->base.base.dev)
 
 #define CAN_PSR(intel_dp) ((intel_dp)->psr.sink_support && \
 			   (intel_dp)->psr.source_support)
-- 
2.30.2

