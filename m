Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50C9097AD92
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2024 11:08:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5145610E43E;
	Tue, 17 Sep 2024 09:07:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="amIAWfd8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DA2510E442
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Sep 2024 09:07:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726564077; x=1758100077;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=6Voets9bhSGc5Z1GcF01sgu8ZKdO16ddzT5UV4q/rg0=;
 b=amIAWfd8gj2FB5kk5pD2mQpfOnZDM9mL2acAI3endmDT0ewWTXnLKh7N
 Q9U7ie1Q3FFk/QeL1faCujMAezCaEwcrL+i7su0ETsDfX4rcN7Uuj6+tU
 Jwg5jEoNiuwuWUI8hPenzwqv3xeidN8gQkZ23QGDgCm80oM8g028YsiU6
 5uW9JFhZoz9VxRjQRMWVrET/tMDl9b2dZAhRY2YjKTwsrUthXEl7RUn6U
 SWdO0cGFfKGig67lEcHKBmiozsWFewJlJlYuYePoiji6vODI1O4KK6YsZ
 4FhXDYN3JEdzWD2eoqowqRVl4UmJxegg2pURYEBY8mWAyYhvBS+XzM2y7 A==;
X-CSE-ConnectionGUID: ZhcKlGqJTQ+YG1PwYzypZw==
X-CSE-MsgGUID: Aw13UK6NRXSFmxg4sKQePg==
X-IronPort-AV: E=McAfee;i="6700,10204,11197"; a="25564003"
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="25564003"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 02:07:56 -0700
X-CSE-ConnectionGUID: N+ZMctSzQVu9BKoS75zYRg==
X-CSE-MsgGUID: Mx7sWhf1S8GjpZiDdDmcig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="74124437"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.102])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 02:07:55 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 2/2] drm/i915/display: move enum i9xx_plane_id to
 intel_display_limits.h
In-Reply-To: <ZuhbTOTf2RL6RVdy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1726235647.git.jani.nikula@intel.com>
 <1e8f9768f2d638dfa1fc72f80f0d7391c4a48bbb.1726235647.git.jani.nikula@intel.com>
 <ZuSmylwGgvOPi1W7@intel.com> <8734m3dyua.fsf@intel.com>
 <ZuhbTOTf2RL6RVdy@intel.com>
Date: Tue, 17 Sep 2024 12:07:51 +0300
Message-ID: <87a5g6d4wo.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Mon, 16 Sep 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Sat, Sep 14, 2024 at 12:32:13AM +0300, Jani Nikula wrote:
>> On Fri, 13 Sep 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
>> > On Fri, Sep 13, 2024 at 04:54:39PM +0300, Jani Nikula wrote:
>> >> Move enum i9xx_plane_id from intel_display.h to intel_display_limits.h
>> >> to be able to reduce dependencies on intel_display.h.
>> >> 
>> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> >> ---
>> >>  drivers/gpu/drm/i915/display/intel_display.h        | 10 ----------
>> >>  drivers/gpu/drm/i915/display/intel_display_limits.h | 10 ++++++++++
>> >>  drivers/gpu/drm/i915/gvt/cmd_parser.c               |  1 -
>> >>  3 files changed, 10 insertions(+), 11 deletions(-)
>> >> 
>> >> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
>> >> index d10608526eee..4bdb48084cab 100644
>> >> --- a/drivers/gpu/drm/i915/display/intel_display.h
>> >> +++ b/drivers/gpu/drm/i915/display/intel_display.h
>> >> @@ -95,16 +95,6 @@ static inline bool transcoder_is_dsi(enum transcoder transcoder)
>> >>  	return transcoder == TRANSCODER_DSI_A || transcoder == TRANSCODER_DSI_C;
>> >>  }
>> >>  
>> >> -/*
>> >> - * Global legacy plane identifier. Valid only for primary/sprite
>> >> - * planes on pre-g4x, and only for primary planes on g4x-bdw.
>> >> - */
>> >> -enum i9xx_plane_id {
>> >> -	PLANE_A,
>> >> -	PLANE_B,
>> >> -	PLANE_C,
>> >> -};
>> >> -
>> >>  #define plane_name(p) ((p) + 'A')
>> >>  
>> >>  #define for_each_plane_id_on_crtc(__crtc, __p) \
>> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_limits.h b/drivers/gpu/drm/i915/display/intel_display_limits.h
>> >> index c4775c99dc83..f0fa27e365ab 100644
>> >> --- a/drivers/gpu/drm/i915/display/intel_display_limits.h
>> >> +++ b/drivers/gpu/drm/i915/display/intel_display_limits.h
>> >
>> > why here and not in somewhere like:
>> > drivers/gpu/drm/i915/display/i9xx_plane.h
>> > ?
>> 
>> Here it's next to enum plane_id. This entire file exists to provide a
>> minimal header for the enums.
>> 
>> I'm not sure what the right thing is, but putting this to i9xx_plane.h
>> means including that file in more places, just for this thing, while
>> they have no use at all for the interfaces provided by i9xx_plane.h.
>
> hmm perhaps we could create a small one for plane_types like Xe style?

