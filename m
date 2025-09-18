Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1730BB84CE5
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 15:29:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2856210E8A5;
	Thu, 18 Sep 2025 13:29:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PwOJEQXC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0D6A10E8A4;
 Thu, 18 Sep 2025 13:29:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758202153; x=1789738153;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=8Tky5818X+Ws3kglXn+4aVsjZxiNWi55AqolwsFSeyc=;
 b=PwOJEQXCIzd0HocI3np8IDE/SuXgppv7tM5UI+wYn8l+ahHKftBybW9T
 KSMWIXo43Wbt4WAMLgCRM9W5gbsO8RelJRtBKwAD2cLFVtgKXQmDzQag2
 Bge3eK3D4JSyVw1UcNNmwQJ70IhBA7Z7gWzFkV7RMO6yCVouGhl+I7r7N
 gMILu9EIo+L9ztTE5dsF0enyEi2J3htxJ5PcBtlACkS95TOfxabkhPMCo
 CT+WMpr1+q9WZiOIi3Z8S2hl9tzSsBOD7B+zk1NOck607XMm2JcYkK9eD
 6zeqfsQzd4Uwqm1s6qH8wIPcIRTGWTe2kBYr0B4VyZ92bNgoeZCqgJlkW w==;
X-CSE-ConnectionGUID: ivwt7y2ESD6nMuu2YFzmSQ==
X-CSE-MsgGUID: Umved8xOQ5y/qZpHM1dUJg==
X-IronPort-AV: E=McAfee;i="6800,10657,11556"; a="60462738"
X-IronPort-AV: E=Sophos;i="6.18,275,1751266800"; d="scan'208";a="60462738"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 06:29:12 -0700
X-CSE-ConnectionGUID: FRRAsa39QSiH0b+bHNEapw==
X-CSE-MsgGUID: xlw3tg3rSPqi+Th3cvCnKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,275,1751266800"; d="scan'208";a="176344847"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.255])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 06:29:11 -0700
Date: Thu, 18 Sep 2025 16:29:08 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Luca Coelho <luca@coelho.fi>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 11/13] drm/i915: Make wm latencies monotonic
Message-ID: <aMwJJPEoS8u6ovU9@intel.com>
References: <20250905145832.12097-1-ville.syrjala@linux.intel.com>
 <20250905145832.12097-12-ville.syrjala@linux.intel.com>
 <4dcd22ba34cf11a501220834fe6b9375de26e2a1.camel@coelho.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4dcd22ba34cf11a501220834fe6b9375de26e2a1.camel@coelho.fi>
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

On Tue, Sep 16, 2025 at 01:29:17PM +0300, Luca Coelho wrote:
> On Fri, 2025-09-05 at 17:58 +0300, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Some systems (eg. LNL Lenovo Thinkapd X1 Carbon) declare
> > semi-bogus non-monotonic WM latency values:
> >  WM0 latency not provided
> >  WM1 latency 100 usec
> >  WM2 latency 100 usec
> >  WM3 latency 100 usec
> >  WM4 latency 93 usec
> >  WM5 latency 100 usec
> > 
> > Apparently Windows just papers over the issue by bumping the
> > latencies for the higher watermark levels to make them monotonic
> > again. Do the same.
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/skl_watermark.c | 15 +++++++++++++++
> >  1 file changed, 15 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> > index e11ba1a822f4..d334cc661328 100644
> > --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> > +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> > @@ -3238,6 +3238,19 @@ static void sanitize_wm_latency(struct intel_display *display)
> >  	}
> >  }
> >  
> > +static void make_wm_latency_monotonic(struct intel_display *display)
> > +{
> > +	u16 *wm = display->wm.skl_latency;
> > +	int level, num_levels = display->wm.num_levels;
> > +
> > +	for (level = 1; level < num_levels; level++) {
> > +		if (wm[level] == 0)
> > +			break;
> > +
> > +		wm[level] = max(wm[level], wm[level-1]);
> > +	}
> > +}
> > +
> 
> What if, for instance, we have:
> 
>  WM0 latency not provided
>  WM1 latency 200 usec
>  WM2 latency 100 usec
>  WM3 latency 100 usec
>  WM4 latency 100 usec
>  WM5 latency 100 usec
> 
> Do we really want to set them all to be 200 usec? Maybe multiples of
> the minimum we have would still be fine?

The latencies are supposed to increase as you go along,
each subsequent level corresponding to some deeper pkgC state.

> 
> What's the actual reason for this "papering over"? Is it to synchronize
> timers?

Dunno why Windows started to do this (as opposed to complaining and
telling people to fix their pcode firmware to correctly populate the
latencies). But since it does that it seems likely we might run into
more cases like this in the future.

-- 
Ville Syrjälä
Intel
