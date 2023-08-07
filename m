Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9336F77186E
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Aug 2023 04:46:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C990110E1A1;
	Mon,  7 Aug 2023 02:45:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4DE110E1AF
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Aug 2023 02:45:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691376354; x=1722912354;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:reply-to:content-transfer-encoding: mime-version;
 bh=JZn/rkDV4N+3m0hJg+xrUgy76WK/8xSZ1Hq/ysGVcwo=;
 b=WAlYUa6qNn0tuHj4u6UL49b3RH/E9NUyUVNCq4i8Vg9XSLZ79blXAtOb
 u3gMEOhXRnmK5kVRQr5ymnzAO6NGwg4jftfCVSvB6XCYhQeesjr5IEEjV
 j2/zqJiHDdRttH50k8hiMv7MWAu4u1ZTarzJ3AOXNaRaIHsdYCwWrWpF1
 4xtMrJPWnhC8bNHE1syxvnO+9hZU+gFlP/qLYo14qMcGvDyZ6Kn56cxav
 N0Bp5hUOjkxTT6BSc2Hz9LlYVr+c+udwQjZWCshGPBsGSObAWr7VsrPqi
 W8VRntneK0fP11Kf9KwpCnlFqiT111Lg3GkevLJuDoCEg2iSK5FCkRhUy w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10794"; a="360522730"
