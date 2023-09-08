Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A1A77981A6
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Sep 2023 07:54:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7545110E088;
	Fri,  8 Sep 2023 05:53:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B716910E088
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Sep 2023 05:53:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694152434; x=1725688434;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=SkkhBzciYR1WATaZn7cL4/lcEKLHLfhqu9UhVJmVa6U=;
 b=aDQIOmvBWMq+/zVpIllc7/xTB5rRfnKdkqzAnbbR2UbWx1NotNm0gwQC
 JrKgA8d5/CroYVUbQqoiegyMBosvu5x1MTFBO6UjPBENv2lYxGz58P8t4
 O3F5TCnMeE98Ejn2x3kNlAE4a2qbkeAerM0wVuwcsgIUfIKuEQZGHCKSm
 119c3Al7oLLDPYF56AGbGyU/Uey/MIFsbdV0vr1Db+xjiaHTXTsdDH5+h
 uXxolYbLwaIl7nifvSVf4kCeQEKBYMhp/Fol6XbhE5Zv1uIpZHGBnPh6M
 d5W7TByCUfWLh4A0j5oqFPDcXFUapwD6SUomzGXdB0r4NoFuWvimUD3yM g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="367830109"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="367830109"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 22:53:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="885532299"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="885532299"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga001.fm.intel.com with SMTP; 07 Sep 2023 22:53:35 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 08 Sep 2023 08:53:50 +0300
Date: Fri, 8 Sep 2023 08:53:50 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Manasi Navare <navaremanasi@chromium.org>
Message-ID: <ZPq27ialoWt5Uh4K@intel.com>
References: <20230901130440.2085-1-ville.syrjala@linux.intel.com>
 <20230901130440.2085-10-ville.syrjala@linux.intel.com>
 <CAE72mN=gAjB=h3BDzkMZqyh-OktWx3NwH38sn0oFEs_xdOhpXw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAE72mN=gAjB=h3BDzkMZqyh-OktWx3NwH38sn0oFEs_xdOhpXw@mail.gmail.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 09/12] drm/i915: Disable VRR during seamless
 M/N changes
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

On Thu, Sep 07, 2023 at 11:49:10AM -0700, Manasi Navare wrote:
> Hi Ville,
> 
> Since we are always disabling when update_m_n, that means if in gaming
> mode if VRR enable is requested by userspace, it cannot
> be enabled if update_m_n or dual refresh mode is enabled and say we
> have downclocked from 120Hz - 60Hz?

No, it just means if you have VRR already enabled and want to do
a M/N change VRR gets temporarily disabled and re-enabled during
the commit.

> 
> Doesnt this contradict the purpose of this series to try and do VRR
> update params in fastset because we want VRR range to be
> correctly reflected when in dual refresh mode when we downclock from
> 120-60hz in gaming use case with VRR?
> 
> Am I missing something here?
> 
> Regards
> Manasi
> 
> On Fri, Sep 1, 2023 at 6:05 AM Ville Syrjala
> <ville.syrjala@linux.intel.com> wrote:
> >
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Make life less confusing by making sure VRR is disabled whenever
> > we do any drastic changes to the display timings, such as seamless
> > M/N changes.
> >
> > Cc: Manasi Navare <navaremanasi@chromium.org>
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 6 ++++--
> >  1 file changed, 4 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index c20eaf0e7a91..cbbee303cd00 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -916,13 +916,15 @@ static bool planes_disabling(const struct intel_crtc_state *old_crtc_state,
> >  static bool vrr_enabling(const struct intel_crtc_state *old_crtc_state,
> >                          const struct intel_crtc_state *new_crtc_state)
> >  {
> > -       return is_enabling(vrr.enable, old_crtc_state, new_crtc_state);
> > +       return is_enabling(vrr.enable, old_crtc_state, new_crtc_state) ||
> > +               (new_crtc_state->vrr.enable && new_crtc_state->update_m_n);
> >  }
> >
> >  static bool vrr_disabling(const struct intel_crtc_state *old_crtc_state,
> >                           const struct intel_crtc_state *new_crtc_state)
> >  {
> > -       return is_disabling(vrr.enable, old_crtc_state, new_crtc_state);
> > +       return is_disabling(vrr.enable, old_crtc_state, new_crtc_state) ||
> > +               (old_crtc_state->vrr.enable && new_crtc_state->update_m_n);
> >  }
> >
> >  #undef is_disabling
> > --
> > 2.41.0
> >

-- 
Ville Syrjälä
Intel
