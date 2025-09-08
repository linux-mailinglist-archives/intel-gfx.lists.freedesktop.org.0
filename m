Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2CA7B48C0F
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Sep 2025 13:25:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDB4210E204;
	Mon,  8 Sep 2025 11:25:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Rt+iqBuO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AA1F10E12F;
 Mon,  8 Sep 2025 11:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757330699; x=1788866699;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xB/ogKiDyOsAU9Tyj37EhnJ6xoTQL5znZbFdqk678QU=;
 b=Rt+iqBuOSQ/BnBA1O+N5bEdk5jhEW8j5YTB7LnoiJacamHcpW797jdKB
 CSO1FW8lNmr/Il7WIsQDXiXT2GmDXnTsQKmRDTsnnt8BPyz6/GFevTGDN
 QO+LKO010yVRiLjgsm4JgLH6fTSjqllwLtlQZ/GVLpj6E3ZGlFHogNMli
 AJgVEn3FmbR/g7hKc9mqfj2aD+ytBgUH+9J/+72kT0Q6qMUSIVeCe7hac
 qOif07Ay8IDeOX069li//ll46mofwVP8QV8EjqnF/4tHcW83q0B9MWDCj
 jZxGXoQIDSw/6+1mnRUS/t6WxVL6cBkR6sldzd4kqxKJWa9VBsongBVJP w==;
X-CSE-ConnectionGUID: 6It9LKUkREaC6mw9H/2Ltw==
X-CSE-MsgGUID: zUQpPJe9TSKx258Kzg18GA==
X-IronPort-AV: E=McAfee;i="6800,10657,11546"; a="59521511"
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="59521511"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 04:24:59 -0700
X-CSE-ConnectionGUID: vTrAW/CMSR2Fll3U96oWGQ==
X-CSE-MsgGUID: nqGkBzbDRvqg+pQKj7MBCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="177992941"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 04:24:58 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 8 Sep 2025 04:24:56 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 8 Sep 2025 04:24:56 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.53) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 8 Sep 2025 04:24:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KV06TDYRBiehWc/co1Aa2uVSlhFiKHahBVbNsF6BZRlyhg9z1qPf6hNEJ2gLZkJm4GCXSzveAtrQHdy96PX6q8kR97MmrKfUZ1Fd1UPHb+Pv74AoHzEvapeF/Z81NE2e8w+k5gQfU0fi5i9/fvr30+46HWG613mN6RXkPTshB6bVShM9jub748tNEcUohEf2iQB83CqguPutsJDjFlvyfpqn89K2AgMOMSXY4dxd0HnDP3oy2/IKQfo9wdqYt8OtLmyNwOFfr4fsi2bCJmytNXjyKBhI/ip1quKKR06Np3RuV/elQTHgOLU6eGvqBPIWqlkPf6RpyGBCJM0+ZVncPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8oyNYJ88XGab4NYbKW5k2cVqQT9SHgUHfca1j4WGwiY=;
 b=Q+UwgUD9jRHjMe+AMfzettgP/Sm4GQhrdPSgiXuTWhnepySA+9geOMggJU3J/h0ipkM1ZLUo6+UcnYLQMaZw3Mz9TTzELJSWMcWHwZPr7drSsKFu5YuQ3W40H2vdpPdNhCHzeTT0GgiWSf4X8IjmRknDtR3uIZWEwoaWJGad0XXsfoS/VhfjZXNFQZbPIpZ9XSqR/bO/fmYlMW77RxPpOdhmqaL/M8AECJQUm+qBNh3oRWEfp6FHbbKF6DHSpnc/VrBP6zJkDRus+5hjJnJivWFHqYAk55YHKfU5aPjBCelE1IsqgthsqAs09MPraBznGD1Vxp3erAx9lMTDETEpyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PH3PPF25FF87461.namprd11.prod.outlook.com (2603:10b6:518:1::d10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.19; Mon, 8 Sep
 2025 11:24:50 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%4]) with mapi id 15.20.9094.021; Mon, 8 Sep 2025
 11:24:50 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "Govindapillai, Vinod" <vinod.govindapillai@intel.com>, "Cavitt, Jonathan"
 <jonathan.cavitt@intel.com>, "Srinivas, Vidya" <vidya.srinivas@intel.com>
