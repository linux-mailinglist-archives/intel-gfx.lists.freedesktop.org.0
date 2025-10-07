Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9D26BC1E96
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Oct 2025 17:22:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50B1C10E6D7;
	Tue,  7 Oct 2025 15:22:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dm47TMWw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40F4910E1BD;
 Tue,  7 Oct 2025 15:22:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759850564; x=1791386564;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=xKNDTCREdOTMzZDfnMTsRVN+0G+gd4r1IUM6j7Em2F4=;
 b=dm47TMWwmvThcSd719YTERoXC18evJTIKPbJG6IPT12vomTd2JiekVIM
 rQkDota5DKymG/ljADlC+3bUiMkdlwhAMeHzg+d8eLoAqDQrrAKZfxTrY
 f26r8zvbLwe9ZfnL+RrxFmMVgaGG0U3qqG/KJHSXkuC0mTzRBssyz3HtK
 SjUyozjm8aKTl4YgMYI0DaF0nhAQUEhkhmecn2ELXADZrUeTyRvMP0kql
 P1RRksPiel5BpdNPZDeMbNYiKV6CuVKuUmRJTv9uytdVq2/lSUJtQIkC/
 myC/B3mopu8uV7mcXjxAC3hyLwMG3GNWYCjWea8Zeyvsp1yFjDwb/qS0p w==;
X-CSE-ConnectionGUID: 8IETrwZZQvOmTWqPqvXZfQ==
X-CSE-MsgGUID: r5Ggi75NSmuEMpt/QoPdZA==
X-IronPort-AV: E=McAfee;i="6800,10657,11575"; a="65682329"
X-IronPort-AV: E=Sophos;i="6.18,321,1751266800"; d="scan'208";a="65682329"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 08:22:44 -0700
X-CSE-ConnectionGUID: fwzRdIUeQuiLobeyYNqbrw==
X-CSE-MsgGUID: SdPzlJVhQNayfGjyJ1I18Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,321,1751266800"; d="scan'208";a="217269764"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.245.166])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 08:22:43 -0700
Date: Tue, 7 Oct 2025 18:22:39 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 00/16] Optimize vrr.guardband and fix LRR
Message-ID: <aOUwP76LMzhU6AD5@intel.com>
References: <20251006042852.263249-1-ankit.k.nautiyal@intel.com>
 <aORHvhi6o729-bQc@intel.com>
 <bb6e11f6-d270-4a20-9bc6-8c1964b95315@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <bb6e11f6-d270-4a20-9bc6-8c1964b95315@intel.com>
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

On Tue, Oct 07, 2025 at 12:03:47PM +0530, Nautiyal, Ankit K wrote:
> 
> On 10/7/2025 4:20 AM, Ville Syrjälä wrote:
> > On Mon, Oct 06, 2025 at 09:58:36AM +0530, Ankit Nautiyal wrote:
> >
> > I'd like to see a separate series with just the patches to fix
> > the crtc_vblank_start stuff, which I think is roughly these:
> >
> >>    drm/i915/vrr: Use crtc_vsync_start/end for computing  vrr.vsync_start/end
> >>    drm/i915/vrr: s/intel_vrr_compute_config_late/intel_vrr_compute_guardband
> >>    drm/i915/vblank: Add helper to get correct vblank length
> >>    drm/i915/vrr: Recompute vblank_start for platforms with always-on VRR TG
> >>    drm/i915/display: Add vblank_start adjustment logic for always-on VRR TG
> > (+ whatever is needed to sort out the issues I outlined in the
> >   indiviual replies)
> >
> > That is really just fixing existing things, and has nothing to
> > do with any of the prefill stuff/etc. in the rest of the series.
> 
> 
> Alright I can send a separate series for this.
> 
> 
> Then optimized guardband and pipeline fill thing can wait.
> 
> 
> For fixing LRR on PTL, is there any other stop gap?
> 
> Currently guardband depends on vmin vtotal and for LRR vtotal gets 
> changed. Is it possible to get a constant value?

If we aren't convinced that changing the guardband is ok then using
the optimized guardband is the only choice that I can see.

> 
> 
> Regards,
> 
> Ankit
> 
> >
> > The prefill stuff btw seems to be completely borked in current
> > upstream code even; it computes things based on a completely stale
> > cdclk frequency (the new frequency will be computed much later).

Also the scaler stuff is borked in the same way. Fixing that is probably
going to require some actual work :/

> >
> > I *think* I can reorder things sufficiently to fix that, but I really
> > must get https://patchwork.freedesktop.org/series/154921/ landed
> > first...
> >

-- 
Ville Syrjälä
Intel
