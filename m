Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DF97244753
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Aug 2020 11:47:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAD686EB21;
	Fri, 14 Aug 2020 09:47:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 168536EB21;
 Fri, 14 Aug 2020 09:47:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 10654A7DFE;
 Fri, 14 Aug 2020 09:47:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Fri, 14 Aug 2020 09:47:32 -0000
Message-ID: <159739845206.3437.14867262447384726083@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200814093842.3048472-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200814093842.3048472-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/modeset-lock=3A_Take_the_modeset_BKL_for_legacy_drivers?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/modeset-lock: Take the modeset BKL for legacy drivers
URL   : https://patchwork.freedesktop.org/series/80620/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
4be15a75c756 drm/modeset-lock: Take the modeset BKL for legacy drivers
-:8: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 9bcaa3fe58ab ("drm: Replace drm_modeset_lock/unlock_all with DRM_MODESET_LOCK_ALL_* helpers")'
#8: 
commit 9bcaa3fe58ab7559e71df798bcff6e0795158695

-:12: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#12: 
    drm: Replace drm_modeset_lock/unlock_all with DRM_MODESET_LOCK_ALL_* helpers

-:176: ERROR:MULTISTATEMENT_MACRO_USE_DO_WHILE: Macros with multiple statements should be enclosed in a do - while loop
#176: FILE: include/drm/drm_modeset_lock.h:194:
+#define DRM_MODESET_LOCK_ALL_END(dev, ctx, ret)				\
 modeset_lock_fail:							\
 	if (ret == -EDEADLK) {						\
 		ret = drm_modeset_backoff(&ctx);			\

-:176: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'ctx' may be better as '(ctx)' to avoid precedence issues
#176: FILE: include/drm/drm_modeset_lock.h:194:
+#define DRM_MODESET_LOCK_ALL_END(dev, ctx, ret)				\
 modeset_lock_fail:							\
 	if (ret == -EDEADLK) {						\
 		ret = drm_modeset_backoff(&ctx);			\

-:176: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'ret' - possible side-effects?
#176: FILE: include/drm/drm_modeset_lock.h:194:
+#define DRM_MODESET_LOCK_ALL_END(dev, ctx, ret)				\
 modeset_lock_fail:							\
 	if (ret == -EDEADLK) {						\
 		ret = drm_modeset_backoff(&ctx);			\

-:176: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'ret' may be better as '(ret)' to avoid precedence issues
#176: FILE: include/drm/drm_modeset_lock.h:194:
+#define DRM_MODESET_LOCK_ALL_END(dev, ctx, ret)				\
 modeset_lock_fail:							\
 	if (ret == -EDEADLK) {						\
 		ret = drm_modeset_backoff(&ctx);			\

-:189: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 2 errors, 2 warnings, 3 checks, 111 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
