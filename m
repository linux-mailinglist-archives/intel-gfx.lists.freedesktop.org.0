Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 980C09736CE
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2024 14:06:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2167C10E7A6;
	Tue, 10 Sep 2024 12:06:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LD4U6R4o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 312E910E7A6
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2024 12:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725969982; x=1757505982;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=h0QKL1+0iPzE842DbQWVK/1m68PYMNATsFmzBiqEens=;
 b=LD4U6R4oQJhX9ic4Rspg3IwSR0Mr0hyAV9K0rOfVrrgLI4PBLwyhWXd0
 WEfv36z/brf+pRXHBd3giFuX2OtlySR4wzlLPddDCaVUCWY6QBmlClDKx
 zQ1bfqvNjJT5MMrWrzmSDZuhGA3lzb7KWnvqV65mtxy1Uv2oqS8/SnY7g
 vdjdhxSGttqmr0AgsSdfe8tQmnfdZ0PHCM/UkCqQfn78KXy9IZf9V8ksy
 k8XOK6bEl0FWco/yBKPIy8POkQEc9SLl7CrvkIZdwHf7ZrKVQ3ixp/MAk
 D8WYPxoiMD2eg8RMeHTTd8VHwrxqmtgdO+clk7VJK7f9vNOnKlIpWKL3j w==;
X-CSE-ConnectionGUID: 3WISHzI+TKeSOOrK9U8LhQ==
X-CSE-MsgGUID: ziVDMN67S9yTKF0ouV5Mlw==
X-IronPort-AV: E=McAfee;i="6700,10204,11190"; a="28601668"
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="28601668"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 05:06:21 -0700
X-CSE-ConnectionGUID: B5UOS0XcSU6Jj7gRqYzcMQ==
X-CSE-MsgGUID: 4jgx9R0qR8q370EAWA/aCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="67537135"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Sep 2024 05:06:22 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 10 Sep 2024 05:06:21 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 10 Sep 2024 05:06:21 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 10 Sep 2024 05:06:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=B7ShdA/xv7U+rN26FUveimuUHXvfKl+0q4NwqMF50mE2MVoRelQkcOf9OsGCgt9BWf8cxZF/paQVg/6YM2LjWGwy5/eqFqlOgQ6GGgt1498mbgLNvQ5NS1qSW9bBCJfH8nusZ/hjuwaaILvmj4kZ5U867rjYaHzbdDOu9Xm71Nd6cwjU/KVTFTIemP29mFlODT2c3PUp5G7mhyO0tX2kyf3PSe+S5o4cMrbV1eIhDYMRNDMm8lKwTnzF7iQOoW4SIooHR7PeWySA42b40x/Glt5g32/mqy3Lk+diGeSffxZ3N2Nn3IPZqrMIGfxC5+ezoiKQlMcXXTQTnAFu/RNdJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DnkZBkeIrS6tEiy877tMIf5W73MDyNAFd4FJPkrihp8=;
 b=sCFpVPm5nlAK4u9tHu5K1hQgYaSNBUQ0H3VJmWDxbw30UMiYCBOoARZwusNTHXJjcL11qFYG+usfTUSa4aq3ic4bmPcJHB0jjTyVivpCwLcQZxkzrxzfXwioWB9Y4qdTF0B33AOJUZX2b7NLgNu7+AmyppjToHGU3J+IMWx5YXTBxauBc/amby+5WTCff6k+zo8B8nxFtTjhp2SVjbCawJEMFkpQUfClAB4MFTz7FwHCnIMbtRdff95kFIzUQL4cKYgwzD9MtKjq1FE46byYdhb0B9wPB6UUfyGxUJmwEm6SddWoZzbAeljB8UO77dB+K43ht3+EUqXIKpHejKcPkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PH7PR11MB8249.namprd11.prod.outlook.com (2603:10b6:510:1a7::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7939.20; Tue, 10 Sep
 2024 12:06:14 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%5]) with mapi id 15.20.7939.017; Tue, 10 Sep 2024
 12:06:14 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Abhinav
 Kumar" <quic_abhinavk@quicinc.com>
