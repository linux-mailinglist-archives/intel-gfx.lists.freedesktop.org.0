Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 672087EB3EE
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Nov 2023 16:40:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 858C910E21B;
	Tue, 14 Nov 2023 15:40:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E11310E21B
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Nov 2023 15:40:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699976448; x=1731512448;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=thj3u0SyADvvj+VXNW9KGnA3Ujh064fFeGNNjCJOwkE=;
 b=ZpBsBVnmJOvD7LfT+mteSTiLkTxr0mNceFDrqtNZumHOjxxn+j1G8XaA
 LJej4Twrx2G4EFUdZMvRWXBKGrccSlVGHi1pYuKTO+Db+7Sy7deXypHKD
 jSgrF4SITEHfZB0aNjzEY2QOPXO7jQ2ARlkcGyaccMqRu6GY5oZ15m+wm
 C0fbNSuTeMnKrHdQlVRECKHdPFFQfqCmaoW7+bORK9Mb+qUpeCdiv4NGd
 F09Cr+V81RN/wQSGWv89QgzjcqVJ/hH8iN6SwCIL1pxzYlt+Jn7dFhiA+
 XXI5W4H0eMJ9u/FyhcqdWLiTM+55bvPx7YWc/gFBLo/2q+KL5trWNVgck A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="476890214"
X-IronPort-AV: E=Sophos;i="6.03,302,1694761200"; d="scan'208";a="476890214"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2023 07:40:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="835058811"
X-IronPort-AV: E=Sophos;i="6.03,302,1694761200"; d="scan'208";a="835058811"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Nov 2023 07:40:48 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 14 Nov 2023 07:40:47 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Tue, 14 Nov 2023 07:40:47 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Tue, 14 Nov 2023 07:40:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YPjrXTWtuUQAqZsXn5Y3VcrF4zoC6GIxCFtDc58c4tIoYjaLtvkXQvv/4vju7WDX9A8jWrj1cde3/RDP1rFSoOJDeP+OVDUzRkjVSBb1sUV1/gDZdLCLez+OFknVUTez9+QBqZ4OPlZvx2Xe1tS0pp3oIdDdwyfbkT42Y5j1lvsUhD38Ggp17ukiBWcUhLfacuIwGeThILkMJ4E72BKkSvxU0/Df3OPmin3FNgiSKn0KKEgLsDn8ybOTLL4C1apW15XzVnvQJQEd8WgtwCdRrQHD5MkE69IDWB8P4OTxhCnnwYEAT4in39npxKgmVmotaQpnqQlKjtIubK/J1ObHTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0NlNjFh/+VmgY0rZBJe3XFbDEF9mVmoJvwpuVtLsPI4=;
 b=elZC/7wku64S0NDjZQMLjaSgtBcxTqiDWicaRqcj4ECC/4nnPil12VfkP+m0TbOlxzyUyTOqzUfLswEwOODLhicJKD1UvQmmCmZ6hQJe8ZCcmU1PqUeiPFJ3xHiUZ6jHWT5WNQD7rxzB++mqwQpn+cLl+Mz5cAHGn0bVkpykPq5McUCypZZ9IZ58BS0dnXxaYb3yhx1cDxp74pTOHJKjMGRI36ghPBFaliF6vXAx10jgvok1JVYOUA/t7H673XW3wCIKv7sX+SuBYYkS1m7M+u59OWyNuahVJgZq6gBAK6GyflVU1vtyi2VfPpBF98ooHztIekI5/K0hqInH0zaqhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6347.namprd11.prod.outlook.com (2603:10b6:208:388::6)
 by CY5PR11MB6116.namprd11.prod.outlook.com (2603:10b6:930:2b::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6977.29; Tue, 14 Nov
 2023 15:40:44 +0000
Received: from IA1PR11MB6347.namprd11.prod.outlook.com
 ([fe80::adc1:50ed:7426:5e0c]) by IA1PR11MB6347.namprd11.prod.outlook.com
 ([fe80::adc1:50ed:7426:5e0c%5]) with mapi id 15.20.6977.029; Tue, 14 Nov 2023
 15:40:44 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 3/3] drm/i915/display: In
 intel_framebuffer_init switch to use intel_bo_to_drm_bo
