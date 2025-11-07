Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37634C40211
	for <lists+intel-gfx@lfdr.de>; Fri, 07 Nov 2025 14:33:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E25710EAC2;
	Fri,  7 Nov 2025 13:33:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XUWlZkk3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6D0610EAC1;
 Fri,  7 Nov 2025 13:33:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762522384; x=1794058384;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=6cEx4exg+H6IENUejJJ0g4Gra18SrKuDLTQ+PeY6DPY=;
 b=XUWlZkk3szg/BryephkuPZIJ9APc+5axzxRoZyxkQUq62z13SUy9JzgS
 /q86gPt9Tx3l+YLDQeCja8CVFlG2jxW20BM/XqUWgL1SHxMN8IK7fkd/M
 Cumpp0SFEA7RUs5viAwHPrTxaQ6MpEUmB1GxCGWvBc48+f9XvXsebBAMV
 Yl+12oBohSMLermaP6XhPDMuGwKn/yBqRXuN+zGCyzMTIsdkCAZSfyEoq
 gzZaNnrDQhuMUahW4JNlbwco4tYf08ofUyBTp6d2yxKc4IXw2uB0IHILf
 AOmktKmsJqAKkrPrfOgofSaJztn1V1OR6miFE5f+zOdreDt4KURezpx41 w==;
X-CSE-ConnectionGUID: PjoQDQK/SnW9qYkz58wwmA==
X-CSE-MsgGUID: 3tuiOfPPQ1+Na+q9tTt8mA==
X-IronPort-AV: E=McAfee;i="6800,10657,11605"; a="64825585"
X-IronPort-AV: E=Sophos;i="6.19,286,1754982000"; d="scan'208";a="64825585"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 05:33:04 -0800
X-CSE-ConnectionGUID: kz/cbQFCSxKCZXPekSw1sg==
X-CSE-MsgGUID: m5T4pI1TTRuwcqO2k3ZUmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,286,1754982000"; d="scan'208";a="187985400"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.106])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 05:33:01 -0800
Date: Fri, 7 Nov 2025 15:32:59 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>
Subject: Re: [PATCH] drm/i915/psr: Reject async flips when selective fetch is
 enabled
Message-ID: <aQ31C2bUwiJKJS8N@intel.com>
References: <20251105171015.22234-1-ville.syrjala@linux.intel.com>
 <c4a4be9261eec75201ff5a8dcb8f5da2373a4884.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <c4a4be9261eec75201ff5a8dcb8f5da2373a4884.camel@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Thu, Nov 06, 2025 at 07:13:28AM +0000, Hogander, Jouni wrote:
> On Wed, 2025-11-05 at 19:10 +0200, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > The selective fetch code doesn't handle asycn flips correctly.
> > There is a nonsense check for async flips in
> > intel_psr2_sel_fetch_config_valid() but that only gets called
> > for modesets/fastsets and thus does nothing for async flips.
> > 
> > Currently intel_async_flip_check_hw() is very unhappy as the
> > selective fetch code pulls in planes that are not even async
> > flips capable.
> > 
> > Reject async flips when selective fetch is enabled, until
> > someone fixes this properly (ie. disable selective fetch while
> > async flips are being issued).
> 
> Is it ok to allow psr2 hw tracking?

No idea.

> Not directly related to this patch
> so:
> 
> Reviewed-by: Jouni Högander <jouni.hogander@intel.com>

Ta.

> 
> > 
> > Cc: stable@vger.kernel.org
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 8 ++++++++
> >  drivers/gpu/drm/i915/display/intel_psr.c     | 6 ------
> >  2 files changed, 8 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index 42ec78798666..10583592fefe 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -6020,6 +6020,14 @@ static int intel_async_flip_check_uapi(struct
> > intel_atomic_state *state,
> >  		return -EINVAL;
> >  	}
> >  
> > +	/* FIXME: selective fetch should be disabled for async flips
> > */
> > +	if (new_crtc_state->enable_psr2_sel_fetch) {
> > +		drm_dbg_kms(display->drm,
> > +			    "[CRTC:%d:%s] async flip disallowed with
> > PSR2 selective fetch\n",
> > +			    crtc->base.base.id, crtc->base.name);
> > +		return -EINVAL;
> > +	}
> > +
> >  	for_each_oldnew_intel_plane_in_state(state, plane,
> > old_plane_state,
> >  					     new_plane_state, i) {
> >  		if (plane->pipe != crtc->pipe)
> > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> > b/drivers/gpu/drm/i915/display/intel_psr.c
> > index 05014ffe3ce1..65d77aea9536 100644
> > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > @@ -1296,12 +1296,6 @@ static bool
> > intel_psr2_sel_fetch_config_valid(struct intel_dp *intel_dp,
> >  		return false;
> >  	}
> >  
> > -	if (crtc_state->uapi.async_flip) {
> > -		drm_dbg_kms(display->drm,
> > -			    "PSR2 sel fetch not enabled, async flip
> > enabled\n");
> > -		return false;
> > -	}
> > -
> >  	return crtc_state->enable_psr2_sel_fetch = true;
> >  }
> >  
> 

-- 
Ville Syrjälä
Intel
