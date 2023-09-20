Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 537277A7A70
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Sep 2023 13:29:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F034A10E170;
	Wed, 20 Sep 2023 11:29:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9531010E170
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Sep 2023 11:29:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695209347; x=1726745347;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=epqE+Hkw13arMcKNAcqpQVy237ecwFpNj6OqLP5ylI4=;
 b=mKHsd9vkEgDhh4uD0deyJV43j1+07YaNA2ftv7kBK4EzUwrGDt6VObWi
 3tarzwtRKxj8DKXYGa6Xnixh+sw4HCa5VzCwiTh4AAswCV+uwWQ4eBCoG
 BPad4AeL5/r3Ed8Gtyb8Knb//nEDA+AlRAup8Zz9JzZSNIvlYEL2us+xM
 5G5r1C3dTyeWcKqRxM6LTSPtOmLfDVZbGBioeYipdkLYIaHdjizp6d4Tc
 fnCG+Uu2XUOpWmUGELvHImaf7gTKOyw6EXZuaMR837n5t4iDKdilw6nn0
 i3CizO/H8YSGne4GXSFjuYCKnMABcxULvwIaXEaMKdQ1ZlzZRO/7wIQUm A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="365244322"
X-IronPort-AV: E=Sophos;i="6.02,161,1688454000"; d="scan'208";a="365244322"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 04:29:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="749864631"
X-IronPort-AV: E=Sophos;i="6.02,161,1688454000"; d="scan'208";a="749864631"
Received: from ptelkov-mobl2.ccr.corp.intel.com (HELO localhost)
 ([10.252.38.103])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 04:29:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 20 Sep 2023 14:29:01 +0300
Message-Id: <20230920112901.3315876-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: add a note about fec_enable with
 128b/132b
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

Add a note that fec_enable actually means FEC is to be enabled
explicitly. 128b/132b always has FEC enabled, the driver doesn't need to
enable it separately, and fec_enable will be false.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 3c54fe2bfddd..f781a9755a52 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1364,7 +1364,12 @@ struct intel_crtc_state {
 
 	bool enhanced_framing;
 
-	/* Forward Error correction State */
+	/*
+	 * Forward Error Correction.
+	 *
+	 * Note: This will be false for 128b/132b, which will always have FEC
+	 * enabled automatically.
+	 */
 	bool fec_enable;
 
 	bool sdp_split_enable;
-- 
2.39.2

