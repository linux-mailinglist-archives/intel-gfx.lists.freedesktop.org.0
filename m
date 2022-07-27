Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B066582095
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jul 2022 08:58:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58A65C1C3E;
	Wed, 27 Jul 2022 06:58:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F09AC1C41
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jul 2022 06:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658905133; x=1690441133;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=FCd6qDlI/Rjm3YheF60sl+vKRqZBSi6WnVCrzU3VEzo=;
 b=nUGJWijvTA0M45hASCnl7UMpGmBrRfRBw/vPteqHZaVSQIgLeFg9IAP8
 ZxVe9PMjxs+CEMdTkZn3UOrigfbepWt7v/N8Q7nWhP98I5ixQtTdghsn1
 hoGWWNUPgH4NNaXpPrt4RTTE6iOo87nD2Pf1YiCCarJGxi61vQSE2RY3H
 ZAr8CEKWn1Wn/pqZCtoUna6aHtCVXSHwYiSMy5DSWKrEmwEsX3XSYKA24
 AHQo/4gnwdssJQmvFqnRTUY4MAEGsp24UUte6BAAfKpUN5wUD3Sb4xILL
 dWidKdKpCZahkZdM8zplBrdFf/9O7bzikqjm9Ehr5K7H3zkh0e3wkLzyY g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10420"; a="288172541"
X-IronPort-AV: E=Sophos;i="5.93,195,1654585200"; d="scan'208";a="288172541"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2022 23:58:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,195,1654585200"; d="scan'208";a="689764387"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by FMSMGA003.fm.intel.com with ESMTP; 26 Jul 2022 23:58:53 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 26 Jul 2022 23:58:52 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 26 Jul 2022 23:58:52 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 26 Jul 2022 23:58:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NYrnv1RxgrsRMyOOOKKs/My8/P0THAtg+z6G1sHQs7DtUy8S7Su5J7/QbM8wgo4y+k0jALIY1YFkcXESbGHR1hn4CTucMd+vtKLuGzvMKJPhfom+oLAUUxIIp0GifzNVdsbx405b7l1pSoA+phV9SM+1FChmaMxPHFudd7PioFj7qU4JaeOObRAJQa9Eo48gE8qZKctkQcLjijkaVEPGpop3I3hqVa8WqY7jO+AOvh9cHGBLeOabY+0wqN+4Zz/LnVNgfVFizLR+avs66ZPEh55O+nXVw9vQ6mTzphz5LfZ3CnUduJ0OhrNSURv9EVCrPmtxBJqpiGoLPrV8mVYZWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ytgp2bKne483i6CEai0S/TJWLXw6IjqFnR3PP0MYVqg=;
 b=fxYq1+b/5gZDDVPkwCjl1E8hB9XDGg/GpUBolmBtwDZ+La3asVG1g5Zf1xW6DO+Dk15GZ/ljzOlWeHsxk1kjLYnZC3L+ligIE6LoGfrMXpGzZhcQAnq+apLDnFQbQWGmOb7uWBiblnUSUmoCb9ec6pAsaaujXB4bARJO+84u6leMAyxMoorJMv++0JQkN5Gq5SLnMsJxa4r02F0RJwiXu7KMnWSVfDDefQXDt7EBorJRKXNFoYNi+5mMnma1MR9BhvD2oIb9MbSQYiw4+aSr2Ijh/24JUtsk55YM4RjoUJSvYUnFT+RG6NBi53AR7RH8Y+mFT7IlYhowq0mbbv0gaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6344.namprd11.prod.outlook.com (2603:10b6:930:3b::6)
 by PH0PR11MB5879.namprd11.prod.outlook.com (2603:10b6:510:142::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.25; Wed, 27 Jul
 2022 06:58:50 +0000
Received: from CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::400e:5876:d13b:6ba1]) by CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::400e:5876:d13b:6ba1%5]) with mapi id 15.20.5458.025; Wed, 27 Jul 2022
 06:58:50 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2] drm/i915/hdmi: Prune modes that require
 HDMI2.1 FRL
