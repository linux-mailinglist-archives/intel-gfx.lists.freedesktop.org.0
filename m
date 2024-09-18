Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ABC797BF16
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 18:25:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E42FE10E292;
	Wed, 18 Sep 2024 16:25:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BtP5oYDJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF59610E292
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Sep 2024 16:25:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726676707; x=1758212707;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=pd7s1ymFSySEJ00fbQEeWlBBu/4suJfJAkODjLjxBzI=;
 b=BtP5oYDJLW5gwmvLm/MP2znPaW6IAq1BHKMzMMu7FCaUOXrnny1yV0a5
 rdU7djuK5XkWVbvX4Tpoben5DYlulaiJjHCi98HANSIIOQ8q8ueCh/Emg
 3hyEfxhrzPJiHDHXuQXdY76oFfGQfPAlxYMjUEB4nrBPyb91gF2kCiOuu
 4aSUnp1fiJSaFSUKY7hRLx4KzNvBhptL44ALFvydmlZDHlaJui3+c+MIx
 JYlMB5wvxy5LjCqKD8lJFjNj7Xe5Zb7t/F4SMUzbqFmLbHxmksbqp+d6O
 0G+3ZRsn3alsKFPTZHRLvbUHzhme9Zsmpu+oY68DySOlWaZO+4cAnyAtQ Q==;
X-CSE-ConnectionGUID: 77zGwQwOTU67wHIK5p9MOA==
X-CSE-MsgGUID: YZS6UrI/QDG5WpQnsIjbxA==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="36731498"
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="36731498"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 09:25:07 -0700
X-CSE-ConnectionGUID: /aOgg8yNRDCgGycdoZEFsg==
X-CSE-MsgGUID: u/PYI1vCQjqXc1UPBRD6ng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="74430211"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Sep 2024 09:25:07 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 18 Sep 2024 09:25:06 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 18 Sep 2024 09:25:06 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.171)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 18 Sep 2024 09:25:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Y55kKeG33YJqa79esFlvoSkn3pIWrsZFVQ24IGOPxCGVF6OVElGkfCPN9LwEkQHHvJPmbarFGeh+tMfuIv20SgV9HonGyNybGV5moPbCuS6DBXy7L4sqQgmCpJGk2WeFxSIqiqz5aTe77cxcHQQQuKuBFX+SVRWmePo+2/bPisccc17tCBjw08zRRfh8lAdGxzI29XcG99s9D6mDr8mAI2spSErqcxy7poU8Ug1dozgSYsw0nj+UCtnAu50/Uox2LhYwKrzIZY5jLoTeIJGcLNXDSNvAUqQpJMM2OOLuMxcrn0DGTdaxsREnPyS3WvaWq4M7xCfwP7zKC/SWobLd1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cFbdUlg+6nZ/uOZPUrf83rrpq8GWvMDRgpnAKfaZkl0=;
 b=LpcHpYwBILEpjZv03N2RYlb8C8915oPMCuRcTWKzfy3QCyGlo9VCriLUhXtQHD997NTNV0zBYWQWxmWehkzwnxVG9mNJhQzXaytelc36uZrqqx4hJd0Mr/JTdHGc0f7JPqPkBvZmFrYfrpzOvXnV3dd+G23nT5Qf++5gSkrcrRVG+u+SWmMFTD8AESESpedJXK/Errd3Vz5GDrKrlLwuwPpJddiGmfha5GsNmmQ+oPaHNTWVYqEE8EHWEDAwzmanSYNcH4ctBbXxYp8mKdnkTIRLr/7Dwm/C3B5/cNSpyYnFB7cucof+rrDkYMASDcosu1QvqAbsMmW+FnNA2raifw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by DS0PR11MB7409.namprd11.prod.outlook.com (2603:10b6:8:153::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7962.23; Wed, 18 Sep
 2024 16:24:52 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%4]) with mapi id 15.20.7982.012; Wed, 18 Sep 2024
 16:24:52 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCHv2 4/5] drm/i915/histogram: histogram delay counter doesnt
 reset
Thread-Topic: [PATCHv2 4/5] drm/i915/histogram: histogram delay counter doesnt
 reset
Thread-Index: AQHa87WdUWsctdOqxEmXUoULaQR1orJShl0AgAsioFA=
Date: Wed, 18 Sep 2024 16:24:52 +0000
Message-ID: <IA0PR11MB7307A14426BCD52938CDEA16BA622@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240821102349.3961986-1-arun.r.murthy@intel.com>
 <20240821102349.3961986-5-arun.r.murthy@intel.com>
 <SN7PR11MB6750371DA9740D7C829173A3E39B2@SN7PR11MB6750.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB6750371DA9740D7C829173A3E39B2@SN7PR11MB6750.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|DS0PR11MB7409:EE_
