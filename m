Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EAF817528EF
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jul 2023 18:41:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A87BF10E70E;
	Thu, 13 Jul 2023 16:41:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC95D10E70E
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jul 2023 16:41:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689266463; x=1720802463;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=POgauAXvghSn21lqzcvdxMr+49g+t4abc27ecfGwVwY=;
 b=PjNJsOpYPe8dIsm/zzSJ0DerqLQ99WcvVSQiFn+1IFIF/l4fr/fHd0aJ
 QoC2cJ0t4Ofdr6PJf+oNR7C5T0Q93QMOVhirLjjzwip8oliQnSw5MeqEy
 PKdzUt+EnGqD/ClUJcKAvK6KFeD8XO94oZ8kmduBrlQzaV+mFj2jEMmP2
 E7UI0gzXDo9uE5XHZkjl61Th3XZUgnH0ISe3jB8nNvDLKQY64TMTPxFA0
 r55/IWRTQFYa58DwnZPbSxWK+AWufoA7Ncr+Wwl7UudnXx40hxap+sXux
 YEg54JTwWycU+BkoO3MyA9d20yK6ndUidjJl8DmAAKOxUq4ihqfglkJ74 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="368802248"
X-IronPort-AV: E=Sophos;i="6.01,203,1684825200"; d="scan'208";a="368802248"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 09:41:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="1052705120"
X-IronPort-AV: E=Sophos;i="6.01,203,1684825200"; d="scan'208";a="1052705120"
Received: from atadj-mobl1.amr.corp.intel.com (HELO localhost) ([10.252.50.30])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 09:41:00 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <168907693005.135984.10580237550326861666@gjsousa-mobl2>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230711110214.25093-1-jani.nikula@intel.com>
 <168907693005.135984.10580237550326861666@gjsousa-mobl2>
Date: Thu, 13 Jul 2023 19:40:57 +0300
Message-ID: <87o7kfepd2.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] Revert "drm/i915: use localized
 __diag_ignore_all() instead of per file"
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>, John Garry <john.g.garry@oracle.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 11 Jul 2023, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Quoting Jani Nikula (2023-07-11 08:02:14-03:00)
>>This reverts commit 88e9664434c994e97a9f6f8cdd1535495c660cea.
>>
>>__diag_ignore_all() only works for GCC 8 or later.
>>
>>-Woverride-init (from -Wextra, enabled in i915 Makefile) combined with
>>CONFIG_WERROR=y or W=e breaks the build for older GCC.
>>
>>With i386_defconfig and x86_64_defconfig enabling CONFIG_WERROR=y by
>>default, we really need to roll back the change.
>>
>>An alternative would be to disable -Woverride-init in the Makefile for
>>GCC <8, but the revert seems like the safest bet now.
>
> Sounds good. We would keep it compatible with older compilers and still have the
> warning enabled on newer environments.
>
> Another alternative I thought about was to have separate files only for
> initializations of that type (i.e. that would need the warning disabled), but I
> guess we would need to expose a lot of symbols for that to work...
>
> Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

Thanks, pushed to drm-intel-next.

BR,
Jani.

