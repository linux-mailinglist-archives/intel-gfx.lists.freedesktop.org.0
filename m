Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFC70925FAC
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2024 14:07:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86F0C10E7BC;
	Wed,  3 Jul 2024 12:07:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="alYpLIJo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DD7A10E7BC
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2024 12:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720008429; x=1751544429;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=/hgS2QpF23q+lZz5dPvBFaOqc7MhjVBj0yXTFCMautA=;
 b=alYpLIJog9mppBEfQTSrLe65vkcMldQIULQkzmEX7D4Kxa3NKTIFTUKK
 EqoATHQIBgEIlOF8gXzEBsU6JhZGGmKgsF4t4PNIzG3mYFd1QtwLrrEcd
 wYdXvJWX+eVNE0u5lqXMPvqN7on5Nhf3NzXW0aAUm5HYmcxnBEyPFQTrI
 jlBOHM8ehfNI1n09gNwo1WfCCOzUtYtrh9aoAzxMQR2LS0xNzLj9Ani7H
 XTn3K0gDbY5pfPoLt53uQ25IJQXM4lsuHRKYQSwMDBKQ7tcZGwJdsdunt
 IXhYyQ6aSER6bsRZ86kznmBdweb+czerr6l53d+6InHJBLnXg6qATgX1D g==;
X-CSE-ConnectionGUID: KYw20tjIQrGJFgJFbSP7zQ==
X-CSE-MsgGUID: zxVwy6VgTGOjaiIlNwQmuQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11121"; a="17069351"
X-IronPort-AV: E=Sophos;i="6.09,182,1716274800"; d="scan'208";a="17069351"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2024 05:07:08 -0700
X-CSE-ConnectionGUID: cOIOaqnwQ8SQKEFZvfhK8Q==
X-CSE-MsgGUID: UiFOfAobRyayIFHYlzUFVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,182,1716274800"; d="scan'208";a="46210429"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 03 Jul 2024 05:07:05 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 03 Jul 2024 15:07:04 +0300
Date: Wed, 3 Jul 2024 15:07:04 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 09/14] drm/i915/dsb: Introduce
 intel_dsb_wait_scanline_{in, out}()
Message-ID: <ZoU-6IcMrtXa3FC_@intel.com>
References: <20240624191032.27333-1-ville.syrjala@linux.intel.com>
 <20240624191032.27333-10-ville.syrjala@linux.intel.com>
 <PH7PR11MB59813B125C1B84675C19F4B7F9DD2@PH7PR11MB5981.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <PH7PR11MB59813B125C1B84675C19F4B7F9DD2@PH7PR11MB5981.namprd11.prod.outlook.com>
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

