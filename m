Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87FB173A07E
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jun 2023 14:05:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B57C10E54F;
	Thu, 22 Jun 2023 12:05:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FCC510E54F
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jun 2023 12:05:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687435547; x=1718971547;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=uNgN21UL4hg7blBvz+3dgajWa6gkHNNJ8Boa11rzp3w=;
 b=hj1E/9Ud1KH2RYc7Cey6bj17GWqKI3Yi4WIYgN3HlmM3ABQ1zZckLwOm
 NQt2z5bTTTdaMOfRx+0Ms6cpvIJnue4iBOhtY6Rwf9bmaaw4wFUCN+8M5
 cfC6iwDHdZ3U88B+azGL31qqKMDkkoh8q1KzmL2ilqxBMiElkGMlx6gQh
 Q0aXidksNPH6+lPdy0a6vAJk+udioRDnnXPiISs/KM5sJI1AfY5upZnFA
 qwSpPdhqOjWqQ4FGK1XVIFkzewxc5Hl/ovsEngeOMMdWm9DM1XrAS4UJY
 Opq6nopwCO6fBd4X9lSPn1kkouViYuE5CAfehVaO9zVN0iQldUELp8zbZ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="340804622"
X-IronPort-AV: E=Sophos;i="6.00,263,1681196400"; d="scan'208";a="340804622"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2023 05:05:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="804758101"
X-IronPort-AV: E=Sophos;i="6.00,263,1681196400"; d="scan'208";a="804758101"
Received: from unknown (HELO ideak-desk) ([10.237.72.78])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2023 05:05:44 -0700
Date: Thu, 22 Jun 2023 15:05:48 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Message-ID: <ZJQ5HJk2B5G9bzt2@ideak-desk>
References: <20230616185104.2502003-1-imre.deak@intel.com>
 <20230616185104.2502003-4-imre.deak@intel.com>
 <d710121ff42741cd1bf05d60361b731775acbfec.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d710121ff42741cd1bf05d60361b731775acbfec.camel@intel.com>
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915: Prevent needless toggling of
 DC states during modesets
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jun 22, 2023 at 12:38:17PM +0300, Hogander, Jouni wrote:
> On Fri, 2023-06-16 at 21:51 +0300, Imre Deak wrote:
> > DC states are disabled / re-enabled around each modeset, which may
> > lead to a needless off->on->off toggling of the DC_off power well.
> > This has some overhead as toggling DC states involves running a DMC
> > firmware handler and also running a periodic firmware handler while
> > DC states are enabled. The limit of when DC states have a benefit is
> > at 30 FPS (using DC3co) and below 30 FPS (using DC5/6), where the
> > firmware can actually disable clocks / power off power wells.
> > Accordingly delay powering off the DC_off powerwell (which
> > re-enables DC states) by 17 ms at the end of a modeset to avoid the
> > above overhead at or above 60 FPS.
> 
> I'm wondering in which case this toggling would happen and how the
> patch helps it.

It happens around each modeset in cases DC states are allowed by the
enabled outputs. For instance a single eDP output enabled and user space
doing back-to-back page flipping (issuing a new flip once the previous
one completes). The reason to avoid the
disable DC state -> flip -> re-enable DC state
toggling of DC states around each flip in this case is to avoid the
overhead of the DMC FW handlers running I described above (as the
firmware won't actually get to enter DC states anyway).

> We have PSR idle frames configured > 6. I.e. Only after 6 frames
> without changes our HW is supposed to enter DC5/6. This is purely with
> PSR glasses on. Do we have some other (than PSR) use-case this is
> targeting where DC5/DC6 would be possible while display is on?

DC3co would allow the DMC FW to enter DC states (actually disabling
clocks/power wells) after each frame at 30 FPS.

> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 6 +++++-
> >  1 file changed, 5 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index dd52c689267f4..de77d130d6f9f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -7148,7 +7148,11 @@ static void intel_atomic_commit_tail(struct
> > intel_atomic_state *state)
> >                  */
> >                 intel_uncore_arm_unclaimed_mmio_detection(&dev_priv-
> > >uncore);
> >         }
> > -       intel_display_power_put(dev_priv, POWER_DOMAIN_DC_OFF,
> > wakeref);
> > +       /*
> > +        * Delay re-enabling DC states by 17 ms to avoid the off->on-
> > >off
> > +        * toggling overhead at and above 60 FPS.
> > +        */
> > +       intel_display_power_put_async_delay(dev_priv,
> > POWER_DOMAIN_DC_OFF, wakeref, 17);
> >         intel_runtime_pm_put(&dev_priv->runtime_pm, state->wakeref);
> >
> >         /*
> 
