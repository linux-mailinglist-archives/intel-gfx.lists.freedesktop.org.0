Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA0A56CD8FE
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 13:59:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18DF110E52F;
	Wed, 29 Mar 2023 11:59:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2CDF10E52F
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 11:59:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680091177; x=1711627177;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Wq/jNOCD1zmJDKCcPzKnm5uuA59TW66Ge45PDvHlYs8=;
 b=ILt1XM1lIVwP25xHkFDbfxO7TAzFurlzfbaV9qu060vSzyWbjV8fUU5s
 byU/c+40PjXI1KLBGkrvCaQKlX6tGqjthqgHRPf0dlofCzH3cyN/BYkYt
 wPIR11DFkbSp+IdqYReJ7V//ynmLKeZO18WnMcsDQjb4JD5uJGeCLnyx9
 jIIHYP4ksGCysbjghoxQyW63jnpRXQhHdKy3uTMxnxicDA127xZf2mvb0
 xzxo8xHX1TK3XVpBgIDT/918Dvtqj6WCShnRLbRkqOnzjLgd/EctfTddV
 LqjAJ4e4iSYB60YBFWAcpbJg7Nl2HEWtfD5StJmJiAM4CmtfB5VDbbXsI g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="339580453"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="339580453"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 04:59:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="716849889"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="716849889"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga001.jf.intel.com with SMTP; 29 Mar 2023 04:59:34 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 29 Mar 2023 14:59:33 +0300
Date: Wed, 29 Mar 2023 14:59:33 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <ZCQoJd06J8fwIG9P@intel.com>
References: <20230329084449.717954-2-ankit.k.nautiyal@intel.com>
 <20230329090745.719672-1-ankit.k.nautiyal@intel.com>
 <ZCQY7n2Le5GDvLSK@intel.com>
 <abba986c-3626-2cc6-6d94-744e94d4ba89@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <abba986c-3626-2cc6-6d94-744e94d4ba89@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915/dp: Update Bigjoiner
 interface bits for computing compressed bpp
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

On Wed, Mar 29, 2023 at 04:53:13PM +0530, Nautiyal, Ankit K wrote:
> 
> On 3/29/2023 4:24 PM, Ville Syrjälä wrote:
> > On Wed, Mar 29, 2023 at 02:37:45PM +0530, Ankit Nautiyal wrote:
> >> In Bigjoiner check for DSC, bigjoiner interface bits for DP for
> >> DISPLAY > 13 is 36 (Bspec: 49259).
> >>
> >> v2: Corrected Display ver to 13.
> >>
> >> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> >> ---
> >>   drivers/gpu/drm/i915/display/intel_dp.c | 3 ++-
> >>   1 file changed, 2 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> >> index da1c00ee92fb..0b59c1e53678 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> >> @@ -756,8 +756,9 @@ u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
> >>   	bits_per_pixel = min(bits_per_pixel, max_bpp_small_joiner_ram);
> >>   
> >>   	if (bigjoiner) {
> >> +		int bigjoiner_interface_bits = DISPLAY_VER(i915) <= 13 ? 24 : 36;
> > We generally prefer "new -> old" order. So please flip that around.
> 
> Noted. Will do this in next version.
> 
> 
> >
> >>   		u32 max_bpp_bigjoiner =
> >> -			i915->display.cdclk.max_cdclk_freq * 48 /
> >> +			i915->display.cdclk.max_cdclk_freq * 2 * bigjoiner_interface_bits /
> >>   			intel_dp_mode_to_fec_clock(mode_clock);
> > Hmm. Why is this using the FEC adjusted clock here?
> 
> AFAIU we always use FEC for DP when DSC is enabled, provided sink and 
> source both support FEC.
> 
> Bspec mentions : For cases where FEC is enabled, pixel clock is replaced 
> by pixel clock/0.972261 in the above calculations.

That doesn't make sense to me. FEC happens in the PHY
layer, DSC compression happens earlier.

-- 
Ville Syrjälä
Intel
