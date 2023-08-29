Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3FB378C02F
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Aug 2023 10:24:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 116C110E171;
	Tue, 29 Aug 2023 08:24:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBAE010E171
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Aug 2023 08:24:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693297458; x=1724833458;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=dB2W4+d5SdJaq8IFYxARH+h95LaHJpjAveXUK/R3LvQ=;
 b=mSDJESm8LwkWaoerUy+UIA10LW1P+xww04ufdybz0qYzN+OUYpBN2PBC
 9yGbdWwdoY3DgDq46VmQe7xAkEvGIhjpqqpaWmD4aTR4Gpm6NRgkMVcK0
 PFlyLV1Lbn9Q3V1APT2ZmCdPGf8FdB1SYFxOlbnXQE/O/ULSD2XUgJu3P
 E2GJ2aT++WgJao1VHBm4jxam9OzXgNrBilA+whpAsYmBK7k699RJFirtA
 rVtKXL0QF4TRALH5sXGCZERJ/9zzxUxyy5WfZZCCh1xE7vDCmkO3o3pkF
 G7bSaBYlG+i3s8vW9L3gcYSTmMkaT6ac4a/LzAvuR7gWhY/DSC5jTjKau g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10816"; a="406305170"
X-IronPort-AV: E=Sophos;i="6.02,210,1688454000"; d="scan'208";a="406305170"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2023 01:24:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10816"; a="808589512"
X-IronPort-AV: E=Sophos;i="6.02,210,1688454000"; d="scan'208";a="808589512"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga004.fm.intel.com with SMTP; 29 Aug 2023 01:23:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 29 Aug 2023 11:23:56 +0300
Date: Tue, 29 Aug 2023 11:23:56 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Manasi Navare <navaremanasi@chromium.org>
Message-ID: <ZO2rHIflHTJ_KN_O@intel.com>
References: <20230828054140.28054-1-ville.syrjala@linux.intel.com>
 <20230828054140.28054-2-ville.syrjala@linux.intel.com>
 <CAE72mNkp72Od5DyOKM0Qw4ekMA4iXOc=2B9Pa8mJonZ0=F5_xg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAE72mNkp72Od5DyOKM0Qw4ekMA4iXOc=2B9Pa8mJonZ0=F5_xg@mail.gmail.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915: Move psr unlock out from the
 pipe update critical section
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

On Mon, Aug 28, 2023 at 11:16:13AM -0700, Manasi Navare wrote:
> By doing psr_unlock after the vblank evade, are we ensuring that even
> when VRR params change during the pipe update, psr unlock will
> happen after the actual vblank  based on newly programmed VRR params?

The unlock will happen as soon as the new register values have been
written. The vblank will happen when it happens, could be asap or could
be much later.

I don't actually even know what this PSR lock is protecting, I suppose
it's trying to prevent muckery with the PSR hw state while the update
is being programmed. Shrug.

> 
> Manasi
> 
> On Sun, Aug 27, 2023 at 10:41 PM Ville Syrjala
> <ville.syrjala@linux.intel.com> wrote:
> >
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Do the PSR unlock after the vblank evade critcal section is
> > fully over, not before.
> >
> > Cc: Manasi Navare <navaremanasi@chromium.org>
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_crtc.c | 9 +++++----
> >  1 file changed, 5 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
> > index 182c6dd64f47..5caa928e5ce9 100644
> > --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> > @@ -646,10 +646,8 @@ void intel_pipe_update_end(struct intel_crtc_state *new_crtc_state)
> >         ktime_t end_vbl_time = ktime_get();
> >         struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> >
> > -       intel_psr_unlock(new_crtc_state);
> > -
> >         if (new_crtc_state->do_async_flip)
> > -               return;
> > +               goto out;
> >
> >         trace_intel_pipe_update_end(crtc, end_vbl_count, scanline_end);
> >
> > @@ -709,7 +707,7 @@ void intel_pipe_update_end(struct intel_crtc_state *new_crtc_state)
> >         local_irq_enable();
> >
> >         if (intel_vgpu_active(dev_priv))
> > -               return;
> > +               goto out;
> >
> >         if (crtc->debug.start_vbl_count &&
> >             crtc->debug.start_vbl_count != end_vbl_count) {
> > @@ -724,4 +722,7 @@ void intel_pipe_update_end(struct intel_crtc_state *new_crtc_state)
> >         }
> >
> >         dbg_vblank_evade(crtc, end_vbl_time);
> > +
> > +out:
> > +       intel_psr_unlock(new_crtc_state);
> >  }
> > --
> > 2.41.0
> >

-- 
Ville Syrjälä
Intel
