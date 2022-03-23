Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B19CA4E590A
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Mar 2022 20:19:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B56D310E0EC;
	Wed, 23 Mar 2022 19:19:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 895DA10E0EC
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Mar 2022 19:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648063145; x=1679599145;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=mNuPx8yh+QuxjiBBL4C0QLTK2ghngdOW5+s5AjpBU/g=;
 b=jpY8ZrQmfBoKsdlQorE04cATD9azscu7ybiI6aJaMJIlvgRPfWpgyIId
 nyj3wmYiGZwF/smusxt7GmeB+vSoItEa1ja2eJ7e+nMGHU5udFh7RTBb5
 YE6RXgXcBsME0DqdL+oTA3MgGIwUJFbD2JiDLKve32WZUUb38UhMSp6fd
 UgyuHrCNusu376sa5N8q9Km+OqaLDE7SMrYUzsYRUFIGfet0874cJcb9o
 PBq1dpCzbh2zXOSkXETmulhS32PJxckLM/JOCsExE240p7OjOoA6NxeBD
 R24Qbb+C2xNj27zBlOrhh05yF3FuSIWurB6S2YJ15+kDzq4sbXedvLmzB g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="257919816"
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="257919816"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2022 12:18:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="693058323"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by fmsmga001.fm.intel.com with SMTP; 23 Mar 2022 12:18:43 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 23 Mar 2022 21:18:42 +0200
Date: Wed, 23 Mar 2022 21:18:42 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Uma Shankar <uma.shankar@intel.com>
Message-ID: <Yjtyktb/iGsSME8G@intel.com>
References: <20220323184522.1359329-1-uma.shankar@intel.com>
 <YjtvRNdgwZChhYqM@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YjtvRNdgwZChhYqM@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Extend DP HDR support to
 hsw+
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

On Wed, Mar 23, 2022 at 09:04:36PM +0200, Ville Syrjälä wrote:
> On Thu, Mar 24, 2022 at 12:15:22AM +0530, Uma Shankar wrote:
> > HSW+ platforms are able to send out HDR Metadata SDP DIP
> > packet as GMP. Hence, extending the support for HDR on DP
> > encoders for the same.
> > 
> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5389
> > Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 9e19165fd175..e10d2c151abf 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -4939,7 +4939,7 @@ intel_dp_add_properties(struct intel_dp *intel_dp, struct drm_connector *connect
> >  		intel_attach_dp_colorspace_property(connector);
> >  	}
> >  
> > -	if (IS_GEMINILAKE(dev_priv) || DISPLAY_VER(dev_priv) >= 11)
> > +	if (IS_HASWELL(dev_priv) || DISPLAY_VER(dev_priv) >= 8)
> 
> CHV does not have this at all, and HSW/BDW don't have it on transcoder EDP.

Actually vlv/chv might have it since the vlv video DIP was supposedly
ripped from ibx. So potentially we could just enable this for all ilk+.
But that would require actual testing, so hsw+ seems like good enough
for now.

> 
> Also if we're going to attach this unconditionally then we should stop
> attaching it again in the LSPCON init path. Or we should skip this one
> when LSPCON is present.
> 
> >  		drm_object_attach_property(&connector->base,
> >  					   connector->dev->mode_config.hdr_output_metadata_property,
> >  					   0);
> > -- 
> > 2.25.1
> 
> -- 
> Ville Syrjälä
> Intel

-- 
Ville Syrjälä
Intel
