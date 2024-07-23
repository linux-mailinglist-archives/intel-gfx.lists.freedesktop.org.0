Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9755793A0D4
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2024 15:05:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F246F10E5BC;
	Tue, 23 Jul 2024 13:05:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ISpLIIOU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DBA210E5BD
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jul 2024 13:05:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721739911; x=1753275911;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=09ZSI15Y5rJq4+BBWvxiCeoV6Ci/b1eqQhoPiH1G5Ec=;
 b=ISpLIIOUkvaJCZnLtDgO0os+hV/1DO20TpkBtWd01EiinkogS4B7eZ7S
 OZTiBQZCXjYpLPFH3duMKvguOGIzpkRM4BBJhqDgn8aJc4IBLnY1snoB0
 dRC0vJ49k4a2+7gwGxv3URhTUQkjVpF7klezEjMT5cZBI6akoSYuNe7yP
 h87r6NJziuhltwVUO7NtaqK2LLYq2GPNEpnmCwmnBDyGOSPc2Ls+bcToh
 xs+5AzC/U9bZFnCmBd1H3Fw5zc0AJ5L3Fp5O0uV6Ug/WQkt+uAeVdiROR
 lfPXSNwhBqgPbK+SoQl8713gkijtLJ4INJTJvlPFZvUIVATpnN7yxfifF A==;
X-CSE-ConnectionGUID: 4Gb+qWfAR1iXdsQSALICzQ==
X-CSE-MsgGUID: 29GtqmvGQbmoNj/Zk0VE7w==
X-IronPort-AV: E=McAfee;i="6700,10204,11142"; a="29953274"
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="29953274"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2024 06:05:11 -0700
X-CSE-ConnectionGUID: 8isbLT/DQzGwYaTLu0tcLg==
X-CSE-MsgGUID: vXBqyQgvRemk01LpENvQ8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="51939773"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jul 2024 06:05:10 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 23 Jul 2024 06:05:10 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 23 Jul 2024 06:05:10 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 23 Jul 2024 06:05:10 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 23 Jul 2024 06:05:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZRV12ToU1fqlyHUN+U0Hi3rTTfKZG8+uTtao6UjB+WHO9UG/ZbUm6N2/SkZlKhjyLyP+wmH15q6skQ0EENSCcK7ndwZTPUgSZliUHEhwsLQO1iSJTsGisyy3QSIFT+Irvg/0DaB/+Ea8RyfrKa9BM96rnC2CSkEepQ33OMcf5JWBPsjbVlyrpNn3yw/hJiVn+bgrX0H+qtR80hSVpUMvsxAerbXKFAoq8RHpCZQ8AQGZ+V6h1wRzsYZ2Zlae8XBsiBpUCrTcoMMmeHbWlfN2kRQjXzaSBc+EY5GB5dMATFlpULURhO+WmbCVFt8Tjdcu6cqyr5kG33Z2ZzRm2/xnQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O3ehqHIvb+s0erpyNUX4V78nZvksRqxdxfXdrwicYzg=;
 b=h4d+s5dmEyy/LxUofNCkh8f6YKr4dND4I/iduCwTyFJST9g6V3ITNv6IqDWR8Vjul4rV+DdPeQ7qI/wHz8FstXWqm78aXW0+Pv3xLzDwOuR0WoZmf1grVSlnr7k42PFNqcB5qCPnsI6+3ILjl5vvsQGIzCupNB6D6HAP7IJbgppNYhCDXYgXIpgEzJdRQscVrbx+QTW0FytPMr0rzw/3FinhlTZv45A2Yrq59/5e/tYzYaoSBhutpceSFeOCqohPEoh6+9QI4IPX7ummljOvCpnQjQb04d6HQyI/ta4IJwALFlTlM8XEuO3zsXy6frzI1BGbhJKXZBkADYBjDW7ScA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by DM4PR11MB6285.namprd11.prod.outlook.com (2603:10b6:8:a8::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.15; Tue, 23 Jul
 2024 13:05:07 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.7784.016; Tue, 23 Jul 2024
 13:05:07 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 05/14] drm/i915/dp: Initialize the link parameters during
 HW readout
Thread-Topic: [PATCH 05/14] drm/i915/dp: Initialize the link parameters during
 HW readout
