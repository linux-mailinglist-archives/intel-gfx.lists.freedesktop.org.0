Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B1AE66AE1F2
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Mar 2023 15:13:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E3B310E06D;
	Tue,  7 Mar 2023 14:13:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F8C310E4AA
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Mar 2023 14:13:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678198423; x=1709734423;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=FQC/JdtUEA2R4aJECsXobFlqmvxL6mZkDtXwDLHdK/E=;
 b=kMaSNZz0xLBj2hX+91Eua1MmM+3MfXOkj9QcpXfcVD0sfJVKLzAFTbYD
 ZvBxpwy7j7LcTaLXoJREX94dUsVoUPjuyLUMkuVitPqR0KfMbjIB7TeTD
 EUXIhQrLOlZ0B/Jh9EXa0dbsYqtyM4xieiuW20mYtAypTxK3bKcPOpg8M
 igjFbMHqo6yBQC/fprb47CLp1bjc6tEwrroUHjGOJJ93Tv8adYUX25X7d
 WJUisnjYynWWG8PTOseSSCJS5w6O0LSl0863AcjXu1EbmJYP7UGh5autx
 kJ8SbtVzALCOs5SUEDQGmba0B0vii58rKWlHG1CxltMyvPOREt9vIW2KV w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="324162761"
X-IronPort-AV: E=Sophos;i="5.98,241,1673942400"; d="scan'208";a="324162761"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2023 06:13:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="676582897"
X-IronPort-AV: E=Sophos;i="5.98,241,1673942400"; d="scan'208";a="676582897"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 07 Mar 2023 06:13:40 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 07 Mar 2023 16:13:39 +0200
Date: Tue, 7 Mar 2023 16:13:39 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <ZAdGk27VfxYMLf9u@intel.com>
References: <20230306152841.6563-1-ville.syrjala@linux.intel.com>
 <87cz5ksqmn.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87cz5ksqmn.fsf@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 07, 2023 at 02:16:48PM +0200, Jani Nikula wrote:
> On Mon, 06 Mar 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > When we change the M/N values seamlessly during a fastset we should
> > also update the vblank timestamping stuff to make sure the vblank
> > timestamp corrections/guesstimations come out exact.
> >
> > Note that only crtc_clock and framedur_ns can actually end up
> > changing here during fastsets. Everything else we touch can
> > only change during full modesets.
> >
> > Technically we should try to do this exactly at the start of
> > vblank, but that would require some kind of double buffering
> > scheme. Let's skip that for now and just update things right
> > after the commit has been submitted to the hardware. This
> > means the information will be properly up to date when the
> > vblank irq handler goes to work. Only if someone ends up
> > querying some vblanky stuff in between the commit and start
> > of vblank may we see a slight discrepancy.
> >
> > Also this same problem really exists for the DRRS downclocking
> > stuff. But as that is supposed to be more or less transparent
> > to the user, and it only drops to low gear after a long delay
> > (1 sec currently) we probably don't have to worry about it.
> > Any time something is actively submitting updates DRRS will
> > remain in high gear and so the timestamping constants will
> > match the hardware state.
> >
> > Fixes: e6f29923c048 ("drm/i915: Allow M/N change during fastset on bdw+")
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_crtc.c | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
> > index b79a8834559f..41d381bbb57a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> > @@ -686,6 +686,14 @@ void intel_pipe_update_end(struct intel_crtc_state *new_crtc_state)
> >  	 */
> >  	intel_vrr_send_push(new_crtc_state);
> >  
> > +	/*
> > +	 * Seamless M/N update may need to update frame timings.
> > +	 *
> > +	 * FIXME Should be synchronized with the start of vblank somehow...
> > +	 */
> > +	if (new_crtc_state->seamless_m_n && intel_crtc_needs_fastset(new_crtc_state))
> > +		intel_crtc_update_active_timings(new_crtc_state);
> 
> Side note, do we ensure somewhere that intel_crtc_needs_modeset() &&
> intel_crtc_needs_fastset() is never true?

commit 7de5b6b54630 ("drm/i915: Don't flag both full modeset and fastset
at the same time")

> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Thanks

> 
> > +
> >  	local_irq_enable();
> >  
> >  	if (intel_vgpu_active(dev_priv))
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Ville Syrjälä
Intel
