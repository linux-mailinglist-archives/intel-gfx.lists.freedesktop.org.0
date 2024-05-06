Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF91A8BCE96
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 14:57:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EEFA10F9A1;
	Mon,  6 May 2024 12:57:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NhGCGb9p";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FCCE112F97;
 Mon,  6 May 2024 12:57:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715000250; x=1746536250;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wW+9CyIxmHGowJRpf15he5NmpdKHMBKEP5dSWWTxn0Q=;
 b=NhGCGb9p9XOsQEgDUVBHIf4xbtFaQJ3EQOWPCYZxUHtzyDwPabwGrL5q
 cirZ/vsIlvzgTwfZHxqRah7aseZdV7eZIte3Z5/5PqmGSXddorbf0kyk2
 W+Uhdznmn/rQC3euofEJu5kast8Hkn3JSngbyEoipbS/SakkIipkdZ5uJ
 ro8p/iebEW0wuKoH3KvgQv8g6iGQG/9fvVXn42xuJEkPpjHsZyTbKWkyr
 bleV2Z735P6wJIPdEt02XXBigCynS2w+/37K1Yq4G0Dwn8GuUA11DtZJS
 VM9weJZGQ04al7jLdF6ZtvbEvLate0nPj0sOG3jKZdBMhq98RPjW9kL/F g==;
X-CSE-ConnectionGUID: vEofLJAJRsuGzo7KodKYkg==
X-CSE-MsgGUID: CXzRouCxTaWXgYWxHUCoeg==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="10865321"
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="10865321"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 05:57:30 -0700
X-CSE-ConnectionGUID: s2PorL3mRk+P8EKcVbX+0A==
X-CSE-MsgGUID: SHUKBs1pRCC3Kujp43u/3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="28164945"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 06 May 2024 05:57:28 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 06 May 2024 15:57:27 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 3/9] drm/i915: Drop 'uses_fence' parameter from
 intel_pin_fb_obj_dpt()
Date: Mon,  6 May 2024 15:57:12 +0300
Message-ID: <20240506125718.26001-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240506125718.26001-1-ville.syrjala@linux.intel.com>
References: <20240506125718.26001-1-ville.syrjala@linux.intel.com>
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

Fence regions are only relevant for GGTT, not DPT. Drop the
pointless 'uses_fence' argument from intel_pin_fb_obj_dpt().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb_pin.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
index be095cc696ba..2b50c1946c63 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
+++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
@@ -20,7 +20,6 @@ static struct i915_vma *
 intel_pin_fb_obj_dpt(struct drm_framebuffer *fb,
 		     const struct i915_gtt_view *view,
 		     unsigned int alignment,
-		     bool uses_fence,
 		     unsigned long *out_flags,
 		     struct i915_address_space *vm)
 {
@@ -274,8 +273,8 @@ int intel_plane_pin_fb(struct intel_plane_state *plane_state)
 		plane_state->ggtt_vma = vma;
 
 		vma = intel_pin_fb_obj_dpt(fb, &plane_state->view.gtt,
-					   alignment, false,
-					   &plane_state->flags, intel_fb->dpt_vm);
+					   alignment, &plane_state->flags,
+					   intel_fb->dpt_vm);
 		if (IS_ERR(vma)) {
 			intel_dpt_unpin(intel_fb->dpt_vm);
 			plane_state->ggtt_vma = NULL;
-- 
2.43.2

