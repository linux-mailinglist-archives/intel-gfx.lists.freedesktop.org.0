Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0886028FB25
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Oct 2020 00:22:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFCF66E0C8;
	Thu, 15 Oct 2020 22:22:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76BF16E0C8
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Oct 2020 22:22:02 +0000 (UTC)
IronPort-SDR: N8NDqxiO6akyaA2+eo2bbWrN4fQG/jPxMwxDQhmI7ROrtwRWHHZ4bXgmVPG4gAcHQNJD0hLFAN
 nhIj/Myf5awQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9775"; a="146324562"
X-IronPort-AV: E=Sophos;i="5.77,380,1596524400"; d="scan'208";a="146324562"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2020 15:22:02 -0700
IronPort-SDR: CXYLT9uw7uhM52LuhdZ0zbDJnDVqjx5PV95REc6n32TMLtDW2XBdHNXEuasPfKiSBkoS3dZq/U
 3IhmCvXv6nkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,380,1596524400"; d="scan'208";a="319196931"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 15 Oct 2020 15:22:01 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 15 Oct 2020 15:22:01 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 15 Oct 2020 15:22:00 -0700
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.1713.004;
 Thu, 15 Oct 2020 15:22:00 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/rkl: Add new cdclk table
Thread-Index: AQHWoz6hmw5tCFIW0US67GZgLYtM46mZPJKA
Date: Thu, 15 Oct 2020 22:22:00 +0000
Message-ID: <ccf2c8a424344894ac57cc5adf5a2377@intel.com>
References: <20201015220038.271740-1-matthew.d.roper@intel.com>
In-Reply-To: <20201015220038.271740-1-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/rkl: Add new cdclk table
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
> From: Matt Roper <matthew.d.roper@intel.com>
> Sent: Thursday, October 15, 2020 3:01 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Roper, Matthew D <matthew.d.roper@intel.com>; Srivatsa, Anusha
> <anusha.srivatsa@intel.com>
> Subject: [PATCH] drm/i915/rkl: Add new cdclk table
> 
> A recent bspec update has provided a new cdclk table for RKL.  All of the
> cdclk values are the same as those we've been using on ICL, TGL, etc., but
> we obtain them by doubling both the PLL ratio and CD2X divider numbers.
> 
> Bspec: 49202
> Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 32 +++++++++++++++++++++-
>  1 file changed, 31 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 7b46330fa69c..c449d28d0560 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1233,6 +1233,30 @@ static const struct intel_cdclk_vals
> icl_cdclk_table[] = {
>  	{}
>  };
> 
> +static const struct intel_cdclk_vals rkl_cdclk_table[] = {
> +	{ .refclk = 19200, .cdclk = 172800, .divider = 4, .ratio =  36 },
> +	{ .refclk = 19200, .cdclk = 192000, .divider = 4, .ratio =  40 },
> +	{ .refclk = 19200, .cdclk = 307200, .divider = 4, .ratio =  64 },
> +	{ .refclk = 19200, .cdclk = 326400, .divider = 8, .ratio = 136 },
> +	{ .refclk = 19200, .cdclk = 556800, .divider = 4, .ratio = 116 },
> +	{ .refclk = 19200, .cdclk = 652800, .divider = 4, .ratio = 136 },
> +
> +	{ .refclk = 24000, .cdclk = 180000, .divider = 4, .ratio =  30 },
> +	{ .refclk = 24000, .cdclk = 192000, .divider = 4, .ratio =  32 },
> +	{ .refclk = 24000, .cdclk = 312000, .divider = 4, .ratio =  52 },
> +	{ .refclk = 24000, .cdclk = 324000, .divider = 8, .ratio = 108 },
> +	{ .refclk = 24000, .cdclk = 552000, .divider = 4, .ratio =  92 },
> +	{ .refclk = 24000, .cdclk = 648000, .divider = 4, .ratio = 108 },
> +
> +	{ .refclk = 38400, .cdclk = 172800, .divider = 4, .ratio = 18 },
> +	{ .refclk = 38400, .cdclk = 192000, .divider = 4, .ratio = 20 },
> +	{ .refclk = 38400, .cdclk = 307200, .divider = 4, .ratio = 32 },
> +	{ .refclk = 38400, .cdclk = 326400, .divider = 8, .ratio = 68 },
> +	{ .refclk = 38400, .cdclk = 556800, .divider = 4, .ratio = 58 },
> +	{ .refclk = 38400, .cdclk = 652800, .divider = 4, .ratio = 68 },
> +	{}
> +};
> +
>  static int bxt_calc_cdclk(struct drm_i915_private *dev_priv, int min_cdclk)
> {
>  	const struct intel_cdclk_vals *table = dev_priv->cdclk.table; @@ -
> 2823,7 +2847,13 @@ u32 intel_read_rawclk(struct drm_i915_private
> *dev_priv)
>   */
>  void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)  {
> -	if (INTEL_GEN(dev_priv) >= 12) {
> +	if (IS_ROCKETLAKE(dev_priv)) {
> +		dev_priv->display.set_cdclk = bxt_set_cdclk;
> +		dev_priv->display.bw_calc_min_cdclk =
> skl_bw_calc_min_cdclk;
> +		dev_priv->display.modeset_calc_cdclk =
> bxt_modeset_calc_cdclk;
> +		dev_priv->display.calc_voltage_level =
> tgl_calc_voltage_level;
> +		dev_priv->cdclk.table = rkl_cdclk_table;
> +	} else if (INTEL_GEN(dev_priv) >= 12) {
>  		dev_priv->display.set_cdclk = bxt_set_cdclk;
>  		dev_priv->display.bw_calc_min_cdclk =
> skl_bw_calc_min_cdclk;
>  		dev_priv->display.modeset_calc_cdclk =
> bxt_modeset_calc_cdclk;
> --
> 2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
