Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E2E8914714
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2024 12:08:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEAFE10E3EA;
	Mon, 24 Jun 2024 10:08:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hWo2BhOa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C453F10E3EE;
 Mon, 24 Jun 2024 10:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719223681; x=1750759681;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IKVY5B2R+VvCsSM1S1F13ePL0hGaA6oJNiGEIn/XxKc=;
 b=hWo2BhOaAcKCPaKqHBnG0Bme1B120N+1yLWYPRtmgr0+RXzb9Old+Sqj
 ZiPx0SDAb0W1D0I1yATbtT2ByzoqCnSjb4dFxjYLKF4AjSsqlJ8znGYjj
 N/hsvBervj7B6xr9xYzYyj6NqpgMMY2lx5DpKc0Q1g6UAyDq6rB3zcLyF
 qnykDxLmNNzeY5lAX7kyIE5r6Y0hrx6WFIPsbZiQVbt0Aew0s3W/bAFOx
 LHbfCBqMTZBuZx+FA45Uk7MKrbc1YhTNyke2UWSLY7vpuxwuHuD53xjiA
 1Me3op3TxxiBWPgRoPtgbHBAH8q2MQl0nmRidKFrAOI9u+mbomUVKDlwX A==;
X-CSE-ConnectionGUID: 7imWuUSWS0yAOYNU2qJY0Q==
X-CSE-MsgGUID: hMHt/6K5S8COkuOurKkAeg==
X-IronPort-AV: E=McAfee;i="6700,10204,11112"; a="15941378"
X-IronPort-AV: E=Sophos;i="6.08,261,1712646000"; d="scan'208";a="15941378"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2024 03:08:00 -0700
X-CSE-ConnectionGUID: Ho6oz671QuuqtjBkUj8FdA==
X-CSE-MsgGUID: QhtgRfIES1WPuoq8VwfsCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,261,1712646000"; d="scan'208";a="43059489"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Jun 2024 03:08:00 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 24 Jun 2024 03:07:59 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 24 Jun 2024 03:07:59 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 24 Jun 2024 03:07:59 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.174)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 24 Jun 2024 03:07:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZIN/oksSfTKTGxXSIhOeuO7fkd6Ez+q87uJcfRA+Cgwny28OMdJel307zEWnEDcOT9e7WpcJ4uSa6kn3HE7VeOOYW2nLaPHmFW3uqElh1pnJr16R+2i49Lrl/LJi7DrC9+GMuJ8P8vnMI4y+N0r8vtCBo4+LOiDQonX0S7vS3J2vB0UvH3gDUen4S6NOJUNTUr//Zylqjq6uzEX8nfbYglgz+7t4TM/S1vG07r8ufiLzC6IPJVOAHx++0jnFS5PsRaBlUK+Ro1fI4kFXXTgImwwCMMlXUT0YOKh39IUgoHHQmFZmjIeH6bjueAinn8vIZf1HRk7/53QBLRMp3xkpWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zboxYjWCMRnRq3YzR6DVQe7aM8lBU7dvlgJS0hSMCpk=;
 b=Tk6Hs+6MSh7spL4B6N2UZyohL8wN0hrstsOXC8j9PEAmkaONZQCDPgTa6LyHmwttaiVExFTBQRq+kZhRUYbeEpO24LSLovJ11CfXz5/qIxk3Z8nXaRkNsQUlfp2zxrL8J/ZLbcrwN66Ge9NjV0lDbW0drItUBkbyHbGRpR+idFO5vQOkBdAq/TTWdLs9kd5v/K1WaIY+UyxjeU9aUUEH889vNgUP8ya/L8mP1ROOne03Jt0SgYn5yPSCHZyCCWvvGIVkfM3oorNy9pnTo5JQ67oelkMF5CyUTx0IphqNSogU9KxisbBpTAGdahas+XE9v0SqiBBxE0REShJBb1oikg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SN7PR11MB7591.namprd11.prod.outlook.com (2603:10b6:806:32b::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.26; Mon, 24 Jun
 2024 10:07:55 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.7698.024; Mon, 24 Jun 2024
 10:07:55 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Vivi, 
 Rodrigo" <rodrigo.vivi@intel.com>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>, "Nautiyal, Ankit K"
 <ankit.k.nautiyal@intel.com>, "nathan@kernel.org" <nathan@kernel.org>
Subject: RE: [PATCH] drm/i915/display: Consider adjusted_pixel_rate to be u64
Thread-Topic: [PATCH] drm/i915/display: Consider adjusted_pixel_rate to be u64
Thread-Index: AQHaw619WeIPrR4kv0aChhekzOdXS7HWtTEw
Date: Mon, 24 Jun 2024 10:07:55 +0000
Message-ID: <SN7PR11MB6750FA78D9715687A0A8F831E3D42@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240621073454.1421676-1-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20240621073454.1421676-1-mitulkumar.ajitkumar.golani@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SN7PR11MB7591:EE_
x-ms-office365-filtering-correlation-id: 0d73976d-a4ff-4847-d4d0-08dc94358454
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230037|366013|376011|1800799021|38070700015;
x-microsoft-antispam-message-info: =?us-ascii?Q?l3MIP+upeN3d9qD3ulFL+c1TZOyFB/bmpQmzQHa9NWnBs70DsjVR4dFt6tu8?=
 =?us-ascii?Q?IORFGU12Ez3r+u5saGNI4NN0IlmZQkLtbuTchKdZnlCEswGksl4T93LyhcUf?=
 =?us-ascii?Q?Vjw01yQRaobGKs787e/Azz9Vbb3RZ0iy7D5VrisqIOVbVA/+yfmMhVtSyoZH?=
 =?us-ascii?Q?WM0ytCeLhDPviGU4Zjrq6/XjDAfJusnIigvrrMqBXhwITDMEwPlFgtWV6DfI?=
 =?us-ascii?Q?J+B+5IqywnVsm8Dl69xWFgSAbsrnrxVt2MDY1+sjaCPFd787IigJEXrLBxWv?=
 =?us-ascii?Q?0aqCXiOqUZnPlT7/Yb+2GQhlmcOFEj6kSMpgwZiJLAaa95xIZI2eBJfmaufM?=
 =?us-ascii?Q?M3KZcjpsvugh3Fsqp1LSDVIGAtWiVK+JyIaKnn6nriQLYhIw6ozDHvq+y7Xm?=
 =?us-ascii?Q?fhGBnxRDZ47lPYUkm5drUIu3oNvjjC9zooJy2yBQx6rrOIW/xrT46n/cMH/Q?=
 =?us-ascii?Q?ekyJ2pM1cVvgxSpuP1eJdBI+dJP86qvUBIr2UhmKtjYbiskTd3rg6/4nRYfW?=
 =?us-ascii?Q?TEl6YB+gRdNTedsWUBumr97spMAw8eLUHwuFxwilbd7n8BQMPaD8iW8iKn1U?=
 =?us-ascii?Q?dN2J/QdfHHblGDj09s42kNPEf9aiwfQLfKVURnSzNUA9MCKorUJyiX7Xh8RI?=
 =?us-ascii?Q?qodR+teRS6oIQfsPPGfYKKyX60mr5HWBTrUcPz3af5uCfKYWi9iuzKDF2+eR?=
 =?us-ascii?Q?e/rR6lT9g0qTROievUszAs88sRRxVDwZ7RvTv3WnER44nd9eiGwNkBvSk5NK?=
 =?us-ascii?Q?9xuy2DrauGIiHIA/4Qkfqus2uO1Bvq04YMcnRC+CBv6XQ6laEs/0ucihGsFD?=
 =?us-ascii?Q?qRTUMixZ4kYOYmfgNhHW4xZ8f3qpCePD8RZeHqYfFcpgDjiYlJjJh/SrVooY?=
 =?us-ascii?Q?1qPs7y689iievb9mEndtL48ik3VDHnwNy4gua1JRpjlIVHm4tyj2sAesCuUL?=
 =?us-ascii?Q?5w7uVjFOSzbPna+y/e9lpjfwqoQqlvuBT51qku8Rdu4+GbwlFYTmC8r7pQgd?=
 =?us-ascii?Q?/WHEaeStt9uFQY9i8QbsJpXLjusz0DspmxMzkHdz1DNUhL3sBlA4mmPn7d9p?=
 =?us-ascii?Q?vl2bXG4ycFrlXkVbt1ECprE6mJK9K8ZujHdAmu7/H4ai/k3xOy37CcyCq5EY?=
 =?us-ascii?Q?iVnIlSvZDJ7u5Z9j51mWMJCN4UP7ECdFPo1irAMA/eE2p2V2k41sVp1aI6rw?=
 =?us-ascii?Q?uHgNFyeKaIL2usAuXw5bbsf89v8vlSyHxmQzUpXeM8Sgp5AEka4Lmnu/nZCK?=
 =?us-ascii?Q?EFb9LThqR7giqqPGq80WSbx+3gl0KC4l6XQWMVhNTCcvRj+J2tXiPcYKt+T3?=
 =?us-ascii?Q?7UmQMuzUdzoYhWRHe9xseMZRDdPw0MYWwptpPZJecOjD+eBve9AwTbBv5ck3?=
 =?us-ascii?Q?PGLigm4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(366013)(376011)(1800799021)(38070700015); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?gkOQjQ9y1t0Oh0mKWaiXVoEskO1l14hTJCBfXauAXmTTcT+TMHcEdS4AhHwf?=
 =?us-ascii?Q?l03sUwCsGxJLnJeEDXmfwbu0qqQOV+XhJ8X2uxEiNm854/59+Uj3w9ydocJy?=
 =?us-ascii?Q?bsoF/N3wV2qOQxxfj6MIH8xkuNjp/TrBYrOTH/fv66Rda6BMDUujUq4slaHh?=
 =?us-ascii?Q?eLWIUqm1JzCS+V7tnn29RyTb+y3bvBsWBTOM9ytvjkB0wIbLWblP83+bTeoD?=
 =?us-ascii?Q?wlQvTTGXORh0eS91QkjayLC8oRlyZq4ndJ3PCw8qfuyRDGolnntZI9Y4JkzO?=
 =?us-ascii?Q?TjaJh4S5WiKvBGRx/KHUk1lolxE2pn7QRR3bt8eyhDambZdPYwNwuE7ealDt?=
 =?us-ascii?Q?WNZI6ih1E9piKO+XBIfn38ASm6ZxvbupFYLjTi0U2hFs5Ldd4Mw6C0QON1HU?=
 =?us-ascii?Q?ZxZQoUnQawAB35i49zbh/I7yz1PcastMyNQGoyBXmulavs9TpEKVcQdjG3hS?=
 =?us-ascii?Q?HfN5H7fwEXGUEkUmMdTRlG/nbOls82tlmu6l9b2dAOINdVLuVfAJac/5p0yM?=
 =?us-ascii?Q?Kir4dZD0spKy7cBW7RwGCkwFq483ykmN85WJqyYrwae4q52P0xmSYroEQDp/?=
 =?us-ascii?Q?j9hZ6A08+n5XrNLdcPhg6YJlKsk49F73rPSNoSFiOuyTmNwCwyr5vfKSA8sX?=
 =?us-ascii?Q?tc3MMPEo23NW+t3d3sPRBnybopeQKnQpAQ2jxdTzSaDJEoGGrdPt2swLSYL0?=
 =?us-ascii?Q?KPV0HllAC0bK7i9phQCaGo3/PLT/04Dfl+TCNVg76S9KD2m8bbdnldBYaMwI?=
 =?us-ascii?Q?YVPV1jFb2kUGmy1ir1j9fmh82dZ2sWGgXHP1pdp7pDATVoe52VuAmNMw6kZP?=
 =?us-ascii?Q?wyoBU+2DxygQrfmF9yNqweBnqXl1upb/0y5zUNUAh2qfThHVz0Y4I5s/NlKG?=
 =?us-ascii?Q?3lNQmLfwqKhoZlvjlt5UI5kBC4wQabWwAUkkjfp/y6y/OuYOJ5X7jgTjQKfM?=
 =?us-ascii?Q?irr7Q0uh64e7iNZTqIT62fHb1/eDGM8J6IX8IVq9AmrhXtpwVeFLRkUWH/b3?=
 =?us-ascii?Q?S2+/QEQftxFUfxjGCff6+Xxl6YnWKVKASrAVu6R/driUzTsg+RBBWJ86Qhdt?=
 =?us-ascii?Q?wan4fFRdDQHqO9oCsCsmaSb7cjMXR3a3mj1iQfLpoM/rgTa19ePnxQN7/Cz0?=
 =?us-ascii?Q?9vxf84MyYbBlvq/EDutinnjMcWuZ6PrYcneIzbeAvrf5mWpZuoUqs22/3wsa?=
 =?us-ascii?Q?BJV0WsKIIgwLkL2/eoSsyDPr4sq92537bEjy2JGux0qgXWLBM+j2fMH33H2z?=
 =?us-ascii?Q?VMM113MDKVMdj8bJABZMnHA2BDuKR/0fhGGMFMpb04TAm9FfhPsMLweqb+Zg?=
 =?us-ascii?Q?EZL8Jy0dsYV77TBfn86itDA6Kc8iN62vh1rPlMYa5inefaAAa2SmUQ3dljKZ?=
 =?us-ascii?Q?iO/uhVB9Bbe45hcg63e2g9WDNze9iVgBBEoEtOitGsx0R0uOqW658ks3g7a4?=
 =?us-ascii?Q?WHPYYHeHLMkJlBueRknxuRR240nrCkM7f7ptdZEKgRoJI/jq9AQzPt+Umww+?=
 =?us-ascii?Q?jTEgUDNSGMVV2tsAHzZJa8uh/oFgwQfkAxa2WXnx7I6Q2aLUQwZ+2wpQJ877?=
 =?us-ascii?Q?2pvYnNZEnVmZIHe1w3IjipqylXbIVqGrdvskJ1jm?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d73976d-a4ff-4847-d4d0-08dc94358454
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2024 10:07:55.3683 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PkyLzOF7gb9jdOo9Ro9VhoDwVgvMwlQ+AuaCM3XXrfrFLmHEKwjgQ65lhcMQhYPrAGR8CguPMyrPT+QltTJw1g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7591
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
> From: Golani, Mitulkumar Ajitkumar
> <mitulkumar.ajitkumar.golani@intel.com>
> Sent: Friday, June 21, 2024 1:05 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Vivi, Rodrigo <rodrigo.vivi@intel.com=
>;
> jani.nikula@linux.intel.com; Kandpal, Suraj <suraj.kandpal@intel.com>;
> Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; nathan@kernel.org
> Subject: [PATCH] drm/i915/display: Consider adjusted_pixel_rate to be u64
>=20
> Consider adjusted_pixel_rate to be a u64 to match the return type of
> mul_u32_u32() and avoid any compiler dependency for do_div.
>=20
> Fixes: 1676ecd303ac ("drm/i915: Compute CMRR and calculate vtotal")
> Cc: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Nathan Chancellor <nathan@kernel.org>
> Cc: intel-xe@lists.freedesktop.org
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

Thanks for the patches and reviews
Pushed to drm-intel-next

Regards,
Suraj Kandpal
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c
> b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 6430da25957d..5a0da64c7db3 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -137,7 +137,7 @@ static unsigned int
>  cmrr_get_vtotal(struct intel_crtc_state *crtc_state, bool
> video_mode_required)  {
>  	int multiplier_m =3D 1, multiplier_n =3D 1, vtotal, desired_refresh_rat=
e;
> -	long long adjusted_pixel_rate;
> +	u64 adjusted_pixel_rate;
>  	struct drm_display_mode *adjusted_mode =3D &crtc_state-
> >hw.adjusted_mode;
>=20
>  	desired_refresh_rate =3D drm_mode_vrefresh(adjusted_mode);
> --
> 2.45.2

