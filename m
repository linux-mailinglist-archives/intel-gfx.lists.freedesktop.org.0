Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50B1E6B521E
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Mar 2023 21:46:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62ED810E9F4;
	Fri, 10 Mar 2023 20:46:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF2A710E9F4
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Mar 2023 20:46:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678481186; x=1710017186;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=zLvHP3xZF8ynXXNwc9UA1ERQkLoB5kxMlBeha68nxq8=;
 b=imVWtUxlYBt2sCW3zAUimE7SCfTXzu3J3bQ/v1khQgKrKzRHE3cOk9va
 nfChPHlCI3byUteP5vYljgqqmsZfHxDqyIrP6pW31W/zR3YAjD5xdrZDq
 3i+ioHdjFBzBZbMSfG1qNn/GdMEvo8sJyVdEmILw8A7VDgRtzS5TnELPL
 3GABFZeLYh6IwEpIKT/8aVTg8A8XbyUTs5Cum895Ph2mwISi62S/BoKAH
 rjut91nobKwK3g+07GL5k/ns+SKPGVCgSYBlHQDBU2USldcT5U/PIoOWr
 vOt9ZnFwxsrky9ZocLc50st8Z4PGsYrZHqh0hr/SQsilIf1BVztIy9GYH Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10645"; a="336846889"
X-IronPort-AV: E=Sophos;i="5.98,250,1673942400"; d="scan'208";a="336846889"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2023 12:46:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10645"; a="655301617"
X-IronPort-AV: E=Sophos;i="5.98,250,1673942400"; d="scan'208";a="655301617"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga006.jf.intel.com with SMTP; 10 Mar 2023 12:46:23 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 10 Mar 2023 22:46:23 +0200
Date: Fri, 10 Mar 2023 22:46:23 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
Message-ID: <ZAuXH+TMuHvMxxbh@intel.com>
References: <20230306152841.6563-1-ville.syrjala@linux.intel.com>
 <MWHPR11MB1935F8DD6C9ABE337B4E7781B2BA9@MWHPR11MB1935.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <MWHPR11MB1935F8DD6C9ABE337B4E7781B2BA9@MWHPR11MB1935.namprd11.prod.outlook.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915: Update vblank timestamping
 stuff on seamless M/N change
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 10, 2023 at 07:01:18PM +0000, Golani, Mitulkumar Ajitkumar wrote:
> 
> 
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ville
> > Syrjala
> > Sent: 06 March 2023 20:59
> > To: intel-gfx@lists.freedesktop.org
> > Subject: [Intel-gfx] [PATCH 1/4] drm/i915: Update vblank timestamping stuff
> > on seamless M/N change
> > 
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > When we change the M/N values seamlessly during a fastset we should also
> > update the vblank timestamping stuff to make sure the vblank timestamp
> > corrections/guesstimations come out exact.
> > 
> > Note that only crtc_clock and framedur_ns can actually end up changing here
> > during fastsets. Everything else we touch can only change during full
> > modesets.
> > 
> > Technically we should try to do this exactly at the start of vblank, but that
> > would require some kind of double buffering scheme. Let's skip that for now
> > and just update things right after the commit has been submitted to the
> > hardware. This means the information will be properly up to date when the
> > vblank irq handler goes to work. Only if someone ends up querying some
> > vblanky stuff in between the commit and start of vblank may we see a slight
> > discrepancy.
> > 
> > Also this same problem really exists for the DRRS downclocking stuff. But as
> > that is supposed to be more or less transparent to the user, and it only drops
> > to low gear after a long delay
> > (1 sec currently) we probably don't have to worry about it.
> > Any time something is actively submitting updates DRRS will remain in high
> > gear and so the timestamping constants will match the hardware state.
> > 
> > Fixes: e6f29923c048 ("drm/i915: Allow M/N change during fastset on bdw+")
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_crtc.c | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c
> > b/drivers/gpu/drm/i915/display/intel_crtc.c
> > index b79a8834559f..41d381bbb57a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> > @@ -686,6 +686,14 @@ void intel_pipe_update_end(struct intel_crtc_state
> > *new_crtc_state)
> >  	 */
> >  	intel_vrr_send_push(new_crtc_state);
> > 
> > +	/*
> > +	 * Seamless M/N update may need to update frame timings.
> > +	 *
> > +	 * FIXME Should be synchronized with the start of vblank somehow...
> > +	 */
> > +	if (new_crtc_state->seamless_m_n &&
> > intel_crtc_needs_fastset(new_crtc_state))
> > +		intel_crtc_update_active_timings(new_crtc_state);
> > +
> Hi Ville,
> 
> changes LGTM. Although have a question, are we suspecting any timing param changes after Push bit is sent ?

Push is only used with VRR, at which points the real timings
can change of course as the hw terminates the vblank early.
But our notion of active timings will not change (they've already
been correctly set up for VRR when we enabled VRR).

> 
> Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> 
> Thanks
> >  	local_irq_enable();
> > 
> >  	if (intel_vgpu_active(dev_priv))
> > --
> > 2.39.2
> 

-- 
Ville Syrjälä
Intel
