Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3D07977280
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 21:58:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02F5010EBC9;
	Thu, 12 Sep 2024 19:58:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E0mDAWTN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 458BB10EBC9
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2024 19:58:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726171121; x=1757707121;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LkbLq4HKhsQajFks94DFZn/LYBEGADTQs+CTOL/CPMI=;
 b=E0mDAWTN4QwvPFJru7DEDcCdzlBomEBNE2oQC4sQOoldUf38vqgExnnG
 P1DXSq6Na+NJfneum/+jPpRi2YRowxMV6/YOPjvmS2PxW+EusrYHnDqXo
 0KtcqKdwB1Ag9OLpHOCKbbqICngJO6wHI7BKhJvLcCxW844rZptGERUkO
 65pwJDhM5Ht8BVGoKeMGHM6Kl9l08FBAgF3PZa3twVXwVg1pSt333E5/J
 1HF8dGMOsufZRQk4Sm4JDZnOHD88Uf8ACJU2fVY3CJEU0qjTsfAH8ZkRn
 LVGJQ5wCwUso+4aQRlsilR1ZEeSf7dhV2M/107rrztM6UeYB6ZqQIsH9a Q==;
X-CSE-ConnectionGUID: 1wP+I8VPTgqeuYdNl1TzJg==
X-CSE-MsgGUID: eWfnAHLGSV6RBGo2Tc5DNw==
X-IronPort-AV: E=McAfee;i="6700,10204,11193"; a="24923374"
X-IronPort-AV: E=Sophos;i="6.10,224,1719903600"; d="scan'208";a="24923374"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 12:58:36 -0700
X-CSE-ConnectionGUID: 6f1ayBM3R8GuLkZM3HCq8A==
X-CSE-MsgGUID: ZQnTPvsjTyyUDtG9JLeeFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,224,1719903600"; d="scan'208";a="68116532"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Sep 2024 12:58:36 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 12 Sep 2024 12:58:35 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 12 Sep 2024 12:58:35 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 12 Sep 2024 12:58:35 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.45) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 12 Sep 2024 12:58:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wb6U5LVzl/LhwX4D+i9TKe4hvGpY+9P6sQW2aXCUwV4q/uRt/rbR6sRL4gc1vH48B1fivMWlEA+48ZZQoOpHREfhhm/H/UBrfUdQmEU4hiIrbbxLUa3EicAqJPejr6Uy1fO9Vn0MhruS+7s0pd22NG5zHNpqRn3xR5aqtoqtSLD6vH/lwr9MthjyHq63dFQw3+tOQfcjHFpZb4xLXDPUZmcjjYQtm0RXNMw7ZlLAQn3snFU64eKz9y8qHdPXKxlSaw/E/fZHRzuInoVMWWClLxJY1bZBsKtAlcK9nEY1S+kvnGNYvBxtKUi0G8oZmmmLB9vnSi2ChrwDGaiPe9ot4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mtsOZMyasQEY1nLTNXE/zfXoJa6uCBmKs7a1gZxUgqA=;
 b=rQfcBG78PoCS5zlaaOfnoxu97k0lqOYKfHx4UIjhXdyH7xL3SlzWB9ireOyMhaQ3LBzwrQMIG37YxjEyi6+A0RVdscddDwnUKwtEFqGWt7tS4c+ubrdEIKw/RoFR7UvsSUun5jOSJZa1PRa4aK4YoueBOYV8e+tealHJD121J+l+eYeKVYIpgAQ57Ed/xCZaIt9VM9zSdFrDXVvSsHM0RK8cpvFaIb38va9aVxk0Td0OkbuYNFicdxVSMqSmeWeGWDaHu5UW15y4biynrCK31kL2Pws8SfdNnvfLNQ0+1BJJtFVnKjMNOyw/2WNBK1KK3QGG5SBkdK/q37VrutCpSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by SJ0PR11MB6621.namprd11.prod.outlook.com (2603:10b6:a03:477::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7939.24; Thu, 12 Sep
 2024 19:58:31 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace%4]) with mapi id 15.20.7939.025; Thu, 12 Sep 2024
 19:58:31 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH 1/3] drm/i915/irq: Remove duplicated irq_enabled variable