x-ms-office365-filtering-correlation-id: 411c6e36-7884-4bef-f8b7-08dcd7fe6cd9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?7OvgYn6I5P5YUIFqh6x1nUg+KttT/TwciHPUuDAkJXC8CFhsARCWLfVEe+vu?=
 =?us-ascii?Q?2ZL88D52F9JmJtQ77pZLDXPD3ybCCUw/U9QnOj0h6KwbctVUutFUASiJsjMX?=
 =?us-ascii?Q?1/YdrqtUgHeP3gW4aldBvFI42gZkF5KEMBGp8DEhiX/N9UB/1AwFittGi2rJ?=
 =?us-ascii?Q?ZIBPMUt3B/zVwlHdv8V8WNqPoV3UB0ZAH4uFXHBlwsb8NOmcXg/QTS8s7xEd?=
 =?us-ascii?Q?Zwg4/QjTjqg15GbrXSW87uxtysAHyTr9NPM3g8VloFIWX7VN+jwIXj7As/5N?=
 =?us-ascii?Q?Is60g8WzVR/Fgxhuz6wKRGWExw6sE+ZDZ2WexAOKyyDWmMXDZSigXW+dwWgE?=
 =?us-ascii?Q?3c4Vbo7pD1NGLrRhrW0gwLpYRnIOZU/HcmvTQGBh+zwt+OY0VT6zxIG/zdd0?=
 =?us-ascii?Q?JysEWKyWtscuPN6JZpJO+ingX8L5Wo4Hn5/GvkfzAkVMEFTRXAamDx3+3IKa?=
 =?us-ascii?Q?gPdgGCCEBHB6HLsRhw91qfw7TkLiBX33q+0GZaDFXiMiBbBD2Cl879PnaDdk?=
 =?us-ascii?Q?XywM9PEn4UuePwuTIrz0A1g5gRMS6r9tOAbzeKmBPv13NaMikJgxbahYxoeL?=
 =?us-ascii?Q?0EyCIqDdDI482kWrJ7yYXE3lHwTWelki28CTJnj+EZ31wUKt76EIxi1MYqgN?=
 =?us-ascii?Q?zTHIGiQvzAsVCg5YCfw7DFvcZ5vVh7pA/lwBjvkkD/Mr3Xfueqxq0zTtTU8C?=
 =?us-ascii?Q?8TiwLnTQiZ4LHLm7wGFN1yhZUG/6G5NSEzkJ6wOAUqTmZpC7RVfoFOJydxIr?=
 =?us-ascii?Q?abnyI3PGJNQPDhMK7PYkpmhDMFDfSB1hgfZl2PgbmsMO8F10ATj7+uFQBRcU?=
 =?us-ascii?Q?Bhvb3R5TQinj280ph3pOE8Om38BT5dUzwzXa8ourqFyMKI7t9SW8ZutCK28e?=
 =?us-ascii?Q?gfc2NNX5CUidvsSMUob3cccIQFzuq3EQ3gKYTZzvkNhd/FL/FLop0yOwPntX?=
 =?us-ascii?Q?74gGkBy5piY9K4hiwfQ+4KHD/xwna68xDIHHmOTXl+jMTAuD7ZZTvXJCJobI?=
 =?us-ascii?Q?WZF/2Thef9p95zY3JOxwu035WWvibZ5kH1wJO4pIQC0HrY3TJj81FQ2CmLde?=
 =?us-ascii?Q?91bW3QJZ0HFycuJTyzZEeAqPILeQHyz1k8Qoo/XJjAyBt5RyzTGv7oQOnBau?=
 =?us-ascii?Q?35qGzKFlocsisj5kXYgJQ/H3Znzl26h4AtXXR6WF+YqIAiMo6MIfFJD2E0Ja?=
 =?us-ascii?Q?tPKQIBXS+Yi2fY+2YBpnECVC2Vr8tU0LkT+pM5mnn41JLYJQogJxyxtiBAZd?=
 =?us-ascii?Q?w7t/4b1H1ZQnuzJQ1D8atv/3r0llsR/QpOVwnolVGDBEkSxZdEj4YgQDB34s?=
 =?us-ascii?Q?UxzI2XlyzwSIbIMdyi1LnrYeXuOJjSxkMrrNid2fnL9is49PA8f5aIPAKjeh?=
 =?us-ascii?Q?zJmQKfnr0Czpr2pYdpLagHaJKoXrp+IgEbtSHS/Q412eJ2vmoA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?FT6bQpvcHgS1QLaGFOQ92Ad8uFrf+nACAdgOqKWzQVoZ/PtdtOyLa9WYZlpr?=
 =?us-ascii?Q?UPjGLZFhSx0LonHVkBOjY51RfvfLtfqsnS8JMyTzX4SHjkhK/NELYr0rSUdG?=
 =?us-ascii?Q?XyOHyT+FKjj4BrzqXMTKlpmGtBVFkF6ZPbdhwS5NqHl/NletAGtDeqzAeA/p?=
 =?us-ascii?Q?1uaxbkm2ThfHz4u0W/JKac+7YwNM5aULboWZ9PZ7jcUmkaDu+rnjubUPojSi?=
 =?us-ascii?Q?dQHQ1cybwwRWjGwF/pRTbUrSL+PsazjyjzjpHIutLcqM5Q9a6o22RCKoJTx+?=
 =?us-ascii?Q?XP9NsjekcCx7W776v6V9nlNgpK0aAaMsjDU8knBLkUkwNL9YVdzxGwbyfEWB?=
 =?us-ascii?Q?USEEs5gaF6X+GXf0x6NdL+AhWBUT5Opnw+HGEWLm3y39Wt6VQtVKEIBBYBh7?=
 =?us-ascii?Q?29zruXFcixvBDjZJ/L8zZ7aGiF9sg1PRJEuIUY60mdqWBk3fldUjzKOaVRdj?=
 =?us-ascii?Q?zlkQlBh97e0PLEe3iZv8t2dENRtLPYAakDr/GQbc0OhqZdXYkMl4KdiB0GJd?=
 =?us-ascii?Q?5LC9lrdCOVJQo3jUQFSgSgbhYj8KEuyVNxlTkW9PM4a3XRrBJCAAmueZgXr6?=
 =?us-ascii?Q?gWk65dLsj87Kco/I5xCAr/0lhh87UP+LhlB6/DOV8qyv9MnRdi/YzGAHrAL5?=
 =?us-ascii?Q?zJeQMtTqIj5M8LCmSygIaMqAqwegIjVW/UJ2Rk3Ucmtkaso/K3y8WixOPkNP?=
 =?us-ascii?Q?OUwNhwkXuRx0J2qvXTBJUjHk1pQoJpuNoqJKzposbzu6h13lBhVFew0gwCjY?=
 =?us-ascii?Q?QgpbNm1OPEt8/rQuvQfR51QECIsb9oRLbdDSdwpxZD7U/0uv3jF2KomvoDYs?=
 =?us-ascii?Q?pXzx1/zPzcSgnKwtuAD2qyiE3ydcDqTearzrU3/1EggSkwLbrMqDD93GsFqc?=
 =?us-ascii?Q?RFvEbbq6+j3TmVOjV2+JYP2Ymw95mkHWk3u32NIZDa4Vwe6mXjDeqh8DHsZs?=
 =?us-ascii?Q?CHp/3iynu2YVlnTXQWlHRnmWsL1kCiKJCzNJPjQQn31hNzwz/xCa6SwrsFxy?=
 =?us-ascii?Q?GGaegoY2cmL8r9/2niEUvdDrsWRd2QfzDJ36nlWTSOqxLs18muxPIdkrx4vI?=
 =?us-ascii?Q?IjbsacKOM1fvQqjJxTn+aNz2tZqaTEZwzkIiW47UnZMtTKHUhspQiZYQNjOg?=
 =?us-ascii?Q?xfwLso++T08Ld5R5bR3OM9LGnl+p3LRvIEQ0rE7dEbNuRK7EdIBv27GYeDX2?=
 =?us-ascii?Q?lV9i/xrOlTcJ2pHcawsirsflRjtcxNR1mlbcamIlvkNv1yCQbeINojnS+1m7?=
 =?us-ascii?Q?91jq11ylYkTxUFeeezlRIcpw4Pu6qTvJhdg5P5oIEpEV4x19b5kq1l4mRgBL?=
 =?us-ascii?Q?oWd6EeOklHGVuz/eHRgCl0nziWLJf6MP9UJGR4HKS2X9VjU9XO3fV1qGAWfb?=
 =?us-ascii?Q?juGljZDc/QD7pro0oOzQpIS2NgI7Rpez7ZCPoM10MjMPhiLEsT0+McfgFj2w?=
 =?us-ascii?Q?7afD0QAd2QrBkPnY3LZVZKdemA0IVaSY3+NCyfeF7r/QB7qesF1/jAdO9YDt?=
 =?us-ascii?Q?lRO1DvBKeKC1v4ahUEDuPVQjXz/+PZvf6wqKBi3c8xgne2qf/5TOlbsJg2gM?=
 =?us-ascii?Q?xoQNiDAO8ghpInun1+hg5Oi7wiNHhEgXOg6Obqnw?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 411c6e36-7884-4bef-f8b7-08dcd7fe6cd9
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Sep 2024 16:24:52.7302 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: n21DY9fxySh2f01LVC/5zClJRVBgzbx0l3xLIiAcyghvWAi2Cs7F8X6IPOtM01BjsaiVjrdGxFO/oyLGwUGYIQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7409
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
> Sent: Wednesday, September 11, 2024 4:10 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-gfx@lists.freedesktop=
.org
> Cc: Murthy, Arun R <arun.r.murthy@intel.com>
> Subject: RE: [PATCHv2 4/5] drm/i915/histogram: histogram delay counter
> doesnt reset
>=20
>=20
>=20
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> > Arun R Murthy
> > Sent: Wednesday, August 21, 2024 3:54 PM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Murthy, Arun R <arun.r.murthy@intel.com>
> > Subject: [PATCHv2 4/5] drm/i915/histogram: histogram delay counter
> > doesnt reset
> >
> > The delay counter for histogram does not reset and as a result the
> > histogram bin never gets updated. Woraround would be to use save and
> > restore histogram
>=20
> Typo "Workaround"
>=20
Done

