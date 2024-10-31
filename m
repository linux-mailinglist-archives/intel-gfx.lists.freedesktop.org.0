Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC5F79B79DC
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2024 12:40:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8477F10E83A;
	Thu, 31 Oct 2024 11:40:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ypqvo8sN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05C7F10E83A
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2024 11:40:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730374818; x=1761910818;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=zm+5X6JuCyELW3cjIn/6nYsrAZB0OIG3nT39x2aB1HA=;
 b=Ypqvo8sNLIat2frTNs79lC58cfrUbQ3GngAigIYXs+vsP3WtQ5AwZCcC
 YHwyfwserfMQ/cf68qeHsr85Wj+QYJ3a8NfKIiA4jrxoHS5m+IErAg6Zi
 ePHbuoi+xLUK3kjAdpaQpcPHJvRtWIe2qTiaM4Gw7BkL5+l8UeU859huu
 oIEZzp3HWYLlBRDgSIHKQcWpxVe0Ff16Xh+c0khU5onGIF9HI5VDkm8bk
 BORmancDivaTmfZOE2LDDVBTBWjMJhFu3/TpPsBmowSUDWPGUa17xqmPF
 KCO2cxBgCjutsR0B7mjvtXS54qR2/e8B+dOaw23nP/kTWzP0dO3qpSmKk g==;
X-CSE-ConnectionGUID: 4d1GkaR7S7mz04tHjg4dsg==
X-CSE-MsgGUID: FqnIPWYDSgaxevDbEEUXOw==
X-IronPort-AV: E=McAfee;i="6700,10204,11241"; a="40682287"
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="40682287"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 04:40:18 -0700
X-CSE-ConnectionGUID: 5QRpUAZhTkS25bngZizi6g==
X-CSE-MsgGUID: xlrB/TTdQM6E0ExTkNHvMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="82724793"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 04:40:17 -0700
Date: Thu, 31 Oct 2024 13:40:49 +0200
From: Imre Deak <imre.deak@intel.com>
To: Luca Coelho <luca@coelho.fi>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v2 2/5] drm/i915/adlp+/dp_mst: Align slave transcoder
 enabling with spec wrt. DDI function
Message-ID: <ZyNswWHJH0b-YrTR@ideak-desk.fi.intel.com>
References: <20241030192313.4030617-1-imre.deak@intel.com>
 <20241030192313.4030617-3-imre.deak@intel.com>
 <29823959a085854bfa6208e078199eb9e6934c50.camel@coelho.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <29823959a085854bfa6208e078199eb9e6934c50.camel@coelho.fi>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Oct 31, 2024 at 12:49:22PM +0200, Luca Coelho wrote:
> On Wed, 2024-10-30 at 21:23 +0200, Imre Deak wrote:
> > On ADLP+ during modeset enabling configure the DDI function without
> > enabling it for MST slave transcoders before programming the data and
> > link M/N values. The DDI function gets enabled separately later in the
> > transcoder enabling sequence.
> > 
> > Align the code with the spec based on the above.
> > 
> > v2: Move this patch earlier in the series, addressing the DP2
> >     config fixes for all ADLP+ platforms later.
> > 
> > Bspec: 55424, 54128, 65448, 68849
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp_mst.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > index 7c16406883594..bf264bd1881b5 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > @@ -1224,7 +1224,7 @@ static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
> >  	if (DISPLAY_VER(dev_priv) < 12 || !first_mst_stream)
> >  		intel_ddi_enable_transcoder_clock(encoder, pipe_config);
> >  
> > -	if (DISPLAY_VER(dev_priv) >= 30 && !first_mst_stream)
> > +	if (DISPLAY_VER(dev_priv) >= 13 && !first_mst_stream)
> >  		intel_ddi_config_transcoder_func(encoder, pipe_config);
> >  
> >  	intel_dsc_dp_pps_write(&dig_port->base, pipe_config);
> 
> You are essentially modifying the first patch in the series here, is it
> because you want to keep the ADLP+ change separate?

Yes, the first patch clearly fixes an issue on PTL. On other ADLP+
platforms this (and the follow-up DP2 config changes) is just what bspec
says to do, the lack of which never having caused a problem. Based on
all this I wanted to keep the PTL fix separate and first, making it
easier to revert any of the other changes if they caused a problem
(turning out that the spec was incorrect).

> In that case, wouldn't it be better to do this first so the ADLP+
> change could be more easily backported?

If that would be required - I'd only backport if there was an evidence
that it fixes things - I'd either backport it along with the first patch
as a dependency, or just send this one patch separately rebased on the
stable trees (which would be the first two patches combined).

> IMHO it's better to first fix stuff for older HW that is not correct
> and then add new changes for new HW on top of that.

Agreed for actual fixes, but in this case the only clear fix is the
first one, the rest being just alignment with the spec (and as such
better kept them easy to revert).

> --
> Cheers,
> Luca.
