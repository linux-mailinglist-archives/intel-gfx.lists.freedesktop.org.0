Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1974E942555
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2024 06:22:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40B6D10E0E4;
	Wed, 31 Jul 2024 04:22:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KKKMb3NT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A84F10E0E4
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jul 2024 04:22:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722399721; x=1753935721;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=b5Bj3hEtyZczmIquEmtK5TQeFYWmNNh9YTfGkikFh6A=;
 b=KKKMb3NTUOhgcsLHmgoSmT802iMRcm+k/+lbSe9mohCQo+MgcChD75w2
 zhCrnfd11tk2xPYVeAqFdZ+6rz5ThyKObkXJuSd0gpmsIvQpiazJ0CKx2
 07LaA/RA1WogyGDF3mVLrjtc2Oc3fhJEfdFEYjRcSEOvUiwZkLt06YJzo
 0D8o25Jsgp6J4N60Zl2cXz2GBOh8x7EOGdw4R9SZ8XcLE/MpJonK+pAVw
 OKazN008J9IjZWKrteEEEWijucHyVsCHB24kzgv863V34CI28YCOQtyk0
 iSxHosoUbPSqxGohgUrhGNWnhgw2ZAJBn1Yj3QqbzVLJ1+WZO7PNnq9L8 Q==;
X-CSE-ConnectionGUID: T+53uhbhRqCXaZ9nw0ozqQ==
X-CSE-MsgGUID: xxG0NRImTKGwfJ8KW6C4EA==
X-IronPort-AV: E=McAfee;i="6700,10204,11149"; a="30839520"
X-IronPort-AV: E=Sophos;i="6.09,250,1716274800"; d="scan'208";a="30839520"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2024 21:22:00 -0700
X-CSE-ConnectionGUID: MSJJVW1FSz6GmH3gcUgVWg==
X-CSE-MsgGUID: 4YeysVzcSi++iQ6KjxwN5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,250,1716274800"; d="scan'208";a="58684051"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jul 2024 21:22:01 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 30 Jul 2024 21:21:59 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 30 Jul 2024 21:21:59 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 30 Jul 2024 21:21:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SrTENfbMFYeDoGepFFhRSkIsx+Rhc96IJVXTUoWmYkOGt+dJJ3UL4y80qTIM5RJPDKnET2iYhHrcvdPrPAscuSHXTSZ+Nn9sBadNIpOSnphOxhYJ1w+k2fHO3kFfXhSTuD1eGssrPYGd5cDLUCocHwY3kHcva90+NWaxI3Qzwfxzv1CU499NyHc0vhgbA07jla6gdu3WmovBy5XlME0i1I3ORbQYI9Vnoxcs8BCawvtwwwZ6Cm4Ck5gqWGrK000i9li1cX4Ljveh8E52nvEalxymcEo79HQ9Va+2B+Fi3kEZ8GKepm8+YqpK33x8c5ANlQh4cbQuiMcelGcsj2ryjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/1n2Yd38zif88UcFLwmwkioZff/e3bD1ZN2Cfq72j7w=;
 b=cI393BNbCSb4CuJr5mceUVGU417KPj86+7JC1qQ6vfChQqCo402JSgKQEDGqW4nG0nOYL4LHaK9XATKcQr2zitWWAO9cdBn8415ksReyPk7z8CQfCSKhA4WtXgy75z5kpuM9B776ctJB2LYlZhMegQnVuMiGDZXJ8DnICRyqO+COgN/9R5zWG4aMLAeKnUBC5zfvrRJMa4kiIwpSeDsuZQMr6zyS3/r9dAYrf5w1CUpAWSykeEZj2i5cH7X2djzECRJQRs4+/9l0u+K4L8a2WH29iwUjnE02BxORhaKU4kepJx0+K1mL1PJN2D++mmNdaIIrsdp6IUk6xeruKsr9ww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6761.namprd11.prod.outlook.com (2603:10b6:303:20d::5)
 by IA0PR11MB7815.namprd11.prod.outlook.com (2603:10b6:208:404::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.27; Wed, 31 Jul
 2024 04:21:57 +0000
Received: from MW4PR11MB6761.namprd11.prod.outlook.com
 ([fe80::6b8e:aea1:6960:2430]) by MW4PR11MB6761.namprd11.prod.outlook.com
 ([fe80::6b8e:aea1:6960:2430%6]) with mapi id 15.20.7784.020; Wed, 31 Jul 2024
 04:21:56 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>, "Saarinen, Jani"
 <jani.saarinen@intel.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH 01/12] drm/i915/display: Modify debugfs for joiner to
 force n pipes
