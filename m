Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8019B483BD5
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jan 2022 07:12:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A29A310E1CC;
	Tue,  4 Jan 2022 06:12:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67B4D10E1CC
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jan 2022 06:12:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641276724; x=1672812724;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UEksdYlrCaQkUBLzJSYU0o9d6UDDvucv4QTk/ib7flY=;
 b=EdaoPLiuNy6A8iUXInttS67lpZ+qzEQjEcFz5SHCX+77m7kAByB5/keg
 XQsnL2qMyVrqf8bCgMST288Qjrdg5/4GuNhtU7nKx37POX2lmMdvTjgeJ
 IgVjXFXjz+VEZ+OTA9m7aqjl+Vm5VKTR0EEOaBMvvuZPf++koJNNnEkWj
 D3U6AzoqFRvEJ9MgRSm1tYnNcO1eeAc+96NzGxOUiTD9VcfjI6c7JGZBo
 fMH8H9Qlvg670l5BkHdtZbSx1NAeeRg1/k3N7Y/XnOKxGeOWAborCJ1X0
 gkw+XGconKEr7cU+53tT0IYzCzoIumWDc8geCHCAtYTOC28WEBkIotkYS g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10216"; a="328507022"
X-IronPort-AV: E=Sophos;i="5.88,260,1635231600"; d="scan'208";a="328507022"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2022 22:11:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,260,1635231600"; d="scan'208";a="471944971"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 03 Jan 2022 22:11:27 -0800
Received: from bgsmsx605.gar.corp.intel.com (10.67.234.7) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 3 Jan 2022 22:11:26 -0800
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 BGSMSX605.gar.corp.intel.com (10.67.234.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 4 Jan 2022 11:41:24 +0530
Received: from bgsmsx602.gar.corp.intel.com ([10.109.78.81]) by
 BGSMSX602.gar.corp.intel.com ([10.109.78.81]) with mapi id 15.01.2308.020;
 Tue, 4 Jan 2022 11:41:24 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Tseng, William" <william.tseng@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3] drm/i915/dsi: let HW maintain the HS-TRAIL timing
Thread-Index: AQHX8y5KmEuP2ZYkxkehr1lZJhMYNaxSe5fA
Date: Tue, 4 Jan 2022 06:11:24 +0000
Message-ID: <d2ff4791326a4a1aaab9c2f5234c3ab3@intel.com>
References: <20211115030320.26666-1-william.tseng@intel.com>
 <20211217100903.32599-1-william.tseng@intel.com>
In-Reply-To: <20211217100903.32599-1-william.tseng@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/dsi: let HW maintain the
 HS-TRAIL timing
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
Cc: "Chiou, Cooper" <cooper.chiou@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> -----Original Message-----
> From: Tseng, William <william.tseng@intel.com>
> Sent: Friday, December 17, 2021 3:39 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Tseng, William <william.tseng@intel.com>; Ville Syrjala
> <ville.syrjala@linux.intel.com>; Jani Nikula <jani.nikula@linux.intel.com=
>;
> Kulkarni, Vandita <vandita.kulkarni@intel.com>; Lee, Shawn C
> <shawn.c.lee@intel.com>; Chiou, Cooper <cooper.chiou@intel.com>
> Subject: [PATCH v3] drm/i915/dsi: let HW maintain the HS-TRAIL timing
>=20
> This change is to avoid over-specification of the TEOT timing parameter,
> which is derived from software in current design.
>=20
> Supposed that THS-TRAIL and THS-EXIT have the minimum values, i.e., 60 an=
d
> 100 in ns. If SW is overriding the HW default, the TEOT value becomes 150=
 ns,
> approximately calculated by the following formula.
>=20
>   DIV_ROUND_UP(60/50)*50 + DIV_ROUND_UP(100/50))*50/2, where 50
>   is LP Escape Clock time in ns.
>=20
> The TEOT value 150 ns is larger than the maximum value, around 136 ns if =
UI
> is 1.8ns, (105 ns + 12*UI, defined by MIPI DPHY specification).
>=20
> However, the TEOT value will meet the specification if THS-TRAIL is set t=
o the
> HW default, instead of software overriding.
>=20
> The timing change is made for both data lane and clock lane.
>=20

