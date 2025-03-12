Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EBC0A5D598
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Mar 2025 06:34:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7314610E6C6;
	Wed, 12 Mar 2025 05:34:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OqBpjxGw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84C1810E6C3;
 Wed, 12 Mar 2025 05:34:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741757651; x=1773293651;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=He0uQ7sl82MZ6K1f51nJ26w1ImYGdX6EdlrBcq37gfQ=;
 b=OqBpjxGwGaBOVQwwqxVlcep6ffQPhZQB7j32tckf2+xwvsN0Euc+GVc/
 tZaRDzbRD6jbOEAzOSsl1NTYxx+nVDcm71Is49LQEnje6LaLv9AOw9SAA
 LW/Swv8P1m+/GW4e8DjhJINcmuVCRpKmVwjVFNz2dNKMtzm7DvHnU1wAV
 ++XquA0DXbYEomh7d7qYG2xWxTGLdAsp9yAWsB7hTYxM3fesHALvNcEfK
 pgbJbFSWYg2SZD1CZGCdLu7pq54gn9SOWquYvfuRv8lihW7ExEVinzv6S
 3twd/EEMcQsqbNRftYvmg2d/WJQvD+HFBO8u6Fmd3HF4IExpyI1bVPUhd Q==;
X-CSE-ConnectionGUID: aUl1U2xuRbSG77lbYvM+PQ==
X-CSE-MsgGUID: FLKc6wDmScKilC0U8eOT2A==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="30399312"
X-IronPort-AV: E=Sophos;i="6.14,240,1736841600"; d="scan'208";a="30399312"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 22:33:54 -0700
X-CSE-ConnectionGUID: YAuGh0BfRwG8KNpqmfuqnA==
X-CSE-MsgGUID: VNjgvqkITuWpGAQTwb89wA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,240,1736841600"; d="scan'208";a="121433041"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Mar 2025 22:33:50 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 11 Mar 2025 22:33:49 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 11 Mar 2025 22:33:49 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.45) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 11 Mar 2025 22:33:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TSXRCh7N2Lieg81QOI6H/8aNC2HO+309MucpyGCEiPWzI0kyrgTWQTIMozhWjtsVuaFiwtLSGBnarR5ZCeP0k9zOVQ21RXevyVU73I6VKqnKlYZsAuX3s8wOZAi4S4RKlU+DDsw6JIEHiiPqAZ3pGoglK0crupIMXHR7UJi2eVC5EzzjFh+a+JqGW2jVhT5ZAN8Y5QyoIuOOD5rxePmDjC1LgvbRuEVNEqbdWB1u8jcSUZ4NUnPoTCL+T4GbwsejX5yW0jPIDQRqG5Z+pXeyQnIrMAmhudnGzGBQs6GlgWc7eIUu3dR0lTuWNk6F9782l2jX3w7P8+SX5qLxHBRKmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LrqxgpChfKEp9ySbpZs/7pgNg/PCepOsaKp5RCUj4+I=;
 b=BKgVFy2ZduHwGOqJJvqiazJlBzJIvBXxtb7NTTcu17AcofBMhofK7CtggtZs6mGIZYN3iJ/99OD3n2gij8T1irKsOeZFU9tijIRxeSlZXd2ou8Wx8Ke2jHCnTvU+m0+MhDMHj0LGZTcOO/SpXKNCJZcKrjuSTD1B6Gblnq5fBsktCw/m3tYQU1xYv7Xn6PPiLL8MwATt21zd3eJaiELYJywiquRxFo8sXzkTCn4CcPPPEDlU7rJQukl1nLMTEf3CIJI45AjvK/17JaG4o52+NHiBC3lQ3sASQFNC9ShnJVKwa7E7FBvPBrilhu/EYn9IqA4qXeoWlWDT5BqGTrIEzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 MW6PR11MB8409.namprd11.prod.outlook.com (2603:10b6:303:24c::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Wed, 12 Mar
 2025 05:33:46 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%6]) with mapi id 15.20.8511.026; Wed, 12 Mar 2025
 05:33:46 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH 6/9] drm/i915/hotplug: convert intel_hotplug_irq.[ch] to
 struct intel_display
Thread-Topic: [PATCH 6/9] drm/i915/hotplug: convert intel_hotplug_irq.[ch] to
 struct intel_display
Thread-Index: AQHbkq+udYFKFQRxV0qqyrit0M+nsbNu+yBw
Date: Wed, 12 Mar 2025 05:33:46 +0000
Message-ID: <DM4PR11MB6360CEB7C950591B00712248F4D02@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <cover.1741715981.git.jani.nikula@intel.com>
 <ddd55008c801cca921549a327f1bf556ccab7192.1741715981.git.jani.nikula@intel.com>
