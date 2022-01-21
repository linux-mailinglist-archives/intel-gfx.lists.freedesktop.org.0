Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E091549626B
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jan 2022 16:55:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3463F10EA3F;
	Fri, 21 Jan 2022 15:55:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E29110EA2E
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jan 2022 15:55:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642780527; x=1674316527;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=nGHVEetIDNAY++BAaKTV6Ai9EaBmvD0uasN68q6iCjU=;
 b=naq+V0lLEyYTkO7efuV71QLCpnxeCUeMyTszMw44xlmprdY39VzFMYg0
 7rOTAFOvbR3jmCgsVG8hFhua0HldEck/F2osWo7EVk0NvQUgTziii9j7h
 qJ4kQnIS0c1/2Hgti8043mYL1SLPxjDJKLT8+b7dSqQF2gy5NCteiTVKz
 BEXYh0wERzFyItD0y8vKCcYnQ09cn91AVP5UiTFtu0M+vZuM3KyY+imVw
 IYsXDYvy41cRvJxyEV9rFIHxWt7P7ygJBfPZ+GQfmb1Kz0zEjVz0y/wWJ
 VmPa/wwln6eSFIp9Eq2zOa6nKHc2QnxOCA/Mb5utI6zRwviRpO3vntoWG A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10233"; a="270104241"
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="270104241"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 07:55:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="579644811"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by fmsmga008.fm.intel.com with SMTP; 21 Jan 2022 07:55:25 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 21 Jan 2022 17:55:24 +0200
Date: Fri, 21 Jan 2022 17:55:24 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YerXbIfgE6s7Sf4K@intel.com>
References: <20220121130710.10382-1-ville.syrjala@linux.intel.com>
 <87y2392nky.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87y2392nky.fsf@intel.com>
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

On Fri, Jan 21, 2022 at 04:03:09PM +0200, Jani Nikula wrote:
> On Fri, 21 Jan 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Check that our crtc can in fact be the bigjoiner master before
> > we let the modeset proceed with bigjoiner enabled.
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 16 ++++++++++++++++
> >  1 file changed, 16 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index 0964b2403e2d..36e547bd0cbe 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -4102,6 +4102,14 @@ static u8 bigjoiner_pipes(struct drm_i915_private *i915)
> >  		return 0;
> >  }
> >  
> > +static u8 bigjoiner_master_pipes(struct drm_i915_private *i915)
> > +{
> > +	u8 pipes = bigjoiner_pipes(i915);
> > +
> > +	/* last pipe can not be master */
> > +	return pipes & (pipes >> 1);
> > +}
> > +
> >  static bool transcoder_ddi_func_is_enabled(struct drm_i915_private *dev_priv,
> >  					   enum transcoder cpu_transcoder)
> >  {
> > @@ -7600,6 +7608,7 @@ static int intel_atomic_check_bigjoiner(struct intel_atomic_state *state,
> >  					struct intel_crtc_state *old_crtc_state,
> >  					struct intel_crtc_state *new_crtc_state)
> >  {
> > +	struct drm_i915_private *i915 = to_i915(state->base.dev);
> >  	struct intel_crtc_state *slave_crtc_state, *master_crtc_state;
> >  	struct intel_crtc *slave_crtc, *master_crtc;
> >  
> > @@ -7615,6 +7624,13 @@ static int intel_atomic_check_bigjoiner(struct intel_atomic_state *state,
> >  	if (!new_crtc_state->bigjoiner)
> >  		return 0;
> >  
> > +	if ((bigjoiner_master_pipes(i915) & BIT(crtc->pipe)) == 0) {
> 
> Feels like the check should be in
> intel_dsc_get_bigjoiner_{secondary,primary}.

The master pipe is selected by userspace. intel_dsc_get_bigjoiner_primary()
is not relevant here.

side note: A lot of that code really should be moved out of intel_vdsc.c
since we also have the uncompressed joiner to consider. Should probably
do a global s/bigjoiner/joiner/ as well since afaik "bigjoiner" refers
specifically to the compressed joiner.

-- 
Ville Syrjälä
Intel
