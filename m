Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 55D2D7B588F
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Oct 2023 18:58:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6F5B10E1FA;
	Mon,  2 Oct 2023 16:58:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC32B10E0BC;
 Mon,  2 Oct 2023 16:58:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696265921; x=1727801921;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=jedM3OphQ3oeSak4uk/dNxIcnoIzEO+XvPA/fQvjOis=;
 b=V62jxas4HGeu5wO7Ntxp1KrBy6rjh7Xo4Ft+wIa++W3PKpCXScBoP7Gr
 XGi32nRHFJ8xXI1xIgrX6UmrELvzWrT88b1Lm4TdM+Sv4pqF6RYXTXv0x
 dQg6wanFzlP4A6UiF4Dhpd0Uux/kphPcOs2Hyt5oWCYd6MWF004WHxe33
 DvszyrLyCOpDoEKHk2uMzqFHanXB4j855VJvuBZAH0Ieg9hTcnS/cGwf+
 +A/IbvVuo4gvx5AV2XcnyvP5t9ZyZgqpm5FQ8tObFLH4zmVBqD9fo0olZ
 ajl37ZRDyHOz86BIGqyQXVQgaU9COj0KgyBVIzfKvJYq9lSeQs7VrFm66 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="382598895"
X-IronPort-AV: E=Sophos;i="6.03,194,1694761200"; d="scan'208";a="382598895"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2023 09:58:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="894178821"
X-IronPort-AV: E=Sophos;i="6.03,194,1694761200"; d="scan'208";a="894178821"
Received: from svandens-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.151])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2023 09:57:17 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
In-Reply-To: <ZRrsHSzer2hNO9Ua@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230929205023.1202735-1-rodrigo.vivi@intel.com>
 <871qedii91.fsf@intel.com> <ZRrsHSzer2hNO9Ua@intel.com>
Date: Mon, 02 Oct 2023 19:58:30 +0300
Message-ID: <87il7pgdvt.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Abstract display info away during
 probe
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 02 Oct 2023, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Mon, Oct 02, 2023 at 10:41:14AM +0300, Jani Nikula wrote:
>> On Fri, 29 Sep 2023, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
>> > The goal is to have this function ready for Xe to use
>> > directly. So, let's use the available macro.
>> 
>> Seesm wrong to use DISPLAY_INFO() as an lvalue
>
> to be really honestly I don't like that either.
> I barely like macros, specially used like this.
>
>> and I'm not sure why
>> this wouldn't work as-is.
>
> I should probably had collected some logs and added to the
> commit message. But the thing was that without this assignment,
> (xe)->info.display was NULL and the memcpy below was exploding
> with NULL dereference.

Aww crap. That's because both DISPLAY_INFO() and DISPLAY_RUNTIME_INFO()
in xe are completely bogus.

They should be

#define DISPLAY_INFO(i915)	((i915)->display.info.__device_info)
#define DISPLAY_RUNTIME_INFO(i915)	(&(i915)->display.info.__runtime_info)

instead of

#define DISPLAY_INFO(xe)		((xe)->info.display)
#define DISPLAY_RUNTIME_INFO(xe)	(&(xe)->info.display_runtime)

and these should be removed from struct xe_device info member:

		const struct intel_display_device_info *display;
		struct intel_display_runtime_info display_runtime;

BR,
Jani.


>
>> 
>> But *shrug*.
>> 
>> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
>
> thanks, pushed as is.
>
>> 
>> for merging to i915. (xe should come as a backport with cherry-pick -x.)
>
> and sent the proper backported cherry-pick to intel-xe ml.
>
>> 
>> BR,
>> Jani
>> 
>> 
>> >
>> > Cc: Jani Nikula <jani.nikula@intel.com>
>> > Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_display_device.c | 2 +-
>> >  1 file changed, 1 insertion(+), 1 deletion(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
>> > index a6a18eae7ae8..ce55b968e658 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_display_device.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
>> > @@ -926,7 +926,7 @@ void intel_display_device_probe(struct drm_i915_private *i915)
>> >  	else
>> >  		info = probe_display(i915);
>> >  
>> > -	i915->display.info.__device_info = info;
>> > +	DISPLAY_INFO(i915) = info;
>> >  
>> >  	memcpy(DISPLAY_RUNTIME_INFO(i915),
>> >  	       &DISPLAY_INFO(i915)->__runtime_defaults,
>> 
>> -- 
>> Jani Nikula, Intel

-- 
Jani Nikula, Intel
