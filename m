Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9A33A49BFA
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2025 15:27:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B8EC10ECBF;
	Fri, 28 Feb 2025 14:27:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aIJJ7PLF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B47AF10ECBF;
 Fri, 28 Feb 2025 14:27:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740752824; x=1772288824;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=juZIugTsjcVSPh3xOnuuyABlxDj36uegE3kYJkin6fE=;
 b=aIJJ7PLFm0gwJG6Y7F1vG81yWzvVTjKKFlawywDfkWa0sqwkLVRDuf4z
 L76A5Efki4MoKPZGwixe2g/Pd28EdomqLREbIu/vOcw4MCXgxm7q/uPrP
 kl75ZIbt3lHqWSIIjOhZ17FOXpHi8p1RGxnY6uCNYGNv0Uz3q3+xWr1If
 p/HjjdmOj/trfAIL7JgZClvQoVfK0D5vnocK/L/IXHTPuBCoxwI+yE3aa
 Ks6tkS3CTlWFCW2f5MVEuU+vbEIzMgHOMEVucOXd/qpYaEw72ljESpkHV
 qzZU0+OeVex7QeyhTOjB/YsxbEPHCnPhjKR5C7kl3iiwtbNjlzilidhfJ g==;
X-CSE-ConnectionGUID: tQ3cgvAzR8mntzX36wt/rA==
X-CSE-MsgGUID: T+KC3Ja4RBSy5IkPovPhCg==
X-IronPort-AV: E=McAfee;i="6700,10204,11359"; a="45333304"
X-IronPort-AV: E=Sophos;i="6.13,322,1732608000"; d="scan'208";a="45333304"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2025 06:27:04 -0800
X-CSE-ConnectionGUID: 2uYXiE8SQSWy/IXsR5vsUg==
X-CSE-MsgGUID: e4pdk2oTQI2Y8XgBh67y3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="122585807"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 28 Feb 2025 06:26:59 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 28 Feb 2025 16:26:57 +0200
Date: Fri, 28 Feb 2025 16:26:57 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Syrjala, Ville" <ville.syrjala@intel.com>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "Shankar, Uma" <uma.shankar@intel.com>,
 "Kahola, Mika" <mika.kahola@intel.com>
Subject: Re: [PATCH 05/11] drm/i915/dpll: Move away from using shared dpll
Message-ID: <Z8HHsZbQWxr04C9k@intel.com>
References: <20250225080927.157437-1-suraj.kandpal@intel.com>
 <20250225080927.157437-6-suraj.kandpal@intel.com>
 <8734g276o6.fsf@intel.com>
 <SN7PR11MB67507C9052363FC4E8E34450E3C32@SN7PR11MB6750.namprd11.prod.outlook.com>
 <SN7PR11MB6750A509052EF04B959BA7C1E3C32@SN7PR11MB6750.namprd11.prod.outlook.com>
 <87ldtu59fb.fsf@intel.com>
 <SN7PR11MB67505D632A7CCE485E8FB81FE3CD2@SN7PR11MB6750.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <SN7PR11MB67505D632A7CCE485E8FB81FE3CD2@SN7PR11MB6750.namprd11.prod.outlook.com>
X-Patchwork-Hint: comment
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