On Wed, Jul 03, 2024 at 11:37:33AM +0000, Manna, Animesh wrote:
> 
> 
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ville
> > Syrjala
> > Sent: Tuesday, June 25, 2024 12:40 AM
> > To: intel-gfx@lists.freedesktop.org
> > Subject: [PATCH 09/14] drm/i915/dsb: Introduce
> > intel_dsb_wait_scanline_{in, out}()
> > 
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Add functions to emit a DSB scanline window wait instructions.
> > We can either wait for the scanline to be IN the window or OUT of the
> > window.
> > 
> > The hardware doesn't handle wraparound so we must manually deal with it
> > by swapping the IN range to the inverse OUT range, or vice versa.
> > 
> > Also add a bit of paranoia to catch the edge case of waiting for the entire
> > frame. That doesn't make sense since an IN wait would be a nop, and an
> > OUT wait would imply waiting forever. Most of the time this also results in
> > both scanline ranges (original and inverted) to have lower=upper+1 which is
> > nonsense from the hw POV.
> > 
> > For now we are only handling the case where the scanline wait happens prior
> > to latching the double buffered registers during the commit (which might
> > change the timings due to LRR/VRR/etc.)
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dsb.c | 73 ++++++++++++++++++++++++
> > drivers/gpu/drm/i915/display/intel_dsb.h |  6 ++
> >  2 files changed, 79 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c
> > b/drivers/gpu/drm/i915/display/intel_dsb.c
> > index 81937908c798..092cf082ac39 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> > @@ -362,6 +362,79 @@ void intel_dsb_nonpost_end(struct intel_dsb *dsb)
> >  	intel_dsb_noop(dsb, 4);
> >  }
> > 
> > +static void intel_dsb_emit_wait_dsl(struct intel_dsb *dsb,
> > +				    u32 opcode, int lower, int upper) {
> > +	u64 window = ((u64)upper << DSB_SCANLINE_UPPER_SHIFT) |
> > +		((u64)lower << DSB_SCANLINE_LOWER_SHIFT);
> > +
> > +	intel_dsb_emit(dsb, lower_32_bits(window),
> > +		       (opcode << DSB_OPCODE_SHIFT) |
> > +		       upper_32_bits(window));
> > +}
> > +
> > +static void intel_dsb_wait_dsl(struct intel_atomic_state *state,
> > +			       struct intel_dsb *dsb,
> > +			       int lower_in, int upper_in,
> 
> Lower/upper keyword maybe confusing for during intel_dsb_wait_scanline_out(), maybe good to have name like in_start and in_end, similarly out_start and out_end.

lower/upper are what bspec calls them. I decided to stick to that
terminology in lower level parts of the code where we actually
deal with hw units. I used start/end in the user facing api to
make it a bit clearer that having start > end is perfectly
valid.

> 
> > +			       int lower_out, int upper_out) {
> > +	struct intel_crtc *crtc = dsb->crtc;
> > +
> > +	lower_in = dsb_scanline_to_hw(state, crtc, lower_in);
> > +	upper_in = dsb_scanline_to_hw(state, crtc, upper_in);
> > +
> > +	lower_out = dsb_scanline_to_hw(state, crtc, lower_out);
> > +	upper_out = dsb_scanline_to_hw(state, crtc, upper_out);
> 
> If lower_in > upper_in, then calculation for lower_out and upper_out is not needed. Even before calling dsb_scanline_to_hw() we can compare and check if it is for scanline_in or scanline_out... rt?

No. The addition of scanline_offset by dsb_scanline_to_hw()
can cause the numbers to wrap around, which would make the
early comparison completely meaningless. So we can only do
that comparison once the scanlines are in hw units.

And we don't want to convert to hw units earlier because then
the +-1 for the inverted range could again cause the numbers
to go out of bounds (which would need %vtotal to correct a
second time) and thus wrap around.

> 
> Regards,
> Animesh
> > +
> > +	if (upper_in >= lower_in)
> > +		intel_dsb_emit_wait_dsl(dsb, DSB_OPCODE_WAIT_DSL_IN,
> > +					lower_in, upper_in);
> > +	else if (upper_out >= lower_out)
> > +		intel_dsb_emit_wait_dsl(dsb, DSB_OPCODE_WAIT_DSL_OUT,
> > +					lower_out, upper_out);
> > +	else
> > +		drm_WARN_ON(crtc->base.dev, 1); /* assert_dsl_ok() should
> > have caught
> > +it already */ }
> > +
> > +static void assert_dsl_ok(struct intel_atomic_state *state,
> > +			  struct intel_dsb *dsb,
> > +			  int start, int end)
> > +{
> > +	struct intel_crtc *crtc = dsb->crtc;
> > +	int vtotal = dsb_vtotal(state, crtc);
> > +
> > +	/*
> > +	 * Waiting for the entire frame doesn't make sense,
> > +	 * (IN==don't wait, OUT=wait forever).
> > +	 */
> > +	drm_WARN(crtc->base.dev, (end - start + vtotal) % vtotal == vtotal -
> > 1,
> > +		 "[CRTC:%d:%s] DSB %d bad scanline window wait: %d-%d
> > (vt=%d)\n",
> > +		 crtc->base.base.id, crtc->base.name, dsb->id,
> > +		 start, end, vtotal);
> > +}
> > +
> > +void intel_dsb_wait_scanline_in(struct intel_atomic_state *state,
> > +				struct intel_dsb *dsb,
> > +				int start, int end)
> > +{
> > +	assert_dsl_ok(state, dsb, start, end);
> > +
> > +	intel_dsb_wait_dsl(state, dsb,
> > +			   start, end,
> > +			   end + 1, start - 1);
> > +}
> > +
> > +void intel_dsb_wait_scanline_out(struct intel_atomic_state *state,
> > +				 struct intel_dsb *dsb,
> > +				 int start, int end)
> > +{
> > +	assert_dsl_ok(state, dsb, start, end);
> > +
> > +	intel_dsb_wait_dsl(state, dsb,
> > +			   end + 1, start - 1,
> > +			   start, end);
> > +}
> > +
> >  static void intel_dsb_align_tail(struct intel_dsb *dsb)  {
> >  	u32 aligned_tail, tail;
> > diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h
> > b/drivers/gpu/drm/i915/display/intel_dsb.h
> > index 84fc2f8434d1..d0737cefb393 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dsb.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dsb.h
> > @@ -39,6 +39,12 @@ void intel_dsb_reg_write_masked(struct intel_dsb
> > *dsb,  void intel_dsb_noop(struct intel_dsb *dsb, int count);  void
> > intel_dsb_nonpost_start(struct intel_dsb *dsb);  void
> > intel_dsb_nonpost_end(struct intel_dsb *dsb);
> > +void intel_dsb_wait_scanline_in(struct intel_atomic_state *state,
> > +				struct intel_dsb *dsb,
> > +				int lower, int upper);
> > +void intel_dsb_wait_scanline_out(struct intel_atomic_state *state,
> > +				 struct intel_dsb *dsb,
> > +				 int lower, int upper);
> > 
> >  void intel_dsb_commit(struct intel_dsb *dsb,
> >  		      bool wait_for_vblank);
> > --
> > 2.44.2
> 

-- 
Ville Syrjälä
Intel
