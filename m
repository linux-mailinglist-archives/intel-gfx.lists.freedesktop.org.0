Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B5810694D36
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Feb 2023 17:47:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE55610E624;
	Mon, 13 Feb 2023 16:47:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3AE610E635
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Feb 2023 16:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676306843; x=1707842843;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=kOPYvo46LxXcRgUwaVL4jYcBfXj8A2yLyc6/2BcOo7M=;
 b=ngE9S/CEl2Os3kJ2f8NSTo8qS3/N6BasjB71zdVMqwLVWulz5DrSD5Do
 mDfTRYfo1oqoxGAXEpyiJiZltBTYvF/uVSyKZq1I5YWubmetSn0jOr1AR
 32rqBLi5Y6Kjz7coLmJrQ4Gsu09uSNvU20DjIPmXB7aBsJ8bU1G9+gh65
 ddK6r26fzBSLTrp06ShUIhEtW/Fy1qwM8+O3gpgkgsC6fuEFFuq/WJkfP
 +iVOd2ZR94aUN3IQVntQmu5xdD1LBNn6/xAqqDAB4Mm5j/mm6XRHnNO5G
 n8NnivxmA4yF1mebMCbxSFcEJEBM6H3G4iiAb+va+Mcija1asRmACBiFR w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="318954465"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="318954465"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 08:47:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="777908856"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="777908856"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by fmsmga002.fm.intel.com with SMTP; 13 Feb 2023 08:47:19 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 13 Feb 2023 18:47:18 +0200
Date: Mon, 13 Feb 2023 18:47:18 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Y+pplr7tFJL0Fvzn@intel.com>
References: <20230208015508.24824-1-ville.syrjala@linux.intel.com>
 <20230208015508.24824-10-ville.syrjala@linux.intel.com>
 <87mt5hv97x.fsf@intel.com> <Y+pio0PDKZ4LFW4U@intel.com>
 <878rh1v7pt.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <878rh1v7pt.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 09/10] drm/i915: Iterate all child devs in
 intel_bios_is_port_present()
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

On Mon, Feb 13, 2023 at 06:41:18PM +0200, Jani Nikula wrote:
> On Mon, 13 Feb 2023, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> > On Mon, Feb 13, 2023 at 06:08:50PM +0200, Jani Nikula wrote:
> >> On Wed, 08 Feb 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> >> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >> >
> >> > Instead of consulting vbt.ports[] lets just go through the
> >> > whole child device list to check whether a specific port
> >> > was declared by the VBT or not.
> >> 
> >> Might want to mention that this does not impact the dupe checking even
> >> if we look at display_devices instead of vbt.ports[].
> >
> > Hmm, except for the !is_port_valid() check.
> 
> D'oh!
> 
> > Should we
> > maybe do that here too, or should we just think about 
> > fully exorcising invalid ports from the child device list?
> 
> Maybe the first step that fits in this series is just including the
> check here too?
> 
> Otherwise, I'm divided. I kind of always wanted the VBT parsing part to
> be just that, parsing what's in the VBT, and only include checks/filters
> that ensure it's internally consistent. And the consumers of the data
> would cross check against platforms etc.
> 
> But I guess the VBT data itself has been filled with platform specific
> details, so *shrug*. I could be persuaded either way.
> 
> I guess there could be a separate filtering step. I'd hate to add
> filtering to parse_general_definitions().

Yeah, parse->filter->consume might be the right option eventually.

I've been also pondering about deleting the child device from
the list if we fail to probe it (eg. in the case of these 
phantom eDPs). But haven't yet really thought through the
implications of keep vs. delete.

> 
> BR,
> Jani.
> 
> 
> >
> >> 
> >> >
> >> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >> > ---
> >> >  drivers/gpu/drm/i915/display/intel_bios.c | 11 ++++++++++-
> >> >  1 file changed, 10 insertions(+), 1 deletion(-)
> >> >
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> >> > index efe33af2259b..1af175b48ae6 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_bios.c
> >> > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> >> > @@ -3398,10 +3398,19 @@ bool intel_bios_is_lvds_present(struct drm_i915_private *i915, u8 *i2c_pin)
> >> >   */
> >> >  bool intel_bios_is_port_present(struct drm_i915_private *i915, enum port port)
> >> >  {
> >> > +	const struct intel_bios_encoder_data *devdata;
> >> > +
> >> >  	if (WARN_ON(!has_ddi_port_info(i915)))
> >> >  		return true;
> >> >  
> >> > -	return i915->display.vbt.ports[port];
> >> > +	list_for_each_entry(devdata, &i915->display.vbt.display_devices, node) {
> >> > +		const struct child_device_config *child = &devdata->child;
> >> > +
> >> > +		if (dvo_port_to_port(i915, child->dvo_port) == port)
> >> > +			return true;
> >> > +	}
> >> > +
> >> > +	return false;
> >> >  }
> >> >  
> >> >  /**
> >> 
> >> -- 
> >> Jani Nikula, Intel Open Source Graphics Center
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Ville Syrjälä
Intel