Looks like when we try to convert to esc clocks needed, the value gets roun=
ded ( due to register limitation) and ends up being higher than expected.
Leading to TEOT higher than needed, though we are in limits for individual =
values.
Right now, in such cases I do not see any option from spec to calculate in =
a different way like it provided in case of clk_prepare.
This patch is needed until we have proper way to update the trail_cnt in th=
e register.
Until then lets not override the HW defaults.

Acked-by: Vandita Kulkarni <vandita.kulkarni@intel.com>

> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Cc: Lee Shawn C <shawn.c.lee@intel.com>
> Cc: Cooper Chiou <cooper.chiou@intel.com>
> Signed-off-by: William Tseng <william.tseng@intel.com>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c | 19 +++----------------
>  1 file changed, 3 insertions(+), 16 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
> b/drivers/gpu/drm/i915/display/icl_dsi.c
> index 168c84a74d30..992e357e3f44 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -1863,14 +1863,13 @@ static void icl_dphy_param_init(struct intel_dsi
> *intel_dsi)
>  	struct drm_i915_private *dev_priv =3D to_i915(dev);
>  	struct mipi_config *mipi_config =3D dev_priv->vbt.dsi.config;
>  	u32 tlpx_ns;
> -	u32 prepare_cnt, exit_zero_cnt, clk_zero_cnt, trail_cnt;
> -	u32 ths_prepare_ns, tclk_trail_ns;
> +	u32 prepare_cnt, exit_zero_cnt, clk_zero_cnt;
> +	u32 ths_prepare_ns;
>  	u32 hs_zero_cnt;
>  	u32 tclk_pre_cnt, tclk_post_cnt;
>=20
>  	tlpx_ns =3D intel_dsi_tlpx_ns(intel_dsi);
>=20
> -	tclk_trail_ns =3D max(mipi_config->tclk_trail, mipi_config->ths_trail);
>  	ths_prepare_ns =3D max(mipi_config->ths_prepare,
>  			     mipi_config->tclk_prepare);
>=20
> @@ -1897,14 +1896,6 @@ static void icl_dphy_param_init(struct intel_dsi
> *intel_dsi)
>  		clk_zero_cnt =3D ICL_CLK_ZERO_CNT_MAX;
>  	}
>=20
> -	/* trail cnt in escape clocks*/
> -	trail_cnt =3D DIV_ROUND_UP(tclk_trail_ns, tlpx_ns);
> -	if (trail_cnt > ICL_TRAIL_CNT_MAX) {
> -		drm_dbg_kms(&dev_priv->drm, "trail_cnt out of range
> (%d)\n",
> -			    trail_cnt);
> -		trail_cnt =3D ICL_TRAIL_CNT_MAX;
> -	}
> -
>  	/* tclk pre count in escape clocks */
>  	tclk_pre_cnt =3D DIV_ROUND_UP(mipi_config->tclk_pre, tlpx_ns);
>  	if (tclk_pre_cnt > ICL_TCLK_PRE_CNT_MAX) { @@ -1948,17 +1939,13
> @@ static void icl_dphy_param_init(struct intel_dsi *intel_dsi)
>  			       CLK_PRE_OVERRIDE |
>  			       CLK_PRE(tclk_pre_cnt) |
>  			       CLK_POST_OVERRIDE |
> -			       CLK_POST(tclk_post_cnt) |
> -			       CLK_TRAIL_OVERRIDE |
> -			       CLK_TRAIL(trail_cnt));
> +			       CLK_POST(tclk_post_cnt));
>=20
>  	/* data lanes dphy timings */
>  	intel_dsi->dphy_data_lane_reg =3D (HS_PREPARE_OVERRIDE |
>  					 HS_PREPARE(prepare_cnt) |
>  					 HS_ZERO_OVERRIDE |
>  					 HS_ZERO(hs_zero_cnt) |
> -					 HS_TRAIL_OVERRIDE |
> -					 HS_TRAIL(trail_cnt) |
>  					 HS_EXIT_OVERRIDE |
>  					 HS_EXIT(exit_zero_cnt));
>=20
> --
> 2.17.1

