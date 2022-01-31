Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E28A94A4EA9
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Jan 2022 19:42:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F25E410E16C;
	Mon, 31 Jan 2022 18:42:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 941AA10E16C
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jan 2022 18:42:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643654565; x=1675190565;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=a1JLsHqk7GDPvRq9gpjjnRbGcbmz4wHtcm4kRTAUjyc=;
 b=UzGqPLsas8b1dOzXL0LtUiNSerC23MExUJur9BvwwySv88QYTBHj2eYx
 SBbpD8JYlSCjrytrSOaKQQTNsAFN9DBxWQjS2eZotcNf3jSQZS7BCXEM6
 aKYcdV+P18KmGZJpZTWdxWTZII/M9mKHpQWVH/JgTcV13eeCBKr4tWf6Y
 0fYiZZn4vT0Ml+gjnobXnNQzstaN8e5L+FAqc8RpPVw9WOjXpApaFGnrl
 H7PsHBPi7OTY1k1Fjqkz0aNpZhEEKw2RZQs9f5mo/8zd2tt1eR/yqJ0Ry
 IEpiMZJyq7k94r7kupzUeTEwbsrWCKT1mYOWXCD7kb/Dt2KQT57FFRudR Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10244"; a="231096558"
X-IronPort-AV: E=Sophos;i="5.88,331,1635231600"; d="scan'208";a="231096558"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2022 10:42:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,331,1635231600"; d="scan'208";a="522757219"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga007.jf.intel.com with SMTP; 31 Jan 2022 10:42:43 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 31 Jan 2022 20:42:42 +0200
Date: Mon, 31 Jan 2022 20:42:42 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Yfgtok0HeCJoN+/z@intel.com>
References: <20220128103757.22461-1-ville.syrjala@linux.intel.com>
 <20220128103757.22461-7-ville.syrjala@linux.intel.com>
 <87tudkug37.fsf@intel.com> <YfgqjI3K0Vq6vjND@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YfgqjI3K0Vq6vjND@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 06/17] drm/i915: Pass crtc+cpu_transcoder
 to intel_cpu_transcoder_set_m_n()
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

On Mon, Jan 31, 2022 at 08:29:32PM +0200, Ville Syrjälä wrote:
> On Mon, Jan 31, 2022 at 04:37:00PM +0200, Jani Nikula wrote:
> > > @@ -2508,15 +2509,16 @@ static void i9xx_crtc_enable(struct intel_atomic_state *state,
> > >  	const struct intel_crtc_state *new_crtc_state =
> > >  		intel_atomic_get_new_crtc_state(state, crtc);
> > >  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> > > +	enum transcoder cpu_transcoder = new_crtc_state->cpu_transcoder;
> > >  	enum pipe pipe = crtc->pipe;
> > >  
> > >  	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
> > >  		return;
> > >  
> > >  	if (intel_crtc_has_dp_encoder(new_crtc_state)) {
> > > -		intel_cpu_transcoder_set_m1_n1(new_crtc_state,
> > > +		intel_cpu_transcoder_set_m1_n1(crtc, cpu_transcoder,
> > >  					       &new_crtc_state->dp_m_n);
> > > -		intel_cpu_transcoder_set_m2_n2(new_crtc_state,
> > > +		intel_cpu_transcoder_set_m1_n1(crtc, cpu_transcoder,
> > 
> > m1_n1 copy paste fail?
> 
> Yep. I guess we don't have g4x+DP in CI so this went unnoticed.

And it wouldn't have helped to have one since the introduction of 
i9xx_configure_cpu_transcoder() in pathc 9 already fixed this.
So the only way to hit it would have been to bisect through the
series.

-- 
Ville Syrjälä
Intel
