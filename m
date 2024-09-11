Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 257A9974D37
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2024 10:49:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBE4B10E79A;
	Wed, 11 Sep 2024 08:49:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WYDjW1wk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FE7710E10F
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2024 08:49:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726044594; x=1757580594;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sYWBtiR9sG4DG/DD6X7h4/TWhqYd+rHr8kFAygI4sw8=;
 b=WYDjW1wkJKJGFpedjZnyPAjgYNpwWdCGJtflKgP23aOywq+UQniFNe9M
 qRBF2k7V4REe2KWXZth5KXDxlVX/38FFeMwt7gCdEuifHYmjnINDF+IlJ
 liuAPajDV4oS1kM00v7BX+dgOkqhJDfsOw454KmEO2KLZ8iLfmKeF//ap
 Wo0GW8Kg0hHfBTq+bPCU/RRH+2Ki9bpeIck18esSd4vYf2B1LGu1kNPnh
 PUPSUHWo+Fs5+L/9pIMc5OPkfYAM3FcuQpEBwhR17137GKn6qV0v3qLA5
 dv95/u8fSj4DFo683YGlivb0Q/alHwbzhG2brr8Fj8LdmGvyh00oTWDMY A==;
X-CSE-ConnectionGUID: Su6JO5ztQs6mMezdH1rkTA==
X-CSE-MsgGUID: 7GvtFO2YQFuEpOTc2wH9Jw==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="24655353"
X-IronPort-AV: E=Sophos;i="6.10,219,1719903600"; d="scan'208";a="24655353"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 01:49:54 -0700
X-CSE-ConnectionGUID: xmQci8mFSD6Tw/nb+nc53Q==
X-CSE-MsgGUID: yGM22wwDS4WK6bNoA5NVtg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,219,1719903600"; d="scan'208";a="67006613"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Sep 2024 01:49:53 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 11 Sep 2024 01:49:53 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 11 Sep 2024 01:49:52 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 11 Sep 2024 01:49:52 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 11 Sep 2024 01:49:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=o3Pxcz3XNmiPWVfg0OY0u5BANKumD09+t5NxiQD7oSB4rfZqtG6cBdElIYQ4kj1HcTsSghhW5t3DIT7QHesbJMthb2Og14KaYxK43b4QMiQVZ8Pbdx3fBuQRVKzAQFsrSUkPPAbVfmLakhLwKfNCxC4t8iFqk20ddRP8I0fCkVW0m2YfribUds/EWtb49otHSSoAKgasfNib2CO+aDXdF9slcsC1PSFTOYZ5OGAgnv5VGUfG9NxPg+mef/Z7RR8Q9yLRcGirAIn0Uyt5C3YWhsJiVFvK0KhnPyGcVOywwKJK3UkCEtxtMvmWPInw8wUlPZSrVH/VmU7eCuHwchv1yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I2X1ZYRD9/pdBLG7cliffDk7Xn7w58N0ZGcSkj+Ljd4=;
 b=ok0qdRhbS8LKyddkS9c/MkBmwQr6TGFARqsJQtEOXNcKzHXu5Fi7xX0vY5hEOMNkBLQULtqL1Rh/pnzWMFCplY5dT7CUotQPG/0XPeH0b7dhDONWd2M/nyeZbMoHdXNrf5VNoHyVni1kWSYP8nGkMt1FgryDtRQkvhBN5UUd3lD5Z7d/DN2dBgEmdtgZGNelIjnWo89J0acRlzkkDLaTqvTOVanzFPqOi+7MZCpgsPOTfxuj5J3+oO9LZiwk1fmzapTOAnZmzveXSLqNrLS1FG2XPYSdhJlWy/G4lg6ToFC0odzh8D7UfKL/xe4yACzv0SztnLqv2q1WKrf7Z46B2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB6789.namprd11.prod.outlook.com (2603:10b6:a03:47f::11)
 by SJ0PR11MB5197.namprd11.prod.outlook.com (2603:10b6:a03:2d1::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7962.17; Wed, 11 Sep
 2024 08:49:50 +0000
Received: from SJ0PR11MB6789.namprd11.prod.outlook.com
 ([fe80::c0dd:2dd9:aec0:94f7]) by SJ0PR11MB6789.namprd11.prod.outlook.com
 ([fe80::c0dd:2dd9:aec0:94f7%5]) with mapi id 15.20.7918.024; Wed, 11 Sep 2024
 08:49:50 +0000
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>, "Murthy, Arun R"
 <arun.r.murthy@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Murthy, Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCH 3/5] Add crtc properties for global histogram
