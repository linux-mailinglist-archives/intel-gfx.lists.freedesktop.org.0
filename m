Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C36A5787529
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 18:22:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35B9E10E592;
	Thu, 24 Aug 2023 16:22:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48AC110E092
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 16:22:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692894148; x=1724430148;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=O4+zB1ESA9l+RA3jiZHJWIAFrwX28K1el/Ry1kc/MJs=;
 b=HlwIh6+/MlqcnRLHSv/6PLfc/lgzC2bVHgLi+ZpLdXNWDdnursd0YGmB
 ycFvyrT2I8BZt9Gjws7GAWH0YKDajWSEg9DChfYOLll43+IeAMOiGwXVI
 iEFShVitPmcno1teoHe7QhgjTqYa97wbg+mrdP0sS/L9srKRXR60nJfxK
 FwzSSBnpYg3n479DYUS9YJjSVPzOCDg1rYmWflG3Dvb0zFqgGsLlnZQZD
 MTiRmazU5JYs+HCLvIahZuPGvxEq3NAV3UT+W1XRQG62yCV6ytJH8HC/W
 1cJj67uKwFBrSy3vRtOSSrll8M+zj2wDLGtFL3xfsimMo4E7Oa219LsXa w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="364682081"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="364682081"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 09:22:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="880857028"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga001.fm.intel.com with ESMTP; 24 Aug 2023 09:22:30 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 09:22:25 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 09:22:25 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 24 Aug 2023 09:22:25 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 24 Aug 2023 09:22:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EnDCbLIQo5dYWD+77yjMvUwD2DCF2XZQKzp94cQuDsMxYihPR/4EIdASAHXkVZj2wy0uKWC4Fbpl+WkrElBArfXD/QJoL5VBGF1478xrmot71gpgEUpRM5FH1VpORmr1O6I/3BQff8O1M7D2wB7okGMX4l6gnrOtoLU1XDj0vk6GKjkM4JoeEhbdhPurxQYNwsnRuOViZVAZ/m3AQ6WmWITPFRePMvTmoOuvyEgPPPO1YxACjnlakNfEX9oi5v0QaXOQBqfzt2yTA/gGtvzAv9ZqWqH3DbxsNcVRSqMFYJAL6/Jg/CjbHAHoejhP6cakC9x4uBVpAA54fFSGiP2NmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u9Hsu9Qo6bmm0lCc8e3TZ7MBkK489tHeq3vqAakZQSQ=;
 b=ktEV96oDBKWHukiV1fK5ZE+LbXU750OyEt2joFiTh7Gd1L9o2dXiP17c3f30o/SRgTkHXwGlA33zMKhi6MDSz8i47fDqATCcJAVpaNd8kgHAjRzd5gV8mDemNaqfzZfP8L1FOVglxuolOVKwCEKEjpxilb/XgNbdKMKhQCk0auH9qhHOIfj4GmQE2WiSzwA0Aj5ESNRGRtFkn4R2APuS/Um65VGlm1AXOrKx43kA7XRS2cwtDIKYrsV8FaQ/VkF5Juu/GVU84nMAaS6niGrpC8mFXzyvrI+tIFtpzN1fiD0UE/HphDTjqNbXUxRzoUMH5vOj33Y8+BCb7K1TS10sbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH7PR11MB7026.namprd11.prod.outlook.com (2603:10b6:510:209::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Thu, 24 Aug
 2023 16:22:22 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419%7]) with mapi id 15.20.6699.027; Thu, 24 Aug 2023
 16:22:22 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 4/9] drm/i915/audio : Consider fractional
 vdsc bpp while computing tu_data
Thread-Index: AQHZ1PIqjpR1BABWw0W8rpF3yEO7Y6/5JAZw
Date: Thu, 24 Aug 2023 16:22:22 +0000
Message-ID: <SN7PR11MB67504DBD6DE9A9F36FE8B19BE31DA@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230822121033.597447-1-ankit.k.nautiyal@intel.com>
 <20230822121033.597447-5-ankit.k.nautiyal@intel.com>
