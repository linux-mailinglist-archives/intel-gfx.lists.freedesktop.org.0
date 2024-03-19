Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BE9F88046D
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Mar 2024 19:11:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 587D010E499;
	Tue, 19 Mar 2024 18:11:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mSlw9nc0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1884B10E499
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Mar 2024 18:11:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710871896; x=1742407896;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=X0crnYytFbsd8Clx7dU+qTJ/narfbG0arFZKRd0Lkr8=;
 b=mSlw9nc0B94B8x+BwoYGS2JdLOsFdUQjurcUD1ouUxBFdsL5uhbVarOC
 cUiN8zHU3ONMnlH8vBGSrL2HghjDl7JXvav0qT305lJBZBMfoPmN0zKgx
 cwN0j1jx1FmB1DHMzOAst2vMp2YE6EJbxcnzDV249OZSZBMDgNj9QgJHG
 TtEB6zHpPnHCsUwV3UpzDhOY7ZR/RVT/ciKZei32gvJiVh1NiIwgrKHcK
 nC88gskN5OBoSZDuT1wK4MFXISH7cIEYdKWwvBFxnd8Apwl9FV8nM1u0D
 UF3vNbxSLPONijkxir0J04tTZEv1DkYdSrA6FPnhNxLRBZHQS93eLGxPp A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11018"; a="5699202"
X-IronPort-AV: E=Sophos;i="6.07,137,1708416000"; 
   d="scan'208";a="5699202"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2024 11:11:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11018"; a="827782237"
X-IronPort-AV: E=Sophos;i="6.07,137,1708416000"; d="scan'208";a="827782237"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 19 Mar 2024 11:11:30 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 19 Mar 2024 20:11:29 +0200
Date: Tue, 19 Mar 2024 20:11:29 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Subject: Re: [PATCH 1/2] drm/i915/bios: Tolerate devdata==NULL in
 intel_bios_encoder_supports_dp_dual_mode()
Message-ID: <ZfnVUbHNL4lEeinV@intel.com>
References: <20240319092443.15769-1-ville.syrjala@linux.intel.com>
 <87sf0mo9hx.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87sf0mo9hx.fsf@intel.com>
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

On Tue, Mar 19, 2024 at 11:29:14AM +0200, Jani Nikula wrote:
> On Tue, 19 Mar 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > If we have no VBT, or the VBT didn't declare the encoder
> > in question, we won't have the 'devdata' for the encoder.
> > Instead of oopsing just bail early.
> >
> > We won't be able to tell whether the port is DP++ or not,
> > but so be it.
> >
> > Cc: stable@vger.kernel.org
> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/10464
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_bios.c | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> > index c7841b3eede8..c13a98431a7b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bios.c
> > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> > @@ -3458,6 +3458,9 @@ bool intel_bios_encoder_supports_dp_dual_mode(const struct intel_bios_encoder_da
> >  {
> >  	const struct child_device_config *child = &devdata->child;
> 
> The above oopses already.

Nope. It's just taking the address of the thing.

> 
> BR,
> Jani.
> 
> >  
> > +	if (!devdata)
> > +		return false;
> > +
> >  	if (!intel_bios_encoder_supports_dp(devdata) ||
> >  	    !intel_bios_encoder_supports_hdmi(devdata))
> >  		return false;
> 
> -- 
> Jani Nikula, Intel

-- 
Ville Syrjälä
Intel
