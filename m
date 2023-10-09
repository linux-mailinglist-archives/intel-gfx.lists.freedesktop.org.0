Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 453BE7BDCBD
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 14:49:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6152D10E117;
	Mon,  9 Oct 2023 12:49:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAEE210E112
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Oct 2023 12:49:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696855743; x=1728391743;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=y8SGNHz+ggv0hIGX9YtXI8OWmtY44jXZjQuPP+phO1M=;
 b=ffNCbUsT5Bw435kOTjoT6geNPo6ZfnSM8q0fM4oDwppQA2xf59P5LGj6
 iNQ/flwgKvieftlXM31IRk3ONiWOGXob+DKozWEwsl9XgO71nF8AZZ6oY
 euGsv/C5qM3yNCJa0eV0jxaoM5rWYeyszKDq/i5TygvFi7mfLbju2hpEv
 jg8xQgWEg/IQIxs0gep6Y3x+t1DwVzVbHuTJ8lLIYR9Sm/q4jrHniVlpx
 v0giefk5JTcL7pzfXV5xcD0Y8O/TVm3a9ohmZeYQWJFqADZHCQmKi1/8y
 bi3qbVGjOdEjch9oydmxnGVrK4rL1fVZZgGCUTNLuA9OfdUYgTsiYDdp6 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="450632365"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="450632365"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 05:49:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="753004568"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="753004568"
Received: from oelagadx-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.42.47])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 05:49:01 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <SN7PR11MB675012785B6ED0FB365DF013E3CEA@SN7PR11MB6750.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231009095946.655337-1-suraj.kandpal@intel.com>
 <874jj06q0r.fsf@intel.com>
 <SN7PR11MB675012785B6ED0FB365DF013E3CEA@SN7PR11MB6750.namprd11.prod.outlook.com>
Date: Mon, 09 Oct 2023 15:48:59 +0300
Message-ID: <871qe46jwk.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Free crtc_state in
 verify_crtc_state
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

On Mon, 09 Oct 2023, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
>> -----Original Message-----
>> From: Jani Nikula <jani.nikula@linux.intel.com>
>> Sent: Monday, October 9, 2023 4:07 PM
>> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-gfx@lists.freedesktop.org
>> Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Free crtc_state in
>> verify_crtc_state
>> 
>> On Mon, 09 Oct 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
>> > Free hw_crtc_state in verify_crtc_state after we are done using this
>> > or else it's just a resource leak.
>> 
>> Fixes: ?
>
> Cant really trace when this was introduced as this function was split from
> Intel_display.c to intel_modeset_verify.c and then this is the last commit that introduces it
> df17ff62b626 drm/i915/display: split out modeset verification code
>
> Should I use this commit in the fixes tag?

Look into git annotate.

BR,
Jani.

>
> Regards,
> Suraj Kandpal
>> 
>> >
>> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_modeset_verify.c | 5 ++++-
>> >  1 file changed, 4 insertions(+), 1 deletion(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
>> > b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
>> > index 303eb68fec11..5e1c2c780412 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
>> > @@ -214,7 +214,7 @@ verify_crtc_state(struct intel_atomic_state *state,
>> >  	}
>> >
>> >  	if (!sw_crtc_state->hw.active)
>> > -		return;
>> > +		goto destroy_state;
>> >
>> >  	intel_pipe_config_sanity_check(hw_crtc_state);
>> >
>> > @@ -224,6 +224,9 @@ verify_crtc_state(struct intel_atomic_state *state,
>> >  		intel_crtc_state_dump(hw_crtc_state, NULL, "hw state");
>> >  		intel_crtc_state_dump(sw_crtc_state, NULL, "sw state");
>> >  	}
>> > +
>> > +destroy_state:
>> > +	intel_crtc_destroy_state(&crtc->base, &hw_crtc_state->uapi);
>> >  }
>> >
>> >  void intel_modeset_verify_crtc(struct intel_atomic_state *state,
>> 
>> --
>> Jani Nikula, Intel

-- 
Jani Nikula, Intel
