Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B279802D1E
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Dec 2023 09:28:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 162F410E11D;
	Mon,  4 Dec 2023 08:28:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BE6910E0AE
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Dec 2023 08:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701678514; x=1733214514;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=m+K1JUWBVOt3Jw3U0S5vN/K9Z+yU64cIGe68tJ+q6kE=;
 b=SHR6baPKc9InqnvhnWMB9ibcP9Q90VTmDm/6ylQvn3RumhrVMVdTcf9c
 PVFnu5Ox10QrvFozrX1cKF1C+rjSRTLPggn7qT+8EGQO6wpBAIQYc2N/b
 yRRoN1+tlcdBbvAv2dXt7Jgp8ZnLRYFYAPnlPbEDPhr+BEpeGYSf/qVBQ
 YNmqYeXD5vebZ1HOpn41oARh624WbnuMNN60sMx6J+VKOXwcTjqkkLA72
 iGKXETvlvJKzQwuvOzJnVokBblvTcthTuryHCFrM5177E5u5OymsVzGMN
 s2E8WWKJ5J6l3REItKJLa27espVnE7v8HeNqJ2JsWFZz2M8moVkKjBYzA A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10913"; a="390860573"
X-IronPort-AV: E=Sophos;i="6.04,249,1695711600"; d="scan'208";a="390860573"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2023 00:28:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10913"; a="770468089"
X-IronPort-AV: E=Sophos;i="6.04,249,1695711600"; d="scan'208";a="770468089"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Dec 2023 00:28:32 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 4 Dec 2023 00:28:32 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 4 Dec 2023 00:28:31 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Mon, 4 Dec 2023 00:28:31 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 4 Dec 2023 00:28:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m+JzcZoo4LkqQ7s9e9BfNqJWOKXvuMECHmyWfsFkClVgmpTsRd/BzQRLjWRKGekDJ5c90VyoiXViV0v3kViOJMNfbxjRV9OWv+o4KIefDB3WWAWI8JrrG5j/24IBWt/28r8ptokb6T0YJ2n7JXrQ/c437q7RXSCdcXxjUX/satbQpwRek8n/g4hDhCAgHi6rIhu7b/TVPzCBw9720NhlavBxthhLI9VaavayOxvSVo7q6aqhI/K5IJ+XgRNqfF4kLTm71Iux+924VOGnPwuU32KXo/0YqrutnQkvhhv44WwRf0NTr+rbGmodkIlhvJyqGHtzgDLhStEIR75N2JQXnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lO4FNOkhQne3bp9QfDV7wfu4IZhVLiD11BGg/C/TM/g=;
 b=hsogyf4OUNa80J1x+yWABMskD7UiCJrzYt6eTAbHWPw0MiohO7JQo2e4Tud9Nmq2iFM9pivb6AM/q+g81rTI4i5ANWDj2BuVoMVw2vkDu7Gp3TpB3VXHU7CfYXbyj8CLtanR3z0NH69dQD1vEJR6n8r7oKJprbcHaYvCFZoiE11IK9WFeTLz7gVUuvJQW/BcVKsTWTpdJFqgXdCrEkrJvCQ3HEW0/mPhGnye/kjOu9jMnT7s2KMx0RQhSe9Mxb8MVctX7yGbIl3oNX5awIcH2W87i88GOpZz8ONQCl0+z+JE4Nf7+fJ/AlKyqRWiM2Mv2GR1kg2vpCWLmT2XfwN97A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by SA0PR11MB4749.namprd11.prod.outlook.com (2603:10b6:806:9a::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.33; Mon, 4 Dec
 2023 08:28:30 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::a226:f114:4de2:5762]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::a226:f114:4de2:5762%4]) with mapi id 15.20.7046.033; Mon, 4 Dec 2023
 08:28:30 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Poosa, Karthik" <karthik.poosa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/hwmon: Fix issues found by static analysis tool
 in i915 hwmon