Thread-Topic: [PATCH 3/5] Add crtc properties for global histogram
Thread-Index: AQHazsMAPgdxw2i3bUKRYoFbsJCGZrJSdAjAgAA8/xA=
Date: Wed, 11 Sep 2024 08:49:50 +0000
Message-ID: <SJ0PR11MB6789255E3DAECD9AADD9A9398D9B2@SJ0PR11MB6789.namprd11.prod.outlook.com>
References: <20240705095551.1244154-1-arun.r.murthy@intel.com>
 <20240705095551.1244154-4-arun.r.murthy@intel.com>
 <SJ0PR11MB6789D70ACF2DBDDFD80EAD6D8D9B2@SJ0PR11MB6789.namprd11.prod.outlook.com>
In-Reply-To: <SJ0PR11MB6789D70ACF2DBDDFD80EAD6D8D9B2@SJ0PR11MB6789.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB6789:EE_|SJ0PR11MB5197:EE_
x-ms-office365-filtering-correlation-id: 9a36c8e2-d0c7-4097-180f-08dcd23eb2bd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?fI9PZK9iVq+UQ0AK8oPRqhNjYCm9ZqEhhr8o4jp+j9kqf+zQDe60x+GSg+XH?=
 =?us-ascii?Q?xTBVDUy5qqiWox8YshOqd3+Y6llSwLbii8eoy9OG61gx3g9CSjeWatjLA2T/?=
 =?us-ascii?Q?q1PvwXYjKl8Lsl0hZCEuW/nJKPm4qh2bP5uZAOxm19jdpA9ScP4w2pQdO8Wv?=
 =?us-ascii?Q?m0RU+LkeTTGIR0zi09zaQNs2VZe7BIClv/YaULNiInSNbZEu8IYQMkbW0GR1?=
 =?us-ascii?Q?j+jh8GltT+E1dnpnLHNEGfzCJFDnDSAnaL7iktItwpMYzuzpVNrdwIsSVywk?=
 =?us-ascii?Q?fC7ew7PfvMzXUxBt5LDOa8c4xNAaknEJVJGL2RzKFaoCiRf1SpxrcykGRVp+?=
 =?us-ascii?Q?ae18fh8e87XVBrL5jjjGH+eQrGVAlbymmx2CSok5Z1LUvA5GAKXkZoXJvDHg?=
 =?us-ascii?Q?kU+FewsVNo11e7uSWhP7u9Q+fGt9DTYTm77XH8TP04lkFk/nD/i/pmV8N9pA?=
 =?us-ascii?Q?7SVzE+heLoPmRuTdHjTOirfP+MWTkDjSKS1AyXYThfA0SyUcbyU4bZYC2WWC?=
 =?us-ascii?Q?QO1lf9GFEkXZDulfEAcfzyh/gvoBo3GlmUcMGC4KQtPKZpR1TOKw66D0+Oq9?=
 =?us-ascii?Q?VMJKAZK9/qngU0iQityxS0e/j4RtNdn/jHD4Xfxsp5alUTiwHNEprsw6UyWE?=
 =?us-ascii?Q?v2V2DEt9ke0SuUronDjSePu8U9mePBlKYnth2r3tzkqSyHEm7FPBE1pdtlhg?=
 =?us-ascii?Q?1X9PqeJdrAZro6Tz79CrszuFKPBRPwMzAkhFqALfRFIn8IiPZXNrePNlYBGQ?=
 =?us-ascii?Q?H4CrNbs1xiw+npvgnzh/4s4VW9IOYLGREhd9FHONGpzVPk/RmXQJ99e3StOt?=
 =?us-ascii?Q?sjwbIxE6JSNnTNnB8iyYnnQ1sub37fDCK9/wG9KQHXvBK3BVS4IM9Vurs/uV?=
 =?us-ascii?Q?/ulgbgDinvmw+wwUIzl/f2WuyPKNtY+gafw6tztacWG/1FVYrjO4D3OXUha3?=
 =?us-ascii?Q?KCVOt8qdmR5hiZstlirLJuANboJCP+gvHCo0c6gsGfBuXI1jpPJHSjfFPtWq?=
 =?us-ascii?Q?rh86wZ9JcKVBTp8ry378XG14yvOh99x1IWszpY6sADysoYU1SFcwKyix37GB?=
 =?us-ascii?Q?PzOQVCOjX52e33aUri6EzbG0YrhAWwnSBmT6H6HhH0+Nyn2n1sdwfPlz1Y6I?=
 =?us-ascii?Q?Fz/eMogHZ+BImwimBAnt/guOwtw+j/4kYzZCSx+oycRvqh5H0aAUZC8NAimI?=
 =?us-ascii?Q?hmMDWo+vMFtoeqYc+sWkslIf4Vaf4M9JusgB5iC41AaiiLEtBCJ1R39NqT62?=
 =?us-ascii?Q?X2jDtBmGMzt+l1Cg+nZeosq8UuyVnFVF0b7LMI5lOT+8joJlmxnhIw4SFK/R?=
 =?us-ascii?Q?kl54KEpLa8mtnsz6KVx+yO89IWWcZV6zjwOCGJ6qVpbHYmzSxpavYkN6/3Ex?=
 =?us-ascii?Q?no9NRLzih0UyV0eJXD4I5rJA3dswpZS2w0sfVspt966wehX+jA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB6789.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?5JUt9VIJftkFMr0sRt53NSjz9njq/aMcFddoN4coT647t+PQQdIqXMgzZEXz?=
 =?us-ascii?Q?9O3j9JvJ7QyIGizS3IRUoIzg2lE0U2HU1LIE4De0qRHgMUsKl5f+lvhE2pHc?=
 =?us-ascii?Q?yW51QTQuEQFew9H7dSh+4P2wpneT/Qtyl0ufNKb7REPNTq8QataV6NY0PZrp?=
 =?us-ascii?Q?b/nlvVUPgIYr91JcMz5wEpRPcgT77Yu6d/OYIVldAsC0jRSuif1E6Fof7bsp?=
 =?us-ascii?Q?EEhQ6pvNfp49jl7zl75hjDy5aN4lDKsNkIo5UZwGvWPOVb9pGb+lIwcpGHQr?=
 =?us-ascii?Q?sZQbfaecTGWfYTwT1GAm8CARRhYwDSYmKPlnFMxguYByEISJE1zXEJ5bcerv?=
 =?us-ascii?Q?NtIbO2PYFyykRr54lcrW1LKiqi8sOcgjBgpoww89BL5dRk2/lLrhKoJK3zXe?=
 =?us-ascii?Q?0umpNBJqyDOk/BNaWltXDwDYOpzHUu0xRfizlgpTqaNsZvDvQRECLO8C9z8i?=
 =?us-ascii?Q?pDsGZdU5kp6hHmLsO/4257ZnvO8ACrPtuRaxrGw7yXL44j+mwU1wkjP5vjO/?=
 =?us-ascii?Q?IYTOy33Bl6Jg5137Xm6kwQirEEiIQXaFgbk6smC7+yq+S6YMxS514a2Exs7u?=
 =?us-ascii?Q?Cm0iX79XCG3S0j5G29di/OEC/iuIOu6zPoNhTImkaNOH8E45cQSq7+Qc3QW4?=
 =?us-ascii?Q?G9QNQHju6Ux+2e+4TZvO0PkwIU53IoukovnKfyjkh75ymyeZOC5yAP+Qo+xc?=
 =?us-ascii?Q?M89FklbHuLPIycfT8vam+lFtix5COIl7Hf1iPx763auUveqToReE1/WMRBZW?=
 =?us-ascii?Q?Q0ij3OtqKLTU6/zlGClWKKUNM9BQisph8z6UDfAaIMnBLhycb39WtgI3HbNj?=
 =?us-ascii?Q?Byba7DCKwTCNstQ02sq1BCZ9fVeBU/B/knjosvH5ZLvyzoLiK89gUEfDv4Wv?=
 =?us-ascii?Q?BhfYBYsw9MJsKm+mvnSz2sZlu4BRnnT9APf8lKWbp1SvttTXNPyz9BmGcAJI?=
 =?us-ascii?Q?Lnkk3BXrSx0bRwphz3wlaBDQ0Ur+JPIvhA+a/fAVUTGWQMRu4qaGd8jn5OfA?=
 =?us-ascii?Q?NijtqW9RPzgH4Z42XhglZ+YSEvInYMIOL0s3DNJ2OlBM52tR9hygBZRAPiZp?=
 =?us-ascii?Q?U/rLQhf7xHZ1oMEC4ltIvM97rcrE+dt+qd7SkcBiEXI7ctUy3NH9CBDTlBZ+?=
 =?us-ascii?Q?0wmPNKSOuTr92gUvRJS+dGW+lnpZdmf/fJHh4cB3AixW8TSA9M/FQcNfeuLb?=
 =?us-ascii?Q?uMkTxeZkcRGR4YU2Qqdyp0ysEuN8bgJsjY7LrjFhO5mI12sHB3QfGkYkFR0L?=
 =?us-ascii?Q?W4rglnHAwQUj0UPb4mchwW4Wl8AjSQgevdIDxCsN/6JFWmS+ePWc5cAGhkwC?=
 =?us-ascii?Q?hGOlO9kRfFYpL449WSvzCFyZdmOmb5jFqRuIEwJfthLiqb+IPTutMrgsGqkj?=
 =?us-ascii?Q?iGGVy0hGp+91UlZpd8Qxsq+ItUsh46rNE6sJOpEQvp/PWugkYFlkoGs2JVGe?=
 =?us-ascii?Q?mv6VrBG8K/EbH1/MMUZDPTEG+QpjiWxH+gGiwmv2w9FbUIBa+Q3xEz4tRp/X?=
 =?us-ascii?Q?XlPgajUaZVX9rrx0MADFDUDug9bua1i6Jo0C7+tsWxp7df3RPbPufTO72zLC?=
 =?us-ascii?Q?1KoWyOiWDWbJZGWyll5inlHDMoFv5aFm+ink49zyz4ieQZLBVTP3dLfhUN3G?=
 =?us-ascii?Q?eQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB6789.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a36c8e2-d0c7-4097-180f-08dcd23eb2bd
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2024 08:49:50.7979 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yI1tcWLtmxgpZ6qmobPTgpjUL+4z5jzuVWt2lWXaKuSpnIvF0CBfoHbSovU2ZniOWb0Zi+DJA9K4gZjXmp2+NSE8gqT6i/SfHDarz27umyQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5197
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Kulkarni, Vandita
> Sent: Wednesday, September 11, 2024 10:46 AM
> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Murthy, Arun R <arun.r.murthy@intel.com>
> Subject: RE: [PATCH 3/5] Add crtc properties for global histogram
>=20
>=20
>=20
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> > Arun R Murthy
> > Sent: Friday, July 5, 2024 3:26 PM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Murthy, Arun R <arun.r.murthy@intel.com>
> > Subject: [PATCH 3/5] Add crtc properties for global histogram
> >
> > CRTC properties have been added for enable/disable histogram, reading
> > the histogram data and writing the IET data.
> > "HISTOGRAM_EN" is the crtc property to enable/disable the global
> > histogram and takes a value 0/1 accordingly.
> > "Histogram" is a crtc property to read the binary histogram data.
> > "Global IET" is a crtc property to write the IET binary LUT data.
> >
> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_atomic.c   |   5 +
> >  drivers/gpu/drm/i915/display/intel_crtc.c     | 202 +++++++++++++++++-
> >  drivers/gpu/drm/i915/display/intel_crtc.h     |   5 +
> >  drivers/gpu/drm/i915/display/intel_display.c  |  13 ++
> >  .../drm/i915/display/intel_display_types.h    |  17 ++
> >  .../gpu/drm/i915/display/intel_histogram.c    |   1 +
> >  6 files changed, 242 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c
> > b/drivers/gpu/drm/i915/display/intel_atomic.c
> > index 76aa10b6f647..693a22089937 100644
> > --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> > +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> > @@ -246,6 +246,8 @@ intel_crtc_duplicate_state(struct drm_crtc *crtc)
> >
> >  	__drm_atomic_helper_crtc_duplicate_state(crtc, &crtc_state-
> >uapi);
> >
> > +	if (crtc_state->global_iet)
> > +		drm_property_blob_get(crtc_state->global_iet);
> >  	/* copy color blobs */
> >  	if (crtc_state->hw.degamma_lut)
> >  		drm_property_blob_get(crtc_state->hw.degamma_lut);
> > @@ -277,6 +279,7 @@ intel_crtc_duplicate_state(struct drm_crtc *crtc)
> >  	crtc_state->fb_bits =3D 0;
> >  	crtc_state->update_planes =3D 0;
> >  	crtc_state->dsb =3D NULL;
> > +	crtc_state->histogram_en_changed =3D false;
> >
> >  	return &crtc_state->uapi;
> >  }
> > @@ -312,6 +315,8 @@ intel_crtc_destroy_state(struct drm_crtc *crtc,
> >
> >  	drm_WARN_ON(crtc->dev, crtc_state->dsb);
> >
> > +	if (crtc_state->global_iet)
> > +		drm_property_blob_put(crtc_state->global_iet);
> >  	__drm_atomic_helper_crtc_destroy_state(&crtc_state->uapi);
> >  	intel_crtc_free_hw_state(crtc_state);
> >  	if (crtc_state->dp_tunnel_ref.tunnel)
> > diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c
> > b/drivers/gpu/drm/i915/display/intel_crtc.c
> > index 1b578cad2813..24f160359422 100644
> > --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> > @@ -10,6 +10,7 @@
> >  #include <drm/drm_fourcc.h>
> >  #include <drm/drm_plane.h>
> >  #include <drm/drm_vblank_work.h>
> > +#include <drm/drm_atomic_uapi.h>
> >
> >  #include "i915_vgpu.h"
> >  #include "i9xx_plane.h"
> > @@ -26,6 +27,7 @@
> >  #include "intel_drrs.h"
> >  #include "intel_dsi.h"
> >  #include "intel_fifo_underrun.h"
> > +#include "intel_histogram.h"
> >  #include "intel_pipe_crc.h"
> >  #include "intel_psr.h"
> >  #include "intel_sprite.h"
> > @@ -201,6 +203,7 @@ static struct intel_crtc *intel_crtc_alloc(void)
> > static void intel_crtc_free(struct intel_crtc *crtc)  {
> >  	intel_crtc_destroy_state(&crtc->base, crtc->base.state);
> > +	intel_histogram_deinit(crtc);
> >  	kfree(crtc);
> >  }
> >
> > @@ -220,6 +223,100 @@ static int intel_crtc_late_register(struct
> > drm_crtc
> > *crtc)
> >  	return 0;
> >  }
> >
> > +static int intel_crtc_get_property(struct drm_crtc *crtc,
> > +				   const struct drm_crtc_state *state,
> > +				   struct drm_property *property,
> > +				   uint64_t *val)
> > +{
> > +	struct drm_i915_private *i915 =3D to_i915(crtc->dev);
> > +	const struct intel_crtc_state *intel_crtc_state =3D
> > +		to_intel_crtc_state(state);
> > +	struct intel_crtc *intel_crtc =3D to_intel_crtc(crtc);
> > +
> > +	if (property =3D=3D intel_crtc->histogram_en_property) {
> > +		*val =3D intel_crtc_state->histogram_en;
> > +	} else if (property =3D=3D intel_crtc->global_iet_property) {
> > +		*val =3D (intel_crtc_state->global_iet) ?
> > +			intel_crtc_state->global_iet->base.id : 0;
> > +	} else if (property =3D=3D intel_crtc->histogram_property) {
> > +		*val =3D (intel_crtc_state->histogram) ?
> > +			intel_crtc_state->histogram->base.id : 0;
> > +	} else {
> > +		drm_err(&i915->drm,
> > +			"Unknown property [PROP:%d:%s]\n",
> > +			property->base.id, property->name);
> > +		return -EINVAL;
> > +	}
> > +
> > +	return 0;
> > +}
> > +
Also to me the below function looks like drm_property_replace_blob_from_id,=
 why are we not using that, am I missing something here..