X-IronPort-AV: E=Sophos;i="6.01,261,1684825200"; d="scan'208";a="360522730"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2023 19:45:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10794"; a="904555241"
X-IronPort-AV: E=Sophos;i="6.01,261,1684825200"; d="scan'208";a="904555241"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP; 06 Aug 2023 19:45:34 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Sun, 6 Aug 2023 19:45:34 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Sun, 6 Aug 2023 19:45:34 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Sun, 6 Aug 2023 19:45:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VkXGlKRN/OIhenB7dXCavimnR+m8DvFAS8nMoWaTr5U7M1Za1NtgYnragIRnj7tSGmdJbPM5NJfGd5IgOhZddMUVkINGlN1QsoFFw+tu5wRr57K9Z+8sfahEOstMMLIPotjnmTXF6kzo+hhh5OVYrOE4XFtSZxFn62KRfBCqLxShp7pP2tdP06Vok2NP5YH4VpPOrLHpOBcyGJZdbFaL8s2Lgmp6sLrTHeIUZm5T94mw43bSGwQ9fz5uOuWz/acjkJV7ChrCx8538H/R1vvV+GqE2rxMLg3OQJqBog4un6lku88Tu7k/EqQx9A9sHxn0QAJ5wHlVfYCY0M2/zWVz4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MA+WsdTPcPDc60YPnJCJ/I9cHtGWJ+wqhITX/Blzct0=;
 b=KHaFrc+gyrlKOi6NcpGqmk9pPkali6ZqPUZRA6x7c5Qx4NjQ+iGRglWTfxHm2oRHUnr4riZxZAZVH0yPt5EepKNhZRr9xZYIrxNjtDn/AMn5Hg4fNHHGcaogymIjB1EqnjJ9OfREiMeZUiOweeYO0Q1v3EhRMknWhWOkMooaLhxWljQxgO88TnNTl86lmxuzPLPaF4PAvAWwWTtJtwLhXUodiBRse0Thc3T35T5kyzqlJmyyjoERL+WlPFqCWTzcv5Yo927VK6Mn/YExlD3P5mIfEFs/19sa/5AUdTpMDHCaDjDPBvvRg1cl8mEZhFSIoDCoAsK/OhOYPXrr/O8wew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5894.namprd11.prod.outlook.com (2603:10b6:a03:42a::19)
 by CY8PR11MB6938.namprd11.prod.outlook.com (2603:10b6:930:5a::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.26; Mon, 7 Aug
 2023 02:45:31 +0000
Received: from SJ0PR11MB5894.namprd11.prod.outlook.com
 ([fe80::afe5:7a17:2a1d:624f]) by SJ0PR11MB5894.namprd11.prod.outlook.com
 ([fe80::afe5:7a17:2a1d:624f%2]) with mapi id 15.20.6631.046; Mon, 7 Aug 2023
 02:45:31 +0000
From: "Tseng, William" <william.tseng@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Kandpal, Suraj"
 <suraj.kandpal@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/vdsc: Fix first_line_bpg_offset calculation
Thread-Index: AQHZxiQWuv+BZA+IZUKQR2IqO7E8M6/ZxaoAgARX88A=
Date: Mon, 7 Aug 2023 02:45:31 +0000
Message-ID: <SJ0PR11MB589462918CA2DD01C9AD3850F10CA@SJ0PR11MB5894.namprd11.prod.outlook.com>
References: <20230803160207.3837263-1-suraj.kandpal@intel.com>
 <eaa719d1-75fc-bf6f-76b2-b1d46d4161b8@intel.com>
In-Reply-To: <eaa719d1-75fc-bf6f-76b2-b1d46d4161b8@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5894:EE_|CY8PR11MB6938:EE_
x-ms-office365-filtering-correlation-id: aeba3678-88a2-46c8-26ef-08db96f05e05
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: r3PkcPgl4Md5MzNHXaQiNevvvO5L4T1uptKU0NlwRKYmFwIVoGDcDq3N/86CW1DFq8Qhmokfop/yUbAjI2Et9MbJKrlIWQxOP/7M/7zEpzbhKvvFMmLlMvtg+xLVIcKebI7rbLt98BNciUT8V3dnOcffMrUHk5Zvpt0HxX/PZbt5gbd0Zxm4prZaeXNJMCHzmylgK4BmJgLC0VhGC6YvqwCqVrcEGuF+2DfF0AP8VKTwY+Z1fDlD2FGoAFBvGDToC7vkW/4RCjtjiz4vdbMyBHspwAN8nICzzIHf+ojUZTEVbK2FLykp5O4I0Vs6ZFkQGw0yUTrSrWv2rkoUBBk5qcroKKSnCofKz9kQBfOw+iLvpeN/Q92SDHkVkgsUFLStYM6rTi/l5gjD0t7hzY6cyIVDW284gwelcrKYE6hxBTSAdwcY+cZOV/Wve64DwFQaUb6/zh0UquxveseCHD2dJl+qoCgtiJ8RQnWg3Qdw9brKmkeN25jpbGH2F6tuP26A55U2d45vzL9FKqXqs3CVJ2Q62Cvvne7XiwNpjWSgcqJwfZ3sqXjSnvGH2IUXA39GR1xqs6XiyBYY8Zc+2B0XJ4kL8jlYV1/ZcCa2GZ1Y1CjvG3d/QSR9qSf6C681VyVZ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5894.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(396003)(136003)(366004)(39860400002)(376002)(451199021)(1800799003)(186006)(9686003)(55016003)(26005)(6506007)(53546011)(107886003)(110136005)(38100700002)(5660300002)(86362001)(52536014)(38070700005)(4326008)(2906002)(64756008)(66446008)(66476007)(66556008)(66946007)(76116006)(33656002)(8796002)(41300700001)(8676002)(316002)(8936002)(71200400001)(7696005)(122000001)(478600001)(82960400001)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?5p6H8dv5S3GjlqADqP+bJAXBXHvabpfUmle424a07uRDN0nYYQa/6+A5X4N/?=
 =?us-ascii?Q?/+VPTLgRTVqAAeC4NY/+Xb9Pcsrs3YnLLcLgciMsh6bYJxI+yiItY+SOtF9T?=
 =?us-ascii?Q?ybBIvbYDTicn4tKQWd/lHfA+myNpjMINZ8qj0J92pEF4Eg/0AQ8olX3VnSTH?=
 =?us-ascii?Q?oci/bniqfkjJupWRYC52+pysp3haiH8y2j5fu2b+RfxS39JeOJymVl5cORkR?=
 =?us-ascii?Q?ay5hlIQUmVhYVyx7mvolbxnVedv/OH0GPHf+r240XMLbFy52oWsgsv+8pyJ+?=
 =?us-ascii?Q?fZDQo68L+xYNxAmlF4PuCMrzNFSK/Cq9wWXTZGy1v66yoYrxQSEcDQ5wCj+Z?=
 =?us-ascii?Q?/UZR7nga0xH+m98OyrvdRVk8X6d/kAVxvauYiOeQ6BAk0gUlRvL12NxInogl?=
 =?us-ascii?Q?wptlnMJKYnfxp7t6iinCEHcVSGixOn5PxbO7gDqUeAQAnUEs0S9aK44Bp6Kj?=
 =?us-ascii?Q?MGF4tzd7qikTF6q7MXqitT9QB5WFPw6LQeSQRBbac2jT3983ho8rgPX4aWvq?=
 =?us-ascii?Q?fkruJkd81xooJ65MATdbtXvYxsuUKcjjDloSxBwqLGrXmldsEfi/kZ0/zL/v?=
 =?us-ascii?Q?ge+dtkBOsYJU1hA9QxRAn4OLGm3vLuOfxLnXh1czwudnI8hz/t2NAgh9UFSf?=
 =?us-ascii?Q?9LU5qyzd/L0ujx7NtZr93TpEgZjL4s7p1CMIUiDGYiFdUivopXvObaXJ5Kbe?=
 =?us-ascii?Q?+RXRf9KvQTAc76EjTbHYgfdbCVJurXDr6w/ZacRIAUzn6L3PgC8ZCXK4wLaq?=
 =?us-ascii?Q?IIkPS1ArQ7qBlF0LwBaNjBHneUjlXLHGLdh/k3g5bO0gZN4jUty+9+Vwritr?=
 =?us-ascii?Q?ria4ZVKeOtYRxdHITmcmBuqczc9syGBWfLGuSlQNHx+Tns1DcxqS2aDNush8?=
 =?us-ascii?Q?Nw+wvIaMALaKu0PinqSfASYIrv1+kEZ+pvQHa7bW4mTScz+bWZZ6rloEQtw7?=
 =?us-ascii?Q?8n08Sy0Y0BrVrSh8qOI6/X+ToRsyI1k6oyhIDPI8PqQVueeeEBg66JZ5IvEO?=
 =?us-ascii?Q?5SokGsrvmXXYqJVp3faLbIr+Wc7h6mlJ07uOagmajXuTZNRxuLP/FuuxH3wl?=
 =?us-ascii?Q?78dRDEEdhtxHvZe5C9TvfyVvTJlrA1hUFQYkvvqFsjK7ZsWO8c0XmbOQF/++?=
 =?us-ascii?Q?ggKn2gq4kthLNaOCDY9IU04HgGFWN3GOYSz5wQILttTEzH36EJrK79zb7vDS?=
 =?us-ascii?Q?Tlr0J9xNCqKQKrXZPZMjL5xplBy+3r3nFG1h5tbnz+7okViedWTcQfB53TCr?=
 =?us-ascii?Q?xm2dnO/zWnnkTDb6v4cpHzyWrC74HHDfCM6lsBS2I/ACtiXv9nKdziKaI8wB?=
 =?us-ascii?Q?6+6eFEMsYUFIRwAXhdobI0zDbH5q4eMDQwgw6Vwvc6sv6QhQDd20gnEFTbdl?=
 =?us-ascii?Q?/pNeu3xkeS3dibinTobMe+uqSaXuN5YEg1J5WNu6AwgCIv322YxrE4JrnauT?=
 =?us-ascii?Q?I2qwkGGtdCJuaekcB4aaI0anMrW7dwfOZavzNbGgYeSwr8bYrEomHMQfzL4H?=
 =?us-ascii?Q?y4OkXENkfXPkvCTN6y8+3EhX0z6NDNW+QBD3iMVUjsXAoiE3/AwJ6XugGwSL?=
 =?us-ascii?Q?p92bDoMhzgaA5mFINbPHhEaExsMNexA+2VWX4Os3?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5894.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aeba3678-88a2-46c8-26ef-08db96f05e05
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2023 02:45:31.6650 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uSnEiRo5KL4EXmJL/ba+Pym6Y9cy6QIcDdV0I1CPBUqfNHap8Eb9Biav+BakRR5rC4i8lmBFrjDdsN5jl94I8A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6938
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/vdsc: Fix first_line_bpg_offset
 calculation
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
Reply-To: "20230803160207.3837263-1-suraj.kandpal@intel.com"
 <20230803160207.3837263-1-suraj.kandpal@intel.com>
Cc: "Heikkila, Juha-pekka" <juha-pekka.heikkila@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For DSC 1.1, the value is set to 12 at 8bpp and 8bpc if looking the table=20
rc_parameters_pre_scr defined in drm_dsc_helper.c.  If slice_hiegith is 40,
the calculation result is 14, which is different from the value set in the =
table.
And the experiment result shows value 14 is not working for such DSI panel.

-----Original Message-----
From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>=20
Sent: Friday, August 4, 2023 3:55 PM
To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-gfx@lists.freedesktop.o=
rg
Cc: Tseng, William <william.tseng@intel.com>; Heikkila, Juha-pekka <juha-pe=
kka.heikkila@intel.com>
Subject: Re: [PATCH] drm/i915/vdsc: Fix first_line_bpg_offset calculation


On 8/3/2023 9:32 PM, Suraj Kandpal wrote:
> On checking DSC1.1 Errata and DSC 1.2 spec the current formula we were=20
> using was incorrect to calculate first_line_bpg_offset.
> The new fixed formula is derived from C model.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vdsc.c | 15 ++++++++++++---
>   1 file changed, 12 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c=20
> b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 9d76c2756784..a344c6ab8767 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -65,6 +65,9 @@ intel_vdsc_set_min_max_qp(struct drm_dsc_config *vdsc_c=
fg, int buf,
>   		intel_lookup_range_max_qp(bpc, buf, bpp, vdsc_cfg->native_420);
>   }
>  =20
> +#define CLAMP_TO(val, _min, _max) \
> +	max(_min, min(val, _max))

lets use clamp(), already defined in linux/minmax.h

With that fixed, this is:

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

> +
>   /*
>    * We are using the method provided in DSC 1.2a C-Model in codec_main.c
>    * Above method use a common formula to derive values for any=20
> combination of DSC @@ -80,13 +83,19 @@ calculate_rc_params(struct drm_dsc=
_config *vdsc_cfg)
>   	int bpc =3D vdsc_cfg->bits_per_component;
>   	int bpp =3D vdsc_cfg->bits_per_pixel >> 4;
>   	int qp_bpc_modifier =3D (bpc - 8) * 2;
> +	int uncompressed_bpg_rate;
> +	int first_line_bpg_offset;
>   	u32 res, buf_i, bpp_i;
>  =20
>   	if (vdsc_cfg->slice_height >=3D 8)
> -		vdsc_cfg->first_line_bpg_offset =3D
> -			12 + DIV_ROUND_UP((9 * min(34, vdsc_cfg->slice_height - 8)), 100);
> +		first_line_bpg_offset =3D
> +			12 + (9 * min(34, vdsc_cfg->slice_height - 8)) / 100;
>   	else
> -		vdsc_cfg->first_line_bpg_offset =3D 2 * (vdsc_cfg->slice_height - 1);
> +		first_line_bpg_offset =3D 2 * (vdsc_cfg->slice_height - 1);
> +
> +	uncompressed_bpg_rate =3D (3 * bpc + (vdsc_cfg->convert_rgb ? 0 : 2)) *=
 3;
> +	vdsc_cfg->first_line_bpg_offset =3D CLAMP_TO(first_line_bpg_offset, 0,
> +						   uncompressed_bpg_rate - 3 * bpp);
>  =20
>   	/*
>   	 * According to DSC 1.2 spec in Section 4.1 if native_420 is set:
