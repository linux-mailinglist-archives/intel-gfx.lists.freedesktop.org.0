Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DDD94D9CD2
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 15:01:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFBCC10E3F7;
	Tue, 15 Mar 2022 14:01:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FEAB10E354
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Mar 2022 14:01:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647352899; x=1678888899;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=nVMfp3u8BXZloYrOTcTBgmpijUTyuibul3LlC++29F0=;
 b=e+tFH4BBVXDLJlWNDohDGQbLteEcExKoOL54TeRVk+uth1dPeqhmbmjh
 epEH4ylrJTFU25XiauGPmhP9UqdnRdlfM1AYIyT+LrWJl2fUt1avezB6a
 P18DVNcN0sI8J4NeSh23dYDWuLpmIootu0YgwV3aaUyX3DgxyciziUtKS
 /HQdsGc7xki1JqzqFuiIM36rA8Oaw7dPYim4opeeQrkZj8FMKvgZ76vMO
 jLBcru20bHYTIQEio+J0+6psTa1hbkiNv8hxT6OOXYmrhBkx6+aLEyn8g
 e82p0r/PYs9EMOPoMbNyfRTsGlOmVPa2qGLa1oUHietOezbpnJtcDJ7xQ Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="238475841"
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; d="scan'208";a="238475841"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 07:00:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; d="scan'208";a="644265288"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga002.fm.intel.com with SMTP; 15 Mar 2022 07:00:05 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 15 Mar 2022 16:00:04 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Mar 2022 15:59:55 +0200
Message-Id: <20220315140001.1172-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220315140001.1172-1-ville.syrjala@linux.intel.com>
References: <20220315140001.1172-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/7] drm/i915/fbc: Eliminate
 possible_framebuffer_bits
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

Not sure what the point of this fbc->possible_frontbuffer_bits is.
And especially don't see why it's returning all the bits when
fbc is not even enabled. So let's just get rid of this and only
say we are interested in the plane's frontbuffer bits when fbc
is actually enabled.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 142280b6ce6d..e45d64655090 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -89,7 +89,6 @@ struct intel_fbc {
 	 * with stolen_lock.
 	 */
 	struct mutex lock;
-	unsigned int possible_framebuffer_bits;
 	unsigned int busy_bits;
 
 	struct drm_mm_node compressed_fb;
@@ -1316,7 +1315,7 @@ static unsigned int intel_fbc_get_frontbuffer_bit(struct intel_fbc *fbc)
 	if (fbc->state.plane)
 		return fbc->state.plane->frontbuffer_bit;
 	else
-		return fbc->possible_framebuffer_bits;
+		return 0;
 }
 
 static void __intel_fbc_invalidate(struct intel_fbc *fbc,
@@ -1655,11 +1654,7 @@ static bool need_fbc_vtd_wa(struct drm_i915_private *i915)
 
 void intel_fbc_add_plane(struct intel_fbc *fbc, struct intel_plane *plane)
 {
-	if (!fbc)
-		return;
-
 	plane->fbc = fbc;
-	fbc->possible_framebuffer_bits |= plane->frontbuffer_bit;
 }
 
 static struct intel_fbc *intel_fbc_create(struct drm_i915_private *i915,
-- 
2.34.1

