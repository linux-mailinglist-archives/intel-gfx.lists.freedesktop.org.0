Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D33B060FAC5
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Oct 2022 16:48:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7504610E661;
	Thu, 27 Oct 2022 14:48:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 780A110E661
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Oct 2022 14:48:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666882115; x=1698418115;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=tzjmY7mNR3geRnLnumNpMRZhk1d/QrPsJDhcXqKRTEk=;
 b=UieJd4dZPnODP5dNUjGeKs9AbUYtkTNZq4NHAcNqIkX69kA70b0esSKZ
 sSa+Y88PNmsk6uRfSEexIfdWRYovqRhG0BDHPs/LROBdPU/EbzWBqL84w
 qIVKZJpM4lzIOLhXAbS0gNkZLhVqPKDuJMy3aSITZwV/o+btZVkm9ayc1
 cztWTo7XLzWh3ndrUMu4F2oEzWKLy3a6jbvHKFB+ZoVqG5HTNqstpl1N5
 PAts1nC9+hyrzO7yjwL6xQKmvSM4Qz4x9QH2i7/DBl/m5YR5KIRptNeDw
 5lrRQkezizV7+eHvHPzZ1xTwAYjW3Mszy/EJ/6wzkedGNcaW5Kwy0jMW1 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="305855701"
X-IronPort-AV: E=Sophos;i="5.95,217,1661842800"; d="scan'208";a="305855701"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2022 07:48:34 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="701368855"
X-IronPort-AV: E=Sophos;i="5.95,217,1661842800"; d="scan'208";a="701368855"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.147])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2022 07:48:33 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221026101134.20865-9-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221026101134.20865-1-ville.syrjala@linux.intel.com>
 <20221026101134.20865-9-ville.syrjala@linux.intel.com>
Date: Thu, 27 Oct 2022 17:48:29 +0300
Message-ID: <878rl1cog2.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 8/8] drm/i915/sdvo: Fix debug print
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

On Wed, 26 Oct 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Correctly indicate which outputs we support in the debug print.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Could change that to str_yes_no() or str_enabled_disabled() while at it.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_sdvo.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/=
i915/display/intel_sdvo.c
> index 58d147cc7633..e46b1ee4439d 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -3403,9 +3403,12 @@ bool intel_sdvo_init(struct drm_i915_private *dev_=
priv,
>  			(intel_sdvo->caps.sdvo_inputs_mask & 0x2) ? 'Y' : 'N',
>  			/* check currently supported outputs */
>  			intel_sdvo->caps.output_flags &
> -			(SDVO_OUTPUT_TMDS0 | SDVO_OUTPUT_RGB0) ? 'Y' : 'N',
> +			(SDVO_OUTPUT_TMDS0 | SDVO_OUTPUT_RGB0 |
> +			 SDVO_OUTPUT_LVDS0 | SDVO_OUTPUT_SVID0 |
> +			 SDVO_OUTPUT_CVBS0 | SDVO_OUTPUT_YPRPB0) ? 'Y' : 'N',
>  			intel_sdvo->caps.output_flags &
> -			(SDVO_OUTPUT_TMDS1 | SDVO_OUTPUT_RGB1) ? 'Y' : 'N');
> +			(SDVO_OUTPUT_TMDS1 | SDVO_OUTPUT_RGB1 |
> +			 SDVO_OUTPUT_LVDS1) ? 'Y' : 'N');
>  	return true;
>=20=20
>  err_output:

--=20
Jani Nikula, Intel Open Source Graphics Center
