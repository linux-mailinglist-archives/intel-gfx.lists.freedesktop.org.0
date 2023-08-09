Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59EF67755D8
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Aug 2023 10:48:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDF8310E40F;
	Wed,  9 Aug 2023 08:48:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BF4F10E409
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Aug 2023 08:48:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691570908; x=1723106908;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=O0RvMcsqz+AN4GSc2qUvnee7pog8LQaFA9gFRXcWNlY=;
 b=Fj81g5h0zgLtnLdYWEcr1mugAhqJpbWynXsSOgMODxtsQbdpVW6LX5r5
 xTep+Sa/Z8Oto/g2T7Pbzo+JyfO6QoVTX9tofD+szladfyN3Zeu6ByLTM
 x2M21c/HR8C11vZ/EiZ733ZM1Ll+3jM1XcJUgG5YxpJiO/Dn134i2FLOH
 SsW6Ml1JMOg7Dt6YBBznH25iH1BfwM2EBUOKXprv6U0H9ukykicc9np5U
 2KxIJG9PD1+TBT2QkrrW/rGmnzuZdkFAwVP5uixZuhygl1Ci9hBgDkok3
 nToXLKCytc/IISTrRZ0E+rl4udNkBoZj8qUN+1R/BQ6V/6PC401BhvCUh Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="369966842"
X-IronPort-AV: E=Sophos;i="6.01,158,1684825200"; d="scan'208";a="369966842"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2023 01:48:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="978288310"
X-IronPort-AV: E=Sophos;i="6.01,158,1684825200"; d="scan'208";a="978288310"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2023 01:48:26 -0700
Date: Wed, 9 Aug 2023 11:48:19 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZNNS02EMPmgLZDBc@intel.com>
References: <20230809082918.18631-1-stanislav.lisovskiy@intel.com>
 <87sf8ssj9r.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87sf8ssj9r.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix mistake in
 intel_modeset_all_pipes condition
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

On Wed, Aug 09, 2023 at 11:38:08AM +0300, Jani Nikula wrote:
> On Wed, 09 Aug 2023, Stanislav Lisovskiy <stanislav.lisovskiy@intel.com> wrote:
> > It is supposed to be "!intel_crtc_needs_modeset" - otherwise,
> > we are active exactly vice versa for active pipes: skipping if modeset
> > is needed and not skipping if not needed.
> 
> If the crtc *already* needs a full modeset, there's no need to force a
> modeset on it.
> 
> BR,
> Jani.

We have curently some issue with that. There are multiple places from where
intel_modeset_all_pipes is called. One is that when we do detect that mbus join
state had changed. All the previous checks indicated that fastset is enough,
however once we detect mbus join state had changed in skl_watermarks.c we call
this function there as well and I think it might act in a wrong way then.

So basically this condition checks whether we need to force a modeset, but not
if we need it, so no crtc's are supposed to escape this?
Could be then that we just calling that whole function there wrongly.

Stan

> 
> >
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index 763ab569d8f32..4b1d7034078ca 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -5439,7 +5439,7 @@ int intel_modeset_all_pipes(struct intel_atomic_state *state,
> >  			return PTR_ERR(crtc_state);
> >  
> >  		if (!crtc_state->hw.active ||
> > -		    intel_crtc_needs_modeset(crtc_state))
> > +		    !intel_crtc_needs_modeset(crtc_state))
> >  			continue;
> >  
> >  		drm_dbg_kms(&dev_priv->drm, "[CRTC:%d:%s] Full modeset due to %s\n",
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
