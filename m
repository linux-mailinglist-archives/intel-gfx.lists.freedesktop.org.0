Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C41C1F7563
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2020 10:38:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E2B86E866;
	Fri, 12 Jun 2020 08:38:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DD106E866
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jun 2020 08:38:28 +0000 (UTC)
IronPort-SDR: m/PL7/+nkcHgf5beHJWiZcQ0D1AIOPdVjGNOU3M2FYICylgOv25NUfC9PpKTm+MXsVcPkePTjc
 4a3t7qhnVLWw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2020 01:38:27 -0700
IronPort-SDR: aXAtN2JPJMqxnh24nFYixGKdXGB8345YSXyM0+xWoqEBhC+UG10CwKO1E1+9mJA1CSS0XFVNWc
 5xeO1e3pg2Gw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,502,1583222400"; d="scan'208";a="296884603"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga004.fm.intel.com with ESMTP; 12 Jun 2020 01:38:27 -0700
Received: from fmsmsx121.amr.corp.intel.com (10.18.125.36) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 12 Jun 2020 01:38:27 -0700
Received: from bgsmsx105.gar.corp.intel.com (10.223.43.197) by
 fmsmsx121.amr.corp.intel.com (10.18.125.36) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 12 Jun 2020 01:38:27 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.115]) by
 BGSMSX105.gar.corp.intel.com ([169.254.3.252]) with mapi id 14.03.0439.000;
 Fri, 12 Jun 2020 14:08:24 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/display: Fix the encoder type check
Thread-Index: AQHWQJMUz6IZCLKxUk6RR/kGv5tIPajUqEOg
Date: Fri, 12 Jun 2020 08:38:24 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F825244D8@BGSMSX104.gar.corp.intel.com>
References: <20200612082237.11886-1-vandita.kulkarni@intel.com>
In-Reply-To: <20200612082237.11886-1-vandita.kulkarni@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Fix the encoder type check
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Kulkarni, Vandita <vandita.kulkarni@intel.com>
> Sent: Friday, June 12, 2020 1:53 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Kulkarni, Vandita
> <vandita.kulkarni@intel.com>
> Subject: [PATCH] drm/i915/display: Fix the encoder type check
> 
> For all ddi, encoder->type holds output type as ddi, assigning it to individual o/p
> types is no more valid.
> 
> Fixes: 362bfb995b78 ("drm/i915/tgl: Add DKL PHY vswing table for HDMI")
> 
> v2: Rebase, no functional change.

Pushed the change to dinq. Thanks for the patch.

Regards,
Uma Shankar

> Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> index d1acc39cdc11..ca7bb2294d2b 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2615,7 +2615,7 @@ static void icl_ddi_vswing_sequence(struct
> intel_encoder *encoder,
> 
>  static void
>  tgl_dkl_phy_ddi_vswing_sequence(struct intel_encoder *encoder, int link_clock,
> -				u32 level)
> +				u32 level, enum intel_output_type type)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	enum tc_port tc_port = intel_port_to_tc(dev_priv, encoder->port); @@ -
> 2623,7 +2623,7 @@ tgl_dkl_phy_ddi_vswing_sequence(struct intel_encoder
> *encoder, int link_clock,
>  	u32 n_entries, val, ln, dpcnt_mask, dpcnt_val;
>  	int rate = 0;
> 
> -	if (encoder->type != INTEL_OUTPUT_HDMI) {
> +	if (type == INTEL_OUTPUT_HDMI) {
>  		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> 
>  		rate = intel_dp->link_rate;
> @@ -2676,7 +2676,7 @@ static void tgl_ddi_vswing_sequence(struct
> intel_encoder *encoder,
>  	if (intel_phy_is_combo(dev_priv, phy))
>  		icl_combo_phy_ddi_vswing_sequence(encoder, level, type);
>  	else
> -		tgl_dkl_phy_ddi_vswing_sequence(encoder, link_clock, level);
> +		tgl_dkl_phy_ddi_vswing_sequence(encoder, link_clock, level,
> type);
>  }
> 
>  static u32 translate_signal_level(struct intel_dp *intel_dp, int signal_levels)
> --
> 2.21.0.5.gaeb582a

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
