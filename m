Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B164561888
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jun 2022 12:50:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDD4A10E012;
	Thu, 30 Jun 2022 10:50:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4911510E012
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jun 2022 10:50:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656586202; x=1688122202;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=RaZPMFTQna7aOy8nRTuVoCi2DAVrM23uRKuvidnc+oM=;
 b=fuyRQjhbbLHJTscwUz8s+XNQZsWnmIWq0iSvvRKkW7AI4jrHOmwT/5oz
 HGbglvfrGH4/0JvmzwMr1K1km2EW3/Y2zCWzO4yM+dOJlh2zAyIRi5F9D
 FacL0Em7T2e710tWJvChOCmr07H/I/XMFlnA/ElhV9fAok2tIOcBw37O3
 g/VcVDI3MS5/bgZw2F0zGW7mY/cQ7rlYNk/yAwH+s73sUgqL5stP0PicV
 sPAuBFdi9Gdm/cPTpRiq5JsW8ZggzvTy0lT2zP1elBvkxFdlevJYwLKR7
 8ahmTXh1rSDEO/G26ZheYw+ABblZ4TLnbuZuxcs6oMTNVOJJ05hxI+kR0 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10393"; a="307820930"
X-IronPort-AV: E=Sophos;i="5.92,234,1650956400"; d="scan'208";a="307820930"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2022 03:50:01 -0700
X-IronPort-AV: E=Sophos;i="5.92,234,1650956400"; d="scan'208";a="647842015"
Received: from fdugast-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.39.70])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2022 03:50:00 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <DM6PR11MB3177B8A6EEB239F74699D6F4BABA9@DM6PR11MB3177.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220630070607.858766-1-arun.r.murthy@intel.com>
 <87k08ypp9z.fsf@intel.com>
 <DM6PR11MB3177171F55430E985075F9DEBABA9@DM6PR11MB3177.namprd11.prod.outlook.com>
 <87edz6pkbh.fsf@intel.com>
 <DM6PR11MB3177B8A6EEB239F74699D6F4BABA9@DM6PR11MB3177.namprd11.prod.outlook.com>
Date: Thu, 30 Jun 2022 13:49:57 +0300
Message-ID: <878rpepgru.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCHv2] drm/i915: free crtc on driver remove
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 30 Jun 2022, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
>> On Thu, 30 Jun 2022, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
>> >> > intel_crtc is being allocated as part of intel_modeset_init_nogem
>> >> > and not freed as part of driver remove. This will lead to memory leak.
>> >> > Hence free up the allocated crtc on driver remove as part of
>> >> > intel_modeset_driver_remove_nogem.
>> >>
>> >> No, there's no leak and this is not needed.
>> >>
>> >> See drm_mode_config_cleanup() calling crtc->funcs->destroy() on each
>> crtc.
>> >
>> > Sorry, I didn't notice this function.
>> >
>> > intel_crtc_alloc() is called as part of
>> > probe->intel_modeset_init_nogem->intel_crtc_init
>> > on similar basis cleanup/free should be done in  driver
>> > remove->intel_modeset_driver_remove_nogem->intel_crtc_free
>>
>> It's just an error prone extra burden for the drivers to take care of this
>> manually, so we have drm_mode_config_cleanup(). Which also cleans up
>> encoders and encoders etc.
>>
>> > Does this look cleaner?
>> >
>> > Kfree(crtc) which is called in crtc->funcs->destroy is intended for
>> > cleanup and hence
>> > drm_crtc_cleanup() is being called from intel_crtc_destroy(). The
>> > comments added in drm_crtc_funcs say that cleanup resources on destroy.
>> >
>> > Again looking at the driver design, intel_crtc_alloc is not done as
>> > part of any drm_crtc_funcs, rather on probe->modeset_init_nogem, so
>> > calling intel_crtc_free from remove->modeset_driver_remove_nogem
>> would make more sence.
>>
>> That would add another ordering dependency between calling
>> drm_mode_config_cleanup() and freeing the individual crtcs separately
>> afterwards. And looking at the cleanup code, I'm sure that's not what we
>> want.
>>
> This is for sure ordering and not dependency. This ordering is being followed
> all over the drivers across the kernel. Just like simple probe and remove.
> So the usual tendency would be to see as whatever initialization/allocation
> being done in probe in the same order deinitialization/deallocation being
> done in remove.
> Usually in probe multiple initializations are done and so on each failures a goto
> will be used to cleanup the respective initialized stuff. Eventually these functions
> mentioned in the cleanup under the goto will be the one called in remove.

