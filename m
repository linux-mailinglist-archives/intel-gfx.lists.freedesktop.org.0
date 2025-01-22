Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 007C9A19210
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2025 14:08:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4319810E6E8;
	Wed, 22 Jan 2025 13:08:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YqFmmlWP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 476DA10E39E;
 Wed, 22 Jan 2025 13:08:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737551306; x=1769087306;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=nMtH4pxiYGARxHhx04ErXAuJ9pDff0jG/78Sxcy4MLE=;
 b=YqFmmlWPGP5F4dX5IazcVm9xEWVbnxmUobOvmMW2h2Lm3M2NrHkbuVEk
 8YZlsZiRh60PQ7OOGtdrzaTltrvJrYEixEQb8SwpU91jkBcua03rMfoBZ
 5+7rUsbuMzFeoTu8BCclLDRjUGs80BCg0KPd6vG8keJWit9puxbAeG+JY
 lkECANVIov8725uyBfkrjcUO/ly2230oNhefe3GlbcjqGiH9qZU1KW8jd
 p/N1kiho6IgMIgnr1AgUNeJ6dzzzMbFgLk/1clARqkrG6QM8DjROxlIGd
 wO2c6NOJlGIGKoRojhHbUu8zVDMTfNXMjYrXlttKhldVZuoMN0fmo4NVn g==;
X-CSE-ConnectionGUID: GPQRdp71TyS8x1ciwykPVA==
X-CSE-MsgGUID: wSEw1/o8Rva0O/TT/VaGqw==
X-IronPort-AV: E=McAfee;i="6700,10204,11322"; a="41931916"
X-IronPort-AV: E=Sophos;i="6.13,225,1732608000"; d="scan'208";a="41931916"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2025 05:08:26 -0800
X-CSE-ConnectionGUID: SP397qHCRdu8RzoWWP8YqQ==
X-CSE-MsgGUID: xvlrga3UQqyi1ctJeRYPqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,225,1732608000"; d="scan'208";a="107244542"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 22 Jan 2025 05:08:23 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 22 Jan 2025 15:08:22 +0200
Date: Wed, 22 Jan 2025 15:08:22 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 00/23] Use VRR timing generator for fixed refresh rate
 modes
Message-ID: <Z5Dtxu4Gu0eBHNu-@intel.com>
References: <20241111091221.2992818-1-ankit.k.nautiyal@intel.com>
 <Z1xvavnFCeaiYwJL@intel.com>
 <711973f2-03d2-4493-92bb-1da9dbc0e082@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <711973f2-03d2-4493-92bb-1da9dbc0e082@intel.com>
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

On Wed, Jan 22, 2025 at 04:08:07PM +0530, Nautiyal, Ankit K wrote:
> 
> On 12/13/2024 11:01 PM, Ville Syrjälä wrote:
> > On Mon, Nov 11, 2024 at 02:41:58PM +0530, Ankit Nautiyal wrote:
> >> Even though the VRR timing generator (TG) is primarily used for
> >> variable refresh rates, it can be used for fixed refresh rates as
> >> well. For a fixed refresh rate the Flip Line and Vmax must be equal
> >> (TRANS_VRR_FLIPLINE = TRANS_VRR_VMAX). Beyond that, there are some
> >> dependencies between the VRR timings and the legacy timing generator
> >> registers.
> >>
> >> This series is an attempt to use VRR TG for fixed refresh rate.
> >> For platforms XE2LPD+, always go with VRR timing generator for both fixed and
> >> variable refresh rate cases.
> > Some ideas I had while thinking about this:
> >
> > - perhaps the most fundemental decision we have to make is how do
> >    we compute the vrr state in each case. My first idea was to
> >    stick to the current way of always computing it as if vrr is enabled,
> >    but that complicates the state checker needlessly, so I'm actually
> >    leaning towards always computing the vrr state based on actual
> >    uapi.vrr_enable knob. So when that knob is disabled we always compute
> >    vmin=flipline=vmax. We're going to anyway have to repgrogram all those
> >    registers when toggle VRR anyway.
> >
> > - intel_vrr_{enable,disable}() should just flip between the fixed and
> >    variable timings in vmin/flipline/vmax. I think we should just do this
> >    for all the platforms, regarless of whether we also toggle the VRR_CTL
> >    enable bit there. This minimizes the differences between the two
> >    approaches fairly well, and it should also work well with the previous
> >    idea of computing the vrr state based on uapi.vrr_enable. I'm still
> >    a bit uneasy wrt. repgramming the timings on the fly since none of
> >    the registers are double buffered. So not entirely sure if we need
> >    to spend some brain cells on coming up with some kind of safe order
> >    of writing the registers or not.
> >
> > - guardbad/pipeline full probably can't be reprogrammed on the fly,
> >    so we need to make sure it satisfies both the fixed and variable
> >    timings. I think we should probably just always set vmin=crtc_vtotal
> >    instead of the using the current refresh rate based approach. That
> >    way we never need to change anything to do with the guardband.
> >
> > - I was initially thinking we chould jsue the PUSH_EN bit to
> >    differentiate between variable and fixed timings, but at least tgl
> >    and adl refuse to play ball and the display just blanks out if you
> >    attempt to use the VRR timing generator without enabling push.
> >    So probably we'll just need make the distinction based on
> >    flipline==vmax.
> >
> > - cmrr I've not really though about. It'll still involve frobbing the
> >    VRR_CTL and whatnot (which I think might be double buffered unlike
> >    all the other VRR registers). So not sure how to make sure the changes
> >    beween the modes are done safely. I think easiest to just never use
> >    cmrr for now, and we can figure it out later.
> >
> > So maybe something along the lines of:
> > 1) do the vmin==crtc_vtotal change
> > 2) neuter cmrr
> > 2) change the state computation and
> >     add vmin/vmax/flipline reprogramming to vrr_{enable,disable}()
> >     (need to make sure we can still do the fastset vrr toggle)
> 
> I am getting some confusion around the vrr_enable and vrr_disable 
> functions, with respect to platforms prior to MTL.
> 
> For prior platforms TGL-ADL, where we do not want to have fixed timings, 
> what happens to them when uapi.vrr_enable is not set.
> 
> Do we intend to use the same logic as was earlier where we compute vrr 
> timings and write them anyway without enabling VRR?

I'm thinking we could use basically the same logic
for all platforms. Something like this:

compute_config()
{
	if (can do vrr && vrr.uapi.enabled)
		compute vrr timings into crtc_state.vrr
	else
		compute fixed timings into crtc_state.vrr
}

vrr_enable()
{
	write VMAX/VMIN/FLIPINE with vrr timings from crtc_state.vrr

	if (!always_use_vrr_tg) {
		enable PUSH
		enable VRR_CTL
		// probably wait for vrr live status==enabled here
	}
}

vrr_disable()
{
	if (!always_use_vrr_tg) {
		disable VRR_CTL
		// wait for vrr live status==disabled here
		disable PUSH
	}

	write VMAX/VMIN/FLIPINE with fixed timings
}

That way the behaviour is consistent between all the
platforms (apart from the push/vrr enable bits), the state
checker shouldn't need any changes AFAICS, and it's trivial
to change which platforms use the always_use_vrr_tg approach
(should we need to do so).

Or do you see any problems with that approach?

-- 
Ville Syrjälä
Intel
