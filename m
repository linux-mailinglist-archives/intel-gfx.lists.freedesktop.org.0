Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A61C854861
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Feb 2024 12:31:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB23010E429;
	Wed, 14 Feb 2024 11:30:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UIWc1Dv6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5BF410E429
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Feb 2024 11:30:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707910259; x=1739446259;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=A9fUYSbTvscfbrAR7PPb2aAiudrcYv3TLXRuihUa1w4=;
 b=UIWc1Dv6mqjDnsCfGk8pCJPPBd+qpxwRPFVob9utKMkBx3HRaw4GQeQT
 eKHHx+98HR73VAEFQaPstXOhRw71K1K+LFDKkdM8mnlSniwrMFkW43VJ0
 ad5OcKKvf/z4MB+8m2AG/2GeLGkVZl3M2Iovye9s8Lj3JM7S99TDbsvOh
 3/DVCearr8Y2T1TpgOLPhwpWUX25iXa+gLAWteDOSysl63rOqUjZbbpGV
 8Lmu/0dcm9fJLJ5AzSpnKKH0fU+dAiSg6KjXFDPh0zecSjUIUsbqFxS82
 I5Zfaz8gZIiggu5apfjrA7H1s9dUexAyUJ8Q5ZIsku/zZCZyyYWUaSsBR Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="1818369"
X-IronPort-AV: E=Sophos;i="6.06,159,1705392000"; 
   d="scan'208";a="1818369"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2024 03:30:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,159,1705392000"; 
   d="scan'208";a="3142065"
Received: from kwszolek-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.63.190])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2024 03:30:56 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Cc: "Deak, Imre" <imre.deak@intel.com>, "Syrjala, Ville"
 <ville.syrjala@intel.com>, "Shankar, Uma" <uma.shankar@intel.com>
Subject: RE: [RFC 4/4] drm/i915/display/dp: On LT failure retry LT
In-Reply-To: <IA0PR11MB730783C40D327B26EEEA8EC7BA4E2@IA0PR11MB7307.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240206104759.2079133-1-arun.r.murthy@intel.com>
 <20240206104759.2079133-5-arun.r.murthy@intel.com>
 <87v86s6xjr.fsf@intel.com>
 <IA0PR11MB730783C40D327B26EEEA8EC7BA4E2@IA0PR11MB7307.namprd11.prod.outlook.com>
Date: Wed, 14 Feb 2024 13:30:53 +0200
Message-ID: <87il2r705u.fsf@intel.com>
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

On Wed, 14 Feb 2024, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
>> -----Original Message-----
>> From: Nikula, Jani <jani.nikula@intel.com>
>> Sent: Tuesday, February 13, 2024 11:45 PM
>> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-gfx@lists.freedesktop.org
>> Cc: Deak, Imre <imre.deak@intel.com>; Syrjala, Ville <ville.syrjala@intel.com>;
>> Shankar, Uma <uma.shankar@intel.com>; Murthy, Arun R
>> <arun.r.murthy@intel.com>
>> Subject: Re: [RFC 4/4] drm/i915/display/dp: On LT failure retry LT
>>
>> On Tue, 06 Feb 2024, Arun R Murthy <arun.r.murthy@intel.com> wrote:
>> > On link training failure retry link training with a lesser link
>> > rate/lane count as specified in the DP spec.
>> >
>> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_ddi.c | 10 +++++++++-
>> >  1 file changed, 9 insertions(+), 1 deletion(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
>> > b/drivers/gpu/drm/i915/display/intel_ddi.c
>> > index ed7620e7f763..29d785a4b904 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>> > @@ -2502,6 +2502,7 @@ static void mtl_ddi_pre_enable_dp(struct
>> intel_atomic_state *state,
>> >                              crtc_state->port_clock,
>> >                              crtc_state->lane_count);
>> >
>> > +retry:
>> >     /*
>> >      * We only configure what the register value will be here.  Actual
>> >      * enabling happens during link training farther down.
>> > @@ -2586,7 +2587,14 @@ static void mtl_ddi_pre_enable_dp(struct
>> intel_atomic_state *state,
>> >      *     Pattern, wait for 5 idle patterns (DP_TP_STATUS Min_Idles_Sent)
>> >      *     (timeout after 800 us)
>> >      */
>> > -   intel_dp_start_link_train(intel_dp, crtc_state);
>> > +   if (!intel_dp_start_link_train(intel_dp, crtc_state)) {
>> > +           /* Link Training failed, retain */
>> > +           intel_dp->link_trained = false;
>> > +           intel_dp_stop_link_train(intel_dp, crtc_state);
>> > +           encoder->post_disable(state, encoder,
>> > +                              crtc_state, conn_state);
>> > +           goto retry;
>> > +   }
>>
>> As said, the retry needs to go via userspace.
>
> If within the supported mode range then also do we need to send uevent to user and should it come via userspace?
> The fallback mandates in DP2.1 spec does this fallback in a loop.
>
> The present fallback structure
> Struct dp_fallback {
>         U32 link rate;
>         U8 lane_count;
>         U32 resolution;
> }
>
> In the same fallback code, the present mode will be verified to see if its less than or equal to the resolution in dp_fallback. If so proceed within the fallback loop else set the max link_rate/lane count values and sent uevent.

I think I'll want *all* the link training fallbacks to go via userspace.

Trying to sometimes do it in kernel is a premature optimization for a
rare case, and it just complicates matters. We'll need the path via
uevent and userspace retry anyway, for when the mode doesn't fit, so use
it always. Let's not add multiple ways to do things, everything around
this is already quite complicated.

And as said, the uevent does give userspace some inkling that something
fishy is going on, and could use that info to inform the user that a
degraded experience may be expected. Again, adding a new stream to MST
at a later time might not fit because of the reduced parameters, and
it'll be surprising to the user if it used to work in the past (when
full param link training succeeded).

BR,
Jani.

>
> Thanks and Regards,
> Arun R Murthy
> --------------------
>>
>> BR,
>> Jani.
>>
>>
>> >
>> >     /* 6.n Set DP_TP_CTL link training to Normal */
>> >     if (!is_trans_port_sync_mode(crtc_state))
>>
>> --
>> Jani Nikula, Intel

-- 
Jani Nikula, Intel