Thread-Index: AQHa3FgHeu4Y5TCCmU+GBSr7ws8+QbID/QdwgAA54oCAABIKsA==
Date: Tue, 23 Jul 2024 13:05:07 +0000
Message-ID: <SN7PR11MB6750AA01482E11B2E0DA977DE3A92@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240722165503.2084999-1-imre.deak@intel.com>
 <20240722165503.2084999-6-imre.deak@intel.com>
 <SN7PR11MB675009A3083E40276CD2BC3DE3A92@SN7PR11MB6750.namprd11.prod.outlook.com>
 <Zp-bLSQb5wr4-uq6@ideak-desk.fi.intel.com>
In-Reply-To: <Zp-bLSQb5wr4-uq6@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|DM4PR11MB6285:EE_
x-ms-office365-filtering-correlation-id: 92be7c5f-b22a-431e-a073-08dcab18136d
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?UUPDxA8LnBKE90keoH1B5uZVQYAPfZaFH3+XFMLcdqQ1gR1UopR8bO4Pt0MG?=
 =?us-ascii?Q?GTquOvc7V/2xz9xHtG8iGV3vRHTsJykmj/5V72ttmUMsf2J31HnjYy/WngNi?=
 =?us-ascii?Q?Ol3frRCRkpXaJ2ZIjKP/jpfqZbscf5OSqrQdQSEP2ZSGz8vKCo6tS3b+6qEw?=
 =?us-ascii?Q?e5xAPjQY6+XvCkCi9fEw7nplIk15ND2A3n6cS51YY6DNIXYINkDaacOKW3Yl?=
 =?us-ascii?Q?CNeJXKmgQL15UWzcWc5htrf41kIt2zLt7IzXXeszT0WFEUyO8+q3k1P9W1Kd?=
 =?us-ascii?Q?tqWbSjBc2GIelCQlsk4ZKHLZbIbTeS+DE1aRdM3H/qqnRoh/TOmRhRsqtwww?=
 =?us-ascii?Q?8+Fe75VMTaDA8H3kAtwTgWK8lN6QQKHFr5VPxdCBmHi8WaL4MXXd/43cl9Bt?=
 =?us-ascii?Q?aiPrKbabkSQPClKv79f9mveuyg7nppB/NEbUy0UBM2e8IGmUqR1NGwZDR4/M?=
 =?us-ascii?Q?jAcDDRJql/JWTat0FDQJzyFvBafH+TjRh6Onjk9Wu1giOlX++Wz0l06pS/Th?=
 =?us-ascii?Q?MIMJ210bbEbduYJA4Zf4T4A0/jSA2G9fjWv1XQTqeSLiPAaO5P6DdOZTVmut?=
 =?us-ascii?Q?IDF1yGqHcSKUgLIUfA3RLGPp3tXhhR9VSNSv67Y0SQvJI5ymN/r1p9JjEhbk?=
 =?us-ascii?Q?vWf9XEv/Jv0Wm51tlMLikoKRE2EGVbFhNwtEXTZYMOEeMdbTZnrpJqznHK8I?=
 =?us-ascii?Q?5WI0m2Uc2WGhXXGxtPZHJVBQ4Moh8sHR9PQDv4icWogDUs8JlTkIPWvYjQyp?=
 =?us-ascii?Q?5u5DIVzhuOqxNPx0BxmxWc+Xxc+Fcnr2Sk7Dr17hGjvosJSXCfdV6BUc4WjK?=
 =?us-ascii?Q?QTfH8TwWTRQ9dQqgjXEBU0UK1s6X5byavhPLLBaEJYRjJPoMtlI+IzYO+7sK?=
 =?us-ascii?Q?2o4VhS11I9QxlqKk8FMx/Fq9iOMv/sSWQ8n7v+g0p8KgAGh/AxhZ3kAlahrH?=
 =?us-ascii?Q?NMUC3zqKWRWWrcOzzUgw0QKpH3L+KisDMy5IS8w05QTHSlRxvbWWWfbX3dFT?=
 =?us-ascii?Q?PF4hVKb/nklmPpTR2uekaBpb1MGzwrHCa3sETrzPo1uYe+NCLqnYqzIbo3VS?=
 =?us-ascii?Q?HbXwojfn1xFsUAwXUnOw8BKIq5Er69Qt+/DR4ywZYwChJTZc2M9rXdg4pOCE?=
 =?us-ascii?Q?+TX7WsMVH+DMmwQtzuc9ZXZQQNnbs7tRRYi+TycVEFP+K8A6GF+Wm6tafgE9?=
 =?us-ascii?Q?Ap87lXFvTxqLPprjQOzuPVokYnoSsUo+6QbFE6S0svAK+6Y8GWG335KaL8WI?=
 =?us-ascii?Q?dGvsZcjHUgg3bOmXM3thBZWfDSOfWO/ZapCQXG8YVidBwfZat3xeD2FVMVzI?=
 =?us-ascii?Q?GF1iI284435djir81hm11vAqpwzfCihRYbufb9WdENGzADMJtHOZ/u9O441a?=
 =?us-ascii?Q?xpBRzXlVz6kKMi6qoHP/E3u0wJG4CpuQNl1w8jTpw3fyubdXJg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fqQpwmQ1lFbvg9DPAGyT0782NXZfhsjBTwsxtTWd33r89vzm2cHMCHGCbk6s?=
 =?us-ascii?Q?inmq+DoG9UBxtAWkix/Aw2+CWo43/LMXvRCNwnSCLfPFWlYePHjruettnA5p?=
 =?us-ascii?Q?+JqDaactgMzJgLGThXyr0CyZNYkk71PyBV8T9MFs6fvsweko74UntxV8U4EH?=
 =?us-ascii?Q?RqYc+V04m8dHZ6BJQvq7jyhuqSSa44eR/P3BiDmhOPLeuhATVLqaRTj75hrT?=
 =?us-ascii?Q?cYJToKIEipPx1ws2vK2T85Juws07+bihQnDwvqGd8+6FCkhS47GmjnekoZJ1?=
 =?us-ascii?Q?/pu9z7GEiyT1hlTVMX+mieNyKXyRxlL4UnGtP6ch+Xk/qXQ1EXv+1OROJXF3?=
 =?us-ascii?Q?ZxNYghILb2+osCpk3VU6A0vkiTUstUl9aZ3tLqNfoxQdBhAyg7meV35IoPlw?=
 =?us-ascii?Q?CRH7GrKJqA04kB+tO/ING8Hn/SUOHl7mqYeMEpb9ULvOWp9iM1dyOSc18x1d?=
 =?us-ascii?Q?cEDTrWjP+/mKL4vsQG5COfuOwMk+a0E94Dp8Q7LlVB8FfL2N8JXyoV+qV+xb?=
 =?us-ascii?Q?W/yd6hYBA9M0JmCm4hg14Ed/WSSl5RCutLPTTV7nzSGln+hXPAvUlbahkLU7?=
 =?us-ascii?Q?s0DMAs0fyjJCwU6CRGS8Q3OUBuGMjgsv2H1mfnwFWZc8pfq/cED3r+AZhkxA?=
 =?us-ascii?Q?elnoae7Q1r/yLmTFA75lvksEnq7O1dObElJSPiqP9WrsevcVl7CTpL+iOQMg?=
 =?us-ascii?Q?aAGXt3YJ8gEmjJlPOTzedZ5ewQ8aDpWWcNlZk9uFg0s+aghFDLo9TgKzwSVt?=
 =?us-ascii?Q?732lIKUshvt7uG9e/dMF7AZvcR59W28QoheW3j8L5LITGC2a1ji8B7wqjWAO?=
 =?us-ascii?Q?grqW5GuQPLwRcfqtXfTY0ep7EtD5BDxwm0dxhmE/Il+hZuYQ6reG0DUWSoxy?=
 =?us-ascii?Q?EDInFEgabHS/FkodMi0kguqrBxzLVRp4MN4ajHCM9A7lNskFhHdtncSh/PGA?=
 =?us-ascii?Q?Zw+1+8L+7tfa8GOehyZjw+cUx0ZBUOtHo1CpIZThnkvBOeHEV3SAmwC4FKH6?=
 =?us-ascii?Q?+hiL0JEW8r7KwU5hbB9yeQR/UiaUzmKu0HPkApL6FGC7xNbx0T2nDzKIDmol?=
 =?us-ascii?Q?cdidRGT4I/OUQaK/IHWzUN699cm5DNxkJKMXcEBQl4ff634CZ6NLF0ZY1haV?=
 =?us-ascii?Q?wCI7VTvPh96Ws4ab7je4r49Ss22za/TVdTYrMYRjPjj4IMjbI+A/Osbc+Upc?=
 =?us-ascii?Q?REun40/a3f7XoZwGEVPiddxUG/dV4K4bO478oGdm/KHd1Qm+KVa5zdUIB/ym?=
 =?us-ascii?Q?GyIoCSQuzt5BBkC5PUB+OgDO84zT/4cTXyyKej4HTbCs5bN9ssSCotmJDi2R?=
 =?us-ascii?Q?WuU0Gx+Ern9X5L/RVqF+6KBGOICjEDIk40K9UtVtBqWWmnlrZqjAp+hwJaWh?=
 =?us-ascii?Q?nQO/bXYf/Fy21CZFTBr7GWWCR82jUmMfwEqwsAxQuGJ+xeOOoC+VxcGWHI9K?=
 =?us-ascii?Q?XJyFLlKb8PTrVspHpmiHC1immUj2dinzhfsD832niZd1KWr3HR/NeiKXbpMG?=
 =?us-ascii?Q?0wXY05bj8H97gpLR4HUS6Ju66n+Opofwcb8M1EM/H668Ku7M+vEJLNP9Mq+u?=
 =?us-ascii?Q?b6pOH8AV16avF7W0W4rk60Kh46Y+KKb0Eizky41e?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 92be7c5f-b22a-431e-a073-08dcab18136d
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2024 13:05:07.2924 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1oh6a5xUpXZjFo++rTmC2F63iEJw9a7HtT8Jq5J6j0WNpiXQYzHCJLZ19s5HZk4htIXvY4NOob3LPwQOqsGOWw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6285
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
> From: Deak, Imre <imre.deak@intel.com>
> Sent: Tuesday, July 23, 2024 5:30 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [PATCH 05/14] drm/i915/dp: Initialize the link parameters du=
ring
> HW readout
>=20
> On Tue, Jul 23, 2024 at 11:34:58AM +0300, Kandpal, Suraj wrote:
> >
> >
> > > -----Original Message-----
> > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> > > Of Imre Deak
> > > Sent: Monday, July 22, 2024 10:25 PM
> > > To: intel-gfx@lists.freedesktop.org
> > > Subject: [PATCH 05/14] drm/i915/dp: Initialize the link parameters
> > > during HW readout
> > >
> > > Initialize the DP link parameters during HW readout. These need to
> > > be up- to-date at least for the MST topology probing, which depends
> > > on the link rate and lane count programmed in DPCD. A follow-up
> > > patch will program the DPCD values to reflect the maximum link
> > > parameters before the first MST topology probing, but should do so
> > > only if the link is disabled (link_trained=3D=3Dfalse).
> > >
> > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dp.c | 5 ++++-
> > >  1 file changed, 4 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > > b/drivers/gpu/drm/i915/display/intel_dp.c
> > > index 1e43e32e05199..421e970b3c180 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > @@ -3352,8 +3352,11 @@ void intel_dp_sync_state(struct intel_encoder
> > > *encoder,
> > >
> > >       intel_dp_tunnel_resume(intel_dp, crtc_state, dpcd_updated);
> > >
> > > -     if (crtc_state)
> > > +     if (crtc_state) {
> > >               intel_dp_reset_link_params(intel_dp);
> > > +             intel_dp_set_link_params(intel_dp,
> > > + crtc_state->port_clock,
> > > crtc_state->lane_count);
> > > +             intel_dp->link_trained =3D true;
> >
> > Why are we setting link_trained as true here.
>=20
> link_trained indicates whether the output is enabled or not, which must b=
e
> in sync with crtc_state being NULL (output disabled) or not NULL (output
> enabled).

Okay got it=20
LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

>=20
> > Regards,
> > Suraj Kandpal
> > > +     }
> > >  }
> > >
> > >  bool intel_dp_initial_fastset_check(struct intel_encoder *encoder,
> > > --
> > > 2.44.2
> >
