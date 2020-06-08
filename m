Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96D4A1F213A
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jun 2020 23:06:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F14966E9A4;
	Mon,  8 Jun 2020 21:06:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com
 [IPv6:2607:f8b0:4864:20::743])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A7786E9A4
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jun 2020 21:06:22 +0000 (UTC)
Received: by mail-qk1-x743.google.com with SMTP id v79so18737236qkb.10
 for <intel-gfx@lists.freedesktop.org>; Mon, 08 Jun 2020 14:06:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=O6D84exwKsxe2WSxGQGQrNWpXYxDNFhQElFVl1cvEYs=;
 b=NxkoXfcBPMcvhKbulUwI8pBQCSiV6ihtRcVJerkvvzBFkBppMeit+exFy3nEDZCiLX
 lZsyu4nCREj83IYCS4piUQjousCSoq+ljC66qg6uu0XnqCj0Hh7kYiN0RxAXwudXnQEf
 Uqj8F53zKhODLqdXsbVOqy1Dz/4VVRJd6Vq0UC0sTTGbAzNNXD10/LKKP170rGRJ2MaY
 jAsNSfrp/K7JpTFrTP7vvuGZuVxpjv4R0v0iFofqYRjbkYnpi5fh62cAwDk0tIr9AcAB
 wDOxbPvoXcAV3u/z9iEHvxWUANe1BcoLIsqnCAuEJnCKHNCRk6WUGBycw39W9HasIsBe
 wWNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=O6D84exwKsxe2WSxGQGQrNWpXYxDNFhQElFVl1cvEYs=;
 b=BTQnKLy3xu+ol43ASk6e6IrgO5Vigybxq9F8YrzRe48lEiEUlRTxquj59lu4VFQ+4p
 P39h+VRqiQaQuxEUQc1LcNHmW+SWO806yU7xOPLwi/Ey/LxX1dMP49USQLb50nOj24cz
 gk4kiOW1m0FRoxVzr6XGHgmz6e/KYO8yXsZt7/+lqcMiho3azTtLWsCN5yM5paY5nl/3
 Y7u1Fez4G1IxGLqXNmDzEC6T5xxCHjyAQvuVyi3WtM7Mn2k3uSHw6rg2EhWG7hQcXsxK
 AiKD40XB1RdQ1zhYYVNP2bboJTl4ECGvVcAWYsf9AKxK9U5CYXx0UwvQ9+lTIV3kyzgs
 h17A==
X-Gm-Message-State: AOAM530WwTmoVg1jIauiddJDnyH1pqtNKc0/MmO0tNEgGtNkzAovFZ20
 ShRlfTCkCkpG+XCztV2eba0ZlQ==
X-Google-Smtp-Source: ABdhPJzX3A0L5qODtChF4jLNZwhd9JRoJY8tnw6Q6ZzZLXgAG1EKsgGjYoB+YlaeykRR9/TZAmhozQ==
X-Received: by 2002:a37:607:: with SMTP id 7mr23386379qkg.385.1591650381467;
 Mon, 08 Jun 2020 14:06:21 -0700 (PDT)
Received: from localhost (mobile-166-173-249-24.mycingular.net.
 [166.173.249.24])
 by smtp.gmail.com with ESMTPSA id r14sm8021776qke.62.2020.06.08.14.06.20
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 08 Jun 2020 14:06:21 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org
Date: Mon,  8 Jun 2020 17:04:59 -0400
Message-Id: <20200608210505.48519-10-sean@poorly.run>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200608210505.48519-1-sean@poorly.run>
References: <20200608210505.48519-1-sean@poorly.run>
Subject: [Intel-gfx] [PATCH v5 09/13] drm/i915: Change infoframe debug
 checks to specify syslog
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
Cc: David Airlie <airlied@linux.ie>, daniel.vetter@ffwll.ch,
 intel-gfx@lists.freedesktop.org, mripard@kernel.org, ppaalanen@gmail.com,
 Sean Paul <seanpaul@chromium.org>, tzimmermann@suse.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Sean Paul <seanpaul@chromium.org>

Since the logs protected by these checks specifically target syslog,
use the new drm_debug_syslog_enabled() call to avoid triggering
these prints when only trace is enabled.

Signed-off-by: Sean Paul <seanpaul@chromium.org>

Changes in v5:
-Added to the set
---
 drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b16aca0fe5f0..de449755d1e5 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -12876,7 +12876,7 @@ static void
 intel_dump_infoframe(struct drm_i915_private *dev_priv,
 		     const union hdmi_infoframe *frame)
 {
-	if (!drm_debug_enabled(DRM_UT_KMS))
+	if (!drm_debug_syslog_enabled(DRM_UT_KMS))
 		return;
 
 	hdmi_infoframe_log(KERN_DEBUG, dev_priv->drm.dev, frame);
@@ -13519,7 +13519,7 @@ pipe_config_infoframe_mismatch(struct drm_i915_private *dev_priv,
 			       const union hdmi_infoframe *b)
 {
 	if (fastset) {
-		if (!drm_debug_enabled(DRM_UT_KMS))
+		if (!drm_debug_syslog_enabled(DRM_UT_KMS))
 			return;
 
 		drm_dbg_kms(&dev_priv->drm,
-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
