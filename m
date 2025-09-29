Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94FAFBA8949
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Sep 2025 11:22:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6391710E227;
	Mon, 29 Sep 2025 09:21:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ksdd/C+J";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C83E010E121;
 Mon, 29 Sep 2025 09:21:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759137717; x=1790673717;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=EAdJuh2rHPKTdcJoQ6aplCDnBKk+Hfyw9t9u++s/Q3k=;
 b=Ksdd/C+JDLuGL0cymjKXS/YtLPZ008oq34vu6oYxrBw1dkP8VSEIxRZh
 us+IyK8dRV0WfdJBbccywCN1zOOWQhyu/fe9x68HqgWu+/aIMemDE9RO4
 py7MjCR9KmrE8RjdA8LKgoglD+Bo+9jS9DJLYVPWa8Ov6hyHH6hvu8oKt
 8lVoB2aGlYD0zM1U6PLexoQhMKGdupbz+yz+E8qF242zTDTx5lwygUfAf
 RiK687ti5dePLhgnIbfeNX08ApnfXvrsphsXmkNyQEW5DMEtnmLn3S1Au
 TOJV7EuiuPyt/fkqDT5qGi3XCEWJGCan+cOENcthGbd9ETrgfRTZ96FZe A==;
X-CSE-ConnectionGUID: gSQewb66QniZbU96PrJjkg==
X-CSE-MsgGUID: jzF3FV/ARBeF2mGybRfa/Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11567"; a="61293410"
X-IronPort-AV: E=Sophos;i="6.18,301,1751266800"; d="scan'208";a="61293410"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2025 02:21:57 -0700
X-CSE-ConnectionGUID: IT/ThN9HSsi2iDGOc5OVsQ==
X-CSE-MsgGUID: MZQbF9R8S3iI5Ga6KXkVtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,301,1751266800"; d="scan'208";a="177783549"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.245.198])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2025 02:21:55 -0700
Date: Mon, 29 Sep 2025 12:21:52 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 15/15] drm/i915/display: Use optimized guardband to set
 vblank start
Message-ID: <aNpPsPlJM4usqQoY@intel.com>
References: <20250928070541.3892890-1-ankit.k.nautiyal@intel.com>
 <20250928070541.3892890-16-ankit.k.nautiyal@intel.com>
 <aNpHHxXXFOEKDUmP@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aNpHHxXXFOEKDUmP@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Mon, Sep 29, 2025 at 11:45:19AM +0300, Ville Syrjälä wrote:
> On Sun, Sep 28, 2025 at 12:35:40PM +0530, Ankit Nautiyal wrote:
> > +static void intel_crtc_vblank_delay(struct intel_atomic_state *state,
> > +				    struct intel_crtc *crtc)
> > +{
> > +	struct intel_crtc_state *crtc_state =
> > +		intel_atomic_get_new_crtc_state(state, crtc);
> > +	struct drm_display_mode *adjusted_mode =
> > +		&crtc_state->hw.adjusted_mode;
> > +	int vblank_delay = 0;
> > +
> > +	vblank_delay = intel_crtc_min_guardband_delay(state, crtc);
> > +
> > +	adjusted_mode->crtc_vblank_start += vblank_delay;
> 
> The situation with crtc_vblank_start is already kinda broken,
> and I think we need to fix that first somehow.
> 
> Currently crtc_vblank_start is assumed to be the vblank_start
> for the fixed refresh rate case. That value can be different
> from the variable refresh rate case whenever
> always_use_vrr_tg()==false. On icl/tgl it's always different
> due to the extra vblank delay, and also on adl+ it could be
> different if we were to use an optimized guardband.
> 
> I think there are a few options how we might solve this:
> 1. keep crtc_vblank_start as is, and make sure every user of it
>    gets adjusted to also deal with the vrr case correctly
> 2. enable always_use_vrr_tg() whenever there might be switch
>    between vrr and fixed refresh rate, which I think would mean
>    crtc_state->vrr.in_range==true.

One slight downside with option 2 would that we migth lose
fastboot support. Dunno if we could come up with a scheme that
prefers option 2 while still allowing the live legacy TG -> VRR
TG change during fastboot...

-- 
Ville Syrjälä
Intel