Thread-Topic: [PATCH 1/3] drm/i915/irq: Remove duplicated irq_enabled variable
Thread-Index: AQHbBTjbf8rCFYS6SUyXeSJNPKqb77JUj/vQ
Date: Thu, 12 Sep 2024 19:58:31 +0000
Message-ID: <CH0PR11MB5444AFE041CC00CB68BB91E9E5642@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20240912172539.418957-1-rodrigo.vivi@intel.com>
In-Reply-To: <20240912172539.418957-1-rodrigo.vivi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|SJ0PR11MB6621:EE_
x-ms-office365-filtering-correlation-id: b0a856a6-1fd9-4511-4de6-08dcd365470b
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?yQps3pXSofpWcOxmDnL5qsnLCIK8Dim5nd3fmZN3T7EhCKYQtRdeJFvoyqxF?=
 =?us-ascii?Q?LiF8P1Bk1mhdPeyMPJepZ6tZZJqQTChAMvX5Dv2UKgK42dmr/Xx+h4w+7XbX?=
 =?us-ascii?Q?gQHWFylEo2ukz6jXjlm/NrxPG/qmQKEejUuBZ+4flJLNviWA8V2QoFokeVRe?=
 =?us-ascii?Q?OEi6sWdX3T584XEnsqcunOuMb8qj40NqqANIcS2U0JOBKK5CrzL60WdWKHPG?=
 =?us-ascii?Q?B+jQmkDK7AmdpEIjm4R6IGEsQ1IQ6spMQ0luhBFCesbdhsaaPkaBfOcrxvQI?=
 =?us-ascii?Q?19WL2Y36U5Ng4iHVuV6MeYgqa7ZPBj8ngMIthnLfmH2vuNX9lcKNp0N7B4u1?=
 =?us-ascii?Q?cVWb1zwEa2pqCAaKXG6W1zUt9hDli3CxcVU6AH5+nYHkJhe0NS6XcTEw1GHk?=
 =?us-ascii?Q?CiFghtLkvMeet27DGGXJwe5Wwja66gW0KPMS+ewvpJQQ3SJMPkpKT+sVj0Lv?=
 =?us-ascii?Q?J6ChqUENVEqZ3aEDr2X0S0P5Y+zBsYzk4D8y8B5W78o/J/W9trNGKQx1cQ/B?=
 =?us-ascii?Q?AQJIFuKf69Mnu1cSbCAGyHSxAOVAxPOBLoEj2qTqmtLyTceRGxDtGLiiiIho?=
 =?us-ascii?Q?U40/grTr0+bfJYJv9AK6iQEacxc9K1OThdUDYBj1AEJ0VMwBKV0S5EMROQrb?=
 =?us-ascii?Q?/Y+1l8aOfdgOHbCtjcBZIZAfyimKUxTaZrvO7kcyrlqizpACaFx5SxAXUBoi?=
 =?us-ascii?Q?at4vc9+e6VgXoM+ckcBMSOFst3mVTu3nmkhGvM5q9ANR8uYtx1OE5GosXDnZ?=
 =?us-ascii?Q?0lscSjLaNoipw9SdW2BNj8qpRn1zGnTFtyJMcckLaVvVh/tEMORjxwdhhQE/?=
 =?us-ascii?Q?FM6eIbs9hsKNwiuObSISkVVIl4aDoqD/89ZpyZXl7jkO/knlIulA5GmQa01t?=
 =?us-ascii?Q?zUNT2MJs+1PfHk8L89IyF6rOjFMiU50WntnQaSWgxUSVZQiPkfPdPhw8xkCg?=
 =?us-ascii?Q?PH8ChLvSAFjZbQ7W+FwHKmNPCGJNCjhH9RG1F15IKwNHSfzYo+i27LdtZ4R5?=
 =?us-ascii?Q?pi8nV/GNz8hzK6+Y4Jm+vBQskzH0zNmgsshr87Sovs0+di8EsAcq34zQVS2/?=
 =?us-ascii?Q?B8dwknfbZbJ68TL1fImXH1a9UEzwlvOtPdAOdotkEgJVSiuZxQQ5vJJ/Gokb?=
 =?us-ascii?Q?62woxg+tVhOsohgG8C5EJwl5zxAhZncmRY4Ja9oKKi49gI6K/DT0kG3yXHuL?=
 =?us-ascii?Q?ghQPrZD5UpN9XIMHfT8lwNlXJDL9mTkvVTL5M8mdXs0ErR4GFWzTX9lx9av7?=
 =?us-ascii?Q?nUHv2NMNKpMmjrxjEVniFHIXL1g2FdZbObhCRj867nNQuG4961C5I2O6Zvy5?=
 =?us-ascii?Q?mZo3TJVvKvk/nfp/QUiFP8tkFeVCMc7/IwM6gPS/JpsM2vRJc7S/23p722Mh?=
 =?us-ascii?Q?0Z6jtlI9Htnozq21YusnHQKyq861Kji2mMRii5GCJuug4RY4CQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?II076A6kC7WcG+yYwiETIRSPqckRGUqRUvKXr3caCzGj03+FE1gAIiWeP8QT?=
 =?us-ascii?Q?4EWrDMxmOcGQxC+bdNUchccUHO+T5dqNwST4xNYqb/muPK9anW/OTAy9lVaT?=
 =?us-ascii?Q?SSxVg9PqVJ1qmO0ItLLvoMEBXYpz7F2zkuULY9poWSzOY88iBSxNQY43u6x3?=
 =?us-ascii?Q?a5cD7YhaFgsoW8fUI4+MP/XX/nOAwYu/cQUX99FK6FWz9QOQNY9ZrXDUwM6Z?=
 =?us-ascii?Q?tamgst4zhLfSbaDRN82J3/3Svjoz3BwpZEk4MIS+x2a4rR2dyLWrxYTJ+VQm?=
 =?us-ascii?Q?89lEfpitouM3qN/05brNL8B/KGWvXgHEtFeGI8g7vkcv8xy7lz6sYaN6s4MS?=
 =?us-ascii?Q?p50PYkBh7JRn6i+Uz/S9bX7jwBUtWit+wcvP4WIKHcA1yLUeswv4oNp9alO0?=
 =?us-ascii?Q?Kv5ZfYCQ2XHAyCXu57x3ZRKPjbienDQqQ+gtySHKJngg9YKOHLLEAiDJKmLJ?=
 =?us-ascii?Q?TEWniz1DsOMLH1uI+l1DIlZhGMREugGJzUBYM1ZEPgCoL398cx4I84znfJv/?=
 =?us-ascii?Q?YnMUQZMqBYecIkrKF6SrLRbVj29WDlEoBnwgPUyEF3OGef6Ds8IPzybqNT3K?=
 =?us-ascii?Q?2Hkec8Jdxyhooofvox6X7e6M+35c69YsMq0rcrhsOV2pZruTbT08DierDWCU?=
 =?us-ascii?Q?CSC5N/Kw2J70fcw8IXdTJjWJXS/N6JyqnO0t/4bXE0ePm9DhoxNZmISTjdft?=
 =?us-ascii?Q?B3ov6FHvplsz5D8qToSXfRbGVV+v1W2FgJzSGXXWd+zbBxRbU1f5jeMnoJTh?=
 =?us-ascii?Q?6uShPDNax+EX27jRiosXP0XrMJ1px8bNiwyP7iqB2DC8AaOjAGWp/gQZ4Zao?=
 =?us-ascii?Q?F0N/UrowsmBqLHN35bW3aYE9rSYtpp1B1Dw2xYv2uoCOMVwui/LfwZb7rLk/?=
 =?us-ascii?Q?hEJJkx86ol2eR+4UBcb9yjZnGrkd7J22ggQmnoeTQimPMJQn5wHP7oJyGavo?=
 =?us-ascii?Q?4DLArK4CtYHt24S+iQqCUVthDvFONA8PpC/RuAAEJ37Ex1gGbNrd04we9Zub?=
 =?us-ascii?Q?8atxgZ7eNC8gVBFx4CvGy+qnNjzcDAS8l5Kkp/XKDUcHL+7p6wyp/90KI2PJ?=
 =?us-ascii?Q?701Lfa1vjRKaRjXrxdf+tqiD+tIiHW+bvTOHt5DxSatScjiHOfvpoMu8IFAc?=
 =?us-ascii?Q?q3dqyOpEUYR72PQmu50+Z6vwwvLlPSOgaqNJirzAANVQeBsV17b6DDrchFMT?=
 =?us-ascii?Q?rJaF1uyuC7ov4x7M+bgp/HuZdNGy/XsGAOA+dsYW2lJE+PjdokMGZWoChRom?=
 =?us-ascii?Q?9jf/wS1Et3rkQOgalBEzdZo6cITzIQ5QIzeh9feZ4kWjvolNSfGKPiMjBfUG?=
 =?us-ascii?Q?ZzwrTMvSfvyaxSN24brTti6i4HopMPflNO3yn2ZrtQmH6BcnVk424OY68u7S?=
 =?us-ascii?Q?y0jh09SRYU0YLW63QoWY3sLS/464DOBzsJuI8BCjQBi01UHDcT5QPpUKRlIe?=
 =?us-ascii?Q?usvKrEBmHNrS70KP0D7jdVF44kVyYF/8wvdF2EcazGxItbZd7SCpry7lUDj5?=
 =?us-ascii?Q?V5gtdnI+ha0PWtUV2Ehen/PFnXvcCg5iIuRZ5/0RYdRKoOsTc4Ao8vKI4t1g?=
 =?us-ascii?Q?8XerN35LF4Uy9Nb6kIZ2qskvzkL0430iOh5nEfne?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b0a856a6-1fd9-4511-4de6-08dcd365470b
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Sep 2024 19:58:31.6602 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BPeQVgoJT6AnYmGfxLOYxjWudwgpzvXYNdKRgEXV7sURaTVTr+B65gRD6z5HKiJYRzUPR04JwjQgqkaVzw5+nvPWkWQ3X6uSsdTg8tWBVgQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6621
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

