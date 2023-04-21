Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BA8E6EAA32
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Apr 2023 14:19:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C07810E0BE;
	Fri, 21 Apr 2023 12:19:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8915610E0BE
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Apr 2023 12:19:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682079586; x=1713615586;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=rsWVSFa5K0vOo7P8a1oOZO5d52v0zmyKgjnS6G+vAtg=;
 b=fKhdI1Jy59CaIxYAzes6sSSFnOGp0luyVr/NFUfXayQvY3HLvtcw9Ztt
 kCUI+DUgZCoeua0Pu64Io8jZE6LgG4NjfAdYWv67+3DungQHkGlx3DkQ3
 AZPAn6oJrv9Ej5UlYwVUHYWmgeJI+xdYmDbKTPlI52N0FTjEz3DBwQJLI
 fMWPzWMXCijDCLKCrg0Z1fLyuEc8S3L2+U5W/vUvjwtANb9WTwTC+2VQq
 NxyiRqnPsyEKRip4+BU2ISuVaRm2JGeG0i0jPtn2VgK2d8c3sJhN3XHH6
 9ihq4i7Cvz55cPwyxnC0mBlb+qBQKNRcWbDvzjvoFJhay43Jf8uxLvJ4I A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="373903159"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="373903159"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 05:19:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="722727733"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="722727733"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga008.jf.intel.com with SMTP; 21 Apr 2023 05:19:43 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 21 Apr 2023 15:19:42 +0300
Date: Fri, 21 Apr 2023 15:19:42 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <ZEJ/XgsHWBrwWeEa@intel.com>
References: <20230421083520.14486-1-stanislav.lisovskiy@intel.com>
 <ZEJWsA2E03EWrSf3@intel.com> <ZEJ1Z2gnKPswMks7@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZEJ1Z2gnKPswMks7@intel.com>
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

On Fri, Apr 21, 2023 at 02:37:11PM +0300, Lisovskiy, Stanislav wrote:
> On Fri, Apr 21, 2023 at 12:26:08PM +0300, Ville Syrjälä wrote:
> > On Fri, Apr 21, 2023 at 11:35:20AM +0300, Stanislav Lisovskiy wrote:
> > > We try to verify pll registers in sw state for slave crtc with the hw state.
> > > However in case of bigjoiner we don't calculate those at all, so this verification
> > > will then always fail.
> > > So we should either skip the verification for Bigjoiner slave crtc or copy sw state
> > > from master crtc.
> > > 
> > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c | 1 +
> > >  1 file changed, 1 insertion(+)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > > index bf391a6cd8d6..83c98791fea3 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -4556,6 +4556,7 @@ copy_bigjoiner_crtc_state_modeset(struct intel_atomic_state *state,
> > >  	drm_mode_copy(&slave_crtc_state->hw.adjusted_mode,
> > >  		      &master_crtc_state->hw.adjusted_mode);
> > >  	slave_crtc_state->hw.scaling_filter = master_crtc_state->hw.scaling_filter;
> > > +	slave_crtc_state->cx0pll_state = master_crtc_state->cx0pll_state;
> > 
> > Wrong place. Also we're already copying dpll_hw_state which is in the
> > same union, and on first blush looks bigger than this thing. So why is
> > that not working?
> 
> No we aren't copying it, we are "saving" it earlier, however it doesn't help at all:
> 
> /* preserve some things from the slave's original crtc state */
> saved_state->uapi = slave_crtc_state->uapi;
> saved_state->scaler_state = slave_crtc_state->scaler_state;
> saved_state->shared_dpll = slave_crtc_state->shared_dpll;
> saved_state->dpll_hw_state = slave_crtc_state->dpll_hw_state;

Hmm. How is anything at all working if we keep this around
from the old state?

Looks like I probably broke this in
commit 0ff0e219d9b8 ("drm/i915: Compute clocks earlier")
and somehow no one has noticed.

The correct fix would seem to be to just nuke that
dpll_hw_state preservation above.


> saved_state->crc_enabled = slave_crtc_state->crc_enabled;
> 
> intel_crtc_free_hw_state(slave_crtc_state);
> memcpy(slave_crtc_state, saved_state, sizeof(*slave_crtc_state));
> kfree(saved_state);
> 
> /* Re-init hw state */
> memset(&slave_crtc_state->hw, 0, sizeof(slave_crtc_state->hw));
> slave_crtc_state->hw.enable = master_crtc_state->hw.enable;
> slave_crtc_state->hw.active = master_crtc_state->hw.active;
> 
> because I guess it just didn't have that stuff initially.
> 
> It starts to work without those verify WARN's only if I copy it from master_crtc_state.
> 
> Stan
> 
> > 
> > >  
> > >  	copy_bigjoiner_crtc_state_nomodeset(state, slave_crtc);
> > >  
> > > -- 
> > > 2.37.3
> > 
> > -- 
> > Ville Syrjälä
> > Intel

-- 
Ville Syrjälä
Intel