> > register.
> >
> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_histogram.c | 17 +++++++++++++++++
> > drivers/gpu/drm/i915/display/intel_histogram.h |  1 +
> >  2 files changed, 18 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_histogram.c
> > b/drivers/gpu/drm/i915/display/intel_histogram.c
> > index ad4f75607ccb..189f7ccd6df8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_histogram.c
> > +++ b/drivers/gpu/drm/i915/display/intel_histogram.c
> > @@ -36,6 +36,11 @@ static void intel_histogram_handle_int_work(struct
> > work_struct *work)
> >  	u32 dpstbin;
> >  	int i, try =3D 0;
> >
> > +	/* Wa: 14014889975 */
> > +	if (IS_DISPLAY_VER(i915, 12, 13))
> > +		intel_de_rmw(i915, DPST_CTL(intel_crtc->pipe),
> > +			     DPST_CTL_RESTORE, 0);
> > +
> >  	/*
> >  	 * TODO: PSR to be exited while reading the Histogram data
> >  	 * Set DPST_CTL Bin Reg function select to TC @@ -77,6 +82,12 @@
> > static void intel_histogram_handle_int_work(struct work_struct *work)
> >  			       histogram_event))
> >  		drm_err(&i915->drm, "sending HISTOGRAM event failed\n");
> >
> > +	/* Wa: 14014889975 */
> > +	if (IS_DISPLAY_VER(i915, 12, 13))
> > +		/* Write the value read from DPST_CTL to DPST_CTL.Interrupt
> > Delay Counter(bit 23:16) */
> > +		intel_de_write(i915, DPST_CTL(intel_crtc->pipe),
> > intel_de_read(i915,
> > +			       DPST_CTL(intel_crtc->pipe)) |
> DPST_CTL_RESTORE);
> > +
> >  	/* Enable histogram interrupt */
> >  	intel_de_rmw(i915, DPST_GUARD(intel_crtc->pipe),
> > DPST_GUARD_HIST_INT_EN,
> >  		     DPST_GUARD_HIST_INT_EN);
> > @@ -140,6 +151,12 @@ static int intel_histogram_enable(struct
> > intel_crtc
> > *intel_crtc)
> >  	/* Pipe Dithering should be enabled with GLOBAL_HIST */
> >  	intel_histogram_enable_dithering(i915, pipe);
> >
> > +	/* Wa: 14014889975 */
> > +	if (IS_DISPLAY_VER(i915, 12, 13))
> > +		/* Write the value read from DPST_CTL to DPST_CTL.Interrupt
> > Delay Counter(bit 23:16) */
> > +		intel_de_write(i915, DPST_CTL(intel_crtc->pipe),
> > intel_de_read(i915,
> > +			       DPST_CTL(intel_crtc->pipe)) |
> DPST_CTL_RESTORE);
> > +
>=20
> Maybe put all the code in a function with required variables and one extr=
a bool
> variable that determines If it is being called when interrupt is being se=
rviced or
> when histogram is being enabled
>=20
Have a function to just execute one write function would be much costlier.

> wa_14014889975(.., bool enable)
> 	if (!IS_DISPLAY_VER(i915, 12, 13)) /* I think there is a function that
> checks if display_ver is not it range to avoid the !
> 		return
> 	if (enable)
> 		/* Write the value read from DPST_CTL to DPST_CTL.Interrupt
> 		 Delay Counter(bit 23:16) */
> 		intel_de_write(i915, DPST_CTL(intel_crtc->pipe),
> 		intel_de_read(i915,
> 			       DPST_CTL(intel_crtc->pipe)) |
> DPST_CTL_RESTORE);
> 	Else
> 		intel_de_rmw(i915, DPST_CTL(intel_crtc->pipe),
> 			     DPST_CTL_RESTORE, 0);
>=20
> Also use intel_display instead of i915
>=20
Done

Thanks and Regards,
Arun R Murthy
--------------------