-----Original Message-----
From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Rodr=
igo Vivi
Sent: Thursday, September 12, 2024 10:26 AM
To: intel-gfx@lists.freedesktop.org
Cc: Vivi, Rodrigo <rodrigo.vivi@intel.com>; Nikula, Jani <jani.nikula@intel=
.com>
Subject: [PATCH 1/3] drm/i915/irq: Remove duplicated irq_enabled variable
>=20
> Let's kill this legacy iand almost unused rq_enabled version
> in favor of the real one that is checked at
> intel_irqs_enabled().
>=20
> The commit 'ac1723c16b66 ("drm/i915: Track IRQ state
> in local device state")' shows that this was a legacy
> DRM level irq_enabled information that got removed.
>=20
> But the driver one already existed under a different
> name.
>=20
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

LGTM.
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt

> ---
>  drivers/gpu/drm/i915/i915_drv.h | 2 --
>  drivers/gpu/drm/i915/i915_irq.c | 8 ++------
>  2 files changed, 2 insertions(+), 8 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index 39f6614a0a99..aa3000349116 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -343,8 +343,6 @@ struct drm_i915_private {
> =20
>  	struct intel_pxp *pxp;
> =20
> -	bool irq_enabled;
> -
>  	struct i915_pmu pmu;
> =20
>  	/* The TTM device structure. */
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_=
irq.c
> index 2321de48d169..9f1a6f692dd1 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -1406,14 +1406,12 @@ int intel_irq_install(struct drm_i915_private *de=
v_priv)
>  	 */
>  	dev_priv->runtime_pm.irqs_enabled =3D true;
> =20
> -	dev_priv->irq_enabled =3D true;
> -
>  	intel_irq_reset(dev_priv);
> =20
>  	ret =3D request_irq(irq, intel_irq_handler(dev_priv),
>  			  IRQF_SHARED, DRIVER_NAME, dev_priv);
>  	if (ret < 0) {
> -		dev_priv->irq_enabled =3D false;
> +		dev_priv->runtime_pm.irqs_enabled =3D false;
>  		return ret;
>  	}
> =20
> @@ -1439,11 +1437,9 @@ void intel_irq_uninstall(struct drm_i915_private *=
dev_priv)
>  	 * intel_display_driver_remove() calling us out of sequence.
>  	 * Would be nice if it didn't do that...
>  	 */
> -	if (!dev_priv->irq_enabled)
> +	if (!dev_priv->runtime_pm.irqs_enabled)
>  		return;
> =20
> -	dev_priv->irq_enabled =3D false;
> -
>  	intel_irq_reset(dev_priv);
> =20
>  	free_irq(irq, dev_priv);
> --=20
> 2.46.0
>=20
>=20
