Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CE5FB14DD2
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Jul 2025 14:44:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 084DA10E0D9;
	Tue, 29 Jul 2025 12:44:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e+t0REfp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DABF310E0D9
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Jul 2025 12:44:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753793079; x=1785329079;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XBf1ydlMMe+9BA/dL3Pcq6BdcgPuKMb+8wHxswwTvxA=;
 b=e+t0REfpOTQtjZ+sw9DpeN7CCXE5MWZRkGbmJxVXthTptSxtCQPjWMYN
 FswYRF70etq4wa9AK+H5AAxtyHXO6+e+gtjfyd7L11zOhjnpvO+PUHiOu
 wUfPK1tfbWTJFXKPMPiC4/WkU1mN2JrjQ6ZlJyYyqvG3mE8z1pXprI9jy
 KSJlKILDsJL25C3yyF9F2mPYAbCfaWkfb33ENh662gN/BpYex94/JCkJR
 WNDiU4pHpglhlzKqOf1z9Qw58qpOsW9QQWFGX/g8qZBStWl8kINwm6rZl
 OGbgYZW7X1nHLNjBRBuKxoQE69f6C1gaATumjVsbWt9TlpOsmtqcN2RBC w==;
X-CSE-ConnectionGUID: eEN+L1ZCSzCy4XL6exUtLw==
X-CSE-MsgGUID: aBbtZMmXQ62RDuK2MYLjnw==
X-IronPort-AV: E=McAfee;i="6800,10657,11506"; a="78611300"
X-IronPort-AV: E=Sophos;i="6.16,349,1744095600"; d="scan'208";a="78611300"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 05:44:39 -0700
X-CSE-ConnectionGUID: JIxBDJ9zQVC2OrkH9fyvww==
X-CSE-MsgGUID: 8mUs3OlGSEql16QJ92vgsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,349,1744095600"; d="scan'208";a="163139081"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 05:44:38 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 29 Jul 2025 05:44:37 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 29 Jul 2025 05:44:37 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.88)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 29 Jul 2025 05:44:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OWJN1wPD/c/KLBCTVmIyLYsZXKFG9MUQPDCBghAAzKg8WhBEAAL2jLQt3XMtiv9tmgnXwVmU9UCUhWwYxMKnjjc72rHvvZVsmIaf5nNOdShpQFnb4X2s4/V4WQBko2ZOrDC8b06vDD7WZdL4wWo1FuhhbRJsaI5eoaGn3ClbsbBLQx8CHzcuTPRhX8UOtJ68u8Eqc8eVNjW6YK7OBxPFzDsbShSjqi2lBJm42C0NfW20bzmRCn7HlWOsK1ccIJUYuMhRWWWgAkHpuLS9AM8/UXM/3Bu0eS8v9VJrMCXnEJ6rd5xa0irlx+eh9Y+chaRmnHNCyOkXD8AmKPVowktGBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q6mvWmTyJMoeXgxH2DRWHPOsr5M8WFYkIqcG0ezwoU8=;
 b=xJ28cKB3R0BvK5UxHbH5Jdp1xeWZuR20IBxzpg3Ny3YerUKbpEA61PdW+EQM/TM08lb0rw1D4ivlfBPs64Hon/NY4BMR0nP7j0S1m8t+Niwbnojj80h14SYtMGhb6cmI3tgU7CQ+M6HiztBLMLFDX1BGaZBCLf+OsTjVwpIZBuwax4SlAiOLizppnhe6Qv1GBMmLIa+6eGNKMoa208CtECF9rf+2OKgJlTn+2ZOghTRHWwsTP4r+Qyx1GFswtOZc9YwtLcBHMqejq/YBHdrBCgsc30ysr1GxwoTzRUm42RBNCfozN3orD6U/PPs+8On2RVjI/kVmZlL6spo4uYMJRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SJ0PR11MB5868.namprd11.prod.outlook.com
 (2603:10b6:a03:42b::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.26; Tue, 29 Jul
 2025 12:43:54 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::76e3:aa2a:a205:819f]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::76e3:aa2a:a205:819f%7]) with mapi id 15.20.8964.023; Tue, 29 Jul 2025
 12:43:54 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH] drm/i915/display: remove superfluous <linux/types.h>
 includes
