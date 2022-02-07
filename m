Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BD824AB5E6
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Feb 2022 08:32:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 337AC10E4F6;
	Mon,  7 Feb 2022 07:32:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 000E110E6B2
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Feb 2022 07:32:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644219162; x=1675755162;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=GXpJuUxFooBSRYOOdHDZScUY0mDKjdsrQ40ZKVBquNs=;
 b=grnFWxN4ENROBLhn2Cgq5kil35yXfmHInV+39WGU6i/ODBV3lxbtI8QS
 eseikM5qIWJ/YN8YEstVYbK+gutWmtcnI4DL2+yGAxALR0gm7CtsLRYcW
 5ZlcwV0mQ004GL3pJyJDF7lo9i2+pYanubBtSvG3izZQW91qmoZCkt/Ni
 Y7JLMnah4z+lrOUuv2obQbRFoX4rLkL/v8Qa4kEX/AlQw/ti94HQ07O1+
 mcqi1D7giuCHBrG5tI8cLKxTnIU9yORBAFj7Hx6IMFhLuVj4LtZL70jdf
 pe8EaGnofoDGWfXFGoj8jw5prwkPU1iGJ4hfKap6FBm2kLocL7u9cBHoq A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10250"; a="248873371"
X-IronPort-AV: E=Sophos;i="5.88,349,1635231600"; d="scan'208";a="248873371"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2022 23:32:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,349,1635231600"; d="scan'208";a="525034906"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga007.jf.intel.com with SMTP; 06 Feb 2022 23:32:39 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 07 Feb 2022 09:32:38 +0200
Date: Mon, 7 Feb 2022 09:32:38 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Navare, Manasi" <manasi.d.navare@intel.com>
Message-ID: <YgDLFmdF7NXZwvQS@intel.com>
References: <20220203183823.22890-5-ville.syrjala@linux.intel.com>
 <20220204072049.1610-1-ville.syrjala@linux.intel.com>
 <20220204205156.GA22898@labuser-Z97X-UD5H>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220204205156.GA22898@labuser-Z97X-UD5H>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 04/10] drm/i915: Clean up the bigjoiner
 state copy logic
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

On Fri, Feb 04, 2022 at 12:52:01PM -0800, Navare, Manasi wrote:
> On Fri, Feb 04, 2022 at 09:20:49AM +0200, Ville Syrjala wrote:
<snip>
> >  static int
> > -copy_bigjoiner_crtc_state(struct intel_crtc_state *crtc_state,
> > -			  const struct intel_crtc_state *from_crtc_state)
> > +copy_bigjoiner_crtc_state_modeset(struct intel_atomic_state *state,
> > +				  struct intel_crtc *slave_crtc)
> >  {
> > +	struct intel_crtc_state *slave_crtc_state =
> > +		intel_atomic_get_new_crtc_state(state, slave_crtc);
> > +	struct intel_crtc *master_crtc = intel_master_crtc(slave_crtc_state);
> > +	const struct intel_crtc_state *master_crtc_state =
> > +		intel_atomic_get_new_crtc_state(state, master_crtc);
> >  	struct intel_crtc_state *saved_state;
> >  
> > -	saved_state = kmemdup(from_crtc_state, sizeof(*saved_state), GFP_KERNEL);
> > +	saved_state = kmemdup(master_crtc_state, sizeof(*saved_state), GFP_KERNEL);
> >  	if (!saved_state)
> >  		return -ENOMEM;
> >  
> > -	saved_state->uapi = crtc_state->uapi;
> > -	saved_state->scaler_state = crtc_state->scaler_state;
> > -	saved_state->shared_dpll = crtc_state->shared_dpll;
> > -	saved_state->dpll_hw_state = crtc_state->dpll_hw_state;
> > -	saved_state->crc_enabled = crtc_state->crc_enabled;
> > +	/* preserve some things from the slave's original crtc state */
> > +	saved_state->uapi = slave_crtc_state->uapi;
> > +	saved_state->scaler_state = slave_crtc_state->scaler_state;
> > +	saved_state->shared_dpll = slave_crtc_state->shared_dpll;
> > +	saved_state->dpll_hw_state = slave_crtc_state->dpll_hw_state;
> > +	saved_state->crc_enabled = slave_crtc_state->crc_enabled;
> 
> Slave crtc state here not set at all , so why do we preserve the things from slave's original crtc state and how we
> decide on what all to preserve?

It's the same junk as in intel_crtc_prepare_cleared_state(). There's
a comment there IIRC that explains some of the historical baggage here.
We should fix this mess, but it would require some actual thought.

-- 
Ville Syrjälä
Intel
