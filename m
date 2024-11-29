Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FE839DBF8E
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2024 07:50:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AE1910E26A;
	Fri, 29 Nov 2024 06:50:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G8U0JNom";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BDAD10E26A
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Nov 2024 06:50:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732863021; x=1764399021;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nf8tAorTsdTHxzRpEK90h3CagUqwvx9Se/b4avykyi8=;
 b=G8U0JNomlGIHG2gc/MJT89NdJdx4xa+/0bF+lHndopV+OJdHBCAy/1jW
 7vNIF+HkZNNAc/JqXzYAry3tlTULZwEUU4ia4nn8AJIlfwbBRh5vpiBRi
 DfiPAq75uKA+hI/YR5edA8/j4qvlfa1j6GO64OrQ3+wU1wO9DnOaqYyj3
 LYpQ8CgyXh9GmMoX/p1OK8QAroAZojE9rxB+uLeXZ+pLTk/mGptPJmVTh
 AGeNBVeLHyl0i8IoqwPrbiiAzYbIc0f+iTViQdUm7xTbJX1lfPQ2Um7dz
 F4bT0GBAUZ38KFpo3x0ZgfqfErtk1HlUAK/h5m6ESEMZKRtAByaJWtpIu g==;
X-CSE-ConnectionGUID: xRQhiUvWQFqSBwSLq+fugA==
X-CSE-MsgGUID: A9mYxQMURiCo2HoLLEaclw==
X-IronPort-AV: E=McAfee;i="6700,10204,11270"; a="44468020"
X-IronPort-AV: E=Sophos;i="6.12,194,1728975600"; d="scan'208";a="44468020"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2024 22:50:21 -0800
X-CSE-ConnectionGUID: i+BJFHLDScm0TbIsmmWAqQ==
X-CSE-MsgGUID: uHjolGQcSuStvEqnOjJ4ZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,194,1728975600"; d="scan'208";a="92589181"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 28 Nov 2024 22:50:19 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 29 Nov 2024 08:50:17 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: stable@vger.kernel.org, Sagar Ghuge <sagar.ghuge@intel.com>,
 Nanley Chery <nanley.g.chery@intel.com>, Xi Ruoyao <xry111@xry111.site>
Subject: [PATCH 1/4] drm/i915/fb: Relax clear color alignment to 64 bytes
Date: Fri, 29 Nov 2024 08:50:11 +0200
Message-ID: <20241129065014.8363-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241129065014.8363-1-ville.syrjala@linux.intel.com>
References: <20241129065014.8363-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Mesa changed its clear color alignment from 4k to 64 bytes
without informing the kernel side about the change. This
is now likely to cause framebuffer creation to fail.

The only thing we do with the clear color buffer in i915 is:
1. map a single page
2. read out bytes 16-23 from said page
3. unmap the page

So the only requirement we really have is that those 8 bytes
are all contained within one page. Thus we can deal with the
Mesa regression by reducing the alignment requiment from 4k
to the same 64 bytes in the kernel. We could even go as low as
32 bytes, but IIRC 64 bytes is the hardware requirement on
the 3D engine side so matching that seems sensible.

Cc: stable@vger.kernel.org
Cc: Sagar Ghuge <sagar.ghuge@intel.com>
Cc: Nanley Chery <nanley.g.chery@intel.com>
Reported-by: Xi Ruoyao <xry111@xry111.site>
Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13057
Closes: https://lore.kernel.org/all/45a5bba8de009347262d86a4acb27169d9ae0d9f.camel@xry111.site/
Link: https://gitlab.freedesktop.org/mesa/mesa/-/commit/17f97a69c13832a6c1b0b3aad45b06f07d4b852f
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 6a7060889f40..223c4218c019 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -1694,7 +1694,7 @@ int intel_fill_fb_info(struct drm_i915_private *i915, struct intel_framebuffer *
 		 * arithmetic related to alignment and offset calculation.
 		 */
 		if (is_gen12_ccs_cc_plane(&fb->base, i)) {
-			if (IS_ALIGNED(fb->base.offsets[i], PAGE_SIZE))
+			if (IS_ALIGNED(fb->base.offsets[i], 64))
 				continue;
 			else
 				return -EINVAL;
-- 
2.45.2

