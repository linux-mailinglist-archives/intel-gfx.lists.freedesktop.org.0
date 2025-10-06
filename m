Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABB03BBEBAA
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Oct 2025 18:47:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4164110E43B;
	Mon,  6 Oct 2025 16:47:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l29hUTd0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB11E10E433;
 Mon,  6 Oct 2025 16:47:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759769231; x=1791305231;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lYPxoc7vfETBNPQe8N56E08bYemY6T+80D9rwnG4nDQ=;
 b=l29hUTd0QlYo4naf2uSbBsz3oyyaUaDEYiG0TyiFdniu5KE6IyxZLIh6
 quKXVuwsES1B6V3Qc/giLwIylXpfzSaoPZpNG9h5246O5SGf90VihVVd7
 DVNKl4W0ubRWEV5g8d+9zaamFdh46MV4j2XzqAiCzFv0KF54NfOd+rVRT
 oNBXgH5EQV0bYEMi4GnjppU+y2IJiaL0wGtwJQfON23JDzBtn/tgn7CxH
 wCwP9b/J1CX/m9h7bBh6EzJ4lWlptjTNqsdxh6j1PN4s110sODeGL1YRO
 0LGnpsw1C+V8YsynJ7JmKceeqUxs2mP7L8cNlPj13f9hrP1C3EDnhmxsc Q==;
X-CSE-ConnectionGUID: jj/d9zqeQVy+ZtFxzz6QmQ==
X-CSE-MsgGUID: k2lL0szyRPiao49aeAvoug==
X-IronPort-AV: E=McAfee;i="6800,10657,11574"; a="65795672"
X-IronPort-AV: E=Sophos;i="6.18,320,1751266800"; d="scan'208";a="65795672"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2025 09:47:10 -0700
X-CSE-ConnectionGUID: lB6uGMJNTYyJ8YxWCtJUTA==
X-CSE-MsgGUID: cr3APHP+TQuko6sAplO0tw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,320,1751266800"; d="scan'208";a="179861551"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.80])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2025 09:47:09 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 05/10] drm/i915/frontbuffer: Handle the dirtyfb cache flush
 inside intel_frontbuffer_flush()
Date: Mon,  6 Oct 2025 19:46:43 +0300
Message-ID: <20251006164648.6761-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251006164648.6761-1-ville.syrjala@linux.intel.com>
References: <20251006164648.6761-1-ville.syrjala@linux.intel.com>
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

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c          | 1 -
 drivers/gpu/drm/i915/display/intel_frontbuffer.c | 4 +++-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index eaf5246fe272..92a8b101cce5 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -2196,7 +2196,6 @@ static int intel_user_framebuffer_dirty(struct drm_framebuffer *fb,
 	return ret;
 
 flush:
-	intel_bo_frontbuffer_flush_for_display(front);
 	intel_frontbuffer_flush(front, ORIGIN_DIRTYFB);
 	return ret;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
index a1bfe46e9eb8..99c9e5bac78d 100644
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