Thread-Topic: [PATCH] drm/i915/display: remove superfluous <linux/types.h>
 includes
Thread-Index: AQHb/6ljfCTkFjqZkU2b85aU3ddHJrRJDUYA
Date: Tue, 29 Jul 2025 12:43:53 +0000
Message-ID: <DM3PPF208195D8D10D063A05DCBC820088BE325A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20250728102113.238730-1-jani.nikula@intel.com>
In-Reply-To: <20250728102113.238730-1-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SJ0PR11MB5868:EE_
x-ms-office365-filtering-correlation-id: ceafcc15-80e4-4c5c-51b3-08ddce9d93b9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?X3Trk4vI6SRMacHQeQzb4uSNZaGLSNQj3XxPaX+NJdQUPUqvFLrwsJ65FRXl?=
 =?us-ascii?Q?16To0RhO468l9bXx4UbYh5saUKruQhz1Iw75QoTlyL4DQR2wov6B5J8g2YVt?=
 =?us-ascii?Q?AoEBENG3u15k8Jrpr9HLWgHXfYQKsmAtpM66VgwGkw6apvotM+xdjlnYmu/C?=
 =?us-ascii?Q?Zyz+hVRi4eu53BXyBnksyldjwMjmbEBh4wyl8Q4uUu2D7gH1q5FVqFD+AHe4?=
 =?us-ascii?Q?AX6bsBBQPDjCYumgF1SU3Mw8LHeFBBCBOTu5Irq2FUhuho1qq8MzfNOtIvAz?=
 =?us-ascii?Q?w9ZSQCyatrSu1C18YqU0LKjMFCKs+WBaJKlxHLSkvd/Xrt9HgTbhMGSsC6Fk?=
 =?us-ascii?Q?aeiO5Tv+RTotQmk5j7kpHswdBiA6jHpcYMb86bZjJnf3aF76D7I2WL646S+5?=
 =?us-ascii?Q?8ffG7I57qvaGnY1q/fXVqjpXrrmUpP4/tmnO5TA2pxl+iXuZWftkxZBxbB88?=
 =?us-ascii?Q?RICBlHFsbE0BFadab+R/9DM/25XK1IGS/fEAwfr1186UTPug3hDafFUh/iQU?=
 =?us-ascii?Q?DzVmqODvZqNRiw0ZJ1m3uePi+HcPPoHvTigfkZFtPwP8CwX0VNnm6smS3Ni7?=
 =?us-ascii?Q?oIrxbvEVMtuxRKBoTYQi5NsuSEQACa0i9KMqXTr1SRzipT8APnMhIy5V2ZNw?=
 =?us-ascii?Q?pG8zBsIZ0zVnb05VWnofKXoFf/WPibp+HigshGp4g/svED9B0RTpcxT6lj+1?=
 =?us-ascii?Q?i1gSsahfB+PszWFRIE4LH4XU8T5vcrNVZGSc2POoehQgkUs1cL+1vVymg7gb?=
 =?us-ascii?Q?9Xmeb0zm0VaLW+GUaEQZjAKyH+X32J9tgYBw5RGUD6myrt+ekj4JNsYKSh3F?=
 =?us-ascii?Q?x7j19QgcILA7BouwwOTqfShexaBq6K541auKU7QPpJhz5+W3jKvcMXY0+EH3?=
 =?us-ascii?Q?fW8DucxFQTMpQkATws+t3p2HovgLt+oRLxWYj+KpxrK7+lTBLmalznXEsNUf?=
 =?us-ascii?Q?qcto04l2BWloCVvWGq66uL5K8BDfQ+E+8j5L6Z/NuJFOfLHyXkDD4gmw0bik?=
 =?us-ascii?Q?UQIcjraTb7rrR+Ht7Hxo2rM035du5/ilGOFvxUBmTYHVcavJOuVS2UlYG6T6?=
 =?us-ascii?Q?1jEG0uzjdofFoV6eesTa+XN8VdkTgu6FaY1lcd5Ld82Q1Py6vO+oH0KCfF7D?=
 =?us-ascii?Q?w2aStY5DxNcR1ML3bhoyMjshutefJDF6PafVYph/mbqz/vcYc8FJWECgM1DW?=
 =?us-ascii?Q?PwXz2xRaTvwr1G6zEWiVUCbMj/pJ6seZ6edsWIgTgS2Hw/TZ+uR+iDpmvf3L?=
 =?us-ascii?Q?z8DWtBz8a1KBaTDZmLsgOQh9aGwlchbLpCbA3hvXvGq7NAUfC48SvJoV3wva?=
 =?us-ascii?Q?nOQ7YwvmUBrte3wMR2BJk9D36CskU/CqH9+nLQwWPNpNX3Z6yqNIDLht9y2y?=
 =?us-ascii?Q?xto542nL5FS79DnYXyL9jBu6iKm7P5ydS7OKAk4WG9HPu+ZMvxGNtFyfydmH?=
 =?us-ascii?Q?HaegBZjsCDhwVhvPKsazPnCfPvcOhEFEDkiPgmlCJW77lfHr3CVZTw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?XvXBnI/HK4EN/oyKY+hFdP2IrVOHztCM20r2HT1e7SkiYfeV+uDThXD53sah?=
 =?us-ascii?Q?1Z3kKlC2LUfWSrBdyWfKNxLXA68BBkyytGN/mrxDJlQyD2329tPLvTfR4pM/?=
 =?us-ascii?Q?1/k8pnffnAzSKzKR1yvl6hPB/0zqbVp+7Lf1Qi+sf1YPVEMiqNJ/by2UMLVx?=
 =?us-ascii?Q?OqLIECAX0yJJqe5QdBmIIQsLgbeV+35PD8Z0STCIG9GfcvRiK8Ieqy9Wa5/p?=
 =?us-ascii?Q?YZ3w+q2E0bS976+XVVbPAoOsD+x3Fr9lZx9eNg2Be5uuRFxCgs4+rh5jvckG?=
 =?us-ascii?Q?IOHj6irC9K91rG8RWz2G9ouWWgPcwVzjUyTfwXF5E+4Fsdy6ThOKhiLvm5Re?=
 =?us-ascii?Q?/fFckJc6u6p0WjWJH0kWmUEklldp+Nqrpzm7PhwvrCNjb5fCrBpYRMC8DOZc?=
 =?us-ascii?Q?AkT8DbMzBfT5INT0kpnWENqqT6XMW2y6wCWLA2cDQO2UEv6sp0U7l3QmIqOM?=
 =?us-ascii?Q?Gun/lP1ovOargPzGoQPDGORas/wDe5VfhGDULsl3kNj49gFGvOxPftFd6f1z?=
 =?us-ascii?Q?XyGf74h6JDUgEbiNzj+aCMoPCv9qbVxDvkNV3D4ka1UmFH4isTNnUP0wmR4q?=
 =?us-ascii?Q?jtA3Ub0SpCzLiq8jcM8LPiElVDPUIkgwHZPCkXQC55bm8guIq90VIsHj4qe1?=
 =?us-ascii?Q?VceWX6q+SVUQ5YmgsQRyIChw+D3Fll+IbHWCHvHdk3cHaSMogXOYz1XmfMEl?=
 =?us-ascii?Q?662lnzed0ci0RcJd5sBq4ra8PivNwmkdZtOlJ8SlPXbItO0QgXvhchX7AtPd?=
 =?us-ascii?Q?gbXNnMMFXEU8stX6EDz3ruVUSFRbV2HKBPmB9jXyvFSmQKubioeyarOgLXvl?=
 =?us-ascii?Q?D35KskCqhIES+qnDoDnBnNPUPxvqHnnGLdFkT0kGPsftTcLW8DYU15KO5oMb?=
 =?us-ascii?Q?l3a3sxogV72tf/GTRwCjGePOuunNJSzTQfL6dWIeZQFox9RWYCxpSZ8eDD/B?=
 =?us-ascii?Q?aGDG8/NaPpXD3Q4MQEyYZ82mMZ17ATVFmRKrKjRnkv7ZDRE4mv9wqw8J+Xpn?=
 =?us-ascii?Q?wdBKk9krx/kNJs9zIl5NipfefWTn9H/tKCUxVLAGyUved26IMmuPXd6FjnXO?=
 =?us-ascii?Q?n7FwvUbrsWSnrxre7M7Ea4DgvVHsQxbctVWZNozXtT9zSDnxvkl/0w4oEXY8?=
 =?us-ascii?Q?NcUlTNwEiBKdNwcApfjWeRjnQjKmfkXK/5lv0EEtF9FswInB6gOk6uerWVMa?=
 =?us-ascii?Q?95qfSV+uoToPn84uhR3VMQjEptLe4GE3YFBtil01/7nDnTzZugQu2rikbKiF?=
 =?us-ascii?Q?ICauc+jj3K8G+gzSCN88oxf3QRu9YdiXTqNYVoIedgUIhObw5/sjLaRkAx6n?=
 =?us-ascii?Q?hzQ0lYKO6iWVk9W1RXEyItRp74cUrWwocxb3qDu5LiyFKKKvVclan6cWSFfk?=
 =?us-ascii?Q?cMYHR+Y3WQeYBgANqn/PU9Ib9P+HYs8Rua97QRvU9hqSPHzhbrxm4ksXrnx2?=
 =?us-ascii?Q?FRTON6svHP2UL1fUQ/bqhs8CVRG0jPKbRyXuP5RGPC4wuU6EJd+5r9y5j5tk?=
 =?us-ascii?Q?z/lMjRtKKaffnEKe4Cn5kn6FhLRpQk3kH4IN4dyqZvmB4DLMuFbLOD0APE9+?=
 =?us-ascii?Q?bhlQW+Bb8azb5KJ01XMyBm1+mRjImCnRgji3CFNx?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ceafcc15-80e4-4c5c-51b3-08ddce9d93b9
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2025 12:43:53.9620 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RhqhTqlfQUaiYW0mCkvX4Le/MS89GMhIPIILDlQ/QsyR46VLP2IpZ+T/+6Koz8DTi3smvvSujN5EJm6CWc4NvQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5868
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

