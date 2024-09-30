Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3841298AA69
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2024 18:58:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 935A910E554;
	Mon, 30 Sep 2024 16:57:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GHY09kME";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7918710E129;
 Mon, 30 Sep 2024 16:57:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727715476; x=1759251476;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YheiwUKBcEtUZmFvjdDncs3OfmIMK0Q+1WvA+7iT2rs=;
 b=GHY09kMEtTuI9BsHWYUFLVqSYT+p8/hy6md5pmiFujIpji96yGguSuSI
 dgjiB0wb/chLxdam5FEuBJ1AGJNG/a5B4xm0QyZbGw8MzvdBiSimV9fkF
 mCVvwHbS+lW3zj6esgAIdNgSAv+QSQ/SvyFQOytL4h+DIyriaPscXxl7G
 3eVddRikFBuC77oLdPl+Cr5Nri2juVlBX6zOnpDUR+9pICGSPaFnzLKHl
 yXlKphZ1eTgAm3xfxN6AxQNfB1FqIYj7+96sSn6vkeaiIzKPh0yUn92MY
 t5bAOH6CJ/xbHEgTEQwvbeeKbn1geiuVqHBoRcI+vDDOli3n6EsasK9mk w==;
X-CSE-ConnectionGUID: DD2SPruPR5CHT5EmH2eUyw==
X-CSE-MsgGUID: ZPnQPjj8Roye2V7XEa3A3w==
X-IronPort-AV: E=McAfee;i="6700,10204,11211"; a="38173921"
X-IronPort-AV: E=Sophos;i="6.11,166,1725346800"; d="scan'208";a="38173921"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 09:57:44 -0700
X-CSE-ConnectionGUID: ymgcQ7WPT/m2YluU3yrNDw==
X-CSE-MsgGUID: 4egXYT8sR3KLv5GgLlZKYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,166,1725346800"; d="scan'208";a="73629292"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Sep 2024 09:57:44 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 30 Sep 2024 09:57:43 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 30 Sep 2024 09:57:43 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 30 Sep 2024 09:57:43 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 30 Sep 2024 09:57:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OUrw9Ri4rhSqmeEEwLyeB9thPZKoGFcAwkbCL1lC3Nkatf/LqW27TInlY2IoXUXITWCIuCEP7Ex9BlGOpGMaiOugzC/kt3UYBOSnsSvoiUxb0Cx4AIKvdb8yZ5RM5Ddj+6pILhmiX/uiOWt1sY7ZkkPBls4humUQ172qA49Lnubh0qIQjMv6VX5LlXLX5c5fJVGgUc5MHKM/HNZB5LlwpWH5E/qI9pFRRLva/lpw2UjHPyFQ1Z+86u59jmajTgJ5zSY7ZUJ6tRMAdLtkQ8W8rlr5CDALG7h5CO4a5wa2UnwpEYPwNMMey7K0RkftQJ9gDZEpo7TG4O+OcgkLKHjn3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TnIi03z4N/kP62P6SnWJw0bBOVDjbz8vgJg8CW8Wqes=;
 b=Tr85J2YCBQ4SCkcuWQtLK1s8sK/iN/Q4nmpJDVrYonGw0L4ETCcIAW3d2HtLb54eRD7NVIr8dMNre7WX8GfxbpmIfeTCvDsY7hPV3R1PIZjWG+3erq834M0WI165iRoJfcy+p34vVD1l7ivZQvxAlUFHKyKsKtdgazhxAd5GoV6tGz+HnRDyughbpVpq+oibJus32xsaOWA4UqoyPpGLGD1HW2sV7E9HL2HeUvqoGLfFBCy50fUkvwsOqc8J22GrSPS3tswtw5PeWVo/DIMhlhlQszdfDaLStYcNq0j5xidxNxxDJ1Vehcqo2UHJM5A/Cze/XCcs4/s4dkC44AvtuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by PH7PR11MB6500.namprd11.prod.outlook.com (2603:10b6:510:213::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8005.26; Mon, 30 Sep
 2024 16:57:40 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%2]) with mapi id 15.20.8005.024; Mon, 30 Sep 2024
 16:57:39 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [RFC] Add AS_SDP to fastset
