Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B239986C02
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 07:28:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 850A710E0C3;
	Thu, 26 Sep 2024 05:28:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kOjMAfgJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D0F710E118
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2024 05:26:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727328401; x=1758864401;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IdP3F2Xl5ol59E+vhwlz90+ak32+LOlZGfiFtujLebI=;
 b=kOjMAfgJNTVIr2WzgHtc0HqR0lrZfRJOXJlXrmxFN+aASZ7tGKytvC9y
 zmBBJNrl/wH1R4LyukJnPQ2vNnLw8DXAcNtSMGD+2tNzREUmjOcg2et9X
 0bhyfVBv2NOgIV+xQQwaIIVKzXtHv791cTu/MIHt7+p4Gu7ADWMLZMBPc
 EhXjl0vO1629Va0CrS0nChQ2Ib1G878Q5Lbckq3BcdVZ/+KgQfHki150d
 BeeTp2ggGN/gIvaUYA+pe06JYzqKxYyF5ap0MdkkeSz9MXvIRBl+2UE6t
 b16EUG+znStRZKJuSL4ryXhhOHQ1rH4DbcjBsxGp9pO+hUWBKPSA19ebU g==;
X-CSE-ConnectionGUID: NouCtaybSU6VPYtlOAhq3w==
X-CSE-MsgGUID: hA6f9mCUQdiZJgAUty8VwA==
X-IronPort-AV: E=McAfee;i="6700,10204,11206"; a="26586498"
X-IronPort-AV: E=Sophos;i="6.10,259,1719903600"; d="scan'208";a="26586498"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2024 22:26:32 -0700
X-CSE-ConnectionGUID: guIs36xqRUG5AF6DYCabCQ==
X-CSE-MsgGUID: l3qkET51QTuJoD5PAppyKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,259,1719903600"; d="scan'208";a="102838412"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Sep 2024 22:26:32 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 25 Sep 2024 22:26:31 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 25 Sep 2024 22:26:31 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 25 Sep 2024 22:26:30 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 25 Sep 2024 22:26:30 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 25 Sep 2024 22:26:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Em5AueX7FdZJTLcC7+AdU09qRyxltmdJEBEhMJYKoHstheYio0W1lO3lAVnXo+pAzDTwdgcqaWwQ3rNR/Dx9ALRRjpoqQlI2AtqO7rB2OLss+Dp/D63idPT4h3Xa575H2aOaaXHmbojr4O2P4RIswWJpeqjP8y7aa2kzXUtUgiET9cq6BX7uunmnPj+1J9SGM83K/5W8ByuRdW6fHTeK53MTLxsTmqRZ9B4H8ipYrRS3lupE8hqfXyjgdh8FVMg0Pmrhz2EsO7JV3VLbKqWhV1QGO3v6vYFmKi2TWpYaWHgaiCgK1jaDE1tUpKRG4neDjbP30bhxwvG7cYUoMh+rtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cTdK/pC64Z2UlElwkoZxxltWN3OpZ1mn1cko+lvfu6I=;
 b=j69l/Mnhu+iH49P/n+P7wr3VR1QIAA1aIxlEtO6crRq7Ftf7y36lGdddpAIxDgXl1tXc3fTSkYi3HilqwgtocmN7JKthxpXRm36XialxhH1jCDAL6+xjbS/I5ti2IjDuTJEnV2cLypjT0ie0I8ROJMhqCvxH9Ef5+mQL9aNpwMkIgThEM50az6fChZWEjmuCUwveIemdqVORsTgGFeuTApnfXVFCtsKuFt782h5eLqH6zB5cD8Cp931v3+zLapVOg08YoxmYP9M2Hn+mIUj+S4rlICwPUchQwKEPW4rEyGwr7YfS6nzgwRohMJU5Y2l93xMkh/4g5tAgE7/KXWRPgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5508.namprd11.prod.outlook.com (2603:10b6:610:d7::16)
 by DM4PR11MB5969.namprd11.prod.outlook.com (2603:10b6:8:5c::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7982.26; Thu, 26 Sep 2024 05:26:27 +0000
Received: from CH0PR11MB5508.namprd11.prod.outlook.com
 ([fe80::6ecc:ebf2:5d20:80bd]) by CH0PR11MB5508.namprd11.prod.outlook.com
 ([fe80::6ecc:ebf2:5d20:80bd%3]) with mapi id 15.20.7982.022; Thu, 26 Sep 2024
 05:26:27 +0000
From: "Srikanth V, NagaVenkata" <nagavenkata.srikanth.v@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Kandpal, Suraj"
 <suraj.kandpal@intel.com>
Subject: RE: [PATCH] drm/i915/vdsc: Add bpc check in intel_dsc_compute_params
Thread-Topic: [PATCH] drm/i915/vdsc: Add bpc check in intel_dsc_compute_params
Thread-Index: AQHbD83BZp3OpOOGME6R1KYRSiTn27JphShw
Date: Thu, 26 Sep 2024 05:26:27 +0000
Message-ID: <CH0PR11MB55081938BBAA338D037BC597C26A2@CH0PR11MB5508.namprd11.prod.outlook.com>
References: <20240926043332.1284692-2-suraj.kandpal@intel.com>
In-Reply-To: <20240926043332.1284692-2-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5508:EE_|DM4PR11MB5969:EE_
x-ms-office365-filtering-correlation-id: 6ce278c8-d532-40cb-4c90-08dcddebc552
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?S8PUUhroeEcMz87/f7bGfGRTktqM4ue3dfxfn83QEijYmO6SMFFxL6ur5Q8q?=
 =?us-ascii?Q?/QXy8qdXW3IzmmIwccW2ZCqzYcltt0ko6oPPyAo7Oomk9DrwSD4Vuj3d1+i2?=
 =?us-ascii?Q?o8t4rHCww1KIXx4i9IYBNms/1EhjuXeqb8QIfJHFF+is+13yPMPfwyH0tYEn?=
 =?us-ascii?Q?g0YuK3TdYUdL+zV1rY+a/H013TWkz74bH81hpEbdR+nJBR65FIYga4e8OFAG?=
 =?us-ascii?Q?eEjHV3FOxvDA+ot/w3+x1TWcPcjRHD9zkP3QLRKjK0kva8Twe9rfPq8Xigfw?=
 =?us-ascii?Q?SOEm9ukvQ72hNhg3PY++D00m4uF5ZOt9GkbbW8ftNlZl0gd3RboR6uUWRjDC?=
 =?us-ascii?Q?qNX0lPSpkPZeqHbPXBHrQFCv8rfShdz/KUJ066qFzvp/XDmwX5Xl/1hSalEo?=
 =?us-ascii?Q?0cJE+I1S33bbfZcI3FMC4hSXp3fH/T8WMc8c7dn21duqIFwLMixA8juxxMn4?=
 =?us-ascii?Q?4lFHCkg+6R/DX4ox3CIbp8id6/4pz8DlrJ1YaJfXqBzNRB286PVl7xmtvtUy?=
 =?us-ascii?Q?U+FJQbNsIRSQeF1jhWJF1GTknEWkYv8/zZMwxsQiT7V6S3dCB0SqUqI2H3D3?=
 =?us-ascii?Q?tcGLGW3bK48JoLK98YUMrd61tmycnk0Af0RYxntGUHi+rm/85cLIVwNSfPi/?=
 =?us-ascii?Q?1NLDK3ymM5S7LwSJ9KFbHy5qY7z6z0Zjl2cfRdspG/7BIzxHpSMhw70JyL1r?=
 =?us-ascii?Q?HQx2hjt3wwzBqFn67JC93hAqvLZpvTaittKhic2n+PN99TgHlmkLXQCIB0OD?=
 =?us-ascii?Q?sbPBRxnQXXfeHb92+V16+BXGB0rQ+ZkYDdqp55M/+Y+IzPXRiaEPKCgJXvVk?=
 =?us-ascii?Q?UJOuJ8oIdVJVI+xEzTEWaAsyx4qv7V59GH6gUKwU/2trulpq0WPbni0Oo/cU?=
 =?us-ascii?Q?zdbcCY72njhNK6QvURKd9ohfGayeXrw1st0EJNg664D7XfRorH/+jyISDU25?=
 =?us-ascii?Q?X8LwM+eMknajQGM8scuIaxW6UeE7RjV+KFIoetBC3UCL8VLqUxYJDAbVqa3/?=
 =?us-ascii?Q?+HmZCOsKv1WUNbeQzxnX6ZGOg/31K6YFqhL81uxGA5YAdBcaOJ8qSTZLNMpj?=
 =?us-ascii?Q?xTBGnL0XQpPuvqMRfkOw0QGzALLqPZyg31d7c3yh8GJiUNzKzaVlYFMfmwMW?=
 =?us-ascii?Q?vfvNcEEFM9aaxqDZCbRlh5c9mCuFPYdkc3IBbu/tJSt0lu5v5wGo0JY25fDE?=
 =?us-ascii?Q?Wu/CkAISTowcYzebvuuNrkZFiwjBSHYBrDf8Ym/kgICjsd7LZ/3D2kARGpl2?=
 =?us-ascii?Q?Xtbpz9xW0n4yiyx5buh/YUiaLDK+xVYx/G+Pa3gDW7EdoeU9T9/03H0TohbS?=
 =?us-ascii?Q?SutGs9sbKqvTngX75jGAn/ZjT6wFo+wtcxHSX1YWrIIOag=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5508.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?4sUGlES3LOQjILWDstWJ7xEnGhJkfEG2yIo6/o2iIS3rVHdz5b32xKQTCSw1?=
 =?us-ascii?Q?y2Nl2ZCEuq+2eH/8ofQDumYqsskn3HkoFOT2h0cY/vL01VF97EOArmCI0xnR?=
 =?us-ascii?Q?ODY8jtIR+DDjLTaKj3jdOEC+yY6ZjIa1JDX7WXmz0csZvoJa9JZwc3zhiRbD?=
 =?us-ascii?Q?Cosqdm1vc1Mcp6lb89T52cQXm/j6KII+H0OKAJkIMTlDRnp3rfbjGfvOMZgj?=
 =?us-ascii?Q?ujLzjPjBNXK4fW04bi1Z7cYews8ADI1dqypxtV+8iPZFmQpX3BVWL8ZAJ3pa?=
 =?us-ascii?Q?tLMEr5fJ5++ua+zsaVsedS82MUG1wyo7nEaiZ7q7awOjZxvWSmAjIBWCP4Ru?=
 =?us-ascii?Q?No17c5q6RJL7rSJJ+DzKPN8G3F4WHwImlHTuUJv+rn+uIb4ifWOcsWMqY4Ip?=
 =?us-ascii?Q?ryeYgTONo709yNyKLCetnN8Mww0qBYWrga3Dc+KcSguF4MM377OgnJ/20CmL?=
 =?us-ascii?Q?jcHx003nB7KafMcFuCshp3MnlKUvYVk6d9/A/R2rfzqqTZiQ/qS6LQpL+N45?=
 =?us-ascii?Q?oLPSvHKarLAjEykO+gnpS86HKjVWpDMdTSVcnkzy2k84uBXlXPuzaRxahiVN?=
 =?us-ascii?Q?PYFxyyVAoZbUQJhc5ApJ/NaAegz6T1uhTEGdN9nJUG+4d2FXSIuTiPq6nU19?=
 =?us-ascii?Q?g1LjO+YZ21OqwD4cUkHXkfqwCUQPkeIyRjzIJicfJ0u13q9oGysvrhsBeN5z?=
 =?us-ascii?Q?0E80NsLETOXwK6LnpaDTJdddnp+bdPl16Rc98NnCOm7ngJJxTN/XFKEbgnOH?=
 =?us-ascii?Q?KlpBj5PVJhipuZSqiF7Dym+GoXUeJS2JQBjZ2MyrOiPkLMHB9xr3wPe5hKT9?=
 =?us-ascii?Q?mkReorDgQJlmC9NEN+PcE3ppR2ztBRT3X8GGfr71GfRX1BIqOHi4IMqtItg5?=
 =?us-ascii?Q?Xm781E3rBVQsSBGPYHsa/LsbnpKbltquVhtJBD6hn2qnE5UQKLafEjBvfxrQ?=
 =?us-ascii?Q?oVTktChHSbZjCe2NwxIy3UaM6QYEkjHLavhTicjipfxOnV/txDTezObiWf+v?=
 =?us-ascii?Q?HkA9Y7iWa+ntsKWDPgAlGYs7RqjD6ooDlAg4r7abT5rA6EGKGJUcWK4FFU89?=
 =?us-ascii?Q?GD9bueMFR9Ei4WxtY4fC9j4+swl2m8f5Fn/G1s5jO8bq7Hl6J9CpL4SkZYzb?=
 =?us-ascii?Q?9kFzZL49NebU8p2dVYSr58UWH5qTMd8kS/ItZYhOuIquEle61/ciyEXEPnKH?=
 =?us-ascii?Q?f42KMvunXaz6AJrZ3Df8bRQbX5xqKWSg33Fd31QrM17NheJuy3xMoBXWEh1n?=
 =?us-ascii?Q?9s+6tba0lmRrWslCondXPKsxo/AwMq6O8eYKfOl6sMOtOQoEShnRXA/qZ+Yg?=
 =?us-ascii?Q?3r+LbFp9ToXahT9ivG4/DJjFYX4cMJuJs4r3hCrivRT2bmnNErbvATzWQqwm?=
 =?us-ascii?Q?bpBv4SCKEcDOpI/BwXvSe369UiCZZlaTAABO3xZxfYBT7f54IYCsGjQEa/oT?=
 =?us-ascii?Q?oJbb9lYl4vu0W9VKcFmJzL16NjvfYNjq3anEIUkzQ1bav57ogfohwF4OADXY?=
 =?us-ascii?Q?3qMBCVHjDfhLRSA1YvCEwMWi0fP0KweXfKMdzuYe7R0KWCh/81YU6ikM5Pk9?=
 =?us-ascii?Q?+WBiZxBkcW3QFgaC9dz3DdFJpiSeZ7yDQbKAZm6qOIJ9d7C8ZnnVBHIx9+3D?=
 =?us-ascii?Q?9g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5508.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ce278c8-d532-40cb-4c90-08dcddebc552
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Sep 2024 05:26:27.6832 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Amlpa3nZWkFVl/75GmgLlaDAwTWMO4bQp7rT37zHFnlb0OhVx0ZnkBxE31Eaw9A0ffEZfcTXNTDQRTyt4zYCbWC9Gi+KzIK5hCxWeljAHFgJuTKCELlOopFqoDyPV1CP
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5969
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Su=
raj
> Kandpal
> Sent: Thursday, September 26, 2024 10:04 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: [PATCH] drm/i915/vdsc: Add bpc check in
> intel_dsc_compute_params
>=20
> DSC does not support bpc under 8. Return an error if that happens to be t=
he
> case.
>=20
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vdsc.c | 5 +++++
>  1 file changed, 5 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 8158e3702ed5..39bf8bee106c 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -297,6 +297,11 @@ int intel_dsc_compute_params(struct
> intel_crtc_state *pipe_config)
>=20
>  	vdsc_cfg->bits_per_pixel =3D pipe_config->dsc.compressed_bpp_x16;
>=20
> +	if (vdsc_cfg->bites_per_pixel < 8) {
> +		drm_dbg_kms(&dev_priv->drm, "DSC bpc requirements not
> met\n");
> +		return -EINVAL;
> +	}
> +

Check for minimum bits_per_pixel must be according to output pixel format.
For 444, it's 8.
For 422, it's 7.
For 420, it's 6.

Moreover, the failure reported was on minimum BPC, not on minimum BPP.
We should be checking vdsc_cfg->bits_per_component.

>  	/*
>  	 * According to DSC 1.2 specs in Section 4.1 if native_420 is set
>  	 * we need to double the current bpp.
> --
> 2.43.2