Thanks,
Vandita
> > +static int
> > +intel_atomic_replace_property_blob_from_id(struct drm_device *dev,
> > +					   struct drm_property_blob **blob,
> > +					   u64 blob_id,
> > +					   ssize_t expected_size,
> > +					   ssize_t expected_elem_size,
> > +					   bool *replaced)
> > +{
> > +	struct drm_property_blob *new_blob =3D NULL;
> > +
> > +	if (blob_id !=3D 0) {
> > +		new_blob =3D drm_property_lookup_blob(dev, blob_id);
> > +		if (!new_blob)
> > +			return -EINVAL;
> > +
> > +		if (expected_size > 0 &&
> > +		    new_blob->length !=3D expected_size) {
> > +			drm_property_blob_put(new_blob);
> > +			return -EINVAL;
> > +		}
> > +		if (expected_elem_size > 0 &&
> > +		    new_blob->length % expected_elem_size !=3D 0) {
> > +			drm_property_blob_put(new_blob);
> > +			return -EINVAL;
> > +		}
> > +	}
> > +
> > +	*replaced |=3D drm_property_replace_blob(blob, new_blob);
> > +	drm_property_blob_put(new_blob);
> > +
> > +	return 0;
> > +}
> > +
> > +static int intel_crtc_set_property(struct drm_crtc *crtc,
> > +				   struct drm_crtc_state *state,
> > +				   struct drm_property *property,
> > +				   u64 val)
> > +{
> > +	struct drm_i915_private *i915 =3D to_i915(crtc->dev);
> > +	struct intel_crtc_state *intel_crtc_state =3D
> > +		to_intel_crtc_state(state);
> > +	struct intel_crtc *intel_crtc =3D to_intel_crtc(crtc);
> > +	bool replaced =3D false;
> > +
> > +	if (property =3D=3D intel_crtc->histogram_en_property) {
> > +		intel_crtc_state->histogram_en =3D val;
> > +		intel_crtc_state->histogram_en_changed =3D true;
> > +		return 0;
> > +	}
> > +
> > +	if (property =3D=3D intel_crtc->global_iet_property) {
> > +		intel_atomic_replace_property_blob_from_id(crtc->dev,
> > +							   &intel_crtc_state-
> > >global_iet,
> > +							   val,
> > +							   sizeof(uint32_t) *
> > HISTOGRAM_IET_LENGTH,
> > +							   -1, &replaced);
> > +		if (replaced)
> > +			intel_crtc_state->global_iet_changed =3D true;
> > +		return 0;
> > +	}
> > +
> > +	drm_dbg_atomic(&i915->drm, "Unknown property
> > [PROP:%d:%s]\n",
> > +		       property->base.id, property->name);
> > +	return -EINVAL;
> > +}
> > +
> >  #define INTEL_CRTC_FUNCS \
> >  	.set_config =3D drm_atomic_helper_set_config, \
> >  	.destroy =3D intel_crtc_destroy, \
> > @@ -229,7 +326,9 @@ static int intel_crtc_late_register(struct
> > drm_crtc
> > *crtc)
> >  	.set_crc_source =3D intel_crtc_set_crc_source, \
> >  	.verify_crc_source =3D intel_crtc_verify_crc_source, \
> >  	.get_crc_sources =3D intel_crtc_get_crc_sources, \
> > -	.late_register =3D intel_crtc_late_register
> > +	.late_register =3D intel_crtc_late_register, \
> > +	.atomic_set_property =3D intel_crtc_set_property, \
> > +	.atomic_get_property =3D intel_crtc_get_property
> >
> >  static const struct drm_crtc_funcs bdw_crtc_funcs =3D {
> >  	INTEL_CRTC_FUNCS,
> > @@ -374,6 +473,10 @@ int intel_crtc_init(struct drm_i915_private
> > *dev_priv, enum pipe pipe)
> >  	intel_color_crtc_init(crtc);
> >  	intel_drrs_crtc_init(crtc);
> >  	intel_crtc_crc_init(crtc);
> > +	intel_histogram_init(crtc);
> > +
> > +	/* Initialize crtc properties */
> > +	intel_crtc_add_property(crtc);
> >
> >  	cpu_latency_qos_add_request(&crtc->vblank_pm_qos,
> > PM_QOS_DEFAULT_VALUE);
> >
> > @@ -690,3 +793,100 @@ void intel_pipe_update_end(struct
> > intel_atomic_state *state,
> >  out:
> >  	intel_psr_unlock(new_crtc_state);
> >  }
> > +
> > +static const struct drm_prop_enum_list histogram_en_names[] =3D {
> > +	{ INTEL_HISTOGRAM_DISABLE, "Disable" },
> > +	{ INTEL_HISTOGRAM_ENABLE, "Enable" }, };
> > +
> > +/**
> > + * intel_attach_histogram_en_property() - add property to
> > +enable/disable histogram
> > + * @intel_crtc: pointer to the struct intel_crtc on which the global
> > +histogram
> > is to
> > + *		be enabled/disabled
> > + *
> > + * "HISTOGRAM_EN" is the crtc propety to enable/disable global
> > +histogram  */ void intel_attach_histogram_en_property(struct
> > +intel_crtc
> > +*intel_crtc) {
> > +	struct drm_crtc *crtc =3D &intel_crtc->base;
> > +	struct drm_device *dev =3D crtc->dev;
> > +	struct drm_property *prop;
> > +
> > +	prop =3D intel_crtc->histogram_en_property;
> > +	if (!prop) {
> > +		prop =3D drm_property_create_enum(dev, 0,
> > +						"HISTOGRAM_EN",
> > +						histogram_en_names,
> > +
> > 	ARRAY_SIZE(histogram_en_names));
> > +		if (!prop)
> > +			return;
> > +
> > +		intel_crtc->histogram_en_property =3D prop;
> > +	}
> > +
> > +	drm_object_attach_property(&crtc->base, prop, 0); }
> > +
> > +/**
> > + * intel_attach_global_iet_property() - add property to write Image
> > +Enhancement data
> > + * @intel_crtc: pointer to the struct intel_crtc on which global
> > +histogram is enabled
> > + *
> > + * "Global IET" is the crtc property to write the Image Enhancement
> > +LUT binary data  */ void intel_attach_global_iet_property(struct
> > +intel_crtc
> > +*intel_crtc) {
> > +	struct drm_crtc *crtc =3D &intel_crtc->base;
> > +	struct drm_device *dev =3D crtc->dev;
> > +	struct drm_property *prop;
> > +
> > +	prop =3D intel_crtc->global_iet_property;
> > +	if (!prop) {
> > +		prop =3D drm_property_create(dev, DRM_MODE_PROP_BLOB
> > | DRM_MODE_PROP_ATOMIC,
> > +					   "Global IET", 0);
> > +		if (!prop)
> > +			return;
> > +
> > +		intel_crtc->global_iet_property =3D prop;
> > +	}
> > +
> > +	drm_object_attach_property(&crtc->base, prop, 0); }
> > +
> > +/**
> > + * intel_attach_histogram_property() - crtc property to read the
> histogram.
> > + * @intel_crtc: pointer to the struct intel_crtc on which the global
> histogram
> > + *		was enabled.
> > + * "Global Histogram" is the crtc property to read the binary histogra=
m
> data.
> > + */
> > +void intel_attach_histogram_property(struct intel_crtc *intel_crtc) {
> > +	struct drm_crtc *crtc =3D &intel_crtc->base;
> > +	struct drm_device *dev =3D crtc->dev;
> > +	struct drm_property *prop;
> > +	struct drm_property_blob *blob;
> > +
> > +	prop =3D intel_crtc->histogram_property;
> > +	if (!prop) {
> > +		prop =3D drm_property_create(dev, DRM_MODE_PROP_BLOB
> > |
> > +					   DRM_MODE_PROP_ATOMIC |
> > +					   DRM_MODE_PROP_IMMUTABLE,
> > +					   "Global Histogram", 0);
> > +		if (!prop)
> > +			return;
> > +
> > +		intel_crtc->histogram_property =3D prop;
> > +	}
> > +	blob =3D drm_property_create_blob(dev, sizeof(uint32_t) *
> > HISTOGRAM_BIN_COUNT, NULL);
> > +	intel_crtc->config->histogram =3D blob;
> > +
> > +	drm_object_attach_property(&crtc->base, prop, blob->base.id); }
> > +
> > +int intel_crtc_add_property(struct intel_crtc *intel_crtc) {
> > +	intel_attach_histogram_en_property(intel_crtc);
> > +	intel_attach_histogram_property(intel_crtc);
> > +	intel_attach_global_iet_property(intel_crtc);
> > +
> > +	return 0;
> > +}
> > diff --git a/drivers/gpu/drm/i915/display/intel_crtc.h
> > b/drivers/gpu/drm/i915/display/intel_crtc.h
> > index b615b7ab5ccd..56c6b7c6037e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_crtc.h
> > +++ b/drivers/gpu/drm/i915/display/intel_crtc.h
> > @@ -7,6 +7,7 @@
> >  #define _INTEL_CRTC_H_
> >
> >  #include <linux/types.h>
> > +#include <drm/drm_crtc.h>
> >
> >  enum i9xx_plane_id;
> >  enum pipe;
> > @@ -49,4 +50,8 @@ void intel_wait_for_vblank_if_active(struct
> > drm_i915_private *i915,
> >  				     enum pipe pipe);
> >  void intel_crtc_wait_for_next_vblank(struct intel_crtc *crtc);
> >
> > +int intel_crtc_add_property(struct intel_crtc *intel_crtc); void
> > +intel_attach_histogram_en_property(struct intel_crtc *intel_crtc);
> > +void intel_attach_global_iet_property(struct intel_crtc *intel_crtc);
> > +void intel_attach_histogram_property(struct intel_crtc *intel_crtc);
> >  #endif
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index c2c388212e2e..94e9f7a71a90 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -93,6 +93,7 @@
> >  #include "intel_fifo_underrun.h"
> >  #include "intel_frontbuffer.h"
> >  #include "intel_hdmi.h"
> > +#include "intel_histogram.h"
> >  #include "intel_hotplug.h"
> >  #include "intel_link_bw.h"
> >  #include "intel_lvds.h"
> > @@ -4324,6 +4325,10 @@ static int intel_crtc_atomic_check(struct
> > intel_atomic_state *state,
> >  	if (ret)
> >  		return ret;
> >
> > +	/* HISTOGRAM changed */
> > +	if (crtc_state->histogram_en_changed)
> > +		return intel_histogram_can_enable(crtc);
> > +
> >  	return 0;
> >  }
> >
> > @@ -7503,6 +7508,14 @@ static void intel_atomic_commit_tail(struct
> > intel_atomic_state *state)
> >  		 * FIXME get rid of this funny new->old swapping
> >  		 */
> >  		old_crtc_state->dsb =3D fetch_and_zero(&new_crtc_state-
> > >dsb);
> > +
>=20
> Since there is a wait_for_vblank in this for older platforms only, what i=
s the
> expected user space behaviour here for enabling histogram and updating th=
e
> iets.
> > +		/* Re-Visit: HISTOGRAM related stuff */
> > +		if (new_crtc_state->histogram_en_changed)
> > +			intel_histogram_update(crtc,
> > +					       new_crtc_state->histogram_en);
> Is there any particular reason that this code is not part of pre plane up=
date?
> > +		if (new_crtc_state->global_iet_changed)
> > +			intel_histogram_set_iet_lut(crtc,
> > +						    (u32 *)new_crtc_state-
> > >global_iet->data);
> >  	}
> >
> >  	/* Underruns don't always raise interrupts, so check manually */
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index e0a9c6d8c9b2..e7c33eb76a7e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -99,6 +99,12 @@ enum intel_broadcast_rgb {
> >  	INTEL_BROADCAST_RGB_LIMITED,
> >  };
> >
> > +/* HISTOGRAM property */
> > +enum intel_histogram_en_prop {
> > +	INTEL_HISTOGRAM_PROP_DISABLE,
> > +	INTEL_HISTOGRAM_PROP_ENABLE,
> > +};
> > +
> >  struct intel_fb_view {
> >  	/*
> >  	 * The remap information used in the remapped and rotated views to
> > @@ -1431,6 +1437,13 @@ struct intel_crtc_state {
> >
> >  	/* LOBF flag */
> >  	bool has_lobf;
> > +
> > +	/* HISTOGRAM data */
> > +	int histogram_en;
> > +	struct drm_property_blob *global_iet;
> > +	struct drm_property_blob *histogram;
> > +	bool global_iet_changed;
> > +	bool histogram_en_changed;
> >  };
> >
> >  enum intel_pipe_crc_source {
> > @@ -1539,6 +1552,10 @@ struct intel_crtc {
> >
> >  	/* histogram data */
> >  	struct intel_histogram *histogram;
> > +	/* HISTOGRAM properties */
> > +	struct drm_property *histogram_en_property;
> > +	struct drm_property *global_iet_property;
> > +	struct drm_property *histogram_property;
> >
> >  #ifdef CONFIG_DEBUG_FS
> >  	struct intel_pipe_crc pipe_crc;
> > diff --git a/drivers/gpu/drm/i915/display/intel_histogram.c
> > b/drivers/gpu/drm/i915/display/intel_histogram.c
> > index 8fa3bc74e52b..740019fdf0df 100644
> > --- a/drivers/gpu/drm/i915/display/intel_histogram.c
> > +++ b/drivers/gpu/drm/i915/display/intel_histogram.c
> > @@ -183,6 +183,7 @@ static void intel_histogram_disable(struct
> > intel_crtc
> > *intel_crtc)
> >
> >  	cancel_delayed_work(&histogram->handle_histogram_int_work);
> >  	histogram->enable =3D false;
> > +	intel_crtc->config->histogram_en =3D false;
> >  }
> >
> >  int intel_histogram_update(struct intel_crtc *intel_crtc, bool
> > enable)
> > --
> > 2.25.1

