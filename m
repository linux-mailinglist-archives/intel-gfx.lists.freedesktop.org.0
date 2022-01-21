Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E0BF84962D8
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jan 2022 17:33:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE29710ECF9;
	Fri, 21 Jan 2022 16:33:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0242310ECF7
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jan 2022 16:33:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642782795; x=1674318795;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ASlSoBO9KS0LUQ2vpcqLfJWjSniSRU/4kmQgdSAO9q8=;
 b=Zo08QAz6d0JohJyuRACoBxV4WG+bLdyfnwGPGcFrDDWE2FEjcKKZ+38U
 VyXAYAs3EJNhHTcUtZQY+EmeLoL4r7kLuYRCfyVMV9WZ6Zf6RxpEzgQgJ
 ldnOcjjem7q18I3x8Uywq8XVKVDFQYgDtk6zJK3FR+3eFiJ5y4/bOkVVF
 P4Te+NMpKFfzu8rP/Fuq5DhqnlX1LIUYVlAaAtZsRCBRqI/OD1iBLDjWP
 veXHz5thkA5Qr0qbl4j0hb5zIR/ElxAUmK3ECQAT0QSbGu1NsDp9Jh0RC
 pU/eMHm1NApiJSDgEFYObtQv+zOo5//21VW3EQlnfZTP60vLX1SgfFT22 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10234"; a="244513357"
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="244513357"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 08:33:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="478297306"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by orsmga006.jf.intel.com with SMTP; 21 Jan 2022 08:33:12 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 21 Jan 2022 18:33:11 +0200
Date: Fri, 21 Jan 2022 18:33:11 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YergRwtwyJpcHFZ1@intel.com>
References: <20220121130710.10382-1-ville.syrjala@linux.intel.com>
 <87y2392nky.fsf@intel.com> <YerXbIfgE6s7Sf4K@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YerXbIfgE6s7Sf4K@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Reject bigjoiner if the pipe
 doesn't support it
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

On Fri, Jan 21, 2022 at 05:55:24PM +0200, Ville Syrjälä wrote:
> On Fri, Jan 21, 2022 at 04:03:09PM +0200, Jani Nikula wrote:
> > On Fri, 21 Jan 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > >
> > > Check that our crtc can in fact be the bigjoiner master before
> > > we let the modeset proceed with bigjoiner enabled.
> > >
> > > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c | 16 ++++++++++++++++
> > >  1 file changed, 16 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > > index 0964b2403e2d..36e547bd0cbe 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -4102,6 +4102,14 @@ static u8 bigjoiner_pipes(struct drm_i915_private *i915)
> > >  		return 0;
> > >  }
> > >  
> > > +static u8 bigjoiner_master_pipes(struct drm_i915_private *i915)
> > > +{
> > > +	u8 pipes = bigjoiner_pipes(i915);
> > > +
> > > +	/* last pipe can not be master */
> > > +	return pipes & (pipes >> 1);
> > > +}
> > > +
> > >  static bool transcoder_ddi_func_is_enabled(struct drm_i915_private *dev_priv,
> > >  					   enum transcoder cpu_transcoder)
> > >  {
> > > @@ -7600,6 +7608,7 @@ static int intel_atomic_check_bigjoiner(struct intel_atomic_state *state,
> > >  					struct intel_crtc_state *old_crtc_state,
> > >  					struct intel_crtc_state *new_crtc_state)
> > >  {
> > > +	struct drm_i915_private *i915 = to_i915(state->base.dev);
> > >  	struct intel_crtc_state *slave_crtc_state, *master_crtc_state;
> > >  	struct intel_crtc *slave_crtc, *master_crtc;
> > >  
> > > @@ -7615,6 +7624,13 @@ static int intel_atomic_check_bigjoiner(struct intel_atomic_state *state,
> > >  	if (!new_crtc_state->bigjoiner)
> > >  		return 0;
> > >  
> > > +	if ((bigjoiner_master_pipes(i915) & BIT(crtc->pipe)) == 0) {
> > 
> > Feels like the check should be in
> > intel_dsc_get_bigjoiner_{secondary,primary}.
> 
> The master pipe is selected by userspace. intel_dsc_get_bigjoiner_primary()
> is not relevant here.

Hmm. I guess the intel_dsc_get_bigjoiner_secondary()->NULL is
in fact sufficient on current hardware since only pipe A can
be non-joinable, and the dsc code already rejects the transcoder A
case. Although it only claims to do that due to it not supporting
dsc, but luckily that happens to be the same thing as no-joiner since
there is no uncompressed joiner either.

But to be 100% clear should probably do something along the lines
proposed here. I'm actually think we nuke all these crtc pointers/etc.
and just go for some kind of pipe bitmask based approach everywhere.
So this probaly needs a bit more through all around.

-- 
Ville Syrjälä
Intel
