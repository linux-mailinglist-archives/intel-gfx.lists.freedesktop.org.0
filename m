Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD4C084F608
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Feb 2024 14:31:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD0C610F40A;
	Fri,  9 Feb 2024 13:31:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ilP5ELHY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9643A10F402
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Feb 2024 13:31:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707485513; x=1739021513;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=E8OrrehmhGNMUxknHPGAJvECTTQmNDtP94HMeJSD4pI=;
 b=ilP5ELHYXY3obAi/jcsP0ykoLeYuQDGGmwswfkKIlA4w9qfVwN//4wZt
 uZRLEmwsjnmKm/Mwi1a2R0zh8Ogz5030PEZUiO5gy6KSYaNFdTtZ/pFiy
 motdGN2YTUOitR7kTS4HSmrJ1vceaP42CYjCo935W0GMZaxOEb1G2chjO
 HKqTgbD5PnRg4Zautg7dXrGQ21bAtzCkCW4y75dKcjeBlhp69Z8TL+ecs
 rzm7HaAMtMWKrmHSbRfC0SGSVz6E02pMwROFKfxYT6cV4pWwiP5yNg0wm
 7+t6zOafI+13RUbPvT5Hc9aPkfEoNU6mnSYK9hbBTQVtZF9w4ePpleMAo w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10978"; a="1319988"
X-IronPort-AV: E=Sophos;i="6.05,256,1701158400"; 
   d="scan'208";a="1319988"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2024 05:31:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10978"; a="825141609"
X-IronPort-AV: E=Sophos;i="6.05,256,1701158400"; d="scan'208";a="825141609"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 09 Feb 2024 05:31:49 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 09 Feb 2024 15:31:48 +0200
Date: Fri, 9 Feb 2024 15:31:48 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 2/2] drm/i915/display: Force full modeset for eDP
Message-ID: <ZcYpRIYiTdoL6mzB@intel.com>
References: <20240206070937.197986-1-mika.kahola@intel.com>
 <20240206070937.197986-3-mika.kahola@intel.com>
 <87a5oaatws.fsf@intel.com>
 <MW4PR11MB7054254B4B9C319878D99FCBEF4B2@MW4PR11MB7054.namprd11.prod.outlook.com>
 <ZcYVTcvE4Z3mo88U@intel.com>
 <MW4PR11MB7054E5C5391F47516CA1B31BEF4B2@MW4PR11MB7054.namprd11.prod.outlook.com>
 <ZcYYHw85Kasgr48A@intel.com>
 <MW4PR11MB70543D7803720609215D5A5AEF4B2@MW4PR11MB7054.namprd11.prod.outlook.com>
 <ZcYfR4HCUxd_R3fS@intel.com>
 <MW4PR11MB7054F295737733A476901335EF4B2@MW4PR11MB7054.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <MW4PR11MB7054F295737733A476901335EF4B2@MW4PR11MB7054.namprd11.prod.outlook.com>
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

