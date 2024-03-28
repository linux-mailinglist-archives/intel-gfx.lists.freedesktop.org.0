Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 321B088FF0D
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Mar 2024 13:32:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87D26112417;
	Thu, 28 Mar 2024 12:32:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Gb7FrCnz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 437F0112419
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Mar 2024 12:32:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711629138; x=1743165138;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=uLzns8WVy9M6vpXOzHXDRpDqoQvOZH2iDOGRd4pB2sE=;
 b=Gb7FrCnzX59kZ/n+k6HgcZVki98I5+DAgtGzIxWRVTxFQj4SMqnFYsQT
 KmmrjaJPvbkBHtwBrFswZ3FaAyJpgHkTTk8vc9rPEKkw3PquyNYmGEE78
 oKD0DaKw9nUFJ1jpGZOJrHqQGx/DJVr5lZxk2DRPD8S1PmtV/ftbL5raq
 HYpu5B8MXJIGa1KQjRTVYNJTNp+5/VjBiEjx0f+zT8NTGcrXQ3sW9LyDf
 IkwfQQx9d6GHxlHnColTMPrzUtcnq0zuuq/QKhU5CWzJcje/gi/dadG0I
 kYwG4ANLJB9fHPabKf46QIN5SWoXJILjHuPE2U7VtJQmn8lDS+lo2LQmY w==;
X-CSE-ConnectionGUID: Oa+a4BATSbiPt6f61Jj68Q==
X-CSE-MsgGUID: i/MYItZVQSm3Q9+PIRW1iA==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="6666819"
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; 
   d="scan'208";a="6666819"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 05:32:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="827786272"
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="827786272"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 28 Mar 2024 05:32:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 28 Mar 2024 14:32:14 +0200
Date: Thu, 28 Mar 2024 14:32:14 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 01/13] drm/i915/cdclk: Fix CDCLK programming order when
 pipes are active
Message-ID: <ZgVjTh6r1PcKbq0g@intel.com>
References: <20240327174544.983-1-ville.syrjala@linux.intel.com>
 <20240327174544.983-2-ville.syrjala@linux.intel.com>
 <IA0PR11MB73070772669115D9CF4BA368BA3B2@IA0PR11MB7307.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <IA0PR11MB73070772669115D9CF4BA368BA3B2@IA0PR11MB7307.namprd11.prod.outlook.com>
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

On Thu, Mar 28, 2024 at 09:16:06AM +0000, Murthy, Arun R wrote:
> 
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ville
> > Syrjala
> > Sent: Wednesday, March 27, 2024 11:16 PM
> > To: intel-gfx@lists.freedesktop.org
> > Subject: [PATCH 01/13] drm/i915/cdclk: Fix CDCLK programming order when
> > pipes are active
> > 
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Currently we always reprogram CDCLK from the
> > intel_set_cdclk_pre_plane_update() when using squahs/crawl.
> Typo squashs->squash
> 
> > The code only works correctly for the cd2x update or full modeset cases, and it
> > was simply never updated to deal with squash/crawl.
> > 
> > If the CDCLK frequency is increasing we must reprogram it before we do
> > anything else that might depend on the new higher frequency, and conversely
> > we must not decrease the frequency until everything that might still depend on
> > the old higher frequency has been dealt with.
> > 
> > Since cdclk_state->pipe is only relevant when doing a cd2x update we can't use
> > it to determine the correct sequence during squash/crawl. To that end
> > introduce cdclk_state->disable_pipes which simply indicates that we must
> > perform the update while the pipes are disable (ie. during
> > intel_set_cdclk_pre_plane_update()). Otherwise we use the same old vs. new
> > CDCLK frequency comparsiong as for cd2x updates.
> > 
> > The only remaining problem case is when the voltage_level needs to increase
> > due to a DDI port, but the CDCLK frequency is decreasing (and not all pipes are
> > being disabled). The current approach will not bump the voltage level up until
> > after the port has already been enabled, which is too late.
> > But we'll take care of that case separately.
> > 
> > v2: Don't break the "must disable pipes case"
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cdclk.c | 15 +++++++++------
> > drivers/gpu/drm/i915/display/intel_cdclk.h |  3 +++
> >  2 files changed, 12 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index 31aaa9780dfc..619529dba095 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -2600,7 +2600,6 @@ intel_set_cdclk_pre_plane_update(struct
> > intel_atomic_state *state)
> >  		intel_atomic_get_old_cdclk_state(state);
> >  	const struct intel_cdclk_state *new_cdclk_state =
> >  		intel_atomic_get_new_cdclk_state(state);
> > -	enum pipe pipe = new_cdclk_state->pipe;
> Looks like this cdclk_state->pipe is not more used in the driver and can it be removed?

It is still used for its primary purpose (cd2x update pipe select).

The only thing changing here is that we no longer use it as a
canary to indicate whether we need to do the cdclk programming
with pipes off or not.

-- 
Ville Syrjälä
Intel
