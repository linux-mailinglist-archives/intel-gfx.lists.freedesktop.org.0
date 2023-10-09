Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E18E67BEA7A
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 21:20:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60F2C10E1A5;
	Mon,  9 Oct 2023 19:20:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FCC610E1A5
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Oct 2023 19:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696879254; x=1728415254;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=BopTNoQHzAvnfoUEqBGVRDTfkON5v+Tt02CnjIKZldw=;
 b=iw12oOeV+a8UM4rvKPara5uTz3gf6UNZlBoNR/O2OT4quvkgFEMMq/br
 d/2VfACCES3Y6L9T1ztObF8CTAhlOr+L+DFW0bCKSwSI0VP+d0OrOCHeZ
 0Y+jpkOgo+WXpMrJHoyBPRfNtW11DUKotNOkfepyiaM/BKNmgG6y/+ebr
 M8xP80+f7lsRd860kV62H7D2rkuu68ItvPq1bYbOCiNbPyx+jKajC76v1
 zeukQfWzFywan8XPZvHxWUuUkVLWQQFMiI+Ojg2AKErNNwEKPIQKrfb1h
 gMll74ICS2pJBDS80sP4B/LcVEzmAwrfn9/jVz3a/rA76uaK+3cTBvpgC w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="374562565"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="374562565"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 12:20:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="869361883"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="869361883"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga002.fm.intel.com with SMTP; 09 Oct 2023 12:20:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 09 Oct 2023 22:20:50 +0300
Date: Mon, 9 Oct 2023 22:20:50 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZSRSkk_L5SwpXx6F@intel.com>
References: <20231009145828.12960-1-ville.syrjala@linux.intel.com>
 <87wmvv6c5d.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87wmvv6c5d.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix VLV color state readout
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

On Mon, Oct 09, 2023 at 06:36:30PM +0300, Jani Nikula wrote:
> On Mon, 09 Oct 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > VLV was missed when the color.get_config() hook was added.
> > Remedy that.
> 
> Oops, how did I manage that?! Thanks for the fix,

vlv_color_funcs is a fairly recent thing. I suspect it didn't
exist when you originally wrote the patch, but presumably the
patch still applied cleanly.

> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> > Not really sure what the final plan here was since a bunch of
> > color related readout was left in intel_display.c anyway,
> > but that's for anothr day to figure out...
> 
> I guess I just wanted to start somewhere, and the cutoff was mostly by
> the registers where the data is read from, e.g. ->gamma_mode and
> ->wgc_enable coming from TRANSCONF I left in place.
> 
> BR,
> Jani.
> 
> >
> > Cc: Jani Nikula <jani.nikula@intel.com>
> > Fixes: 9af09dfcdfa1 ("drm/i915/color: move pre-SKL gamma and CSC enable read to intel_color")
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_color.c | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> > index 4f92fc31059f..2a2a163ea652 100644
> > --- a/drivers/gpu/drm/i915/display/intel_color.c
> > +++ b/drivers/gpu/drm/i915/display/intel_color.c
> > @@ -3702,6 +3702,7 @@ static const struct intel_color_funcs vlv_color_funcs = {
> >  	.read_luts = i965_read_luts,
> >  	.lut_equal = i965_lut_equal,
> >  	.read_csc = vlv_read_csc,
> > +	.get_config = i9xx_get_config,
> >  };
> >  
> >  static const struct intel_color_funcs i965_color_funcs = {
> 
> -- 
> Jani Nikula, Intel

-- 
Ville Syrjälä
Intel