Subject: RE: [v4 1/1] drm/i915/display: Remove FBC modulo 4 restriction for
 ADL-P+
Thread-Topic: [v4 1/1] drm/i915/display: Remove FBC modulo 4 restriction for
 ADL-P+
Thread-Index: AQHcHYAjuKeHoydDE0ukq3wWt3tAlLSJKv2Q
Date: Mon, 8 Sep 2025 11:24:50 +0000
Message-ID: <DM4PR11MB6360862739E3B082E86F20BAF40CA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20250904095338.300813-1-uma.shankar@intel.com>
 <20250904095338.300813-2-uma.shankar@intel.com>
In-Reply-To: <20250904095338.300813-2-uma.shankar@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|PH3PPF25FF87461:EE_
x-ms-office365-filtering-correlation-id: d6436ed5-ab93-43a7-2729-08ddeeca534b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?0yMwsi9/AcZMZmPmRUlQ4ELs44QGoeRzisQj93eqIhDOia2eESIqJXooZNij?=
 =?us-ascii?Q?oSl5QwH01T6FvqVHEgDqbZkOnjD1CAZbyrZCsCSE4fW2pqLfBwoiU9TjN3HC?=
 =?us-ascii?Q?w94GKMJUTzmGL5LYtusI3RKjN+EokHaoE9RzIjd3k+fX7xAdGHhhojkmaL1Y?=
 =?us-ascii?Q?gUcjImSQY6txKMeFQB69BXL+tPf4uuSZJLf4Cl7cuFY2tAcD0LtR4xldmze+?=
 =?us-ascii?Q?oaQYjx0BgC3lIq1QI8Niv8/gNLDi2RxVQt7N+de3w2N9A9OlIpW0l0bmmXc/?=
 =?us-ascii?Q?9B/GKIk/MRepK1xy3Svnx+VggnIs1x17YTV3hVGKkL8KCQ542zQEAlGbV8K0?=
 =?us-ascii?Q?JmWCiYG1CvxorRUSpQlI9B5UZwwifVQns0Gq9Ec3qyftOISfSy4K1ob8hHDQ?=
 =?us-ascii?Q?JAJCsoYPoYU3Lo8jSTZegWBsSlhdEzpGovr9E604g5kw8jTkUWCQ690zQWXh?=
 =?us-ascii?Q?3x04UoC0YvOzgthDJ1nTr4HC5pFSFLfxChq/ecj1hw9N7ENKOj2jfsD0UtF2?=
 =?us-ascii?Q?dlEAII6q23aQC0GJAQ6527/qT/YMany0Gj4FzBQJknTw3kI/3qDXFdyC/wRh?=
 =?us-ascii?Q?xdYZD+6o9R6ngI8GhxkSD0lBGPajqCFdzIFdrK9PGKICBMD95escUQ3piJtU?=
 =?us-ascii?Q?DDQ8fqKbKcd9612wkrHd9dRRueo5W+nsFFDSG5AYcHAcuQE4igQ2GBn3HJCW?=
 =?us-ascii?Q?caaebl44siQIUHrooHp2CkFtkLLI700MO3Zg2Ig7v3tvHiD6Wes44fOd+QK2?=
 =?us-ascii?Q?X+Wdr0ud52j+MEuGvAWbxef5WJrcEGsnku92PFeTLqVAdB5k0Q5M1RT/z3hN?=
 =?us-ascii?Q?ch/xL3PRgwPgejWybC58Gql3I9ox/5iEOIjsCbXTfEFD6ywr3hJxJSyJZ6Ma?=
 =?us-ascii?Q?8ZC/9dTHUyMmkRBAppApzh8o2rBh+vmBLp3tW83MbaD70ny4bMOW9eodEbgz?=
 =?us-ascii?Q?lJFfnW77/ol9llkjZQ440Wz8rbmJAN8n5TbXjD7arbTYXxQs61K4vhez4BtP?=
 =?us-ascii?Q?OY1rbCYCvxWgm7bjuBCmiEiJ7yrFeWg/NK8zyG2LzLBYd+LinzhfSbx7In/Z?=
 =?us-ascii?Q?3aXr39U1B7xkOCBQVlGkC+P4+KoXVIeFLOqF/ABlctzjHpjshUbHhDEZVpbQ?=
 =?us-ascii?Q?9VUCXP8CdCdcryDgYdaGsYg4d+F96Ms0mrnvqSXU4qYGC1xmkHgQn1kB4aaN?=
 =?us-ascii?Q?9RS9Y0VqyO3nGhitX5iI9U/fm9uxJQpkJakHUSHxFc+gmnTfKzimQmMSnOYa?=
 =?us-ascii?Q?b4VvTtaOoKptjFZW55tZq1lHELMlCmsq+QeGgO/HVH6yR4HgcDbJV/+wmuje?=
 =?us-ascii?Q?MGiASEB/VMhQrR8LLGIQyq6Rj9gxfoeWaYRUVqo4dMYOmgQM+J94DHhnNyTB?=
 =?us-ascii?Q?laeCCdRBFAg5OPa9C/SBR1RDhiGPJU0rSxvXx68f5UoQqoE0k3Mby1QKNYbP?=
 =?us-ascii?Q?SbI3pXWaQmqy3+EAe49qSlY4d6Ob8hHI8xZUn/zQZDveAkKJBs+e1CVf9Ew6?=
 =?us-ascii?Q?aworR8T8nKj2v64=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?V+Z7HluvWMacYYaDYFlu5jheofUEAFON0gkmGLD7D6fNrpvYxdqds8BCkLKM?=
 =?us-ascii?Q?eIMNNihn5ur965p4v04Ex5Iogza004jRC2znlEdBE0oiSC3c7C3mFIKbs3YP?=
 =?us-ascii?Q?efs69VKJB6BSNFVQWEcClxy4XYddk9+8LhDZajumK8M1CewLLohnP5uXUx/Z?=
 =?us-ascii?Q?6GqNjY8wPoM7btimLuZlTkp73xksSdzY+BZksvghQU/uhIyqrjydo+hjEX5N?=
 =?us-ascii?Q?k5E1CSiLaMMtg3krkVlS+ziGXDjC8hJvmvNfrOQaAPLRK5hK2ha23BevguLo?=
 =?us-ascii?Q?aLOWf+6JY1Q1n8jELm3B1gJ79bUMpj8cOOyR1mYyiklfE1avpDacFJMiIPxQ?=
 =?us-ascii?Q?oH8rqk9q6wjaHxYPFpieiLeeqDrgb13b7L0pK0emx0gIkEpZCQ39qTG5l5lF?=
 =?us-ascii?Q?qhVPbL5Oh9ocPBoF9KrmYgAho6VESy8VFAkDyf+Re+3qOBVSD3hATnDYZigy?=
 =?us-ascii?Q?nXWQ/GekSiqX+PxCy/qqtdiYHfkbrdPxikQXLKRKhOq8zFKgOi8UMETFev8x?=
 =?us-ascii?Q?e7cxqSmZi/Zsc/XGHPANdI9PzadXJ511jd3xF3vlosPHRO0tFPuH8hUs6gqT?=
 =?us-ascii?Q?XEAvzwNEjDPkUE73WVPmw29bk+x6NqwA7wdVsIPmu3+f5aPjz4RobDMRse4V?=
 =?us-ascii?Q?KhW6GknNc9lsNvLwLcuYqIeLCjkPZEiV11zzQVu4BRKZJ3kaDOYwnSQINc/7?=
 =?us-ascii?Q?IiuwVLhenlLAh68MNgpCBnt4EshDPg0l2iV+ZnmKlqBXXMgjG8zruwQVFQ//?=
 =?us-ascii?Q?uKzhps1rsdGg5rx/ylO1h5y8+i3yffZDPs6i1xM3j7OozjuAQAi5uZWJg0Tw?=
 =?us-ascii?Q?IaCtRV9kI3euiup98K55peRAd+q1coAFVlBehgpA5m6mu/+qyrB8k4IOc0Jb?=
 =?us-ascii?Q?yJ6xGCQY3MUoPGTUM8+FNsR471h6W9DAlocQdytL+Jlf97f+6LRdtWxJwZ4b?=
 =?us-ascii?Q?W/2e8OltUAp4D2Brg7xTMvsCoi+iRxMrEngToQiYgZ7lHUOgl9I1IcJU25OZ?=
 =?us-ascii?Q?N2I6ovavgOcZckVAXsZd2LwDRFj/k1FGOtk6CJaUDz7q60HmkqhGY/gqBuTa?=
 =?us-ascii?Q?pJZMBNgIvnA3oV5ZJVNQtbGqJ2H5aZgdjGwh6UZtbuVceLss2kClW1wt8//a?=
 =?us-ascii?Q?zyMMEiZ/uRlwt4zpG13fjZECWXIs7wEOcKeCfOCN/5HbfusqwMylUPRmoKIf?=
 =?us-ascii?Q?Nh3DRTW6tFV9popsMbhwXI1khhwBVU5qV/KBL7fY1bjB709LxB/VQZ/xL/ns?=
 =?us-ascii?Q?nLOZ4lp9pkLqiqFyj7k5p3w+/72xdxjJ5ThtQZGusVCiSUPQinNmygM04Xf3?=
 =?us-ascii?Q?0mmYfsyAu2ULTUHRDWltP0X/5EVrl1GxOXJD7EQ+VijGhD5gMYoUno4KxnVt?=
 =?us-ascii?Q?TbF6rSZWHUCn9qzX60Lwtbsxj6U41LyuxYZUuWpf+mE269H59RKeAoJgaq2G?=
 =?us-ascii?Q?hKy+tMwIxcWkdkrFVzCE2jLAEOzNUKDLY9usgcGGQc8lgrrHGLt+pQx9PLlI?=
 =?us-ascii?Q?CGo7ERMau/kdCT8/8ISzoshtedEffiXEPSaHlEF81YrYHHqauOCxFNZkNZ/x?=
 =?us-ascii?Q?rAB/wJxUCZYaCcH6Ji+40KuPJoG2FZr1972nmgOe?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d6436ed5-ab93-43a7-2729-08ddeeca534b
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Sep 2025 11:24:50.4130 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dIRZe0ze0VFgFaRFG/ygbXr87Y4UR+XnHBWmp+Z+1v69JiBi3Oi3hNglnscFZx7IYWS7rZgPVMmg4v+vjh5+Zw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF25FF87461
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
> From: Shankar, Uma <uma.shankar@intel.com>
> Sent: Thursday, September 4, 2025 3:24 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; Govindapillai, Vinod
> <vinod.govindapillai@intel.com>; Cavitt, Jonathan <jonathan.cavitt@intel.=
com>;
> Shankar, Uma <uma.shankar@intel.com>; Srinivas, Vidya
> <vidya.srinivas@intel.com>
> Subject: [v4 1/1] drm/i915/display: Remove FBC modulo 4 restriction for A=
DL-P+
>=20
> WA:22010751166 does not apply past display version 12.  Or, in other word=
s, the
> FBC restriction where FBC is disabled for non-modulo 4 plane sizes (inclu=
ding
> plane size + yoffset) is fixed from display version 13 and onwards. Relax=
 the
