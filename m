Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 216C395FD8F
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2024 00:58:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43C4E10E05B;
	Mon, 26 Aug 2024 22:58:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iX7KKXVi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D206C10E05B
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Aug 2024 22:58:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724713091; x=1756249091;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=k/amom4jbKFaW5blVO1eXjmV9o6QUNYU+VB6HoBc/m4=;
 b=iX7KKXVi/A7oMXNHP0WXLohbIx0P4cyDrMne8+JU2soXqQLQt7UUSI4f
 QJD7AWnQXqN2SLLHZlgQBmu3i3Hmdk0wtFqbQaFdvBbT1QFywDsoxrMfD
 LgLerq/gTBizxXGGTotUrOeVPsdlOa5WHuqi2R1qxyRArvDGnff7xzUNL
 tNRrVh05aglWIDyoxcVphW8sS7H35p6ueWKaJR/dDJMMqsfflHLi7Plku
 YnlxRYympa7eqwZZyxmTL5hD991zMY3gCre5CMQg0VmP5ResZqNkufRCS
 FQ81YFkWDUBIBCnKcSTFNB2kqPdVqbQRDnscJZfuiFx9WPxqYI5uFuSll Q==;
X-CSE-ConnectionGUID: c/qX5CgvTNOuegjIaeKIPA==
X-CSE-MsgGUID: EJRSg0dUTcWF1r+l+XlQWg==
X-IronPort-AV: E=McAfee;i="6700,10204,11176"; a="23344733"
X-IronPort-AV: E=Sophos;i="6.10,178,1719903600"; d="scan'208";a="23344733"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 15:58:11 -0700
X-CSE-ConnectionGUID: O4o3LPBSTYC+aWJ/aRoIjQ==
X-CSE-MsgGUID: icMSveoRQXubHh6GVgZElQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,178,1719903600"; d="scan'208";a="67340691"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Aug 2024 15:58:11 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 26 Aug 2024 15:58:11 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 26 Aug 2024 15:58:10 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 26 Aug 2024 15:58:10 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 26 Aug 2024 15:58:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=f0ot6UhZBzyWlCPPFsZiu/9IVH13W0GJK92jY3nXJvYAj88HmOzUdX1qFRQ82zqcg+ubXt6s2vFsYEgGM8WJjhM8Jfdau8X01pHnZmygGHAFEQ7bVC2P1KDVzi6ztDm5TaZueee3qqNWPkcDeaRnIedN28ji3mnyeiZNDUt9yENUPsIpeE8MYQqreIxrlRG5Adn3gAvkUR5H8fB/owbFK1bBmlb/SfgrQlMfqozsV8wy8rLpIQrwAJbSaTgYGussgEWfdQg77FQjpzH1v9mw9ZGFPmBJIuE79GS3fmXl1WEiz4yYoCFCCcSz3R/a17siL6wmUdo+9nPy897bQaBLzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R+2zdIIfL5zNqjj9Q2pBVnODfUojY/19K0zJRdlivCw=;
 b=ue5uWPI4OEPB4nGzMjL4EjgPGZHi20rjAIvnxtqwYTeD62niLAQPuCd7LyF6UOi1cYVc7oDqcQvc3q0R+5N8Y9NPw8FUci7PGTFCXt/STiECpOUOGp9O0sHBVxZw3yGkWX8H3DJz8jbxhbwsqltuc9RG2pNAErd8vTUgsJKMPhcAXLeeS93BzjcFw3G+Y9uJ4wAAE/Z4/pZL7luyAS1bYL/BacQ0duTm2JbPANEyr2AXgmn12hnkeiGlkw/PmGZR4KSCRjY6fecpHTLuYCWsUToP871OOOcgluy0Fj8PIpKSMhhGZ+L5pN5v24ZxU7tfp7kCWMwkm5X1XsW+bAR/EA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN0PR11MB5987.namprd11.prod.outlook.com (2603:10b6:208:372::8)
 by IA0PR11MB7329.namprd11.prod.outlook.com (2603:10b6:208:437::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.24; Mon, 26 Aug
 2024 22:58:07 +0000
Received: from MN0PR11MB5987.namprd11.prod.outlook.com
 ([fe80::a7c3:f2e2:98a9:da87]) by MN0PR11MB5987.namprd11.prod.outlook.com
 ([fe80::a7c3:f2e2:98a9:da87%6]) with mapi id 15.20.7897.021; Mon, 26 Aug 2024
 22:58:07 +0000
From: "Chery, Nanley G" <nanley.g.chery@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>, "Bhadane, Dnyaneshwar"
 <dnyaneshwar.bhadane@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/gt: Disable Redundant HZ Plane expansions for
 MTL/ARL and DG2
Thread-Topic: [PATCH] drm/i915/gt: Disable Redundant HZ Plane expansions for
 MTL/ARL and DG2
Thread-Index: AQHa9USKmyYa3uw8cUern8Pqpq4fWLI1Of0AgATvp5A=
Date: Mon, 26 Aug 2024 22:58:07 +0000
Message-ID: <MN0PR11MB59878CED96E8F3C1853DEC5ADC8B2@MN0PR11MB5987.namprd11.prod.outlook.com>
References: <20240823101009.2093667-1-dnyaneshwar.bhadane@intel.com>
 <20240823192550.GA5091@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20240823192550.GA5091@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN0PR11MB5987:EE_|IA0PR11MB7329:EE_
x-ms-office365-filtering-correlation-id: 2ce798bd-2f62-4a16-4425-08dcc6228cc6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?MOr0cjZMynBXxJcvMvdI607XcfrwglGNPkcD/PUVM5mbYCF7vMAaadBLvsJA?=
 =?us-ascii?Q?aqxfIU5oV0kvn9aFUhQ97mn1dyfak9gol2KnIvYj1mcNAX9WpIyHOt8NW7AQ?=
 =?us-ascii?Q?RBRoNnRzQDPc8CebWvDzDk1QU3f/gHeY+L9qAicBu7xkkjD0oXAPFNBOOX+/?=
 =?us-ascii?Q?qxWIf/6Fyx0BiJowPlgM0BQsMsw/kIojXf0yfEdYbHX2hSwUibgiWEas3110?=
 =?us-ascii?Q?eYUjRRWkeRmRttdbW2iOh3W6LmQA1mfUxdLlpmWqrgz9EdpbUCZyrNh6WktG?=
 =?us-ascii?Q?3xNdI3xvbxIx0vMMlJQzDnajPEIuUlFcy0J9bEa3HaewRz25AfQ95KzgZXpQ?=
 =?us-ascii?Q?3Q5KEFm3nIU8+fGh/Wz9EAzu/E+JRJ/ojMBHxeoRCo8u4JDdk/ty/ZUEH6YO?=
 =?us-ascii?Q?P71K7hxjNoo3dgbvzNXBa36KXWae1l55nX6mOqoj/+Ns+lNmYjwGYak0wbRF?=
 =?us-ascii?Q?EB4QHNqRZQOtEFZ/GMh9ngS6D9XhIzaeijOe6YTQ7i2+G6WIXV+UUH+EXtGj?=
 =?us-ascii?Q?SEM5rK0CmrVQaV41x5RTHsX85oJKkMub8u5KVw4P+dSEc0gkGAz5GVfO3YZo?=
 =?us-ascii?Q?ZgSVImWr17SHDy/53KWFimYjtm0WrLm9+nJVxkcUgvE4PnKM0Z5LBH53Wljo?=
 =?us-ascii?Q?KT/M6QOQvyMKxfovSzoAGeSORxlFBIJVxLMluZWCj9paFLo5IXh+Nt0T+Io2?=
 =?us-ascii?Q?gOgXESz3cj3l3A36s8/FdSZ9zBHAX7QzYm7FmJEvw5SW/P3H0EPbkH6ohMTP?=
 =?us-ascii?Q?U6z7tAsslzwc9uk9DF5ZJivkdsFFYkl/ku5deA4MObbs5Cof4W697WKEX5Vd?=
 =?us-ascii?Q?DOE013xSyGNndhtUvNu//nApLTyfF8ANWGPIA5IHwUf+f7BGYss6p63fmQ8P?=
 =?us-ascii?Q?o04DsVdWtPa8SIh0D5U4fWn2MFbbJBEJzyoZIsED/+1yhEVLeDaZSqfzzoFx?=
 =?us-ascii?Q?iugTHBsnKjaO6bt8jvWiKk60JLbXYig8nfeEujPRIYAFt0sNKnY9hZo8E7Oj?=
 =?us-ascii?Q?Iv8fQBTBhXJRoR98cb3+LKnGEEjACOrI9EI+FF3iQL9J8bYJRVguqHRwLHl2?=
 =?us-ascii?Q?/poesCE5wkcdEr/pX8sGc0f4ojwTMx6JrTZZBgFWMtQ50TcL9dGec3ZDKhmM?=
 =?us-ascii?Q?nYesuaWeivNn+1VuUwo1cJYdNSdK7uhlZTvcOk27Eu/nLw8PaKaV14JKmr19?=
 =?us-ascii?Q?cbjiBbI6pCDAM9TcDobE0JiuYtPewffW4yZoo4COdQpWZbEmW8JX9o2G6AB5?=
 =?us-ascii?Q?kodoSx/lNq/o4OFccHBS3+XCZsosjGpLI89k9XKlUaZXWQSUlpSRcZYB5S8k?=
 =?us-ascii?Q?SD+C0ZsRhHwfwqrf1pT6qKDgPxJ8A5PKubbFRIE6w1Xq++qZIFU0WbZo5yxx?=
 =?us-ascii?Q?7T92qn0rnRR2sB7hzG536kWQBrz8JWIOnC3ws2djrhNTDNkz+Q=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB5987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?AaTZIzhqewuJtYEsOGlfJlkYEdLMBtHhTAfncA+P1A453cktUjUB9hreUdDm?=
 =?us-ascii?Q?Mwg1yc7kDVPrgPl2ePnuvNHkj3B+HzhmKaRdFIWZWXUO3wPeh0zQJf4xE4rk?=
 =?us-ascii?Q?QNY+TgqoCBdpPzlBkRry2Bhano3iysu513Jy8M9KhvYBcu1VqAn9RvUqw0MJ?=
 =?us-ascii?Q?/EAcrIyhFfjL4rLO7C3h7DP8qPnFSMRKsV9VRsPt4Rub1QGk7YghW9gYFTUw?=
 =?us-ascii?Q?1cJAijsP+2Mhn7Zu6fjADQOCVCOQyXmWm1dWuebiH9elYZvyPTUYQ8EuxJIS?=
 =?us-ascii?Q?FV6DZx+oGdY8x5fo7usDMCgfCcekNwM8SjFjsHjdnh14M+QdINh9Ux4jg8y4?=
 =?us-ascii?Q?YcIddZRtTcuweTJM3yh6LKq5tuEC1QBMx3KzsuB7mPYm30xuZ3ihcGbv1SjU?=
 =?us-ascii?Q?iRHkc2j0dVKuM7cDdGhWz0Zo2803oS3ukGMoKJ7KdlC59tqJ5McQqK6Sh8NA?=
 =?us-ascii?Q?PKwpPI+FBAXEhLz/dZPcpLMTNsleLSjhsTPL5fXcM8zKmRWhcl1MLUK65YwC?=
 =?us-ascii?Q?wKwzSuaSM2e6opvSfl3fnKx1uLh5dAWi3JXiDTQmR727lSFXBR/t0FwQD462?=
 =?us-ascii?Q?0uAg1IgUXlsmH03b3RYwcXevTID0q1DMFhNE34gix9NjwQ5tyDo2HrOv6e0I?=
 =?us-ascii?Q?NphUIBALlaellads1fWZvAK+LUHnGgiHvF5oboUdejX3mWpV7w+Y34+YKHPB?=
 =?us-ascii?Q?tJoR7ke12e9nPRke48H8e+tQbpm+nt4oozYzpJegWW/oZTOz6XZZLTF2h3Wv?=
 =?us-ascii?Q?tzaLTJk9BdEgpPl/Hqc6OYPnYh4RykB6PeUPCHZlOnCdvTCL0enG2TLiEARo?=
 =?us-ascii?Q?ZS3Ye9OvbJCfWXAcXOEmYesYWxt3b4yrTWsgflVGjnVLXfEcSW7wac1bG1Bb?=
 =?us-ascii?Q?ea6wC6KmgqGPStavM00MrRZJYXT5vg8effBqGQWxkhK8xhpkmfoGPvm5/gZQ?=
 =?us-ascii?Q?qR6DKwvBqvcGtG0IwCbJ11+b5O/izdpGIq9Oqc3P+27kpmvlH3JDjxNymQId?=
 =?us-ascii?Q?2bqul0p/BlNnTJwjsWpumq60vwYjhm2thjE5TU8zIUSHRsvfwA0AQTydomHG?=
 =?us-ascii?Q?7l8L/er56Shni+j4jn1WP2eCHpLINUjFx46RCLYiV5wXXIg0lhXNgQ1XKxdf?=
 =?us-ascii?Q?+5MAZVDPUFQGUt81BzwXoSgXM6ytZdj9rHshi/6Pr3uuQFPiQKxohxF/eUkq?=
 =?us-ascii?Q?yTej8/dNxH0VWwuu8SC8JGcBKKI+9h6mlx9m/2TARVSvcpNnADFPsG+oU9df?=
 =?us-ascii?Q?cMttySs9FrI+QLc9XrBlN83noF9sLGGR933Y5sSBy6GdOZxPM83rJDEKMZcx?=
 =?us-ascii?Q?vpzgIkN8/11RFGizGfPfK0qZfFN9c/a4VfKENnSJO/sxoi2t9atS7LtFjcHy?=
 =?us-ascii?Q?1/YAGMq4P/f+mY1rlB/Z20UkBossOciRIlOiOdAzcIrwg65DYrnSpRz2RoTF?=
 =?us-ascii?Q?AuSaK3Y9PK6GUT2yOLTzza+065wr5ESj22KXeBqPYO+frz3Q/FB/rNrE1ldm?=
 =?us-ascii?Q?AFS1LN3upsPYJWZWjU+C6zbk2RTz65FJmElTXbD4vpfL74tTghUDA1iX4AI1?=
 =?us-ascii?Q?al/dn6sv3QITxYATZ0Irk5guBPca8mPEsWoyTvwr?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB5987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ce798bd-2f62-4a16-4425-08dcc6228cc6
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2024 22:58:07.2274 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RPROULN2sAzlzV7nPUmg/VdeXSKRqztc7OP70vrroKNHe0daYFUcmGkbrKZfXvnY8WDzgm+tWClZIgD62m1ZOkeGJWsWZJT8YFGaHQ9AffE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7329
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
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Friday, August 23, 2024 3:26 PM
> To: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Chery, Nanley G <nanley.g.chery@inte=
l.com>
> Subject: Re: [PATCH] drm/i915/gt: Disable Redundant HZ Plane expansions f=
or MTL/ARL and DG2
>=20
> On Fri, Aug 23, 2024 at 03:40:09PM +0530, Dnyaneshwar Bhadane wrote:
> > Program HZ Plane disable bit to 1 to stop sending the redundant
> > plane expansions.
> >
> > Bspec: 68331
> >
> > Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_gt_regs.h     |  5 +++--
> >  drivers/gpu/drm/i915/gt/intel_workarounds.c | 17 +++++++++++++++--
> >  2 files changed, 18 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/=
i915/gt/intel_gt_regs.h
> > index e42b3a5d4e63..74b633a78eda 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > @@ -446,8 +446,9 @@
> >
> >  /* GEN7 chicken */
> >  #define GEN7_COMMON_SLICE_CHICKEN1		_MMIO(0x7010)
> > -#define   GEN7_CSC1_RHWO_OPT_DISABLE_IN_RCC	(1 << 10)
> > -#define   GEN9_RHWO_OPTIMIZATION_DISABLE	(1 << 14)
> > +#define   GEN9_RHWO_OPTIMIZATION_DISABLE	REG_BIT(14)
> > +#define   GEN7_CSC1_RHWO_OPT_DISABLE_IN_RCC	REG_BIT(10)
> > +#define   HIZ_PLANE_OPTIMIZATION_DISABLE	REG_BIT(9)
> >
> >  #define COMMON_SLICE_CHICKEN2			_MMIO(0x7014)
> >  #define   GEN9_PBE_COMPRESSED_HASH_SELECTION	(1 << 13)
> > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/=
drm/i915/gt/intel_workarounds.c
> > index bfe6d8fc820f..ff257bb2d15a 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > @@ -1550,6 +1550,13 @@ dg2_gt_workarounds_init(struct intel_gt *gt, str=
uct i915_wa_list *wal)
> >
> >  	/* Wa_14010648519:dg2 */
> >  	wa_mcr_write_or(wal, XEHP_L3NODEARBCFG, XEHP_LNESPARE);
> > +
> > +	/*
> > +	 * DisableHIZPlaneOptimizationForRedundantZPlaneUnit
> > +	 * This is not WA,THis is required by recommended tuning setting.
> > +	 */
> > +	wa_masked_dis(wal,
> > +		      GEN7_COMMON_SLICE_CHICKEN1, HIZ_PLANE_OPTIMIZATION_DISABLE);
>=20
> The bspec's performance guide page says that this should be done
> selectively, on a workload-specific basis when certain conditions are
> met.  So we don't want to set the value of this bit directly in the KMD
> because we don't know anything about the workloads being executed.  We
> just want to make the register writable from userspace so that they can
> flip this bit themselves when it's appropriate.  The
> {dg2,xelp}_whitelist_build changes you have farther down take care of
> granting userspace access to do this; we can drop the changes here to
> the {dg2,xelpg}_gt_workarounds_init functions.
>=20
> From a quick skim of the Mesa source code, it looks like Mesa is only
> setting this register bit right now on the older gen12 platforms to
> address Wa_1808121037 (in src/intel/vulkan/genX_cmd_buffer.c and
> src/gallium/drivers/iris/iris_state.c), but I don't see them setting
> this anywhere that isn't guarded by "#if INTEL_NEEDS_WA_1808121037" yet.
> They might not have seen the update in the performance guide, or they
> might have been waiting for us to whitelist the register on these
> platforms before adding their implementation.
>=20
> +Cc Nanley from the Mesa team since he implemented the Wa_1808121037
> code and will probably know best if/how the Mesa code should be updated
> to also address the DG2 + MTL performance tuning setting recommended on
> bspec 68331.
>=20

Thanks for the heads up! I'll file an mesa issue about this.

-Nanley

>=20
> Matt
>=20
> >  }
> >
> >  static void
> > @@ -1570,6 +1577,12 @@ xelpg_gt_workarounds_init(struct intel_gt *gt, s=
truct i915_wa_list *wal)
> >  		/* Wa_14015795083 */
> >  		wa_write_clr(wal, GEN7_MISCCPCTL, GEN12_DOP_CLOCK_GATE_RENDER_ENABLE=
);
> >  	}
> > +	/*
> > +	 * DisableHIZPlaneOptimizationForRedundantZPlaneUnit
> > +	 * This is not WA, This is required by recommended tuning setting.
> > +	 */
> > +	wa_masked_dis(wal,
> > +		      GEN7_COMMON_SLICE_CHICKEN1, HIZ_PLANE_OPTIMIZATION_DISABLE);
> >
> >  	/*
> >  	 * Unlike older platforms, we no longer setup implicit steering here;
> > @@ -2072,7 +2085,7 @@ static void dg2_whitelist_build(struct intel_engi=
ne_cs *engine)
> >  	case RENDER_CLASS:
> >  		/* Required by recommended tuning setting (not a workaround) */
> >  		whitelist_mcr_reg(w, XEHP_COMMON_SLICE_CHICKEN3);
> > -
> > +		whitelist_reg(w, GEN7_COMMON_SLICE_CHICKEN1);
> >  		break;
> >  	default:
> >  		break;
> > @@ -2087,7 +2100,7 @@ static void xelpg_whitelist_build(struct intel_en=
gine_cs *engine)
> >  	case RENDER_CLASS:
> >  		/* Required by recommended tuning setting (not a workaround) */
> >  		whitelist_mcr_reg(w, XEHP_COMMON_SLICE_CHICKEN3);
> > -
> > +		whitelist_reg(w, GEN7_COMMON_SLICE_CHICKEN1);
> >  		break;
> >  	default:
> >  		break;
> > --
> > 2.34.1
> >
>=20
> --
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
