Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D7CE671D43
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 14:15:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE7F410E742;
	Wed, 18 Jan 2023 13:15:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97A0D10E742
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jan 2023 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674047753; x=1705583753;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xp/7RnWWh+2X0mCPWrCnx7X5FjyYDY9/Vsy/QlggYOE=;
 b=dTni6AE2TDkbvsNPRH1H1VfgyOH2rc+VYasKlywUE9NCRLUvrWA30s9s
 /5tUmRqL4U8qpE/S4xZWcReE0lxfSqQRJHCO1O9pnepJVdjq2kM8absYW
 KJUJrOYo4cM8QYZCNylkaPXAYGI/4llouhT0Dw1ZNp3J3OuDQyUpiHhFH
 rYVhO3xrlX0CAbGofxlGSYMfTGR6GUvs2yH/z2TipSAP7RIvIkBXDNI+L
 sTEvOJwjTdn7YSVGr42J5UqYjr2+SnBErc7JkaFBwyQNGelS6gc8FVOcV
 oDhEZYX95LcurYWUP4lWOgO7P2I9v2KGvQokI0Ywp3AMd6OcD+QmLTVcA g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="389479776"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="389479776"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 05:15:53 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="690189916"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="690189916"
Received: from kozlovdm-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.28.132])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 05:15:51 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Jan 2023 15:15:34 +0200
Message-Id: <20230118131538.3558599-3-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230118131538.3558599-1-jani.nikula@intel.com>
References: <20230118131538.3558599-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/7] drm/i915: drop a number of unnecessary
 forward declarations
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

Remove leftovers from earlier cleanups.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 343e3e568774..ad0c5fd0cc92 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -65,13 +65,6 @@
 #include "intel_uncore.h"
 
 struct drm_i915_clock_gating_funcs;
-struct drm_i915_gem_object;
-struct drm_i915_private;
-struct intel_connector;
-struct intel_dp;
-struct intel_encoder;
-struct intel_limit;
-struct intel_overlay_error_state;
 struct vlv_s0ix_state;
 struct intel_pxp;
 
-- 
2.34.1

