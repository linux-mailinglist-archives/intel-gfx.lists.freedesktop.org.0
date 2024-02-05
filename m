Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 947B48494E5
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Feb 2024 08:55:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D25F1123FE;
	Mon,  5 Feb 2024 07:55:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lEtF6LX4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B82391123FE
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Feb 2024 07:55:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707119738; x=1738655738;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=/5KB7c6Nq9NB42FTuUNsf/zI0+SphRlEvV8TWQWy6XE=;
 b=lEtF6LX4HW0/maB+0HKlppKsWkN7PmL6J37WPmJA7Z8HmNoySlyCjTlb
 I0R8gjLnKhExUamUkhdey6fjamJ5iH7VGHLIafZKj1NOQr+MWVqDHuAnR
 MZtlBOnqhW/sltgGDgv2wu1GsgVUfkz7Sg7fNKTKMnKKOJxBrSl7kfJJ1
 m0HSJnhZsRgLWv8QtTxGWmZyVITWa5v4k0UIqSS55Sdxo+TzkX2Da6ums
 7wanocjwFkXp6p683TkCZ6cbRhPttBGcm3nKDxmgfddt1J1ngy8fQEgmN
 rDxKlFbgwsOH+rsC1igh5tG1Xkkb/kjsOBU3llXdXB/44bM6dEcUdmEn8 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10974"; a="11840281"
X-IronPort-AV: E=Sophos;i="6.05,242,1701158400"; d="scan'208";a="11840281"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2024 23:55:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,242,1701158400"; 
   d="scan'208";a="625503"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Feb 2024 23:55:31 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 4 Feb 2024 23:55:29 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 4 Feb 2024 23:55:29 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 4 Feb 2024 23:55:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S7FZt8pf9Bt7VUQHhX8SSBzRVyLMZVqhsu71cG32gD+5sTbXori6glap6F4YgnfWnT2iog1Suy+i1N86O7PhWzMClgvTdoiWXmrUKTWUYKy/L62ZjgZUlPT7IyZu6WspvUDe++0EHfZhK905UOQkKGVB4qqA/Csy30ezBJc2Tt5wBgYFzz2y8P5zVsNbUYrPxx1ShR19xNA4wjbRmUmhBxpNk5JC3X2cNcoUxZ5dZXaxnV/jDMtDNI3AqevHp0I4+rh4uTQKWlEsIc8Mu+l9z2nKPRDJgx+WuzoKaCzMDMv/p28aXFZZ7sqFN4UKz3S54/QBwm8N3yXy9NnsX1HwuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yF/ZXVVkAsJoi+bcuX+yR+NtVCqZVs7uuX4fU+Q7gB0=;
 b=mzH83pZOG3v2Ri3dYZvqbVQlazy9TGZpFiTIICJiMkZrkJpQfczKSbBJ5PfyACHLxlzVyfTdaQHOkSN//ASCVa+QVLl9vGI+ITHGVReEM+Pi+b/jCmFhU+WX3I4XYMuCeTgL49GYEJQCqqYVKsxu18LaELD1onHFie1ebccrsIlJrq1CbtXJyw6pHj/qx6DXqc1qB0DNlYFvWhJ8cA9mF2rxmxtcdKfgAgiogZfRG8GoeZ7LlGWO+1h65omAIehoCilYPptN9l34CIUoCAdGE1/VcfRkGinfFq75B3OPHpKmsYQgN6TtGr7/0ZGhLD6pQIeMZmpJ2AUCrh3+SIY1Kg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by SA3PR11MB7463.namprd11.prod.outlook.com (2603:10b6:806:304::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.34; Mon, 5 Feb
 2024 07:55:28 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::e90b:e018:1b70:f107]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::e90b:e018:1b70:f107%4]) with mapi id 15.20.7249.032; Mon, 5 Feb 2024
 07:55:27 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 2/2] drm/i915/lnl: Program PKGC_LATENCY register
Thread-Topic: [PATCH 2/2] drm/i915/lnl: Program PKGC_LATENCY register
Thread-Index: AQHaVOxbjk9/cXlUfkaUNUaV92bhRLD7ZnSg
Date: Mon, 5 Feb 2024 07:55:27 +0000
Message-ID: <SJ1PR11MB6129F34B321815E5BEA5FBDCB9472@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20240201085158.1000285-1-suraj.kandpal@intel.com>
 <20240201085158.1000285-3-suraj.kandpal@intel.com>
