Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4224D77B86C
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Aug 2023 14:13:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5ABE10E1C7;
	Mon, 14 Aug 2023 12:13:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 175D910E1CC;
 Mon, 14 Aug 2023 12:13:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692015218; x=1723551218;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=bQGNhE6cnc3aK7xOST0lIv95NKMR/6jpJap1uYE1hyQ=;
 b=Nen4Gf7C8SGKpgDKsBXjcloTPEUpSz/YZOBB5xM/fNvEqe0+5tXzNuVk
 yh9uvroD3OsCoBbkh466CH/5etlidNeZ8OrzuEwzvnHr0y9vGoRijUVrF
 2Pd5Y6Nvj+BNqEnabeCtVkx21cAcZOSpVgLz2xR+rmolHY4tNc0nZnIMt
 4D0S8GMV7wy7UJOJhX1uBpMJuthWZJ75nsik+BbMtJRRJI26XJ220cIk1
 F/1zf6iucsp7gcnqs57t6Q2/3OVi6BhG9y5vOz7FWeywCSkXi7ct5ABNr
 Ki+Q9GHscQOMhD2fIB3Bm1nFgSXnEeap12puUYgp2oBz5Brh5V8bYPuAX Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10802"; a="374793448"
X-IronPort-AV: E=Sophos;i="6.01,172,1684825200"; d="scan'208";a="374793448"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2023 05:13:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10802"; a="733424112"
X-IronPort-AV: E=Sophos;i="6.01,172,1684825200"; d="scan'208";a="733424112"
Received: from mtabaka-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.52.77])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2023 05:13:34 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Wang Jinchao <wangjinchao@xfusion.com>
In-Reply-To: <ZNoY9bnpLlUwY8ai@fedora>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <ZNdOoHvIg7HXh7Gg@fedora> <87o7jaythm.fsf@intel.com>
 <ZNoY9bnpLlUwY8ai@fedora>
Date: Mon, 14 Aug 2023 15:13:32 +0300
Message-ID: <87h6p1ddoz.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix Kconfig error for
 CONFIG_DRM_I915
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@gmail.com>,
 stone.xulei@xfusion.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 14 Aug 2023, Wang Jinchao <wangjinchao@xfusion.com> wrote:
> On Mon, Aug 14, 2023 at 10:26:45AM +0300, Jani Nikula wrote:
>> On Sat, 12 Aug 2023, Wang Jinchao <wangjinchao@xfusion.com> wrote:
>> > When CONFIG_DRM_I915 is set to 'y' and CONFIG_BACKLIGHT_CLASS_DEVICE
>> > is set to 'm', we encountered an ld.lld error during the build process:
>> >
>> > 	ld.lld: error: undefined symbol: backlight_device_get_by_name
>> > 	>>> referenced by intel_backlight.c:955
>> > 	>>>               vmlinux.o:(intel_backlight_device_register)
>> >
>> > 	ld.lld: error: undefined symbol: backlight_device_register
>> > 	>>> referenced by intel_backlight.c:971
>> > 	>>>               vmlinux.o:(intel_backlight_device_register)
>> >
>> > 	ld.lld: error: undefined symbol: backlight_device_unregister
>> > 	>>> referenced by intel_backlight.c:999
>> > 	>>>               vmlinux.o:(intel_backlight_device_unregister)
>> >
>> > This issue occurred because intel_backlight_device_register and
>> > intel_backlight_device_unregister were enclosed within
>> > However, according to Kconfig, CONFIG_DRM_I915 will select
>> > BACKLIGHT_CLASS_DEVICE only if ACPI is enabled.
>> > This led to an error, which can be resolved by removing the
>> > conditional statements related to ACPI.
>> 
>> The real fix is to use
>> 
>> 	depends on BACKLIGHT_CLASS_DEVICE || BACKLIGHT_CLASS_DEVICE=n
> it works.
>> 
>> but in order to do that, you need to change a lot of places to depend
> Why, what are the other places?

Generally when you have a mixture of depends on and select on a kconfig
symbol, you'll eventually end up with dependency problems.

BR,
Jani.


>> on, not select BACKLIGHT_CLASS_DEVICE, because otherwise you end up with
> got it.
>> other dependency issues.
>> 
>> BR,
>> Jani.
>> 
>> >
>> > Signed-off-by: Wang Jinchao <wangjinchao@xfusion.com>
>> > ---
>> >  drivers/gpu/drm/i915/Kconfig | 2 +-
>> >  1 file changed, 1 insertion(+), 1 deletion(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
>> > index 01b5a8272a27..5003de921bf7 100644
>> > --- a/drivers/gpu/drm/i915/Kconfig
>> > +++ b/drivers/gpu/drm/i915/Kconfig
>> > @@ -24,7 +24,7 @@ config DRM_I915
>> >  	select IRQ_WORK
>> >  	# i915 depends on ACPI_VIDEO when ACPI is enabled
>> >  	# but for select to work, need to select ACPI_VIDEO's dependencies, ick
>> > -	select BACKLIGHT_CLASS_DEVICE if ACPI
>> > +	select BACKLIGHT_CLASS_DEVICE
>> >  	select INPUT if ACPI
>> >  	select X86_PLATFORM_DEVICES if ACPI
>> >  	select ACPI_WMI if ACPI
>> 
>> -- 
>> Jani Nikula, Intel Open Source Graphics Center

-- 
Jani Nikula, Intel Open Source Graphics Center
