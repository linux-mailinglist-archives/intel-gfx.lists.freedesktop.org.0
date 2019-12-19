Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A12A7126D30
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2019 20:09:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6381C6E0DD;
	Thu, 19 Dec 2019 19:09:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69EE66E0DD;
 Thu, 19 Dec 2019 19:09:26 +0000 (UTC)
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <colin.king@canonical.com>)
 id 1ii1Aj-0004qM-07; Thu, 19 Dec 2019 19:09:17 +0000
From: Colin King <colin.king@canonical.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Chris Wilson <chris@chris-wilson.co.uk>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Date: Thu, 19 Dec 2019 19:09:16 +0000
Message-Id: <20191219190916.24693-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH][next] drm/i915: fix uninitialized pointer reads
 on pointers to and from
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Colin Ian King <colin.king@canonical.com>

Currently pointers to and from are not initialized and may contain
garbage values. This will cause uninitialized pointer reads in the
call to intel_frontbuffer_track and later checks to see if to and from
are null.  Fix this by ensuring to and from are initialized to NULL.

Addresses-Coverity: ("Uninitialised pointer read)"
Fixes: da42104f589d ("drm/i915: Hold reference to intel_frontbuffer as we track activity")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/gpu/drm/i915/display/intel_overlay.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index 6097594468a9..e869a3d86522 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -279,7 +279,7 @@ static void intel_overlay_flip_prepare(struct intel_overlay *overlay,
 				       struct i915_vma *vma)
 {
 	enum pipe pipe = overlay->crtc->pipe;
-	struct intel_frontbuffer *from, *to;
+	struct intel_frontbuffer *from = NULL, *to = NULL;
 
 	WARN_ON(overlay->old_vma);
 
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
