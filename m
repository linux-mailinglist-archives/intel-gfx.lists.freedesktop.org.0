Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80779AA6EE0
	for <lists+intel-gfx@lfdr.de>; Fri,  2 May 2025 12:09:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0003A10E18C;
	Fri,  2 May 2025 10:09:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IIJeo8/y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F64910E183;
 Fri,  2 May 2025 10:09:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746180555; x=1777716555;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=43JQrDyJBOdxnMSDD5n2B21VfxNVsLtTgwfwCqfN3Y8=;
 b=IIJeo8/y0tC0t6koYPEgB9pIgW9JjydRPLp1QBhjV4LxtyNQZFik6QtE
 gjKIwDCQKMI52OQcHVKoitXhQ23vW/nx5dDOXf3vw9VaEsHneCqhbnnwU
 odsL7LxlptQp7F4g5z5DS5lmvAOlBYq0vRj6MxwJNd4NKjkjNZ8afjWOE
 W7jZtnBLwLuca3A81TAHMUjk+yYHTC4VMk1WkrcQxt4HkQCeHphXD+wSo
 iP3HLAqShIbI87dVwJvf6JD0d0NlvnNu9YwtZPpJ+8V2YCdR/o3YOvjY2
 JAYKd29/N1a6b9kSP6v76IFyUOZkYOHNb2p1aj1TzU+Of3DtMiUfV2a9Y Q==;
X-CSE-ConnectionGUID: xx00uRpjTbqTDfIuRH/Xug==
X-CSE-MsgGUID: +8chGaJAQmaV/bTxryKbXw==
X-IronPort-AV: E=McAfee;i="6700,10204,11420"; a="48004396"
X-IronPort-AV: E=Sophos;i="6.15,256,1739865600"; d="scan'208";a="48004396"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 03:09:12 -0700
X-CSE-ConnectionGUID: QF0cg1SkRXO8Cjh85+Em5Q==
X-CSE-MsgGUID: jV6TA4brSQmR1Mr1aIKIjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,256,1739865600"; d="scan'208";a="135574369"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 03:09:12 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 2 May 2025 03:09:11 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 2 May 2025 03:09:11 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 2 May 2025 03:09:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=F7HVw/LpE6amVhuGFOjyv/1XroHv+Owt/PsOaskhPYT+fVBYeJJXxqoAGUa02T7JYrcETFEQFd1cvWX+M/aHyhGfjsdKbQS1eDZTtC0Grb5qy0SNcbWpbpQcc+8p64NLNxOMbhFjA6OKeiy7WmjplKcWp+3KV4zbsOU9vYCg7JfhOpyLyDmsP7f9Ewd/QL67Q5wM1lXYjQSf1x35XZuukBxd+F3YbVHuWpye8RDl6S23Oah5Qimeb/+R+S852ScZAnSORh7XVRDgbh1bv5NrIpMRSGP/Exhip/H2rIP5pLwXFaLDEr+RMhsFPwBno86pfjtvdE0uBZKMqctAvjJ0jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8W41BzWjbx1s+YAe7tIHequHiBpsrMi9C5hNhwsXGhw=;
 b=I1L+tFIopHm8rhkprMLaKw00rZCAgTCHfBrgBaFTRZqddMRXkKuVYEMxKVDgGC3IPT/6OSdDUp+2dCmIu4vKXl2vKsTHScZ4gvc1MCQyFnNgDsgjuPiEqxKob9tpb+OFtNZgxP8sUIQwqVvz0i44GczRoRp5awk69+BzzPwEFxrzpYU5B7k+Vd5JEw06sn9Kyh9OAetyEgiZx5t0gr4UGjQTjQJ7wsGjQTECaYkDOWse+ilkP+0/0priwqwhau3vgtxYvK8hwQirauvzmY5RvNX6hTENE6qjOA+8fwP2M2Jmjkow7YLJ5SXhuXa06jyRbHJkXvBLctxExBeBeeTY6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by SJ0PR11MB7155.namprd11.prod.outlook.com (2603:10b6:a03:48d::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.23; Fri, 2 May
 2025 10:09:08 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%6]) with mapi id 15.20.8678.025; Fri, 2 May 2025
 10:09:08 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v2 0/3] drm/i915/display: remove intel_de_*() compat
 wrappers
