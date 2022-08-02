Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E94BE588081
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Aug 2022 18:52:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D4261132D5;
	Tue,  2 Aug 2022 16:52:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5F9E91D9C
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Aug 2022 16:52:07 +0000 (UTC)
Received: from localhost.localdomain (unknown
 [IPv6:2a02:8010:65b5:0:bbb0:f8ec:7bc9:dbe4])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: alarumbe)
 by madras.collabora.co.uk (Postfix) with ESMTPSA id 52F766601BCD;
 Tue,  2 Aug 2022 17:52:05 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1659459125;
 bh=vabPT+LFauZv121pgzg4Gt6+tNl7px8WA5f9dTgjupg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=VyX7sCC0cYfVJV0MyJSs+gekUwq5dt2BihQX/SS+AcIJZiAwOACPLWM87bYIQHTWm
 ODVcCLaE4lX5uJUToIOUSALxvGICWqMyIYoaondF2AbEKl2U96HoRHnd5/z3+mrIiL
 TVhdgNxRfHFupDmAiyTJCt4y/nen+3Vt/TKBLwKFr5hXXlhuMys/4EN2enjppXTu9n
 Sppkpjfxs9IiCZ2UaA/esKT8ritcz/fo4kq1w3uaL71CYtQcTOEsvFjWIB+mCTlPkA
 1zb0E/XXPO7jljOQH3vfcD//AMamX8l/mL1PrX7oo+75fVeXAgsFTDaV1UnEnXVSj9
 v1c2zBSLamGog==
From: Adrian Larumbe <adrian.larumbe@collabora.com>
To: daniel@ffwll.ch, thomas.hellstrom@linux.intel.com,
 intel-gfx@lists.freedesktop.org
Date: Tue,  2 Aug 2022 17:51:54 +0100
Message-Id: <20220802165155.165576-7-adrian.larumbe@collabora.com>
X-Mailer: git-send-email 2.37.0
In-Reply-To: <20220802165155.165576-1-adrian.larumbe@collabora.com>
References: <20220802165155.165576-1-adrian.larumbe@collabora.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/7] drm/i915: Add module param for enabling TTM
 in sysmem region
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
Cc: adrian.larumbe@collabora.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Introduces a new module parameter, 'use_pool_alloc', which defaults to
'false'. Its goal is to make the driver fall back on TTM for setting up
the system memory region, so that object allocation will be done through
the TTM subsystem rather than shmem objects.

This commit only brings in the new kernel module param, which will be
used by successive commits.

Signed-off-by: Adrian Larumbe <adrian.larumbe@collabora.com>
---
 drivers/gpu/drm/i915/i915_params.c | 6 ++++++
 drivers/gpu/drm/i915/i915_params.h | 3 ++-
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index 6fc475a5db61..1af11f030ab1 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -207,6 +207,12 @@ i915_param_named_unsafe(lmem_size, uint, 0400,
 i915_param_named_unsafe(lmem_bar_size, uint, 0400,
 			"Set the lmem bar size(in MiB).");
 
+i915_param_named_unsafe(use_pool_alloc, bool, 0600,
+	"Force the driver to use TTM's pool allocator API for smem objects. "
+	"This will cause TTM to take over BO allocation even in integrated platforms. "
+	"(default: false)");
+
+
 static __always_inline void _print_param(struct drm_printer *p,
 					 const char *name,
 					 const char *type,
diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
index 2733cb6cfe09..992ee2a4947d 100644
--- a/drivers/gpu/drm/i915/i915_params.h
+++ b/drivers/gpu/drm/i915/i915_params.h
@@ -84,7 +84,8 @@ struct drm_printer;
 	param(bool, verbose_state_checks, true, 0) \
 	param(bool, nuclear_pageflip, false, 0400) \
 	param(bool, enable_dp_mst, true, 0600) \
-	param(bool, enable_gvt, false, IS_ENABLED(CONFIG_DRM_I915_GVT) ? 0400 : 0)
+	param(bool, enable_gvt, false, IS_ENABLED(CONFIG_DRM_I915_GVT) ? 0400 : 0) \
+	param(bool, use_pool_alloc, false, 0600)
 
 #define MEMBER(T, member, ...) T member;
 struct i915_params {
-- 
2.37.0