On Fri, Feb 09, 2024 at 01:17:27PM +0000, Kahola, Mika wrote:
> > -----Original Message-----
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Sent: Friday, February 9, 2024 2:49 PM
> > To: Kahola, Mika <mika.kahola@intel.com>
> > Cc: Jani Nikula <jani.nikula@linux.intel.com>; intel-gfx@lists.freedesktop.org
> > Subject: Re: [PATCH 2/2] drm/i915/display: Force full modeset for eDP
> > 
> > On Fri, Feb 09, 2024 at 12:33:20PM +0000, Kahola, Mika wrote:
> > > > -----Original Message-----
> > > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > Sent: Friday, February 9, 2024 2:19 PM
> > > > To: Kahola, Mika <mika.kahola@intel.com>
> > > > Cc: Jani Nikula <jani.nikula@linux.intel.com>;
> > > > intel-gfx@lists.freedesktop.org
> > > > Subject: Re: [PATCH 2/2] drm/i915/display: Force full modeset for
> > > > eDP
> > > >
> > > > On Fri, Feb 09, 2024 at 12:13:02PM +0000, Kahola, Mika wrote:
> > > > > > -----Original Message-----
> > > > > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > > > Sent: Friday, February 9, 2024 2:07 PM
> > > > > > To: Kahola, Mika <mika.kahola@intel.com>
> > > > > > Cc: Jani Nikula <jani.nikula@linux.intel.com>;
> > > > > > intel-gfx@lists.freedesktop.org
> > > > > > Subject: Re: [PATCH 2/2] drm/i915/display: Force full modeset
> > > > > > for eDP
> > > > > >
> > > > > > On Fri, Feb 09, 2024 at 11:55:58AM +0000, Kahola, Mika wrote:
> > > > > > > > -----Original Message-----
> > > > > > > > From: Jani Nikula <jani.nikula@linux.intel.com>
> > > > > > > > Sent: Friday, February 9, 2024 11:06 AM
> > > > > > > > To: Kahola, Mika <mika.kahola@intel.com>;
> > > > > > > > intel-gfx@lists.freedesktop.org
> > > > > > > > Cc: Kahola, Mika <mika.kahola@intel.com>
> > > > > > > > Subject: Re: [PATCH 2/2] drm/i915/display: Force full
> > > > > > > > modeset for eDP
> > > > > > > >
> > > > > > > > On Tue, 06 Feb 2024, Mika Kahola <mika.kahola@intel.com> wrote:
> > > > > > > > > Force full modeset for eDP when booting up. GOP programs
> > > > > > > > > PLL parameters and hence, we would be able to use fastset for eDP.
> > > > > > > > > However, with fastset we are not setting PLL values from
> > > > > > > > > the driver and rely that GOP and driver PLL values match.
> > > > > > > > > We have discovered that with some of the panels this is
> > > > > > > > > not true and hence we would need to program PLL values by
> > > > > > > > > the driver. The patch suggests a workaround as enabling
> > > > > > > > > full modeset when booting up. This way we force the driver to write the PLL values to the hw.
> > > > > > > >
> > > > > > > > No. We want to avoid full modesets if possible, both in general and at probe.
> > > > > > > >
> > > > > > > > And when we do end up with modesets, the decision needs to
> > > > > > > > be based on changes in the state that we can't write to the hardware without a modeset.
> > > > > > > >
> > > > > > > > We can't unconditionally force a modeset on eDP panels at probe.
> > > > > > >
> > > > > > > Thanks! Just wondering what the options here might be? With
> > > > > > > fastest we end up having a mismatch with one PLL value with a
> > > > > > few panels.
> > > > > >
> > > > > > You seem to be stuck in some infinite loop. If your PLL
> > > > > > parameters are mismatching that should prevent the fastset, but
> > > > > > then I guess you added some hack to allow the fastset despite
> > > > > > the mismatch, and now you're trying to undo that hack by blindly
> > > > > > forcing a
> > > > full modeset?
> > > > >
> > > > > That's right, I found myself to be between a rock and a hard place. I did discard the fastest but found out that we cannot do
> > that.
> > > >
> > > > If you discarded it then why are you not already getting the full modeset you want?
> > > >
> > > Poor choice of words, I guess. What I meant that I discarded the state verification in case of fastest. This way the mismatch is
> > hidden under the carpet.
> > 
> > Right. So just add the state verification back and it'll just work (tm).
> 
> I wish it would be that simple. With fastest it seems that we are not programming PLL values but instead rely the ones GOP programs. When reading out these values from HW there is this one value that differs from the SW state defined by our driver. I was thinking about that we should read the state from HW and update our SW state based on that but then we would end up comparing HW state to HW state, which to me is not what state verification is all about.

The actual problem would appear to be that someone forgot
to handle these snps/cx0 PLLs in pipe_config_compare().

Implementing these PLLs outside the dpll_mgr framework was
another big mistake. And the ridonculous size of 
dpll_hw_state is another problem.

We need to do some major refactoring to clean up this
mess once and for all. Some kind of plan:
1. move all PLLs over to the dpll_mgr framework,
   starting with snps/cx0
2. move all PLL hw state verification into the dpll_mgr
   so it can be customized per-PLL type
3. Perhaps make dpll_hw_state opaque and split it
   up into per-PLL type variants. Need to think about
   memory allocation issues with this one...

I think I'll see if I can quickly type up a start for 2...

-- 
Ville Syrjälä
Intel