Thread-Topic: [PATCH v2 0/3] drm/i915/display: remove intel_de_*() compat
 wrappers
Thread-Index: AQHbuz9CN3JZdNHc4UybRD0CwTFxsbO/HULA
Date: Fri, 2 May 2025 10:09:08 +0000
Message-ID: <SJ1PR11MB6129C18D83A659AC0BBB7382B98D2@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <cover.1746175756.git.jani.nikula@intel.com>
In-Reply-To: <cover.1746175756.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|SJ0PR11MB7155:EE_
x-ms-office365-filtering-correlation-id: 6f4540d9-f1e4-43fb-8f61-08dd896160b0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?VsosPSk/8PDJyw/Z2jsHC6XtvbvPvaYPff5a0sDKOq6fqeVUPUHdNbwViH3a?=
 =?us-ascii?Q?FaictgAsSPOnW3e+9ePhniSy1PHV20TDO6VewZm5oP7z5PbuCDAhMU7gucss?=
 =?us-ascii?Q?5sA4IUOf1tFNxChoxY4GuxSX6nrzfW8T8aGwXCz3xuYTx12GpdjVuOdG6GaL?=
 =?us-ascii?Q?DP24aBTTeQRaRPn590e2jLwZBTljatpEK9hl5zpNfjPWVUZ6TU+vhiTI/Kn0?=
 =?us-ascii?Q?cUAnU0Z23JPLQjHGtEeLOnUzUEBjU9X2P5aL220o2UpKbF1IXhUBxc7pNnur?=
 =?us-ascii?Q?tJYyCMyOjbFutrTf68nnIQn3IHfEL4CLFJ3l8Vqvt0I+WIf8xQDDtnUazTS6?=
 =?us-ascii?Q?HbuWbVaO2SufEf7E6QfCg6PgA609Wi9x+TqzvD//rEVzny0zEQ0gFI5a2cFF?=
 =?us-ascii?Q?mmZRco/ZrBNCW69nb/AVYXLluHL097ceNj6U70pd+2ELLn9TEZD/WiSvuEFY?=
 =?us-ascii?Q?QYhBwBvKlWlTWBP2GkeIkj7JYdAXLsQwGoyionaVHE315sTwNeWwYO2VXKbo?=
 =?us-ascii?Q?g1WOHLNn/2eY5Hyr2UY+MdqNf6+zm5gdM0GZxSWQfxYX+s9KQAFpA6Ivy4TO?=
 =?us-ascii?Q?l1q8BaD6yjkrWUevi3Vc5i1N/4YEgJO0U7xOR5fZ7cCIfutfj9U2C6Be1jPs?=
 =?us-ascii?Q?GT7DBmdbnAm4GvfkG43p2XHsh9BkPGv54qDd7zqrQWwGaR7a4rVOPbfeuC31?=
 =?us-ascii?Q?kTwqXVQFdSYHzpAx8bj4ee7/7YNHlzX3svJQyFEWF3NWsafffppApU2WBTig?=
 =?us-ascii?Q?tVCtYdGE1N6YOiUrkC4/GlQSZU2mFby+VktKxpixYV9/BWkB3hmdGnHk015c?=
 =?us-ascii?Q?8NKGOZOmqRod/wh/L/qbaVPc3Gs5ZjS7gInmV1dv/Q4mj5rp26Jq5RQzNCRq?=
 =?us-ascii?Q?Vu7nyWvzpxPmbesC6VIZXzvEXhMlmcqdoC+kAgdtVHf2zBi8uKNmPY8IpI2B?=
 =?us-ascii?Q?t3PueAuITBPLmuLv4TxQ1ISvHPI4a6EyOWZ+2wHfTbh4HvA4iSKxOJQEvf0V?=
 =?us-ascii?Q?0QfEQKGjP4xon4uWV841jvEysyyYf00CO03ZZawRes7jbK/STKO6iRTsD+9v?=
 =?us-ascii?Q?FYhKBjPcuooYoUVWlb73akeVP50t6VOd8f1Ak5JyjIBuRSniEJ1A9SPn6zEY?=
 =?us-ascii?Q?R1CPi8V6um21SbwaExQlwYDl81RYP0e0Ij+yTW8Z0KMM7szM3B6CoFbdurlR?=
 =?us-ascii?Q?jrc/AgzbjBkTTdjs/05FNi697EI8MsEBXuaWUHxGx9ZW+nBQP/t82B0OoXBg?=
 =?us-ascii?Q?QLE/84kaJIH4yrS5cnsqlI4xn159HAh4Q5g+JJCJK8Hv0t6IFkS3FTcPoup7?=
 =?us-ascii?Q?hHInXG6M0brVijf9F0TUlqu4LupCiL8DkOqIgnyRRte8b1mZa2lUYaHPWtlC?=
 =?us-ascii?Q?nCHEMGjRDQF5nvL8BkeVqOQt9qmYs5hBRdnwStI/xEdc7k1vXvobC7wuD4YE?=
 =?us-ascii?Q?37xrmhk7rnvEIEIYeagViCOKGV7c16WyRgHMJFYRnoCJaVJogN0J6HClYysC?=
 =?us-ascii?Q?P3VkHJsr6QvBSuE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?wU+jpkMnIOtZpBxeCMB0DlIp6vNsmLst4Fn1CMR4goVTz1zfWF3IYTUs6AHQ?=
 =?us-ascii?Q?dTBGmOmARgb7OHCaszpjal/dyEINsAnyH/k6uImZFvMYiMObTtCk8BV1zVqt?=
 =?us-ascii?Q?Q/M2CQKFNe0U3w5JA1MJhVqHZeVVf45JfiZ3zs6ZZTVucjamsfRrH2lfoO7y?=
 =?us-ascii?Q?x0uQ2KepeL828JPW75ZJOyXFsRBwY+7MTtFqjHOYtkfUSXtUEM02PB6zrRmb?=
 =?us-ascii?Q?6AVwcrwQ/K7UZi+bJHy82PTH1TZCuZUzoLrrL7ha1Z5kTAEiicVoq17jm75d?=
 =?us-ascii?Q?a1Szb1p46UbSDxjhGJNWk10y2hvo6H+d4njror1AiqXiaoZIGJRqThXDDJ2h?=
 =?us-ascii?Q?suBiCIbH1onJiqQI/jS0Qo3e15cEWS+elD5XQA2vltJf/+rssejUAkVqScRi?=
 =?us-ascii?Q?rjc5GEwx40CUasQYynodyW4QL8rSc8GvGEztsXq7w3auF7x23KJh+k68gpJ/?=
 =?us-ascii?Q?O61TtDNegTomhydFN/raQ6RML7VhnVCH6Xh2I6CmI51bx2kwhDWaoHeu1+7C?=
 =?us-ascii?Q?xp71Bv97oL15FZ+JCFjdSm/oiylsCUUFyy21I1AMplvEpUFnB8kDqZyOgIny?=
 =?us-ascii?Q?mTygFGBZszEuLdEEMoeB51G4PpTM3oP3i+3/XuSVhC4CJdXJqfqth0hBEOiL?=
 =?us-ascii?Q?ODNB9/scWsiCoGFIYTrz/8DRMsrsoU3VfNLgOoYGzGPA8FKReVq/LVJ7ev22?=
 =?us-ascii?Q?UmQSy7VpCDibJXWeIVTa5eDJ0Y1NGhuqKJ6ictd+9t1e/DyCbvph87mxee+I?=
 =?us-ascii?Q?dsN5WGINvnuYe1BZRhKWfclg8TQDxaCZsPumEHdB93YRnsOr4PTNU7/DwDLF?=
 =?us-ascii?Q?NuAhHexraGiU1o0qlOeUxHoewa1dSFL6DkgVtbebaySAJSEMvYa+NYJ6+4xG?=
 =?us-ascii?Q?DW7i/37yD5B8ZDkvaEcqKueCpQajsR6zfDX1KGMNiIEFHwvzW3pi/K2uth5v?=
 =?us-ascii?Q?whuMqh7/yFlyIYwIZJ032p0CVLkWPG/NL00V1iR9k8ezfwklDYZO+SKo4eS7?=
 =?us-ascii?Q?bxP2IB1RWslje+dC5zVaKOS5ww2SrDusadfYLxYechiko/5BBdXlbB+VRhpg?=
 =?us-ascii?Q?5os66dL6avr+IgoS8l3/qL/xma3hUoHvnoqONYVXFcPE5/ThHoQXtVjfnDqo?=
 =?us-ascii?Q?g1aq/AqZOQ/H8iTJAi1pEDP9wOt/rMaSez+cpyyKbI+gRivdXiwQBH+2XZr2?=
 =?us-ascii?Q?VxTec/XnvJRAbTrwqdSI6qzKv7WtEKzXerA81Zj2Hgzd546KRze4zeDVN6zu?=
 =?us-ascii?Q?GrZatwC2RDY+WLCm1U/6Kg16XZRNCBl8x1Os5MYE7Gaez4q6YlR0bdDLf8cJ?=
 =?us-ascii?Q?mmdZe/32ZMOYIgbIP5GVBlazLvdK2DiOKovg2SwKP2oTjglREGvd+28t9QwO?=
 =?us-ascii?Q?JqsUI2S+OVXU2/lh94KVm8FhUeCkXTlM5mc6aPZjMOOSr6VU+R9nhO5uj+DK?=
 =?us-ascii?Q?Sm4VFA1kJIGu7zCkw1FONLy681pv5mSItP0Dh8njq6trwvOmLrKm8tqoDPdw?=
 =?us-ascii?Q?a56OAJYuVb6WTFmXDMfUHw1KeJuqpsoH/PpQ309408dyjX93frYpX1qlzjwS?=
 =?us-ascii?Q?qtRaB4cWYrGvLkIFCyZXwOvi/kVAx4/kA1Gmtol9SrZsTdbMScRwCKISHMuO?=
 =?us-ascii?Q?8g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f4540d9-f1e4-43fb-8f61-08dd896160b0
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2025 10:09:08.3283 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XjnYDgE86dKEki/3dPL5jx+9b2SP65jEHpW/4NCSYleyS0rX+q8NhVS4F4zyRTLR1SpP141JSMe4M9O6HWRz1u6ht20f531KcJ5CASvKqsg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB7155
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
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Jani
> Nikula
> Sent: Friday, May 2, 2025 2:20 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH v2 0/3] drm/i915/display: remove intel_de_*() compat
> wrappers
>=20
> Rebase of [1].
>=20
>=20
> [1] https://lore.kernel.org/r/cover.1745399318.git.jani.nikula@intel.com
>=20
>=20

LGTM

Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>



> Jani Nikula (3):
>   drm/i915/dpt: convert intel_dpt_common.c to struct intel_display
>   drm/i915/hdmi: convert rest of intel_hdmi.c to struct intel_display
>   drm/i915/de: drop drm_i915_private compat wrappers from intel_de_*()
>=20
>  drivers/gpu/drm/i915/display/intel_de.h         | 14 ++++----------
>  drivers/gpu/drm/i915/display/intel_dpt_common.c | 15 +++++++--------
>  drivers/gpu/drm/i915/display/intel_hdmi.c       | 12 ++++++------
>  3 files changed, 17 insertions(+), 24 deletions(-)
>=20
> --
> 2.39.5

