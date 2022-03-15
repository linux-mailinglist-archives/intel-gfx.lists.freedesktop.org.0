Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A60CC4DA243
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 19:23:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3828D10E141;
	Tue, 15 Mar 2022 18:23:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1061110E141
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Mar 2022 18:23:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647368604; x=1678904604;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=8aDwoz9laovZQyNLS3VPgpYTPXuSXjcBdJ0XIMUzo6Y=;
 b=RnQLtx0gHktMei6z58X6cj5hV8R4aOEd4RuL6SyXCFfJbF8M+iRPz1eX
 efPK9rDh+yNTIPZU3I9J0gPnvNqOezK6J2/fz5qotTfEfw23PM+sl9AqZ
 JIh66AgmrFcNyrHUPGPhncXyKBvcExQeltu/nUqsvOW5Uz0rSQJ1fZBkV
 PWYditrtd1Ov9Rr0cIKwsjnzEBkS9o+0RNu9d2CVKQf6byPLmq9U2aZvo
 +5w7+M17Rg90Bsgz7uUjjCZoixcsurO6Ppl0+bRe6X7HmmtB2MBQSsFo3
 IKwZy2iuCElG7gaFAq6FYMqZ3VTDfKAZdmej4QtiQ5dZFN4qxuwGMMqj6 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="281166910"
X-IronPort-AV: E=Sophos;i="5.90,184,1643702400"; d="scan'208";a="281166910"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 11:23:22 -0700
X-IronPort-AV: E=Sophos;i="5.90,184,1643702400"; d="scan'208";a="512716765"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 11:23:22 -0700
Date: Tue, 15 Mar 2022 11:24:35 -0700
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220315182435.GA32032@labuser-Z97X-UD5H>
References: <20220315132752.11849-1-ville.syrjala@linux.intel.com>
 <20220315132752.11849-9-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220315132752.11849-9-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 8/9] drm/i915: Deal with bigjoiner vs. DRRS
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

On Tue, Mar 15, 2022 at 03:27:51PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> DRRS operates on transcoder level, so we should only poke at it from
> the master crtc rather than letting every joined pipe give it
> potentially conflicting input.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Looks good

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_drrs.c | 16 +++++++++++++++-
>  1 file changed, 15 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
> index 44c9af8f8b9b..9a341ab1a848 100644
> --- a/drivers/gpu/drm/i915/display/intel_drrs.c
> +++ b/drivers/gpu/drm/i915/display/intel_drrs.c
> @@ -176,8 +176,16 @@ static void intel_drrs_schedule_work(struct intel_crtc *crtc)
>  static unsigned int intel_drrs_frontbuffer_bits(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> +	unsigned int frontbuffer_bits;
>  
> -	return INTEL_FRONTBUFFER_ALL_MASK(crtc->pipe);
> +	frontbuffer_bits = INTEL_FRONTBUFFER_ALL_MASK(crtc->pipe);
> +
> +	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc,
> +					 crtc_state->bigjoiner_pipes)
> +		frontbuffer_bits |= INTEL_FRONTBUFFER_ALL_MASK(crtc->pipe);
> +
> +	return frontbuffer_bits;
>  }
>  
>  /**
> @@ -196,6 +204,9 @@ void intel_drrs_enable(const struct intel_crtc_state *crtc_state)
>  	if (!crtc_state->hw.active)
>  		return;
>  
> +	if (intel_crtc_is_bigjoiner_slave(crtc_state))
> +		return;
> +
>  	mutex_lock(&crtc->drrs.mutex);
>  
>  	crtc->drrs.cpu_transcoder = crtc_state->cpu_transcoder;
> @@ -223,6 +234,9 @@ void intel_drrs_disable(const struct intel_crtc_state *old_crtc_state)
>  	if (!old_crtc_state->hw.active)
>  		return;
>  
> +	if (intel_crtc_is_bigjoiner_slave(old_crtc_state))
> +		return;
> +
>  	mutex_lock(&crtc->drrs.mutex);
>  
>  	if (intel_drrs_is_enabled(crtc))
> -- 
> 2.34.1
> 
