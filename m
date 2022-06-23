Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 95624558997
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jun 2022 21:51:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9F1010E47A;
	Thu, 23 Jun 2022 19:51:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58EAB10E509
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jun 2022 19:51:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656013910; x=1687549910;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=7azo21eAAkPwATpQYfHcLyieM6N9LRObMrHLPV4M+tI=;
 b=Z/5GXasaFoMF1GBzCVOSB0tzAGxIIDAAKsRWqlcGNP0Hxb+dfpDZWaWU
 aRHvAgXaNpKDs6tPlT5kuEWZgjusAhCP9mqAtTAVzHQ/nXLZmzn/j60iB
 /XRVck1dA8wX5OXSgisZbEsMabSpnFrEY+deXzML+ymtwd80Ccb8mPEe4
 3VmZCpq/BPyEhJIP6QYTsDkMtIpnXaYBA9PQbXI3YkfGEVOmeBxyWmyXq
 DhumlGnnpdx5wjmsFhz68C8obFXdiutbMpJaCj4FJsvYBGo4Xry/b9ed3
 rDXU+L40z0HlBfwgevlfcH1ohLD3MeOpZzsCS5l90iO/2E07kW5fZk/Jp Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10387"; a="260641078"
X-IronPort-AV: E=Sophos;i="5.92,217,1650956400"; d="scan'208";a="260641078"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2022 12:51:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,217,1650956400"; d="scan'208";a="691182146"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.161])
 by fmsmga002.fm.intel.com with SMTP; 23 Jun 2022 12:51:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 23 Jun 2022 22:51:47 +0300
Date: Thu, 23 Jun 2022 22:51:47 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YrTEUxR3lEiBBYhY@intel.com>
References: <20220621123732.1118437-1-jani.nikula@intel.com>
 <YrQxgbOEmVNnyPf8@intel.com> <87y1xnmhu1.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87y1xnmhu1.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/bios: debug log ddi port info
 after parsing
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

On Thu, Jun 23, 2022 at 08:04:54PM +0300, Jani Nikula wrote:
> On Thu, 23 Jun 2022, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> > On Tue, Jun 21, 2022 at 03:37:32PM +0300, Jani Nikula wrote:
> >> The ddc pin and aux channel sanitization may disable DVI/HDMI and DP,
> >> respectively, of ports parsed earlier, in "last one wins" fashion. With
> >> parsing and printing interleaved, we'll end up logging support first and
> >> disabling later anyway.
> >> 
> >> Now that we've split ddi port info parsing and printing, take it further
> >> by doing the printing in a separate loop, fixing the logging.
> >> 
> >> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >
> > Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Just realized this also changes the printing order from VBT child device
> order to port number order. Is that a bug or a feature?

I suppose it doesn't really matter. The only things where the order
really matters are conflicts and we should still get some extra debug
spew for those right?

> 
> BR,
> Jani.
> 
> >
> >> ---
> >>  drivers/gpu/drm/i915/display/intel_bios.c | 8 ++++++--
> >>  1 file changed, 6 insertions(+), 2 deletions(-)
> >> 
> >> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> >> index ab23324c0402..51dde5bfd956 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> >> @@ -2670,8 +2670,6 @@ static void parse_ddi_port(struct intel_bios_encoder_data *devdata)
> >>  
> >>  	sanitize_device_type(devdata, port);
> >>  
> >> -	print_ddi_port(devdata, port);
> >> -
> >>  	if (intel_bios_encoder_supports_dvi(devdata))
> >>  		sanitize_ddc_pin(devdata, port);
> >>  
> >> @@ -2689,12 +2687,18 @@ static bool has_ddi_port_info(struct drm_i915_private *i915)
> >>  static void parse_ddi_ports(struct drm_i915_private *i915)
> >>  {
> >>  	struct intel_bios_encoder_data *devdata;
> >> +	enum port port;
> >>  
> >>  	if (!has_ddi_port_info(i915))
> >>  		return;
> >>  
> >>  	list_for_each_entry(devdata, &i915->vbt.display_devices, node)
> >>  		parse_ddi_port(devdata);
> >> +
> >> +	for_each_port(port) {
> >> +		if (i915->vbt.ports[port])
> >> +			print_ddi_port(i915->vbt.ports[port], port);
> >> +	}
> >>  }
> >>  
> >>  static void
> >> -- 
> >> 2.30.2
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Ville Syrjälä
Intel