In-Reply-To: <20230822121033.597447-5-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH7PR11MB7026:EE_
x-ms-office365-filtering-correlation-id: bee5f236-d367-4e4c-20c5-08dba4be4baf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: eaOlKQfHjamLSdHOJf0pWsGRzi5klUko1JVO4R/+A9MZKJuWDZyy/g8fBnNxbyPO5GY543AKxD6CvxQ9PpXLCdIIJL90w2ezb9DU4b4k7yvoFW1RmHf/1SO63xygYnyCEj/T4Mq650mWMRwGJE99Rx72WhwpUuiyl4M0nuJxoUo+sdjvKdWxt9gP9OAgUD/pvuEniO6Zmfb4g9KJnX76Ape2hb1+e62DdeEPHKX/x2dzDVziJ3MldqMpTuy6qyU/jbR8a+dpBqe3rei8qkfolo7eUw7er/GKh6JLFRDz7hZoOxW9ZM647wHxqRrBN050HeJ736fP25PoymmhN7Xq4RqSdvIzzsA+vdLZgT6C1jechuqQEuqYJmeXyfLvW14Fc2rkDoYMfPKMsdD98T7gBp5Ao7iMWamy7kqWjEc+U5E2RExFpKd8gpdzSML8U7Iv3ZhYKCTMTCzRkmB79HsUi9nzGYifI+WRsN+QxewBCZMbijbAmVFwGxQ5pn32F9UdmkPaLetkjWILc5NEal5dYXsxTJ+VS5vp9o0/axp/84tJ75TTd3CULaUzN6Ak3D31FPNK04l6tG0PPJxxlohC9ezx426WaD2Xm5m37R2HUSU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(396003)(366004)(136003)(346002)(186009)(1800799009)(451199024)(52536014)(66899024)(5660300002)(107886003)(8936002)(4326008)(8676002)(83380400001)(33656002)(7696005)(55016003)(26005)(71200400001)(38100700002)(38070700005)(82960400001)(122000001)(66556008)(66946007)(66476007)(6506007)(64756008)(66446008)(76116006)(316002)(110136005)(478600001)(41300700001)(2906002)(9686003)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?TLaWtKTZsZUCbfBVcafTuaYMv0Lq1x85TAA/W25Jz/bgMB3gAdCs9WNU+QZJ?=
 =?us-ascii?Q?4E1erHhqDgKV+aokgcB77U6NlYIGP1sUNIKQR2XVILObnF48GSafXQDDneov?=
 =?us-ascii?Q?bI5Jwz5Nhz6ecZwSBjRvJIYNOJYbDevSRbPw+Yu1QHAEm4Ry9f59Ded81cjM?=
 =?us-ascii?Q?FWGFyZVYxA8tyYk2eZ4P9WTGH4s2JkBKkfyFzxufevssCtEHY8ZJ92TQdPs1?=
 =?us-ascii?Q?xNU6fmGT0vDvI6WXmSScbk/Vct3A3qIHCkDoMQjI1dR5FDykRkK16FCVXvys?=
 =?us-ascii?Q?blCuRYi7LXWWy3yvT7c3zK4SFasZJf4KzbxCpOzUARY2UwYeS1I1daQXl5oG?=
 =?us-ascii?Q?RJhBNcaP0iZTsf8Td7wXHLshAMuj1Dgf/QuFcAsEQdVPsCOCs5dT/E5A6TKq?=
 =?us-ascii?Q?UMrusarBAvFnFq1KUmpFU4bQVvQtxEcY4vrcWQtEabgo1lcBo5dqfzYA6pXR?=
 =?us-ascii?Q?S31/CvVB21uNUsV8uKGyJaVfjzI9F4Qnkm1IIhr2ZnzJTPGmK/vugf04gZqi?=
 =?us-ascii?Q?bB6kVZE0dM+bmPBQGt1OhmeFOSDht0MPz0UfkU9h7OReeEO/M/+3WclEdEm1?=
 =?us-ascii?Q?pLf6O3heD8sJ3Acs4wKjAUtIUlD4Da+7xzJoQa9ci7LLfcdSvCQqxWCXHWpb?=
 =?us-ascii?Q?x0QKSXZmJOtPkCDvPKMvKWYRCvrICkBRwy+LK/l/6SwkxgAw43RIiO+DgXnb?=
 =?us-ascii?Q?BDKJiY6SRV/hFgiBk3eca06SBehjZuf8bo+FQPrgWfzAa5M8TMrukNBoxfkx?=
 =?us-ascii?Q?Lh9g/GS01J5UVK5CoqMATYgUI2dESke1QEDSnxtH6c+mO9RY8c4pdPx8uf1p?=
 =?us-ascii?Q?KrWAfs5b0H01Qyc8Xdp8BbZsS5397k0PoWOGta19PGPctSYT2ppi9hWNColU?=
 =?us-ascii?Q?ZxybWcgfx8RQ40PsYrCWyAPJiaGMnXurqdmzHuw6uWvGlq9u1WQpvpMUY3Ku?=
 =?us-ascii?Q?1whMgOGsHj5sKWBUMg54WahLeogj529Mc7cRaC5pfFrDuvcJ+2tm7NfrYdoN?=
 =?us-ascii?Q?d4I0LyaCfMNR6YMaiR+z6XDOO2sablzET2nrlzbRd/Zbub8Vk1OzyJZnFgNj?=
 =?us-ascii?Q?72lVQNaSujrV12TaHihHaUVPRa5cA6oITefpMXQOxxLuvk0ty83Cnq88FYaf?=
 =?us-ascii?Q?bav5Vub1VMn7+z+6NN/rIV1C+kJBoCxamkwdwDiPR3xAIPGBTJTC7N3dBh1W?=
 =?us-ascii?Q?9LPQV63PWUMe6pukao4EYJeJDY6G61i9LqMaoCVOS3F1lxdXbh8OBmw+TWdW?=
 =?us-ascii?Q?400KxY4w2e7CmC2bj4FxSzK+v71R6sKH2Kw/hjeth3QJ8vsxnilcVvuf1nQY?=
 =?us-ascii?Q?lXn/AS2iU4EEowrZdrC99sBZM7iJ9f7dM0ZeeHJY4mKaOdv06ueS6LNColga?=
 =?us-ascii?Q?vbSRTP1hVUtNiECJC1WnWwN8BkWVH2poP2ARrYS8ycGW4Qg9OEUaqd9mhZGC?=
 =?us-ascii?Q?x5/oXKulZOhD/J8jA5pLMlGcQqX/8T0fBpgU0UBAP7p5MLdulMrm2X5Qvpxb?=
 =?us-ascii?Q?U+EARXexSMJ+fSQ2x+xSxObnPldGwrdO0znX/i1CGCIPXRdyk9A33SDeQg2D?=
 =?us-ascii?Q?OksTuCdutTVmLabMsvy0I+mseOk8EBPMkODYzJA0?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bee5f236-d367-4e4c-20c5-08dba4be4baf
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2023 16:22:22.3531 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2Iz3J8quXEu9K0N4I2QPPFHFPjFKP+JWzfvfMwS2nAMrB6zX8s6Jk/lKp6/Hkaa3EkTMZ60HWYuE41WwrFzBXQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7026
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 4/9] drm/i915/audio : Consider fractional
 vdsc bpp while computing tu_data
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
Cc: "manasi.d.navare@intel.com" <manasi.d.navare@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> Subject: [Intel-gfx] [PATCH 4/9] drm/i915/audio : Consider fractional vds=
c bpp
> while computing tu_data
>=20
> MTL+ supports fractional compressed bits_per_pixel, with precision of
> 1/16. This compressed bpp is stored in U6.4 format.
> Accommodate the precision during calculation of transfer unit data for
> hblank_early calculation.
>=20
> v2:
> -Fixed tu_data calculation while dealing with U6.4 format. (Stan)
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_audio.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c
> b/drivers/gpu/drm/i915/display/intel_audio.c
> index 93969b63cdd8..bbd99e2fb399 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -521,14 +521,14 @@ static unsigned int calc_hblank_early_prog(struct
> intel_encoder *encoder,
>  	unsigned int link_clks_available, link_clks_required;
>  	unsigned int tu_data, tu_line, link_clks_active;
>  	unsigned int h_active, h_total, hblank_delta, pixel_clk;
> -	unsigned int fec_coeff, cdclk, vdsc_bpp;
> +	unsigned int fec_coeff, cdclk, vdsc_bppx16;
>  	unsigned int link_clk, lanes;
>  	unsigned int hblank_rise;
>=20
>  	h_active =3D crtc_state->hw.adjusted_mode.crtc_hdisplay;
>  	h_total =3D crtc_state->hw.adjusted_mode.crtc_htotal;
>  	pixel_clk =3D crtc_state->hw.adjusted_mode.crtc_clock;
> -	vdsc_bpp =3D dsc_integral_compressed_bpp(crtc_state-
> >dsc.compressed_bpp);
> +	vdsc_bppx16 =3D crtc_state->dsc.compressed_bpp;

This wouldn't be needed if dsc_integral_compressed_bpp wasn't called
Here in the second patch.
Maybe just a rename of the vdsc_bpp variable name as a part of this patch

Regards,
Suraj Kandpal

>  	cdclk =3D i915->display.cdclk.hw.cdclk;
>  	/* fec=3D 0.972261, using rounding multiplier of 1000000 */
>  	fec_coeff =3D 972261;
> @@ -536,10 +536,10 @@ static unsigned int calc_hblank_early_prog(struct
> intel_encoder *encoder,
>  	lanes =3D crtc_state->lane_count;
>=20
>  	drm_dbg_kms(&i915->drm, "h_active =3D %u link_clk =3D %u :"
> -		    "lanes =3D %u vdsc_bpp =3D %u cdclk =3D %u\n",
> -		    h_active, link_clk, lanes, vdsc_bpp, cdclk);
> +		    "lanes =3D %u vdsc_bppx16 =3D %u cdclk =3D %u\n",
> +		    h_active, link_clk, lanes, vdsc_bppx16, cdclk);
>=20
> -	if (WARN_ON(!link_clk || !pixel_clk || !lanes || !vdsc_bpp || !cdclk))
> +	if (WARN_ON(!link_clk || !pixel_clk || !lanes || !vdsc_bppx16 ||
> +!cdclk))
>  		return 0;
>=20
>  	link_clks_available =3D (h_total - h_active) * link_clk / pixel_clk - 2=
8; @@
> -551,8 +551,8 @@ static unsigned int calc_hblank_early_prog(struct
> intel_encoder *encoder,
>  		hblank_delta =3D DIV64_U64_ROUND_UP(mul_u32_u32(5 *
> (link_clk + cdclk), pixel_clk),
>  						  mul_u32_u32(link_clk,
> cdclk));
>=20
> -	tu_data =3D div64_u64(mul_u32_u32(pixel_clk * vdsc_bpp * 8,
> 1000000),
> -			    mul_u32_u32(link_clk * lanes, fec_coeff));
> +	tu_data =3D div64_u64(mul_u32_u32(pixel_clk * vdsc_bppx16 * 8,
> 1000000),
> +			    mul_u32_u32(link_clk * lanes * 16, fec_coeff));
>  	tu_line =3D div64_u64(h_active * mul_u32_u32(link_clk, fec_coeff),
>  			    mul_u32_u32(64 * pixel_clk, 1000000));
>  	link_clks_active  =3D (tu_line - 1) * 64 + tu_data;
> --
> 2.40.1

