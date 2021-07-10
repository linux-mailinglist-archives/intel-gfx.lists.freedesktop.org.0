Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7626D3C36EC
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Jul 2021 23:26:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4448C6EB66;
	Sat, 10 Jul 2021 21:26:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com
 [IPv6:2607:f8b0:4864:20::32f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA5326EB65
 for <intel-gfx@lists.freedesktop.org>; Sat, 10 Jul 2021 21:26:39 +0000 (UTC)
Received: by mail-ot1-x32f.google.com with SMTP id
 59-20020a9d0ac10000b0290462f0ab0800so13675990otq.11
 for <intel-gfx@lists.freedesktop.org>; Sat, 10 Jul 2021 14:26:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NaZZyfwePxiEZkEb5ZSYisIkekSPvEcFee5QuNg1gBQ=;
 b=eBYS37VRLSFrOEsvajH4C2QctUznJRROu6upoTh3/P1JN0ziVx8E7DrvICkmbuU5yV
 eummayUJV2S2O4Cm2GeSNDrFRoq7kjtJ08okssRyxLHY60x4FJny+LRyx3pM0fxHXg+z
 FN0742KaQxrgjBmanh8jI9zP4VI8ilV8MoiNb0qKl9/1sZ2hcsVO7ODyoSrVIZxvgemC
 t92Ax/wkV17NILBj5Pk8jb/1HmlaXxuHim4tUs0GGochTZSRQERwIx5k3QjUcS30xHu7
 plQe66lxAsmCQEjdcviXhmi5TIjzAFtUYUn9sXKTn/sLpTSjK8Xxyf+AEiE4nNQ2fKoM
 iqoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NaZZyfwePxiEZkEb5ZSYisIkekSPvEcFee5QuNg1gBQ=;
 b=Bh1ErnrEnddbIhmyky4a0Ppf4/UFoDhBIWi5spQuEzd/aw4AdXPRDYVYW9nDlBJD8f
 kPP2LG0rTRQBafXZT3pOMQr4BAEtRhuY1Oh09jw/bRS/imeceWMdajhTfhNS1C5Dzmo5
 TjjQQVIBpMVPyhZRmHtey7oCakb2nlOCYwE5ibtwOYwCV4exMSdB6+lXRysQFIxiYiUH
 6NF7PgrHXFTGoEuk0SM+68nPXHc4Yzej0pfBN7L9mqWg9HELGllWYxoJrTnDMPJR8Biw
 98LV6VjBCkkrd8R7a0+aTttH+tyz8vFupdUmst27+T6sYujbiXyEqHYwYNbkSnTog5Gg
 JOyQ==
X-Gm-Message-State: AOAM531T2UY4CwE61+xG5+Ea+xIz+qHYY8/zEUvErzOAGRef7Vet/anm
 H435eAi7Cf4vyktgLL9YE3DXv6DCx0ORAA==
X-Google-Smtp-Source: ABdhPJxG8bSY8jyyuCxz542abC/u5CeDMpxONyHV/26q4pLBfSPEt77O7fl/GHGAMcRWK0b/+rdvyw==
X-Received: by 2002:a05:6830:34a2:: with SMTP id
 c34mr34198395otu.59.1625952398789; 
 Sat, 10 Jul 2021 14:26:38 -0700 (PDT)
Received: from omlet.lan ([68.203.99.148])
 by smtp.gmail.com with ESMTPSA id u18sm972797ooq.36.2021.07.10.14.26.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 10 Jul 2021 14:26:38 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Sat, 10 Jul 2021 16:24:47 -0500
Message-Id: <20210710212447.785288-3-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210710212447.785288-1-jason@jlekstrand.net>
References: <20210710212447.785288-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/uapi: Add docs about immutability
 of engine sets and VMs
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
---
 include/uapi/drm/i915_drm.h | 39 ++++++++++++++++++++++++++-----------
 1 file changed, 28 insertions(+), 11 deletions(-)

diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index e334a8b14ef2d..b6bfbda1258c8 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -1676,15 +1676,25 @@ struct drm_i915_gem_context_param {
  */
 #define I915_CONTEXT_PARAM_RECOVERABLE	0x8
 
-	/*
-	 * The id of the associated virtual memory address space (ppGTT) of
-	 * this context. Can be retrieved and passed to another context
-	 * (on the same fd) for both to use the same ppGTT and so share
-	 * address layouts, and avoid reloading the page tables on context
-	 * switches between themselves.
-	 *
-	 * See DRM_I915_GEM_VM_CREATE and DRM_I915_GEM_VM_DESTROY.
-	 */
+/*
+ * The id of the associated virtual memory address space (ppGTT) of
+ * this context. Can be retrieved and passed to another context
+ * (on the same fd) for both to use the same ppGTT and so share
+ * address layouts, and avoid reloading the page tables on context
+ * switches between themselves.
+ *
+ * The VM id should only be set via I915_CONTEXT_CREATE_EXT_SETPARAM.
+ *
+ * On GPUs with graphics version 12 and earlier, it may also be set via
+ * DRM_IOCTL_I915_GEM_CONTEXT_SETPARAM.  However, this is only for
+ * backwards compatibility with old userspace and should be considered
+ * deprecated.  Starting with graphics version 13, it can only be set via
+ * I915_CONTEXT_CREATE_EXT_SETPARAM.  When using setparam, it may only be
+ * set once for each context and, once the context has been used with any
+ * ioctl other than I915_CONTEXT_CREATE_EXT_SETPARAM, it may not be set.
+ *
+ * See DRM_I915_GEM_VM_CREATE and DRM_I915_GEM_VM_DESTROY.
+ */
 #define I915_CONTEXT_PARAM_VM		0x9
 
 /*
@@ -1700,8 +1710,15 @@ struct drm_i915_gem_context_param {
  * to specify a gap in the array that can be filled in later, e.g. by a
  * virtual engine used for load balancing.
  *
- * Setting the number of engines bound to the context to 0, by passing a zero
- * sized argument, will revert back to default settings.
+ * The engine set should only be set via I915_CONTEXT_CREATE_EXT_SETPARAM.
+ *
+ * On GPUs with graphics version 12 and earlier, it may also be set via
+ * DRM_IOCTL_I915_GEM_CONTEXT_SETPARAM.  However, this is only for
+ * backwards compatibility with old userspace and should be considered
+ * deprecated.  Starting with graphics version 13, it can only be set via
+ * I915_CONTEXT_CREATE_EXT_SETPARAM.  When using setparam, it may only be
+ * set once for each context and, once the context has been used with any
+ * ioctl other than I915_CONTEXT_CREATE_EXT_SETPARAM, it may not be set.
  *
  * See struct i915_context_param_engines.
  *
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
