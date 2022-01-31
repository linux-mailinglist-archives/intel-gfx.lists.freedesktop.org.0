Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 655AC4A4E4D
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Jan 2022 19:30:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C009E10E2C8;
	Mon, 31 Jan 2022 18:29:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B482810E2C8
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jan 2022 18:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643653798; x=1675189798;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=G5lK1i0v/CdrhwFwat2To7p7mAT3yScDp/Jg1a3T9ts=;
 b=IAbcyjRt9cM5TkU82cs4MqStSNfGpTK5HB7Y6xMnMVMamaYOUYcxD72r
 WRcR2T4awVcjpH9v62EFWOPUxSh/bw/3mzXMgot6mm5ig8ozMPNq0OoL7
 Em/dyz2oMWnhPkxQiR8BeE/xnuqlH3Vbm23xWnrlK6YmBW+ow4TWEIF9x
 VAUldfgyO6ev5LQXxrYJH1UUwnLOJtjk+aMUaOa+7iVNR+M0+O/pd5ru7
 RtV0BDG0zpR/dqdfAt7wLBnUa2qnmBbskf71I1taKPmePvgMgG2716kCV
 TAqTO1V5cEG+u3f0IQWOqftIz+uUU3VqpRfw9wmeh3BkQsy7bFs8XbwKG g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10244"; a="246357134"
X-IronPort-AV: E=Sophos;i="5.88,331,1635231600"; d="scan'208";a="246357134"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2022 10:29:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,331,1635231600"; d="scan'208";a="675819060"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga001.fm.intel.com with SMTP; 31 Jan 2022 10:29:33 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 31 Jan 2022 20:29:32 +0200
Date: Mon, 31 Jan 2022 20:29:32 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YfgqjI3K0Vq6vjND@intel.com>
References: <20220128103757.22461-1-ville.syrjala@linux.intel.com>
 <20220128103757.22461-7-ville.syrjala@linux.intel.com>
 <87tudkug37.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87tudkug37.fsf@intel.com>
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

On Mon, Jan 31, 2022 at 04:37:00PM +0200, Jani Nikula wrote:
> > @@ -2508,15 +2509,16 @@ static void i9xx_crtc_enable(struct intel_atomic_state *state,
> >  	const struct intel_crtc_state *new_crtc_state =
> >  		intel_atomic_get_new_crtc_state(state, crtc);
> >  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> > +	enum transcoder cpu_transcoder = new_crtc_state->cpu_transcoder;
> >  	enum pipe pipe = crtc->pipe;
> >  
> >  	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
> >  		return;
> >  
> >  	if (intel_crtc_has_dp_encoder(new_crtc_state)) {
> > -		intel_cpu_transcoder_set_m1_n1(new_crtc_state,
> > +		intel_cpu_transcoder_set_m1_n1(crtc, cpu_transcoder,
> >  					       &new_crtc_state->dp_m_n);
> > -		intel_cpu_transcoder_set_m2_n2(new_crtc_state,
> > +		intel_cpu_transcoder_set_m1_n1(crtc, cpu_transcoder,
> 
> m1_n1 copy paste fail?

Yep. I guess we don't have g4x+DP in CI so this went unnoticed. I'll
give it a quick smoke test on my ctg+DP to make sure nothing else
slipped through.

-- 
Ville Syrjälä
Intel
