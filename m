Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 518CA94256D
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2024 06:28:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0423E10E123;
	Wed, 31 Jul 2024 04:28:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F6JYNeR3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42AB610E123
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jul 2024 04:28:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722400111; x=1753936111;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MaohwP6h1V/cHy/shKsYZLi1GPzRLORQyIZP1fKl1KU=;
 b=F6JYNeR3MNUwgavClzqwZpu2IX9JUTmzbVDHZvBF8Xnqogn42zF/a3NG
 olIHfB1he3/X0cBZ66CgioFSqHV0M41HDIq5oQ0u/43jfxV1Cf4NT1r8P
 SsahiI1HXZz99iAitizxaOgZfOdrIZl9PC5MnBxmPlLMJPGj5Bq07ZMZM
 L/PbOloVi18Agp3SPafkbhR05wwzoQXOJkdIZoLpwCgTvbQp3h/l6Ce1u
 gI/9wk2OKIh+TDrM2Z6GEd9FLVifGqZ6dncTtGF466iXaCVOPLkG3Cfed
 4x1Blf260yeCpUX2JAULZzJLfs7VpLElnsoI/2Ujiqc2FsWg8r/x8HK7S g==;
X-CSE-ConnectionGUID: GH8azz90TvmDjz2Bs7oevA==
X-CSE-MsgGUID: CrlVVV/ETG603Hn/6HaDbQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11149"; a="24018492"
X-IronPort-AV: E=Sophos;i="6.09,250,1716274800"; d="scan'208";a="24018492"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2024 21:28:31 -0700
X-CSE-ConnectionGUID: DSDWmkbDSjaO0NThAfwckg==
X-CSE-MsgGUID: GQrM1h19Ruyj0Zjnj05RuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,250,1716274800"; d="scan'208";a="92064107"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jul 2024 21:28:30 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 30 Jul 2024 21:28:29 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 30 Jul 2024 21:28:29 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 30 Jul 2024 21:28:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vkLPaQDCyig7n20W+4aSlEWOFzMqmR4svFe8dd/FLMXxYC73EVjSBTmULiC4BLd+Cxk5MVvNoD0MCZ2p8pveimaWiXX7i1S8BX9nMLF++buumiSOqbt951hhGI64pdLnsBP/ocd4wbtx75CtNDlbp2AXZ/d+E+0JD6yIqi7SdOSzsW1cT2jS9z7n/uK9nqionyCN4l1RX70PdUwkkS9Ux5KFYn530Sf1Uyho7O3tVzPDyq3Oxfcl9hHAKA8ZNbQIJVXvEComBMgZeKPj5jfzgNAafxpXDdivUTwI8e4PPaAVZVVdsvAWrkL+uTU1fyfIPzlqkTHEO9/1ttXg3I8P2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XWQglECsFUnRU99ATTRueoFHEUbIF03vC1xZ3i4TUG4=;
 b=IT6J0vYd7FGvwMuJHCKBvWq1b3ji8YBRg0F/J6UToIwJGz/ow6uFHQZZRJ8JVCvrSvfA6X6xqhvd78nGBsY8usIVW3VayJoaP7Q4FQ9LKxx+0Kb1D5Rf9U0j4d5yhvlKs8jEwXX4YwQ+RSjDjLXM3HWmN3MtpjgxIpUnwaxqyZMhr6Yj0Z/hc+sij/b3o/KC+k69fhG3X+VpoSjxabaqRDkRnKk8CfYWP+W268W0DAOSzQ/P+N9C3f57elBRTtrn/MSIhAe+cU1AOnnJOfzepw+58qLfnkxeY05s/UWLbUI0I6VlxkRX4fYwXU7oTjQp1dIz6a5NSHjw4KbCuLf1Jg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6761.namprd11.prod.outlook.com (2603:10b6:303:20d::5)
 by IA0PR11MB7815.namprd11.prod.outlook.com (2603:10b6:208:404::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.27; Wed, 31 Jul
 2024 04:28:27 +0000
Received: from MW4PR11MB6761.namprd11.prod.outlook.com
 ([fe80::6b8e:aea1:6960:2430]) by MW4PR11MB6761.namprd11.prod.outlook.com
 ([fe80::6b8e:aea1:6960:2430%6]) with mapi id 15.20.7784.020; Wed, 31 Jul 2024
 04:28:26 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>, "Saarinen, Jani"
 <jani.saarinen@intel.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH 02/12] drm/i915/display: Use joined pipes in
 intel_dp_joiner_needs_dsc
