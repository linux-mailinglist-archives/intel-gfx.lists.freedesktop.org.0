Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83A93A32C17
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 17:43:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23BB210E921;
	Wed, 12 Feb 2025 16:43:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CTxPTJ4w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14E9710E921
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Feb 2025 16:43:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739378619; x=1770914619;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zTjVRBwFg9nat/ECW3GGMbqkrnQPzfPhvi62znQ8C0Y=;
 b=CTxPTJ4w/vYGWroh11kl87rzc/iPgsgC6XLYMA/RZevwQicumUG+uy9E
 L8EteJfh3kPZ/aMFexGY955jIUz/3QsKz8DTX9TRFDe7OqoTx4iAFRIh2
 sU7F+KelHNp7aDouM6es/bAH6XxC9dNFXFs4Ki8v3eCE0BImg4mb8tLX7
 mYPaexLhsWW+Sg5gDAQopf2eVtrh7Wzb5KqexXBqfsqBGRvSeb65/rQah
 J6txBuYdaGu3kMXEQOeA3lvXjK7RZXPyRjlsXSrcK9EoKHaaXrPLVttqi
 HSH8mUlGsFT+RRaD41SEdvWIXalis3K0LlXgSa7OdCPQWnsh0H/eEC3Tj Q==;
X-CSE-ConnectionGUID: cUf2aKSQQuKHHhgq2GHhYg==
X-CSE-MsgGUID: 4OUa2NH9TOerKPaYvOzo3w==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="62514966"
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="62514966"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 08:43:39 -0800
X-CSE-ConnectionGUID: H18EsaKVTHa1zXpqZlXBaw==
X-CSE-MsgGUID: LRFKoxX1Q2OTBGj1ge/rjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="113082589"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 12 Feb 2025 08:43:37 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 12 Feb 2025 18:43:36 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Subject: [PATCH v2 02/10] Revert "drm/i915: Fix NULL ptr deref by checking
 new_crtc_state"
Date: Wed, 12 Feb 2025 18:43:22 +0200
Message-ID: <20250212164330.16891-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250212164330.16891-1-ville.syrjala@linux.intel.com>
References: <20250212164330.16891-1-ville.syrjala@linux.intel.com>
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

Reviewed-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic_plane.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 8a49d87d9bd9..f26b82b6821a 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -1132,7 +1132,7 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
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

