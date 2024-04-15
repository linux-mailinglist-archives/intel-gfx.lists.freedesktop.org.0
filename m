Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B9098A5B99
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Apr 2024 21:52:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 011C31127D4;
	Mon, 15 Apr 2024 19:52:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dH3p098u";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDC9B1127B9;
 Mon, 15 Apr 2024 19:52:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713210767; x=1744746767;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Vce7QSEKldPQVRq4F/Td5dL3kEcrvPP5hFwFvDLrmUU=;
 b=dH3p098uHMfcPMQaaQ8atDsKzb6KHUwtJfBnZb8YWW436DNbkX2PtEEg
 1AhDiPraWTaBvsomFqpAAQDqM+C7rQ3WlSdmpNEcXJJNwESQFxFeBWSyc
 lf+SgQ3+yuP9jjjew/s39jqfuPiU2ZYHKV8f8JHEfVqkBLpIUK574530Q
 drBVPwFN2HBjwY3NvtD4dtVsSV92AjQM0QcR+vqVYtLUICLvXpCibAnL6
 HhGlcuE5nxuViRfDmDaIBGLa9yLd5+XJSpFYcJH3ohdwfCmeQXT5zxUB8
 8YzPqV5YMNcdYks22qra+BfbXqtZxlRzGXfBe0GvBe/rdtaNhJsHc9pOo Q==;
X-CSE-ConnectionGUID: fU9qIkqiRUGsy2iME/93pA==
X-CSE-MsgGUID: IYNa69Y4T3K/I+1+ESIDJw==
X-IronPort-AV: E=McAfee;i="6600,9927,11045"; a="8841206"
X-IronPort-AV: E=Sophos;i="6.07,203,1708416000"; 
   d="scan'208";a="8841206"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 12:52:46 -0700
X-CSE-ConnectionGUID: zQ24IsEySPeuMNg71n97Aw==
X-CSE-MsgGUID: rL9gfuRETvmrU+i2XvP6iQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,203,1708416000"; d="scan'208";a="22442097"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Apr 2024 12:52:46 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 15 Apr 2024 12:52:45 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 15 Apr 2024 12:52:45 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 15 Apr 2024 12:52:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Sy++HE1t9apEBHQZFvw2JqsMxL4QswqU153uY8PQ2RioU4kmdd5q4OVaUQnU59+uioQfxgRW90LxrepVew/K6kHOScb2G/Bn7IRtV4xJ+r0s1hPdMxwaA9on4QrqE4QfNTp2jTGpR+xUc1tWU01lvcGPbM7sHtaQYtO/mQqEHJGvawDRaA7s2s4YEM+9dY6+g7Paa3uHFbs0GeAxSYYIME0K1Pw1V1O1FLMU0ZRNo4++Y+MbMCUKYLszeqpPdltnpduT2NcKZjgnjCT5Gp26PP4xtRxL4xnVIHy/e/YR5vyrlzMA95wXfDFsEANz/xYOSzGCu7qZhH6FPTB8tBAkXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Cz5az8g8I0k3THW/69TrndAQqM2qeh3F66uPJke34zY=;
 b=g8NYXWyO0w3y8EkVl2ypuur5WtBnhkjgTfzbnMcxvIGHrXpGhu2EAfSv2VnDLKhURBQSocP9DKfVbMBwU2eGbcWQT2+LTyHUzmackBTB4/5qJOOFnY9F7oOVQLrwtB42/w3QFGGOtFOVH7xTkAVinZn6tf2F135uiwaZpE4xkOToyad6KGAytduj5PPd4weR5WRwbkhZ9xYkLgBZqK+Xh1QCJuc5KC/+kZ2fuX6vfkm4LziPvMZCecfWCv4YX9nrzq0xcF06ehETiOLQw8L5eZm13xJaWQoKp/XLrzJNway0gHmNQ8edEr6HHGiVkfg16CS1ke2rxISHc++owFI76Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 BN9PR11MB5259.namprd11.prod.outlook.com (2603:10b6:408:134::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.31; Mon, 15 Apr
 2024 19:52:42 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::4da0:902a:ae47:afc9]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::4da0:902a:ae47:afc9%4]) with mapi id 15.20.7472.025; Mon, 15 Apr 2024
 19:52:42 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Vivekanandan, Balasubramani" <balasubramani.vivekanandan@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "De Marchi, Lucas" <lucas.demarchi@intel.com>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>,
 "Vivekanandan, Balasubramani" <balasubramani.vivekanandan@intel.com>
