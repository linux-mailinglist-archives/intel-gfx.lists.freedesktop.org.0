Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D803A7BDC4A
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 14:37:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54DEA10E0FB;
	Mon,  9 Oct 2023 12:37:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBB5D10E0FB
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Oct 2023 12:37:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696855054; x=1728391054;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=TA80oyNoxYeoHZozYL2llbTbvqtX/zkmxC00RzBbKZo=;
 b=irtnv6Z4Apb9ZPRkSzEpyjjNLuj+DmyQiVg8sCGVhdW2SY8TDy0fp4q4
 Y29Frobnh0zgUxx7v9EXoRraeT4u4zRPhpcavouDpaAyILRJCVFjcTdRr
 K8r6mEUZ945oaW3OBLApyWNCFbMv/MFsAtj4ILtR6OqNon7wVrF/BsIiG
 5QZq42z/ggayibdFhRjbcJsYSKO1BPP/nTPf7hQgtd1ju7TOucsAkwtg6
 cYkZkWAFhAruAKDqpoVreZ3YOz5I7EzyqokHJdpQA39pT1TZJqWvKbDCF
 IUozdODXdoXaJ9O7GI/yeBIn6S7Jh5R26ucl6y0HZ0+Amyd+2Fp/Lp669 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="450631057"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="450631057"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 05:37:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="753003232"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="753003232"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by orsmga002.jf.intel.com with SMTP; 09 Oct 2023 05:37:31 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 09 Oct 2023 15:37:30 +0300
Date: Mon, 9 Oct 2023 15:37:30 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>
Message-ID: <ZSP0ColRMx3GhEnA@intel.com>
References: <20231009095946.655337-1-suraj.kandpal@intel.com>
 <874jj06q0r.fsf@intel.com>
 <SN7PR11MB675012785B6ED0FB365DF013E3CEA@SN7PR11MB6750.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <SN7PR11MB675012785B6ED0FB365DF013E3CEA@SN7PR11MB6750.namprd11.prod.outlook.com>
X-Patchwork-Hint: comment
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Oct 09, 2023 at 10:58:22AM +0000, Kandpal, Suraj wrote:
> 
> 
> > -----Original Message-----
> > From: Jani Nikula <jani.nikula@linux.intel.com>
> > Sent: Monday, October 9, 2023 4:07 PM
> > To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-gfx@lists.freedesktop.org
> > Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Free crtc_state in
> > verify_crtc_state
> > 
> > On Mon, 09 Oct 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > > Free hw_crtc_state in verify_crtc_state after we are done using this
> > > or else it's just a resource leak.
> > 
> > Fixes: ?
> 
> Cant really trace when this was introduced as this function was split from
> Intel_display.c to intel_modeset_verify.c and then this is the last commit that introduces it
> df17ff62b626 drm/i915/display: split out modeset verification code
> 
> Should I use this commit in the fixes tag?
>

Mea culpa
Fixes: 2745bdda2095 ("drm/i915: Stop clobbering old crtc state during state check")
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

BTW looks like intel_encoder_current_mode() can also leak some stuff
on account of using kfree() instead of intel_crtc_destroy_state().
Can you cook up a patch to fix that one as well?

And while vlv_force_pll_on() isn't actually leaking, it'd probably
a good idea to switch over to intel_crtc_destroy_state() there as well...

> Regards,
> Suraj Kandpal
> > 
> > >
> > > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_modeset_verify.c | 5 ++++-
> > >  1 file changed, 4 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> > > b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> > > index 303eb68fec11..5e1c2c780412 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> > > @@ -214,7 +214,7 @@ verify_crtc_state(struct intel_atomic_state *state,
> > >  	}
> > >
> > >  	if (!sw_crtc_state->hw.active)
> > > -		return;
> > > +		goto destroy_state;
> > >
> > >  	intel_pipe_config_sanity_check(hw_crtc_state);
> > >
> > > @@ -224,6 +224,9 @@ verify_crtc_state(struct intel_atomic_state *state,
> > >  		intel_crtc_state_dump(hw_crtc_state, NULL, "hw state");
> > >  		intel_crtc_state_dump(sw_crtc_state, NULL, "sw state");
> > >  	}
> > > +
> > > +destroy_state:
> > > +	intel_crtc_destroy_state(&crtc->base, &hw_crtc_state->uapi);
> > >  }
> > >
> > >  void intel_modeset_verify_crtc(struct intel_atomic_state *state,
> > 
> > --
> > Jani Nikula, Intel

-- 
Ville Syrjälä
Intel
