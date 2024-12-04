Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7573C9E3769
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2024 11:25:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00ABA10ECCA;
	Wed,  4 Dec 2024 10:25:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AoGa50pU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CD0B10E085
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Dec 2024 10:25:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733307943; x=1764843943;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xbWgDjlaHj0ai93BnE35wyfWzsg8PukBfH39IpLpQOg=;
 b=AoGa50pUog83FU29+v8h1V67zM/CyKqmfwY/XJSCJIRQ0KdUa6PjGht6
 yP8tK+3xvNbR3d9j5UfS3WO35lkB+5DVg3fXpICwXzlyIz7STthzV4mCl
 YVFaLWcEqmW5aC+sIaf1EOApyJqOmwlMVgjHMunnflyxMN8ZuIly9iVfy
 KI3sN8H3Z3O/PnO5mhYgp7wgV0NZdyQ1HzsyWwM+UVWnTBr10QHrLleRm
 ceOX4yzAR976LuKovBfzusv7NpBck7YH18Es05WW7P+AIKzMV0S4dznuR
 LjSl5sFqljPiPzJsy3KbYyP3xbEvAvTw5IPKw347mXbWx9NOZlZWu7RG2 g==;
X-CSE-ConnectionGUID: 9rZm7i9CTn2jAQJ8lhQXhg==
X-CSE-MsgGUID: FIGRoMleQY6p3m4gzfk40w==
X-IronPort-AV: E=McAfee;i="6700,10204,11275"; a="44942910"
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="44942910"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 02:25:36 -0800
X-CSE-ConnectionGUID: mQ7zxJWmSqqn4W6HS/NmSw==
X-CSE-MsgGUID: Ct3ZHauUQxin6sfMPyYBIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="94152234"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Dec 2024 02:25:30 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Dec 2024 02:25:28 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 4 Dec 2024 02:25:28 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.175)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 4 Dec 2024 02:25:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=x05VFz3nqi7SM2eN+dDFCL8xyn5RPgDtIAp0QIi0lxPQD2XBuHclw7dyEQaW/Z07P5VGm1qmBQfSfB0at0d+ldxy+ufuhTnGx17Z792/B+9EKMDQ+h4AixXbK2eW/+tnjegVdAJXP25SIZ0fjfa42y6OwlAl17Gbl43Z4ch+AbNxE3DVzP9oLy3202L9t7JOg0/kvHXaRbyuTItmwoYpMojvZbJGVbSovjQd8TNxSGtCdDcOgyPao6mfcM41T/AabM3JYbXku5kfSU5TnrqlNheeWT2kQJpSP2EV53zuRnQLDqGXTUAnyWXzs5wOf2Qm7L4mmNiNV/5vqkXjm3Ioiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QgfKSr5WYArzEaf07yUX/7GwW1ZaLryV3hV5yqiMWYA=;
 b=LYgo2oWrf6ZaUMF72uywt5HjmBgp6iiMcmVI5toICaEFeiyOikDCzE/7SXcfSHjp0qbrSDo7TQ1xUH6tfkRlvpP08OqB8ODrC/T5vnS0ocp8/zF2cVmcFmJCYqY5Qnyg1ipX4OESMxyC4nNWy8KUZePpqoo+sRaBeZdDT+2c1rQWC0CCul8OW/80adMftej2FjFtvUoa76nA8inotzBQ2JXpKD74FTe+muRkkdII5iVhc1Mr7cLpBlr0Fid1wZmo5xdd2FPXxbcfszg8L2V5NaNJfIzogxCqvDE2hLFenvRubPKV6jaO/Ej/lCsbmXH3ndglkIxaNp5YZ7x1ECyCdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5979.namprd11.prod.outlook.com (2603:10b6:208:386::9)
 by SA1PR11MB8278.namprd11.prod.outlook.com (2603:10b6:806:25b::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.20; Wed, 4 Dec
 2024 10:25:25 +0000
Received: from BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::b0f6:fbc:94be:2372]) by BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::b0f6:fbc:94be:2372%7]) with mapi id 15.20.8207.017; Wed, 4 Dec 2024
 10:25:24 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>, "B, Jeevan"
 <jeevan.b@intel.com>
