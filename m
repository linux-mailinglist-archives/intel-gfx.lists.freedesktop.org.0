Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2333A69E2D4
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Feb 2023 15:59:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18BB610E329;
	Tue, 21 Feb 2023 14:59:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B67C410E329
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Feb 2023 14:59:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676991578; x=1708527578;
 h=date:from:to:subject:message-id:references:mime-version:
 content-transfer-encoding:in-reply-to;
 bh=uDd7bO/xDFpz+DqEB7TXTmjpAOeboo9i05bywP8793Q=;
 b=hsEpSq5e8pIelAmscKBSdcNvkoLvazqt/xVBHvsHBX/zI8rgZrdRy/ct
 HUDcq5CYZ1eEc+swlwfYruuhelzIbO9g4+Pa+zQ88Hrd+Yd2kZzDvSd4t
 0fztRjrsXyb/X5pOaAy5n3E4PzNLJnuY7RdKNqsI8OnealhffvsL8Bn/e
 XVgQYljQZOL8bNEQEccUYTAPwPYOgg4t5BMOlIz+ogy24OeYx2SGRaaqR
 SrOJXQS7Q2LAe5KFBup0ZdML9TS0Wbt0Ssu0IvQmtIcGZg3+jY78qp2ed
 AnhHkG8ALufCjUfHXAPCatDlW6ioP7tqZPQQoj35m4SnXA2itEgf/nRlU w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="332654890"
X-IronPort-AV: E=Sophos;i="5.97,315,1669104000"; d="scan'208";a="332654890"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 06:59:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="649205198"
X-IronPort-AV: E=Sophos;i="5.97,315,1669104000"; d="scan'208";a="649205198"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga006.jf.intel.com with SMTP; 21 Feb 2023 06:59:35 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 21 Feb 2023 16:59:34 +0200
Date: Tue, 21 Feb 2023 16:59:34 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <Y/TcVtA+2xRgByyD@intel.com>
References: <20230220234046.29716-1-ville.syrjala@linux.intel.com>
 <20230220234046.29716-8-ville.syrjala@linux.intel.com>
 <Y/TZeHrjdT/4bRkN@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Y/TZeHrjdT/4bRkN@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 07/18] drm/i915: Sanitize child devices
 later
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

On Tue, Feb 21, 2023 at 04:47:20PM +0200, Ville Syrjälä wrote:
> On Tue, Feb 21, 2023 at 01:40:35AM +0200, Ville Syrjala wrote:
> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> > index f35ef3675d39..19be8862261b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bios.c
> > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> > @@ -2221,33 +2221,33 @@ static u8 map_ddc_pin(struct drm_i915_private *i915, u8 vbt_pin)
> >  		    vbt_pin);
> >  	return 0;
> >  }
> >  
> > -static enum port get_port_by_ddc_pin(struct drm_i915_private *i915, u8 ddc_pin)
> > +static struct intel_encoder *
> > +get_encoder_by_ddc_pin(struct drm_i915_private *i915, u8 ddc_pin)
> >  {
> > -	enum port port;
> > +	struct intel_encoder *encoder;
> >  
> >  	if (!ddc_pin)
> > -		return PORT_NONE;
> > +		return NULL;
> >  
> > -	for_each_port(port) {
> > -		const struct intel_bios_encoder_data *devdata =
> > -			i915->display.vbt.ports[port];
> > +	for_each_intel_encoder(&i915->drm, encoder) {
> > +		const struct intel_bios_encoder_data *devdata = encoder->devdata;
> >  
> >  		if (devdata && ddc_pin == devdata->child.ddc_pin)
> > -			return port;
> > +			return encoder;
> 
> This still screws up bat-jsl-3 where DDI A and DDI C both claim to use
> the same ddc_pin. But DDI A is declared as eDP, so won't even use DDC.
> Se we should just ignore it here. 

bat-jsl-1 has the same issue.

bat-rpls-1/2 also have a similar thing, but there the eDP is a ghost
so won't actually trip here.


I also noticed that bat-rplp-1 declares eDP on both DDI A and B,
and it's the one on DDI B that is the real one. Curious.

> 
> I suppose to correct fix would to look at the actually selected
> ddc_pin/aux_ch here, rather than what the VBT declared.
> 
> >  	}
> >  
> > -	return PORT_NONE;
> > +	return NULL;
> >  }
> >  
> 
> -- 
> Ville Syrjälä
> Intel

-- 
Ville Syrjälä
Intel
