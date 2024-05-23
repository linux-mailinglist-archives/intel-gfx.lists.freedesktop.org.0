Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F28A68CD70E
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2024 17:29:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40F8910EC22;
	Thu, 23 May 2024 15:29:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BoKHBrh6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 508D710E756
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2024 15:29:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716478159; x=1748014159;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=f5MgfIeM7r98EzRuSMOgC+P+B7MW+P8QSR6am2gdERM=;
 b=BoKHBrh69/9/Rcsm4rCbsH+PaUHMUuoUhGEwRUf2/hkbk9rb7F0Yz7bu
 mTTIgz7QkmCfArEmgDP0FkwBhN7qytP5xbCalddf3lP3hZzZfJVqA+/yc
 2PUJ5YepHmg8qUWf5xXKlh5nqWW2HqfGGkVt7VGg9HTIVYO3E/EX9eWjH
 VE1b7HAp/Jd7DDcrrY+dmTqkIO6tuLiQtCjWPuUgpeqfZDD4s5Nnt3uVB
 genSBhYMO4b2jiEY/VIk57LUDqCj14QncEgr9ZX7faJKW4RfWcmQksQyd
 gcjQL6fh4KNyXtxRm2+O430MpLwWRpCpTjcgxMF5v37FlFOdh6+xS+4n3 g==;
X-CSE-ConnectionGUID: AcAtH3KRQL2BPQav5Tz6xg==
X-CSE-MsgGUID: TlMvK+2fQCS5UkzK997Iaw==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="12583689"
X-IronPort-AV: E=Sophos;i="6.08,183,1712646000"; d="scan'208";a="12583689"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 08:29:19 -0700
X-CSE-ConnectionGUID: 2qWrtNSmSN24eRZhr+p8Dg==
X-CSE-MsgGUID: TDT/1BVZTrGbl9lu1JUbJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,183,1712646000"; d="scan'208";a="34174224"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 08:29:17 -0700
Date: Thu, 23 May 2024 18:29:21 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v2 12/21] drm/i915/dp: Use check link state work in the
 detect handler
Message-ID: <Zk9g0TXrbZCGuT7a@ideak-desk.fi.intel.com>
References: <20240520185822.3725844-1-imre.deak@intel.com>
 <20240520185822.3725844-13-imre.deak@intel.com>
 <Zk9b-BnIn9QzljpT@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Zk9b-BnIn9QzljpT@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, May 23, 2024 at 06:08:40PM +0300, Ville Syrjälä wrote:
> On Mon, May 20, 2024 at 09:58:10PM +0300, Imre Deak wrote:
> > Simplify things by retraining a DP link if a bad link is detected in the
> > connector detect handler from the encoder's check link state work,
> > similarly to how this is done after a modeset link training failure.
> > 
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 7 ++-----
> >  1 file changed, 2 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index ff4ed6bb520d8..70b00e5ae7ad7 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -5863,11 +5863,8 @@ intel_dp_detect(struct drm_connector *connector,
> >  	 * Some external monitors do not signal loss of link synchronization
> >  	 * with an IRQ_HPD, so force a link status check.
> >  	 */
> > -	if (!intel_dp_is_edp(intel_dp)) {
> > -		ret = intel_dp_retrain_link(encoder, ctx);
> > -		if (ret)
> > -			return ret;
> > -	}
> > +	if (!intel_dp_is_edp(intel_dp))
> > +		intel_dp_check_link_state(intel_dp);
> 
> I would like to see this hack nuked entirely. But that
> could be a followup.

Okay. This tries to keep the current behavior, but can add a note that
the above workaround can be removed after the link state is checked
after modesets.

I also wondered about the link state check in the hotplug handler. If
that's only a way to defer doing this from the HPD IRQ handler - which
is now changed by patch 13 - that could be also removed eventually?

> 
> >  
> >  	/*
> >  	 * Clearing NACK and defer counts to get their exact values
> > -- 
> > 2.43.3
> 
> -- 
> Ville Syrjälä
> Intel