In-Reply-To: <ddd55008c801cca921549a327f1bf556ccab7192.1741715981.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|MW6PR11MB8409:EE_
x-ms-office365-filtering-correlation-id: 75c18da8-0985-4a1e-9824-08dd612775be
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?hNXSu7odFpHAbash5dsPDf+j8uaKwL3WZBd0KjdFJ+PorzmzHs4F3BS6lrGe?=
 =?us-ascii?Q?KfBfyqailh30XcnZJhMe2CR3ecjKetKja8N6xbuMI+2X9vjQhx6/EjaNw9rU?=
 =?us-ascii?Q?T+yde+H80AolYD1tecJdF2+XcQicM8sHaz67RpVmAfyQ9fKFOmqoF6QoTrFy?=
 =?us-ascii?Q?D679WpcqAEPGVttrERmRk79Q4NY2jQ4xm2zjK5JhxiUw4xV6m2KHV6sKALYa?=
 =?us-ascii?Q?nRscsasrGC9ujfK7PnoWtQ2FoZB6gZGQSYc4PMn0Y2xKszcQ5gGTU5vb73Xp?=
 =?us-ascii?Q?ENb4tB9dmOLfoFw51Cg+R4LSlWaKArDNUCcZCdP8SVBC6bNp4JkdqrfvtIqG?=
 =?us-ascii?Q?EHkkqIXzY2xPL2noIS73eZvK7CK4KV83io+9PZLYU6nx7DrtiubZojqC+hS4?=
 =?us-ascii?Q?ORZtQjJm8O9PIRTO8aYeSW3Zg5mReq/1eVVt2KrHqD5l1x3eqS4HmcYIOMkB?=
 =?us-ascii?Q?/e+lzdrMG9kjaYv0BwVNhveXrBcvbTtOI5JUX+eDY4IjkuyoXrpFGmm7hx4v?=
 =?us-ascii?Q?4b6qdch7b0LkkWKKeWDHqLbln1XpA3KoGo0oZHbCE+BEBjtUAJE6oVYO4Jrh?=
 =?us-ascii?Q?E9MEm9XdXdagUO91qjRMDZgPPt6wPLqCNZfkBqtCWIqDMdgyrhx3KPZ5+cx6?=
 =?us-ascii?Q?YQdxx8Y9zexsPlTdgsb+bos4FnVs41ydqKs3XCJ9sCY6sV6Il9kgYRJZfIRn?=
 =?us-ascii?Q?5K8ZMAtqm8cCWmdpEwMv1ck6ap4BTe6NDGXX6tfPpgvSGCyX2bBXo9HSb3Qe?=
 =?us-ascii?Q?4Gn7JqgRUbvcQZZ1bVbFUjeYnAkNDeb5BNtaJzWCUEZyXRxKesJYZyPcDiDw?=
 =?us-ascii?Q?DNskgfm+UqUPoAbB1VeHVYlpj1qqCWxbaAamedsgFoOjXOM6Jco54uDLoBsP?=
 =?us-ascii?Q?7idKJG6fnsnNOWcTvQt7V75k2TqQ/+KjMCeyDli067zrkVGbObAWMX6A4o3y?=
 =?us-ascii?Q?3qopM/0ndnJcgxFYHEXHN8ptpHjbUhjCLXYeAl353kocPRtr3mNfdGHbgOKn?=
 =?us-ascii?Q?WkTNvjQiKolftoOwu/xSygStAlw6PYd7NbodfqfVyaMCEh98d++QB7Mn2Mt5?=
 =?us-ascii?Q?QsFYNq+OA2IpCBAuwM3N7VzIlUeyzeCbn+7mHUBKEC5J8fglar/hFf86Xp1E?=
 =?us-ascii?Q?2ijo9SbwphgfSE8DO7VvYLADzmghtOMheF7y2mzWYsCWHM3M2ooFR0zw/D38?=
 =?us-ascii?Q?qLd6XyTW4JwGjHG3bqgO+vrcW4h+L8Ht0piIQvTBy2m3pcNNQAdE1K1dFXpA?=
 =?us-ascii?Q?Q0I76zoWduY5lnIFdaPW1inOMRhqZe6dPuZSBDJkeOOclpLrxthBLspCUoR1?=
 =?us-ascii?Q?FPbtgD2aEU4yguXavh2w6thrRvJOuCQUYcsEg3k6Em0Rsq93sLzxhYO+/atu?=
 =?us-ascii?Q?vmR/JfBiy9VZUqgl3BECxXWHpEPiM17xvLU7GidA7Z+ycSfrXJ/L6nWEPjmA?=
 =?us-ascii?Q?KPDBzz2nA8Jrg6coWFdI5d71qe2HlNGu?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?cHRGCDQ/SICfXWz0ixivQC/ytbLHUbZKEj+oaP9TcYiUs24GrVRoDxif4448?=
 =?us-ascii?Q?WL4d4wr/NILgATRg2KZmVrj3G4+49oUgArakLmU2xWihQnQ76e8UkytIklMr?=
 =?us-ascii?Q?Ci/qrjOG5mv1kdRJXApp2CdZpE9yp3/JAlPFRbFfn0zaiF5a1Dp4+FfHZbTC?=
 =?us-ascii?Q?Ynvhn9Lf7HXq4m7GuwnRTMGMHcbzNmTkoAt2jXXv8t2b+kjKx/dhqJDU6ryj?=
 =?us-ascii?Q?18f/qEFhaYLbxZEzCnvOWAiTT6rVgb/+Kl7q50xuDxkMLxIOyT9cfrwGrv/Y?=
 =?us-ascii?Q?CD2IYR1GsLTOgB4IJpd88DThdmnwAhj51WP1rk4p7jbRwsyeDN9Euhd00ZKR?=
 =?us-ascii?Q?dTqxCnXr9dp92Re1MIm83dF8h1RJ0SmI7e2caR7OzpoKAhxO7vToVTwNUM40?=
 =?us-ascii?Q?1B2G1dc01l/O6pg+ocHp9gkwwXcFc/7Tj6ow5F2/JlKORfwZH6EUFWLTc5pw?=
 =?us-ascii?Q?qGxaVVn9purypsuWnrrkoxWoUh08V33G0Gf5fErrhDqk6BKVJmmJoaqmzlur?=
 =?us-ascii?Q?gPRSjWkc2KJUdTUVIJZvFC3MlOhaD9HOGJFgmsNnRF496T3WF1+tjz41BDY8?=
 =?us-ascii?Q?cVUemxTOTMoOThOfa55LV7k48Jx58l+yefQ21TxDmJxbOaXI/ejOWoSc8rGb?=
 =?us-ascii?Q?5qxm41niIw+iaMKh+FItQ4rJJsaMpkM6QX7D/+hIj3qBb1SfkvpfT/R0H2xC?=
 =?us-ascii?Q?Kz8lxDO9hSkdyYvq505/LsnDl/jUhrlJAC0Fk78d/15yuS39Wg6JsoqE9GiZ?=
 =?us-ascii?Q?9EpcCtt2/C/HopR1DqMQlBeRdCZ5IPiY9DqzP6zUMSfYz35QKM0yqX/O1HB2?=
 =?us-ascii?Q?XUWcDuGRdHF3uGJ5HPFAMG/2uOEJx2bd3ShKZ0aRW69h3QLjGqDUQdlNclsW?=
 =?us-ascii?Q?dQzwiYsN477AeWqbYFiXWGDCGomm8QyGWjDIyB0fSkPI5faG8+1ZiZpahgdQ?=
 =?us-ascii?Q?jArDYlTVu244yo1myb0b3iUj7a6HIydI+BQG58qJ/CgNdnglBoeMfZ/Ovauj?=
 =?us-ascii?Q?NQKPBwa0Wy7ipU0rB2gxa3x69FlJd4C8ph/T2DVpWkoFmBKS3FN8bUdz8qAm?=
 =?us-ascii?Q?AzteYarSDhtqr9RZeX1HwwWCb5IkkUenxslKrsyBjtzc9MB8jhR8rPr7vY+Y?=
 =?us-ascii?Q?wRAJEjrCWWBbDyoZ9oVmaCRhRE2+G3AhCNSjouz872uNsviCXN7eNwEIuLZp?=
 =?us-ascii?Q?TfJuvGj7Gi8rGezzjoD1FVBs/RyMISIvgTJVuQyUMiX1qeLkpjN6iVagdkfx?=
 =?us-ascii?Q?Gpbl51SKd59jjJqoxVxOSCyFhQG9YAmZKarN2xfjj2OJywIknzcsQ+Hf1EB7?=
 =?us-ascii?Q?LltbMZ6vIHhZXHvMp4U7oBaNbsWAVvXXmfya79EYlXf5QOhxpoevulrLDjy/?=
 =?us-ascii?Q?8w/Al53TlgkHGZ3S/u6yABRgkxhG4m/cpcc6bYyy8baMcs80oLeSVAehIAbb?=
 =?us-ascii?Q?5OoN7LbixHPGOApuwJ4R7XTYXMBEeP+TYoiXAtjSyQytd5IgtddOPFArUQHy?=
 =?us-ascii?Q?EwFYFBS6wD4RJsfkphxuXgU2aUsl+nzlddbks01gTUpJGAJrf0HAol/5eNtY?=
 =?us-ascii?Q?00yVcSwVyZi6ccGecR1mrliVUHDhknP9JzlgH6N5?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 75c18da8-0985-4a1e-9824-08dd612775be
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2025 05:33:46.3310 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CJvf5HJztjxcCfeYTi/AMJJK/RqGmj36ZrupDGCtbDMnjMNnpLlbJXbFjDn5s3MSRstFvuEc/39Yx2D693R/Dg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8409
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
> Sent: Tuesday, March 11, 2025 11:31 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH 6/9] drm/i915/hotplug: convert intel_hotplug_irq.[ch] to =
struct
> intel_display
>=20
> Going forward, struct intel_display is the main display device data
> pointer. Convert as much as possible of intel_hotplug_irq.[ch] to struct
> intel_display.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_crt.c      |   4 +-
>  .../gpu/drm/i915/display/intel_display_irq.c  |  33 +-
>  drivers/gpu/drm/i915/display/intel_hotplug.c  |   6 +-
>  .../gpu/drm/i915/display/intel_hotplug_irq.c  | 474 +++++++++---------
>  .../gpu/drm/i915/display/intel_hotplug_irq.h  |  28 +-
>  drivers/gpu/drm/i915/i915_irq.c               |  18 +-
>  6 files changed, 276 insertions(+), 287 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c
> b/drivers/gpu/drm/i915/display/intel_crt.c
> index bca91d49cb96..a7f360f89410 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> @@ -606,7 +606,7 @@ static bool intel_crt_detect_hotplug(struct
> drm_connector *connector)
>=20
>  	for (i =3D 0; i < tries ; i++) {
>  		/* turn on the FORCE_DETECT */
> -		i915_hotplug_interrupt_update(dev_priv,
> +		i915_hotplug_interrupt_update(display,
>  					      CRT_HOTPLUG_FORCE_DETECT,
>  					      CRT_HOTPLUG_FORCE_DETECT);
>  		/* wait for FORCE_DETECT to go off */
> @@ -624,7 +624,7 @@ static bool intel_crt_detect_hotplug(struct
> drm_connector *connector)
>  	intel_de_write(display, PORT_HOTPLUG_STAT(display),
>  		       CRT_HOTPLUG_INT_STATUS);
>=20
> -	i915_hotplug_interrupt_update(dev_priv,
> CRT_HOTPLUG_FORCE_DETECT, 0);
> +	i915_hotplug_interrupt_update(display, CRT_HOTPLUG_FORCE_DETECT,
> 0);
>=20
>  	return ret;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c
> b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index aa23bb817805..b37bcb8fb2e8 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -675,7 +675,7 @@ static void ibx_irq_handler(struct drm_i915_private
> *dev_priv, u32 pch_iir)
>  	enum pipe pipe;
>  	u32 hotplug_trigger =3D pch_iir & SDE_HOTPLUG_MASK;
>=20
> -	ibx_hpd_irq_handler(dev_priv, hotplug_trigger);
> +	ibx_hpd_irq_handler(display, hotplug_trigger);
>=20
>  	if (pch_iir & SDE_AUDIO_POWER_MASK) {
>  		int port =3D ffs((pch_iir & SDE_AUDIO_POWER_MASK) >>
> @@ -812,7 +812,7 @@ static void cpt_irq_handler(struct drm_i915_private
> *dev_priv, u32 pch_iir)
>  	enum pipe pipe;
>  	u32 hotplug_trigger =3D pch_iir & SDE_HOTPLUG_MASK_CPT;
>=20
> -	ibx_hpd_irq_handler(dev_priv, hotplug_trigger);
> +	ibx_hpd_irq_handler(display, hotplug_trigger);
>=20
>  	if (pch_iir & SDE_AUDIO_POWER_MASK_CPT) {
>  		int port =3D ffs((pch_iir & SDE_AUDIO_POWER_MASK_CPT) >>
> @@ -901,7 +901,7 @@ void ilk_display_irq_handler(struct drm_i915_private
> *dev_priv, u32 de_iir)
>  	u32 hotplug_trigger =3D de_iir & DE_DP_A_HOTPLUG;
>=20
>  	if (hotplug_trigger)
> -		ilk_hpd_irq_handler(dev_priv, hotplug_trigger);
> +		ilk_hpd_irq_handler(display, hotplug_trigger);
>=20
>  	if (de_iir & DE_AUX_CHANNEL_A)
>  		intel_dp_aux_irq_handler(display);
> @@ -953,7 +953,7 @@ void ivb_display_irq_handler(struct drm_i915_private
> *dev_priv, u32 de_iir)
>  	u32 hotplug_trigger =3D de_iir & DE_DP_A_HOTPLUG_IVB;
>=20
>  	if (hotplug_trigger)
> -		ilk_hpd_irq_handler(dev_priv, hotplug_trigger);
> +		ilk_hpd_irq_handler(display, hotplug_trigger);
>=20
>  	if (de_iir & DE_ERR_INT_IVB)
>  		ivb_err_int_handler(dev_priv);
> @@ -1382,7 +1382,7 @@ void gen8_de_irq_handler(struct drm_i915_private
> *dev_priv, u32 master_ctl)
>  		iir =3D intel_de_read(display, GEN11_DE_HPD_IIR);
>  		if (iir) {
>  			intel_de_write(display, GEN11_DE_HPD_IIR, iir);
> -			gen11_hpd_irq_handler(dev_priv, iir);
> +			gen11_hpd_irq_handler(display, iir);
>  		} else {
>  			drm_err_ratelimited(&dev_priv->drm,
>  					    "The master control interrupt lied,
> (DE HPD)!\n");
> @@ -1405,14 +1405,14 @@ void gen8_de_irq_handler(struct drm_i915_private
> *dev_priv, u32 master_ctl)
>  				u32 hotplug_trigger =3D iir &
> BXT_DE_PORT_HOTPLUG_MASK;
>=20
>  				if (hotplug_trigger) {
> -					bxt_hpd_irq_handler(dev_priv,
> hotplug_trigger);
> +					bxt_hpd_irq_handler(display,
> hotplug_trigger);
>  					found =3D true;
>  				}
>  			} else if (IS_BROADWELL(dev_priv)) {
>  				u32 hotplug_trigger =3D iir &
> BDW_DE_PORT_HOTPLUG_MASK;
>=20
>  				if (hotplug_trigger) {
> -					ilk_hpd_irq_handler(dev_priv,
> hotplug_trigger);
> +					ilk_hpd_irq_handler(display,
> hotplug_trigger);
>  					found =3D true;
>  				}
>  			}
> @@ -1498,12 +1498,12 @@ void gen8_de_irq_handler(struct drm_i915_private
> *dev_priv, u32 master_ctl)
>  		gen8_read_and_ack_pch_irqs(dev_priv, &iir, &pica_iir);
>  		if (iir) {
>  			if (pica_iir)
> -				xelpdp_pica_irq_handler(dev_priv, pica_iir);
> +				xelpdp_pica_irq_handler(display, pica_iir);
>=20
>  			if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_ICP)
> -				icp_irq_handler(dev_priv, iir);
> +				icp_irq_handler(display, iir);
>  			else if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_SPT)
> -				spt_irq_handler(dev_priv, iir);
> +				spt_irq_handler(display, iir);
>  			else
>  				cpt_irq_handler(dev_priv, iir);
>  		} else {
> @@ -1904,7 +1904,7 @@ static void _vlv_display_irq_reset(struct
> drm_i915_private *dev_priv)
>  	gen2_error_reset(to_intel_uncore(display->drm),
>  			 VLV_ERROR_REGS);
>=20
> -	i915_hotplug_interrupt_update_locked(dev_priv, 0xffffffff, 0);
> +	i915_hotplug_interrupt_update_locked(display, 0xffffffff, 0);
>  	intel_de_rmw(display, PORT_HOTPLUG_STAT(dev_priv), 0, 0);
>=20
>  	i9xx_pipestat_irq_reset(dev_priv);
> @@ -1924,7 +1924,7 @@ void i9xx_display_irq_reset(struct drm_i915_private
> *i915)
>  	struct intel_display *display =3D &i915->display;
>=20
>  	if (I915_HAS_HOTPLUG(i915)) {
> -		i915_hotplug_interrupt_update(i915, 0xffffffff, 0);
> +		i915_hotplug_interrupt_update(display, 0xffffffff, 0);
>  		intel_de_rmw(display, PORT_HOTPLUG_STAT(i915), 0, 0);
>  	}
>=20
> @@ -2348,10 +2348,11 @@ void dg1_de_irq_postinstall(struct drm_i915_priva=
te
> *i915)
>=20
>  void intel_display_irq_init(struct drm_i915_private *i915)
>  {
> -	i915->drm.vblank_disable_immediate =3D true;
> +	struct intel_display *display =3D &i915->display;
> +
> +	display->drm->vblank_disable_immediate =3D true;
>=20
> -	intel_hotplug_irq_init(i915);
> +	intel_hotplug_irq_init(display);
>=20
> -	INIT_WORK(&i915->display.irq.vblank_dc_work,
> -		  intel_display_vblank_dc_work);
> +	INIT_WORK(&display->irq.vblank_dc_work,
> intel_display_vblank_dc_work);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c
> b/drivers/gpu/drm/i915/display/intel_hotplug.c
> index 7683b3ce124d..fcc3f546cb97 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
> @@ -305,7 +305,7 @@ static void intel_hpd_irq_storm_reenable_work(struct
> work_struct *work)
>  			display->hotplug.stats[pin].state =3D HPD_ENABLED;
>  	}
>=20
> -	intel_hpd_irq_setup(dev_priv);
> +	intel_hpd_irq_setup(display);
>=20
>  	spin_unlock_irq(&dev_priv->irq_lock);
>=20
> @@ -696,7 +696,7 @@ void intel_hpd_irq_handler(struct intel_display *disp=
lay,
>  	 * happens later in our hotplug work.
>  	 */
>  	if (storm_detected)
> -		intel_hpd_irq_setup(dev_priv);
> +		intel_hpd_irq_setup(display);
>=20
>  	/*
>  	 * Our hotplug handler can grab modeset locks (by calling down into the
> @@ -745,7 +745,7 @@ void intel_hpd_init(struct intel_display *display)
>  	 * just to make the assert_spin_locked checks happy.
>  	 */
>  	spin_lock_irq(&dev_priv->irq_lock);
> -	intel_hpd_irq_setup(dev_priv);
> +	intel_hpd_irq_setup(display);
>  	spin_unlock_irq(&dev_priv->irq_lock);
>  }
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> index f24c65478742..e44ae6acc55f 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> @@ -131,30 +131,31 @@ static const u32 hpd_mtp[HPD_NUM_PINS] =3D {
>  	[HPD_PORT_TC4] =3D SDE_TC_HOTPLUG_ICP(HPD_PORT_TC4),
>  };
>=20
> -static void intel_hpd_init_pins(struct drm_i915_private *dev_priv)
> +static void intel_hpd_init_pins(struct intel_display *display)
>  {
> -	struct intel_hotplug *hpd =3D &dev_priv->display.hotplug;
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
> +	struct intel_hotplug *hpd =3D &display->hotplug;
>=20
> -	if (HAS_GMCH(dev_priv)) {
> -		if (IS_G4X(dev_priv) || IS_VALLEYVIEW(dev_priv) ||
> -		    IS_CHERRYVIEW(dev_priv))
> +	if (HAS_GMCH(display)) {
> +		if (display->platform.g4x || display->platform.valleyview ||
> +		    display->platform.cherryview)
>  			hpd->hpd =3D hpd_status_g4x;
>  		else
>  			hpd->hpd =3D hpd_status_i915;
>  		return;
>  	}
>=20
> -	if (DISPLAY_VER(dev_priv) >=3D 14)
> +	if (DISPLAY_VER(display) >=3D 14)
>  		hpd->hpd =3D hpd_xelpdp;
> -	else if (DISPLAY_VER(dev_priv) >=3D 11)
> +	else if (DISPLAY_VER(display) >=3D 11)
>  		hpd->hpd =3D hpd_gen11;
> -	else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> +	else if (display->platform.geminilake || display->platform.broxton)
>  		hpd->hpd =3D hpd_bxt;
> -	else if (DISPLAY_VER(dev_priv) =3D=3D 9)
> +	else if (DISPLAY_VER(display) =3D=3D 9)
>  		hpd->hpd =3D NULL; /* no north HPD on SKL */
> -	else if (DISPLAY_VER(dev_priv) >=3D 8)
> +	else if (DISPLAY_VER(display) >=3D 8)
>  		hpd->hpd =3D hpd_bdw;
> -	else if (DISPLAY_VER(dev_priv) >=3D 7)
> +	else if (DISPLAY_VER(display) >=3D 7)
>  		hpd->hpd =3D hpd_ivb;
>  	else
>  		hpd->hpd =3D hpd_ilk;
> @@ -180,20 +181,20 @@ static void intel_hpd_init_pins(struct drm_i915_pri=
vate
> *dev_priv)
>  }
>=20
>  /* For display hotplug interrupt */
> -void i915_hotplug_interrupt_update_locked(struct drm_i915_private *dev_p=
riv,
> +void i915_hotplug_interrupt_update_locked(struct intel_display *display,
>  					  u32 mask, u32 bits)
>  {
> -	struct intel_display *display =3D &dev_priv->display;
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>=20
>  	lockdep_assert_held(&dev_priv->irq_lock);
> -	drm_WARN_ON(&dev_priv->drm, bits & ~mask);
> +	drm_WARN_ON(display->drm, bits & ~mask);
>=20
>  	intel_de_rmw(display, PORT_HOTPLUG_EN(display), mask, bits);
>  }
>=20
>  /**
>   * i915_hotplug_interrupt_update - update hotplug interrupt enable
> - * @dev_priv: driver private
> + * @display: display device
>   * @mask: bits to update
>   * @bits: bits to enable
>   * NOTE: the HPD enable bits are modified both inside and outside
> @@ -203,12 +204,14 @@ void i915_hotplug_interrupt_update_locked(struct
> drm_i915_private *dev_priv,
>   * held already, this function acquires the lock itself. A non-locking
>   * version is also available.
>   */
> -void i915_hotplug_interrupt_update(struct drm_i915_private *dev_priv,
> +void i915_hotplug_interrupt_update(struct intel_display *display,
>  				   u32 mask,
>  				   u32 bits)
>  {
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
> +
>  	spin_lock_irq(&dev_priv->irq_lock);
> -	i915_hotplug_interrupt_update_locked(dev_priv, mask, bits);
> +	i915_hotplug_interrupt_update_locked(display, mask, bits);
>  	spin_unlock_irq(&dev_priv->irq_lock);
>  }
>=20
> @@ -340,7 +343,7 @@ static bool i9xx_port_hotplug_long_detect(enum hpd_pi=
n
> pin, u32 val)
>   *
>   * Note that the caller is expected to zero out the masks initially.
>   */
> -static void intel_get_hpd_pins(struct drm_i915_private *dev_priv,
> +static void intel_get_hpd_pins(struct intel_display *display,
>  			       u32 *pin_mask, u32 *long_mask,
>  			       u32 hotplug_trigger, u32 dig_hotplug_reg,
>  			       const u32 hpd[HPD_NUM_PINS],
> @@ -360,37 +363,37 @@ static void intel_get_hpd_pins(struct drm_i915_priv=
ate
> *dev_priv,
>  			*long_mask |=3D BIT(pin);
>  	}
>=20
> -	drm_dbg(&dev_priv->drm,
> -		"hotplug event received, stat 0x%08x, dig 0x%08x, pins 0x%08x,
> long 0x%08x\n",
> -		hotplug_trigger, dig_hotplug_reg, *pin_mask, *long_mask);
> +	drm_dbg_kms(display->drm,
> +		    "hotplug event received, stat 0x%08x, dig 0x%08x, pins
> 0x%08x, long 0x%08x\n",
> +		    hotplug_trigger, dig_hotplug_reg, *pin_mask, *long_mask);
>  }
>=20
> -static u32 intel_hpd_enabled_irqs(struct drm_i915_private *dev_priv,
> +static u32 intel_hpd_enabled_irqs(struct intel_display *display,
>  				  const u32 hpd[HPD_NUM_PINS])
>  {
>  	struct intel_encoder *encoder;
>  	u32 enabled_irqs =3D 0;
>=20
> -	for_each_intel_encoder(&dev_priv->drm, encoder)
> -		if (dev_priv->display.hotplug.stats[encoder->hpd_pin].state =3D=3D
> HPD_ENABLED)
> +	for_each_intel_encoder(display->drm, encoder)
> +		if (display->hotplug.stats[encoder->hpd_pin].state =3D=3D
> HPD_ENABLED)
>  			enabled_irqs |=3D hpd[encoder->hpd_pin];
>=20
>  	return enabled_irqs;
>  }
>=20
> -static u32 intel_hpd_hotplug_irqs(struct drm_i915_private *dev_priv,
> +static u32 intel_hpd_hotplug_irqs(struct intel_display *display,
>  				  const u32 hpd[HPD_NUM_PINS])
>  {
>  	struct intel_encoder *encoder;
>  	u32 hotplug_irqs =3D 0;
>=20
> -	for_each_intel_encoder(&dev_priv->drm, encoder)
> +	for_each_intel_encoder(display->drm, encoder)
>  		hotplug_irqs |=3D hpd[encoder->hpd_pin];
>=20
>  	return hotplug_irqs;
>  }
>=20
> -static u32 intel_hpd_hotplug_mask(struct drm_i915_private *i915,
> +static u32 intel_hpd_hotplug_mask(struct intel_display *display,
>  				  hotplug_mask_func hotplug_mask)
>  {
>  	enum hpd_pin pin;
> @@ -402,26 +405,25 @@ static u32 intel_hpd_hotplug_mask(struct
> drm_i915_private *i915,
>  	return hotplug;
>  }
>=20
> -static u32 intel_hpd_hotplug_enables(struct drm_i915_private *i915,
> +static u32 intel_hpd_hotplug_enables(struct intel_display *display,
>  				     hotplug_enables_func hotplug_enables)
>  {
>  	struct intel_encoder *encoder;
>  	u32 hotplug =3D 0;
>=20
> -	for_each_intel_encoder(&i915->drm, encoder)
> +	for_each_intel_encoder(display->drm, encoder)
>  		hotplug |=3D hotplug_enables(encoder);
>=20
>  	return hotplug;
>  }
>=20
> -u32 i9xx_hpd_irq_ack(struct drm_i915_private *dev_priv)
> +u32 i9xx_hpd_irq_ack(struct intel_display *display)
>  {
> -	struct intel_display *display =3D &dev_priv->display;
>  	u32 hotplug_status =3D 0, hotplug_status_mask;
>  	int i;
>=20
> -	if (IS_G4X(dev_priv) ||
> -	    IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
> +	if (display->platform.g4x ||
> +	    display->platform.valleyview || display->platform.cherryview)
>  		hotplug_status_mask =3D HOTPLUG_INT_STATUS_G4X |
>  			DP_AUX_CHANNEL_MASK_INT_STATUS_G4X;
>  	else
> @@ -448,43 +450,41 @@ u32 i9xx_hpd_irq_ack(struct drm_i915_private
> *dev_priv)
>  			       hotplug_status);
>  	}
>=20
> -	drm_WARN_ONCE(&dev_priv->drm, 1,
> +	drm_WARN_ONCE(display->drm, 1,
>  		      "PORT_HOTPLUG_STAT did not clear (0x%08x)\n",
>  		      intel_de_read(display, PORT_HOTPLUG_STAT(display)));
>=20
>  	return hotplug_status;
>  }
>=20
> -void i9xx_hpd_irq_handler(struct drm_i915_private *dev_priv, u32
> hotplug_status)
> +void i9xx_hpd_irq_handler(struct intel_display *display, u32 hotplug_sta=
tus)
>  {
> -	struct intel_display *display =3D &dev_priv->display;
>  	u32 pin_mask =3D 0, long_mask =3D 0;
>  	u32 hotplug_trigger;
>=20
> -	if (IS_G4X(dev_priv) ||
> -	    IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
> +	if (display->platform.g4x ||
> +	    display->platform.valleyview || display->platform.cherryview)
>  		hotplug_trigger =3D hotplug_status & HOTPLUG_INT_STATUS_G4X;
>  	else
>  		hotplug_trigger =3D hotplug_status & HOTPLUG_INT_STATUS_I915;
>=20
>  	if (hotplug_trigger) {
> -		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
> +		intel_get_hpd_pins(display, &pin_mask, &long_mask,
>  				   hotplug_trigger, hotplug_trigger,
> -				   dev_priv->display.hotplug.hpd,
> +				   display->hotplug.hpd,
>  				   i9xx_port_hotplug_long_detect);
>=20
>  		intel_hpd_irq_handler(display, pin_mask, long_mask);
>  	}
>=20
> -	if ((IS_G4X(dev_priv) ||
> -	     IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
> +	if ((display->platform.g4x ||
> +	     display->platform.valleyview || display->platform.cherryview) &&
>  	    hotplug_status & DP_AUX_CHANNEL_MASK_INT_STATUS_G4X)
>  		intel_dp_aux_irq_handler(display);
>  }
>=20
> -void ibx_hpd_irq_handler(struct drm_i915_private *dev_priv, u32
> hotplug_trigger)
> +void ibx_hpd_irq_handler(struct intel_display *display, u32 hotplug_trig=
ger)
>  {
> -	struct intel_display *display =3D &dev_priv->display;
>  	u32 dig_hotplug_reg, pin_mask =3D 0, long_mask =3D 0;
>=20
>  	/*
> @@ -506,44 +506,43 @@ void ibx_hpd_irq_handler(struct drm_i915_private
> *dev_priv, u32 hotplug_trigger)
>  	if (!hotplug_trigger)
>  		return;
>=20
> -	intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
> +	intel_get_hpd_pins(display, &pin_mask, &long_mask,
>  			   hotplug_trigger, dig_hotplug_reg,
> -			   dev_priv->display.hotplug.pch_hpd,
> +			   display->hotplug.pch_hpd,
>  			   pch_port_hotplug_long_detect);
>=20
>  	intel_hpd_irq_handler(display, pin_mask, long_mask);
>  }
>=20
> -void xelpdp_pica_irq_handler(struct drm_i915_private *i915, u32 iir)
> +void xelpdp_pica_irq_handler(struct intel_display *display, u32 iir)
>  {
> -	struct intel_display *display =3D &i915->display;
>  	enum hpd_pin pin;
>  	u32 hotplug_trigger =3D iir & (XELPDP_DP_ALT_HOTPLUG_MASK |
> XELPDP_TBT_HOTPLUG_MASK);
>  	u32 trigger_aux =3D iir & XELPDP_AUX_TC_MASK;
>  	u32 pin_mask =3D 0, long_mask =3D 0;
>=20
> -	if (DISPLAY_VER(i915) >=3D 20)
> +	if (DISPLAY_VER(display) >=3D 20)
>  		trigger_aux |=3D iir & XE2LPD_AUX_DDI_MASK;
>=20
>  	for (pin =3D HPD_PORT_TC1; pin <=3D HPD_PORT_TC4; pin++) {
>  		u32 val;
>=20
> -		if (!(i915->display.hotplug.hpd[pin] & hotplug_trigger))
> +		if (!(display->hotplug.hpd[pin] & hotplug_trigger))
>  			continue;
>=20
>  		pin_mask |=3D BIT(pin);
>=20
> -		val =3D intel_de_read(i915, XELPDP_PORT_HOTPLUG_CTL(pin));
> -		intel_de_write(i915, XELPDP_PORT_HOTPLUG_CTL(pin), val);
> +		val =3D intel_de_read(display, XELPDP_PORT_HOTPLUG_CTL(pin));
> +		intel_de_write(display, XELPDP_PORT_HOTPLUG_CTL(pin), val);
>=20
>  		if (val & (XELPDP_DP_ALT_HPD_LONG_DETECT |
> XELPDP_TBT_HPD_LONG_DETECT))
>  			long_mask |=3D BIT(pin);
>  	}
>=20
>  	if (pin_mask) {
> -		drm_dbg(&i915->drm,
> -			"pica hotplug event received, stat 0x%08x, pins 0x%08x,
> long 0x%08x\n",
> -			hotplug_trigger, pin_mask, long_mask);
> +		drm_dbg_kms(display->drm,
> +			    "pica hotplug event received, stat 0x%08x, pins
> 0x%08x, long 0x%08x\n",
> +			    hotplug_trigger, pin_mask, long_mask);
>=20
>  		intel_hpd_irq_handler(display, pin_mask, long_mask);
>  	}
> @@ -552,13 +551,13 @@ void xelpdp_pica_irq_handler(struct drm_i915_privat=
e
> *i915, u32 iir)
>  		intel_dp_aux_irq_handler(display);
>=20
>  	if (!pin_mask && !trigger_aux)
> -		drm_err(&i915->drm,
> +		drm_err(display->drm,
>  			"Unexpected DE HPD/AUX interrupt 0x%08x\n", iir);
>  }
>=20
> -void icp_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
> +void icp_irq_handler(struct intel_display *display, u32 pch_iir)
>  {
> -	struct intel_display *display =3D &dev_priv->display;
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	u32 ddi_hotplug_trigger =3D pch_iir & SDE_DDI_HOTPLUG_MASK_ICP;
>  	u32 tc_hotplug_trigger =3D pch_iir & SDE_TC_HOTPLUG_MASK_ICP;
>  	u32 pin_mask =3D 0, long_mask =3D 0;
> @@ -571,9 +570,9 @@ void icp_irq_handler(struct drm_i915_private *dev_pri=
v,
> u32 pch_iir)
>  		dig_hotplug_reg =3D intel_de_rmw(display, SHOTPLUG_CTL_DDI, 0,
> 0);
>  		spin_unlock(&dev_priv->irq_lock);
>=20
> -		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
> +		intel_get_hpd_pins(display, &pin_mask, &long_mask,
>  				   ddi_hotplug_trigger, dig_hotplug_reg,
> -				   dev_priv->display.hotplug.pch_hpd,
> +				   display->hotplug.pch_hpd,
>  				   icp_ddi_port_hotplug_long_detect);
>  	}
>=20
> @@ -582,9 +581,9 @@ void icp_irq_handler(struct drm_i915_private *dev_pri=
v,
> u32 pch_iir)
>=20
>  		dig_hotplug_reg =3D intel_de_rmw(display, SHOTPLUG_CTL_TC, 0,
> 0);
>=20
> -		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
> +		intel_get_hpd_pins(display, &pin_mask, &long_mask,
>  				   tc_hotplug_trigger, dig_hotplug_reg,
> -				   dev_priv->display.hotplug.pch_hpd,
> +				   display->hotplug.pch_hpd,
>  				   icp_tc_port_hotplug_long_detect);
>  	}
>=20
> @@ -595,9 +594,8 @@ void icp_irq_handler(struct drm_i915_private *dev_pri=
v,
> u32 pch_iir)
>  		intel_gmbus_irq_handler(display);
>  }
>=20
> -void spt_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
> +void spt_irq_handler(struct intel_display *display, u32 pch_iir)
>  {
> -	struct intel_display *display =3D &dev_priv->display;
>  	u32 hotplug_trigger =3D pch_iir & SDE_HOTPLUG_MASK_SPT &
>  		~SDE_PORTE_HOTPLUG_SPT;
>  	u32 hotplug2_trigger =3D pch_iir & SDE_PORTE_HOTPLUG_SPT;
> @@ -608,9 +606,9 @@ void spt_irq_handler(struct drm_i915_private *dev_pri=
v,
> u32 pch_iir)
>=20
>  		dig_hotplug_reg =3D intel_de_rmw(display, PCH_PORT_HOTPLUG,
> 0, 0);
>=20
> -		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
> +		intel_get_hpd_pins(display, &pin_mask, &long_mask,
>  				   hotplug_trigger, dig_hotplug_reg,
> -				   dev_priv->display.hotplug.pch_hpd,
> +				   display->hotplug.pch_hpd,
>  				   spt_port_hotplug_long_detect);
>  	}
>=20
> @@ -619,9 +617,9 @@ void spt_irq_handler(struct drm_i915_private *dev_pri=
v,
> u32 pch_iir)
>=20
>  		dig_hotplug_reg =3D intel_de_rmw(display, PCH_PORT_HOTPLUG2,
> 0, 0);
>=20
> -		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
> +		intel_get_hpd_pins(display, &pin_mask, &long_mask,
>  				   hotplug2_trigger, dig_hotplug_reg,
> -				   dev_priv->display.hotplug.pch_hpd,
> +				   display->hotplug.pch_hpd,
>  				   spt_port_hotplug2_long_detect);
>  	}
>=20
> @@ -632,39 +630,36 @@ void spt_irq_handler(struct drm_i915_private
> *dev_priv, u32 pch_iir)
>  		intel_gmbus_irq_handler(display);
>  }
>=20
> -void ilk_hpd_irq_handler(struct drm_i915_private *dev_priv, u32
> hotplug_trigger)
> +void ilk_hpd_irq_handler(struct intel_display *display, u32 hotplug_trig=
ger)
>  {
> -	struct intel_display *display =3D &dev_priv->display;
>  	u32 dig_hotplug_reg, pin_mask =3D 0, long_mask =3D 0;
>=20
>  	dig_hotplug_reg =3D intel_de_rmw(display,
> DIGITAL_PORT_HOTPLUG_CNTRL, 0, 0);
>=20
> -	intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
> +	intel_get_hpd_pins(display, &pin_mask, &long_mask,
>  			   hotplug_trigger, dig_hotplug_reg,
> -			   dev_priv->display.hotplug.hpd,
> +			   display->hotplug.hpd,
>  			   ilk_port_hotplug_long_detect);
>=20
>  	intel_hpd_irq_handler(display, pin_mask, long_mask);
>  }
>=20
> -void bxt_hpd_irq_handler(struct drm_i915_private *dev_priv, u32
> hotplug_trigger)
> +void bxt_hpd_irq_handler(struct intel_display *display, u32 hotplug_trig=
ger)
>  {
> -	struct intel_display *display =3D &dev_priv->display;
>  	u32 dig_hotplug_reg, pin_mask =3D 0, long_mask =3D 0;
>=20
>  	dig_hotplug_reg =3D intel_de_rmw(display, PCH_PORT_HOTPLUG, 0, 0);
>=20
> -	intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
> +	intel_get_hpd_pins(display, &pin_mask, &long_mask,
>  			   hotplug_trigger, dig_hotplug_reg,
> -			   dev_priv->display.hotplug.hpd,
> +			   display->hotplug.hpd,
>  			   bxt_port_hotplug_long_detect);
>=20
>  	intel_hpd_irq_handler(display, pin_mask, long_mask);
>  }
>=20
> -void gen11_hpd_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
> +void gen11_hpd_irq_handler(struct intel_display *display, u32 iir)
>  {
> -	struct intel_display *display =3D &dev_priv->display;
>  	u32 pin_mask =3D 0, long_mask =3D 0;
>  	u32 trigger_tc =3D iir & GEN11_DE_TC_HOTPLUG_MASK;
>  	u32 trigger_tbt =3D iir & GEN11_DE_TBT_HOTPLUG_MASK;
> @@ -674,9 +669,9 @@ void gen11_hpd_irq_handler(struct drm_i915_private
> *dev_priv, u32 iir)
>=20
>  		dig_hotplug_reg =3D intel_de_rmw(display,
> GEN11_TC_HOTPLUG_CTL, 0, 0);
>=20
> -		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
> +		intel_get_hpd_pins(display, &pin_mask, &long_mask,
>  				   trigger_tc, dig_hotplug_reg,
> -				   dev_priv->display.hotplug.hpd,
> +				   display->hotplug.hpd,
>  				   gen11_port_hotplug_long_detect);
>  	}
>=20
> @@ -685,16 +680,16 @@ void gen11_hpd_irq_handler(struct drm_i915_private
> *dev_priv, u32 iir)
>=20
>  		dig_hotplug_reg =3D intel_de_rmw(display,
> GEN11_TBT_HOTPLUG_CTL, 0, 0);
>=20
> -		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
> +		intel_get_hpd_pins(display, &pin_mask, &long_mask,
>  				   trigger_tbt, dig_hotplug_reg,
> -				   dev_priv->display.hotplug.hpd,
> +				   display->hotplug.hpd,
>  				   gen11_port_hotplug_long_detect);
>  	}
>=20
>  	if (pin_mask)
>  		intel_hpd_irq_handler(display, pin_mask, long_mask);
>  	else
> -		drm_err(&dev_priv->drm,
> +		drm_err(display->drm,
>  			"Unexpected DE HPD interrupt 0x%08x\n", iir);
>  }
>=20
> @@ -740,18 +735,16 @@ static u32 ibx_hotplug_enables(struct intel_encoder
> *encoder)
>  	}
>  }
>=20
> -static void ibx_hpd_detection_setup(struct drm_i915_private *dev_priv)
> +static void ibx_hpd_detection_setup(struct intel_display *display)
>  {
> -	struct intel_display *display =3D &dev_priv->display;
> -
>  	/*
>  	 * Enable digital hotplug on the PCH, and configure the DP short pulse
>  	 * duration to 2ms (which is the minimum in the Display Port spec).
>  	 * The pulse duration bits are reserved on LPT+.
>  	 */
>  	intel_de_rmw(display, PCH_PORT_HOTPLUG,
> -		     intel_hpd_hotplug_mask(dev_priv, ibx_hotplug_mask),
> -		     intel_hpd_hotplug_enables(dev_priv, ibx_hotplug_enables));
> +		     intel_hpd_hotplug_mask(display, ibx_hotplug_mask),
> +		     intel_hpd_hotplug_enables(display, ibx_hotplug_enables));
>  }
>=20
>  static void ibx_hpd_enable_detection(struct intel_encoder *encoder)
> @@ -763,16 +756,17 @@ static void ibx_hpd_enable_detection(struct
> intel_encoder *encoder)
>  		     ibx_hotplug_enables(encoder));
>  }
>=20
> -static void ibx_hpd_irq_setup(struct drm_i915_private *dev_priv)
> +static void ibx_hpd_irq_setup(struct intel_display *display)
>  {
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	u32 hotplug_irqs, enabled_irqs;
>=20
> -	enabled_irqs =3D intel_hpd_enabled_irqs(dev_priv, dev_priv-
> >display.hotplug.pch_hpd);
> -	hotplug_irqs =3D intel_hpd_hotplug_irqs(dev_priv, dev_priv-
> >display.hotplug.pch_hpd);
> +	enabled_irqs =3D intel_hpd_enabled_irqs(display, display-
> >hotplug.pch_hpd);
> +	hotplug_irqs =3D intel_hpd_hotplug_irqs(display, display->hotplug.pch_h=
pd);
>=20
>  	ibx_display_interrupt_update(dev_priv, hotplug_irqs, enabled_irqs);
>=20
> -	ibx_hpd_detection_setup(dev_priv);
> +	ibx_hpd_detection_setup(display);
>  }
>=20
>  static u32 icp_ddi_hotplug_mask(enum hpd_pin hpd_pin)
> @@ -813,13 +807,11 @@ static u32 icp_tc_hotplug_enables(struct
> intel_encoder *encoder)
>  	return icp_tc_hotplug_mask(encoder->hpd_pin);
>  }
>=20
> -static void icp_ddi_hpd_detection_setup(struct drm_i915_private *dev_pri=
v)
> +static void icp_ddi_hpd_detection_setup(struct intel_display *display)
>  {
> -	struct intel_display *display =3D &dev_priv->display;
> -
>  	intel_de_rmw(display, SHOTPLUG_CTL_DDI,
> -		     intel_hpd_hotplug_mask(dev_priv, icp_ddi_hotplug_mask),
> -		     intel_hpd_hotplug_enables(dev_priv,
> icp_ddi_hotplug_enables));
> +		     intel_hpd_hotplug_mask(display, icp_ddi_hotplug_mask),
> +		     intel_hpd_hotplug_enables(display,
> icp_ddi_hotplug_enables));
>  }
>=20
>  static void icp_ddi_hpd_enable_detection(struct intel_encoder *encoder)
> @@ -831,13 +823,11 @@ static void icp_ddi_hpd_enable_detection(struct
> intel_encoder *encoder)
>  		     icp_ddi_hotplug_enables(encoder));
>  }
>=20
> -static void icp_tc_hpd_detection_setup(struct drm_i915_private *dev_priv=
)
> +static void icp_tc_hpd_detection_setup(struct intel_display *display)
>  {
> -	struct intel_display *display =3D &dev_priv->display;
> -
>  	intel_de_rmw(display, SHOTPLUG_CTL_TC,
> -		     intel_hpd_hotplug_mask(dev_priv, icp_tc_hotplug_mask),
> -		     intel_hpd_hotplug_enables(dev_priv,
> icp_tc_hotplug_enables));
> +		     intel_hpd_hotplug_mask(display, icp_tc_hotplug_mask),
> +		     intel_hpd_hotplug_enables(display, icp_tc_hotplug_enables));
>  }
>=20
>  static void icp_tc_hpd_enable_detection(struct intel_encoder *encoder)
> @@ -855,13 +845,13 @@ static void icp_hpd_enable_detection(struct
> intel_encoder *encoder)
>  	icp_tc_hpd_enable_detection(encoder);
>  }
>=20
> -static void icp_hpd_irq_setup(struct drm_i915_private *dev_priv)
> +static void icp_hpd_irq_setup(struct intel_display *display)
>  {
> -	struct intel_display *display =3D &dev_priv->display;
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	u32 hotplug_irqs, enabled_irqs;
>=20
> -	enabled_irqs =3D intel_hpd_enabled_irqs(dev_priv, dev_priv-
> >display.hotplug.pch_hpd);
> -	hotplug_irqs =3D intel_hpd_hotplug_irqs(dev_priv, dev_priv-
> >display.hotplug.pch_hpd);
> +	enabled_irqs =3D intel_hpd_enabled_irqs(display, display-
> >hotplug.pch_hpd);
> +	hotplug_irqs =3D intel_hpd_hotplug_irqs(display, display->hotplug.pch_h=
pd);
>=20
>  	/*
>  	 * We reduce the value to 250us to be able to detect SHPD when an
> external display
> @@ -871,8 +861,8 @@ static void icp_hpd_irq_setup(struct drm_i915_private
> *dev_priv)
>=20
>  	ibx_display_interrupt_update(dev_priv, hotplug_irqs, enabled_irqs);
>=20
> -	icp_ddi_hpd_detection_setup(dev_priv);
> -	icp_tc_hpd_detection_setup(dev_priv);
> +	icp_ddi_hpd_detection_setup(display);
> +	icp_tc_hpd_detection_setup(display);
>  }
>=20
>  static u32 gen11_hotplug_mask(enum hpd_pin hpd_pin)
> @@ -895,9 +885,8 @@ static u32 gen11_hotplug_enables(struct intel_encoder
> *encoder)
>  	return gen11_hotplug_mask(encoder->hpd_pin);
>  }
>=20
> -static void dg1_hpd_invert(struct drm_i915_private *i915)
> +static void dg1_hpd_invert(struct intel_display *display)
>  {
> -	struct intel_display *display =3D &i915->display;
>  	u32 val =3D (INVERT_DDIA_HPD |
>  		   INVERT_DDIB_HPD |
>  		   INVERT_DDIC_HPD |
> @@ -907,25 +896,23 @@ static void dg1_hpd_invert(struct drm_i915_private
> *i915)
>=20
>  static void dg1_hpd_enable_detection(struct intel_encoder *encoder)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	struct intel_display *display =3D to_intel_display(encoder);
>=20
> -	dg1_hpd_invert(i915);
> +	dg1_hpd_invert(display);
>  	icp_hpd_enable_detection(encoder);
>  }
>=20
> -static void dg1_hpd_irq_setup(struct drm_i915_private *dev_priv)
> +static void dg1_hpd_irq_setup(struct intel_display *display)
>  {
> -	dg1_hpd_invert(dev_priv);
> -	icp_hpd_irq_setup(dev_priv);
> +	dg1_hpd_invert(display);
> +	icp_hpd_irq_setup(display);
>  }
>=20
> -static void gen11_tc_hpd_detection_setup(struct drm_i915_private *dev_pr=
iv)
> +static void gen11_tc_hpd_detection_setup(struct intel_display *display)
>  {
> -	struct intel_display *display =3D &dev_priv->display;
> -
>  	intel_de_rmw(display, GEN11_TC_HOTPLUG_CTL,
> -		     intel_hpd_hotplug_mask(dev_priv, gen11_hotplug_mask),
> -		     intel_hpd_hotplug_enables(dev_priv,
> gen11_hotplug_enables));
> +		     intel_hpd_hotplug_mask(display, gen11_hotplug_mask),
> +		     intel_hpd_hotplug_enables(display, gen11_hotplug_enables));
>  }
>=20
>  static void gen11_tc_hpd_enable_detection(struct intel_encoder *encoder)
> @@ -937,13 +924,11 @@ static void gen11_tc_hpd_enable_detection(struct
> intel_encoder *encoder)
>  		     gen11_hotplug_enables(encoder));
>  }
>=20
> -static void gen11_tbt_hpd_detection_setup(struct drm_i915_private *dev_p=
riv)
> +static void gen11_tbt_hpd_detection_setup(struct intel_display *display)
>  {
> -	struct intel_display *display =3D &dev_priv->display;
> -
>  	intel_de_rmw(display, GEN11_TBT_HOTPLUG_CTL,
> -		     intel_hpd_hotplug_mask(dev_priv, gen11_hotplug_mask),
> -		     intel_hpd_hotplug_enables(dev_priv,
> gen11_hotplug_enables));
> +		     intel_hpd_hotplug_mask(display, gen11_hotplug_mask),
> +		     intel_hpd_hotplug_enables(display, gen11_hotplug_enables));
>  }
>=20
>  static void gen11_tbt_hpd_enable_detection(struct intel_encoder *encoder=
)
> @@ -966,23 +951,23 @@ static void gen11_hpd_enable_detection(struct
> intel_encoder *encoder)
>  		icp_hpd_enable_detection(encoder);
>  }
>=20
> -static void gen11_hpd_irq_setup(struct drm_i915_private *dev_priv)
> +static void gen11_hpd_irq_setup(struct intel_display *display)
>  {
> -	struct intel_display *display =3D &dev_priv->display;
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	u32 hotplug_irqs, enabled_irqs;
>=20
> -	enabled_irqs =3D intel_hpd_enabled_irqs(dev_priv, dev_priv-
> >display.hotplug.hpd);
> -	hotplug_irqs =3D intel_hpd_hotplug_irqs(dev_priv, dev_priv-
> >display.hotplug.hpd);
> +	enabled_irqs =3D intel_hpd_enabled_irqs(display, display->hotplug.hpd);
> +	hotplug_irqs =3D intel_hpd_hotplug_irqs(display, display->hotplug.hpd);
>=20
>  	intel_de_rmw(display, GEN11_DE_HPD_IMR, hotplug_irqs,
>  		     ~enabled_irqs & hotplug_irqs);
>  	intel_de_posting_read(display, GEN11_DE_HPD_IMR);
>=20
> -	gen11_tc_hpd_detection_setup(dev_priv);
> -	gen11_tbt_hpd_detection_setup(dev_priv);
> +	gen11_tc_hpd_detection_setup(display);
> +	gen11_tbt_hpd_detection_setup(display);
>=20
>  	if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_ICP)
> -		icp_hpd_irq_setup(dev_priv);
> +		icp_hpd_irq_setup(display);
>  }
>=20
>  static u32 mtp_ddi_hotplug_mask(enum hpd_pin hpd_pin)
> @@ -1019,39 +1004,39 @@ static u32 mtp_tc_hotplug_enables(struct
> intel_encoder *encoder)
>  	return mtp_tc_hotplug_mask(encoder->hpd_pin);
>  }
>=20
> -static void mtp_ddi_hpd_detection_setup(struct drm_i915_private *i915)
> +static void mtp_ddi_hpd_detection_setup(struct intel_display *display)
>  {
> -	intel_de_rmw(i915, SHOTPLUG_CTL_DDI,
> -		     intel_hpd_hotplug_mask(i915, mtp_ddi_hotplug_mask),
> -		     intel_hpd_hotplug_enables(i915, mtp_ddi_hotplug_enables));
> +	intel_de_rmw(display, SHOTPLUG_CTL_DDI,
> +		     intel_hpd_hotplug_mask(display, mtp_ddi_hotplug_mask),
> +		     intel_hpd_hotplug_enables(display,
> mtp_ddi_hotplug_enables));
>  }
>=20
>  static void mtp_ddi_hpd_enable_detection(struct intel_encoder *encoder)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	struct intel_display *display =3D to_intel_display(encoder);
>=20
> -	intel_de_rmw(i915, SHOTPLUG_CTL_DDI,
> +	intel_de_rmw(display, SHOTPLUG_CTL_DDI,
>  		     mtp_ddi_hotplug_mask(encoder->hpd_pin),
>  		     mtp_ddi_hotplug_enables(encoder));
>  }
>=20
> -static void mtp_tc_hpd_detection_setup(struct drm_i915_private *i915)
> +static void mtp_tc_hpd_detection_setup(struct intel_display *display)
>  {
> -	intel_de_rmw(i915, SHOTPLUG_CTL_TC,
> -		     intel_hpd_hotplug_mask(i915, mtp_tc_hotplug_mask),
> -		     intel_hpd_hotplug_enables(i915, mtp_tc_hotplug_enables));
> +	intel_de_rmw(display, SHOTPLUG_CTL_TC,
> +		     intel_hpd_hotplug_mask(display, mtp_tc_hotplug_mask),
> +		     intel_hpd_hotplug_enables(display,
> mtp_tc_hotplug_enables));
>  }
>=20
>  static void mtp_tc_hpd_enable_detection(struct intel_encoder *encoder)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	struct intel_display *display =3D to_intel_display(encoder);
>=20
> -	intel_de_rmw(i915, SHOTPLUG_CTL_DDI,
> +	intel_de_rmw(display, SHOTPLUG_CTL_DDI,
>  		     mtp_tc_hotplug_mask(encoder->hpd_pin),
>  		     mtp_tc_hotplug_enables(encoder));
>  }
>=20
> -static void mtp_hpd_invert(struct drm_i915_private *i915)
> +static void mtp_hpd_invert(struct intel_display *display)
>  {
>  	u32 val =3D (INVERT_DDIA_HPD |
>  		   INVERT_DDIB_HPD |
> @@ -1062,49 +1047,51 @@ static void mtp_hpd_invert(struct drm_i915_privat=
e
> *i915)
>  		   INVERT_TC4_HPD |
>  		   INVERT_DDID_HPD_MTP |
>  		   INVERT_DDIE_HPD);
> -	intel_de_rmw(i915, SOUTH_CHICKEN1, 0, val);
> +	intel_de_rmw(display, SOUTH_CHICKEN1, 0, val);
>  }
>=20
>  static void mtp_hpd_enable_detection(struct intel_encoder *encoder)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	struct intel_display *display =3D to_intel_display(encoder);
>=20
> -	mtp_hpd_invert(i915);
> +	mtp_hpd_invert(display);
>  	mtp_ddi_hpd_enable_detection(encoder);
>  	mtp_tc_hpd_enable_detection(encoder);
>  }
>=20
> -static void mtp_hpd_irq_setup(struct drm_i915_private *i915)
> +static void mtp_hpd_irq_setup(struct intel_display *display)
>  {
> +	struct drm_i915_private *i915 =3D to_i915(display->drm);
>  	u32 hotplug_irqs, enabled_irqs;
>=20
> -	enabled_irqs =3D intel_hpd_enabled_irqs(i915, i915-
> >display.hotplug.pch_hpd);
> -	hotplug_irqs =3D intel_hpd_hotplug_irqs(i915, i915-
> >display.hotplug.pch_hpd);
> +	enabled_irqs =3D intel_hpd_enabled_irqs(display, display-
> >hotplug.pch_hpd);
> +	hotplug_irqs =3D intel_hpd_hotplug_irqs(display, display->hotplug.pch_h=
pd);
>=20
>  	/*
>  	 * Use 250us here to align with the DP1.4a(Table 3-4) spec as to what t=
he
>  	 * SHPD_FILTER_CNT value should be.
>  	 */
> -	intel_de_write(i915, SHPD_FILTER_CNT, SHPD_FILTER_CNT_250);
> +	intel_de_write(display, SHPD_FILTER_CNT, SHPD_FILTER_CNT_250);
>=20
> -	mtp_hpd_invert(i915);
> +	mtp_hpd_invert(display);
>  	ibx_display_interrupt_update(i915, hotplug_irqs, enabled_irqs);
>=20
> -	mtp_ddi_hpd_detection_setup(i915);
> -	mtp_tc_hpd_detection_setup(i915);
> +	mtp_ddi_hpd_detection_setup(display);
> +	mtp_tc_hpd_detection_setup(display);
>  }
>=20
> -static void xe2lpd_sde_hpd_irq_setup(struct drm_i915_private *i915)
> +static void xe2lpd_sde_hpd_irq_setup(struct intel_display *display)
>  {
> +	struct drm_i915_private *i915 =3D to_i915(display->drm);
>  	u32 hotplug_irqs, enabled_irqs;
>=20
> -	enabled_irqs =3D intel_hpd_enabled_irqs(i915, i915-
> >display.hotplug.pch_hpd);
> -	hotplug_irqs =3D intel_hpd_hotplug_irqs(i915, i915-
> >display.hotplug.pch_hpd);
> +	enabled_irqs =3D intel_hpd_enabled_irqs(display, display-
> >hotplug.pch_hpd);
> +	hotplug_irqs =3D intel_hpd_hotplug_irqs(display, display->hotplug.pch_h=
pd);
>=20
>  	ibx_display_interrupt_update(i915, hotplug_irqs, enabled_irqs);
>=20
> -	mtp_ddi_hpd_detection_setup(i915);
> -	mtp_tc_hpd_detection_setup(i915);
> +	mtp_ddi_hpd_detection_setup(display);
> +	mtp_tc_hpd_detection_setup(display);
>  }
>=20
>  static bool is_xelpdp_pica_hpd_pin(enum hpd_pin hpd_pin)
> @@ -1112,7 +1099,7 @@ static bool is_xelpdp_pica_hpd_pin(enum hpd_pin
> hpd_pin)
>  	return hpd_pin >=3D HPD_PORT_TC1 && hpd_pin <=3D HPD_PORT_TC4;
>  }
>=20
> -static void _xelpdp_pica_hpd_detection_setup(struct drm_i915_private *i9=
15,
> +static void _xelpdp_pica_hpd_detection_setup(struct intel_display *displ=
ay,
>  					     enum hpd_pin hpd_pin, bool enable)
>  {
>  	u32 mask =3D XELPDP_TBT_HOTPLUG_ENABLE |
> @@ -1121,18 +1108,18 @@ static void
> _xelpdp_pica_hpd_detection_setup(struct drm_i915_private *i915,
>  	if (!is_xelpdp_pica_hpd_pin(hpd_pin))
>  		return;
>=20
> -	intel_de_rmw(i915, XELPDP_PORT_HOTPLUG_CTL(hpd_pin),
> +	intel_de_rmw(display, XELPDP_PORT_HOTPLUG_CTL(hpd_pin),
>  		     mask, enable ? mask : 0);
>  }
>=20
>  static void xelpdp_pica_hpd_enable_detection(struct intel_encoder *encod=
er)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	struct intel_display *display =3D to_intel_display(encoder);
>=20
> -	_xelpdp_pica_hpd_detection_setup(i915, encoder->hpd_pin, true);
> +	_xelpdp_pica_hpd_detection_setup(display, encoder->hpd_pin, true);
>  }
>=20
> -static void xelpdp_pica_hpd_detection_setup(struct drm_i915_private *i91=
5)
> +static void xelpdp_pica_hpd_detection_setup(struct intel_display *displa=
y)
>  {
>  	struct intel_encoder *encoder;
>  	u32 available_pins =3D 0;
> @@ -1140,11 +1127,11 @@ static void xelpdp_pica_hpd_detection_setup(struc=
t
> drm_i915_private *i915)
>=20
>  	BUILD_BUG_ON(BITS_PER_TYPE(available_pins) < HPD_NUM_PINS);
>=20
> -	for_each_intel_encoder(&i915->drm, encoder)
> +	for_each_intel_encoder(display->drm, encoder)
>  		available_pins |=3D BIT(encoder->hpd_pin);
>=20
>  	for_each_hpd_pin(pin)
> -		_xelpdp_pica_hpd_detection_setup(i915, pin, available_pins &
> BIT(pin));
> +		_xelpdp_pica_hpd_detection_setup(display, pin, available_pins &
> BIT(pin));
>  }
>=20
>  static void xelpdp_hpd_enable_detection(struct intel_encoder *encoder)
> @@ -1153,24 +1140,24 @@ static void xelpdp_hpd_enable_detection(struct
> intel_encoder *encoder)
>  	mtp_hpd_enable_detection(encoder);
>  }
>=20
> -static void xelpdp_hpd_irq_setup(struct drm_i915_private *i915)
> +static void xelpdp_hpd_irq_setup(struct intel_display *display)
>  {
> -	struct intel_display *display =3D &i915->display;
> +	struct drm_i915_private *i915 =3D to_i915(display->drm);
>  	u32 hotplug_irqs, enabled_irqs;
>=20
> -	enabled_irqs =3D intel_hpd_enabled_irqs(i915, i915->display.hotplug.hpd=
);
> -	hotplug_irqs =3D intel_hpd_hotplug_irqs(i915, i915->display.hotplug.hpd=
);
> +	enabled_irqs =3D intel_hpd_enabled_irqs(display, display->hotplug.hpd);
> +	hotplug_irqs =3D intel_hpd_hotplug_irqs(display, display->hotplug.hpd);
>=20
> -	intel_de_rmw(i915, PICAINTERRUPT_IMR, hotplug_irqs,
> +	intel_de_rmw(display, PICAINTERRUPT_IMR, hotplug_irqs,
>  		     ~enabled_irqs & hotplug_irqs);
>  	intel_de_posting_read(display, PICAINTERRUPT_IMR);
>=20
> -	xelpdp_pica_hpd_detection_setup(i915);
> +	xelpdp_pica_hpd_detection_setup(display);
>=20
>  	if (INTEL_PCH_TYPE(i915) >=3D PCH_LNL)
> -		xe2lpd_sde_hpd_irq_setup(i915);
> +		xe2lpd_sde_hpd_irq_setup(display);
>  	else if (INTEL_PCH_TYPE(i915) >=3D PCH_MTL)
> -		mtp_hpd_irq_setup(i915);
> +		mtp_hpd_irq_setup(display);
>  }
>=20
>  static u32 spt_hotplug_mask(enum hpd_pin hpd_pin)
> @@ -1209,9 +1196,9 @@ static u32 spt_hotplug2_enables(struct intel_encode=
r
> *encoder)
>  	return spt_hotplug2_mask(encoder->hpd_pin);
>  }
>=20
> -static void spt_hpd_detection_setup(struct drm_i915_private *dev_priv)
> +static void spt_hpd_detection_setup(struct intel_display *display)
>  {
> -	struct intel_display *display =3D &dev_priv->display;
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>=20
>  	/* Display WA #1179 WaHardHangonHotPlug: cnp */
>  	if (HAS_PCH_CNP(dev_priv)) {
> @@ -1221,12 +1208,12 @@ static void spt_hpd_detection_setup(struct
> drm_i915_private *dev_priv)
>=20
>  	/* Enable digital hotplug on the PCH */
>  	intel_de_rmw(display, PCH_PORT_HOTPLUG,
> -		     intel_hpd_hotplug_mask(dev_priv, spt_hotplug_mask),
> -		     intel_hpd_hotplug_enables(dev_priv, spt_hotplug_enables));
> +		     intel_hpd_hotplug_mask(display, spt_hotplug_mask),
> +		     intel_hpd_hotplug_enables(display, spt_hotplug_enables));
>=20
>  	intel_de_rmw(display, PCH_PORT_HOTPLUG2,
> -		     intel_hpd_hotplug_mask(dev_priv, spt_hotplug2_mask),
> -		     intel_hpd_hotplug_enables(dev_priv, spt_hotplug2_enables));
> +		     intel_hpd_hotplug_mask(display, spt_hotplug2_mask),
> +		     intel_hpd_hotplug_enables(display, spt_hotplug2_enables));
>  }
>=20
>  static void spt_hpd_enable_detection(struct intel_encoder *encoder)
> @@ -1250,20 +1237,20 @@ static void spt_hpd_enable_detection(struct
> intel_encoder *encoder)
>  		     spt_hotplug2_enables(encoder));
>  }
>=20
> -static void spt_hpd_irq_setup(struct drm_i915_private *dev_priv)
> +static void spt_hpd_irq_setup(struct intel_display *display)
>  {
> -	struct intel_display *display =3D &dev_priv->display;
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	u32 hotplug_irqs, enabled_irqs;
>=20
>  	if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_CNP)
>  		intel_de_write(display, SHPD_FILTER_CNT,
> SHPD_FILTER_CNT_500_ADJ);
>=20
> -	enabled_irqs =3D intel_hpd_enabled_irqs(dev_priv, dev_priv-
> >display.hotplug.pch_hpd);
> -	hotplug_irqs =3D intel_hpd_hotplug_irqs(dev_priv, dev_priv-
> >display.hotplug.pch_hpd);
> +	enabled_irqs =3D intel_hpd_enabled_irqs(display, display-
> >hotplug.pch_hpd);
> +	hotplug_irqs =3D intel_hpd_hotplug_irqs(display, display->hotplug.pch_h=
pd);
>=20
>  	ibx_display_interrupt_update(dev_priv, hotplug_irqs, enabled_irqs);
>=20
> -	spt_hpd_detection_setup(dev_priv);
> +	spt_hpd_detection_setup(display);
>  }
>=20
>  static u32 ilk_hotplug_mask(enum hpd_pin hpd_pin)
> @@ -1288,18 +1275,16 @@ static u32 ilk_hotplug_enables(struct intel_encod=
er
> *encoder)
>  	}
>  }
>=20
> -static void ilk_hpd_detection_setup(struct drm_i915_private *dev_priv)
> +static void ilk_hpd_detection_setup(struct intel_display *display)
>  {
> -	struct intel_display *display =3D &dev_priv->display;
> -
>  	/*
>  	 * Enable digital hotplug on the CPU, and configure the DP short pulse
>  	 * duration to 2ms (which is the minimum in the Display Port spec)
>  	 * The pulse duration bits are reserved on HSW+.
>  	 */
>  	intel_de_rmw(display, DIGITAL_PORT_HOTPLUG_CNTRL,
> -		     intel_hpd_hotplug_mask(dev_priv, ilk_hotplug_mask),
> -		     intel_hpd_hotplug_enables(dev_priv, ilk_hotplug_enables));
> +		     intel_hpd_hotplug_mask(display, ilk_hotplug_mask),
> +		     intel_hpd_hotplug_enables(display, ilk_hotplug_enables));
>  }
>=20
>  static void ilk_hpd_enable_detection(struct intel_encoder *encoder)
> @@ -1313,21 +1298,22 @@ static void ilk_hpd_enable_detection(struct
> intel_encoder *encoder)
>  	ibx_hpd_enable_detection(encoder);
>  }
>=20
> -static void ilk_hpd_irq_setup(struct drm_i915_private *dev_priv)
> +static void ilk_hpd_irq_setup(struct intel_display *display)
>  {
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	u32 hotplug_irqs, enabled_irqs;
>=20
> -	enabled_irqs =3D intel_hpd_enabled_irqs(dev_priv, dev_priv-
> >display.hotplug.hpd);
> -	hotplug_irqs =3D intel_hpd_hotplug_irqs(dev_priv, dev_priv-
> >display.hotplug.hpd);
> +	enabled_irqs =3D intel_hpd_enabled_irqs(display, display->hotplug.hpd);
> +	hotplug_irqs =3D intel_hpd_hotplug_irqs(display, display->hotplug.hpd);
>=20
> -	if (DISPLAY_VER(dev_priv) >=3D 8)
> +	if (DISPLAY_VER(display) >=3D 8)
>  		bdw_update_port_irq(dev_priv, hotplug_irqs, enabled_irqs);
>  	else
>  		ilk_update_display_irq(dev_priv, hotplug_irqs, enabled_irqs);
>=20
> -	ilk_hpd_detection_setup(dev_priv);
> +	ilk_hpd_detection_setup(display);
>=20
> -	ibx_hpd_irq_setup(dev_priv);
> +	ibx_hpd_irq_setup(display);
>  }
>=20
>  static u32 bxt_hotplug_mask(enum hpd_pin hpd_pin)
> @@ -1369,13 +1355,11 @@ static u32 bxt_hotplug_enables(struct intel_encod=
er
> *encoder)
>  	}
>  }
>=20
> -static void bxt_hpd_detection_setup(struct drm_i915_private *dev_priv)
> +static void bxt_hpd_detection_setup(struct intel_display *display)
>  {
> -	struct intel_display *display =3D &dev_priv->display;
> -
>  	intel_de_rmw(display, PCH_PORT_HOTPLUG,
> -		     intel_hpd_hotplug_mask(dev_priv, bxt_hotplug_mask),
> -		     intel_hpd_hotplug_enables(dev_priv, bxt_hotplug_enables));
> +		     intel_hpd_hotplug_mask(display, bxt_hotplug_mask),
> +		     intel_hpd_hotplug_enables(display, bxt_hotplug_enables));
>  }
>=20
>  static void bxt_hpd_enable_detection(struct intel_encoder *encoder)
> @@ -1387,42 +1371,44 @@ static void bxt_hpd_enable_detection(struct
> intel_encoder *encoder)
>  		     bxt_hotplug_enables(encoder));
>  }
>=20
> -static void bxt_hpd_irq_setup(struct drm_i915_private *dev_priv)
> +static void bxt_hpd_irq_setup(struct intel_display *display)
>  {
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	u32 hotplug_irqs, enabled_irqs;
>=20
> -	enabled_irqs =3D intel_hpd_enabled_irqs(dev_priv, dev_priv-
> >display.hotplug.hpd);
> -	hotplug_irqs =3D intel_hpd_hotplug_irqs(dev_priv, dev_priv-
> >display.hotplug.hpd);
> +	enabled_irqs =3D intel_hpd_enabled_irqs(display, display->hotplug.hpd);
> +	hotplug_irqs =3D intel_hpd_hotplug_irqs(display, display->hotplug.hpd);
>=20
>  	bdw_update_port_irq(dev_priv, hotplug_irqs, enabled_irqs);
>=20
> -	bxt_hpd_detection_setup(dev_priv);
> +	bxt_hpd_detection_setup(display);
>  }
>=20
> -static void g45_hpd_peg_band_gap_wa(struct drm_i915_private *i915)
> +static void g45_hpd_peg_band_gap_wa(struct intel_display *display)
>  {
>  	/*
>  	 * For G4X desktop chip, PEG_BAND_GAP_DATA 3:0 must first be written
>  	 * 0xd.  Failure to do so will result in spurious interrupts being
>  	 * generated on the port when a cable is not attached.
>  	 */
> -	intel_de_rmw(i915, PEG_BAND_GAP_DATA, 0xf, 0xd);
> +	intel_de_rmw(display, PEG_BAND_GAP_DATA, 0xf, 0xd);
>  }
>=20
>  static void i915_hpd_enable_detection(struct intel_encoder *encoder)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	struct intel_display *display =3D to_intel_display(encoder);
>  	u32 hotplug_en =3D hpd_mask_i915[encoder->hpd_pin];
>=20
> -	if (IS_G45(i915))
> -		g45_hpd_peg_band_gap_wa(i915);
> +	if (display->platform.g45)
> +		g45_hpd_peg_band_gap_wa(display);
>=20
>  	/* HPD sense and interrupt enable are one and the same */
> -	i915_hotplug_interrupt_update(i915, hotplug_en, hotplug_en);
> +	i915_hotplug_interrupt_update(display, hotplug_en, hotplug_en);
>  }
>=20
> -static void i915_hpd_irq_setup(struct drm_i915_private *dev_priv)
> +static void i915_hpd_irq_setup(struct intel_display *display)
>  {
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	u32 hotplug_en;
>=20
>  	lockdep_assert_held(&dev_priv->irq_lock);
> @@ -1431,20 +1417,20 @@ static void i915_hpd_irq_setup(struct
> drm_i915_private *dev_priv)
>  	 * Note HDMI and DP share hotplug bits. Enable bits are the same for al=
l
>  	 * generations.
>  	 */
> -	hotplug_en =3D intel_hpd_enabled_irqs(dev_priv, hpd_mask_i915);
> +	hotplug_en =3D intel_hpd_enabled_irqs(display, hpd_mask_i915);
>  	/*
>  	 * Programming the CRT detection parameters tends to generate a
> spurious
>  	 * hotplug event about three seconds later. So just do it once.
>  	 */
> -	if (IS_G4X(dev_priv))
> +	if (display->platform.g4x)
>  		hotplug_en |=3D CRT_HOTPLUG_ACTIVATION_PERIOD_64;
>  	hotplug_en |=3D CRT_HOTPLUG_VOLTAGE_COMPARE_50;
>=20
> -	if (IS_G45(dev_priv))
> -		g45_hpd_peg_band_gap_wa(dev_priv);
> +	if (display->platform.g45)
> +		g45_hpd_peg_band_gap_wa(display);
>=20
>  	/* Ignore TV since it's buggy */
> -	i915_hotplug_interrupt_update_locked(dev_priv,
> +	i915_hotplug_interrupt_update_locked(display,
>  					     HOTPLUG_INT_EN_MASK |
>=20
> CRT_HOTPLUG_VOLTAGE_COMPARE_MASK |
>=20
> CRT_HOTPLUG_ACTIVATION_PERIOD_64,
> @@ -1453,7 +1439,7 @@ static void i915_hpd_irq_setup(struct
> drm_i915_private *dev_priv)
>=20
>  struct intel_hotplug_funcs {
>  	/* Enable HPD sense and interrupts for all present encoders */
> -	void (*hpd_irq_setup)(struct drm_i915_private *i915);
> +	void (*hpd_irq_setup)(struct intel_display *display);
>  	/* Enable HPD sense for a single encoder */
>  	void (*hpd_enable_detection)(struct intel_encoder *encoder);
>  };
> @@ -1476,49 +1462,49 @@ HPD_FUNCS(ilk);
>=20
>  void intel_hpd_enable_detection(struct intel_encoder *encoder)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	struct intel_display *display =3D to_intel_display(encoder);
>=20
> -	if (i915->display.funcs.hotplug)
> -		i915->display.funcs.hotplug->hpd_enable_detection(encoder);
> +	if (display->funcs.hotplug)
> +		display->funcs.hotplug->hpd_enable_detection(encoder);
>  }
>=20
> -void intel_hpd_irq_setup(struct drm_i915_private *i915)
> +void intel_hpd_irq_setup(struct intel_display *display)
>  {
> -	if ((IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) &&
> -	    !i915->display.irq.vlv_display_irqs_enabled)
> +	if ((display->platform.valleyview || display->platform.cherryview) &&
> +	    !display->irq.vlv_display_irqs_enabled)
>  		return;
>=20
> -	if (i915->display.funcs.hotplug)
> -		i915->display.funcs.hotplug->hpd_irq_setup(i915);
> +	if (display->funcs.hotplug)
> +		display->funcs.hotplug->hpd_irq_setup(display);
>  }
>=20
> -void intel_hotplug_irq_init(struct drm_i915_private *i915)
> +void intel_hotplug_irq_init(struct intel_display *display)
>  {
> -	struct intel_display *display =3D &i915->display;
> +	struct drm_i915_private *i915 =3D to_i915(display->drm);
>=20
> -	intel_hpd_init_pins(i915);
> +	intel_hpd_init_pins(display);
>=20
>  	intel_hpd_init_early(display);
>=20
> -	if (HAS_GMCH(i915)) {
> -		if (I915_HAS_HOTPLUG(i915))
> -			i915->display.funcs.hotplug =3D &i915_hpd_funcs;
> +	if (HAS_GMCH(display)) {
> +		if (I915_HAS_HOTPLUG(display))
> +			display->funcs.hotplug =3D &i915_hpd_funcs;
>  	} else {
>  		if (HAS_PCH_DG2(i915))
> -			i915->display.funcs.hotplug =3D &icp_hpd_funcs;
> +			display->funcs.hotplug =3D &icp_hpd_funcs;
>  		else if (HAS_PCH_DG1(i915))
> -			i915->display.funcs.hotplug =3D &dg1_hpd_funcs;
> -		else if (DISPLAY_VER(i915) >=3D 14)
> -			i915->display.funcs.hotplug =3D &xelpdp_hpd_funcs;
> -		else if (DISPLAY_VER(i915) >=3D 11)
> -			i915->display.funcs.hotplug =3D &gen11_hpd_funcs;
> -		else if (IS_GEMINILAKE(i915) || IS_BROXTON(i915))
> -			i915->display.funcs.hotplug =3D &bxt_hpd_funcs;
> +			display->funcs.hotplug =3D &dg1_hpd_funcs;
> +		else if (DISPLAY_VER(display) >=3D 14)
> +			display->funcs.hotplug =3D &xelpdp_hpd_funcs;
> +		else if (DISPLAY_VER(display) >=3D 11)
> +			display->funcs.hotplug =3D &gen11_hpd_funcs;
> +		else if (display->platform.geminilake || display-
> >platform.broxton)
> +			display->funcs.hotplug =3D &bxt_hpd_funcs;
>  		else if (INTEL_PCH_TYPE(i915) >=3D PCH_ICP)
> -			i915->display.funcs.hotplug =3D &icp_hpd_funcs;
> +			display->funcs.hotplug =3D &icp_hpd_funcs;
>  		else if (INTEL_PCH_TYPE(i915) >=3D PCH_SPT)
> -			i915->display.funcs.hotplug =3D &spt_hpd_funcs;
> +			display->funcs.hotplug =3D &spt_hpd_funcs;
>  		else
> -			i915->display.funcs.hotplug =3D &ilk_hpd_funcs;
> +			display->funcs.hotplug =3D &ilk_hpd_funcs;
>  	}
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.h
> b/drivers/gpu/drm/i915/display/intel_hotplug_irq.h
> index e4db752df096..9063bb02a2e9 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.h
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.h
> @@ -8,28 +8,28 @@
>=20
>  #include <linux/types.h>
>=20
> -struct drm_i915_private;
> +struct intel_display;
>  struct intel_encoder;
>=20
> -u32 i9xx_hpd_irq_ack(struct drm_i915_private *i915);
> +u32 i9xx_hpd_irq_ack(struct intel_display *display);
>=20
> -void i9xx_hpd_irq_handler(struct drm_i915_private *i915, u32 hotplug_sta=
tus);
> -void ibx_hpd_irq_handler(struct drm_i915_private *i915, u32 hotplug_trig=
ger);
> -void ilk_hpd_irq_handler(struct drm_i915_private *i915, u32 hotplug_trig=
ger);
> -void gen11_hpd_irq_handler(struct drm_i915_private *i915, u32 iir);
> -void bxt_hpd_irq_handler(struct drm_i915_private *i915, u32 hotplug_trig=
ger);
> -void xelpdp_pica_irq_handler(struct drm_i915_private *i915, u32 iir);
> -void icp_irq_handler(struct drm_i915_private *i915, u32 pch_iir);
> -void spt_irq_handler(struct drm_i915_private *i915, u32 pch_iir);
> +void i9xx_hpd_irq_handler(struct intel_display *display, u32 hotplug_sta=
tus);
> +void ibx_hpd_irq_handler(struct intel_display *display, u32 hotplug_trig=
ger);
> +void ilk_hpd_irq_handler(struct intel_display *display, u32 hotplug_trig=
ger);
> +void gen11_hpd_irq_handler(struct intel_display *display, u32 iir);
> +void bxt_hpd_irq_handler(struct intel_display *display, u32 hotplug_trig=
ger);
> +void xelpdp_pica_irq_handler(struct intel_display *display, u32 iir);
> +void icp_irq_handler(struct intel_display *display, u32 pch_iir);
> +void spt_irq_handler(struct intel_display *display, u32 pch_iir);
>=20
> -void i915_hotplug_interrupt_update_locked(struct drm_i915_private *i915,
> +void i915_hotplug_interrupt_update_locked(struct intel_display *display,
>  					  u32 mask, u32 bits);
> -void i915_hotplug_interrupt_update(struct drm_i915_private *i915,
> +void i915_hotplug_interrupt_update(struct intel_display *display,
>  				   u32 mask, u32 bits);
>=20
>  void intel_hpd_enable_detection(struct intel_encoder *encoder);
> -void intel_hpd_irq_setup(struct drm_i915_private *i915);
> +void intel_hpd_irq_setup(struct intel_display *display);
>=20
> -void intel_hotplug_irq_init(struct drm_i915_private *i915);
> +void intel_hotplug_irq_init(struct intel_display *display);
>=20
>  #endif /* __INTEL_HOTPLUG_IRQ_H__ */
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_=
irq.c
> index de53615571be..3b05eb3f9cbc 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -277,7 +277,7 @@ static irqreturn_t valleyview_irq_handler(int irq, vo=
id
> *arg)
>  			intel_uncore_write(&dev_priv->uncore, GEN6_PMIIR,
> pm_iir);
>=20
>  		if (iir & I915_DISPLAY_PORT_INTERRUPT)
> -			hotplug_status =3D i9xx_hpd_irq_ack(dev_priv);
> +			hotplug_status =3D i9xx_hpd_irq_ack(display);
>=20
>  		if (iir & I915_MASTER_ERROR_INTERRUPT)
>  			vlv_display_error_irq_ack(display, &eir, &dpinvgtt);
> @@ -306,7 +306,7 @@ static irqreturn_t valleyview_irq_handler(int irq, vo=
id
> *arg)
>  			gen6_rps_irq_handler(&to_gt(dev_priv)->rps, pm_iir);
>=20
>  		if (hotplug_status)
> -			i9xx_hpd_irq_handler(dev_priv, hotplug_status);
> +			i9xx_hpd_irq_handler(display, hotplug_status);
>=20
>  		if (iir & I915_MASTER_ERROR_INTERRUPT)
>  			vlv_display_error_irq_handler(display, eir, dpinvgtt);
> @@ -367,7 +367,7 @@ static irqreturn_t cherryview_irq_handler(int irq, vo=
id
> *arg)
>  		gen8_gt_irq_handler(to_gt(dev_priv), master_ctl);
>=20
>  		if (iir & I915_DISPLAY_PORT_INTERRUPT)
> -			hotplug_status =3D i9xx_hpd_irq_ack(dev_priv);
> +			hotplug_status =3D i9xx_hpd_irq_ack(display);
>=20
>  		if (iir & I915_MASTER_ERROR_INTERRUPT)
>  			vlv_display_error_irq_ack(display, &eir, &dpinvgtt);
> @@ -392,7 +392,7 @@ static irqreturn_t cherryview_irq_handler(int irq, vo=
id
> *arg)
>  		intel_uncore_write(&dev_priv->uncore, GEN8_MASTER_IRQ,
> GEN8_MASTER_IRQ_CONTROL);
>=20
>  		if (hotplug_status)
> -			i9xx_hpd_irq_handler(dev_priv, hotplug_status);
> +			i9xx_hpd_irq_handler(display, hotplug_status);
>=20
>  		if (iir & I915_MASTER_ERROR_INTERRUPT)
>  			vlv_display_error_irq_handler(display, eir, dpinvgtt);
> @@ -952,6 +952,7 @@ static void i915_irq_postinstall(struct drm_i915_priv=
ate
> *dev_priv)
>  static irqreturn_t i915_irq_handler(int irq, void *arg)
>  {
>  	struct drm_i915_private *dev_priv =3D arg;
> +	struct intel_display *display =3D &dev_priv->display;
>  	irqreturn_t ret =3D IRQ_NONE;
>=20
>  	if (!intel_irqs_enabled(dev_priv))
> @@ -974,7 +975,7 @@ static irqreturn_t i915_irq_handler(int irq, void *ar=
g)
>=20
>  		if (I915_HAS_HOTPLUG(dev_priv) &&
>  		    iir & I915_DISPLAY_PORT_INTERRUPT)
> -			hotplug_status =3D i9xx_hpd_irq_ack(dev_priv);
> +			hotplug_status =3D i9xx_hpd_irq_ack(display);
>=20
>  		/* Call regardless, as some status bits might not be
>  		 * signalled in IIR */
> @@ -992,7 +993,7 @@ static irqreturn_t i915_irq_handler(int irq, void *ar=
g)
>  			i9xx_error_irq_handler(dev_priv, eir, eir_stuck);
>=20
>  		if (hotplug_status)
> -			i9xx_hpd_irq_handler(dev_priv, hotplug_status);
> +			i9xx_hpd_irq_handler(display, hotplug_status);
>=20
>  		i915_pipestat_irq_handler(dev_priv, iir, pipe_stats);
>  	} while (0);
> @@ -1075,6 +1076,7 @@ static void i965_irq_postinstall(struct
> drm_i915_private *dev_priv)
>  static irqreturn_t i965_irq_handler(int irq, void *arg)
>  {
>  	struct drm_i915_private *dev_priv =3D arg;
> +	struct intel_display *display =3D &dev_priv->display;
>  	irqreturn_t ret =3D IRQ_NONE;
>=20
>  	if (!intel_irqs_enabled(dev_priv))
> @@ -1096,7 +1098,7 @@ static irqreturn_t i965_irq_handler(int irq, void *=
arg)
>  		ret =3D IRQ_HANDLED;
>=20
>  		if (iir & I915_DISPLAY_PORT_INTERRUPT)
> -			hotplug_status =3D i9xx_hpd_irq_ack(dev_priv);
> +			hotplug_status =3D i9xx_hpd_irq_ack(display);
>=20
>  		/* Call regardless, as some status bits might not be
>  		 * signalled in IIR */
> @@ -1119,7 +1121,7 @@ static irqreturn_t i965_irq_handler(int irq, void *=
arg)
>  			i9xx_error_irq_handler(dev_priv, eir, eir_stuck);
>=20
>  		if (hotplug_status)
> -			i9xx_hpd_irq_handler(dev_priv, hotplug_status);
> +			i9xx_hpd_irq_handler(display, hotplug_status);
>=20
>  		i965_pipestat_irq_handler(dev_priv, iir, pipe_stats);
>  	} while (0);
> --
> 2.39.5

