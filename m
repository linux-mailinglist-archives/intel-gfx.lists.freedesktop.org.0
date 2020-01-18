Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 259931419E7
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Jan 2020 22:41:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04D596E158;
	Sat, 18 Jan 2020 21:41:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4CAD06E157;
 Sat, 18 Jan 2020 21:41:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 443A4A011C;
 Sat, 18 Jan 2020 21:41:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 18 Jan 2020 21:41:34 -0000
Message-ID: <157938369425.11508.4888291583580637321@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200118212903.3606443-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200118212903.3606443-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BRFC=2C1/2=5D_drm/i915/gem=3A_Conver?=
 =?utf-8?q?t_vm_idr_to_xarray?=
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

Series: series starting with [RFC,1/2] drm/i915/gem: Convert vm idr to xarray
URL   : https://patchwork.freedesktop.org/series/72240/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
1108d38489da drm/i915/gem: Convert vm idr to xarray
f9aa20565ce1 drm/i915/gem: Introduce VM_WAIT, a futex-lite operation
-:41: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#41: 
References: b2c97bc78919 ("anv/query: Busy-wait for available query entries")

-:75: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#75: 
new file mode 100644

-:114: ERROR:TRAILING_STATEMENTS: trailing statements should be on next line
#114: FILE: drivers/gpu/drm/i915/gem/i915_gem_vm.c:35:
+	case 1: memcpy(&target, wake->ptr, 1); break;

-:115: ERROR:TRAILING_STATEMENTS: trailing statements should be on next line
#115: FILE: drivers/gpu/drm/i915/gem/i915_gem_vm.c:36:
+	case 2: memcpy(&target, wake->ptr, 2); break;

-:116: ERROR:TRAILING_STATEMENTS: trailing statements should be on next line
#116: FILE: drivers/gpu/drm/i915/gem/i915_gem_vm.c:37:
+	case 4: memcpy(&target, wake->ptr, 4); break;

-:117: ERROR:TRAILING_STATEMENTS: trailing statements should be on next line
#117: FILE: drivers/gpu/drm/i915/gem/i915_gem_vm.c:38:
+	case 8: memcpy(&target, wake->ptr, 8); break;

-:584: WARNING:LONG_LINE: line over 100 characters
#584: FILE: include/uapi/drm/i915_drm.h:426:
+#define DRM_IOCTL_I915_GEM_VM_WAIT	DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_VM_WAIT, struct drm_i915_gem_vm_wait)

total: 4 errors, 3 warnings, 0 checks, 534 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