Thread-Topic: [PATCH 02/12] drm/i915/display: Use joined pipes in
 intel_dp_joiner_needs_dsc
Thread-Index: AQHa2OrwjF77qwaQp0OG4UZq0OSpYLIQUa4w
Date: Wed, 31 Jul 2024 04:28:26 +0000
Message-ID: <MW4PR11MB676175F17BC36FA65796383FE3B12@MW4PR11MB6761.namprd11.prod.outlook.com>
References: <20240718081803.3338564-1-ankit.k.nautiyal@intel.com>
 <20240718081803.3338564-3-ankit.k.nautiyal@intel.com>
In-Reply-To: <20240718081803.3338564-3-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB6761:EE_|IA0PR11MB7815:EE_
x-ms-office365-filtering-correlation-id: dc4c4e58-982f-4649-0207-08dcb11938fc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?Fhe+Ao+t09zhokjqYodhGYp59YCpCwreruPADmxQO9dwoUa42TwBlWmxmx2p?=
 =?us-ascii?Q?xEKeEONabPEhPFfyQv/VlWSTzKfa56OQj5Tv29KrT3riDR0w0oN/PxHRgR8t?=
 =?us-ascii?Q?i/lmDim2QZ4Z5BSGpZ/EP5t1OJrFHCrtcr4m122/qzqHvGJUUmelL8jFmnft?=
 =?us-ascii?Q?3j/vY+nhFKDq3sKKOnfQC5juQZxnyZmbYHDiJtxkeg6eNlMe3J7EPvAm+7Hb?=
 =?us-ascii?Q?HQC0m5MFYJlskVAmf1V5voLvCK/4ycBxbnS4Injk43PGXplVloMoAtomJJVF?=
 =?us-ascii?Q?yoGKTE0e1K00VCxHBJ8fa02QLMVaQeelDoFprOPX+6piyHdXeQTzTMBvK5Ef?=
 =?us-ascii?Q?LaeGx6I9Geqy/hm8ERXy/GMRW9N4dKdzAeNk/PLBeQMVgp9ylOVrOSm0VEby?=
 =?us-ascii?Q?IYksoG/V/gRsMsTtali3O96cnkHcHsVTsOxSYVmviua/93myyD4cxBYOPtCa?=
 =?us-ascii?Q?FIrPBbloPYcbWR/tPPAHL+yfxMvmhrXAQ6kRth9psNVOwLApbpoq7Uq7ofZE?=
 =?us-ascii?Q?PJIa4XqCdLLmH8gD4nyw2OzDa2bSk02HD2jg/JN2rMFq754bR7XFzvvr0/LH?=
 =?us-ascii?Q?vsvIknxr+fXRz+azGYsfr+IBawZesKi0WnvKvudBR/EXmr1PI9fHijdWuijz?=
 =?us-ascii?Q?wL5DIiC6RJC0cJzXQ3BjIt9fBRRjZpJaKs+UFr/z5/Am3zlVQw16Qn+Ddh1E?=
 =?us-ascii?Q?bsOvFGk+VC8SKgz/V3OtP1OhnPnOmUNCAx86TO3RW5W9dZMeyVjLgKjmizbc?=
 =?us-ascii?Q?RzCiJJ1L0FfDQru1UZBZMLiAggqRVXYYylKQI6ubVdtIlzBFkCeHzJjX8G0T?=
 =?us-ascii?Q?IazRngec2s1jlIcW9R3+kiEuja3tCmV1Mn0lXP8bVPu9A8zxkRi3ykupeqyg?=
 =?us-ascii?Q?jjH7VXplaifZUrWYdpl/G4pv+AmBmi7fslW0YhFnc1SlUSkbO7AzIMhkctpr?=
 =?us-ascii?Q?tEzKBETuVAyBOsxUgTX8HkTDPUbZH6C1TUZD7keo/2D+FQmFXFQZ8B0fDHYl?=
 =?us-ascii?Q?q4gZolizh5xrBQJhBORZ351klMIt+WTue2Ux0OSmxCW02jAPH8oOTJuHHx8g?=
 =?us-ascii?Q?19VZCB0M4oqpqJSJDtz2fJ9fYjAfe9x3ToUIOmQ3Ml4fQrqSEoWbo3TT/ntK?=
 =?us-ascii?Q?6kmmW7sPKbdnkw5wswTvbi6bGx/KBQwMksOqzFAhFvtbvEYywbTpIp4xvhQW?=
 =?us-ascii?Q?bFS7DQBHE7GtCPFrRH/WyKl7bh+okBbh2BCVGDNqWWYfCzONcddNQSXRlwMg?=
 =?us-ascii?Q?J301ASdB0bCGtgJ1m3if0peCXFvQV0ZNRWfllz7kMm9f5hKh9nATN0zCr9qA?=
 =?us-ascii?Q?IzJEyCgVGKFZp/SxvQzWSUQvOqmKLtvNt1MVd9xjSZA2uzw+VbyiX35qXvUt?=
 =?us-ascii?Q?PZaQvNlopVOiodOOFg+zwxCPj5eLXyzRCBHwZefguynpazNZCw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6761.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zmeO9DDa65MX/dAbLgkOqBLP6iZLOcwKyvPIqpTA/z/hV6Twv9g+12pWek4c?=
 =?us-ascii?Q?eKTasZiV9zFSU6gs+iFmHFCWs24JEw7f/xbibmXKrg8qeKjmRxjQ/gJPh5lx?=
 =?us-ascii?Q?emwnRg9jOn+t8XVciJc+9NhkeK3fTYyXaAwccllM8WB75amvl3W2CvUPWZBn?=
 =?us-ascii?Q?kejevaYnwQmNiu8yv6z0aADRDaLK9k8WaWYMIXCtIlwSM+cpIENFl5KfWOEC?=
 =?us-ascii?Q?CaYMZ79S1WWfvQoMT8crSrXonya4wIKBL22SEz/dl+27xMf09djEFIWaKKS1?=
 =?us-ascii?Q?m9r/WKXQDRHZ6i0+5H/hlw1tKEdQrf6DsXPIv/nOG4U4hysdX3sHlWT6z/HP?=
 =?us-ascii?Q?07Krby8DGThCxZ4UjR1XyNJNLDpi9OS7oBLuCQEq5hPEvjvo68PjCo81W5wK?=
 =?us-ascii?Q?PyhKWFANkmr4lWQH08Wj2lRt4gkWqALJfVSQVhJILJCW0uhkghILZ+dRT0FP?=
 =?us-ascii?Q?0XgAp6/wZD96wecL5fLJE6XPelazeniJ1jhApGwS6WHd1LVG4FlviywLjA/1?=
 =?us-ascii?Q?cuY2sRwyD/9b2qFkXV7RbkwHSrbdEg7DPUEz9waPfMKs8KidLSs0QWbmHHWU?=
 =?us-ascii?Q?arWCqBe8+qqfO+7WV9MQOl6W5DOw8dk6Hz6Ua4/xMXQNRq96q5PO4LNrl3w8?=
 =?us-ascii?Q?zQeBUrnK/G64NrQ7JlIqxJzT1iputNl0YJpkalH4igQWNQBGDHj/UhffEABC?=
 =?us-ascii?Q?c/d9d3fyML9z3NmAm2V72lFji8X9mPCG7s7SnjS9IcEEDGmlUavB9n6cJ3Uq?=
 =?us-ascii?Q?ELhoHJMH3jhwdOHpIqEXstLStxfKZrMJxIJ6vWZ+DiBUt1VyrW+OBhA32EGh?=
 =?us-ascii?Q?r+6SpuahnKh4rMje7ffKu75V2sx+YeE2gySk2y/CUDQsr3pvrWdiCYH7tGSl?=
 =?us-ascii?Q?xHnL85sclLr2kIepnp7o6q/eXtMy3GMxKCkrPn1V2NR7THhZggFTKC7DszuT?=
 =?us-ascii?Q?myb8JNtZqMz0/tZt5n2YciZZL7doxShE3twFc31MEnaoCXuKY/M2cL1Xd6sj?=
 =?us-ascii?Q?2oczyEpjJT5qku1L3A04nrxTNb4c5xuU1d5J48X1/SuNSDNFsZfRhmMZp/DL?=
 =?us-ascii?Q?ZFV8QceFpr8xZX0tIKN1Zepns1b2ArsVQ/t9M551Q6EbQHSiACI8CqUM8zKD?=
 =?us-ascii?Q?Ame0Ho5OJQ1YFyvIc2k8HsOULU28+8bzWtpUCN/La5qE2U2pfDU30LyiSdXX?=
 =?us-ascii?Q?bSNM5HQ8+VJjfWT3jYiGFqpqja3jknUfuRZg0RaOi909zwlFROGzIUsUrVjO?=
 =?us-ascii?Q?8cDVG4hDSDKu2sk3BkN7EXEc9XXihCMfl3oCIshP52OWFq0T8csFvoIlL9RV?=
 =?us-ascii?Q?9Xf9HqyN55c+5MQYtuGr7cVPzp5cpkBYZ5loKdXE+Xu6VmyvSaBEbGrXoq5S?=
 =?us-ascii?Q?3SxJ8Y1DE6l+RHYNQIX3djJS6BbqamaIN3s6Vo1UK85AP7cju1ci0pQMeLhP?=
 =?us-ascii?Q?X5/FakWSzntMDGEyvk3ey+JckEbt75XnDUAYkFi1ByPbr/14jbos0VU03QFv?=
 =?us-ascii?Q?RcrpNiZ01e3MLXvvdxT0fp59ZDPuasDIf+b+Fcd0RybIWzvk8pvg4o9JEafI?=
 =?us-ascii?Q?Q2wF/08kujG9Wi23/UhAfo6m/rrnRjtADW30hYsG?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6761.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dc4c4e58-982f-4649-0207-08dcb11938fc
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2024 04:28:26.7910 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zAzKsND9MTpwB6fAZAVvO03prLYTdqqTM+Gof1S8Z3B1S1qoaGhgXPxtOO0drXGPBtfbXU0UhayiT9mOEWr6Xg==
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
> Subject: [PATCH 02/12] drm/i915/display: Use joined pipes in
> intel_dp_joiner_needs_dsc
>=20
> In preparation of ultrajoiner, use number of joined pipes in the
> intel_dp_joiner_needs_dsc helper, instead of joiner flag.
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c |  2 +-
> drivers/gpu/drm/i915/display/intel_display.h |  2 ++
>  drivers/gpu/drm/i915/display/intel_dp.c      | 18 +++++++++++++-----
>  drivers/gpu/drm/i915/display/intel_dp.h      |  4 +++-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c  | 13 ++++++++++---
>  5 files changed, 29 insertions(+), 10 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 01a5faa3fea5..eab07a5fa377 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -276,7 +276,7 @@ bool intel_crtc_is_joiner_primary(const struct
> intel_crtc_state *crtc_state)
>  		crtc->pipe =3D=3D joiner_primary_pipe(crtc_state);  }
>=20
> -static int intel_joiner_num_pipes(const struct intel_crtc_state *crtc_st=
ate)
> +int intel_joiner_num_pipes(const struct intel_crtc_state *crtc_state)
>  {
>  	return hweight8(crtc_state->joiner_pipes);
>  }

