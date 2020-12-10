Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F9622D52B1
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 05:18:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58C396E867;
	Thu, 10 Dec 2020 04:18:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-44.mimecast.com
 (us-smtp-delivery-44.mimecast.com [207.211.30.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F50B6E841
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Dec 2020 04:18:04 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-591-8X0Y6VNYPL2OziWLjsRcqQ-1; Wed, 09 Dec 2020 23:18:01 -0500
X-MC-Unique: 8X0Y6VNYPL2OziWLjsRcqQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9A75D10054FF
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Dec 2020 04:18:00 +0000 (UTC)
Received: from dreadlord-bne-redhat-com.bne.redhat.com (unknown [10.64.32.209])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0C6CD5D6A1
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Dec 2020 04:17:59 +0000 (UTC)
From: Dave Airlie <airlied@gmail.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Dec 2020 14:17:48 +1000
Message-Id: <20201210041755.29088-3-airlied@gmail.com>
In-Reply-To: <20201210041755.29088-1-airlied@gmail.com>
References: <20201210041755.29088-1-airlied@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=airlied@gmail.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Subject: [Intel-gfx] [PATCH 2/9] drm/i915/display: move to_intel_frontbuffer
 to header
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Dave Airlie <airlied@redhat.com>

This will be used for some refactoring in other files, so move it
first.

Signed-off-by: Dave Airlie <airlied@redhat.com>
---
 drivers/gpu/drm/i915/display/intel_display.c       | 6 ------
 drivers/gpu/drm/i915/display/intel_display_types.h | 6 ++++++
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 80103211f407..62e22d832cab 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3611,12 +3611,6 @@ static void intel_plane_disable_noatomic(struct intel_crtc *crtc,
 	intel_disable_plane(plane, crtc_state);
 }
 
-static struct intel_frontbuffer *
-to_intel_frontbuffer(struct drm_framebuffer *fb)
-{
-	return fb ? to_intel_framebuffer(fb)->frontbuffer : NULL;
-}
-
 static void
 intel_find_initial_plane_obj(struct intel_crtc *intel_crtc,
 			     struct intel_initial_plane_config *plane_config)
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 8c4afad68a44..dfe573c8b5ae 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1805,4 +1805,10 @@ static inline u32 intel_plane_ggtt_offset(const struct intel_plane_state *state)
 	return i915_ggtt_offset(state->vma);
 }
 
+static inline struct intel_frontbuffer *
+to_intel_frontbuffer(struct drm_framebuffer *fb)
+{
+	return fb ? to_intel_framebuffer(fb)->frontbuffer : NULL;
+}
+
 #endif /*  __INTEL_DISPLAY_TYPES_H__ */
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
