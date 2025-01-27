Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA18CA1DB2E
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2025 18:22:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F00210E58A;
	Mon, 27 Jan 2025 17:22:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l+Y2gLJQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C13410E58A
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2025 17:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737998525; x=1769534525;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=V7dhXPUsqazBK1vfjuw6O6wHQ8d07z4IbheAVtw8RgU=;
 b=l+Y2gLJQT5W5dGGAtTyVvylincZERkGWft7D87jdsxmhnW9GoXRQdVHX
 EOdxY5XbLp9skA+xEDVxJZBP0ZR8q5/6HrBQr38ALkC/vePS7ol9HlqNR
 6u2mONu3j8OromjuOQLQQAahNGfKr/u263YK5PyKGT9j+lrW2eoWLZPzP
 Dl6rfgV6kDcUZCLY4p4Z4JQlRlyagtizpwPEDsFujqv3T2KA1U3aM3f93
 2z+c6QtTto01zBaLRoohVxSVst4cx2mYKtAmGdTitvl82fYI0DvOS1M5E
 evK5TsZlZsymvNGJcXjViz8VXg55VjOmwBSW+qNG5BSBx6II3Ui30nWvv A==;
X-CSE-ConnectionGUID: JljM80OPSr6hAXR+MHe4Cg==
X-CSE-MsgGUID: 4ZkCGzufTvaV55lFgLx6RA==
X-IronPort-AV: E=McAfee;i="6700,10204,11328"; a="38501380"
X-IronPort-AV: E=Sophos;i="6.13,239,1732608000"; d="scan'208";a="38501380"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 09:22:05 -0800
X-CSE-ConnectionGUID: cPsGkTMNQpeg6Kwxwh0cHA==
X-CSE-MsgGUID: zE4XHv7+SfCTLK7A9z/EDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,239,1732608000"; d="scan'208";a="108610188"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 27 Jan 2025 09:22:03 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 27 Jan 2025 19:22:02 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 02/11] Revert "drm/i915: Fix NULL ptr deref by checking
 new_crtc_state"
Date: Mon, 27 Jan 2025 19:21:47 +0200
Message-ID: <20250127172156.21928-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250127172156.21928-1-ville.syrjala@linux.intel.com>
References: <20250127172156.21928-1-ville.syrjala@linux.intel.com>
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

This reverts commit 1d5b09f8daf859247a1ea65b0d732a24d88980d8.

Now that the root cause the missing crtc state has been fixed
we can get rid of the duct tape.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic_plane.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index c558143f4f82..b7af33c5dd3f 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -1124,7 +1124,7 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
 		 * This should only fail upon a hung GPU, in which case we
 		 * can safely continue.
 		 */
-		if (new_crtc_state && intel_crtc_needs_modeset(new_crtc_state)) {
+		if (intel_crtc_needs_modeset(new_crtc_state)) {
 			ret = add_dma_resv_fences(old_obj->resv,
 						  &new_plane_state->uapi);
 			if (ret < 0)
-- 
2.45.3