Subject: RE: [PATCH v3 13/21] drm/i915/xe2hpd: Add max memory bandwidth
 algorithm
Thread-Topic: [PATCH v3 13/21] drm/i915/xe2hpd: Add max memory bandwidth
 algorithm
Thread-Index: AQHajwz93jQvQTqVpUS2zBY3hsi+Q7FpvqJg
Date: Mon, 15 Apr 2024 19:52:42 +0000
Message-ID: <DM4PR11MB597124A2FD41D3247AA4BD4487092@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20240415081423.495834-1-balasubramani.vivekanandan@intel.com>
 <20240415081423.495834-14-balasubramani.vivekanandan@intel.com>
In-Reply-To: <20240415081423.495834-14-balasubramani.vivekanandan@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|BN9PR11MB5259:EE_
x-ms-office365-filtering-correlation-id: dcb342db-ef1d-4de1-6891-08dc5d859d29
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0fua5hMsL3EyWe63KpShwreIOpzcZYLOpYgq9nR8txpV4Mi47YnG9uh/pzEXedeIl+jUeXAMw8bvY+UtdKBcIhI0EI2x+zzAKH6+rAI/+eehx3Lr5I+hIvxR2YVGuTjZFS7FYBsk4/nob2Y91aBzv4kBAsvXo7GYvTAHUENMT/w9yqPhk9uGZ/hjyOC4qAIQyrPGew8HCkgKAaBHFkcg6gEezL0Eib/qgMXtt9YsU6EkgqqBjtTzve95j3d+XZbE/QE72aPK/YSMEn0t0eY+FVeG02wAiFXtij7sF2QqPM48BZfzfHjZ8o40oQKKS/kXLCl0zDskT6j/B4spkLQ392f8RofFPXGNh3abu0h+vDOCbaXnz/turSnvZnSV8FjSeDraxeenalREa/R7mw0723aayq9gct+mrBPvVJYLVGsI15rVD0VktcSYfsoMiKGqW5wxfATYyLZJRSGVfc68RT/0ioXjonYSuFtV2caoyAjWUufP97CquBr55BNww4PCVS2PODKLlIPkbgPcUCP9rDJGbNe9NgeCJJtWOyQmZhty30Y5TM0vZ7+583IAmGaDplE9pbKJrfuKV9SLc+yGcMtPUb9ySGiod7BJvXUU+mGkJeUawkOSm5vX/uV7+ywelSprt7EpWckcpDkWGp5EvU2ObeMqmFm2b4tFn2P+aNpU1SNBYdC2wnyN/40/sq1um1PjBtVg56rXlMDRv3LM6A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?GIfPAakQ6mtrMS1mN7ZG4rEoSl+wggkPJAznF0vIxu9N8wXEBZbvXajU3UCa?=
 =?us-ascii?Q?yq31pnAEBBpAs3osG+SmYQLqYjRNKwVwHsGZ4K0YFOzJZQhJPpWHzNXu9yOf?=
 =?us-ascii?Q?Ofru7ER1jSWgCKY2vK5uXsaSFTEab+lpyHQZ4qGaijxC0F1J3SdflJYTxFfa?=
 =?us-ascii?Q?PnoivmdN8vhA1EdnNPEAGghzcOFD8HurPoN71AxFBBEzTsE+KDwmpU7IqB1q?=
 =?us-ascii?Q?qmS3NZ6eX/FveKRuHaCUwQC2PFUDYGkFeuTHBDhO1gZU6Ek8b3YQLyjUYg2E?=
 =?us-ascii?Q?mC8RFK5FaX2mK5PDHTs7uY0/5yFWirdpJaux/8GySGZIJZp3BVMLR1vtkPib?=
 =?us-ascii?Q?sgUG8qzPAhPOT46XAEMszc2nvBQP4Kd3QvV3L6tnQjqt4eKRSocW0KFJULBT?=
 =?us-ascii?Q?fnVmY7bn7ReEWbuWil5R8NgfJM+UukSw8Ld0NBIiogWPUepPLchm035Q+8mN?=
 =?us-ascii?Q?7NN0b52hKzALjjTPnc1Oy52Qb0u1yCgEoqPkokN8GGISjwb14tyOvQ6qe1j8?=
 =?us-ascii?Q?ADdCCwcVeUupwsQo8ZmFA+Ptpc9ITPTCJp4ZBcLCSKN90KyLX+MOEJ17RfjF?=
 =?us-ascii?Q?2wQVTYS8UlYAzFQh50r/I0ofibZTOrPexAPQ8ZENaoteVfWTobrsjkAtp8CW?=
 =?us-ascii?Q?NskMnyp8oB8bLA6rRieYAP70QTY+ChkGoLEccD5V32Nec4RL4TaK0/EODD5a?=
 =?us-ascii?Q?3n7K3pf9fzOh1Pp7jqLbZ3eqM0K6iPF58UNMA4AeEffCrfuvFTfU0VK6csOi?=
 =?us-ascii?Q?pC0HAe8cmgZp0+IHrp+YXvvcxMPiC0t+TYQoS/zxqdy+VjmHk2l9FMiPBcWo?=
 =?us-ascii?Q?2SrRgx/kUh+ok0laOfQ0HIhhMWz6rJS4Kz1QmcX/9wqJjZ2gLO2HG4DG8U1z?=
 =?us-ascii?Q?p5d3DF1hnwNoJIN65wjWkbsZA3F7eoHzmghOgD6ELBVO/Lj/ueiZOQo49RqE?=
 =?us-ascii?Q?GOjJib31Er/z2VjSb3isOT62ftErmUshBk5U1MoiHIye2nje2JRZMIQVrFFL?=
 =?us-ascii?Q?NOHghQi3CzxxKlk6+JligzbyTUfrLMPN8y1AKvBm8/VxmS7Nen2y121q8jdO?=
 =?us-ascii?Q?/yxtA06G9g5RVTO8OABVwDwuXlcnt5xqzLPiX9PuOdpj7+q1JAEFKzxWPfFT?=
 =?us-ascii?Q?aQDa8XaDM3toBv2DHdBepfBxz97LWD8cdkLM+vM8yqBASqrWi44Lcgjk9gYg?=
 =?us-ascii?Q?f/8FlM5/Gk9G3a9+1Qy+nGKgdUsaTSR6fxgDKUPG13VR98suEjawB0Gpw8Y3?=
 =?us-ascii?Q?9vKccnuYvn8mnjGwksUGkIrs4hG/JImsRpFxsIBp4qOSSV2Q+SNcM2LsjBmq?=
 =?us-ascii?Q?vjFNvBJz16QZrsuoldUj0AMOf40SKbmGFvRMXECatCB8dYGcn8uO/NLGiKP8?=
 =?us-ascii?Q?EVwoKrF4UOLwz8IFYASTMQOP0SdW1rdI44y9E84R0/Sj0Z52RNstQVUDqVK/?=
 =?us-ascii?Q?eGIxPhHyzzFspqX1UCVWwijw7PL41ZxTVB2qCAnJq0Z6xue/mrmt8u787R4h?=
 =?us-ascii?Q?yZc9jdB3Q9McDW54KN1/Jzho68yZJPI6FDTWFcWijcEc2aouffU5CcE48VWE?=
 =?us-ascii?Q?Pu2iNw2SvuYknkC3Epew7TO63LNplA2+BJ/s7LBUX46cksyVYEkT1EYor5k0?=
 =?us-ascii?Q?Bg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dcb342db-ef1d-4de1-6891-08dc5d859d29
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Apr 2024 19:52:42.8038 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +AiVBFIb6fBQt5l3QAc2ucJf0luQ8ESJm8MS6mYomcZ1W1bLRplXlJL8Us48vWRadOup+8xYL8XLKWl6Fs2+8qrb2uj9YCE4vaDLzJSVung=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5259
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