Thread-Index: AQHaJGKGGOSNbCFtM0CikF6m8NTScbCYyvYA
Date: Mon, 4 Dec 2023 08:28:29 +0000
Message-ID: <CY5PR11MB62113A05ECA6229D39B5EC649586A@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20231201143430.1320510-1-karthik.poosa@intel.com>
In-Reply-To: <20231201143430.1320510-1-karthik.poosa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6211:EE_|SA0PR11MB4749:EE_
x-ms-office365-filtering-correlation-id: 76174dc0-da92-47f0-0f43-08dbf4a2fed5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HpdSIXncI9onthNRBm/br0PEt47+0ko2O8Hhs+Koi87xn/s42cR+JOSof0otxWEVGQpnk1E4nEsWH/CyKKJxqJq21y/WhlbmGPsTt6MSZqK6LA+AkgV/OAeB7Gf0lHEczffxh+eAlckNmM6b1pQtnivKcnJAzZVC4TgPAAs5YKsJM+MuNFk3rxUolH4AYCEozIrM3sUMd9v9lgXqXG4gPqbtcfT/iC88kzWXT2uIwHpDc4CYd4saGuEX64wthbh+g7ApIhLZWloVJhcFCzUGUpUsAz9xOSMeR74Pmvx/1HdOgTq1qh/fzhrHduID5FcbPOYF8jkHUsqywobbApiz2HMPDYHK3l9k2CWeubj/EnpGUbdVpYiyxivh8rS/NistZZPKZDS9iAdWRdzLVKrcyGmwshIheOmVRUl8DE67qLR07/nqfuTnSIv/2JLmk2sh38TniS7b0Ii1x1QJw4S0ZYiNL2z/78QkaF29CIh/g2x71bZ3TM9a2X8yLVu5kYAaNgP2vNjkTrDUiB4h9HO4DsIdJoODwjNqcpcJiEzz5pyoW/jOZeCcmdo76+LcRbI0oGYJcw7o602IIdzEbxHOsTnP0q8FReMPYv/zD5/fXE5P/5fNscOM5wuIUz5k6pzY
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(39860400002)(136003)(396003)(376002)(346002)(230922051799003)(1800799012)(186009)(64100799003)(451199024)(66556008)(66476007)(66446008)(64756008)(66946007)(76116006)(4326008)(8676002)(8936002)(110136005)(316002)(478600001)(71200400001)(5660300002)(38070700009)(41300700001)(33656002)(2906002)(86362001)(52536014)(82960400001)(83380400001)(26005)(107886003)(122000001)(38100700002)(55016003)(6506007)(9686003)(7696005)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?d6NXABVtYRy5f9O31qOi0UIvnhBZ2JdxWOovSEp7iH5Cls0XytaKsfvNStGI?=
 =?us-ascii?Q?VZWpwaiDaiEIaznGHnggGyB1Fosqq94oM5LsW+mlh5fh5Mm9ULoCJc4WgKMZ?=
 =?us-ascii?Q?N4bLouQV4vYSxZB/IXAa6pUeOyw9a+IyxH2mdQK+yukNAzQRsBoBg3S/K3tc?=
 =?us-ascii?Q?0NM0AR2nqHgR/KRp8Vn1hCZ5Zloo3HuvKqUkAK2NCzO45ooAlCeWvMT5076v?=
 =?us-ascii?Q?plRRyPajgUPb7PC/TdqOCymIusdAqyoIA+8Xizc9st/ncwNoO0uUHVOQwHYS?=
 =?us-ascii?Q?GKr4F2PF+Qc4HXTOGZnmFkl5YrpHt245hg+YUToTuyXPr0lb3/Q1aUPk888j?=
 =?us-ascii?Q?MVr87II7jziriHPt4g/pDxYP9cb5pd7tuGI/Ev9QpIOiIkmNsZ9oSlCDqo9H?=
 =?us-ascii?Q?NYnZ2mCTbs6cNGAR5vumgFLBnqLuZ7RFROO41LQEX6SU0rdHBdG0rn/xyKR0?=
 =?us-ascii?Q?J1ayxwF73bF0YM+aYpg2qWPm6KkCURcUWNd3ujU5J+0VUdLao+W7FYECigOY?=
 =?us-ascii?Q?FaSnFQSWVOfrnvbDGUIJtk9I9k8sHiLKtLOW8BFTkSe0YFtcrVuG64rKGd/i?=
 =?us-ascii?Q?NuKv7MUSL3s1CeOTpRgQyI9dR0JNJarGZkHIC9brQDAd8diAEg7tlwMd0ek9?=
 =?us-ascii?Q?2w7QIKG1WYHXz1/eNyODdHgYZ69DcH/GlIRaDKp4/8K9eZwRcCEs3HHoF3S3?=
 =?us-ascii?Q?fnulpX+sCbUXz8zjt0zbMLcs+qgFzymK31s3QcZBqb5TtD/emTKzIWdZ1i4k?=
 =?us-ascii?Q?atBeqLVqCWWnPDGzNzfypV6Gyi4tdN4w2M+dmhbWcOeqa/LpZYiYxqlX5J0F?=
 =?us-ascii?Q?iF5E09BE3tvZw3QNr5sQgFIhnhUjYPq+m6MNRIzJdegx52O9vUaf4mktsPGl?=
 =?us-ascii?Q?txRLb3esU5DXkoQHZ7XFveiPW+yyreWYf69KIGoUsXuRPjk67v3KxOl7Nkl+?=
 =?us-ascii?Q?Xc2/t4ezCyZu+U2DlUWTtalnnP3WZYtRrm+ChbAcdVworhQhD0cxLaLNfl8E?=
 =?us-ascii?Q?YzyrmtzuVxriOmPodCQ4BdrE/+uSqf4C0ah/vujJW8JIvgGoosYGZRMBiKpK?=
 =?us-ascii?Q?a5NR9GlrjZMh2ukQ5Orr1ZWgEesmgGOhFozH/sDxG0yZ3mSWfdvgpqHfksLs?=
 =?us-ascii?Q?f+OSEsFU/j78ZFmgVSqRC/uwuQb5uTNg0gwyEh8cwirMr9ASPcKBW0S4Ci1u?=
 =?us-ascii?Q?tOBSWlfEa87mmEvCjwDdQNw/dYFDkrefSqeOdozuSs9iENxkDtcA0JtCpnlf?=
 =?us-ascii?Q?oLNu1fnSMwGMJzncIFdCapR+8+Q6SRTBmNLpAC2/RQUVx5iI+r+65fHYOQRT?=
 =?us-ascii?Q?pf844Zj5LPhPnxwh6ebGrQYjwS6XOQkPJp+lsaV3a7zJ9AzM5BtIMCJyyHof?=
 =?us-ascii?Q?DBnOTqmH+xaAIV3WIC+1emVvYmscL9qObx0qJZbDJpcEsMkC0aUSnunNSZ95?=
 =?us-ascii?Q?iK8YjsRnFbxljMRzqv97L2XPUC7d3OAKdVrEd6c+qyH2HXJAr1fKInMYhmsm?=
 =?us-ascii?Q?WXi+WnEiurzVgkO3v4WGpGr8kdFXnyiMMh9hicBZJ00ArGhtg7ltU+TkrkIT?=
 =?us-ascii?Q?vbSmn52E7OxgEw0bi5Cy4Hl8hXS8g/fFn0gawy4S?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 76174dc0-da92-47f0-0f43-08dbf4a2fed5
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Dec 2023 08:28:29.9679 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HF5DXfXuO5jWahQuz7/R0HM51eYhYu17LfWPlaM+teicBBCh8xQUxVijkMHYsKgSKCXZSFnsbabRVbqbCteQpEcV+eM1Mc2KhX96qSsGCe8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4749
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/hwmon: Fix issues found by static
 analysis tool in i915 hwmon
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
> From: Poosa, Karthik <karthik.poosa@intel.com>
> Sent: Friday, December 1, 2023 8:05 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Gupta, Anshuman <anshuman.gupta@intel.com>; Nilawar, Badal
> <badal.nilawar@intel.com>; Poosa, Karthik <karthik.poosa@intel.com>
> Subject: [PATCH] drm/i915/hwmon: Fix issues found by static analysis tool=
 in