Thread-Index: AQHaFnCis7ltZ2yxmU6cYdLK+99iI7B59JDQ
Date: Tue, 14 Nov 2023 15:40:44 +0000
Message-ID: <IA1PR11MB6347C319C2B96C9E30A2828DF4B2A@IA1PR11MB6347.namprd11.prod.outlook.com>
References: <20231113203239.128207-1-juhapekka.heikkila@gmail.com>
 <20231113203239.128207-3-juhapekka.heikkila@gmail.com>
In-Reply-To: <20231113203239.128207-3-juhapekka.heikkila@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6347:EE_|CY5PR11MB6116:EE_
x-ms-office365-filtering-correlation-id: 8fbcbc5f-1465-43ec-707e-08dbe5281099
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 04RL8hwDVRwjMhqDRfmBHGLjRN1prz56lakwOYkj3O/OZRtZH7VNjaS8YaYnDj0ybUeiAiqGTkpwkAKyKyxWr5J+wch/BUjGdWRqZ4dqb85+ulc34x7vBG9mnENkFQIG8PumymLwXR04/31PEVXEGmXrwWUSJmyFCRe7DXsilVb/VO6Owkl5wj5Rqxf5GV1WnGDMa35IN0JSApJF9YnwMYsZiUl4X2+BU1Ejn4JhcYy7IikahRNBG7mWWp78OX3NN1EINibTfJvvzScR0fe8LOGzGss3rV93JrU00xFJ8DxFgm9uiYPZGsK8JHLu5WVmsOgThv4T3ELjYOLS/RNncym+eJC+wSfZ9xd4lGv83cUjLAxpPM+lmuvd30M7kRDrt9trOhrhJW55m4i3lU4d+lwY3XMbqjn4atrZPktqH51sVm08VMxy5aUnkLxarXHfahi+yRB8+DeZUgrTzMj27Bp0PJRuHGUGRvlnfq1/B6jOj4d3F12tO2LNMe8zx4hxBSWl7cEMicY55FIfmr8nRle2Vgya3Mh+vBOePq58Gh5RtE0rz6nAf2NHoJ3MksOIfQu89ugXHwsaHP8lOdLm0RdpROnhIf67wqVO3Q6jQccQCHUh7XbAGRpbOmX6g/Yg
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6347.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(39860400002)(376002)(396003)(366004)(230922051799003)(186009)(451199024)(1800799009)(64100799003)(26005)(38070700009)(478600001)(55016003)(71200400001)(7696005)(53546011)(6506007)(66556008)(316002)(9686003)(76116006)(66946007)(66476007)(66446008)(110136005)(38100700002)(64756008)(122000001)(52536014)(5660300002)(82960400001)(8936002)(8676002)(2906002)(41300700001)(33656002)(83380400001)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?h03iXyBHoR2WxBq4AUiVrNYri5IsNSpdGsdDbjBUOLRK+ulYuCuNTGKmci+r?=
 =?us-ascii?Q?N9K7Rs/JZE+L24F2GtFnElMn7V0Mrvl5dxcebO1lmb82KjNOSHF0Rvas4ZDN?=
 =?us-ascii?Q?N/wekVwX64tFlx6aZigeh+59QSS4p2wJIV+fWQZyYl7O5DkEfhVgMxi6fefs?=
 =?us-ascii?Q?AzfSAkHxHotA9g9n7NBBxzH4JyOSRI8CAvWtT8hvT1Sc8tKLnCvTxmUmtdLa?=
 =?us-ascii?Q?QVA8waHeV0SOxQd71sRdmonABXpGihW4t/hwQiubz0m5fze15UNXN1WKmbr4?=
 =?us-ascii?Q?u7guE5YNyAxPFAinm+W3SkTHGZLigzfYYCflFwwPS4rnmDooWzCKI4Nn70rg?=
 =?us-ascii?Q?CQwJAdEBu4sLYGJ4mTha4CZFKNHHgP3IJe1yKhjFcRmcHf5Fax3Be3mYfDRl?=
 =?us-ascii?Q?Gx0IXN+FJmIxkecO4O/acQWn3q5ZCfhp6yARflfdPdMaL6a6GWjcGoOmUBnB?=
 =?us-ascii?Q?cw/KoRITUyZm0agvGQbetRJIv+vIFA+2AgUZCd2DG8hMmm79jgzP+0sKsF6x?=
 =?us-ascii?Q?1AnyXF9javoRaNmFV6e7Xo0NfH73lnZDR+X2x5zExMq9kK1/QVWaRtGiSiZn?=
 =?us-ascii?Q?8UWYow8Sjbxlt/oWEXb5/JhgqxBn0AUUwX7GZXBQZxaqCrOJZoUrlzZ0cbKa?=
 =?us-ascii?Q?AW7PR3W/rVJ3I6ScG2MCcBcJeHceGPSgDvifzXqRb+P4VXJJJGZwlNMOJE30?=
 =?us-ascii?Q?TENguz93/ZuY438yEEArZ8ExsY3iYFIVhiPo51iOoXzxYNYLF/zcsAenKbVH?=
 =?us-ascii?Q?5hIvn85LRHmieeCiL98nXEQJZqeMFE6V05YZd2DpBf2me3+zwaxRfj1o68l9?=
 =?us-ascii?Q?S72orJeqTT5VlDL3U0+/tJ+jFZkZw78aeg4TY+QQcVkyetNxgHHFZ7AsjTv4?=
 =?us-ascii?Q?O8uvBsa7frn5Hko3b6h/a+Q69PprnkTAsnBoEmM06w1aTxg2r6//S3e+e/AV?=
 =?us-ascii?Q?/EQZxOY05c/eIwUImru8FWvhLpxcx+lM7E+qAnLkcz9Mxi603+aTQ6yBkt5+?=
 =?us-ascii?Q?2Ti3cKw8jFY60wj+keXQoNn//IrcZ1fVqTjhiEMuV4E28LBTcigRoTryyvVW?=
 =?us-ascii?Q?UuYKDneZRSIiQqEFHEMygIt587A5jhFvNQ1xREU8K5ZfgNjQbDKzmmrdakDH?=
 =?us-ascii?Q?GDW34oBnoPEWX17xYEomyI1eSYLn/EmY22u3cxqK5fX5OoRIEVv5Fl9Jy1ia?=
 =?us-ascii?Q?Q1yLwNZNfswnaVZbr8SmyUZvz/bjcOb71WU6lLaog3sw3nkog9vH55PnW4Ol?=
 =?us-ascii?Q?9gX2cCdON6o6UcU9r72C+PxPBud46LLqBK+LpFoHYYbLBcOxI8TcOvtifUaS?=
 =?us-ascii?Q?VnvQfuvO8ZQmEq8KaF6iL+AWGtDgr1sJVU6obCaWOZ7fe4OGtZuB+vZ6+QpF?=
 =?us-ascii?Q?YjpGkNcILZPvav5szhtLEAbdI5IERxpFoCLpH7KhaLhlEGWAaw+DSSBTUKXr?=
 =?us-ascii?Q?mAhJVaGgwAA/nCItwf+BDERr85rDeZHkwFRTAWrlcZ/axfhXeS6RTRHmAWfp?=
 =?us-ascii?Q?J2dvfmoy4mTjhB/52PLkdopZuqWc3w4uPiamknVVixB5/8hk7DaB1Ml/N6sl?=
 =?us-ascii?Q?ykGtqxpnkEBMkID4g6YufX7d8OBWyF4CmPnbyJI4?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6347.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8fbcbc5f-1465-43ec-707e-08dbe5281099
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Nov 2023 15:40:44.2889 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nh893SqGBAMdJil7dtT1ScEfL+7s6WLsyfHJqJ+TE2SlZvN/cPvqls00g4oGQ14aqAqZXf6VHkgyNHE9woZTHg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6116
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/display: In
 intel_framebuffer_init switch to use intel_bo_to_drm_bo
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ju=
ha-
> Pekka Heikkila
> Sent: Tuesday, November 14, 2023 2:03 AM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH 3/3] drm/i915/display: In intel_framebuffer_i=
nit
> switch to use intel_bo_to_drm_bo
>=20
> Use intel_bo_to_drm_bo instead of &obj->base.

Can you elaborate the reasoning why this was introduced and what is the
rationale for switch.

With that added, for the whole series
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fb.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c
> b/drivers/gpu/drm/i915/display/intel_fb.c
> index c1777ea35761..6d48aa3af95a 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -2093,7 +2093,7 @@ int intel_framebuffer_init(struct intel_framebuffer
> *intel_fb,
>  			}
>  		}
>=20
> -		fb->obj[i] =3D &obj->base;
> +		fb->obj[i] =3D intel_bo_to_drm_bo(obj);
>  	}
>=20
>  	ret =3D intel_fill_fb_info(dev_priv, intel_fb);
> --
> 2.25.1