Thread-Topic: [RFC] Add AS_SDP to fastset
Thread-Index: AQHa6XgoTTVSs5yLhkaxYGCJN2em+LIdIAUAgFPAHZA=
Date: Mon, 30 Sep 2024 16:57:39 +0000
Message-ID: <IA1PR11MB63489350505A3B1FAB7ADD11B2762@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20240808094849.1299028-1-mitulkumar.ajitkumar.golani@intel.com>
 <877ccr49qj.fsf@intel.com>
In-Reply-To: <877ccr49qj.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|PH7PR11MB6500:EE_
x-ms-office365-filtering-correlation-id: 09be5b76-78a7-436c-10dc-08dce170fe56
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?VsSwW6mS6PaDvGwWbYZRr8kcShUKCiFc+SvoA7xTT7PvAp8UaMO0YEMWg6JM?=
 =?us-ascii?Q?VW3vlhF0JRDTmwK2QaIkNwnkfhdMdIeiTh6B05sJH3IJ50aYyjhTeLYyz91h?=
 =?us-ascii?Q?Zx/x8KjO3rIkH4uKF4c7yQjy2mxlJjlkn0PGPEeJO0n7u4iS0GkQez70sVBz?=
 =?us-ascii?Q?Tv5g9Ma9WLGA4JH+88cWJoHtBWLedr/dMA+aW+HO/OHd4c2F0HJwbpp8pdW6?=
 =?us-ascii?Q?EufuHG31WTev+HlTfjDbeNcPdn9QVHLcnfABxFbx6GQjRbig6ddFnMop2yI6?=
 =?us-ascii?Q?Ysp46aZeO202i0AHQxH3yUDOApNIm9RXWg7+QMJocY1iMNXGn+gbKPbSSgSj?=
 =?us-ascii?Q?YS+HEvhQjAcFZjaoFUwhLlYrNFkHNK1ciCp4+Ar1/In4rnKBtva6bUjPWwUr?=
 =?us-ascii?Q?SfWbrZGYC/b/BNtVMx0D2ZsPKs3HIWN7LBKvtNkV7lll1UR6260kD/hcFOPB?=
 =?us-ascii?Q?B+RGBWmksCQYlWlnqHqwajR9DlEzY7z8J80HhSUFYVRE3a6yN24anT3v4Qqv?=
 =?us-ascii?Q?Lo4Hx9G6nGzjhsrdhHFnCwXC5JHmuQHiFwCmvTRkMw5mMLK7CX5rd6zm6yhP?=
 =?us-ascii?Q?wbY0i9eIoVK72JSC0fgzmie9HOiw8lT5Gt6Bpi3bNLmgXU5G2sAeEG7OKrz5?=
 =?us-ascii?Q?FQVPbiJJIQroQQ4jE0mjDK+ihapmvhyX8BWsTM3N0dgN/PpFFqzQdGVlbZMi?=
 =?us-ascii?Q?tiC4Cs54G9iY0iPlNxbkyOVqaT4oh+5tWSJ4PgH8LrmzA3wdRmUCvTSWq36R?=
 =?us-ascii?Q?4kfXzndscjI1GdhNZe8f/Gd4wtFe9eng8S0lxVqQQOdadjLwT3HIfbJ8vSpZ?=
 =?us-ascii?Q?waTFDNZdzVYU+n9zz7NwAPkSVmaxvmeI0B3NImaQ3MTnBDs/5uRtgD2xfIiA?=
 =?us-ascii?Q?awPuPw4kw1MTU73avwX/fIgeOhqz6FfCf0sQzNwfCGF2+ii3nGwtakVrp1oN?=
 =?us-ascii?Q?MywYDXJDvfI3Lh2N/XsxHxdcdd9zlElE9LyQEBRZH6q1kscQsOJU2Mamr+v9?=
 =?us-ascii?Q?7egwsGWzGIHjiNzztSab/d6VbGlIdmORR53SNF9nf7JZ7cgFCv79ZuGdNH+b?=
 =?us-ascii?Q?er/xB0J2SAz61Y1F784dLIcXFO/OnCXYa2LGAvqOHP5c9YWL61AdoTDWhC9r?=
 =?us-ascii?Q?yFcuRULk2PSWmH3bap9O6VaKGKfzwEsAwWP/PH6v6E5VbANj5bV/nf06h2td?=
 =?us-ascii?Q?YPeMPKgwB8lOL8H17QtxkVT39YAdnACJIVnzzVR6aS0DSCfkwxhfZOeKkOtp?=
 =?us-ascii?Q?RNKB7/JXq/wUZNVDX3lvA/1lTkJZcB+yPdFjkXMTWw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?cp1qD4OJnYVz3YSOrUU0As3Y/+nBN/f/1R9uz7IBktS8DmCbzDxoxuP8+3iQ?=
 =?us-ascii?Q?fzCqI736cv8xC+EWK/KGbpdagC7D4ue8wYhhvDidrP9ChDgGHtjGYlKlBEPc?=
 =?us-ascii?Q?PhyjJsADbPZoJthev0OKoUbQKhRhjWjVvuTHMgfyv9BOEwmPSI0mNKAMmA7w?=
 =?us-ascii?Q?EV2IasIPMqvcu3N+pchxg4SwJSWsDDrWUX64E8QszlWn9Rs1dj1feJU8YQVV?=
 =?us-ascii?Q?XzMbiSzkSIL7yeNmDIgWvhBEzUtMDNeLQohSGdc2+rbQq+gyifLRb8H+s7OA?=
 =?us-ascii?Q?TaxOMjSNoyWUg90QI8fj1RrjtyGIXFGVOTKTCExsBvAHPPra7Dntu6ejF7GB?=
 =?us-ascii?Q?AGJ1o8kSJcnkMsPh/XrH5MPggB7PrfddIKUeJHAQIMwDQtIBuJkIKQGqTctB?=
 =?us-ascii?Q?e+QMk44mcixp0nopAw5aBs9WwYx7kXdfAXEX8ReBxKLZnDWjOlbYCZke019x?=
 =?us-ascii?Q?n0zc6Vw00OMSEDcjU6wuTiFCxnYmrUyYxWiKvelwYxOpHkwu26kDfbf5gxHY?=
 =?us-ascii?Q?iPWGbOMZVf9pLu2b4C3kqzBzIqAjWisK58hcm4hwG53g9rdnK+FGQDjoVzB2?=
 =?us-ascii?Q?+cV8+7puyGiKCIda/wPAH7L8Qv9gV3oFobrlSRfMwkEHBXte0VyC6sM3cO3r?=
 =?us-ascii?Q?HZJBDk+GW2NWpVsJrPfdX1JwpLRL1sZ36G0EFf0UIePxYLjbLlQH9Alr4Xs8?=
 =?us-ascii?Q?D6jG3npBEPuE6sd8ExkLeS+3JAqxdXZWve2wq+NlASmgAW6XdJcppOvVJkZZ?=
 =?us-ascii?Q?HV49U0PGzoVy/++5JkQV9uI42dskFhrqtYBEZur8pFsgRP+nKUV074OzRO1h?=
 =?us-ascii?Q?f9hKIFhHeX1r1w05gRnwCTcYFpYtp7bkRslhdjLNCbBMvXLObEu4YcWL5T0d?=
 =?us-ascii?Q?1ED1xv2A04yvbGkGg9xv76wtf9ucC4Gd9H3eF/GZr1ircBGWHapKhFoIwgNY?=
 =?us-ascii?Q?g5oe+NgfX5cmzyTKuN5QKWID1rvpaNUfUDjTv35IeMsrGtR8y/o+HrZr9yzn?=
 =?us-ascii?Q?S9HicTrVhMXTIVCwmTb//+BytRykxn/GFagssrzNZUPTV2RRF49zsump3sv2?=
 =?us-ascii?Q?Mi8sdG60J/XSWv61UHKxu18jRyC3nUOHhYMm6YwU7/3L8XhZEGogRGBPv1Iz?=
 =?us-ascii?Q?xAyrAtDAZ2wPFf0TZO2SwXarCRK9tBpJ4lonvP9RCYEkIjTk5xFKJpE9RIfG?=
 =?us-ascii?Q?CU05B+lnElw9bHpagyio/oA3Wmy+Pz60TXSWVzHPkmqYZpAvPXWAHmLDxOqG?=
 =?us-ascii?Q?WNNQQIyV6Y5klRsSumEqNgq7DezPVUnD2AxEJxvxUWK+Yl43dXMaXs+Wnmq1?=
 =?us-ascii?Q?ONwpGH+MvorSh5Uajj0sGiJwRpq3HYW71li/bxdIgbOcLMB47q1EdyVE94BQ?=
 =?us-ascii?Q?TojRXjcOT6Hjrs7i9ayFIF6eeUua4L8VyWFEDmNFdxnjcl96zpgvFEEWXfmq?=
 =?us-ascii?Q?c+3I/iRqjWHYEEK8GgVoEA8cSo4qTsZdgVvWUCuHEKoUsov0XJ0xxi2UNcDn?=
 =?us-ascii?Q?ERjb9leMAUO/QWZ9gGze132RvHZqOuxiY3bxePiddufdBz7uyIhsWWKx5h8v?=
 =?us-ascii?Q?BQKJJ4UBXyQbo8bcHUXBBcJWTWNgq4z00CD3qpLBbldH+xW3Pmbxnauz6/AL?=
 =?us-ascii?Q?/3vtXEclnmDVMsw31+EGtl8=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 09be5b76-78a7-436c-10dc-08dce170fe56
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Sep 2024 16:57:39.8905 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DsY4O9edWdKPbtgib22bPou3ad6POU3xgIVZnegYpmptXu53Hj4DiWVV/qxXJvoJun6yLGkZs8Fu+RVvnXFvOMsHk48G7cZbpA9mXNiBQXSDdl6Q86fDDfULPriqEwdl
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6500
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
> Sent: Thursday, August 8, 2024 3:28 PM
> To: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>;
> intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Nautiyal, Ankit K
> <ankit.k.nautiyal@intel.com>
> Subject: Re: [RFC] Add AS_SDP to fastset
>=20
> On Thu, 08 Aug 2024, Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> wrote:
> > Add full modeset being triggered during VRR enable/disable, specially
> > when panel has Adaptive sync SDP suypport.
>=20
> I don't understand what that is trying to say.
>=20
> BR,
> Jani.

Hi Jani,

Basically using vrr.enable while computing AS SDP preventing VRR to enable/=
disable
With fastest. Patch  is intended to compute AS SDP so that VRR can be enabl=
ed/disabled using fastest.

With changing the header has triggered new patch series: https://patchwork.=
freedesktop.org/series/139340/

Can you please help on review ?

>=20
> >
> > Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index 2755ebbbb9d2..b41ea78d4c89 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -5433,7 +5433,8 @@ intel_pipe_config_compare(const struct
> intel_crtc_state *current_config,
> >  	PIPE_CONF_CHECK_INFOFRAME(hdmi);
> >  	PIPE_CONF_CHECK_INFOFRAME(drm);
> >  	PIPE_CONF_CHECK_DP_VSC_SDP(vsc);
> > -	PIPE_CONF_CHECK_DP_AS_SDP(as_sdp);
> > +	if(!fastset)
> > +		PIPE_CONF_CHECK_DP_AS_SDP(as_sdp);
> >
> >  	PIPE_CONF_CHECK_X(sync_mode_slaves_mask);
> >  	PIPE_CONF_CHECK_I(master_transcoder);
>=20
> --
> Jani Nikula, Intel