Subject: RE: [PATCH 1/2] drm/i915/lobf: Add lobf enablement in post plane
 update
Thread-Topic: [PATCH 1/2] drm/i915/lobf: Add lobf enablement in post plane
 update
Thread-Index: AQHbRJEVErgJcIvsS0yq3quKMBehgbLSumOAgAMptrA=
Date: Wed, 4 Dec 2024 10:25:24 +0000
Message-ID: <BL1PR11MB59796370C41EDA5FB36E9865F9372@BL1PR11MB5979.namprd11.prod.outlook.com>
References: <20241202074615.3601692-1-animesh.manna@intel.com>
 <20241202074615.3601692-2-animesh.manna@intel.com> <87ttbm5ria.fsf@intel.com>
In-Reply-To: <87ttbm5ria.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5979:EE_|SA1PR11MB8278:EE_
x-ms-office365-filtering-correlation-id: a310bf6a-277e-4411-a71b-08dd144df72d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?gOBn9MwuYHPA1wdPfpseYzzp91A6A/LuoCSvhKLUvI1MHLthCDAOpJ9+jJ6n?=
 =?us-ascii?Q?Q9CWlyayr4f9hRgbmWFdez3WnW7k0plixAXqdPwZb6FbTKLWJKje7cqqTDUn?=
 =?us-ascii?Q?r6yyHMu8h+wSr5DUzsI5S/k/hMjXUQZyVohaR0SNVVCcsxCGK+dwte60SZEG?=
 =?us-ascii?Q?SosvJDVSyRPbfoSgejEJMZRpVvGSZIy0Is/mIgAAwIkB8J6xWFmvbQPtNziA?=
 =?us-ascii?Q?+TfxmGfuiPsFShMqpxHfHtDq/0fmGXIlV+Ooc3FAQrUJIzApMhfwQHDDmZfH?=
 =?us-ascii?Q?ZIJ3BuIa6eo9C4HlNasZYsHe7GsnWj9OHa/g3omo2JAa5icfZNQCE7e5xA4k?=
 =?us-ascii?Q?k52n7cJHIMTteb3B47xDrnbZcQcd7DWbjsU2S4e3i3ijAJlF/G3saS9+Mv+R?=
 =?us-ascii?Q?r/hb2Db85Ymuty5dCqdW+uW02WjSgCPON9JcD0tSOerMNaN2Ou2ZXkp+YPZE?=
 =?us-ascii?Q?0/bVV4K9Dd4Ge2WkGLiRCRzouQXjOgJris59+BBtVD0ZiXgegIrNV45ZJfy2?=
 =?us-ascii?Q?x5IZufRe4hnxLKbeZsVbRa1w8J78g8NIPqBS25/0BDPVfzGg3UnEUYXZDUE5?=
 =?us-ascii?Q?crmvbVSfDRr2lKHOjBXeCvXwT0R+J/VwylKhmvSMMVr+m5lf4NTCA8MYQ/A3?=
 =?us-ascii?Q?b9UPTBBsm0pFQgevVi7ipcAHDHbbmxfUGnUVPxm4mgLv8V0y3Zm5aIi5vtCT?=
 =?us-ascii?Q?3ubUNn8vtk0qC4DoAiHe0MCCM6iMGTFsMXz/tvbvdMMzhQPFZEXtIlcn8m+V?=
 =?us-ascii?Q?diS7/PqZNTs/WVuprwIH6jnJy5UmOFd2fZm3U199Fvs0UeuquDogcyY4SjnA?=
 =?us-ascii?Q?nHdK0ihTLQkB8YtfTPCit2FV1zHHCFO6O7g4V+4CwPi5QL86nvwlsoHW211s?=
 =?us-ascii?Q?63jGxuUIkK842YwMJGS/TtKlD6wiZpzq+I2UdxRq2FxgTNquKsKl3U7iQKOb?=
 =?us-ascii?Q?QJ2YXWdgMm0n8vjEFTgbDiH5qO9j3BH6p4Q5k2o6ucjc0Opt/rugbkow3nME?=
 =?us-ascii?Q?Y5oddOBbFLvwy3d3ydPTsKd5FV/RynXdxco2Y8VL4EDv/48ubf0qgmfGtqVV?=
 =?us-ascii?Q?WoQJVhkiPiQZS54JS0L4ENTvxuERVnIkGPAM2CBgwb/Oh0iZhRFY4rYVcHu0?=
 =?us-ascii?Q?XYr3gvJGcBCY679yAAM38vtx4V6+5McgN1x/ezAWjszSV9MbrhJPa2+cGLlr?=
 =?us-ascii?Q?t7Is2y7Q9tF8wiIvQ17Z5ZY9c9tWWlU1lS0IlOvLbCvk76Yd3Do4RXe/EFbX?=
 =?us-ascii?Q?WrF4aWlO3281GRO1LisjaN9jM2sZJAFRbh0Itt4eqPejabpKe31ZISqJo5t7?=
 =?us-ascii?Q?85UEJ9TJt2xtHfG8gAFLZ35x5RnapdN0vaUkpynofX1+PxZRue8hbJftvFkD?=
 =?us-ascii?Q?jKb3OusknyqU51Ai0ipWSGXrmz7IFynHKKwZznnKVoku2WO3TQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5979.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?EpDN+euD93KnXC48CrgwtarEl7HAzm0BpwZAZQyh4hLzvLOgcqW0nBuzFRkv?=
 =?us-ascii?Q?UHTwGdqyI4bisuz5B4J7rS2tRM5liq42P13jGGtD8eZKb6jwnzEbhUlo1cKh?=
 =?us-ascii?Q?d5d4Gtgubu52vXhUr7XLZWYlNVLTBHMCyJIsKgkF89KUr9BtDLXemdVsKmMx?=
 =?us-ascii?Q?1opWecO3Djeav07vs5kKZl7ebV7AusVvgoAklXEA/WeayQTvgeJ9g2CzoM47?=
 =?us-ascii?Q?957PBVW5XvWINe4xX1jC4+NxOvVUV/CQ3h65iKxRang8LBfRKGNyOYSMHFjw?=
 =?us-ascii?Q?nDGLVKaP0xRbyBzHRPKi5LCTph9w4pjomRqlhdmpYwJK7SqAIkFvsSBsM4gX?=
 =?us-ascii?Q?N6shsmQGdxiNcGfeh7fDeS/VcB9nzKZLtdGyCKmYFG9gAycZXSmeb6qMgJD+?=
 =?us-ascii?Q?p83Mw9DnTvp+qtDFTZA/uRxxnmGGjaIs5xZn9Bkfs20fnJvPin4wxdX0C3cd?=
 =?us-ascii?Q?SGsBA2SjMV5k5eGD4vb2yQyy8bC+EtTAo00l9uoauJwg7mvr5CWwqSW7mU5i?=
 =?us-ascii?Q?dQP5JXqulDQPJdermC3etsGyq2bHEXHpuN1tP6LeH2e45m62Vh00ZeIfMz+1?=
 =?us-ascii?Q?kU0sDaEW6FNjJlxOqajnrC6CR0gWs9ppln++h70PGZ+DqRoq2Z2yMWhFZZLB?=
 =?us-ascii?Q?14FXlnTxStpRSnrHqOQ6Hz++6UYL6dzsOy35YSXvb585FXd0Sfgaf+h4U/xI?=
 =?us-ascii?Q?em7/TbTpzAXo5mo7oDYtMCj8By1+SE9cqBPmQykQhI5Lt9xGzWxaAjcOuL8t?=
 =?us-ascii?Q?eHvIm0L59PUOEh2xspDkMlAOeIkCcPTwyU0mk13P7kpC7crFXVLFna5wbOLP?=
 =?us-ascii?Q?zhFyBi1i+p42/sO73EfK42DXuIDZlcyTM1iEnJKxAwf168OuPrIvydDLg+PI?=
 =?us-ascii?Q?B6EL2oiGvwXryCBD8f3qbK9vkV4mHdyOXsJuzAXYitLPIiwM6uA7gosxvJcU?=
 =?us-ascii?Q?2iYWzDPGQ6gPcc1YFR7gAYHqhGynRmziL68h7W5qlNkZvKoaPw4YY/Ngqy2a?=
 =?us-ascii?Q?mIa65hQArL4dhy4vUtkMnSkbMjEaNtpGGxTuaOroyofNRM3ozuNb6wedwL1g?=
 =?us-ascii?Q?x088oQFuiUEPbHbM1spzNFuc0O5Fjjsb3peSYI7A4abkJECfhr6xLjtefh0Q?=
 =?us-ascii?Q?4ibEBBt1KL3SYRBMy3HHuInKXaw+DVKjFVWdQHckvRNMvp6PcymZa/qCWm4A?=
 =?us-ascii?Q?v3JCeTALE4Ci2A70KOZt/hmWjnOXvtypBaHeCf0SWw/QsG3kFfKZYsAhVNY2?=
 =?us-ascii?Q?Vf17uvd8vmRQx+C5Gnk5NURH8sNJF4ls0ubJF7abVFahym5GP6sdfVX3HMnH?=
 =?us-ascii?Q?DmOFf9Yv2K+llYieLr1Mzl0ELfLJ0DaO3+TJElu4iAf3M3c8QTwvJa00RPG2?=
 =?us-ascii?Q?GJKlHEBpJ9oQ8bUSKoH/obQyYW0wpb7ANF57OYZAHKcgdBoUy0DLrKF/+0tC?=
 =?us-ascii?Q?fqKlcH3DCRn/Miqz8C0TS//IiR3icq7/3Yaa5+o+ElnPN/LEM4jWNp0505dg?=
 =?us-ascii?Q?naXc/SOeLax0jtPIVJp8J4De3Sn+peOBAeFmzGC1DeavvFer4XOwCEWD+5Do?=
 =?us-ascii?Q?ljvsN/ykMdrITILqfpy8Hpnf5qZdYHoDLmzgPFlO?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5979.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a310bf6a-277e-4411-a71b-08dd144df72d
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Dec 2024 10:25:24.8298 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CXYZGSugkC1hSSkNDA3kq8hucqFIEr74UTl/DNGp2sAN8norFMVppB4bG73hL3zPlEg3+S+jfM/R7C/uMHj5mw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8278
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
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Monday, December 2, 2024 3:36 PM
> To: Manna, Animesh <animesh.manna@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Hogander, Jouni <jouni.hogander@intel.com>; B, Jeevan
> <jeevan.b@intel.com>; Manna, Animesh <animesh.manna@intel.com>
> Subject: Re: [PATCH 1/2] drm/i915/lobf: Add lobf enablement in post plane
> update
>=20
> On Mon, 02 Dec 2024, Animesh Manna <animesh.manna@intel.com> wrote:
> > Enablement of LOBF is added in post plane update whenever has_lobf
> > flag is set. As LOBF can be enabled in non-psr case as well so adding
> > in post plane update. There is no change of configuring alpm with psr
> > path.
> >
> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_alpm.c    | 19 +++++++++++++++++++
> >  drivers/gpu/drm/i915/display/intel_alpm.h    |  4 ++++
> >  drivers/gpu/drm/i915/display/intel_display.c |  3 +++
> >  3 files changed, 26 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c
> > b/drivers/gpu/drm/i915/display/intel_alpm.c
> > index 55f3ae1e68c9..45865a8d1dd2 100644
> > --- a/drivers/gpu/drm/i915/display/intel_alpm.c
> > +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
> > @@ -367,6 +367,25 @@ void intel_alpm_configure(struct intel_dp
> *intel_dp,
> >  	lnl_alpm_configure(intel_dp, crtc_state);  }
> >
> > +void intel_alpm_post_plane_update(struct intel_atomic_state *state,
> > +				  struct intel_crtc *crtc)
> > +{
> > +	struct intel_display *display =3D to_intel_display(state);
> > +	const struct intel_crtc_state *crtc_state =3D
> > +		intel_atomic_get_new_crtc_state(state, crtc);
> > +	struct intel_encoder *encoder;
> > +
> > +	if (!crtc_state->has_lobf)
> > +		return;
> > +
> > +	for_each_intel_dp(display->drm, encoder) {
> > +		struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> > +
> > +		if (intel_dp_is_edp(intel_dp))
> > +			intel_alpm_configure(intel_dp, crtc_state);
>=20
> This gets called on all eDP, regardless of whether they have anything to =
do
> with the crtc state.

Thanks Jani for your feedback, I have addressed in v2 and floated for revie=
w.

Regards,
Animesh

>=20
> BR,
> Jani.
>=20
>=20
> > +	}
> > +}
> > +
> >  static int i915_edp_lobf_info_show(struct seq_file *m, void *data)  {
> >  	struct intel_connector *connector =3D m->private; diff --git
> > a/drivers/gpu/drm/i915/display/intel_alpm.h
> > b/drivers/gpu/drm/i915/display/intel_alpm.h
> > index 8c409b10dce6..2f862b0476a8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_alpm.h
> > +++ b/drivers/gpu/drm/i915/display/intel_alpm.h
> > @@ -12,6 +12,8 @@ struct intel_dp;
> >  struct intel_crtc_state;
> >  struct drm_connector_state;
> >  struct intel_connector;
> > +struct intel_atomic_state;
> > +struct intel_crtc;
> >
> >  void intel_alpm_init_dpcd(struct intel_dp *intel_dp);  bool
> > intel_alpm_compute_params(struct intel_dp *intel_dp, @@ -21,6 +23,8
> @@
> > void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
> >  				    struct drm_connector_state *conn_state);
> void
> > intel_alpm_configure(struct intel_dp *intel_dp,
> >  			  const struct intel_crtc_state *crtc_state);
> > +void intel_alpm_post_plane_update(struct intel_atomic_state *state,
> > +				  struct intel_crtc *crtc);
> >  void intel_alpm_lobf_debugfs_add(struct intel_connector *connector);
> > bool intel_alpm_aux_wake_supported(struct intel_dp *intel_dp);  bool
> > intel_alpm_aux_less_wake_supported(struct intel_dp *intel_dp); diff
> > --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index a0351c97c445..d279029e90f6 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -55,6 +55,7 @@
> >  #include "i9xx_plane.h"
> >  #include "i9xx_plane_regs.h"
> >  #include "i9xx_wm.h"
> > +#include "intel_alpm.h"
> >  #include "intel_atomic.h"
> >  #include "intel_atomic_plane.h"
> >  #include "intel_audio.h"
> > @@ -1185,6 +1186,8 @@ static void intel_post_plane_update(struct
> > intel_atomic_state *state,
> >
> >  	intel_psr_post_plane_update(state, crtc);
> >
> > +	intel_alpm_post_plane_update(state, crtc);
> > +
> >  	intel_frontbuffer_flip(dev_priv, new_crtc_state->fb_bits);
> >
> >  	if (new_crtc_state->update_wm_post && new_crtc_state->hw.active)
>=20
> --
> Jani Nikula, Intel