Well, ordering is mostly driven by dependency, and as I said it's not
purely reverse ordering for cleanup, because of non-trivial
interdependencies...

>
> On similar basis I just tried to depict the above flow for crtc alloc/free.
>
>> Moreover, drm is moving towards managed initialization, which means not
>> having to call drm_mode_config_cleanup() explicitly at all. It'll get called as
>> part of drmm managed release action tied to the drm device. So really,
>> calling kfree as part of the callback is the natural thing to do. Indeed it would
>> be difficult to do it anywhere else, for no benefit.
>>
>> > Also, looking into the func intel_modeset_init_nogem(), the func
>> > intel_modeset_driver_remove_nogem should be renamed as
>> intel_modeset_deinit_nogem().
>>
>> The cleanup naming comes from them being called as part of struct
>> pci_driver .remove callback chain, and it's a useful reminder.
>>
> Yes agree even in that case, the function name should look like intel_modeset_remove_nogem()

Dunno, we have i915_driver_probe() and i915_driver_remove(), called from
i915_pci_probe() and i915_pci_remove(), respectively. And a bunch of the
calls from i915_driver_remove() are calls to functions named
_driver_remove().

Maybe the init functions should be intel_modeset_driver_probe*()
instead... or everything needs to be just probe/remove.

But mostly I've held off on the renames because really we'll want to
split up intel_display.c to smaller pieces, and one of the pieces is
going to have the high level probe/remove stuff and not much else. And
the functions will be named after whatever the file is going to be
named. In the mean time it would just be a somewhat temporary rename.

You might say "intel_display.c" or "intel_modeset.c" would be the
logical names... but unfortunately intel_display.c has proven that a
generic name like that leads to it being a dumping ground for anything
"display" that doesn't already have a specific place for it. It's an
awful mess. :(

>> Also, the intel_modeset_driver_remove{,noirq,nogem} functions should
>> *not* be considered 1:1 counterparts of intel_modeset_init{noirq,nogem,}
>> as the init/remove are asymmetric around irq and gem.
>>
>> Sure, there's work to be done in cleaning up the probe and remove paths,
>> and further trying to separate the gem and display parts, but that's way more
>> involved than simple renames, really.
>>
> I agree and understand that, but wouldn't small cleanups like this put together
> make the driver cleaner?
>
> I am not trying to debate, I have added a new allocation function in intel_crtc_init() so
> the deallocation of that should be done as part of crtc deinit/remove which doesn't exist.
> I just rolled back to the caller of intel_crtc_init() which is modeset_init_nogem and also
> found modeset_driver_remove_nogem.
> So though of cleaning up this part.

The way I see it, we probably shouldn't have intel_crtc_free() at all,
because it's confusing. It's only used in the intel_crtc_init() failure
path. And that should probably open code the cleanup steps with
appropriate goto labels.

The real counterpart for intel_crtc_init() is intel_crtc_destroy(), and
it's called _destroy because for whatever reason the drm_crtc_funcs
callback was named .destroy.



BR,
Jani.


PS. Most often the counterpart for init functions is fini, not deinit,
although there are a few deinit functions around. A quick and simple git
grep popularity contest says the kernel is roughly 5:1 in favor of
deinit. Also, naming is hard.


-- 
Jani Nikula, Intel Open Source Graphics Center