>
>>
>>Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8768
>>Reported-by: John Garry <john.g.garry@oracle.com>
>>References: https://lore.kernel.org/r/ad2601c0-84bb-c574-3702-a83ff8faf98c@oracle.com
>>References: https://lore.kernel.org/r/87wmzezns4.fsf@intel.com
>>Fixes: 88e9664434c9 ("drm/i915: use localized __diag_ignore_all() instead of per file")
>>Cc: Gustavo Sousa <gustavo.sousa@intel.com>
>>Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
>>Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>>Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>---
>> drivers/gpu/drm/i915/Makefile                       | 5 +++++
>> drivers/gpu/drm/i915/display/intel_display_device.c | 5 -----
>> drivers/gpu/drm/i915/display/intel_fbdev.c          | 5 -----
>> drivers/gpu/drm/i915/i915_pci.c                     | 5 -----
>> 4 files changed, 5 insertions(+), 15 deletions(-)
>>
>>diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
>>index 2be9dd960540..c5fc91cd58e7 100644
>>--- a/drivers/gpu/drm/i915/Makefile
>>+++ b/drivers/gpu/drm/i915/Makefile
>>@@ -23,6 +23,11 @@ subdir-ccflags-y += $(call cc-option, -Wunused-but-set-variable)
>> subdir-ccflags-y += $(call cc-disable-warning, frame-address)
>> subdir-ccflags-$(CONFIG_DRM_I915_WERROR) += -Werror
>> 
>>+# Fine grained warnings disable
>>+CFLAGS_i915_pci.o = $(call cc-disable-warning, override-init)
>>+CFLAGS_display/intel_display_device.o = $(call cc-disable-warning, override-init)
>>+CFLAGS_display/intel_fbdev.o = $(call cc-disable-warning, override-init)
>>+
>> subdir-ccflags-y += -I$(srctree)/$(src)
>> 
>> # Please keep these build lists sorted!
>>diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
>>index e4afa7334c82..8286e79522d1 100644
>>--- a/drivers/gpu/drm/i915/display/intel_display_device.c
>>+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
>>@@ -16,9 +16,6 @@
>> #include "intel_display_reg_defs.h"
>> #include "intel_fbc.h"
>> 
>>-__diag_push();
>>-__diag_ignore_all("-Woverride-init", "Allow overriding inherited members");
>>-
>> static const struct intel_display_device_info no_display = {};
>> 
>> #define PIPE_A_OFFSET                0x70000
>>@@ -727,8 +724,6 @@ static const struct intel_display_device_info xe_lpdp_display = {
>>                 BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4),
>> };
>> 
>>-__diag_pop();
>>-
>> #undef INTEL_VGA_DEVICE
>> #undef INTEL_QUANTA_VGA_DEVICE
>> #define INTEL_VGA_DEVICE(id, info) { id, info }
>>diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
>>index 1cc0ddc6a310..80c3f88310db 100644
>>--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
>>+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
>>@@ -135,9 +135,6 @@ static int intel_fbdev_mmap(struct fb_info *info, struct vm_area_struct *vma)
>>         return i915_gem_fb_mmap(obj, vma);
>> }
>> 
>>-__diag_push();
>>-__diag_ignore_all("-Woverride-init", "Allow overriding the default ops");
>>-
>> static const struct fb_ops intelfb_ops = {
>>         .owner = THIS_MODULE,
>>         __FB_DEFAULT_DEFERRED_OPS_RDWR(intel_fbdev),
>>@@ -149,8 +146,6 @@ static const struct fb_ops intelfb_ops = {
>>         .fb_mmap = intel_fbdev_mmap,
>> };
>> 
>>-__diag_pop();
>>-
>> static int intelfb_alloc(struct drm_fb_helper *helper,
>>                          struct drm_fb_helper_surface_size *sizes)
>> {
>>diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
>>index dea3609fc496..fcacdc21643c 100644
>>--- a/drivers/gpu/drm/i915/i915_pci.c
>>+++ b/drivers/gpu/drm/i915/i915_pci.c
>>@@ -38,9 +38,6 @@
>> #include "i915_reg.h"
>> #include "intel_pci_config.h"
>> 
>>-__diag_push();
>>-__diag_ignore_all("-Woverride-init", "Allow overriding inherited members");
>>-
>> #define PLATFORM(x) .platform = (x)
>> #define GEN(x) \
>>         .__runtime.graphics.ip.ver = (x), \
>>@@ -846,8 +843,6 @@ static const struct intel_device_info mtl_info = {
>> 
>> #undef PLATFORM
>> 
>>-__diag_pop();
>>-
>> /*
>>  * Make sure any device matches here are from most specific to most
>>  * general.  For example, since the Quanta match is based on the subsystem
>>-- 
>>2.39.2
>>

-- 
Jani Nikula, Intel Open Source Graphics Center