On Thu, Feb 27, 2025 at 10:18:31AM +0000, Kandpal, Suraj wrote:
> 
> 
> > -----Original Message-----
> > From: Jani Nikula <jani.nikula@linux.intel.com>
> > Sent: Tuesday, February 25, 2025 9:00 PM
> > To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-xe@lists.freedesktop.org;
> > intel-gfx@lists.freedesktop.org; Syrjala, Ville <ville.syrjala@intel.com>
> > Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Shankar, Uma
> > <uma.shankar@intel.com>; Kahola, Mika <mika.kahola@intel.com>
> > Subject: RE: [PATCH 05/11] drm/i915/dpll: Move away from using shared dpll
> > 
> > On Tue, 25 Feb 2025, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
> > >> -----Original Message-----
> > >> From: Kandpal, Suraj
> > >> Sent: Tuesday, February 25, 2025 2:25 PM
> > >> To: Jani Nikula <jani.nikula@linux.intel.com>;
> > >> intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> > >> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Shankar, Uma
> > >> <uma.shankar@intel.com>; Kahola, Mika <mika.kahola@intel.com>
> > >> Subject: RE: [PATCH 05/11] drm/i915/dpll: Move away from using shared
> > >> dpll
> > >>
> > >>
> > >>
> > >> > -----Original Message-----
> > >> > From: Jani Nikula <jani.nikula@linux.intel.com>
> > >> > Sent: Tuesday, February 25, 2025 2:17 PM
> > >> > To: Kandpal, Suraj <suraj.kandpal@intel.com>;
> > >> > intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> > >> > Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Shankar, Uma
> > >> > <uma.shankar@intel.com>; Kahola, Mika <mika.kahola@intel.com>;
> > >> > Kandpal, Suraj <suraj.kandpal@intel.com>
> > >> > Subject: Re: [PATCH 05/11] drm/i915/dpll: Move away from using
> > >> > shared dpll
> > >> >
> > >> > On Tue, 25 Feb 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > >> > > Rename functions to move away from using shared dpll in the dpll
> > >> > > framework as much as possible since dpll may not always be shared.
> > >> > >
> > >> > > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > >> >
> > >> > ...
> > >> >
> > >> > > diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > >> > > b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > >> > > index 6edd103eda55..ef66aca5da1d 100644
> > >> > > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > >> > > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > >> > > @@ -387,24 +387,24 @@ struct intel_global_dpll {  #define
> > >> > > SKL_DPLL2
> > >> > > 2 #define SKL_DPLL3 3
> > >> > >
> > >> > > -/* shared dpll functions */
> > >> > > +/* global dpll functions */
> > >> > >  struct intel_global_dpll *
> > >> > > -intel_get_shared_dpll_by_id(struct intel_display *display,
> > >> > > +intel_get_global_dpll_by_id(struct intel_display *display,
> > >> > >  			    enum intel_dpll_id id);
> > >> > > -void assert_shared_dpll(struct intel_display *display,
> > >> > > +void assert_global_dpll(struct intel_display *display,
> > >> > >  			struct intel_global_dpll *pll,
> > >> > >  			bool state);
> > >> > > -#define assert_shared_dpll_enabled(d, p) assert_shared_dpll(d,
> > >> > > p,
> > >> > > true) -#define assert_shared_dpll_disabled(d, p)
> > >> > > assert_shared_dpll(d, p, false) -int
> > >> > > intel_compute_shared_dplls(struct intel_atomic_state *state,
> > >> > > +#define assert_global_dpll_enabled(d, p) assert_global_dpll(d,
> > >> > > +p,
> > >> > > +true) #define assert_global_dpll_disabled(d, p)
> > >> > > +assert_global_dpll(d, p, false) int
> > >> > > +intel_compute_global_dplls(struct intel_atomic_state *state,
> > >> > >  			       struct intel_crtc *crtc,
> > >> > >  			       struct intel_encoder *encoder); -int
> > >> > > intel_reserve_shared_dplls(struct intel_atomic_state *state,
> > >> > > +int intel_reserve_global_dplls(struct intel_atomic_state *state,
> > >> > >  			       struct intel_crtc *crtc,
> > >> > >  			       struct intel_encoder *encoder); -void
> > >> > > intel_release_shared_dplls(struct intel_atomic_state *state,
> > >> > > +void intel_release_global_dplls(struct intel_atomic_state
> > >> > > +*state,
> > >> > >  				struct intel_crtc *crtc);
> > >> > > -void intel_unreference_shared_dpll_crtc(const struct intel_crtc
> > >> > > *crtc,
> > >> > > +void intel_unreference_global_dpll_crtc(const struct intel_crtc
> > >> > > +*crtc,
> > >> > >  					const struct intel_global_dpll *pll,
> > >> > >  					struct intel_dpll_state
> > >> > *shared_dpll_state);  void
> > >> > > icl_set_active_port_dpll(struct intel_crtc_state *crtc_state, @@
> > >> > > -418,10 +418,10 @@ int intel_dpll_get_freq(struct intel_display
> > >> > > *display,  bool intel_dpll_get_hw_state(struct intel_display *display,
> > >> > >  			     struct intel_global_dpll *pll,
> > >> > >  			     struct intel_dpll_hw_state *dpll_hw_state); -void
> > >> > > intel_enable_shared_dpll(const struct intel_crtc_state
> > >> > > *crtc_state); -void intel_disable_shared_dpll(const struct
> > >> > > intel_crtc_state *crtc_state); -void
> > >> > > intel_shared_dpll_swap_state(struct
> > >> > > intel_atomic_state *state); -void intel_shared_dpll_init(struct
> > >> > > intel_display *display);
> > >> > > +void intel_enable_global_dpll(const struct intel_crtc_state
> > >> > > +*crtc_state); void intel_disable_global_dpll(const struct
> > >> > > +intel_crtc_state *crtc_state); void intel_dpll_swap_state(struct
> > >> > > +intel_atomic_state *state); void intel_global_dpll_init(struct
> > >> > > +intel_display *display);
> > >> > >  void intel_dpll_update_ref_clks(struct intel_display *display);
> > >> > > void intel_dpll_readout_hw_state(struct intel_display *display);
> > >> > > void intel_dpll_sanitize_state(struct intel_display *display); @@
> > >> > > -437,6
> > >> > > +437,6 @@ bool intel_dpll_is_combophy(enum intel_dpll_id id);
> > >> > >
> > >> > >  void intel_dpll_state_verify(struct intel_atomic_state *state,
> > >> > >  			     struct intel_crtc *crtc); -void
> > >> > > intel_shared_dpll_verify_disabled(struct intel_atomic_state
> > >> > > *state);
> > >> > > +void intel_global_dpll_verify_disabled(struct intel_atomic_state
> > >> > > +*state);
> > >> > >
> > >> > >  #endif /* _INTEL_DPLL_MGR_H_ */
> > >> >
> > >> > If you're renaming almost everything anyway, I'd appreciate moving
> > >> > towards naming functions according to the file name, i.e. functions
> > >> > in intel_foo.[ch] would be named intel_foo_*().
> > >> >
> > >> > The dpll mgr is notoriously bad in this regard. I'm also open to
> > >> > renaming the entire file, intel_dpll_mgr.[ch] isn't all that great.
> > >> >
> > >> > I'm not sure if the term "global" (instead of "shared") was very
> > >> > well justified in patch 3. Maybe all of these should be thought out
> > >> > together for the
> > >> naming.
> > >> >
> > >>
> > >> I agree with the renaming I would have very much have to keep the
> > >> naming simple something like Intel_dpll_func but that exits !
> > >> intel_dpll_mgr_funcs but intel_dpll_mgr already has some hooks defined
> > inside It.
> > >> I chose global since that way we will be able to represent both PLL
> > >> using shared PHY and PLL with individual PHY.
> > >> Also renaming intel_dpll_mgr.[ch] we have a intel_dpll.[ch] making it
> > >> a problem What if we renamed the file to intel_global_dpll.[ch]
> > >
> > > Jani what do you think of this ?
> > 
> > I think Ville probably has opinions on this. Cc'd.
> 
> Hi Ville,
> Any thoughts ?

IMO it should just be intel_dpll_*. We want all PLLs to provide
the same uniform interface for enable/disble/readout/state_dump/etc.
Whether the PLL is shared/global or not isn't interesting outside
the actual modeset sequence and PLL selection logic.

-- 
Ville Syrjälä
Intel
