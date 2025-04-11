Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E9E4A8538A
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Apr 2025 07:52:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DECB910E239;
	Fri, 11 Apr 2025 05:52:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KcEk/aTd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F29910E239;
 Fri, 11 Apr 2025 05:52:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744350764; x=1775886764;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tDvkgqbLw3FAA/PuCG1m7wIt1e+lL09HtRsGvfTrdso=;
 b=KcEk/aTdm+aoyhFWESgM52ydE+yCdScLOPDF02YIdcVG3K8asHRS4mNi
 dIvhEjFK46JSNJLhdrXM9u8JtOO4XlAJxPVn9+JFiyPpwqLwaMNsTTgP9
 2/19WPHFwamL0Bh8JfyoaiZ0RV0aCfA9GyaGWlCUFpjRNt/Ki9A/jJKz0
 +SmleSVwH9lIc49QBVWCnngbbSFTxrxw0xi1uzUpDae6wN7Qs6bmZkNYW
 ROJn/4iR+fsTzjqCyV3ySKV8eVQ3RF1TKaWie/fJ4LN/SNetwijzddsjy
 2e+9gegRzs2XfWczKh8FIPOatsIrkiPGrYrfzDmb49qghVNpyX35njUK2 w==;
X-CSE-ConnectionGUID: z0h8bn5tTd6tQ8jKUKSSdw==
X-CSE-MsgGUID: PIxwEn1XSoKUainLOSACYA==
X-IronPort-AV: E=McAfee;i="6700,10204,11400"; a="45030740"
X-IronPort-AV: E=Sophos;i="6.15,203,1739865600"; d="scan'208";a="45030740"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 22:52:44 -0700
X-CSE-ConnectionGUID: vTJ+qTTST7KmFufCydRmpA==
X-CSE-MsgGUID: 89dRkJJ+R0WePw7zs0Tlog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,203,1739865600"; d="scan'208";a="129656339"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 22:52:44 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 10 Apr 2025 22:52:43 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 10 Apr 2025 22:52:43 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.48) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 10 Apr 2025 22:52:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZlCBJetE/4m9LtgrQntJrCnSpQM7CteL7SedubfPO08owynGpafITZNZftyBkHuJWRZan5DaJxL8bLYGukW99Xr4D0LnzRZy2bMIUPmzKrgurbEn2WxW0KY28W6It/zahrRB9If5ugVrJuSGGRtQCsOpd9Oftfe/254/Qq3k3GxC67UgpnAsmdDGYlqwC0ogs1hF13edx/CTH7WmVRjrI4huk6t+1HS77arfMs9G3FuKu3aCiUDeF3xSXvSDC6KRjfv5V0lynqJaHDF3ODcnD+54NP/awOQO4QRxuRtuwJSxaGSI2vkPKkqACr+Zz5N85V+5tv2eQF7DekY7jEN3ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ol1QgUNMpXNmzjYagA2BLt+q5bIhC5jujwnBqHNReiI=;
 b=Vz1qq6ywoIpsFh8tsC17vlIZMMlVIoeJHSz3sOsujnBCzvTVNc2I695+lfn32kvFmVCg/0oQcFpriDv4iChcDvSAS7CHT+v3YRF8b5FVk6WyOqvWm06pQ+oOeT/Rr2isvIOWEoeTauLBtp5hdhELWedA/p+C+wluZCNVlICn069lzL0oEzD78OoH04zsaBgHPTMEP8E6XinWRvz5mCH6Dtf+WP3hb1lt5aFyN2YSY2DzAA3doBFBoBh/IlhkGYfXvB8JyvO611NPl1MiaiEMz/WPaAXZcHB4GNeiTj7o59TLiIjwEug2Bg/C4EQz3mRA4HgMAq/jJ7XZfZ9FPSHwLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SA3PR11MB7486.namprd11.prod.outlook.com (2603:10b6:806:314::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.21; Fri, 11 Apr
 2025 05:52:41 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8606.033; Fri, 11 Apr 2025
 05:52:41 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH 1/2] drm/i915/debugfs: remove i915_display_capabilities
