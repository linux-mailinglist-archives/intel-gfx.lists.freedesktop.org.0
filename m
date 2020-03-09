Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8889017DDCF
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Mar 2020 11:43:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82BC56E149;
	Mon,  9 Mar 2020 10:43:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF9306E148
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Mar 2020 10:43:18 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Mar 2020 03:43:18 -0700
X-IronPort-AV: E=Sophos;i="5.70,532,1574150400"; d="scan'208";a="353344535"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Mar 2020 03:43:16 -0700
Date: Mon, 9 Mar 2020 12:42:29 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20200309104229.GC15493@ideak-desk.fi.intel.com>
References: <20200304150918.25473-1-imre.deak@intel.com>
 <3e9e2e5a7382bfc4e64aaf51d4c845e12e535afe.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3e9e2e5a7382bfc4e64aaf51d4c845e12e535afe.camel@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix documentation for
 intel_dpll_get_freq()
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
Reply-To: imre.deak@intel.com
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 05, 2020 at 01:44:20AM +0200, Souza, Jose wrote:
> On Wed, 2020-03-04 at 17:09 +0200, Imre Deak wrote:
> > Fix the following kerneldoc warning and while at it also the doc for
> > the
> > corresponding vfunc hook.
> > =

> > $ make htmldocs 2>&1 > /dev/null | grep i915
> > ./drivers/gpu/drm/i915/display/intel_dpll_mgr.h:285: warning:
> > Function parameter or member 'get_freq' not described in
> > 'intel_shared_dpll_funcs'
> =

> Reviewed-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>

Thanks for the review, pushed to -dinq.

> =

> > =

> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 7 +++++++
> >  drivers/gpu/drm/i915/display/intel_dpll_mgr.h | 6 ++++++
> >  2 files changed, 13 insertions(+)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > index 76d14486b3a5..2d47f1f756a2 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > @@ -4408,6 +4408,13 @@ void intel_update_active_dpll(struct
> > intel_atomic_state *state,
> >  	dpll_mgr->update_active_dpll(state, crtc, encoder);
> >  }
> >  =

> > +/**
> > + * intel_dpll_get_freq - calculate the DPLL's output frequency
> > + * @i915: i915 device
> > + * @pll: DPLL for which to calculate the output frequency
> > + *
> > + * Return the output frequency corresponding to @pll's current
> > state.
> > + */
> >  int intel_dpll_get_freq(struct drm_i915_private *i915,
> >  			const struct intel_shared_dpll *pll)
> >  {
> > diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > index 5c847627580a..5d9a2bc371e7 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> > @@ -279,6 +279,12 @@ struct intel_shared_dpll_funcs {
> >  			     struct intel_shared_dpll *pll,
> >  			     struct intel_dpll_hw_state *hw_state);
> >  =

> > +	/**
> > +	 * @get_freq:
> > +	 *
> > +	 * Hook for calculating the pll's output frequency based on its
> > +	 * current state.
> > +	 */
> >  	int (*get_freq)(struct drm_i915_private *i915,
> >  			const struct intel_shared_dpll *pll);
> >  };
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