Thread-Topic: [PATCH 01/12] drm/i915/display: Modify debugfs for joiner to
 force n pipes
Thread-Index: AQHa2OryZckShceBZUezUV/lPUgU9rIQT+jg
Date: Wed, 31 Jul 2024 04:21:56 +0000
Message-ID: <MW4PR11MB676105DFFA9385F3F521735DE3B12@MW4PR11MB6761.namprd11.prod.outlook.com>
References: <20240718081803.3338564-1-ankit.k.nautiyal@intel.com>
 <20240718081803.3338564-2-ankit.k.nautiyal@intel.com>
In-Reply-To: <20240718081803.3338564-2-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB6761:EE_|IA0PR11MB7815:EE_
x-ms-office365-filtering-correlation-id: 2dd147b2-ee89-4544-fde3-08dcb1185054
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?exo/e0k2Gi8edo1cMOgOyaGgZx1kBMlLkaFMRGkgTD5b75YTsczzCGqnmPlR?=
 =?us-ascii?Q?WZtvSIsNousUQBHUtWCdBEuH1mPBz8QeQzDP3u3+JQSn8pxNrVaGp1gq6fOa?=
 =?us-ascii?Q?J/vZGDM/reWOCM9miln1XRcYhr/NaRhgweVtVO3rRgLrRvs3J9EU00ldwj5J?=
 =?us-ascii?Q?wK+GyEGxHbxfzyk4x1g0Byq4ypHWo/GhJZq8Qh16FGvfV56IlmxBkTRo+QBE?=
 =?us-ascii?Q?+LI3CLWg9IfTjvvCjZ2SKlmo1AH4h/79JJpiqiVACcxLVXyzlYPQl34NqGnv?=
 =?us-ascii?Q?sdq6rl9RtWhhx8hvh34Da4kSXkntvuc271nHtM2j+VnRX11yS8N0lA49pCCB?=
 =?us-ascii?Q?98HbwV0uhpgn/5FDkGl59Njg88Qcyar7jK5QzUsDrsiR7MKKn4FMpX+9lhZb?=
 =?us-ascii?Q?D7VAOjJ+ZvTD1k0Ip2j3pq9Z7KzgTTGzy1vQdHlxSm0OHItPk4SHiMf/n4az?=
 =?us-ascii?Q?09W0SuOr6+iSH4Fvo5zfjg94IHogIPxsrjlTIEJCK9KmTyOvB5Lx6XcXXpLm?=
 =?us-ascii?Q?8MfhXJ+WY4poaSHtmi+Sg6UQLRBgOfOJhced37K1bL4Rl8G/aLcBLZ17zTRS?=
 =?us-ascii?Q?XcT5Vbo4xte2nCoY/aZRcchRmmJ+34c4xYe5vcg/m/OPy7wkRQL0GPYC75hT?=
 =?us-ascii?Q?walbKWc7DZaGBFM/sly6zkXRnFZSBn6tDw0JdtZu3I9Rjgu3d6WsyuhPLa9O?=
 =?us-ascii?Q?e54LVdtsDor8NHvN6iVsUtaxBaX6aEA5qe/NzjsFe1CVBEYqmB8/xrtn6vIc?=
 =?us-ascii?Q?fSlL4cfnWYTPx/WIIHTfYIJoboQzZDF6L+KZIfXWYXRuYKd+XA4HtCkLkoY7?=
 =?us-ascii?Q?gAjs6ETE0u+SBX28yH7F5BemZQTeZiVteCh6xAPhQ75D6+2CqkHGy5h6K1pu?=
 =?us-ascii?Q?A1BbzWlgqgc92Yh/jWCHEHBrtRyMWPnUo0sKwzhMblfafwK0CbqdWaSqXZPV?=
 =?us-ascii?Q?GOLIqCOrC1ktZvhQZiQLWkKZdLG9D2YF72hT+n546mLjRYlDIx+Q4Z0pe5Bk?=
 =?us-ascii?Q?/Sj5BgjefmiaD9bYviwEhD5BHpf/RMHLoYatbKmbor6H5NzAI998CBh71ZUM?=
 =?us-ascii?Q?bjsiRDr06DB+TUnPhCC2Vp8zWM1EtQWMg1Z1ZNcH896mcYcX7kWYeUIFjzge?=
 =?us-ascii?Q?XfFfqhM4+Z2WuS32qjJG6rMW4RcjQHRJQLuzvdXYRV9K24FiO1FXumWij9b8?=
 =?us-ascii?Q?gPbBeCFt+nAyaAfcx60Fn+6FIbI5VUppCu0x0En3iyy/kBMsdLZembwOcKVN?=
 =?us-ascii?Q?jovsuJXglbyB/gf6hXGQxGa2/7cRCPKGB0X28cN9w4wyMsG4/a7L6ErhLQJh?=
 =?us-ascii?Q?kiky9KEaJB64xKG5SJelPLgCYeBDqap31oF/zVuuogRTgKS1TrpYMMZ8iJi1?=
 =?us-ascii?Q?UFzCDQjXRjFI8WVfx2T+YcOU1dGJUmDsgTuUJzoGzKeKLusE3Q=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6761.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?OUcfUDnjhGRdn5NBJ03mx4E1vdMyvQJ/BMWmALqqyCR0vQCxSpkBZ7kgBqmE?=
 =?us-ascii?Q?0qMBBSyROCSDdgAxJnQQoOBeANHT92vVYpql4jLyKfV2aS+TYjjyRO0e2sX2?=
 =?us-ascii?Q?y1X700e+gj3fPwERSM+Hv3dRxG/VvutV45Bh57jpqR+P3qQ5luwlfTvyKACI?=
 =?us-ascii?Q?C6mwo9Elh5Knpiqhc1FyzjeM2KS7bVwFIn2OLkTd0N1gFOif9uURrDDp8pN/?=
 =?us-ascii?Q?Ijp20lJZP1m9reGRwCCfC7DAvADn3hvXQQyoSu/99avJdszQGfBxBdpMioK3?=
 =?us-ascii?Q?5ZycwHd5xPkXd01bixTTmQhWUvN4LzFEg4LwqJq1hXWHcr+IGKeFL9eV/RgD?=
 =?us-ascii?Q?4TMU/CCGKS8jKLHBWHGD/prxkDAJaWZTFYITSHJ/HmAx8esL05qw0KFSDbSc?=
 =?us-ascii?Q?vNN7yq8yjRoz7CMdJbE98eacuCEIKDpY2l5jkwWGBK8lK/PvmRlpYXWzpDfb?=
 =?us-ascii?Q?q85ff7JAT3TylqgevrRxl3CXupqXD+j7xV747ZB6irfXPhZ6J2yYY9S83ccf?=
 =?us-ascii?Q?wC9zKLvFA++ptwkBzo8OVWP5pOpolV+OV5r4G2JrmMk7NmzawSZnNhCBdc9w?=
 =?us-ascii?Q?l19uRtu+AFCru24y7asNBo28r7h503pGcMRAMALNdStF2+QqBB23FFhieiX4?=
 =?us-ascii?Q?ZhwpFPFM6MYXQ2VlJkilN9Scckb/IxeDikB0w6s4CLVUYxNAsZsS64LZZmxC?=
 =?us-ascii?Q?8bVziPnodUXN+to/35+nv232wY+dgjBrnQOGzeQ4/CMgZUa9apbve3pSOxeB?=
 =?us-ascii?Q?L7yrL0fC6cEincW0Vk3+adIscBvOKoJirAbBGcUEtBfzWo02C5Ua2xNhYgPN?=
 =?us-ascii?Q?8y5Luxe+uik7rLDzCcBXBllivFD++oFnFl5oI6jg3MCMJFCFMNdpJUS1Gx3V?=
 =?us-ascii?Q?DBILXEa3y6vmEFWsr/aHziX60NeNrJKkGKbVdGM63hvK68WJ4x3fyRG0G0Wz?=
 =?us-ascii?Q?GCcTMVku6d5UjZeXMZp86HNcDxFo93Kh9X0L63IsNazrQuVLodxUeYqvCGf3?=
 =?us-ascii?Q?dIWJUAEiZB8z3PVO3lNoJRnRs5pA4RJMMENHwwgrzr6UTvfMUkXq5d1uHR77?=
 =?us-ascii?Q?mzzGuQYHAFM4Uy89fF7DkelXdRKa+Jon5OgwE1zQ+hNCo+lhqh1Sfuew3LyA?=
 =?us-ascii?Q?kAh7sMcAPLNtGuVJbOhNkX5XiGb/ISKcfJPlpSBbBHffrg7BnHZg3kRcCMHC?=
 =?us-ascii?Q?bfeJ+W42TQW2O4utrT737cjAGotBrqg6v+dacbXva/tAREGNscoH5kffzxEZ?=
 =?us-ascii?Q?0hnTGCwEiL+eKXz0c1hnuVrloAYS5M/e5DWxpofEpSAz/EKGAj4BMm/LMEni?=
 =?us-ascii?Q?vFW0L0naJZomsbNqksJddc2tCbIrCBxiGi4fRlwkUFOS3htK/qdqK6q7aIRj?=
 =?us-ascii?Q?v0VeQ9VqilBj8jhtFWRziqp9BumrxBV9+iuRtcgWdKnSgnALo1KVDgkekMhO?=
 =?us-ascii?Q?/vCPQdUaghiTRht+5p4j+2HhxU6BNlwLGcXk0AV+b++c748iljVEOnCM0g8D?=
 =?us-ascii?Q?tq+0gtreT10bfhMjuIxlzauWDRNbFDEGSJjU+y04WJruQ5XY6LC1JtXdEUgv?=
 =?us-ascii?Q?rDGXhkiHQeLwjmWigJEXnXAM+LgAMsfUnrRk+8Es?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6761.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2dd147b2-ee89-4544-fde3-08dcb1185054
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2024 04:21:56.4605 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7MvdlEHtAfd3WEgM/IEkiq8pHDnpvKGWMWnuDUyiSzklgovhbnv7z0yoHcXuFvh2IvB8PP5ANCh3znM3T9BY3A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7815
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of An=
kit
> Nautiyal
> Sent: Thursday, July 18, 2024 1:48 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Lisovskiy, Stanislav <stanislav.lisovskiy@intel.com>; Saarinen, Jani
> <jani.saarinen@intel.com>; ville.syrjala@linux.intel.com
> Subject: [PATCH 01/12] drm/i915/display: Modify debugfs for joiner to for=
ce n
> pipes
>=20
> At the moment, the debugfs for joiner allows only to force enable/disable=
 pipe
