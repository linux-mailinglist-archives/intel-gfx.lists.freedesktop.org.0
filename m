Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50BB71F213E
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jun 2020 23:06:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46D496E9A7;
	Mon,  8 Jun 2020 21:06:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf43.google.com (mail-qv1-xf43.google.com
 [IPv6:2607:f8b0:4864:20::f43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF0AA6E9A7
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jun 2020 21:06:43 +0000 (UTC)
Received: by mail-qv1-xf43.google.com with SMTP id g7so9059369qvx.11
 for <intel-gfx@lists.freedesktop.org>; Mon, 08 Jun 2020 14:06:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=vK6CsgCrPHEdxzOLTecsA2v3RFUx1hTjgc9vF8KhNkQ=;
 b=d5kLeBfarnu6yYGZYxmeHBh4U1jha1E1j0QCEdIS0MB+YBcOT5S+sah84ouuZnNT8R
 C93khKVrVvHEJWIlgAhBUFS4tbf4i2AIpspSiFBOWH+JEOsL4DohweBvrJ++hagV0PSh
 sLPyDrhTD1fceJW1WmM7GhcVXGm5DN6PlEsQF+5i006jhud8qLU834XbculVQLiwOHtO
 4nFch/pkB9RcjyG9W2tBMGYTPckOYNcJX/sTKQvdoDV+3Oo6Fus6l5JaqptjJYIcZbro
 DJstcFkm+xgTm0ecirou98fYllh6DO2+h27/wbcYDx1NX/h21ctDQ0TK45e1CSoyCAvP
 zLMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=vK6CsgCrPHEdxzOLTecsA2v3RFUx1hTjgc9vF8KhNkQ=;
 b=mHNzr/C4dh68qq1iv8Oyn73bPXYoQpzs12lYkJFpQzEZpGgQqnS65AdF9nkQgIAq+r
 jGeeoF6JNUbHkUsm6kDq1lmAxGCh+xG8qvUFZB/9w1NxtFyuDB9GvjESESpgng/cM1kC
 JXqVsIROU/W5paXM3HCoXRywRkj2ptaaqbqsDVLYHlBZ3NMeoffPNhFSi9rM1YsYcL3T
 fUYyVPfZ205UZlGTEaOQs7GiBblqvR/TXhIitlhAYtxkUTzbNquPC/UKARWT7ACDmQmp
 hmtuv65RL5Hs8eoY5kayrtlm7oIRuJHDTKQqSQxy9UISaJybhtxaM6O6fQgFlFDEyFsV
 56Kw==
X-Gm-Message-State: AOAM5316RinrWpLwlcE52x/fTxeCXoR4zg7uy/Epf+1/AkiZSXkeJUc7
 0rM3BF93CjA1OfEvt0qneDV3cA==
X-Google-Smtp-Source: ABdhPJz9/VH9gRs0AdWzddxBIXI4MNW/WdezC6uBbNQVurjfE/e8MZjyvCPHby3/INgPxdvFMUr3kA==
X-Received: by 2002:ad4:56b2:: with SMTP id bd18mr586065qvb.209.1591650403175; 
 Mon, 08 Jun 2020 14:06:43 -0700 (PDT)
Received: from localhost (mobile-166-173-249-24.mycingular.net.
 [166.173.249.24])
 by smtp.gmail.com with ESMTPSA id b189sm8143592qkg.110.2020.06.08.14.06.42
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 08 Jun 2020 14:06:42 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org
Date: Mon,  8 Jun 2020 17:05:02 -0400
Message-Id: <20200608210505.48519-13-sean@poorly.run>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200608210505.48519-1-sean@poorly.run>
References: <20200608210505.48519-1-sean@poorly.run>
Subject: [Intel-gfx] [PATCH v5 12/13] drm/i915: Use debug category printer
 for welcome message
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

The welcome printer is meant to be gated on DRM_UT_DRIVER, so use the
debug category printer to avoid dumping the message in the wrong
place.

Signed-off-by: Sean Paul <seanpaul@chromium.org>

Changes in v5:
-Added to the set
---
 drivers/gpu/drm/i915/i915_drv.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 34ee12f3f02d..966212805ef7 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -876,7 +876,8 @@ static void i915_driver_unregister(struct drm_i915_private *dev_priv)
 static void i915_welcome_messages(struct drm_i915_private *dev_priv)
 {
 	if (drm_debug_enabled(DRM_UT_DRIVER)) {
-		struct drm_printer p = drm_debug_printer("i915 device info:");
+		struct drm_printer p = drm_debug_category_printer(DRM_UT_DRIVER,
+						"i915 device info:");
 
 		drm_printf(&p, "pciid=0x%04x rev=0x%02x platform=%s (subplatform=0x%x) gen=%i\n",
 			   INTEL_DEVID(dev_priv),
-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
