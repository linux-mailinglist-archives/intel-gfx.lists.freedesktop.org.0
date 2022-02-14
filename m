Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 190DD4B5AF3
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Feb 2022 21:26:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A830E10E2D2;
	Mon, 14 Feb 2022 20:26:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 490A010E2D2
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Feb 2022 20:26:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644870411; x=1676406411;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=jBoOC2iNaUbvP3uXz9jTVj5G8+S7Id83IdBzdJJAud8=;
 b=necPzxplB3gamh0jgDv3Byj6Bo1C5Wg4of5d9k0qOxCn9kiJjyA3Dknk
 e+xVhFhW7nf8+YgWIItMMnd1ZIjec2Xj4bmulEEv1uhhb/OH8cvmNZMke
 kDZnc6+QuU8egkO/HbVYOyD5zXJpQs8n759G4L6EtmqACDQrqT/nyHube
 3Qx6U7kClfcydMNstgzzvQ9RJIn1tjV5Xuekic/WdUwEeiTcAtt45v4oD
 5bjjTBXUiY1j2rSvUoxbcRQVvpvdokTdJn2MiGs0QsE0HcjWRKALAwBsG
 OZ9o4b5JVkJ/o5ErT970XKk91NCx9mU7M6M9uhR7ty74oy1xog+R95X54 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10258"; a="313453453"
X-IronPort-AV: E=Sophos;i="5.88,368,1635231600"; d="scan'208";a="313453453"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 12:26:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,368,1635231600"; d="scan'208";a="528420774"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga007.jf.intel.com with SMTP; 14 Feb 2022 12:26:40 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 14 Feb 2022 22:26:39 +0200
Date: Mon, 14 Feb 2022 22:26:39 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <Ygq6/32Cy6CjMrDu@intel.com>
References: <20220214091811.13725-1-ville.syrjala@linux.intel.com>
 <20220214091811.13725-3-ville.syrjala@linux.intel.com>
 <20220214100536.GB24878@intel.com> <Ygot+UVlBnA/Xzfk@intel.com>
 <20220214170305.GA25600@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220214170305.GA25600@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915: Fix bw atomic check when
 switching between SAGV vs. no SAGV
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Feb 14, 2022 at 07:03:05PM +0200, Lisovskiy, Stanislav wrote:
> On Mon, Feb 14, 2022 at 12:24:57PM +0200, Ville Syrj�l� wrote:
> > On Mon, Feb 14, 2022 at 12:05:36PM +0200, Lisovskiy, Stanislav wrote:
> > > On Mon, Feb 14, 2022 at 11:18:07AM +0200, Ville Syrjala wrote:
> > > > From: Ville Syrj�l� <ville.syrjala@linux.intel.com>
> > > > 
> > > > If the only thing that is changing is SAGV vs. no SAGV but
> > > > the number of active planes and the total data rates end up
> > > > unchanged we currently bail out of intel_bw_atomic_check()
> > > > early and forget to actually compute the new WGV point
> > > > mask and thus won't actually enable/disable SAGV as requested.
> > > > This ends up poorly if we end up running with SAGV enabled
> > > > when we shouldn't. Usually ends up in underruns.
> > > > To fix this let's go through the QGV point mask computation
> > > > if anyone else already added the bw state for us.
> > > 
> > > Haven't been looking this in a while. Despite we have been
> > > looking like few revisions together still some bugs :(
> > > 
> > > I thought SAGV vs No SAGV can't change if active planes 
> > > or data rate didn't change? Because it means we probably
> > > still have same ddb allocations, which means SAGV state
> > > will just stay the same.
> > 
> > SAGV can change due to watermarks/ddb allocations. The easiest
> > way to trip this up is to try to use the async flip wm0/ddb 
> > optimization. That immediately forgets to turn off SAGV and
> > we get underruns, whcih is how I noticed this. And I don't
> > immediately see any easy proof that this couldn't also happen
> > due to some other plane changes.
> 
> Thats the way it was initially implemented even before SAGV was added.

Yeah, it wasn't a problem as long as SAGV was not enabled.

> I think it can be dated back to the very first bw check was implemented.
> 
> commit c457d9cf256e942138a54a2e80349ee7fe20c391
> Author: Ville Syrj�l� <ville.syrjala@linux.intel.com>
> Date:   Fri May 24 18:36:14 2019 +0300
> 
>     drm/i915: Make sure we have enough memory bandwidth on ICL
> 
> +int intel_bw_atomic_check(struct intel_atomic_state *state)
> +{
> +       struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> +       struct intel_crtc_state *new_crtc_state, *old_crtc_state;
> +       struct intel_bw_state *bw_state = NULL;
> +       unsigned int data_rate, max_data_rate;
> +       unsigned int num_active_planes;
> +       struct intel_crtc *crtc;
> +       int i;
> +
> +       /* FIXME earlier gens need some checks too */
> +       if (INTEL_GEN(dev_priv) < 11)
> +               return 0;
> +
> +       for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
> +                                           new_crtc_state, i) {
> +               unsigned int old_data_rate =
> +                       intel_bw_crtc_data_rate(old_crtc_state);
> +               unsigned int new_data_rate =
> +                       intel_bw_crtc_data_rate(new_crtc_state);
> +               unsigned int old_active_planes =
> +                       intel_bw_crtc_num_active_planes(old_crtc_state);
> +               unsigned int new_active_planes =
> +                       intel_bw_crtc_num_active_planes(new_crtc_state);
> +
> +               /*
> +                * Avoid locking the bw state when
> +                * nothing significant has changed.
> +                */
> +               if (old_data_rate == new_data_rate &&
> +                   old_active_planes == new_active_planes)
> +                       continue;
> +
> +               bw_state  = intel_atomic_get_bw_state(state);
> +               if (IS_ERR(bw_state))
> +                       return PTR_ERR(bw_state);
> 
> However, what can cause watermarks/ddb to change, besides plane state change
> and/or active planes change? We change watermarks, when we change ddb allocations
> and we change ddb allocations when active planes had changed and/or data rate
> had changed.

The bw code only cares about the aggregate numbers from all the planes.
The planes could still change in some funny way where eg. some plane
frees up some bandwidth, but the other planes gobble up the exact same
amount and thus the aggregate numbers the bw atomic check cares about
do not change but the watermarks/ddb do.

And as mentiioned, the async flip wm0/ddb optimization makes this trivial
to trip up since it will want to disable SAGV as there is not enough ddb
for the SAGV watermark. And async flip specifically isn't even allowed
to change anything that would affect the bandwidth utilization, and neither
is it allowed to enable/disable planes.

-- 
Ville Syrj�l�
Intel
