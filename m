Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E7C6EAAF4
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Apr 2023 14:52:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D7C410E03E;
	Fri, 21 Apr 2023 12:52:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23B6510E03E
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Apr 2023 12:52:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682081568; x=1713617568;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=soTq20W9Ry/CqZBjvnUe+k9f2DEKFX1N1NIV9q58fGI=;
 b=gvzfCUS0EK6IBvcrkY9pgakqSJpZarlv8uHdos7+c8lSEWvRI4hQ6YME
 OKV0nk2SzUGhux2YRsuYD4bOR99TeMr2oqKpByjK2Uomgx5VrMdhJZgcn
 KZBX1bfGojDYlAUik3pZknv8Yl79NQdgAJea8uH8LzwyvCvKlJj+ENbf1
 fBdu0VtXANqoxc94GlIgWRJ1UNER7DvXZp7+0ZmKIdotVTNEzUCG0zqRR
 7ytWbVpaGXMmy/fiW9ghy4XVaeZY6IRxFoTDb4G//dEZfmq/bHsHVch6i
 PI8AYUAq/LtadH28ApBEWuEmXiwAlAoaT+oxg30xvhs6gh6TADWihQ587 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="347884689"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="347884689"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 05:52:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="722733931"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="722733931"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga008.jf.intel.com with SMTP; 21 Apr 2023 05:52:43 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 21 Apr 2023 15:52:43 +0300
Date: Fri, 21 Apr 2023 15:52:43 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <ZEKHG4tK7RsJn2N4@intel.com>
References: <20230421083520.14486-1-stanislav.lisovskiy@intel.com>
 <ZEJWsA2E03EWrSf3@intel.com> <ZEJ1Z2gnKPswMks7@intel.com>
 <ZEJ/XgsHWBrwWeEa@intel.com> <ZEKE/WzxGHX6tE/2@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZEKE/WzxGHX6tE/2@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Copy c10 phy pll sw state
 from master to slave for bigjoiner
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

On Fri, Apr 21, 2023 at 03:43:41PM +0300, Lisovskiy, Stanislav wrote:
> On Fri, Apr 21, 2023 at 03:19:42PM +0300, Ville Syrjälä wrote:
> > On Fri, Apr 21, 2023 at 02:37:11PM +0300, Lisovskiy, Stanislav wrote:
> > > On Fri, Apr 21, 2023 at 12:26:08PM +0300, Ville Syrjälä wrote:
> > > > On Fri, Apr 21, 2023 at 11:35:20AM +0300, Stanislav Lisovskiy wrote:
> > > > > We try to verify pll registers in sw state for slave crtc with the hw state.
> > > > > However in case of bigjoiner we don't calculate those at all, so this verification
> > > > > will then always fail.
> > > > > So we should either skip the verification for Bigjoiner slave crtc or copy sw state
> > > > > from master crtc.
> > > > > 
> > > > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > > > ---
> > > > >  drivers/gpu/drm/i915/display/intel_display.c | 1 +
> > > > >  1 file changed, 1 insertion(+)
> > > > > 
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > index bf391a6cd8d6..83c98791fea3 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > @@ -4556,6 +4556,7 @@ copy_bigjoiner_crtc_state_modeset(struct intel_atomic_state *state,
> > > > >  	drm_mode_copy(&slave_crtc_state->hw.adjusted_mode,
> > > > >  		      &master_crtc_state->hw.adjusted_mode);
> > > > >  	slave_crtc_state->hw.scaling_filter = master_crtc_state->hw.scaling_filter;
> > > > > +	slave_crtc_state->cx0pll_state = master_crtc_state->cx0pll_state;
> > > > 
> > > > Wrong place. Also we're already copying dpll_hw_state which is in the
> > > > same union, and on first blush looks bigger than this thing. So why is
> > > > that not working?
> > > 
> > > No we aren't copying it, we are "saving" it earlier, however it doesn't help at all:
> > > 
> > > /* preserve some things from the slave's original crtc state */
> > > saved_state->uapi = slave_crtc_state->uapi;
> > > saved_state->scaler_state = slave_crtc_state->scaler_state;
> > > saved_state->shared_dpll = slave_crtc_state->shared_dpll;
> > > saved_state->dpll_hw_state = slave_crtc_state->dpll_hw_state;
> > 
> > Hmm. How is anything at all working if we keep this around
> > from the old state?
> > 
> > Looks like I probably broke this in
> > commit 0ff0e219d9b8 ("drm/i915: Compute clocks earlier")
> > and somehow no one has noticed.
> > 
> > The correct fix would seem to be to just nuke that
> > dpll_hw_state preservation above.
> 
> Need to ask for this machine, where this is reproducible and
> check if that helps..

We really need to get joiner tested by regular ci. With adl+
that shouldn't even require any special hw due to the uncompressed 
joiner. For older hw we need a DSC capable display for bigjoiner
(or faking the DSC support and ignoring the fact that you won't
actually see anything on the screen).

-- 
Ville Syrjälä
Intel
