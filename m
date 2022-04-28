Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1C11512AFF
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Apr 2022 07:35:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1562F10E646;
	Thu, 28 Apr 2022 05:35:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0560510E646
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Apr 2022 05:35:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651124124; x=1682660124;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/nIwjdB146Kag9uNonyR3tXMcu0pImjXt6KuxsdMlhI=;
 b=lCWufJ4QcW6JpXf1MwizVBPAHZzZ3XG/ug5ZA6ZeXVhZSMot2LNYBlbb
 TCxx16epm6CF17ibgNdQuQmkd5IYyftkhefyGXrD9+XZM1JQtE5iFBUrt
 wwKT7yxoB8h0iAE1Rt1A5DlcfJI3cZDjkVyKQQA1AKtuwFDB0jvE/KGFT
 GzlGpjiSsnTQ/QCbrImVO5sH9yfZDummvU9cPXIcKwAdPShIh0yDM5oLz
 cirkWGXDmcbzq/B2l0a+cQxgbxNvT0Vo6Also5UP8UiMOk4TeNqKamhWR
 vlOGK/omJfQB8X84NR4lPIZLAQdPyDQMOwMk2i9Yq8cIMwE6TwQEtqy49 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10330"; a="246085503"
X-IronPort-AV: E=Sophos;i="5.90,295,1643702400"; d="scan'208";a="246085503"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2022 22:35:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,295,1643702400"; d="scan'208";a="559447956"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga007.jf.intel.com with ESMTP; 27 Apr 2022 22:35:24 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 27 Apr 2022 22:35:23 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 27 Apr 2022 22:35:23 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 27 Apr 2022 22:35:23 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.44) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 27 Apr 2022 22:35:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pxnlef/a3h1TioxjIcbezoWEx8sgE3mAuh6gUE0Km8f9AA522Vyu2nn5FXAodJiMW+VOKp9H/AadsWXbzi6Yt68+7UuccdGoDs/sx9F8l9bwpaJtm1XrJ4+rPIlsFxxHBgH6aewhDjD6C/+Vj/1SOD6NQn6Ic3zrwFPgPrt51FOO8UTRZwjJB52Fj0TQfpVNgtfWXGNGigOCiD5esPvGDD+e3v3VAI3PyxsVcMMbiXFOmA0AafWg+tqjQye9+fW0FfliqfvEHm/34rTWLyyJPDJZ7EkxUfT2dIsIkBzkAMATf87ys2BYOuICqNIuys37Lkd6bZiek1bVnkoOJiqKgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/nIwjdB146Kag9uNonyR3tXMcu0pImjXt6KuxsdMlhI=;
 b=jEIw7IqZDphrY2bMb64iGxRPWH6sp5j4JgI9L22GJc3arBIQnoNEBnocGki3ossEmUsDHAf5EhPLiZ0XkDPUiJxz/8VHsceOCCLfUEKQGhokZqW1Q/JIKccUea/WnAuR1PPEKSXZTBspUqj8C3GDH8kbH35ObVX/khuMi/ddzjoljeZ/ZTbiA0covPC9puBvV6iXc3hzQ2u2/Lx43Czpabiyp7BpAYipDbcLo0IWnCPcz8+wY8mYuF5ySdO6m2MFZ8I7hpL329m5pQSn823HNTJXq5rSncTZ0lpwAXaR5Ko1jH4Y/AX0Q+Rc8sLu3qxqfXxj8tZKvNdirHnw3axXwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 CO1PR11MB4884.namprd11.prod.outlook.com (2603:10b6:303:6c::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5206.13; Thu, 28 Apr 2022 05:35:21 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::dc18:9af3:5549:4d3d]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::dc18:9af3:5549:4d3d%7]) with mapi id 15.20.5186.021; Thu, 28 Apr 2022
 05:35:21 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH] drm/i915: Support Async Flip on Linear buffers
Thread-Index: AQHYWWXWrvMGjms3kEmwnEgqBlBTi60CgGEAgACO2+CAAJpEAIABJquQ
Date: Thu, 28 Apr 2022 05:35:21 +0000
Message-ID: <DM6PR11MB3177FDCC1F636934C2650DFBBAFD9@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220426120407.1334318-1-arun.r.murthy@intel.com>
 <Ymg2uBjovjgVAyC5@intel.com>
 <DM6PR11MB317721EBFA40865B0898F40ABAFA9@DM6PR11MB3177.namprd11.prod.outlook.com>
 <Ymkv9sCuA9SwUIvj@intel.com>
