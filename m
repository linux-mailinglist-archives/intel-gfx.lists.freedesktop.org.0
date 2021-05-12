Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A6FF937D3F5
	for <lists+intel-gfx@lfdr.de>; Wed, 12 May 2021 21:49:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58F0A6E34B;
	Wed, 12 May 2021 19:49:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F28AF6E34B
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 May 2021 19:49:39 +0000 (UTC)
IronPort-SDR: A7/A2WEf8E8oTN0YWblpnrNWNfQLQyPD0eZOLGz8dWBvkHugPCZzeQavY5vwJQAKY0w+S/nHJr
 azt6KbJxZ5eQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9982"; a="180057438"
X-IronPort-AV: E=Sophos;i="5.82,295,1613462400"; d="scan'208";a="180057438"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2021 12:49:39 -0700
IronPort-SDR: 7k/5FmE6Gs2sldHtEM62ql39QCNZ3oknjVfwYywM5lvsPMz+xxnNQO/WJfPgjhGLfBijDCgUJl
 QyuU6b2nZmhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,295,1613462400"; d="scan'208";a="409370779"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP; 12 May 2021 12:49:38 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 12 May 2021 12:49:38 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 12 May 2021 12:49:37 -0700
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.2106.013;
 Wed, 12 May 2021 12:49:37 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 35/48] drm/i915/adl_p: Define and use
 ADL-P specific DP translation tables
Thread-Index: AQHXQ7Hs8/UWcSernkKtcr52g0WFwKrgSDRA
Date: Wed, 12 May 2021 19:49:37 +0000
Message-ID: <1d848843a498415b8150eecb6a8cf304@intel.com>
References: <20210508022820.780227-1-matthew.d.roper@intel.com>
 <20210508022820.780227-36-matthew.d.roper@intel.com>
