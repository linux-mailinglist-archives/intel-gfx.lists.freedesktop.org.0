Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ACD5663C32
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Jan 2023 10:06:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCA1010E49C;
	Tue, 10 Jan 2023 09:06:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3588510E49C
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Jan 2023 09:06:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673341581; x=1704877581;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=mXzuDg3KboZCUlezWny9xpwMJ2yWq40fq5mBr3je7Gg=;
 b=NMjqTGvsdyTT+H2UK5xET9XRwzqZ3BfLs/Q+9Fq3v8xCK8acJZ2qM/Q3
 Rp2Uu8jPDg9G7/1VpaMcbqYOpPMLnD1NK2VNSkwf+4wVd7HHrgXy32nxP
 kFC4Gif/Fk8OD2aDDF5CH2DVhszcTF+WWrjzwKH3uCQ+qOuuezQsPws3M
 lu+j3P7/8S/OWErBgagHuMtUGmQK15x5I6aBjPmDsVq5Xl5nn+sWTIaat
 rNRHz53MVosrokTPKf921+T9SWACx38JFKn8vEVICO0zJGWGUVxU3L3XY
 nQx0s4Gctd46lPnRFJyK5eTGq2Juy37mdkSvwYY9oN4uSdh6r2mYxXVf1 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10585"; a="303462826"
X-IronPort-AV: E=Sophos;i="5.96,314,1665471600"; d="scan'208";a="303462826"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2023 01:06:20 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10585"; a="799356803"
X-IronPort-AV: E=Sophos;i="5.96,314,1665471600"; d="scan'208";a="799356803"
Received: from lmcelwai-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.11.33])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2023 01:06:17 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230107053643.1984045-3-chaitanya.kumar.borah@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230107053643.1984045-1-chaitanya.kumar.borah@intel.com>
 <20230107053643.1984045-3-chaitanya.kumar.borah@intel.com>
Date: Tue, 10 Jan 2023 11:06:14 +0200
Message-ID: <875yde21yx.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [RFC 2/2] drm/i915/display: Add 480 MHz CDCLK steps
 for RPL-U
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, 07 Jan 2023, Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com> wrote:
> A new step of 480MHz has been added on SKUs that have a RPL-U
> device id to support 120Hz displays more efficiently. Use a
> new quirk to identify the machine for which this change needs
> to be applied.
>
> BSpec: 55409
>
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 23 ++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 0c107a38f9d0..a437ac446871 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1329,6 +1329,27 @@ static const struct intel_cdclk_vals adlp_cdclk_table[] = {
>  	{}
>  };
>  
> +static const struct intel_cdclk_vals rplu_cdclk_table[] = {
> +	{ .refclk = 19200, .cdclk = 172800, .divider = 3, .ratio = 27 },
> +	{ .refclk = 19200, .cdclk = 192000, .divider = 2, .ratio = 20 },
> +	{ .refclk = 19200, .cdclk = 480000, .divider = 2, .ratio = 50 },
> +	{ .refclk = 19200, .cdclk = 556800, .divider = 2, .ratio = 58 },
> +	{ .refclk = 19200, .cdclk = 652800, .divider = 2, .ratio = 68 },
> +
> +	{ .refclk = 24000, .cdclk = 176000, .divider = 3, .ratio = 22 },
> +	{ .refclk = 24000, .cdclk = 192000, .divider = 2, .ratio = 16 },
> +	{ .refclk = 24000, .cdclk = 480000, .divider = 2, .ratio = 40 },
> +	{ .refclk = 24000, .cdclk = 552000, .divider = 2, .ratio = 46 },
> +	{ .refclk = 24400, .cdclk = 648000, .divider = 2, .ratio = 54 },
> +
> +	{ .refclk = 38400, .cdclk = 179200, .divider = 3, .ratio = 14 },
> +	{ .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 10 },
> +	{ .refclk = 38400, .cdclk = 480000, .divider = 2, .ratio = 25 },
> +	{ .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29 },
> +	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34 },
> +	{}
> +};
> +
>  static const struct intel_cdclk_vals dg2_cdclk_table[] = {
>  	{ .refclk = 38400, .cdclk = 163200, .divider = 2, .ratio = 34, .waveform = 0x8888 },
>  	{ .refclk = 38400, .cdclk = 204000, .divider = 2, .ratio = 34, .waveform = 0x9248 },
> @@ -3353,6 +3374,8 @@ void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
>  		/* Wa_22011320316:adl-p[a0] */
>  		if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
>  			dev_priv->display.cdclk.table = adlp_a_step_cdclk_table;

Are RPL-U A0-B0 going to enter this branch? Is this the right thing to
do?

BR,
Jani.


> +		else if (IS_ADLP_RPLU(dev_priv))
> +			dev_priv->display.cdclk.table = rplu_cdclk_table;
>  		else
>  			dev_priv->display.cdclk.table = adlp_cdclk_table;
>  	} else if (IS_ROCKETLAKE(dev_priv)) {

-- 
Jani Nikula, Intel Open Source Graphics Center
