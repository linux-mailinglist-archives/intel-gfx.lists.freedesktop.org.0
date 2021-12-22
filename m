Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C1D7E47D267
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Dec 2021 13:46:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6524410E1B5;
	Wed, 22 Dec 2021 12:46:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C964F10E172
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Dec 2021 12:46:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640177197; x=1671713197;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Fw+++bgKKsaC9v4DqmglAe3nWCjUj77ZZEs2ywKJrhQ=;
 b=OwBwaIirex2ZWczM1LYfKbSY4KaeRQ3IPuuIpr+hJrxcX0bdx/imltKg
 GurLxWsYAXCKW67zdptniEbYDV5hqT0KGLIrxnbOtV49+hwHVRY0JUvyc
 JHO2ryrCbF+wMNqDrRUIThb5BObuADZEtj4LMh8AZYHWdXJwOTaH6UrJA
 0GeV6yKSUk593Bjd0IL3Of4ZPW6w2m34Mff2d3V9CgRaEEh1lmk1LV1r4
 bG7RvnbMIbc746W9sLP1BeP9JZnjIaN1isvsrCKuh/cPSnqyUHqyjY2Ov
 pJwIT4OQpLTPTM+KukRBfa/whzOZ5S9T2iu6+8k0czMDHoltJhRKMweAX g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10205"; a="220621382"
X-IronPort-AV: E=Sophos;i="5.88,226,1635231600"; d="scan'208";a="220621382"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2021 04:46:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,226,1635231600"; d="scan'208";a="664262037"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by fmsmga001.fm.intel.com with SMTP; 22 Dec 2021 04:46:35 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 22 Dec 2021 14:46:34 +0200
Date: Wed, 22 Dec 2021 14:46:34 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YcMeKlgj8izwkgrS@intel.com>
References: <20211217155403.31477-1-ville.syrjala@linux.intel.com>
 <20211217155403.31477-7-ville.syrjala@linux.intel.com>
 <87zgotx97s.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87zgotx97s.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 6/6] drm/i915/hdmi: Ignore DP++ TMDS clock
 limit for native HDMI ports
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

On Wed, Dec 22, 2021 at 11:47:03AM +0200, Jani Nikula wrote:
> On Fri, 17 Dec 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Lots of machines these days seem to have a crappy type1 DP dual
> > mode adaptor chip slapped onto the motherboard. Based on the
> > DP dual mode spec we currently limit those to 165MHz max TMDS
> > clock.
> >
> > Windows OTOH ignores DP dual mode adaptors when the VBT
> > indicates that the port is not actually DP++, so we can
> > perhaps assume that the vendors did intend that the 165MHz
> > clock limit doesn't apply here. Though it would be much
> > nicer if they actually declared an explicit limit through
> > VBT, but that doesn't seem to be happening either.
> >
> > So in order to match Windows behaviour let's ignore the
> > DP dual mode adaptor's TMDS clock limit for ports that
> > don't look like DP++ in VBT.
> >
> > Unfortunately many older VBTs misdelcare their DP++ ports
> > as just HDMI (eg. ILK Dell Latitude E5410) or DP (eg. SNB
> > Lenovo ThinkPad X220). So we can't really do this universally
> > without risking black screens. I suppose a sensible cutoff
> > is HSW+ since that's when 4k became a thing and one might
> > assume that the machines have been tested to work with higher
> > TMDS clock rates.
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Out of curiousity, on the machines where we are currently too strict on
> the limitation, do we actually read and get a valid limit from the
> adaptor in drm_dp_dual_mode_max_tmds_clock(), or is it the fallback 165
> MHz that's too strict? If the latter, should the fallback policy be
> moved out of drm_dp_dual_mode_max_tmds_clock() instead?

We've seen two types of cases:
1) Can't identify a DP dual mode adaptor (ie. can't succesfully read
   any register from the adaptor), so we use
   intel_bios_is_port_dp_dual_mode() to check for native HDMI vs.
   DP++ port. If it looks like DP++ then we assume a type1 DVI adaptor
   and so we limit to 165MHz.
2) We actually detect a type1 HDMI adaptor (ie. we manage to read the
   magic ID string from its registers). Still type1 so we limit to
   165MHz as well.

The third type of case of detecting a type2 adaptor (which will actually
report its max TMDS clock limit) on what looks like a native HDMI port
I don't think we've seen yet.

Anyways, I think with this extra check we more or less match Windows
behaviour. The only difference is that Windows doesn't even probe the
DP dual mode adaptor for native HDMI ports. I think I still want to
do the probe so that the logs will at least show that the chip is there,
even if we ignore it. Just generally better to have as much information
about the system in the logs as possible.

Another slight diffrence in behaviour is that Windows seems to
limit DVI ports (as per VBT) to 165MHz as well. We do not.

To answer the original question, I don't think there's anything we
can relly do differenrely in drm_dp_dual_mode_max_tmds_clock().

> 
> Anyway, seems that currently we're erring too far to lower limits to
> avoid black screens, so seems okay to relax this a bit. ISTR we've had
> quite a few bug reports about this.

It's a tough balance. The big problem is that we have no really
nice way for the user to override any of this safely (apart from
the manual modeline which isn't so nice). So we try to play
it a bit safe to avoid the black screens. Unfortunately quite
a few recent machines don't seem to play well with that idea.

-- 
Ville Syrjälä
Intel
