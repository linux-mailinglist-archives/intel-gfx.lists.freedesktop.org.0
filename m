Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1B6C5B994F
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Sep 2022 13:06:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAAA810EAE4;
	Thu, 15 Sep 2022 11:06:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8BF4C10EAE5;
 Thu, 15 Sep 2022 11:06:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 82D4EA8830;
 Thu, 15 Sep 2022 11:06:11 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Thu, 15 Sep 2022 11:06:11 -0000
Message-ID: <166323997150.11973.4338539104845597317@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220915103311.5634-1-anshuman.gupta@intel.com>
In-Reply-To: <20220915103311.5634-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBE?=
 =?utf-8?q?GFX_pin=5Fmap_with_rpm?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: DGFX pin_map with rpm
URL   : https://patchwork.freedesktop.org/series/108596/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND objtool
  CHK     include/generated/compile.h
  CC [M]  drivers/gpu/drm/i915/i915_driver.o
In file included from ./drivers/gpu/drm/i915/i915_vma.h:34,
                 from drivers/gpu/drm/i915/display/intel_display_types.h:49,
                 from drivers/gpu/drm/i915/i915_driver.c:52:
./drivers/gpu/drm/i915/gem/i915_gem_object.h: In function ‘i915_gem_object_unpin_map’:
./drivers/gpu/drm/i915/gem/i915_gem_object.h:504:2: error: implicit declaration of function ‘mutext_lock’; did you mean ‘mutex_lock’? [-Werror=implicit-function-declaration]
  mutext_lock(obj->wakeref_lock);
  ^~~~~~~~~~~
  mutex_lock
./drivers/gpu/drm/i915/gem/i915_gem_object.h:506:25: error: implicit declaration of function ‘to_i915’ [-Werror=implicit-function-declaration]
   intel_runtime_pm_put(&to_i915(obj->base.dev)->runtime_pm, obj->wakeref);
                         ^~~~~~~
./drivers/gpu/drm/i915/gem/i915_gem_object.h:506:47: error: invalid type argument of ‘->’ (have ‘int’)
   intel_runtime_pm_put(&to_i915(obj->base.dev)->runtime_pm, obj->wakeref);
                                               ^~
./drivers/gpu/drm/i915/gem/i915_gem_object.h:507:2: error: implicit declaration of function ‘mutext_unlock’; did you mean ‘mutex_unlock’? [-Werror=implicit-function-declaration]
  mutext_unlock(obj->wakeref_lock);
  ^~~~~~~~~~~~~
  mutex_unlock
In file included from ./drivers/gpu/drm/i915/gt/intel_context.h:14,
                 from drivers/gpu/drm/i915/gem/i915_gem_context.h:12,
                 from drivers/gpu/drm/i915/i915_driver.c:66:
./drivers/gpu/drm/i915/i915_drv.h: At top level:
./drivers/gpu/drm/i915/i915_drv.h:417:40: error: conflicting types for ‘to_i915’
 static inline struct drm_i915_private *to_i915(const struct drm_device *dev)
                                        ^~~~~~~
In file included from ./drivers/gpu/drm/i915/i915_vma.h:34,
                 from drivers/gpu/drm/i915/display/intel_display_types.h:49,
                 from drivers/gpu/drm/i915/i915_driver.c:52:
./drivers/gpu/drm/i915/gem/i915_gem_object.h:506:25: note: previous implicit declaration of ‘to_i915’ was here
   intel_runtime_pm_put(&to_i915(obj->base.dev)->runtime_pm, obj->wakeref);
                         ^~~~~~~
cc1: all warnings being treated as errors
scripts/Makefile.build:249: recipe for target 'drivers/gpu/drm/i915/i915_driver.o' failed
make[4]: *** [drivers/gpu/drm/i915/i915_driver.o] Error 1
scripts/Makefile.build:465: recipe for target 'drivers/gpu/drm/i915' failed
make[3]: *** [drivers/gpu/drm/i915] Error 2
scripts/Makefile.build:465: recipe for target 'drivers/gpu/drm' failed
make[2]: *** [drivers/gpu/drm] Error 2
scripts/Makefile.build:465: recipe for target 'drivers/gpu' failed
make[1]: *** [drivers/gpu] Error 2
Makefile:1852: recipe for target 'drivers' failed
make: *** [drivers] Error 2