CC: "Murthy, Arun R" <arun.r.murthy@intel.com>, "Kulkarni, Vandita"
 <vandita.kulkarni@intel.com>
Subject: RE: [PATCH 3/5] Add crtc properties for global histogram
Thread-Topic: [PATCH 3/5] Add crtc properties for global histogram
Thread-Index: AQHazsMAJJ1KBgbrlUuxO+fxuw158rJRVV6w
Date: Tue, 10 Sep 2024 12:06:14 +0000
Message-ID: <DM4PR11MB6360412D6EBABE7412C8EFEFF49A2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240705095551.1244154-1-arun.r.murthy@intel.com>
 <20240705095551.1244154-4-arun.r.murthy@intel.com>
In-Reply-To: <20240705095551.1244154-4-arun.r.murthy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|PH7PR11MB8249:EE_
x-ms-office365-filtering-correlation-id: 182e2c5c-40b5-48b7-adc7-08dcd190f7d6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?zWcjmgpzOsXVh9wnMtpe/OE9atOtGN/JpHjuFGjxdxWtPXdM0gEajiuGLJpv?=
 =?us-ascii?Q?H4KYa1PS6wo0/75sbclC1W+FEeYXhPZpaYVWNfxPqbQOSCYHXu0MaEvm/nRl?=
 =?us-ascii?Q?eZGsvLMpaZ+fWicVUL4L6R2RN6Etdmflpw5fuAGsAcZtEX+CJ5lYTrKlfGwy?=
 =?us-ascii?Q?5A6ljgFenBQnES270nWpftl7ei9TjVhTmU4YGDxe2aAW1Y07PR9RE8VZNoAK?=
 =?us-ascii?Q?VMpKeJqaEGvmjW4F3uGyYYGT1cB6duBzDhDrUw348SPEywGDIdN66iKKazZp?=
 =?us-ascii?Q?rGIM+k79kMBie2EfKPekEn4KsquSGZDY7zZ8L49tgjUgVJzIOU+ohb1G1rdi?=
 =?us-ascii?Q?P2A58TG2gNInENUhXb5J7Ylxwl/XbxQQKqG4zoo6jU4PzxwYG59LYvTXADrI?=
 =?us-ascii?Q?pv4xvx7tIClkEgxoHwhFgWQhglX2XHRcrbYgsPexfNUqVzDglMx1yh7EIezv?=
 =?us-ascii?Q?aWy4OK7PjcExHnu56ItcaSzVM0V3wbPMFHu/2daQDsCPpw+4rkwI/AVQb4Kv?=
 =?us-ascii?Q?eGRonv1crHFK8OU0VSYAipVzifa2TzjJ20tPKx39+q/JsxnEYEWJQE4dDibA?=
 =?us-ascii?Q?Z3cSk1r/Y4qA3ja7ODhZQk0PEakjDRSgsx+ARSF+hVScP0gg+sGpaPUJMWci?=
 =?us-ascii?Q?5hb9RlxtokF4ZD89ACmmon36g4bxTJTLNvz/1QNJTRc2a0HqhxqDSWWRZP8f?=
 =?us-ascii?Q?gCo7gHkupQ+/jW/nNznPJDZpI2wAYV6Rk/9OpDKOG8zCo2ue7OHmx8OMXovg?=
 =?us-ascii?Q?wbg6UtlOgkKEhnR3B0MEXOkPRo+b1gOMO8bVVET4cNRDP1dy0V4V/G/9XPXh?=
 =?us-ascii?Q?W9gmmUzJbjRnDAIck0mmW5KMqnrXl2bruvZMoQ0v+HQUkB+e32RqEn5DnN8Q?=
 =?us-ascii?Q?s26eZ07E1YU/h6vY5HifuifAR9LSGHHv2iBHPpLNDXy4DnxDBztL+9gwDT3Q?=
 =?us-ascii?Q?DE6AzGQXDnnFXmgYt+ASFMWZcTJrzGzr4GOBXwkaYSc320IPySLvsWAnn7Xx?=
 =?us-ascii?Q?VxE7EiYSvk092l5m6WJtNgsVYcjOhSgB70/0DH9yqMgP85xjao5lNTc3oB4d?=
 =?us-ascii?Q?XSDeAm9j2G9tZU+bzWC16Ue11Pthye8obHtTyzD5uMunDJ/936eycMyFsA6r?=
 =?us-ascii?Q?xsgzfkRD/SVOL3OKj0XXadTbQqhuFmI128Xzz18pfe9ztvTAzOI7kcgghaM+?=
 =?us-ascii?Q?yHI/jjeNpQHRqjdHMjN6tyzx7tOJAGSr6l26/f0fOEMd0nEm1ubtQykdAVMM?=
 =?us-ascii?Q?xDLfNXM8xw7yaGKIw26xrN6ZKuoCvYNGmTxt0b8l+ZwkxC3Lo81b04N2Tlpe?=
 =?us-ascii?Q?kDjmZX8hNo8s0KNDX/TmProES4uRAxd2Ib7Kq7LXUJUwkNA71Www+58W8LJN?=
 =?us-ascii?Q?MrEJUr1AmNyqLKBD51XHDUSeJ/GmlaggHskYkCjs+CJapvGO+g=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?2u/9HqqJDovQ27KUpQkrSFKckKlIz0MKlKKz/PszRkEXuLTrFQ6nFMBYSI74?=
 =?us-ascii?Q?6g11K2Z5CiLSP84nZ6YbisyQ5dtFaZmd9pSecV0cyTdV7+w46pniOcEJOvoW?=
 =?us-ascii?Q?foipt0KewiRVhNd5JUq3W6ISCJUWJInQ+wml25Bq3FKcdzq2XvizNQoUlFMD?=
 =?us-ascii?Q?gm08MAnhkloW5fZ+qdWkdKC6I8TkjiKb0taAF2BbmHUvatpja52QfqgL5M+N?=
 =?us-ascii?Q?tQ84mxqR2LlAPmvSkbL/k1bSo2uulnwKfTHl8lpPrSu2cBM7qfacNHLgdk/d?=
 =?us-ascii?Q?lunMIe6xLd/tQtCm59GB0Wf4E3NWCDWpl1vx6DjR3kTkJkSDRZRipRk6W631?=
 =?us-ascii?Q?UD9IWfqYR8El4NomgXQQpmxScZELIorO3P4qp+BtPQfXTRPEA8rwjPl8Q/Ok?=
 =?us-ascii?Q?dmdPqiouwbs+G4/15ryVEIuwWDqZCCRCNqaznguVFTuCv+2b8u1FCOjejTcQ?=
 =?us-ascii?Q?CUe2Pt+Oh5n7QyNlUk2onuc9ow/kWrg1AXggPh7wE3J/9vJU42NxyzrjPRoR?=
 =?us-ascii?Q?L2T59BbBod3GmvRev3k/72dxYX5uxHpgoEyGJXTtWgryiZNauJCaLkNhvB04?=
 =?us-ascii?Q?KOYHSla8Mm3DhYCdc97I7Qyx6gZd2K3JFp5medXdVenyCkqKUnNyDRnSyayh?=
 =?us-ascii?Q?NZsBLKzcxZmWL/AmtZm4/x2yLx8yUpIxfvqTtwJ0NhdQ6rZi5VfYjgBoENWP?=
 =?us-ascii?Q?3WSwHLdhGRb2z+n7dWJo8QwouJqET1TPAKhZsJuc3bwBwd7pPdMieSRn20Wr?=
 =?us-ascii?Q?foMqKZozhQSpRRHBsI/vtdSRGBFF52/k2PhIVTVYXRLZ1exJMRKtwGgseiP3?=
 =?us-ascii?Q?tcCblSFOmvLZ3lVoBDVAmee7ZBTnDCo35c7q8vwMTbrXOMWPiP5FGA/o4Zoa?=
 =?us-ascii?Q?vhlIsG17nhlv4xYvchbX/OEQ8MiDfQPJDNW8Y27W0I94EJyPT9rDGyy1hnF8?=
 =?us-ascii?Q?sFYhIxKpIuvc3M053sQf185tlYcjoXpP35YEjlNhKZCq3GYJycIf4iS+ZPf1?=
 =?us-ascii?Q?bQ3C040hlaKUqkQ+EQq8Yi76PTR+dTViIhqxUl1tng9i9e7dto3Kb343BbZ1?=
 =?us-ascii?Q?OHT7uvVwl87tZTcjFUDvlsXwNIIIhE21FOMe97ddW/Bwq4esTyhTsZe7TnyF?=
 =?us-ascii?Q?gFLcKFfEGlJY4iWSyVKU1gws9fJhO7p8LUZoRlPEq2SqwNu/SAOvCH2tbdGl?=
 =?us-ascii?Q?FRYYaiK0O5kfXr7TIhCU+BfXfaGHlVGjMdYtmKB/rkT15dsxOMLZEqonG/PT?=
 =?us-ascii?Q?QZE9SanT9UkFcsgfvMxvGQnx3wkASjAgyK8P7sfrXquH8tsfx4RQm8KZTdZb?=
 =?us-ascii?Q?oIUZydFaMMsT3m5oW+NLZ5lOn33gy1zhQflDNXQ8oFwE3sAUmewZh5EMMjC2?=
 =?us-ascii?Q?1+B1rUi+32M2XhQ/V0EUkRa2Mh+vBJ41WfAfppND2sShpUjmY/NKi3pVx1Cq?=
 =?us-ascii?Q?zFUAxG41GoGbPe15FBtuR4urNdLuhBjYUBjozftg3sVEF0ou+uniAmNI/07T?=
 =?us-ascii?Q?Rd4MA3SOMb/fEPx+kaZkyZsriduRTImF5tDRpoAALDMkVEdMIWbXGGs6i8KU?=
 =?us-ascii?Q?HqPJmY9fgLHKfHG/uB8QnxeLGuDSyRuh7JXpEteO?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 182e2c5c-40b5-48b7-adc7-08dcd190f7d6
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Sep 2024 12:06:14.3171 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FVf9bG06PYGLsFeckXTnAhLbjpa7RdEhkX4mtn6785ewXoXk4PPhcNe8iLkg+wv548r9GmQsrhTEy3Rc0r4a4g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8249
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ar=
un R
> Murthy
> Sent: Friday, July 5, 2024 3:26 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Murthy, Arun R <arun.r.murthy@intel.com>
> Subject: [PATCH 3/5] Add crtc properties for global histogram
>=20
> CRTC properties have been added for enable/disable histogram, reading the
> histogram data and writing the IET data.
> "HISTOGRAM_EN" is the crtc property to enable/disable the global histogra=
m and
> takes a value 0/1 accordingly.
> "Histogram" is a crtc property to read the binary histogram data.
> "Global IET" is a crtc property to write the IET binary LUT data.

