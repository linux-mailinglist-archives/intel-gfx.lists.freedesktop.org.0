Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B6393BA49D
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jul 2021 22:17:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FBAA6E0A6;
	Fri,  2 Jul 2021 20:17:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 560546E0A6
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Jul 2021 20:17:15 +0000 (UTC)
Received: by mail-wr1-x42e.google.com with SMTP id v5so13845896wrt.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 02 Jul 2021 13:17:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=udH4xDTeiibCkHenpQ0wzyua+2ZDGPtl5PTdv5C5+1I=;
 b=dhbYBwZa8mkG8HK+QZ/2o3reEgCfTfQ637hQoWhrv7BB21q6bTrXdfXfD98gxBhNda
 RbMF8sMA7IWszNAW5C2XnI6O+XsW5dlCcWn5kTX81wTAgVE0MSo0iAutYAhkLkAQGbSX
 fn5KocgTzwJd1UKLA75oxxXz3LKQXq7CLAMIw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=udH4xDTeiibCkHenpQ0wzyua+2ZDGPtl5PTdv5C5+1I=;
 b=OtkXrUL9hhoosmckdrHvdWpiIpEXkjpDGRfclE5sv8Ky/IVL8FQ2fdWfLzxAcn+UWP
 x6O60GCQ1I482eSLQxENFqRxdaKW0hVmVHm3pxCVrNpGSQA/1C/2Yy4bO5OOdZzj+SU2
 E1kJgrE6mj/SQl0EIQ4N71SQPtOf9uWhitzz2i6ltjkXRA8S9UR3D7ICTG+LGjeAKhLF
 9ZNdhOjaViE5IUEWaHqC6pG3zCJR840S8Wn2yyG+d3IybUXUiloqhivSNWp6H0hahM+Y
 pHLqpOD2fh/en2+rGBRwXqJ8sZDkchAvAtBre0uqbmNaelpizAwmMIRmMvb7m1stuK6J
 CJ8Q==
X-Gm-Message-State: AOAM5331aU1IuDYBQW0Y4y9GtwjQSxwStYAFsyiVB03T4axqfqXOptyP
 bsct/LZKvtry13LQ5AgCeY/ZArHod7kpAA==
X-Google-Smtp-Source: ABdhPJxE9hNvoDlTHoVygYiOaXneoEtnCSPZ4+QsqNKWvLsaiW5ekax2X5yrzolw6F0nuZ8GErEa5Q==
X-Received: by 2002:a05:6000:18ca:: with SMTP id
 w10mr1501106wrq.55.1625257034137; 
 Fri, 02 Jul 2021 13:17:14 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id e15sm4120682wrm.60.2021.07.02.13.17.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 02 Jul 2021 13:17:13 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri,  2 Jul 2021 22:17:08 +0200
Message-Id: <20210702201708.2075793-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0.rc2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Improve debug Kconfig texts a bit
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We're not consistently recommending these for developers only.

I stumbled over this due to DRM_I915_LOW_LEVEL_TRACEPOINTS, which was
added in

commit 354d036fcf70654cff2e2cbdda54a835d219b9d2
Author: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Date:   Tue Feb 21 11:01:42 2017 +0000

    drm/i915/tracepoints: Add request submit and execute tracepoints

to "alleviate the performance impact concerns."

Which is nonsense.

Tvrtko and Joonas pointed out on irc that the real (but undocumented
reason) was stable abi concerns for tracepoints, see

https://lwn.net/Articles/705270/

and the specific change that was blocked around tracepoints:

https://lwn.net/Articles/442113/

Anyway to make it a notch clearer why we have this Kconfig option
consistly add the "Recommended for driver developers only." to it and
all the other debug options we have.

Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 drivers/gpu/drm/i915/Kconfig.debug | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/Kconfig.debug b/drivers/gpu/drm/i915/Kconfig.debug
index 2ca88072d30f..f27c0b5873f7 100644
--- a/drivers/gpu/drm/i915/Kconfig.debug
+++ b/drivers/gpu/drm/i915/Kconfig.debug
@@ -215,6 +215,8 @@ config DRM_I915_LOW_LEVEL_TRACEPOINTS
 	  This provides the ability to precisely monitor engine utilisation
 	  and also analyze the request dependency resolving timeline.
 
+	  Recommended for driver developers only.
+
 	  If in doubt, say "N".
 
 config DRM_I915_DEBUG_VBLANK_EVADE
@@ -228,6 +230,8 @@ config DRM_I915_DEBUG_VBLANK_EVADE
 	  is exceeded, even if there isn't an actual risk of missing
 	  the vblank.
 
+	  Recommended for driver developers only.
+
 	  If in doubt, say "N".
 
 config DRM_I915_DEBUG_RUNTIME_PM
@@ -240,4 +244,6 @@ config DRM_I915_DEBUG_RUNTIME_PM
 	  runtime PM functionality. This may introduce overhead during
 	  driver loading, suspend and resume operations.
 
+	  Recommended for driver developers only.
+
 	  If in doubt, say "N"
-- 
2.32.0.rc2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
