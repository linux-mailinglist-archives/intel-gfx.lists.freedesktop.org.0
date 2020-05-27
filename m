Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1679C1E4047
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2020 13:39:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77526899BC;
	Wed, 27 May 2020 11:39:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0359E899BC
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 May 2020 11:39:32 +0000 (UTC)
IronPort-SDR: W5eKEAbTfE4H6UX2DIZihQCdZ39RFTWZLCZbMPUvB5shOypdBLURdtb/jf+6Q+RlRVJZb/LdQz
 18ahVuV0WonA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2020 04:39:32 -0700
IronPort-SDR: h6nHSQIUvo2hn+BKTvC5N2QssEeXlO9XyEXuYidog6NanO+sIdsb3BDfnLm1woMT5Yhs2YZDi8
 MGAX29IX9ZoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,441,1583222400"; d="scan'208";a="302069086"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by fmsmga002.fm.intel.com with ESMTP; 27 May 2020 04:39:32 -0700
Received: from fmsmsx153.amr.corp.intel.com (10.18.125.6) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 27 May 2020 04:39:32 -0700
Received: from bgsmsx152.gar.corp.intel.com (10.224.48.50) by
 FMSMSX153.amr.corp.intel.com (10.18.125.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 27 May 2020 04:39:32 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.115]) by
 BGSMSX152.gar.corp.intel.com ([169.254.6.135]) with mapi id 14.03.0439.000;
 Wed, 27 May 2020 17:09:29 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: Fix the encoder type check
Thread-Index: AQHWIejO3/5W5QfIDESnjtjrnMPVkai78spg
Date: Wed, 27 May 2020 11:39:28 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F8251137B@BGSMSX104.gar.corp.intel.com>
References: <20200504074851.13139-1-vandita.kulkarni@intel.com>
In-Reply-To: <20200504074851.13139-1-vandita.kulkarni@intel.com>
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Vandita
> Kulkarni
> Sent: Monday, May 4, 2020 1:19 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH] drm/i915/display: Fix the encoder type check
> 
> For all ddi, encoder->type holds output type as ddi, assigning it to individual o/p
> types is no more valid.
> 
> Fixes: 362bfb995b78 ("drm/i915/tgl: Add DKL PHY vswing table for HDMI")

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 5601673c3f30..10d70daf714b 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2579,14 +2579,14 @@ static void icl_ddi_vswing_sequence(struct
> intel_encoder *encoder,
> 
>  static void
>  tgl_dkl_phy_ddi_vswing_sequence(struct intel_encoder *encoder, int link_clock,
> -				u32 level)
> +				u32 level, enum intel_output_type type)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	enum tc_port tc_port = intel_port_to_tc(dev_priv, encoder->port);
>  	const struct tgl_dkl_phy_ddi_buf_trans *ddi_translations;
>  	u32 n_entries, val, ln, dpcnt_mask, dpcnt_val;
> 
> -	if (encoder->type == INTEL_OUTPUT_HDMI) {
> +	if (type == INTEL_OUTPUT_HDMI) {
>  		n_entries = ARRAY_SIZE(tgl_dkl_phy_hdmi_ddi_trans);
>  		ddi_translations = tgl_dkl_phy_hdmi_ddi_trans;
>  	} else {
> @@ -2638,7 +2638,7 @@ static void tgl_ddi_vswing_sequence(struct
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
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