this is introduced in Patch 5 too and here it is being changed from static =
i think some reordering/modification is required.

 > diff --git a/drivers/gpu/drm/i915/display/intel_display.h
> b/drivers/gpu/drm/i915/display/intel_display.h
> index b0cf6ca70952..0aecc3330a53 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -584,4 +584,6 @@ bool assert_port_valid(struct drm_i915_private *i915,
> enum port port);
>=20
>  bool intel_scanout_needs_vtd_wa(struct drm_i915_private *i915);
>=20
> +int intel_joiner_num_pipes(const struct intel_crtc_state *crtc_state);
> +
>  #endif
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 30442c9da06b..7d66a969c461 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1202,6 +1202,7 @@ intel_dp_mode_valid(struct drm_connector
> *_connector,
>  	u8 dsc_slice_count =3D 0;
>  	enum drm_mode_status status;
>  	bool dsc =3D false, joiner =3D false;
> +	enum intel_joiner_pipe_count joined_pipes =3D
> INTEL_PIPE_JOINER_NONE;

Also as mentioned in the last patch maybe change name convention to pipes_j=
oined instead of joined pipes

Regards,
Suraj Kandpal
>=20
>  	status =3D intel_cpu_transcoder_mode_valid(dev_priv, mode);
>  	if (status !=3D MODE_OK)
> @@ -1225,7 +1226,8 @@ intel_dp_mode_valid(struct drm_connector
> *_connector,
>  	if (intel_dp_need_joiner(intel_dp, connector,
>  				 mode->hdisplay, target_clock)) {
>  		joiner =3D true;
> -		max_dotclk *=3D 2;
> +		joined_pipes =3D INTEL_PIPE_JOINER_BIG;
> +		max_dotclk *=3D INTEL_PIPE_JOINER_BIG;
>  	}
>  	if (target_clock > max_dotclk)
>  		return MODE_CLOCK_HIGH;
> @@ -1283,7 +1285,7 @@ intel_dp_mode_valid(struct drm_connector
> *_connector,
>  		dsc =3D dsc_max_compressed_bpp && dsc_slice_count;
>  	}
>=20
> -	if (intel_dp_joiner_needs_dsc(dev_priv, joiner) && !dsc)
> +	if (intel_dp_joiner_needs_dsc(dev_priv, joined_pipes) && !dsc)
>  		return MODE_CLOCK_HIGH;
>=20
>  	if (mode_rate > max_rate && !dsc)
> @@ -2391,14 +2393,15 @@ int intel_dp_config_required_rate(const struct
> intel_crtc_state *crtc_state)
>  	return intel_dp_link_required(adjusted_mode->crtc_clock, bpp);  }
>=20
> -bool intel_dp_joiner_needs_dsc(struct drm_i915_private *i915, bool
> use_joiner)
> +bool intel_dp_joiner_needs_dsc(struct drm_i915_private *i915,
> +			       enum intel_joiner_pipe_count joined_pipes)
>  {
>  	/*
>  	 * Pipe joiner needs compression up to display 12 due to bandwidth
>  	 * limitation. DG2 onwards pipe joiner can be enabled without
>  	 * compression.
>  	 */
> -	return DISPLAY_VER(i915) < 13 && use_joiner;
> +	return DISPLAY_VER(i915) < 13 && (joined_pipes =3D=3D
> +INTEL_PIPE_JOINER_BIG);
>  }
>=20
>  static int
> @@ -2416,6 +2419,7 @@ intel_dp_compute_link_config(struct intel_encoder
> *encoder,
>  	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
>  	struct link_config_limits limits;
>  	bool dsc_needed, joiner_needs_dsc;
> +	enum intel_joiner_pipe_count joined_pipes;
>  	int ret =3D 0;
>=20
>  	if (pipe_config->fec_enable &&
> @@ -2427,7 +2431,11 @@ intel_dp_compute_link_config(struct intel_encoder
> *encoder,
>  				 adjusted_mode->crtc_clock))
>  		pipe_config->joiner_pipes =3D GENMASK(crtc->pipe + 1, crtc-
> >pipe);
>=20
> -	joiner_needs_dsc =3D intel_dp_joiner_needs_dsc(i915, pipe_config-
> >joiner_pipes);
> +	joined_pipes =3D intel_joiner_num_pipes(pipe_config);
> +	if (joined_pipes >=3D INTEL_PIPE_JOINER_INVALID)
> +		drm_warn(&i915->drm, "Invalid joined pipes : %d\n",
> joined_pipes);
> +
> +	joiner_needs_dsc =3D intel_dp_joiner_needs_dsc(i915, joined_pipes);
>=20
>  	dsc_needed =3D joiner_needs_dsc || intel_dp->force_dsc_en ||
>  		     !intel_dp_compute_config_limits(intel_dp, pipe_config, diff --
> git a/drivers/gpu/drm/i915/display/intel_dp.h
> b/drivers/gpu/drm/i915/display/intel_dp.h
> index 9be539edf817..a8116210c618 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -8,6 +8,7 @@
>=20
>  #include <linux/types.h>
>=20
> +enum intel_joiner_pipe_count;
>  enum intel_output_format;
>  enum pipe;
>  enum port;
> @@ -121,7 +122,8 @@ int intel_dp_effective_data_rate(int pixel_clock, int
> bpp_x16,
>  				 int bw_overhead);
>  int intel_dp_max_link_data_rate(struct intel_dp *intel_dp,
>  				int max_dprx_rate, int max_dprx_lanes); -bool
> intel_dp_joiner_needs_dsc(struct drm_i915_private *i915, bool use_joiner)=
;
> +bool intel_dp_joiner_needs_dsc(struct drm_i915_private *i915,
> +			       enum intel_joiner_pipe_count joined_pipes);
>  bool intel_dp_has_joiner(struct intel_dp *intel_dp);  bool
> intel_dp_needs_vsc_sdp(const struct intel_crtc_state *crtc_state,
>  			    const struct drm_connector_state *conn_state); diff -
> -git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 27ce5c3f5951..e5797ee13667 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -567,6 +567,7 @@ static int intel_dp_mst_compute_config(struct
> intel_encoder *encoder,
>  		&pipe_config->hw.adjusted_mode;
>  	struct link_config_limits limits;
>  	bool dsc_needed, joiner_needs_dsc;
> +	enum intel_joiner_pipe_count joined_pipes;
>  	int ret =3D 0;
>=20
>  	if (pipe_config->fec_enable &&
> @@ -585,7 +586,11 @@ static int intel_dp_mst_compute_config(struct
> intel_encoder *encoder,
>  	pipe_config->output_format =3D INTEL_OUTPUT_FORMAT_RGB;
>  	pipe_config->has_pch_encoder =3D false;
>=20
> -	joiner_needs_dsc =3D intel_dp_joiner_needs_dsc(dev_priv, pipe_config-
> >joiner_pipes);
> +	joined_pipes =3D intel_joiner_num_pipes(pipe_config);
> +	if (joined_pipes >=3D INTEL_PIPE_JOINER_INVALID)
> +		drm_warn(&dev_priv->drm, "Invalid joined pipes : %d\n",
> +joined_pipes);
> +
> +	joiner_needs_dsc =3D intel_dp_joiner_needs_dsc(dev_priv, joined_pipes);
>=20
>  	dsc_needed =3D joiner_needs_dsc || intel_dp->force_dsc_en ||
>  		     !intel_dp_mst_compute_config_limits(intel_dp,
> @@ -1392,6 +1397,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector
> *connector,
>  	u16 dsc_max_compressed_bpp =3D 0;
>  	u8 dsc_slice_count =3D 0;
>  	int target_clock =3D mode->clock;
> +	enum intel_joiner_pipe_count joined_pipes =3D
> INTEL_PIPE_JOINER_NONE;
>=20
>  	if (drm_connector_is_unregistered(connector)) {
>  		*status =3D MODE_ERROR;
> @@ -1434,7 +1440,8 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector
> *connector,
>  	if (intel_dp_need_joiner(intel_dp, intel_connector,
>  				 mode->hdisplay, target_clock)) {
>  		joiner =3D true;
> -		max_dotclk *=3D 2;
> +		joined_pipes =3D INTEL_PIPE_JOINER_BIG;
> +		max_dotclk *=3D INTEL_PIPE_JOINER_BIG;
>  	}
>=20
>  	ret =3D drm_modeset_lock(&mgr->base.lock, ctx); @@ -1474,7 +1481,7
> @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
>  		dsc =3D dsc_max_compressed_bpp && dsc_slice_count;
>  	}
>=20
> -	if (intel_dp_joiner_needs_dsc(dev_priv, joiner) && !dsc) {
> +	if (intel_dp_joiner_needs_dsc(dev_priv, joined_pipes) && !dsc) {
>  		*status =3D MODE_CLOCK_HIGH;
>  		return 0;
>  	}
> --
> 2.45.2