> Subject: [PATCH] drm/i915/display: remove superfluous <linux/types.h>
> includes
>=20
> Commit f7a9dc796567 ("drm/i915/scaler: Use intel_display as argument to
> skl_scaler_max_src_size") added superfluous includes. Remove them.

I think the commit message quoted here is wrong the correct one would be
Fixes: 3347b55f2c6c ("drm/i915/xe3lpd: Prune modes for YUV420")
Also Fixes tag.

Regards,
Suraj Kandpal

>=20
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_pfit.h | 2 --
> drivers/gpu/drm/i915/display/skl_scaler.h | 2 --
>  2 files changed, 4 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_pfit.h
> b/drivers/gpu/drm/i915/display/intel_pfit.h
> index 2f075748a34e..c1bb0d1f344e 100644
> --- a/drivers/gpu/drm/i915/display/intel_pfit.h
> +++ b/drivers/gpu/drm/i915/display/intel_pfit.h
> @@ -6,8 +6,6 @@
>  #ifndef __INTEL_PFIT_H__
>  #define __INTEL_PFIT_H__
>=20
> -#include <linux/types.h>
> -
>  enum drm_mode_status;
>  struct drm_display_mode;
>  struct drm_connector_state;
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.h
> b/drivers/gpu/drm/i915/display/skl_scaler.h
> index 692716dd7616..e3b35d2c13be 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.h
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.h
> @@ -5,8 +5,6 @@
>  #ifndef INTEL_SCALER_H
>  #define INTEL_SCALER_H
>=20
> -#include <linux/types.h>
> -
>  enum drm_mode_status;
>  struct drm_display_mode;
>  struct intel_atomic_state;
> --
> 2.39.5