In-Reply-To: <20210508022820.780227-36-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 35/48] drm/i915/adl_p: Define and use
 ADL-P specific DP translation tables
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Matt
> Roper
> Sent: Friday, May 7, 2021 7:28 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH v3 35/48] drm/i915/adl_p: Define and use ADL-P
> specific DP translation tables
> 
> From: Mika Kahola <mika.kahola@intel.com>
> 
> Define and use DP voltage swing and pre-emphasis translation tables for
> ADL-P.
> 
> BSpec: 54956
> 
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> Signed-off-by: Clinton Taylor <Clinton.A.Taylor@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  7 +++-
>  .../drm/i915/display/intel_ddi_buf_trans.c    | 34 +++++++++++++++++++
>  .../drm/i915/display/intel_ddi_buf_trans.h    |  4 +++
>  3 files changed, 44 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 1a21879016e1..bbfa5bcd4c63 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -985,6 +985,8 @@ static u8 intel_ddi_dp_voltage_max(struct intel_dp
> *intel_dp,
>  	if (DISPLAY_VER(dev_priv) >= 12) {
>  		if (intel_phy_is_combo(dev_priv, phy))
>  			tgl_get_combo_buf_trans(encoder, crtc_state,
> &n_entries);
> +		else if (IS_ALDERLAKE_P(dev_priv))
> +			adlp_get_dkl_buf_trans(encoder, crtc_state,
> &n_entries);
>  		else
>  			tgl_get_dkl_buf_trans(encoder, crtc_state,
> &n_entries);
>  	} else if (DISPLAY_VER(dev_priv) == 11) { @@ -1431,7 +1433,10 @@
> tgl_dkl_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
>  	if (enc_to_dig_port(encoder)->tc_mode == TC_PORT_TBT_ALT)
>  		return;
> 
> -	ddi_translations = tgl_get_dkl_buf_trans(encoder, crtc_state,
> &n_entries);
> +	if (IS_ALDERLAKE_P(dev_priv))
> +		ddi_translations = adlp_get_dkl_buf_trans(encoder,
> crtc_state, &n_entries);
> +	else
> +		ddi_translations = tgl_get_dkl_buf_trans(encoder, crtc_state,
> +&n_entries);
> 
>  	if (drm_WARN_ON_ONCE(&dev_priv->drm, !ddi_translations))
>  		return;
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> index 7bcdd5c12028..4f6d3e6c2ff5 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> @@ -735,6 +735,20 @@ static const struct cnl_ddi_buf_trans
> rkl_combo_phy_ddi_translations_dp_hbr2_hbr
>  	{ 0x6, 0x7F, 0x3F, 0x00, 0x00 },	/* 900   900      0.0   */
>  };
> 
> +static const struct tgl_dkl_phy_ddi_buf_trans adlp_dkl_phy_dp_ddi_trans[]
> = {
> +				/* VS	pre-emp	Non-trans mV	Pre-
> emph dB */
> +	{ 0x7, 0x0, 0x00 },	/* 0	0	400mV		0 dB */
> +	{ 0x5, 0x0, 0x03 },	/* 0	1	400mV		3.5 dB */
> +	{ 0x2, 0x0, 0x0B },	/* 0	2	400mV		6 dB */
> +	{ 0x0, 0x0, 0x19 },	/* 0	3	400mV		9.5 dB */
> +	{ 0x5, 0x0, 0x00 },	/* 1	0	600mV		0 dB */
> +	{ 0x2, 0x0, 0x03 },	/* 1	1	600mV		3.5 dB */
> +	{ 0x0, 0x0, 0x14 },	/* 1	2	600mV		6 dB */
> +	{ 0x2, 0x0, 0x00 },	/* 2	0	800mV		0 dB */
> +	{ 0x0, 0x0, 0x0B },	/* 2	1	800mV		3.5 dB */
> +	{ 0x0, 0x0, 0x00 },	/* 3	0	1200mV		0 dB
> */
> +};

The DP table in the spec seems to have changed. The values look different now.

Anusha
> +
>  bool is_hobl_buf_trans(const struct cnl_ddi_buf_trans *table)  {
>  	return table == tgl_combo_phy_ddi_translations_edp_hbr2_hobl;
> @@ -1348,6 +1362,26 @@ tgl_get_dkl_buf_trans(struct intel_encoder
> *encoder,
>  		return tgl_get_dkl_buf_trans_dp(encoder, crtc_state,
> n_entries);  }
> 
> +static const struct tgl_dkl_phy_ddi_buf_trans *
> +adlp_get_dkl_buf_trans_dp(struct intel_encoder *encoder,
> +			  const struct intel_crtc_state *crtc_state,
> +			  int *n_entries)
> +{
> +	*n_entries = ARRAY_SIZE(tgl_dkl_phy_dp_ddi_trans);
> +	return adlp_dkl_phy_dp_ddi_trans;
> +}
> +
> +const struct tgl_dkl_phy_ddi_buf_trans * adlp_get_dkl_buf_trans(struct
> +intel_encoder *encoder,
> +		      const struct intel_crtc_state *crtc_state,
> +		      int *n_entries)
> +{
> +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> +		return tgl_get_dkl_buf_trans_hdmi(encoder, crtc_state,
> n_entries);
> +	else
> +		return adlp_get_dkl_buf_trans_dp(encoder, crtc_state,
> n_entries); }
> +
>  int intel_ddi_hdmi_num_entries(struct intel_encoder *encoder,
>  			       const struct intel_crtc_state *crtc_state,
>  			       int *default_entry)
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
> b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
> index f8f0ef87e977..4c2efab38642 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
> +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
> @@ -67,6 +67,10 @@ bxt_get_buf_trans(struct intel_encoder *encoder,
>  		  const struct intel_crtc_state *crtc_state,
>  		  int *n_entries);
> 
> +const struct tgl_dkl_phy_ddi_buf_trans * adlp_get_dkl_buf_trans(struct
> +intel_encoder *encoder,
> +		       const struct intel_crtc_state *crtc_state,
> +		       int *n_entries);
>  const struct cnl_ddi_buf_trans *
>  tgl_get_combo_buf_trans(struct intel_encoder *encoder,
>  			const struct intel_crtc_state *crtc_state,
> --
> 2.25.4
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