In-Reply-To: <20240201085158.1000285-3-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|SA3PR11MB7463:EE_
x-ms-office365-filtering-correlation-id: e6514cca-6d2c-4c44-f52a-08dc261fd171
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7xPb6SfLRH+cNvXpkDoMZ9FQDm3D182/N0P8cthZ1GCHkA60Ia/V3AwuZ8nyMQheUIY9K0kLi/8Fq6W9hD8P3vWpD86cQQR8TT8FPirtxcl4qrihdzCkbRZMNavVfpOF2Qjq5SpQVmkDsrEocgK9z101OUikNoJvMkLLv4THldL/qCi3dsMY1JerHmy9O29CSEzsC2A4yVve7KlZWsxLE+vCJl4wvGpH6qJ927uwnINqSdLUuFN6wO96I2oI9T2iwT74QEgGtafrwHjGpFhx9nSqtz4DHZ6w2DqscH+VUg3rqP0DwlgCKhDDiruuhnCPToAWpWRaFDAnvPLj0Zmlc8n5GRdyrkVlXwfpGaQr2n0bUjPo5zo0zLMP4ybIo1XfGSnBYmFOhn0j5XQ5lbmZSj80GYHTt3CW1pQD059kO9TxMBf6v6bahlP7hSXhtf7t23EPKRfZdxd/4wEKa8DTiRMZLPz7SBnMYqRZ7nQeKHa9vMDF1P4gph3uXdowYpY7m3B4xA/Xvt4qv4QypFpYOzZ/HNFRoeUME2bJ4jqqJRBVsNFd1D8EtynBcG59adJGk9REqh9KXwPeWz19a1rQVqYanSgKQoOtIR5rWlUfxr1X6ixkXfp/A7YWzT3yo3pv
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(39860400002)(376002)(396003)(346002)(136003)(230922051799003)(64100799003)(186009)(1800799012)(451199024)(86362001)(33656002)(55016003)(71200400001)(26005)(2906002)(9686003)(5660300002)(53546011)(7696005)(6506007)(41300700001)(38070700009)(83380400001)(82960400001)(66476007)(76116006)(64756008)(66446008)(478600001)(110136005)(52536014)(66556008)(66946007)(316002)(8936002)(8676002)(38100700002)(122000001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fohsvgdWwyuIzk7kSljUAw34olUOXUEBNNmVssSgxnI1zUHL4DQXE1f8AGpl?=
 =?us-ascii?Q?fViEMiOJPBJF89sOB/GhQrXPepg9nIuKHIUuKOuVw9BPNbsK4S+uqkJDDLw3?=
 =?us-ascii?Q?29pWntWomLlvvrGqg7ug/pJj9zGiHo+DqfUJ6Wg8SBDZfmm6mI7huMpUsEoT?=
 =?us-ascii?Q?3hC0rINOcw2J0qMBEvy5axyg+5XBq2/XcgBtQLtUIvqwqu70cykDBUcNR4oA?=
 =?us-ascii?Q?gXPLcs2rdHvi2sR5vPQwblFRx+BKZa/uDDt74CPv7EqZSakxUyq3ziibJpKp?=
 =?us-ascii?Q?6qTxgKNpMlAsWHTbFGFQC4eH5V+2noadS2F3kbE6i3Enk6yyWJ5Qnw+ly3e0?=
 =?us-ascii?Q?4VE0GUD46hr9d5qFyPlkUEYeUQwymx+2t4JpBozDDYOdf61hTHiEGWUAIV7S?=
 =?us-ascii?Q?pfmstjYYEWN/uQ7uYWXXBoBuzAX76JLwqPymvoqARk7GS/l5ntrDz6TQzAIF?=
 =?us-ascii?Q?DaPkBxr0rc52n7PaKRZeSyqlNrvvuGdJWbKsiu8hUneJSAeWM9WHnAMfN/iY?=
 =?us-ascii?Q?aXQecrcpxKVB70PrciZ1woQMjdCkkeChvcHzFlrrTnuaxTmwpDXEEZy7w/yP?=
 =?us-ascii?Q?8erA4w/gijSc3OMcY607lMlt24A8LbHb11CQyR/TITpcJpRwt344tMeQbutO?=
 =?us-ascii?Q?zjaV/JitB42fsvedgh8bFihc/Qa1vg+hNC0HfTpzfahnKLjrMGrYHJfz1VeO?=
 =?us-ascii?Q?O97ZhMA1pN1us0cCvq2zwAgM8C2qyU53UC+VgqQBhkeEh/N96Mw6imcUFRL0?=
 =?us-ascii?Q?mAZ2V/AkNwesNvH+0oidvJA+Sw6qlOQQMfNoDeH/Rhv6XbcELyHHO+jArovB?=
 =?us-ascii?Q?CuXa0JaeWwagwph3B/xfplbRnPTPygMYPVFpO4U7QbtxfFC37BVFTnPTN8kE?=
 =?us-ascii?Q?SdtnYeF5umgg3xjmGCM0AHsXU8H35Sl2RzIB+fpvxQ5OdtNOQnyzuOxf0Xq1?=
 =?us-ascii?Q?j3IQne1gu1EnuxL6lCats5kRMoGGWgiPCkSOOTW6ty33WwLFgpm2FlnQkEY2?=
 =?us-ascii?Q?1aRtLif0NIEgLj3A8PpSzZayn1EZzjKPW5d1WSVMb1H/TvX8cG0mJ+YttpP9?=
 =?us-ascii?Q?Sr4gFVDOj6QAGyVotF/VeYxaVhDCC6bI/zUMbkjHjMqu2mZoUGOzaNfeRc5t?=
 =?us-ascii?Q?rE0616QaMme1exM9r/Ker2X6BIz6pV1H62Y2kwyuYdKg3T31Urxfeex1bPVv?=
 =?us-ascii?Q?V3w4w8NxB3fhhqDjpgK5PEaAz2V4UXJ3UWa84T5jLOqWOP9yYqlDM7tzAcPs?=
 =?us-ascii?Q?gBu3jS4PjXhRAMV83M9wknuityMwrY7lwS24t98HuwU4wVQ0P73+66gIXcQT?=
 =?us-ascii?Q?l0HY130Af60+Bu/DAebuW9leYX7OYKRGauAPa+PqtSfkx6n+TpT0JrGFFYQq?=
 =?us-ascii?Q?Yj6/90+mi3C8z56cLToQDKWTfYUPvH1ShMZnOdzjuZvck17XARcmgptQ3r92?=
 =?us-ascii?Q?4jMCurGhkEDSUHdZ5aXVu7HyMzqD+QyW58FaWX/86+CdRklWWKKgG0aWgBkp?=
 =?us-ascii?Q?uIZJSiVlzWogdk6AdBu73I21yURzpMxoWvy6lSBrVigTDhRJK28DKnhh87Ye?=
 =?us-ascii?Q?rr/LJDQFUni9IdSmL3D0YCh8n5yMNExCAzaJmv35I/ECoEHyxHS741LN+G9N?=
 =?us-ascii?Q?ng=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e6514cca-6d2c-4c44-f52a-08dc261fd171
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Feb 2024 07:55:27.9060 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tkMvdcwLL3SiUHz4ZxqEPUtwJ4t9PqPMB3a5NP8SyCVi5qxc/pv5j6mAGhRymcMZ2xUXi6dOCbiqtPUxozhcKrF+4RKMYoKUmw32pZP4gcI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7463
X-OriginatorOrg: intel.com
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



> -----Original Message-----
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Thursday, February 1, 2024 2:22 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; Kandpal,
> Suraj <suraj.kandpal@intel.com>
> Subject: [PATCH 2/2] drm/i915/lnl: Program PKGC_LATENCY register
>=20
> Program the PKGC_LATENCY register with the highest latency from level 1 a=
nd
> above LP registers else program with all 1's.
> This is used to improve package C residency by sending the highest latenc=
y
> tolerance requirement (LTR) when the planes are done with the frame until
> the next frame programming window (set context latency, window 2) starts.
> Bspec: 68986
>=20
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 31 ++++++++++++++++++++
>  1 file changed, 31 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
> b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 051a02ac01a4..c07376f37baa 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -3394,6 +3394,34 @@ static void skl_read_wm_latency(struct
> drm_i915_private *i915, u16 wm[])
>  	adjust_wm_latency(i915, wm, num_levels, read_latency);  }
>=20
> +/*
> + * Program PKG_C_LATENCY Pkg C with highest valid latency from
> + * watermark level1 and up and above. If watermark level 1 is
> + * invalid program it with all 1's.
> + * Program PKG_C_LATENCY Added Wake Time =3D 0.
> + */
> +static void intel_program_pkgc_latency(struct drm_i915_private *i915,
> +				       u16 wm_latency[])
> +{
> +	u16 max_value =3D 0;
> +	u32 clear =3D 0, val =3D 0;
> +	int max_level =3D i915->display.wm.num_levels, i;
> +
> +	for (i =3D 1; i <=3D max_level; i++) {
> +		if (wm_latency[i] =3D=3D 0)
> +			break;
> +	else if (wm_latency[i] > max_value)

Fix the indentation here.

With the understanding that this is a bare bones implementation and pending=
 work will be floated in a different series.

LGTM

Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

> +		max_value =3D wm_latency[i];
> +	}
> +
> +	if (max_value =3D=3D 0)
> +		max_value =3D ~0 & LNL_PKG_C_LATENCY_MASK;
> +
> +	clear |=3D LNL_ADDED_WAKE_TIME_MASK |
> LNL_PKG_C_LATENCY_MASK;
> +	val |=3D max_value;
> +	intel_uncore_rmw(&i915->uncore, LNL_PKG_C_LATENCY, clear, val); }
> +
>  static void skl_setup_wm_latency(struct drm_i915_private *i915)  {
>  	if (HAS_HW_SAGV_WM(i915))
> @@ -3407,6 +3435,9 @@ static void skl_setup_wm_latency(struct
> drm_i915_private *i915)
>  		skl_read_wm_latency(i915, i915->display.wm.skl_latency);
>=20
>  	intel_print_wm_latency(i915, "Gen9 Plane", i915-
> >display.wm.skl_latency);
> +
> +	if (DISPLAY_VER(i915) >=3D 20)
> +		intel_program_pkgc_latency(i915, i915-
> >display.wm.skl_latency);
>  }
>=20
>  static const struct intel_wm_funcs skl_wm_funcs =3D {
> --
> 2.25.1

