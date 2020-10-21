Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DA182950CA
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Oct 2020 18:33:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CB376EDE9;
	Wed, 21 Oct 2020 16:32:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D54A6EDDA
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Oct 2020 16:32:52 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id i1so3896523wro.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Oct 2020 09:32:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WpciX4s5+nlfIa0YzJ767hWGBGfbGF0VES+27qIdEFs=;
 b=aVI71n9mfFbtGud447m49jzDnSQzAsufn/Y3KLvKMgw6LrfxD1hy4W47TLTUBc526g
 7UrvMthB97RymJYgAVXR1sMsuhMqFy1SJM3Pj/ATMxxLfN2Wd/L0SpIzcS0/wyaQ8dAX
 Q8geoXmZxf+eJaPjuSK63328msKk72goZBSgg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WpciX4s5+nlfIa0YzJ767hWGBGfbGF0VES+27qIdEFs=;
 b=kiQ3SAmEixOaMHs5l/ebTdseROwzhLP3N3Z/+3mnJsIQJdQr4IetZaz19iBLKKd00g
 mpZFRYbZrA3QBO1fQeFhfzZ769LbYa2QzAAHMpi6lnYZcNRgftSTMAjVMwuK4yCywRz7
 w9IBApkbWh4Ut4eDOMe6OSom2scR+vymwr+AjzicsRhlGvmgX/TJwQCvhtkNoWjBzQTU
 /rIL2WyFTYKzOaNnYxeaHfSdLqUo5xYKeTZkZl/w6WiGsnhIEjkHJ0FOphftbhYxea/q
 Cr/nByb01rGpVsQ453C0rfS5RvEeZv7q106xPJiaWhOJuNTDZhNvCfU4udeQ+Zvq4B17
 J6XA==
X-Gm-Message-State: AOAM53158Q0gsEsLDcAzjMItizrN9S5kTmAhtay/TT2g4zvpW4UUp5K3
 3oCOLkcvhEDuCsk85+IPf7z6CQ==
X-Google-Smtp-Source: ABdhPJz0drR5QGnvXTrbsKs/gzrgNUywAFQo3pHS14qJJsTmrdBiEqKAcYhIGN0ni8U1pJlWEEJwlA==
X-Received: by 2002:adf:de91:: with SMTP id w17mr5643934wrl.84.1603297971025; 
 Wed, 21 Oct 2020 09:32:51 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id v17sm5547431wrc.23.2020.10.21.09.32.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Oct 2020 09:32:50 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Wed, 21 Oct 2020 18:32:42 +0200
Message-Id: <20201021163242.1458885-3-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201021163242.1458885-1-daniel.vetter@ffwll.ch>
References: <20201021163242.1458885-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/doc: Document legacy_cursor_update
 better
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
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It's the horror and shouldn't be used. Realized we're not clear on
this in a discussion with Rob about what msm is doing to better
support async commits.

v2: Refine existing todo item to include this (Thomas)

Cc: Sean Paul <sean@poorly.run>
Cc: Rob Clark <robdclark@gmail.com>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
---
 Documentation/gpu/todo.rst |  4 ++++
 include/drm/drm_atomic.h   | 12 +++++++++++-
 2 files changed, 15 insertions(+), 1 deletion(-)

diff --git a/Documentation/gpu/todo.rst b/Documentation/gpu/todo.rst
index 700637e25ecd..6b224ef14455 100644
--- a/Documentation/gpu/todo.rst
+++ b/Documentation/gpu/todo.rst
@@ -105,6 +105,10 @@ converted over to the new infrastructure.
 One issue with the helpers is that they require that drivers handle completion
 events for atomic commits correctly. But fixing these bugs is good anyway.
 
+Somewhat related is the legacy_cursor_update hack, which should be replaced with
+the new atomic_async_check/commit functionality in the helpers in drivers that
+still look at that flag.
+
 Contact: Daniel Vetter, respective driver maintainers
 
 Level: Advanced
diff --git a/include/drm/drm_atomic.h b/include/drm/drm_atomic.h
index d07c851d255b..413fd0ca56a8 100644
--- a/include/drm/drm_atomic.h
+++ b/include/drm/drm_atomic.h
@@ -308,7 +308,6 @@ struct __drm_private_objs_state {
  * struct drm_atomic_state - the global state object for atomic updates
  * @ref: count of all references to this state (will not be freed until zero)
  * @dev: parent DRM device
- * @legacy_cursor_update: hint to enforce legacy cursor IOCTL semantics
  * @async_update: hint for asynchronous plane update
  * @planes: pointer to array of structures with per-plane data
  * @crtcs: pointer to array of CRTC pointers
@@ -336,6 +335,17 @@ struct drm_atomic_state {
 	 * drm_atomic_crtc_needs_modeset().
 	 */
 	bool allow_modeset : 1;
+	/**
+	 * @legacy_cursor_update:
+	 *
+	 * Hint to enforce legacy cursor IOCTL semantics.
+	 *
+	 * WARNING: This is thoroughly broken and pretty much impossible to
+	 * implement correctly. Drivers must ignore this and should instead
+	 * implement &drm_plane_helper_funcs.atomic_async_check and
+	 * &drm_plane_helper_funcs.atomic_async_commit hooks. New users of this
+	 * flag are not allowed.
+	 */
 	bool legacy_cursor_update : 1;
 	bool async_update : 1;
 	/**
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
