Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D9B322D9A5F
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Dec 2020 15:57:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFDCF6E2BC;
	Mon, 14 Dec 2020 14:57:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 990466E2B8;
 Mon, 14 Dec 2020 14:57:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8D13BA008A;
 Mon, 14 Dec 2020 14:57:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 14 Dec 2020 14:57:43 -0000
Message-ID: <160795786354.28164.6779861443334349483@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201214123126.9777-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201214123126.9777-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915=3A_Individual_reque?=
 =?utf-8?q?st_cancellation?=
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

Series: series starting with [1/2] drm/i915: Individual request cancellation
URL   : https://patchwork.freedesktop.org/series/84906/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
27629d7496f4 drm/i915: Individual request cancellation
-:318: CHECK:LINE_SPACING: Please don't use multiple blank lines
#318: FILE: drivers/gpu/drm/i915/selftests/i915_request.c:742:
+
+

total: 0 errors, 0 warnings, 1 checks, 323 lines checked
823a8e9dc249 drm/i915/gem: Allow cancelling an individual fence
-:25: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#25: 
new file mode 100644

-:128: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#128: FILE: include/uapi/drm/i915_drm.h:426:
+#define DRM_IOCTL_I915_GEM_CANCEL	DRM_IOW (DRM_COMMAND_BASE + DRM_I915_GEM_CANCEL, struct drm_i915_gem_cancel)

-:128: WARNING:SPACING: space prohibited between function name and open parenthesis '('
#128: FILE: include/uapi/drm/i915_drm.h:426:
+#define DRM_IOCTL_I915_GEM_CANCEL	DRM_IOW (DRM_COMMAND_BASE + DRM_I915_GEM_CANCEL, struct drm_i915_gem_cancel)

-:128: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#128: FILE: include/uapi/drm/i915_drm.h:426:
+#define DRM_IOCTL_I915_GEM_CANCEL	DRM_IOW (DRM_COMMAND_BASE + DRM_I915_GEM_CANCEL, struct drm_i915_gem_cancel)

total: 1 errors, 3 warnings, 0 checks, 105 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