In-Reply-To: <Ymkv9sCuA9SwUIvj@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.401.20
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a353d82c-33cf-4c4e-2c19-08da28d8e301
x-ms-traffictypediagnostic: CO1PR11MB4884:EE_
x-microsoft-antispam-prvs: <CO1PR11MB48849AF20F454E543093B950BAFD9@CO1PR11MB4884.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: r43g1xtja42Vz6eSCc0bWCHuQWH+2AjThcz+DUf8mVPYU7JxrIpDFrf4rtqla+trrHNaoYExMpU2gKiEuqC+D6lFpon3U1mgzZfh8XclE1hDCeEvh50v8k2DHGkgLJJSOaBtBYz39dCfqKuijFKQMFPCii844YIxgLugwqrAkw0rBOPaLrNpPrzWqmG76LamEl/fXcwt3R1815qOL/Wl24rLWsh7pH/JdC6Xcx5GK7jL9jeJfoPdIzBa9i6yFFp66nqkG0dKWJ5A5ig3b5ULCkVKbd0C1gVi/LsOcdlPrB8XeOQw53Vtgua3BBInzi1ygBNdXFJZLZgGOgVuAk/f41qNo6ufYdJsI8OMO3NqA9Vk+br4irAkpnTcT3LCoIMX4vJTH4KHo+3ULXFQlna3Fg3GudW8C5GStDMRs9SHjCmh+8Cz+QXXQ/sZcPA4W+VblXwXRyQ0lr/ajw+KTIGz7rq74k7c5BWHHmYxsHEQ/Vwgd9NsYfJL1l5Hn0vWUIHj3DEgC5S5Y3ntRYavLHTwdN7bpxXGNvp9hR7pcVN9QpDduvhdSdjGNLOn/APqbEk3vO2ehKV5sMIYpN7eHxLEIWRLcU6xxmc/EWF7eL0qS4AtWrgedwsT0VaSerZbWgDCtK/QG99iBWkGQyfrQeMTZDU9WOEgPBBVAsCjZ2d8fJTxVPPFMY1VVlQVKBD5v05ykil0K2Y+DVw0x9vpWS5rVg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(55016003)(4744005)(316002)(9686003)(71200400001)(4326008)(26005)(55236004)(86362001)(5660300002)(54906003)(508600001)(6916009)(52536014)(38100700002)(8936002)(38070700005)(7696005)(82960400001)(6506007)(122000001)(186003)(33656002)(83380400001)(76116006)(66446008)(66476007)(8676002)(2906002)(64756008)(66946007)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?i8tPZGqRh7fu9agglcytukCHwy9fC0YJzBeUeEVxgLojsaBRh/nEYf42pV?=
 =?iso-8859-1?Q?LuXw4FJ66PxGmfHKFUuJs7MkGP3evJ97Nz4zX4jpsQA4DrFxi446IBLgF8?=
 =?iso-8859-1?Q?h4+VlfTmTYB7M9YGWVo81VLj2PJR5Jk4nxW0NX7MtfoUOkKZslWhDyF79a?=
 =?iso-8859-1?Q?YFNTvh/63r4kQJpcXfNKCO6DWlZ+eoiOefkDpIntQctsH37gmnOS2DUWlw?=
 =?iso-8859-1?Q?+L1rpsUz8rjLex5aNGRhX+03e8F56a2NXWZR90ksZK6PlF22js8zxCb2DK?=
 =?iso-8859-1?Q?kqzLGXZUOo7FzppPgCXPX3OjGlpQGQ/E6XysaxjIL00QUhT+nJ39rtYcdJ?=
 =?iso-8859-1?Q?QslC7cf8ZBtZeDi8fa2NWjdSVpYqY46bWsYgx5w0mogqyD8B92xfbLGdp/?=
 =?iso-8859-1?Q?13q3eVqQqQhACJcj7dF6bBHJ5QfcZ5Bt5S08L8w2CiB6LlwCoJNaClAtlT?=
 =?iso-8859-1?Q?ToskCjBERPaCX8BBkV0qhUEsSkeeTJPnNVEpmHtsUUZoRpo219xvutcIJJ?=
 =?iso-8859-1?Q?2/9N3rFUMOYZb5gra7cA3uDubjObeg5zgtm5nJMcbD/NiuGP+gcb+z++NA?=
 =?iso-8859-1?Q?v7uHNlpT0ntrbdFy2S0+3ftbj0JiKD4b5Y55z7/F8w5iJLeYp1FQVffu4I?=
 =?iso-8859-1?Q?METCC4uO0lOLysuw8NjNQc/6usO8A4xKqcn1l4qg9pZ6GEMWotHSygeiAO?=
 =?iso-8859-1?Q?krHYA8enKg0DJcKNsywyh1hr71F0BBqAjDRSPDff884ULJLjU8ecxz4YEe?=
 =?iso-8859-1?Q?U2wHqown7oYid3TzJ7t8j0IQDekrSvrb1dNZSkKz8FP2V7l5OVnH1pjDDP?=
 =?iso-8859-1?Q?9rC5ux5HCyhITG3xjQt9GQuBEwprqrcirDKqf2h/JzF9AzXJrPp3FhRPz9?=
 =?iso-8859-1?Q?zazmfWdU8NlQLs1kgNmjT94QSf3oK3o2pDe6NOhgnUAUJNpcuR0xDzXZvr?=
 =?iso-8859-1?Q?B/75GbZYHUq/eGPqRo4BuTAAH0TbT/uRmhGtt0GhU2A05Osmz/ZlsQ5wE0?=
 =?iso-8859-1?Q?T9R6MgyC/04YMGLX9xRYPHRVqYEHvOZZK1Vd6poJMKOsfTROwtruPlNc5/?=
 =?iso-8859-1?Q?WBuC4V72A1PQdUH3CCIALo+KjrH0oxjJ1ZseoAjJpgw3x5UMoTkD19qnCK?=
 =?iso-8859-1?Q?NwmFsIZ/x00SQ6NoLXtTRmInUCDK0uVFc9L2hbUeYJucJku3MajDCw4NyI?=
 =?iso-8859-1?Q?MH7JI4l7oiEaboYLNf9wOcT159fZFyRaLiCqTLQcO5WmvE68Ehp1l7kMU7?=
 =?iso-8859-1?Q?tIBsWBe2kN8lDgmXvNwLuYqXz8mjmTttvrkHPIJJyFB/Ez9eDHz4uEPSs8?=
 =?iso-8859-1?Q?LSsbTINVN33U7WgHfRYEN9sIIuB+fagm7SWvbj9VEH6jiyjMX6zZ8hyeUV?=
 =?iso-8859-1?Q?hpSf0Oxe7Ag7ql4fAEpsQlEhJeN3vbHLRunUTZ08TQtXQxsBXhgxDnGBEz?=
 =?iso-8859-1?Q?XV5PBs0hS+yrPkEs14s/mWC6KymbFdIwyMAjXXbkjGuKRuLoQ6K0eA+4yQ?=
 =?iso-8859-1?Q?gTyId6kgeo5YdVotCoLF+imm0a6zXfnG2ekASZlFgN2cHBkpsdsoJcw8vq?=
 =?iso-8859-1?Q?o5IAiapbDYTEkqOHGFS5h4IBxBmskcw6nbO5lfbojbh9CqMZb6hztcSxbx?=
 =?iso-8859-1?Q?pktMhfVG9Dim78jfiISuzr0NBkYYiqys6cZtEYcaOL0IWrjsJjL9ynIBWZ?=
 =?iso-8859-1?Q?tCJEFTYM5J0Hqji2DyLh7NVdcm6TpYVOCMSkL+K90GrHhKtZ8UXgIxEa28?=
 =?iso-8859-1?Q?duWPfPo+3qcvWKO4oS3bLooV5vSkzOVyL1jQskVOBAd5DQVkk7aODmy6zE?=
 =?iso-8859-1?Q?PHF/u09pkg=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a353d82c-33cf-4c4e-2c19-08da28d8e301
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2022 05:35:21.2585 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: V7GT1DkDLVaqQqbajBRnWZOLNC9qCXuAuSvoL4DvK34VeIm5b2WrGW2WWqmY3oXuA6Fc2YKx2cULDmIw2kdLAQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4884
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Support Async Flip on Linear
 buffers
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> > > It's supported earlier than that. But IIRC there was some kind of
> > > GTT alignment vs. async flip vs. FBC restriction that we weren't hand=
ling.
> > >
> > Should I enable it for earlier Gen also, or is it fine to keep it with =
starting
> Gen 12.
> > The only restriction that I see in Bspec is that during async flip
> > changes to stride, pixel format, compression, FBC etc is not allowed
> > and I see this is already taken care of. Am I missing anything?
>=20
> There is that GTT alignment restriction that should be mentioned
> somewhere. Can't quite remember where it was, maybe in PLANE_SURF.
>=20
I checked the BSpec, and don't find anything as such specific for Async fli=
p.
I also cross verified with the hardware team.

> But I guess the bigger question is what is the actual use case for this?
This feature is a requirement for LNL.

Thanks and Regards,
Arun R Murthy
--------------------