I'm actually not fond of the xe (or i915 gem) style for headers. In many
places you have APIs in foo.h, which goes on to include foo_types.h,
even though forward declarations would suffice. foo_types.h goes on to
include bar_types.h, and so on, and so on. And everything needs
everything.

Like, why does a change in xe/guc_klvs_abi.h cause the rebuild of
everything, including display?

Sometimes you do have static inlines in the API headers, which actually
look at the guts of the implementation and do need the _types.h. I
basically think static inlines should be be restricted to things that a)
don't depend on additional headers, and b) actually have a performance
justification for not being a regular function.

I'm not saying i915 display is a shining example either, but I don't
want to start moving it to a direction that I don't think actually
reduces header dependencies. Whatever the direction, it needs to reduce
header dependencies.

</rant>

> But right, right now it looks like this place is better indeed.
>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks, pushed to drm-intel-next.

BR,
Jani.

>
>> 
>> BR,
>> Jani.
>> 
>> 
>> 
>> >
>> >> @@ -49,6 +49,16 @@ enum transcoder {
>> >>  	I915_MAX_TRANSCODERS
>> >>  };
>> >>  
>> >> +/*
>> >> + * Global legacy plane identifier. Valid only for primary/sprite
>> >> + * planes on pre-g4x, and only for primary planes on g4x-bdw.
>> >> + */
>> >> +enum i9xx_plane_id {
>> >> +	PLANE_A,
>> >> +	PLANE_B,
>> >> +	PLANE_C,
>> >> +};
>> >> +
>> >>  /*
>> >>   * Per-pipe plane identifier.
>> >>   * I915_MAX_PLANES in the enum below is the maximum (across all platforms)
>> >> diff --git a/drivers/gpu/drm/i915/gvt/cmd_parser.c b/drivers/gpu/drm/i915/gvt/cmd_parser.c
>> >> index 2f4c9c66b40b..81d67a46cd9e 100644
>> >> --- a/drivers/gpu/drm/i915/gvt/cmd_parser.c
>> >> +++ b/drivers/gpu/drm/i915/gvt/cmd_parser.c
>> >> @@ -50,7 +50,6 @@
>> >>  #include "trace.h"
>> >>  
>> >>  #include "display/i9xx_plane_regs.h"
>> >> -#include "display/intel_display.h"
>> >>  #include "display/intel_sprite_regs.h"
>> >>  #include "gem/i915_gem_context.h"
>> >>  #include "gem/i915_gem_pm.h"
>> >> -- 
>> >> 2.39.2
>> >> 
>> 
>> -- 
>> Jani Nikula, Intel

-- 
Jani Nikula, Intel