LGTM,
Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

> -----Original Message-----
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of
> Balasubramani Vivekanandan
> Sent: Monday, April 15, 2024 1:14 AM
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: De Marchi, Lucas <lucas.demarchi@intel.com>; Roper, Matthew D
> <matthew.d.roper@intel.com>; Jani Nikula <jani.nikula@linux.intel.com>;
> Vivekanandan, Balasubramani <balasubramani.vivekanandan@intel.com>
> Subject: [PATCH v3 13/21] drm/i915/xe2hpd: Add max memory bandwidth
> algorithm
>=20
> From: Matt Roper <matthew.d.roper@intel.com>
>=20
> Unlike DG2, Xe2_HPD does support multiple GV points with different
> maximum memory bandwidths, but uses a much simpler algorithm than igpu
> platforms use.
>=20
> Bspec: 64631
> CC: Jani Nikula <jani.nikula@linux.intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Balasubramani Vivekanandan
> <balasubramani.vivekanandan@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 65 ++++++++++++++++++++++++-
>  drivers/gpu/drm/i915/i915_drv.h         |  1 +
>  drivers/gpu/drm/i915/soc/intel_dram.c   |  4 ++
>  drivers/gpu/drm/xe/xe_device_types.h    |  1 +
>  4 files changed, 69 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c
> b/drivers/gpu/drm/i915/display/intel_bw.c
> index 7f2a50b4f494..dc9ac4831065 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -22,6 +22,8 @@ struct intel_qgv_point {
>  	u16 dclk, t_rp, t_rdpre, t_rc, t_ras, t_rcd;
>  };
>=20
> +#define DEPROGBWPCLIMIT		60
> +
>  struct intel_psf_gv_point {
>  	u8 clk; /* clock in multiples of 16.6666 MHz */
>  };
> @@ -239,6 +241,9 @@ static int icl_get_qgv_points(struct drm_i915_private
> *dev_priv,
>  			qi->channel_width =3D 16;
>  			qi->deinterleave =3D 4;
>  			break;
> +		case INTEL_DRAM_GDDR:
> +			qi->channel_width =3D 32;
> +			break;
>  		default:
>  			MISSING_CASE(dram_info->type);
>  			return -EINVAL;
> @@ -383,6 +388,12 @@ static const struct intel_sa_info mtl_sa_info =3D {
>  	.derating =3D 10,
>  };
>=20
> +static const struct intel_sa_info xe2_hpd_sa_info =3D {
> +	.derating =3D 30,
> +	.deprogbwlimit =3D 53,
> +	/* Other values not used by simplified algorithm */
> +};
> +
>  static int icl_get_bw_info(struct drm_i915_private *dev_priv, const stru=
ct
> intel_sa_info *sa)
>  {
>  	struct intel_qgv_info qi =3D {};
> @@ -489,7 +500,7 @@ static int tgl_get_bw_info(struct drm_i915_private
> *dev_priv, const struct intel
>  	dclk_max =3D icl_sagv_max_dclk(&qi);
>=20
>  	peakbw =3D num_channels * DIV_ROUND_UP(qi.channel_width, 8) *
> dclk_max;
> -	maxdebw =3D min(sa->deprogbwlimit * 1000, peakbw * 6 / 10); /* 60% */
> +	maxdebw =3D min(sa->deprogbwlimit * 1000, peakbw *
> DEPROGBWPCLIMIT / 100);
>=20
>  	ipqdepth =3D min(ipqdepthpch, sa->displayrtids / num_channels);
>  	/*
> @@ -594,6 +605,54 @@ static void dg2_get_bw_info(struct drm_i915_private
> *i915)
>  	i915->display.sagv.status =3D I915_SAGV_NOT_CONTROLLED;
>  }
>=20
> +static int xe2_hpd_get_bw_info(struct drm_i915_private *i915,
> +			       const struct intel_sa_info *sa)
> +{
> +	struct intel_qgv_info qi =3D {};
> +	int num_channels =3D i915->dram_info.num_channels;
> +	int peakbw, maxdebw;
> +	int ret, i;
> +
> +	ret =3D icl_get_qgv_points(i915, &qi, true);
> +	if (ret) {
> +		drm_dbg_kms(&i915->drm,
> +			    "Failed to get memory subsystem information, ignoring
> bandwidth limits");
> +		return ret;
> +	}
> +
> +	peakbw =3D num_channels * qi.channel_width / 8 *
> icl_sagv_max_dclk(&qi);
> +	maxdebw =3D min(sa->deprogbwlimit * 1000, peakbw *
> DEPROGBWPCLIMIT / 10);
> +
> +	for (i =3D 0; i < qi.num_points; i++) {
> +		const struct intel_qgv_point *point =3D &qi.points[i];
> +		int bw =3D num_channels * (qi.channel_width / 8) * point->dclk;
> +
> +		i915->display.bw.max[0].deratedbw[i] =3D
> +			min(maxdebw, (100 - sa->derating) * bw / 100);
> +		i915->display.bw.max[0].peakbw[i] =3D bw;
> +
> +		drm_dbg_kms(&i915->drm, "QGV %d: deratedbw=3D%u peakbw:
> %u\n",
> +			    i, i915->display.bw.max[0].deratedbw[i],
> +			    i915->display.bw.max[0].peakbw[i]);
> +	}
> +
> +	/* Bandwidth does not depend on # of planes; set all groups the same */
> +	i915->display.bw.max[0].num_planes =3D 1;
> +	i915->display.bw.max[0].num_qgv_points =3D qi.num_points;
> +	for (i =3D 1; i < ARRAY_SIZE(i915->display.bw.max); i++)
> +		memcpy(&i915->display.bw.max[i], &i915->display.bw.max[0],
> +		       sizeof(i915->display.bw.max[0]));
> +
> +	/*
> +	 * Xe2_HPD should always have exactly two QGV points representing
> +	 * battery and plugged-in operation.
> +	 */
> +	drm_WARN_ON(&i915->drm, qi.num_points !=3D 2);
> +	i915->display.sagv.status =3D I915_SAGV_ENABLED;
> +
> +	return 0;
> +}
> +
>  static unsigned int icl_max_bw_index(struct drm_i915_private *dev_priv,
>  				     int num_planes, int qgv_point)
>  {
> @@ -664,7 +723,9 @@ void intel_bw_init_hw(struct drm_i915_private
> *dev_priv)
>  	if (!HAS_DISPLAY(dev_priv))
>  		return;
>=20
> -	if (DISPLAY_VER(dev_priv) >=3D 14)
> +	if (DISPLAY_VER_FULL(dev_priv) >=3D IP_VER(14, 1) && IS_DGFX(dev_priv))
> +		xe2_hpd_get_bw_info(dev_priv, &xe2_hpd_sa_info);
> +	else if (DISPLAY_VER(dev_priv) >=3D 14)
>  		tgl_get_bw_info(dev_priv, &mtl_sa_info);
>  	else if (IS_DG2(dev_priv))
>  		dg2_get_bw_info(dev_priv);
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index 481ddce038b2..d1d21d433766 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -305,6 +305,7 @@ struct drm_i915_private {
>  			INTEL_DRAM_LPDDR4,
>  			INTEL_DRAM_DDR5,
>  			INTEL_DRAM_LPDDR5,
> +			INTEL_DRAM_GDDR,
>  		} type;
>  		u8 num_qgv_points;
>  		u8 num_psf_gv_points;
> diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c
> b/drivers/gpu/drm/i915/soc/intel_dram.c
> index 15492b69f698..99b541babb31 100644
> --- a/drivers/gpu/drm/i915/soc/intel_dram.c
> +++ b/drivers/gpu/drm/i915/soc/intel_dram.c
> @@ -640,6 +640,10 @@ static int xelpdp_get_dram_info(struct
> drm_i915_private *i915)
>  	case 5:
>  		dram_info->type =3D INTEL_DRAM_LPDDR3;
>  		break;
> +	case 8:
> +		drm_WARN_ON(&i915->drm, !IS_DGFX(i915));
> +		dram_info->type =3D INTEL_DRAM_GDDR;
> +		break;
>  	default:
>  		MISSING_CASE(val);
>  		return -EINVAL;
> diff --git a/drivers/gpu/drm/xe/xe_device_types.h
> b/drivers/gpu/drm/xe/xe_device_types.h
> index 60ced5f90c2b..d1aef541d1c7 100644
> --- a/drivers/gpu/drm/xe/xe_device_types.h
> +++ b/drivers/gpu/drm/xe/xe_device_types.h
> @@ -487,6 +487,7 @@ struct xe_device {
>  			INTEL_DRAM_LPDDR4,
>  			INTEL_DRAM_DDR5,
>  			INTEL_DRAM_LPDDR5,
> +			INTEL_DRAM_GDDR,
>  		} type;
>  		u8 num_qgv_points;
>  		u8 num_psf_gv_points;
> --
> 2.25.1