Thread-Topic: [PATCH 1/2] drm/i915/debugfs: remove i915_display_capabilities
Thread-Index: AQHbqiRQT6NBO0o/J0aOJZxEljkqNbOd92bA
Date: Fri, 11 Apr 2025 05:52:40 +0000
Message-ID: <SN7PR11MB67503E19284050928B080EA1E3B62@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <cover.1744295009.git.jani.nikula@intel.com>
 <241c5886cf2e95c694a693bb1b1953f6ae15390e.1744295009.git.jani.nikula@intel.com>
In-Reply-To: <241c5886cf2e95c694a693bb1b1953f6ae15390e.1744295009.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SA3PR11MB7486:EE_
x-ms-office365-filtering-correlation-id: fa8d5fd2-02be-4e5d-d5ac-08dd78bd127d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?wJGbYmBQbinzGUac/D2ii7IA313aaqGB0tkxQKXIK4u1LP9KZPOqFwnImI3x?=
 =?us-ascii?Q?m3LDJBdi/qP23W/pMXxL4eHD9LgSRxSgJIxpEa7EVzuxBdMEJQEuyif41QjH?=
 =?us-ascii?Q?Jt2wzoyneHQW52E7tEJORKoeeNrPkFc2xXpWiPKV7h7Rtm9eR3n0KT2OhrCy?=
 =?us-ascii?Q?oYzbWYDvWWOfAVqjPleR0gCuVGWoZ8XLqUChlypszOPxE3H+Abuf6xZtbgHP?=
 =?us-ascii?Q?5qn64HC+neLx3gSXvt8z8JRhvbAfDL5r39njYuOtqfRgPknxITv7WGQ7Y3jh?=
 =?us-ascii?Q?Gbbx0o0eLkGfkv8asuUKt0CDiYqrP70Igqs1be6NHpqAFv0lgu2rybM8u9//?=
 =?us-ascii?Q?sYVct4lm6ZTLHyIxBsA20mJyNR697f8rcKkVIB89Dx02BWFgSNE0NwcShDpA?=
 =?us-ascii?Q?1TArgTgz2eYklmMqKKC9Bn7SahFYCo7JDVcvbKNcqHb+MBaVbmbCAE3g4WvM?=
 =?us-ascii?Q?TqjyPppe55xXNmrnPRz3TsUtsx47yowHuppQyQz1Sd7GKC7uOgx0ITGJRbkE?=
 =?us-ascii?Q?kj0Kox0QlGla4gtGd8Y8x2rKunT2H/g2LwrzcCWCFqh+6tY+VoW4uNXs2JZF?=
 =?us-ascii?Q?hywU1XbgP8+P9+fq+cygqUNTreJ91CSDKR8ed8qLQG/Z+XM9HYVsDCP0r+f9?=
 =?us-ascii?Q?ubySIpYTDTh9ZUgFCch9q1hEHvaGUhsrc+ocNI3UDJ+XtnNeV1HO8c4cOibv?=
 =?us-ascii?Q?bhz/aKcu3dRohwseE+B//X4nayGchmTK92QZFgJHjgCKWE3Nj8yubWO0Q4EE?=
 =?us-ascii?Q?TCIOLwM8Fef9zdhsxBV7KqoQgjuS4ABk9KEjglWI/nQz6J5mVaIpHQQLPRT6?=
 =?us-ascii?Q?RixSqZeXTOZ8qOqfIEUkB/VIwp/l9BzbRNu8QtEGV7YQuT75emMF7o3u8390?=
 =?us-ascii?Q?n8RZFbhk8vEgDvg2kD9lIiI67k5HJ8YOOOik36HE5ZG3w8CIsnmEa/ss20cy?=
 =?us-ascii?Q?ro1+LDQFXD/7KASsbQ1QujBohMkmYeNI1vVSlGybAPOjr6BDC/sJQ2OAWpzT?=
 =?us-ascii?Q?EKdwCDGVl14m2/V+ZjzpE+G0afMmamblWtNwLqNPi/r5fufLcvKdO4s9R1UL?=
 =?us-ascii?Q?IeZiNfRT8Mdue5AQwVbnBcIpqKIY572N5W/T8iEGc+r9oI3kRewvy0fLgGZN?=
 =?us-ascii?Q?YUOD2DNwBRSCYmJ9YI82pGdXMKnrH1qG5hkGutzRo33gLFYjIwAkCst4i+bj?=
 =?us-ascii?Q?Q19V95NALTfLDB8ZVeG3h7sL9SbRWdqNpoOnwA5wr1EXo2xrkqHNhTocsEDw?=
 =?us-ascii?Q?R7kx4aDJG3qRs7f1EgIwKqiP7Qw0EJ1ILx9rrHFeEZE2uooB5ghGifyLCvLa?=
 =?us-ascii?Q?EU6BCuqljQM+586IAF7nyHvTCTG0v61UnANlk1+luINqXGR3LL2tj9Iyfrnr?=
 =?us-ascii?Q?40+T09Jf3qlesR7LbrQ72VDJFxl7BRH1Ox+cxBwfN56am792WZ6Z6WaVCZnd?=
 =?us-ascii?Q?mm7SvNPg6j/6lhe+c+JKN5eyERkvI1vs9JAzISHKMy7uwjM44yBLxz9xv0ST?=
 =?us-ascii?Q?sK86pEOfmSxGAjg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?WhsryHieF/zMAvSQyM57uSKpaOxql4NakakpEy8WNUj8944nuH2G39pCJpAM?=
 =?us-ascii?Q?SHOWVwtwEgVR5mRsIui+EysXbhSYjIgAPbBJxjZ7vjsWge6hY7jNeUrFee+o?=
 =?us-ascii?Q?V1cN3AgPpwkqjwjiAISKVMLrH44ikMPzadeccuTghuVg/LFJRIS8IcIEkYP9?=
 =?us-ascii?Q?LQhp2w6WSBoBG+wTGGXZJXdVS3KaEdf2IcZP++74cnkARuXIw9jTZx0vIjCP?=
 =?us-ascii?Q?ldMM4roNGsOeY6hTjjAzn3Sh0uQK6k8x2zTB1H8rU9lX6Gz1/IeK16lEYrmY?=
 =?us-ascii?Q?v+FjPdsCaZn2NlAfA0kZztx31rCb3+rGt5ZME5mCnqVViCYhe8IkThsnnbHQ?=
 =?us-ascii?Q?hgGdsqQhPjuOEvf2huNpP3cuaqrQqfluQqdPNH/3NnggObj6PrGD5Q4Z2syL?=
 =?us-ascii?Q?S9X2lSzDhNG2SScPRTJpHrziMOjRz+YhrWoU5qD/jswJxSBUPSyxe5YvJxoD?=
 =?us-ascii?Q?a6vzZ06ckFSCAAwNMbZKxJJJRJ0Y9mMgHtOUOBgXhgvyQxlvTVOIJLm1F9XY?=
 =?us-ascii?Q?fbpos0li1UQ3qk9vc2ZJj1Vw7ez4LK7HHB5xGFD9cpn0zwNsBYyqgAVTfEjB?=
 =?us-ascii?Q?ikU4iA/Rnytx2Xb1MXsTvXOdjDZEnWuUiFrvkDw5RtSjeXzS/Ot11PfQCE4d?=
 =?us-ascii?Q?xWHVCut4D2Vrz2OaEwCQ1OF5RD9mZ4EhqDek8TrkwdmhD1SBE4q8C6pwYce3?=
 =?us-ascii?Q?lwnsR0R9IEvNikOvphwonXc0Ai0/TyI6ZyxG91337A2spmnPBnC30ZwsMyRb?=
 =?us-ascii?Q?cN0QHzKA6KrPiWqgEKjHgF939rCOPMs9Sdzau8Z6aUY4j08MaxFojSq0qYv6?=
 =?us-ascii?Q?dbFwO30gspGcaWgq/O11X1JExtMw7Q6pfdkmUmybDo5xodYpVJ/CSyHpDCih?=
 =?us-ascii?Q?pBooP1FnTU+r5ZzSd2AMcIkb76NFCU5+8RZzVLj9zan/Kn7rDXbUitjvdcrr?=
 =?us-ascii?Q?L+XHIHdROclp3irsmnd8vpf3rMzx+NLWY4L7Vd2TMT9qiCO9OdyZ+64ywWKE?=
 =?us-ascii?Q?d/nthWNgzgiNSa2AZwu91kgkydVvpKY0WGZh5OEcxRdHI48Bi5uSJ++4b/+d?=
 =?us-ascii?Q?FcbSsJOYGVt8nlDCG+AkIX6+KdYdBVvWbJsoRKulNwo5bVs4jXV6cWwxWgwv?=
 =?us-ascii?Q?TQhldLBlBAIaYTwpXG9/cphofFtAAAy5E3QGTp7/RZWpkoPiftE0cbpdVNgG?=
 =?us-ascii?Q?owmZOWoXrLWVA95kwLnWd1vu8Xb6+eq2WKDthwe4fw2/sQ/5WLN+eaOzjawJ?=
 =?us-ascii?Q?56x5JrpfeeIftw5WHxo+6gfH4Irri9TdAfI1lcQPua70UTEtjjZFj+3GE8z/?=
 =?us-ascii?Q?u9AOrXYssTJlvynH5f2neZ0SP4/kUtC6iQMQxQwmXEW0c7iL0sfif0KyKrSq?=
 =?us-ascii?Q?JvxTO27DNXvHRNCQXpEEkGhtgDFp6oIp2FWWoOA2+79z0+7cHHIGDs1zl54F?=
 =?us-ascii?Q?btggxlnAz9+FCq+BPMqCwJTt7sI2Li7bTzAGSjX5dWxx+1obdMT2w3pFodE4?=
 =?us-ascii?Q?FjiCQbDASEVhqfWo8G1HRT5aYnHW0zXpeDJGURttsae5HboAPTMH7Oovo6S1?=
 =?us-ascii?Q?cSoUMa1vQ/AfKqx63uOPta/6/Q06+olQJoznknLa?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fa8d5fd2-02be-4e5d-d5ac-08dd78bd127d
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Apr 2025 05:52:41.0625 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Yv74QEDArbZUeZRaUVaUMatPMslzaRkanIpQhgC7OhNbIHT6sY9zseH5eaDPZ39x6vqIvzPi9Cq6TT2cJua5Lw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7486
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ja=
ni
> Nikula
> Sent: Thursday, April 10, 2025 7:54 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH 1/2] drm/i915/debugfs: remove i915_display_capabilities
>=20
> Turns out we've added two similar debugfs files. Consolidate on
> intel_display_caps as it has more info and a driver independent name.
>=20
> IGT has already switched over to intel_display_caps in IGT commit
> cf837fc17d6c ("lib/dsc: use intel_display_caps instead of
> i915_display_capabilities").
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_debugfs.c | 12 ------------
>  1 file changed, 12 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 8f1f95637e09..d43ae6729f21 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -610,17 +610,6 @@ static int i915_display_info(struct seq_file *m, voi=
d
> *unused)
>  	return 0;
>  }
>=20
> -static int i915_display_capabilities(struct seq_file *m, void *unused) -=
{
> -	struct intel_display *display =3D node_to_intel_display(m->private);
> -	struct drm_printer p =3D drm_seq_file_printer(m);
> -
> -	intel_display_device_info_print(DISPLAY_INFO(display),
> -					DISPLAY_RUNTIME_INFO(display),
> &p);
> -
> -	return 0;
> -}
> -
>  static int i915_shared_dplls_info(struct seq_file *m, void *unused)  {
>  	struct intel_display *display =3D node_to_intel_display(m->private);
> @@ -817,7 +806,6 @@ static const struct drm_info_list
> intel_display_debugfs_list[] =3D {
>  	{"i915_gem_framebuffer", i915_gem_framebuffer_info, 0},
>  	{"i915_power_domain_info", i915_power_domain_info, 0},
>  	{"i915_display_info", i915_display_info, 0},
> -	{"i915_display_capabilities", i915_display_capabilities, 0},
>  	{"i915_shared_dplls_info", i915_shared_dplls_info, 0},
>  	{"i915_dp_mst_info", i915_dp_mst_info, 0},
>  	{"i915_ddb_info", i915_ddb_info, 0},
> --
> 2.39.5