Thread-Index: AQHYnN6X0egCsj5hxU+VbRanNegBlq2R0r9g
Date: Wed, 27 Jul 2022 06:58:50 +0000
Message-ID: <CY5PR11MB6344373A641C14F1784F7BE9F4979@CY5PR11MB6344.namprd11.prod.outlook.com>
References: <20220721084645.3411219-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20220721084645.3411219-1-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6a065f23-b726-4791-2e35-08da6f9d75f3
x-ms-traffictypediagnostic: PH0PR11MB5879:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: N2Pbo5iBBU/jSb2m1SLFLgGKtG7mx9NBg1CWTwAQdOBeSzNKQGazoTiGOQzPWoMJ0VOuq+FUEHw/qFEEz9LZrP3+O+N6eswzHOB1hJNsH/4hWrgGfvK7ImLChX46ZxZffr7/AwJDscKTMXQsJL4ibDTQc1ncAHJVGHZTcSwncpqVPitNbhuE6AJwCQr2C/Vq/O7AgyEJ/aMfxMtKde2+NwK6sNfC6dMq/tbmYGjnvW0YNntdHpHnS5PbqjO07OOu0+bvZjkRUIsBrGwiJay8o2sPtu9ZMeunPol6ORirAbc69cqM2gRqYnyaGM2x6x71ZJiauKmz8ouA6SQFJQwz4mDHvxltmOjr9JYZzBcsT81QEriqnOLUy0e87occ3I8y8bkPb/pj9QKy78mPYkJrfiClGbNpUYh15K3VK2nuUyJ+pDhv97Wt2Am2ThqkfiLPiLI9Xfgo4I/OR5XsErjO/MJ2tCdUIonkskAzfE4oyVS6ajhRXV/1huuRmYfPnqqUwYAz+nrlaDiHJZCdhawnuc4Pk7lVq9s80Yzmg+u0ldtfivyVbR3scIiazKH1aoGWOKq9O5azhgqa0b5QGHkl8MLGBl6x+e5C2I0/vEjSyAAYrtSWu/bglz2ddb2Ee2Vw/VUpDTTZ/ejI8gEf5Gk3/VfiOi1AleHFU6AfXhnERGrmppr1yh/QIpvoWmoY2KjqzGslAHBnZnELRjbATiYAxe6+YLj8PaQDiHPr7BlYlF4udETaEgLpPQgwv58v3/8K3sgD8RgiyW8RxpsyprEgbfU7KJVge0eeL0gl/HHKNQ8DXi5Vqsc3ihlL+qVtWbSu
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6344.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(376002)(346002)(366004)(39860400002)(396003)(316002)(110136005)(6506007)(41300700001)(53546011)(82960400001)(186003)(9686003)(33656002)(7696005)(71200400001)(26005)(55016003)(66556008)(5660300002)(66446008)(66476007)(2906002)(52536014)(38100700002)(76116006)(122000001)(8676002)(86362001)(64756008)(66946007)(83380400001)(8936002)(478600001)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?2sHJD6ysaPdhkT0iunYfpAfgBwwbnyUZnsMlmGKJZd6Adg4v70TKqEhv+O5N?=
 =?us-ascii?Q?8hGeo3w5ciV/cC2+tYzuA2pbssLQZZqs9houYEcZeI6bdjqmM5Km0jcjPNG4?=
 =?us-ascii?Q?czFzd2MecEBhid7YJvBCtlSRyzNAntsa2/uTC+MuZHCnnPgqDk3H3MMb7EsN?=
 =?us-ascii?Q?267U1sJ2uw7G+vjB/PNy8T6C6hXVuofM48b8OiZrbA9r2ig1898DqpLyWB3X?=
 =?us-ascii?Q?dmakJk+K2Wa8D8mjOakyMfiphuS+fVDQAH0c63aESXcyyKbd2YlRD/cOcp29?=
 =?us-ascii?Q?oR9UCgcVS+HHQWVgc0LbiyTuzej/Uss5J/5Ck4gTsqRMiWtKanold0Efii1Z?=
 =?us-ascii?Q?05+rSxZO6CRhiByowGULNoCL407NKe58hbWx/BMlLOBkMh4Wzsx9fMePeTlM?=
 =?us-ascii?Q?c5RrGYUSAcQk4vjJpilrmmEr1GFttu9hlQVvKvmcXN1K1dcmOCzA/D1sQWiF?=
 =?us-ascii?Q?MQkoKlXc3RHAqXeTlpOg+8lwYnM+OxjJPYteKVfXOc9+cif8r9PQIi/Jx8j8?=
 =?us-ascii?Q?xhTtB21GEkyo6S+q1GJc+N9+8wrB8QpdtiFlZUW4yj67t1xgodZfochRaNVM?=
 =?us-ascii?Q?yvPGq5KEb+o8OckBxkOSpilf5HCkdwB/5M2ZuK9r7Ch2rOrHTpuu0StidPsj?=
 =?us-ascii?Q?4zsVtN8H7T0ygnXbuKAPtNHqNqog7wBy/49InR6inPI02NepQuph+owvjOYS?=
 =?us-ascii?Q?y/OhdncBmD9GGA1Z2gGPRlk2Po6j5WDV9PU314Of2dFMoN+hxhLur5DT79+x?=
 =?us-ascii?Q?3yrd6Bah6IldiEE3KAkEm1YmgK3cQJlogALaUwZ40SpgTGiSa7svi904Uc6B?=
 =?us-ascii?Q?VLw1O60q8q3g1cVEdL5ck64FC6vQOP31ZSanKTik4POOarG5Ghmx5AfIqVx+?=
 =?us-ascii?Q?sud+FpAInjCaN2sj04sfNKt+wD2P1X4R5uDzNzl2uKIj+lqqI2C6oVJEGSS4?=
 =?us-ascii?Q?GABDjrmneXeUQJu8JkpVAG5WwWz9lwIyMdaE3a6WUMI4w9Zyc4QyIzeEAY4C?=
 =?us-ascii?Q?NEDi6FB4lVbjvkHm6eH6h24xrbk8wtYRwVRk2JUW2GSiopYDo9nTepDN/oHM?=
 =?us-ascii?Q?uella6V3C42bqeRwzElvwGtIQ0B+562ET9FccC/bnAMtbO+RQMxsAuI/SiEb?=
 =?us-ascii?Q?FofejsiKvMdgj6eEf6sceHMM4j0P9k8w/CJKLhJI/G/QqlQRM0RdbDeRevlE?=
 =?us-ascii?Q?nwCd0hSBODskLcsEMEK3Fa15oh6pN7I9BS3y1jifaie0Pk5EUzm/19nkJW5s?=
 =?us-ascii?Q?npB9p1dMSVKA9QfzJkyrQmC4GOMBNtRAElcMCbMlQ+65HiwRZDGfEoyq89Pm?=
 =?us-ascii?Q?VkLA5FdfqXYmCnD60Wz6sTn3iqcBMNF5e/r0JAGXB/Am3XuJrjlZBD6iP3V3?=
 =?us-ascii?Q?tVKNfoGn6ybr8Kzhw1/LZB9SzqLVLpnAABThl82rbr+PXrphmPg0l6gT0bGc?=
 =?us-ascii?Q?nl5LyVNpEzzZDvlmkfaeBb5y7bCq9tnV6RdrWV2aj3GTsXd6XGxHFA1gJiz2?=
 =?us-ascii?Q?Iq6G5/Rgg/3GZWISfW/oefrfpdP0B04VL0M6sWbZFcNdysF65Hqdpafz+A2M?=
 =?us-ascii?Q?DgVDRhbyrOd/kFatBRnCxC3IXI/BT8rP+WpbIXza?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6344.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a065f23-b726-4791-2e35-08da6f9d75f3
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jul 2022 06:58:50.5141 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4Z07vMbGDVYP1n7iTgd1yH08cTYpNsjEXBfudxxlbB5TEhz9NL4jkJ853vTIFb1NMPddfZToJbRYVBMGPM4uXA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5879
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/hdmi: Prune modes that require
 HDMI2.1 FRL
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of An=
kit
> Nautiyal
> Sent: Thursday, July 21, 2022 2:17 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH v2] drm/i915/hdmi: Prune modes that require H=
DMI2.1
> FRL
>=20
> HDMI2.1 requires some higher resolution video modes to be enumerated only=
 if
