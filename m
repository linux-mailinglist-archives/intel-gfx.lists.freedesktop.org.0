Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C06389300C3
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2024 21:17:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A93910E09E;
	Fri, 12 Jul 2024 19:17:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QVRMUbfM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3F1610E09E
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2024 19:17:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720811845; x=1752347845;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=josh4J/GIEaOXnnAguF1vtuIVci67SLii1FcJPl2RQI=;
 b=QVRMUbfM0JmeH/KQ/nltJwXlM3hivnJNqriW9FlotM7PPyLyU2dF4xH1
 1Z+tHFf2T4p3Ixygb7aN8Zpfi5XgLr97PlNlxS1d6HwmlHqN42Y3BQcwR
 5PXnaPpJ7j8L/qwcXGc+v/jp2vUIAnpn5umUdOpRXTpawEi1Mfi6zOG1g
 LDFAC7sz+e8NheHZfyBmlvV54YEo6UOKJGLBWhD0NNG/WdMFb+rJaKyqx
 cM3zrGOENqFWKszCP+PO2ndeUfJRo2KV9po2ORqggfpX1xJHZkRzf/Wlj
 Qk8ENqMoNsdgEWj1KA9RC/eh/felokoSYlNOxpbO/RrVgbv0C3DdKM9jo w==;
X-CSE-ConnectionGUID: 9mOzypj7R22ve1y9CuWNxw==
X-CSE-MsgGUID: Bn/rD/pDRdSXpXV+yWUYxw==
X-IronPort-AV: E=McAfee;i="6700,10204,11131"; a="18385486"
X-IronPort-AV: E=Sophos;i="6.09,203,1716274800"; d="scan'208";a="18385486"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2024 12:17:25 -0700
X-CSE-ConnectionGUID: UTK+aWssSBWtG7cw3LmyRA==
X-CSE-MsgGUID: nfT3cpsCQW+g7tbaQE1nbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,203,1716274800"; d="scan'208";a="79708509"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Jul 2024 12:17:24 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 12 Jul 2024 12:17:23 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 12 Jul 2024 12:17:23 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 12 Jul 2024 12:17:23 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 12 Jul 2024 12:17:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=msSodhvFEH6bRMgd1os7oz+/J/mOVkIMMh6bM/lzaGBjgotWmtDY0dZqQtuCICTWLEaKwaF5vu/uiXWZXi67BV/HzLfAi2F47hYcsRHSShyDlksGXEiKKnD27DV1Z/7u27Z+qaNDIhm5gSqyh++boGrDHCgQkpdmBYtmrqoO1OT2e4KPnfHXaERXaOs5I1K7b+plY1yQ0l0GpBiL1DkvYzLUJ+zcEe7x12BUbcmpqOYrK1TI1JMVeS+lHClxvh0Bjz6WQFIq4171S2Sn3sBguslpsURmK6L+1UcOic9HgdcLLY5a0pZko0kDSYQAy04SYiDljdo8GRcAJ2tuQo7uMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=itOBuwOkbOKUUlWGktT9zHu/V/xjmF57Tpas9C8wCLc=;
 b=tmCD3FCLrY9dJIs7GbkeFn5a8+IN7L76dnCKlz7WGqEKavxE3I7dgXuE4RgfyrJyG2LdclAlmMfKsi8VPuS5TIgpAqi4AuyEiJWQ1v8EhTSP2c8HkbTY89I0ciwjCXgmt7Vijy78CHVNjCMlDWEogr785+6/QihRphvMi7UOUua9s7mmKGQhCgwU7bWRJKUgrWoyCYAgGYTnqeLEypT7zw1gFitYb4oTqIO21kTdZlBhat7A0nOyzIrI7jfobsEUPatozKI0/G6A/X5v3+a4r6zIXfeSaFJ61m/Nih9ntGtIm4r7ZShtXYlWy0hw8mEIN7bk26X0Zy0ZNHmCfhIOnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by MW4PR11MB5936.namprd11.prod.outlook.com (2603:10b6:303:16b::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.35; Fri, 12 Jul
 2024 19:17:20 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace%5]) with mapi id 15.20.7762.020; Fri, 12 Jul 2024
 19:17:20 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: Dan Carpenter <dan.carpenter@linaro.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Chris Wilson" <chris.p.wilson@linux.intel.com>, "Shyti, Andi"
 <andi.shyti@intel.com>, "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [bug report] drm/i915/gem: Downgrade stolen lmem setup warning
