Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 208904A5B03
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Feb 2022 12:18:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70CAF10E6B8;
	Tue,  1 Feb 2022 11:18:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8689410E6B8
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Feb 2022 11:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643714296; x=1675250296;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=sTcTnsGNx9rV1TKc1j4mR2C2XL4UkFecmNphaTWnFu0=;
 b=PJRAEGNhIl/7I1gCBh4YJDFQK9+giouVq3ieZnp3JKB+nGhXRbl/Ch0+
 nq6pB6kDL1KRP+Cw0B2kcC2m2SutrazepSi+aXIF9fwpDRMfIk/snaZE3
 GAIAQCAGC0HOU4EHbN26HmvKiRbGlvYUqehqr4MwEA58cMaxBSDU9ccxy
 kUrTroxz5ijeImMF0cYn75mhEcI2k7spvbatXdNIow+iY1WrHemmAGxO9
 EkEIn0LHur6m3YQcJnC+BQy8gEeGrLeXSA3/OplYhWGE0WlMpCI20IeVn
 qtkuItUCPK71NAPfme2iZwGNCtB/JLNwJWKxX2szwi3Je1MaJKyYXU6h5 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10244"; a="310977864"
X-IronPort-AV: E=Sophos;i="5.88,333,1635231600"; d="scan'208";a="310977864"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2022 03:18:16 -0800
X-IronPort-AV: E=Sophos;i="5.88,333,1635231600"; d="scan'208";a="537766650"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2022 03:18:15 -0800
Date: Tue, 1 Feb 2022 13:18:18 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20220201111818.GA10506@intel.com>
References: <20220118092354.11631-1-ville.syrjala@linux.intel.com>
 <20220118092354.11631-12-ville.syrjala@linux.intel.com>
 <20220201085239.GA9569@intel.com> <YfkF2VSxF5osAPMe@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YfkF2VSxF5osAPMe@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 11/15] drm/i915: Nuke
 intel_bw_calc_min_cdclk()
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 01, 2022 at 12:05:13PM +0200, Ville Syrjälä wrote:
> On Tue, Feb 01, 2022 at 10:52:39AM +0200, Lisovskiy, Stanislav wrote:
> > On Tue, Jan 18, 2022 at 11:23:50AM +0200, Ville Syrjala wrote:
> > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > 
> > > intel_bw_calc_min_cdclk() is entirely pointless. All it manages to do is
> > > somehow conflate the per-pipe min cdclk with dbuf min cdclk. There is no
> > > (at least documented) dbuf min cdclk limit on pre-skl so let's just get
> > > rid of all this confusion.
> > > 
> > > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > I think we constantly have a bit contradictional attitude towards such situation.
> > >From one perspective you can say, that those kind of "leagcy" callbacks are
> > pointless, from the other hand one might say. that we need to have a unified
> > approach for all platforms and I think we got, some legacy handlers for old
> > platforms for similar purpose as well.
> > I'm fine with both approaches, however for example when I was submitting
> > that patch, I was asked by reviewer to add this kind of legacy callback, so that we have
> > a "uniform" approach.
> > We just then need to have some standard agreement on those, which doesn't
> > depend on today's cosmic radiation levels :)
> 
> Yes in general I prefer a unified approach across all platforms.
> But in this case there is nothing to do for the old platforms as they
> don't have any kind of dbuf cdclk limit, or if there is one we don't
> know what it is since it's not documented.
> 
> So the only thing the code was really doing was conflating the
> per-pipe cdclk limit (which is handled elsewhere for all platforms
> in a  unified fashion) with something that doesn't even exist.
> 
> Also I don't think it was even correct anyway since it was
> using the per-pipe cdclk_state->min_cdclk[] already during
> intel_cdclk_atomic_check(), but cdclk_state->min_cdclk[]
> isn't even computed until intel_modeset_calc_cdclk() which 
> is called later. So I guess it was basically just computing 
> the max of the min_cdclk[] for all the pipes for the _old_
> state, not the new state.

No, I think actually the idea was that it was first calculating
new_bw_state->min_cdclk, based on plane and dbuf bandwidth requirements
in intel_atomic_check_cdclk, however then the final decision which
cdclk to choose was is done in intel_cdclk.c, which calculated new_cdclk_state->min_cdclk
and then we just choose maximum of those.
And intel_compute_min_cdclk is the final arbiter:

static int intel_compute_min_cdclk(struct intel_cdclk_state *cdclk_state)
{
        struct intel_atomic_state *state = cdclk_state->base.state;
        struct drm_i915_private *dev_priv = to_i915(state->base.dev);
        struct intel_bw_state *bw_state = NULL;
        struct intel_crtc *crtc;
        struct intel_crtc_state *crtc_state;
        int min_cdclk, i;
        enum pipe pipe;

        for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
                int ret;

                min_cdclk = intel_crtc_compute_min_cdclk(crtc_state);
                if (min_cdclk < 0)
                        return min_cdclk;

                bw_state = intel_atomic_get_bw_state(state);
                if (IS_ERR(bw_state))
                        return PTR_ERR(bw_state);

                if (cdclk_state->min_cdclk[crtc->pipe] == min_cdclk)
                        continue;

                cdclk_state->min_cdclk[crtc->pipe] = min_cdclk;

                ret = intel_atomic_lock_global_state(&cdclk_state->base);
                if (ret)
                        return ret;
        }

        min_cdclk = cdclk_state->force_min_cdclk;
        for_each_pipe(dev_priv, pipe) {
                min_cdclk = max(cdclk_state->min_cdclk[pipe], min_cdclk);

                if (!bw_state)
                        continue;

                min_cdclk = max(bw_state->min_cdclk, min_cdclk);
        }

        return min_cdclk;
}

Stan

> 
> -- 
> Ville Syrjälä
> Intel