+ CC'ing Abhinav from QC

Hi Abhinav,
As discussed in Display Hackfest, can you please share your thoughts and in=
puts on this series.

Thanks & Regards,
Uma Shankar

> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_atomic.c   |   5 +
>  drivers/gpu/drm/i915/display/intel_crtc.c     | 202 +++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_crtc.h     |   5 +
>  drivers/gpu/drm/i915/display/intel_display.c  |  13 ++
>  .../drm/i915/display/intel_display_types.h    |  17 ++
>  .../gpu/drm/i915/display/intel_histogram.c    |   1 +
>  6 files changed, 242 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c
> b/drivers/gpu/drm/i915/display/intel_atomic.c
> index 76aa10b6f647..693a22089937 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> @@ -246,6 +246,8 @@ intel_crtc_duplicate_state(struct drm_crtc *crtc)
>=20
>  	__drm_atomic_helper_crtc_duplicate_state(crtc, &crtc_state->uapi);
>=20
> +	if (crtc_state->global_iet)
> +		drm_property_blob_get(crtc_state->global_iet);
>  	/* copy color blobs */
>  	if (crtc_state->hw.degamma_lut)
>  		drm_property_blob_get(crtc_state->hw.degamma_lut);
> @@ -277,6 +279,7 @@ intel_crtc_duplicate_state(struct drm_crtc *crtc)
>  	crtc_state->fb_bits =3D 0;
>  	crtc_state->update_planes =3D 0;
>  	crtc_state->dsb =3D NULL;
> +	crtc_state->histogram_en_changed =3D false;
>=20
>  	return &crtc_state->uapi;
>  }
> @@ -312,6 +315,8 @@ intel_crtc_destroy_state(struct drm_crtc *crtc,
>=20
>  	drm_WARN_ON(crtc->dev, crtc_state->dsb);
>=20
> +	if (crtc_state->global_iet)
> +		drm_property_blob_put(crtc_state->global_iet);
>  	__drm_atomic_helper_crtc_destroy_state(&crtc_state->uapi);
>  	intel_crtc_free_hw_state(crtc_state);
>  	if (crtc_state->dp_tunnel_ref.tunnel)
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c
> b/drivers/gpu/drm/i915/display/intel_crtc.c
> index 1b578cad2813..24f160359422 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -10,6 +10,7 @@
>  #include <drm/drm_fourcc.h>
>  #include <drm/drm_plane.h>
>  #include <drm/drm_vblank_work.h>
> +#include <drm/drm_atomic_uapi.h>
>=20
>  #include "i915_vgpu.h"
>  #include "i9xx_plane.h"
> @@ -26,6 +27,7 @@
>  #include "intel_drrs.h"
>  #include "intel_dsi.h"
>  #include "intel_fifo_underrun.h"
> +#include "intel_histogram.h"
>  #include "intel_pipe_crc.h"
>  #include "intel_psr.h"
>  #include "intel_sprite.h"
> @@ -201,6 +203,7 @@ static struct intel_crtc *intel_crtc_alloc(void)  sta=
tic void
> intel_crtc_free(struct intel_crtc *crtc)  {
>  	intel_crtc_destroy_state(&crtc->base, crtc->base.state);
> +	intel_histogram_deinit(crtc);
>  	kfree(crtc);
>  }
>=20
> @@ -220,6 +223,100 @@ static int intel_crtc_late_register(struct drm_crtc
> *crtc)
>  	return 0;
>  }
>=20
> +static int intel_crtc_get_property(struct drm_crtc *crtc,
> +				   const struct drm_crtc_state *state,
> +				   struct drm_property *property,
> +				   uint64_t *val)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(crtc->dev);
> +	const struct intel_crtc_state *intel_crtc_state =3D
> +		to_intel_crtc_state(state);
> +	struct intel_crtc *intel_crtc =3D to_intel_crtc(crtc);
> +
> +	if (property =3D=3D intel_crtc->histogram_en_property) {
> +		*val =3D intel_crtc_state->histogram_en;
> +	} else if (property =3D=3D intel_crtc->global_iet_property) {
> +		*val =3D (intel_crtc_state->global_iet) ?
> +			intel_crtc_state->global_iet->base.id : 0;
> +	} else if (property =3D=3D intel_crtc->histogram_property) {
> +		*val =3D (intel_crtc_state->histogram) ?
> +			intel_crtc_state->histogram->base.id : 0;
> +	} else {
> +		drm_err(&i915->drm,
> +			"Unknown property [PROP:%d:%s]\n",
> +			property->base.id, property->name);
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
> +static int
> +intel_atomic_replace_property_blob_from_id(struct drm_device *dev,
> +					   struct drm_property_blob **blob,
> +					   u64 blob_id,
> +					   ssize_t expected_size,
> +					   ssize_t expected_elem_size,
> +					   bool *replaced)
> +{
> +	struct drm_property_blob *new_blob =3D NULL;
> +
> +	if (blob_id !=3D 0) {
> +		new_blob =3D drm_property_lookup_blob(dev, blob_id);
> +		if (!new_blob)
> +			return -EINVAL;
> +
> +		if (expected_size > 0 &&
> +		    new_blob->length !=3D expected_size) {
> +			drm_property_blob_put(new_blob);
> +			return -EINVAL;
> +		}
> +		if (expected_elem_size > 0 &&
> +		    new_blob->length % expected_elem_size !=3D 0) {
> +			drm_property_blob_put(new_blob);
> +			return -EINVAL;
> +		}
> +	}
> +
> +	*replaced |=3D drm_property_replace_blob(blob, new_blob);
> +	drm_property_blob_put(new_blob);
> +
> +	return 0;
> +}
> +
> +static int intel_crtc_set_property(struct drm_crtc *crtc,
> +				   struct drm_crtc_state *state,
> +				   struct drm_property *property,
> +				   u64 val)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(crtc->dev);
> +	struct intel_crtc_state *intel_crtc_state =3D
> +		to_intel_crtc_state(state);
> +	struct intel_crtc *intel_crtc =3D to_intel_crtc(crtc);
> +	bool replaced =3D false;
> +
> +	if (property =3D=3D intel_crtc->histogram_en_property) {
> +		intel_crtc_state->histogram_en =3D val;
> +		intel_crtc_state->histogram_en_changed =3D true;
> +		return 0;
> +	}
> +
> +	if (property =3D=3D intel_crtc->global_iet_property) {
> +		intel_atomic_replace_property_blob_from_id(crtc->dev,
> +							   &intel_crtc_state-
> >global_iet,
> +							   val,
> +							   sizeof(uint32_t) *
> HISTOGRAM_IET_LENGTH,
> +							   -1, &replaced);
> +		if (replaced)
> +			intel_crtc_state->global_iet_changed =3D true;
> +		return 0;
> +	}
> +
> +	drm_dbg_atomic(&i915->drm, "Unknown property [PROP:%d:%s]\n",
> +		       property->base.id, property->name);
> +	return -EINVAL;
> +}
> +
>  #define INTEL_CRTC_FUNCS \
>  	.set_config =3D drm_atomic_helper_set_config, \
>  	.destroy =3D intel_crtc_destroy, \
> @@ -229,7 +326,9 @@ static int intel_crtc_late_register(struct drm_crtc *=
crtc)
>  	.set_crc_source =3D intel_crtc_set_crc_source, \
>  	.verify_crc_source =3D intel_crtc_verify_crc_source, \
>  	.get_crc_sources =3D intel_crtc_get_crc_sources, \
> -	.late_register =3D intel_crtc_late_register
> +	.late_register =3D intel_crtc_late_register, \
> +	.atomic_set_property =3D intel_crtc_set_property, \
> +	.atomic_get_property =3D intel_crtc_get_property
>=20
>  static const struct drm_crtc_funcs bdw_crtc_funcs =3D {
>  	INTEL_CRTC_FUNCS,
> @@ -374,6 +473,10 @@ int intel_crtc_init(struct drm_i915_private *dev_pri=
v,
> enum pipe pipe)
>  	intel_color_crtc_init(crtc);
>  	intel_drrs_crtc_init(crtc);
>  	intel_crtc_crc_init(crtc);
> +	intel_histogram_init(crtc);
> +
> +	/* Initialize crtc properties */
> +	intel_crtc_add_property(crtc);
>=20
>  	cpu_latency_qos_add_request(&crtc->vblank_pm_qos,
> PM_QOS_DEFAULT_VALUE);
>=20
> @@ -690,3 +793,100 @@ void intel_pipe_update_end(struct intel_atomic_stat=
e
> *state,
>  out:
>  	intel_psr_unlock(new_crtc_state);
>  }
> +
> +static const struct drm_prop_enum_list histogram_en_names[] =3D {
> +	{ INTEL_HISTOGRAM_DISABLE, "Disable" },
> +	{ INTEL_HISTOGRAM_ENABLE, "Enable" },
> +};
> +
> +/**
> + * intel_attach_histogram_en_property() - add property to
> +enable/disable histogram
> + * @intel_crtc: pointer to the struct intel_crtc on which the global his=
togram is
> to
> + *		be enabled/disabled
> + *
> + * "HISTOGRAM_EN" is the crtc propety to enable/disable global
> +histogram  */ void intel_attach_histogram_en_property(struct intel_crtc
> +*intel_crtc) {
> +	struct drm_crtc *crtc =3D &intel_crtc->base;
> +	struct drm_device *dev =3D crtc->dev;
> +	struct drm_property *prop;
> +
> +	prop =3D intel_crtc->histogram_en_property;
> +	if (!prop) {
> +		prop =3D drm_property_create_enum(dev, 0,
> +						"HISTOGRAM_EN",
> +						histogram_en_names,
> +
> 	ARRAY_SIZE(histogram_en_names));
> +		if (!prop)
> +			return;
> +
> +		intel_crtc->histogram_en_property =3D prop;
> +	}
> +
> +	drm_object_attach_property(&crtc->base, prop, 0); }
> +
> +/**
> + * intel_attach_global_iet_property() - add property to write Image
> +Enhancement data
> + * @intel_crtc: pointer to the struct intel_crtc on which global
> +histogram is enabled
> + *
> + * "Global IET" is the crtc property to write the Image Enhancement LUT
> +binary data  */ void intel_attach_global_iet_property(struct intel_crtc
> +*intel_crtc) {
> +	struct drm_crtc *crtc =3D &intel_crtc->base;
> +	struct drm_device *dev =3D crtc->dev;
> +	struct drm_property *prop;
> +
> +	prop =3D intel_crtc->global_iet_property;
> +	if (!prop) {
> +		prop =3D drm_property_create(dev, DRM_MODE_PROP_BLOB |
> DRM_MODE_PROP_ATOMIC,
> +					   "Global IET", 0);
> +		if (!prop)
> +			return;
> +
> +		intel_crtc->global_iet_property =3D prop;
> +	}
> +
> +	drm_object_attach_property(&crtc->base, prop, 0); }
> +
> +/**
> + * intel_attach_histogram_property() - crtc property to read the histogr=
am.
> + * @intel_crtc: pointer to the struct intel_crtc on which the global his=
togram
> + *		was enabled.
> + * "Global Histogram" is the crtc property to read the binary histogram =
data.
> + */
> +void intel_attach_histogram_property(struct intel_crtc *intel_crtc) {
> +	struct drm_crtc *crtc =3D &intel_crtc->base;
> +	struct drm_device *dev =3D crtc->dev;
> +	struct drm_property *prop;
> +	struct drm_property_blob *blob;
> +
> +	prop =3D intel_crtc->histogram_property;
> +	if (!prop) {
> +		prop =3D drm_property_create(dev, DRM_MODE_PROP_BLOB |
> +					   DRM_MODE_PROP_ATOMIC |
> +					   DRM_MODE_PROP_IMMUTABLE,
> +					   "Global Histogram", 0);
> +		if (!prop)
> +			return;
> +
> +		intel_crtc->histogram_property =3D prop;
> +	}
> +	blob =3D drm_property_create_blob(dev, sizeof(uint32_t) *
> HISTOGRAM_BIN_COUNT, NULL);
> +	intel_crtc->config->histogram =3D blob;
> +
> +	drm_object_attach_property(&crtc->base, prop, blob->base.id); }
> +
> +int intel_crtc_add_property(struct intel_crtc *intel_crtc) {
> +	intel_attach_histogram_en_property(intel_crtc);
> +	intel_attach_histogram_property(intel_crtc);
> +	intel_attach_global_iet_property(intel_crtc);
> +
> +	return 0;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.h
> b/drivers/gpu/drm/i915/display/intel_crtc.h
> index b615b7ab5ccd..56c6b7c6037e 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.h
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.h
> @@ -7,6 +7,7 @@
>  #define _INTEL_CRTC_H_
>=20
>  #include <linux/types.h>
> +#include <drm/drm_crtc.h>
>=20
>  enum i9xx_plane_id;
>  enum pipe;
> @@ -49,4 +50,8 @@ void intel_wait_for_vblank_if_active(struct
> drm_i915_private *i915,
>  				     enum pipe pipe);
>  void intel_crtc_wait_for_next_vblank(struct intel_crtc *crtc);
>=20
> +int intel_crtc_add_property(struct intel_crtc *intel_crtc); void
> +intel_attach_histogram_en_property(struct intel_crtc *intel_crtc); void
> +intel_attach_global_iet_property(struct intel_crtc *intel_crtc); void
> +intel_attach_histogram_property(struct intel_crtc *intel_crtc);
>  #endif
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index c2c388212e2e..94e9f7a71a90 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -93,6 +93,7 @@
>  #include "intel_fifo_underrun.h"
>  #include "intel_frontbuffer.h"
>  #include "intel_hdmi.h"
> +#include "intel_histogram.h"
>  #include "intel_hotplug.h"
>  #include "intel_link_bw.h"
>  #include "intel_lvds.h"
> @@ -4324,6 +4325,10 @@ static int intel_crtc_atomic_check(struct
> intel_atomic_state *state,
>  	if (ret)
>  		return ret;
>=20
> +	/* HISTOGRAM changed */
> +	if (crtc_state->histogram_en_changed)
> +		return intel_histogram_can_enable(crtc);
> +
>  	return 0;
>  }
>=20
> @@ -7503,6 +7508,14 @@ static void intel_atomic_commit_tail(struct
> intel_atomic_state *state)
>  		 * FIXME get rid of this funny new->old swapping
>  		 */
>  		old_crtc_state->dsb =3D fetch_and_zero(&new_crtc_state->dsb);
> +
> +		/* Re-Visit: HISTOGRAM related stuff */
> +		if (new_crtc_state->histogram_en_changed)
> +			intel_histogram_update(crtc,
> +					       new_crtc_state->histogram_en);
> +		if (new_crtc_state->global_iet_changed)
> +			intel_histogram_set_iet_lut(crtc,
> +						    (u32 *)new_crtc_state-
> >global_iet->data);
>  	}
>=20
>  	/* Underruns don't always raise interrupts, so check manually */ diff -=
-git
> a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index e0a9c6d8c9b2..e7c33eb76a7e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -99,6 +99,12 @@ enum intel_broadcast_rgb {
>  	INTEL_BROADCAST_RGB_LIMITED,
>  };
>=20
> +/* HISTOGRAM property */
> +enum intel_histogram_en_prop {
> +	INTEL_HISTOGRAM_PROP_DISABLE,
> +	INTEL_HISTOGRAM_PROP_ENABLE,
> +};
> +
>  struct intel_fb_view {
>  	/*
>  	 * The remap information used in the remapped and rotated views to
> @@ -1431,6 +1437,13 @@ struct intel_crtc_state {
>=20
>  	/* LOBF flag */
>  	bool has_lobf;
> +
> +	/* HISTOGRAM data */
> +	int histogram_en;
> +	struct drm_property_blob *global_iet;
> +	struct drm_property_blob *histogram;
> +	bool global_iet_changed;
> +	bool histogram_en_changed;
>  };
>=20
>  enum intel_pipe_crc_source {
> @@ -1539,6 +1552,10 @@ struct intel_crtc {
>=20
>  	/* histogram data */
>  	struct intel_histogram *histogram;
> +	/* HISTOGRAM properties */
> +	struct drm_property *histogram_en_property;
> +	struct drm_property *global_iet_property;
> +	struct drm_property *histogram_property;
>=20
>  #ifdef CONFIG_DEBUG_FS
>  	struct intel_pipe_crc pipe_crc;
> diff --git a/drivers/gpu/drm/i915/display/intel_histogram.c
> b/drivers/gpu/drm/i915/display/intel_histogram.c
> index 8fa3bc74e52b..740019fdf0df 100644
> --- a/drivers/gpu/drm/i915/display/intel_histogram.c
> +++ b/drivers/gpu/drm/i915/display/intel_histogram.c
> @@ -183,6 +183,7 @@ static void intel_histogram_disable(struct intel_crtc
> *intel_crtc)
>=20
>  	cancel_delayed_work(&histogram->handle_histogram_int_work);
>  	histogram->enable =3D false;
> +	intel_crtc->config->histogram_en =3D false;
>  }
>=20
>  int intel_histogram_update(struct intel_crtc *intel_crtc, bool enable)
> --
> 2.25.1