Thread-Topic: [bug report] drm/i915/gem: Downgrade stolen lmem setup warning
Thread-Index: AQHa1GRtzjAs6tKnV0WLgQA5ElLPRbHzdtPw
Date: Fri, 12 Jul 2024 19:17:20 +0000
Message-ID: <CH0PR11MB5444DA727045A0344CCF191EE5A62@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <085f37db-b2e0-4246-8850-1d6922fec222@stanley.mountain>
In-Reply-To: <085f37db-b2e0-4246-8850-1d6922fec222@stanley.mountain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|MW4PR11MB5936:EE_
x-ms-office365-filtering-correlation-id: 35310819-3d71-4045-c433-08dca2a74071
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?9tpg8spyV+qd/kYKlouyqsg1V5YpkEPI323yPpONBh7dxTmAgMTH2ZmK8U1z?=
 =?us-ascii?Q?CfA0Fs1QJ8NkzATnfqYnvofp2iZgj5xkT1+KEwliN9k3AtwXoowWLNWrq8uL?=
 =?us-ascii?Q?jRIdqZ84ACsp9hRqUaYa+7OVSalsr6Ur6NUOf9FdHY+jyiI7bSeNkkhnh1ST?=
 =?us-ascii?Q?bh5UQpbEy/UNzWKo9OWhGk2HFaeeHhyt51I7XcV2Bo3q1kYmfxNG8iLmmJ3m?=
 =?us-ascii?Q?2bKXvA4XpIWcDxwtSIf4yYdlUsUSoIAHPHdW5x9R7htrFYc0UCB/p08Q+xg+?=
 =?us-ascii?Q?JO5rtHb4YLPu/gVOe8n53DjLPQ7zyOXq5UGJTWgLnJBv0i5Ms/9hH3MefQIr?=
 =?us-ascii?Q?JxbWLx/XbNH86zq2rZg3yqqWq6x7tCTRrFmF5rqdmXxCydYaLcKufM22MA6o?=
 =?us-ascii?Q?lGGgUxk7BdzKP1uqhxGL+5HCz5yhnspRcKcXk2yGgMblFABXqfzkfZoxvuNG?=
 =?us-ascii?Q?jYZAqmdBlMQU8IV4wxf2bUgxCBxdtCVTTBKF9BG5UtkeAjAMHvysOM8sYiv+?=
 =?us-ascii?Q?t0dbX6r+EXBalcymRSLcrpPjVg/V0vkrmOoNBxUYKbf+ezEE4Y6fGDki/3pa?=
 =?us-ascii?Q?2eMGAM/ADxIpqw2qJwyE9hsR2tVcdYchd7Psp4vvs/Pmi6llSkSDFaqZFbaG?=
 =?us-ascii?Q?8yw/4oeAeICWSX0vd5fdJRgrXfoPnyCrA3hyVaVQhC37ZJuBWhNkOVrEHhyH?=
 =?us-ascii?Q?xNhv6Rm5zsWAzVZnw4HMfD9RbarfnTlRjl1P5AagmQRMVW9zRJB7TvAp0aAb?=
 =?us-ascii?Q?vnPx4HDmtcJuoeSSOBSEjB09n+n9DdgOL9xEM4IsAm0JRrPPGBkRx4u6Tzkm?=
 =?us-ascii?Q?cSCBBFmeELuiz1B+Pck2w+D4cH0ZucYliTeuHN0u3nJ+BWahrM+ZA2ukBYVp?=
 =?us-ascii?Q?4wPN+L5d6QyUNGFBoyxHRdI10vFla8fj+zNW/UhS9ZOcfikC5588VQvDHeS1?=
 =?us-ascii?Q?7vSbF9KN+5jI71m2glo4jbJJ9fexxbCnaimd70YLpv4qmqv+RzMMQyC2lUMS?=
 =?us-ascii?Q?gw+46oWA7tDdqq6kWEHB8PxdIids07beuKoQqEJ2uS+Keuwu+pYWPBdoushy?=
 =?us-ascii?Q?KwjgvZ3cdjdmBFQB7hw//kL1frny3/Y8HrSVkrZXs56CQ7Fm9H32BP27rnCl?=
 =?us-ascii?Q?gclkvqa5L6sPUqMNh/QdOfmmSpsdpvQBvNwUMmixh34mJFciM1cea/ODe3Bc?=
 =?us-ascii?Q?UYcvKLxQUrV9TlgedUi8zXObCGtq4q5ApbVdbaK2G8PI52EtwABgRkLqqwQf?=
 =?us-ascii?Q?X13VcNK6bfFgMRuZ0Jyr/hkFDISaYk/ll9Dl1QvlMLVYbQxtne7Aux2uEXsg?=
 =?us-ascii?Q?KZ0YGY1Y1JyTmcUs6BgIttY78H+rFQQgua2kmD+NWcHE+cwi5f0gpEITw958?=
 =?us-ascii?Q?L4dX4v/psg1htOrcDqAqG2StFI3Gp0V5aIXK1gW43/54u5mszg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?MsOuzuCNB3GyeBI9cS+cOCZBkI1SDeM2DCO2GbQUxou5HL91KHPN5ruZQmJU?=
 =?us-ascii?Q?gDvo0n6yr48Wk1vftcjIt1/C7aGxu3+T9twByTglpifFUDxYJ1rmdRmckwLM?=
 =?us-ascii?Q?gbKQfb/UuvFThbEVUSdNOxPR3gyzr5gu8R0sxHthx2HSElb9kGf9rR/7Kglk?=
 =?us-ascii?Q?Ohm1yljYlZFrZs+C0WhjUISkiY2DnWI5ZmWc66EUdlZ60Tj1D6HeT8+gjyGn?=
 =?us-ascii?Q?ap+2bx+TcUSMLT2js6OwfknjR8kRqzKnmUY4tYhd/KKsY3t95A3wklhSyilV?=
 =?us-ascii?Q?wNa8PcYYT/v16R2i8miHJYtlnNmAAEwxYGhnju5t0ofGO2WWqViioiZ15NAa?=
 =?us-ascii?Q?K57ro74dgDfb5WDzEj38wumw16IUgIFaW+ddE4QQ16kQ7QNhV1IG38JL6ddQ?=
 =?us-ascii?Q?FMOPgEWbmQL/QDHD07WsyGKYW3cTDtzXKZFbaSpT2DgoJteZUZdACO+fyl36?=
 =?us-ascii?Q?N13GnH1NCM3LJ5zVBPV9CSKfSagTXgOhkzCNC+1O1NWEhASLnMf9shTu/DiU?=
 =?us-ascii?Q?W+4ztGp7Am5xHKUf+3W3yMogJFqC0jIjEwajT/rauWbvMvDj3ZkKUji+ycZw?=
 =?us-ascii?Q?rPD86yi84Sv8i1913GMVykIQBmmT2U+angYM+jf3cGA9QiBUVXmDVxgZbzb5?=
 =?us-ascii?Q?YxV9k3mb6pqNpqlf5us1mmqjuFTl0v/AI8PI0pqj6qndeX6+KvWzY1Sz1m8k?=
 =?us-ascii?Q?ZiXh9iV6RdHja8PAn+PGQozFTdZfExv5eae88ZyCO4DBbLSo5fc16JdpRpS0?=
 =?us-ascii?Q?UtVlyDtIiHDun+We7zDXEClfS7K/E4B1ClHg43Ww+8+eUgr1jAU209tnsa1h?=
 =?us-ascii?Q?Mz/4tpcGdA5sbsmbYGb3YgmK2a/EaKjWJEglRf2zhLm8fNUr/hgTAb0IGS+t?=
 =?us-ascii?Q?66ONPHWDCUjYpxTJGLQ9x7wagMOTIywEcILitT/BrOMtgkULwgAWJAKIv8wt?=
 =?us-ascii?Q?6EXcKlo9Fe8ZSAaPNd8X/PJ4QWvwkOJ/3htc0+CE0IlCU+SaCBlCoNwBPGsj?=
 =?us-ascii?Q?MFDVi0F+KOq+xk3h7l4YTKDFNB4W18rE4jEfaf/9G3JvkSLEmLPf73jNRrF2?=
 =?us-ascii?Q?eQ1kX7Fw72oNGPRVwdnwt1ZU+jM7adA4SoHK7SonQ5lysAqaA91aC5nc7uyE?=
 =?us-ascii?Q?Q6B0Cirx54ElgGWnWPME7L+O9GtJAOX3Pc00Yvlgad6mD22wnLLH/j/TFiZv?=
 =?us-ascii?Q?YK26BMC0/D2zpY5OI/mt48bsSA2dP7RLjBfsy5eaWZ656ocxmIqGBCIS3Bq0?=
 =?us-ascii?Q?GhQ4pCSVDt81GhuZ7ra/rdM5el/ZaQBXtJq4+Yc3nC5heXgLJeRDlKYceCKO?=
 =?us-ascii?Q?PG4FQk8+A0/Msz07Sq4rQGfvkCZsUaewaOiSePfnb4yUXqwy5wRD6UrH1d4I?=
 =?us-ascii?Q?+g45vKn62NkJxN8Mh9dP7QTQ1F9noORIQxQVixPo18hT7GJUnnnVhbX8F4gh?=
 =?us-ascii?Q?eG+XjuJU3JaxKytl7QikyASRUz7DS6/9Yvv4Vr7U+WbsAzonj4Z2QbQCti25?=
 =?us-ascii?Q?B70SWmYa5Bg4ABLu2P8hZlTk4b61iNAxcvDG9j9euFgfRjbLYC00DVc9dy7B?=
 =?us-ascii?Q?M+LSzFy4mtl1KAN94Piq1Sq3l8K0KiJbH6H4mOgJ?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 35310819-3d71-4045-c433-08dca2a74071
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jul 2024 19:17:20.3920 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SejomVrCo7NAbtgIWLwzadDB9Fadh6nwhxcKoaU7Fuu33nD7yj/+S54zAJFsQItQZnNh3qaIqGr3+ORWf+bAKcfVBqE0rUNdSfeuKx21mrM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5936
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