> i915 hwmon
Keep the subject short and explanatory.
" drm/i915/hwmon: Fix analysis tool issues "
>=20
> Updated i915 hwmon with fixes for issues reported by static analysis tool=
.
> Fixed unintentional buffer overflow (OVERFLOW_BEFORE_WIDEN) with
Remove an tool specific error codes like "OVERFLOW_BEFORE_WIDEN"
from commit message. Keep it generic.
> upcasting.
>=20
> Fixes: 4c2572fe0ae7 ("drm/i915/hwmon: Expose power1_max_interval")
> Signed-off-by: Karthik Poosa <karthik.poosa@intel.com>
Please add the review comment credits from reviewers.
With all above .
Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
Thanks,
Anshuman.
> ---
>  drivers/gpu/drm/i915/i915_hwmon.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/i915_hwmon.c
> b/drivers/gpu/drm/i915/i915_hwmon.c
> index 975da8e7f2a9..8c3f443c8347 100644
> --- a/drivers/gpu/drm/i915/i915_hwmon.c
> +++ b/drivers/gpu/drm/i915/i915_hwmon.c
> @@ -175,7 +175,7 @@ hwm_power1_max_interval_show(struct device
> *dev, struct device_attribute *attr,
>  	 *     tau4 =3D (4 | x) << y
>  	 * but add 2 when doing the final right shift to account for units
>  	 */
> -	tau4 =3D ((1 << x_w) | x) << y;
> +	tau4 =3D (u64)((1 << x_w) | x) << y;
>  	/* val in hwmon interface units (millisec) */
>  	out =3D mul_u64_u32_shr(tau4, SF_TIME, hwmon->scl_shift_time +
> x_w);
>=20
> @@ -211,7 +211,7 @@ hwm_power1_max_interval_store(struct device
> *dev,
>  	r =3D FIELD_PREP(PKG_MAX_WIN, PKG_MAX_WIN_DEFAULT);
>  	x =3D REG_FIELD_GET(PKG_MAX_WIN_X, r);
>  	y =3D REG_FIELD_GET(PKG_MAX_WIN_Y, r);
> -	tau4 =3D ((1 << x_w) | x) << y;
> +	tau4 =3D (u64)((1 << x_w) | x) << y;
>  	max_win =3D mul_u64_u32_shr(tau4, SF_TIME, hwmon->scl_shift_time
> + x_w);
>=20
>  	if (val > max_win)
> --
> 2.25.1

