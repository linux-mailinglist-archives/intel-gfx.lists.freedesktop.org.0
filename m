Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CB581BCF0A
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2020 23:44:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25B7F6E8B3;
	Tue, 28 Apr 2020 21:44:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 466 seconds by postgrey-1.36 at gabe;
 Tue, 28 Apr 2020 21:44:21 UTC
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.74])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CBB76E868
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Apr 2020 21:44:20 +0000 (UTC)
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.145]) with ESMTPA (Nemesis) id
 1M9WmQ-1jZ47l0nHo-005W2P; Tue, 28 Apr 2020 23:31:09 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Date: Tue, 28 Apr 2020 23:30:50 +0200
Message-Id: <20200428213106.3139170-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:rYIYDMxCYWRB2eFt+r4bXR0ojs6VRf8cssYFP45eloPQBq3kk1D
 38AbGpfXilhQ2jU3p6Hjd0QcD2HvV3U+BhpEpeAKZtbVB3ZQ/FfFecRn74a+7glEdjBtxhN
 mCtjym4QUZYwirc3/24PVfET6sA4U1JkY6ymVG2ainX3OdXVUT7FrO8C3wZUz7tT3mANQiP
 1CtPuSaxk0HHZM5ZPj5zQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:fCvYI43h4qw=:zJE86n2XR4/zwbmsqs1PsD
 uWeN4V5QvJ5OfS1qUq+gSGWOVuQFCnCX2CdQJTA3DTdTvCs/0A04ASgSjg7D3IglWEB6oMs3T
 xD5gHABRLhMNvQ38prGDQmJWh298oBemJO6BJicnPmuMJuTCLv50peWcUZluUfp8l340+3fSM
 kTXf3g6O9LQjziB7LahXMwcM4x1hCw/lPaQxQWa7nGWEI1V4lkFzDWDDb5Zx41VyksshiJgF8
 CKxN/mUNUz/aiBh1EUwM+483AAaMd6A3JK+hVtf/4ECfHiglXcx1MwAhzWNuh/G1OnYYEqpVH
 ybdEfViT5K0s6V7rdWFpubIDLFn8MldPvmfkPDk7ySMhv+i4Wh773uMjcHYTv9QwW7d+qXjtY
 S54qK+b37YFv/t3Hena6LRpK4KexgqaKoLjpus0a7jD0raOqPk+ZF2qIQyQsRnOSEzTq5c13N
 2qK6vxScrRMf+97fTH5gwEvYJJFDAyK9W/Ub5kF6jMEdfQ+jFtKHsPqlTE2BN1c5zGN6aL3cI
 mqbiwsp5m8jQRcSqdyWB+lEbNvZ1F6yKXIriXL6dxjr4xIUy52yQY+/kN5TWNEs9qFgv/GAG7
 6OkJedi6a4mRrfDURxJAa8YIul61LAPw+8apa4eid7H6ee6+GpLZLhhICfqYSvDe8rUBPAg/+
 1PCcNZqj54JYPtogAxivyCo/6CMWiDmyHrCsXZXQKamSJRS/NW9R0N7NHHpkrT0foNxyNBnOI
 zXGUEdqQ5JIs23BKKxZCLthcTKLR5/Qo9T6o7XDXy24wzDXYabNNMNa2BkuE+7pZM5g1RblCP
 iXrZu5dccnpJhjFTZL8br97URWb8T5FVlnBVakjoH+kFmWxQ0Y=
Subject: [Intel-gfx] [PATCH] drm/i915: avoid unused scale_user_to_hw()
 warning
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
Cc: Arnd Bergmann <arnd@arndb.de>, Jani Nikula <jani.nikula@intel.com>,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

After the function is no longer marked 'inline', there
is now a new warning pointing out that the only caller
is inside of an #ifdef:

drivers/gpu/drm/i915/display/intel_panel.c:493:12: warning: 'scale_user_to_hw' defined but not used [-Wunused-function]
  493 | static u32 scale_user_to_hw(struct intel_connector *connector,
      |            ^~~~~~~~~~~~~~~~

Move the function itself into that #ifdef as well.

Fixes: 81b55ef1f47b ("drm/i915: drop a bunch of superfluous inlines")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/gpu/drm/i915/display/intel_panel.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 4279d2bf884a..92ed67e21c60 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -489,16 +489,6 @@ static u32 scale(u32 source_val,
 	return target_val;
 }
 
-/* Scale user_level in range [0..user_max] to [hw_min..hw_max]. */
-static u32 scale_user_to_hw(struct intel_connector *connector,
-			    u32 user_level, u32 user_max)
-{
-	struct intel_panel *panel = &connector->panel;
-
-	return scale(user_level, 0, user_max,
-		     panel->backlight.min, panel->backlight.max);
-}
-
 /* Scale user_level in range [0..user_max] to [0..hw_max], clamping the result
  * to [hw_min..hw_max]. */
 static u32 clamp_user_to_hw(struct intel_connector *connector,
@@ -1255,6 +1245,16 @@ static u32 intel_panel_get_backlight(struct intel_connector *connector)
 	return val;
 }
 
+/* Scale user_level in range [0..user_max] to [hw_min..hw_max]. */
+static u32 scale_user_to_hw(struct intel_connector *connector,
+			    u32 user_level, u32 user_max)
+{
+	struct intel_panel *panel = &connector->panel;
+
+	return scale(user_level, 0, user_max,
+		     panel->backlight.min, panel->backlight.max);
+}
+
 /* set backlight brightness to level in range [0..max], scaling wrt hw min */
 static void intel_panel_set_backlight(const struct drm_connector_state *conn_state,
 				      u32 user_level, u32 user_max)
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
