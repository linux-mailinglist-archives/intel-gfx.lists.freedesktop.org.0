Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B50FBE51FF
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Oct 2025 20:54:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1A8D10EA75;
	Thu, 16 Oct 2025 18:54:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mJXvSLMR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EBC310EA68;
 Thu, 16 Oct 2025 18:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760640873; x=1792176873;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1IGkRa3MyXeE/x8ovX9HkhJV3pwnoKQnb3f35BhHSgA=;
 b=mJXvSLMRjHQpxMwzRonRWtTiMO05UHqmUZGzk8sN9qvHieL4tDVkNQdW
 0B/JCTH9x15r7rIzIuCyt7iPLTzInCpOkfeE9jTnIwBj3djkEw1VE+jVx
 pLjzvyBa2pGhmHJLq4ipPNfEXFGvKgItsOzVGgADvwDQpB4lu/IxfR5bK
 QqXiQ/fR6NFYPV0whiXEfRiPdRVYzuI5VmaWTZlRDI5BfjzFebkQQL2+d
 Zq+k89ZrjButt7mDFfKRQzA2XfV5O9HKhkkzmzBAOFlLmKjfUL87L3Am1
 x1QnK36UF3glrww8ax1dqyymLORZljX+7vqaAs3tgbqYekHWdLno119/L Q==;
X-CSE-ConnectionGUID: kn1oYg/hQ1qhkDrQG2Nhyw==
X-CSE-MsgGUID: ojEERvaMQ7y1dQ4Z7qS/zw==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="62894817"
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="62894817"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 11:54:33 -0700
X-CSE-ConnectionGUID: hCBBRNxaQbat14M9syN+Rw==
X-CSE-MsgGUID: rJc24rjxQeS9qu45B8QXvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="182514620"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.12])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 11:54:32 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 05/10] drm/i915/frontbuffer: Handle the dirtyfb cache flush
 inside intel_frontbuffer_flush()
Date: Thu, 16 Oct 2025 21:54:03 +0300
Message-ID: <20251016185408.22735-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251016185408.22735-1-ville.syrjala@linux.intel.com>
References: <20251016185408.22735-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

intel_bo_frontbuffer_flush_for_display() is a bit too low level
to be direclty in the high level dirtyfb code. Move the calls
into intel_frontbuffer_flush().

There is a slight beahavioural change here in that we now skip
the flush if the bo is not a current scanout buffer (front->bits
== 0). But that is fine as the flush will eventually happen via
the fb pinning code if/when the bo becomes a scanout buffer again.

Acked-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c          | 1 -
 drivers/gpu/drm/i915/display/intel_frontbuffer.c | 4 +++-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index ab301c657395..088e194ecf69 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -2194,7 +2194,6 @@ static int intel_user_framebuffer_dirty(struct drm_framebuffer *fb,
 	return ret;
 
 flush:
-	intel_bo_frontbuffer_flush_for_display(front);
 	intel_frontbuffer_flush(front, ORIGIN_DIRTYFB);
 	return ret;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
index 5562801d2ea3..bdf8bfa7deb9 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
@@ -150,6 +150,9 @@ void __intel_fb_flush(struct intel_frontbuffer *front,
 {
 	struct intel_display *display = to_intel_display(front->obj->dev);
 
+	if (origin == ORIGIN_DIRTYFB)
+		intel_bo_frontbuffer_flush_for_display(front);
+
 	if (origin == ORIGIN_CS) {
 		spin_lock(&display->fb_tracking.lock);
 		/* Filter out new bits since rendering started. */
@@ -167,7 +170,6 @@ static void intel_frontbuffer_flush_work(struct work_struct *work)
 	struct intel_frontbuffer *front =
 		container_of(work, struct intel_frontbuffer, flush_work);
 
-	intel_bo_frontbuffer_flush_for_display(front);
 	intel_frontbuffer_flush(front, ORIGIN_DIRTYFB);
 	intel_frontbuffer_put(front);
 }
-- 
2.49.1