Hello.  This issue should be resolved by the commit "drm/i915/gem: Return N=
ULL instead of '0'".

I thought this had landed already, but I can't find it in the repo currentl=
y.

I'd recommend asking Andi or Chris about this.  I'll CC them about this.

Thank you for your patience.
-Jonathan Cavitt

-----Original Message-----
From: Dan Carpenter <dan.carpenter@linaro.org>=20
Sent: Friday, July 12, 2024 7:04 AM
To: Cavitt, Jonathan <jonathan.cavitt@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: [bug report] drm/i915/gem: Downgrade stolen lmem setup warning

Hello Jonathan Cavitt,

Commit 05da7d9f717b ("drm/i915/gem: Downgrade stolen lmem setup
warning") from Apr 22, 2024 (linux-next), leads to the following
Smatch static checker warning:

	drivers/gpu/drm/i915/intel_memory_region.c:371 intel_memory_regions_hw_pro=
be()
	error: potential NULL/IS_ERR bug 'mem'

drivers/gpu/drm/i915/intel_memory_region.c
    327 int intel_memory_regions_hw_probe(struct drm_i915_private *i915)
    328 {
    329         int err, i;
    330=20
    331         for (i =3D 0; i < ARRAY_SIZE(i915->mm.regions); i++) {
    332                 struct intel_memory_region *mem =3D ERR_PTR(-ENODEV=
);
    333                 u16 type, instance;
    334=20
    335                 if (!HAS_REGION(i915, i))
    336                         continue;
    337=20
    338                 type =3D intel_region_map[i].class;
    339                 instance =3D intel_region_map[i].instance;
    340                 switch (type) {
    341                 case INTEL_MEMORY_SYSTEM:
    342                         if (IS_DGFX(i915))
    343                                 mem =3D i915_gem_ttm_system_setup(i=
915, type,
    344                                                                 ins=
tance);
    345                         else
    346                                 mem =3D i915_gem_shmem_setup(i915, =
type,
    347                                                            instance=
);
    348                         break;
    349                 case INTEL_MEMORY_STOLEN_LOCAL:
    350                         mem =3D i915_gem_stolen_lmem_setup(i915, ty=
pe, instance);


i915_gem_stolen_lmem_setup() used to only return error pointers but now it
returns NULL as well.

    351                         if (!IS_ERR(mem))
    352                                 i915->mm.stolen_region =3D mem;
    353                         break;
    354                 case INTEL_MEMORY_STOLEN_SYSTEM:
    355                         mem =3D i915_gem_stolen_smem_setup(i915, ty=
pe, instance);
    356                         if (!IS_ERR(mem))
    357                                 i915->mm.stolen_region =3D mem;
    358                         break;
    359                 default:
    360                         continue;
    361                 }
    362=20
    363                 if (IS_ERR(mem)) {
    364                         err =3D PTR_ERR(mem);
    365                         drm_err(&i915->drm,
    366                                 "Failed to setup region(%d) type=3D=
%d\n",
    367                                 err, type);
    368                         goto out_cleanup;
    369                 }
    370=20
--> 371                 mem->id =3D i;
                        ^^^^^^^^^^^^
Potentially leading to a NULL dereference here?

    372                 i915->mm.regions[i] =3D mem;
    373         }
    374=20
    375         for (i =3D 0; i < ARRAY_SIZE(i915->mm.regions); i++) {
    376                 struct intel_memory_region *mem =3D i915->mm.region=
s[i];
    377                 u64 region_size, io_size;

regards,
dan carpenter