> joiner for 2 pipes. Modify it to force join 'n' number of pipes.
> This will help in case of ultra joiner where 4 pipes are joined.
>=20

I think saying join n number of pipes gives the right idea of what the func=
tionality and Patch is doing.
We can only join 2 or 4 pipes I think the commit message should make that c=
lear

> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  .../drm/i915/display/intel_display_debugfs.c  | 71 ++++++++++++++++++-
>  .../drm/i915/display/intel_display_types.h    |  8 ++-
>  drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
>  3 files changed, 77 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 5cf9b4af9adf..18f3d83265ce 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -1497,6 +1497,73 @@ static int intel_crtc_pipe_show(struct seq_file *m=
,
> void *unused)  }  DEFINE_SHOW_ATTRIBUTE(intel_crtc_pipe);
>=20
> +static int i915_joiner_show(struct seq_file *m, void *data) {
> +	struct intel_connector *connector =3D m->private;
> +	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	int ret;
> +
> +	ret =3D drm_modeset_lock_single_interruptible(&i915-
> >drm.mode_config.connection_mutex);
> +	if (ret)
> +		return ret;
> +
> +	seq_printf(m, "Force_joined_pipes: %d\n",
> +connector->force_joined_pipes);
> +
> +	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
> +
> +	return ret;
> +}
> +
> +static ssize_t i915_joiner_write(struct file *file,
> +				 const char __user *ubuf,
> +				 size_t len, loff_t *offp)
> +{
> +	struct seq_file *m =3D file->private_data;
> +	struct intel_connector *connector =3D m->private;
> +	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	int force_join_pipes =3D 0;
> +	int ret;
> +
> +	if (len =3D=3D 0)
> +		return 0;
> +
> +	drm_dbg(&i915->drm,
> +		"Copied %zu bytes from user to force joiner\n", len);
> +
> +	ret =3D kstrtoint_from_user(ubuf, len, 0, &force_join_pipes);
> +	if (ret < 0)
> +		return ret;
> +
> +	drm_dbg(&i915->drm, "Got %d for force joining pipes\n",
> +force_join_pipes);
> +
> +	if (force_join_pipes < INTEL_PIPE_JOINER_NONE ||
> +	    force_join_pipes >=3D INTEL_PIPE_JOINER_INVALID) {
> +		drm_dbg(&i915->drm, "Ignoring Invalid num of pipes %d for
> force joining\n",
> +			force_join_pipes);
> +		connector->force_joined_pipes =3D INTEL_PIPE_JOINER_NONE;
> +	} else {
> +		connector->force_joined_pipes =3D force_join_pipes;
> +	}
> +
> +	*offp +=3D len;
> +
> +	return len;
> +}
> +
> +static int i915_joiner_open(struct inode *inode, struct file *file) {
> +	return single_open(file, i915_joiner_show, inode->i_private); }
> +
> +static const struct file_operations i915_joiner_fops =3D {
> +	.owner =3D THIS_MODULE,
> +	.open =3D i915_joiner_open,
> +	.read =3D seq_read,
> +	.llseek =3D seq_lseek,
> +	.release =3D single_release,
> +	.write =3D i915_joiner_write
> +};
> +
>  /**
>   * intel_connector_debugfs_add - add i915 specific connector debugfs fil=
es
>   * @connector: pointer to a registered intel_connector @@ -1546,8 +1613,=
8
> @@ void intel_connector_debugfs_add(struct intel_connector *connector)
>  	if (DISPLAY_VER(i915) >=3D 11 &&
>  	    (connector_type =3D=3D DRM_MODE_CONNECTOR_DisplayPort ||
>  	     connector_type =3D=3D DRM_MODE_CONNECTOR_eDP)) {
> -		debugfs_create_bool("i915_bigjoiner_force_enable", 0644,
> root,
> -				    &connector->force_bigjoiner_enable);
> +		debugfs_create_file("i915_joiner_force_enable", 0644, root,
> +				    connector, &i915_joiner_fops);
>  	}
>=20
>  	if (connector_type =3D=3D DRM_MODE_CONNECTOR_DSI || diff --git
> a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index a9d2acdc51a4..14c78b18ffa1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -613,6 +613,12 @@ struct intel_hdcp {
>  	enum transcoder stream_transcoder;
>  };
>=20
> +enum intel_joiner_pipe_count {
> +	INTEL_PIPE_JOINER_NONE =3D 0,
> +	INTEL_PIPE_JOINER_BIG =3D 2,
> +	INTEL_PIPE_JOINER_INVALID,
> +};

Also the naming here should be intel_pipe_joiner_count since the difference=
 in enum variable and enum defines Does not seem right.
Also I think the ULTRA enum should be defined sooner rather than later it w=
ill help reduce a lot of magic numbers being used in ultrajoiner
and big joiner checks later on.
> +
>  struct intel_connector {
>  	struct drm_connector base;
>  	/*
> @@ -651,7 +657,7 @@ struct intel_connector {
>=20
>  	struct intel_dp *mst_port;
>=20
> -	bool force_bigjoiner_enable;
> +	enum intel_joiner_pipe_count force_joined_pipes;
>=20

Naming here should be force_pipes_joined.
I think this whole patch series has a trend of naming it as joined pipe I t=
hink that should be changed to pipe joined

Regards,
Suraj Kandpal
>  	struct {
>  		struct drm_dp_aux *dsc_decompression_aux; diff --git
> a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index d4b1b18453dc..30442c9da06b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1164,7 +1164,7 @@ bool intel_dp_need_joiner(struct intel_dp *intel_dp=
,
>  		return false;
>=20
>  	return clock > i915->display.cdclk.max_dotclk_freq || hdisplay > 5120
> ||
> -	       connector->force_bigjoiner_enable;
> +	       connector->force_joined_pipes =3D=3D INTEL_PIPE_JOINER_BIG;
>  }
>=20
>  bool intel_dp_has_dsc(const struct intel_connector *connector)
> --
> 2.45.2