> restriction for the same.
>=20
> v4: Dropped redundant commit message
>=20
> v3: Update comments for clarity (Jonathan Cavitt)
>=20
> v2: Update the macro for display version check (Vinod)
>=20
> Suggested-by: Vidya Srinivas <vidya.srinivas@intel.com>
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>

Pushed to drm-intel-next. Thanks for the reviews.

Regards,
Uma Shankar

> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c
> b/drivers/gpu/drm/i915/display/intel_fbc.c
> index d4c5deff9cbe..9e097ed80bd1 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -1550,14 +1550,14 @@ static int intel_fbc_check_plane(struct
> intel_atomic_state *state,
>  	 * having a Y offset that isn't divisible by 4 causes FIFO underrun
>  	 * and screen flicker.
>  	 */
> -	if (DISPLAY_VER(display) >=3D 9 &&
> +	if (IS_DISPLAY_VER(display, 9, 12) &&
>  	    plane_state->view.color_plane[0].y & 3) {
>  		plane_state->no_fbc_reason =3D "plane start Y offset misaligned";
>  		return 0;
>  	}
>=20
>  	/* Wa_22010751166: icl, ehl, tgl, dg1, rkl */
> -	if (DISPLAY_VER(display) >=3D 11 &&
> +	if (IS_DISPLAY_VER(display, 9, 12) &&
>  	    (plane_state->view.color_plane[0].y +
>  	     (drm_rect_height(&plane_state->uapi.src) >> 16)) & 3) {
>  		plane_state->no_fbc_reason =3D "plane end Y offset misaligned";
> --
> 2.42.0