> HDMI2.1 Fixed Rate Link (FRL) is supported.
> Current platforms do not support FRL transmission so prune modes that req=
uire
> HDMI2.1 FRL.
>=20
> v2: Fixed the condition to check for dotclock > 600.
> Return MODE_CLOCK_HIGH as mode status.

Pushed the change to drm-intel-next. Thanks for the patch and reviews.

Regards,
Uma Shankar

> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com> (v1)
> ---
>  drivers/gpu/drm/i915/display/intel_hdmi.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c
> b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index ebd91aa69dd2..a88f589351fa 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2001,6 +2001,15 @@ intel_hdmi_mode_valid(struct drm_connector
> *connector,
>  		clock *=3D 2;
>  	}
>=20
> +	/*
> +	 * HDMI2.1 requires higher resolution modes like 8k60, 4K120 to be
> +	 * enumerated only if FRL is supported. Current platforms do not suppor=
t
> +	 * FRL so prune the higher resolution modes that require doctclock more
> +	 * than 600MHz.
> +	 */
> +	if (clock > 600000)
> +		return MODE_CLOCK_HIGH;
> +
>  	ycbcr_420_only =3D drm_mode_is_420_only(&connector->display_info,
> mode);
>=20
>  	status =3D intel_hdmi_mode_clock_valid(connector, clock, has_hdmi_sink,
> ycbcr_420_only);
> --
> 2.25.1

