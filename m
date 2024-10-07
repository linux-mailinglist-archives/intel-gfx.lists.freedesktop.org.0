Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 169079938E4
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2024 23:17:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE5B510E42C;
	Mon,  7 Oct 2024 21:17:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z//C5Dti";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 120E310E42B;
 Mon,  7 Oct 2024 21:17:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728335831; x=1759871831;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Sr8G9bL0uIp2jumxaPz4w/0M4aH9iRbH0QcdGJ06RRU=;
 b=Z//C5DtizcYrgNtwLyT6u7RKv46YxJIL2O5OMlpFrSyXNUOTRhGVi/s7
 B5y8UHFI6m2CNApF/abZFfVkYq8rzhoDl4gYEtCS3YeW9HvmdnmrOEyQf
 7Aqp1DJEzAkoicaFW9wGPsmNhyRl0lOmghMdSKHc+gkLGEJ5QbCmkYLxC
 yMH9VWr6DZlR3eWPuWFSGwEdxAa/S6a0GpsgPZnU8u2dFV0U+EbYK1j6S
 MpXKeT4ngsb+QrrZ4M6PwWa0PkWyHfe2BPyVqKJz4LPk+f9Gr1bst/r7o
 z6FGvFoZz2TxXjznRUJa7VCm+N2SnvIGNVQSpk0MOdZ0NHnZ715kofqV4 A==;
X-CSE-ConnectionGUID: zPASU7T8QEuuNMYHLsUsDg==
X-CSE-MsgGUID: fc7c93wPSvCJE2OaAReaww==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="26963532"
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="26963532"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2024 14:17:11 -0700
X-CSE-ConnectionGUID: YXwJgdXjSTKmsCxZSQQGnw==
X-CSE-MsgGUID: Y2lSHvKcRyObej16MxuaiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="79591466"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Oct 2024 14:17:10 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 14:17:09 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 7 Oct 2024 14:17:09 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.177)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 7 Oct 2024 14:17:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=J/i4RJqQJJoxPynqG7jXTYGh/sK+QMUglH462YlCC+QIWxkWxc48ai1qokKK4R7HUs0mNv8LoIdkWpffHlxsRJcn2pqfxQ0YinzzjJDyoX+O4INvxzHHhA+XKreLIT2Z+e0p6XzAJRRmFyq3xVppDmA/AN0kzmfwn0DKvgXtMNJ8UiOdSORBmiW5pdTEx90OrWSBrRcEAav4d7P0Q00JU6NothlH+lskJztqd+JNXSPcumX3m6mqQtySO2xcm/LxPVTBzKvbD23eDVxB8m1GIWbxzAaorQ2Raznxks+i56v5zr/DtIGuNIQgdPj2jHQBGoHcGHwAocJbLAgvvHo4oQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QSoip50tDF/A6RejYRTes1Q7gsbODnLa/59bB+c+yT8=;
 b=KBjTnZfl8VeoeTU8YibsHFRawpGqCHg3Jek8iirF/ryDISBMPCmjc0FNuZZvwAGnhcv2DYdCgo75fF6Xohj8FOf0BGtoAVYlIRiJEA0Gv4bIN7Sde+ZIYspg5KsA9iHDiaLoPs8K8WsY2f33sfkT+ANaLMB8vYZIKAzpRph0gNNJZLm196Z9UJP4ni3kvDRhHMPxe17P1j6XCStR2VotXx6eNm5GDuvhi4qbXgBXdqugQHBcS5aMwT4UcVld/ATECvJTZZMzeapgvimtBQS2TMRcKYjo+5foyW5HwbqZfZ+DQPTxZIrW4/3cwY5gqC59Wz/+cJMWAaWH94kxAawY1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5445.namprd11.prod.outlook.com (2603:10b6:208:30b::7)
 by DS7PR11MB7691.namprd11.prod.outlook.com (2603:10b6:8:e4::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.22; Mon, 7 Oct
 2024 21:17:06 +0000
Received: from BL1PR11MB5445.namprd11.prod.outlook.com
 ([fe80::b1a1:c6a6:403:8161]) by BL1PR11MB5445.namprd11.prod.outlook.com
 ([fe80::b1a1:c6a6:403:8161%7]) with mapi id 15.20.8026.020; Mon, 7 Oct 2024
 21:17:05 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH 15/31] drm/xe/display: Delay dsm handler registration
Thread-Topic: [PATCH 15/31] drm/xe/display: Delay dsm handler registration
Thread-Index: AQHbDsJ1MexO5gH/sk+IcgV+LWxekLJ73uOA
Date: Mon, 7 Oct 2024 21:17:05 +0000
Message-ID: <BL1PR11MB544584523F85F6C9119F48A2E57D2@BL1PR11MB5445.namprd11.prod.outlook.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
 <20240924204222.246862-16-rodrigo.vivi@intel.com>
In-Reply-To: <20240924204222.246862-16-rodrigo.vivi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5445:EE_|DS7PR11MB7691:EE_
x-ms-office365-filtering-correlation-id: bd58f1ec-321a-4346-24af-08dce7156539
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?KpaUpvAgV8N98hgvYo/4FY/gjBN0AnUtsma8w9JKENPWNy6GBM/t6HqeqOp5?=
 =?us-ascii?Q?MseKNBwVk0RTroyGP8fwGNnFRNQvjdWVBzCEBOdxVwoSPVNA0XNCrb47KQKw?=
 =?us-ascii?Q?aOhcHX6ABkZmLjd7TAcDjb9JaA4t/X2QV8z/SzzW6vGMKinakvq63aCL/oBI?=
 =?us-ascii?Q?URCFinX1v9dJFpJGCR4D4kUfEPR95eZeOaPGV46aZ8BPCr75sCKlvR3t0KuG?=
 =?us-ascii?Q?x3OUGNUNQTIQq84Tj+XExHZ2G1MhFLW2k4dFgF2huA7qJTpaKIOuh2fPByAm?=
 =?us-ascii?Q?Q19xW+ekzx+b21J0F9JZkluNTgmJYY0d9byq212i0sFFCpd1FsnLaBmTQ3c3?=
 =?us-ascii?Q?mudGqMMzWTkTtvgnlBhRDLzAOYpZwCs9DMjtcUEZvuhALBS/L46Yh/ypauU/?=
 =?us-ascii?Q?qH9nJHFv8rY9nrLKbp1y+MEZEnAMGuhRjGNifG5srKi6+HXjwZK5e2fe+lr0?=
 =?us-ascii?Q?F4EG/hy/X/q/UVEjjAT0mhHlGY2C3CqsDI2TEy5Nd0chTpf+YpEZSbK0eudD?=
 =?us-ascii?Q?EuVP+BgcScTGvsIWIC1GJyaimT/ggFok4jybxORRK65o18IZW85l1JQlAt/9?=
 =?us-ascii?Q?FD4+FWFkaQCzL+lI+6/FevYPRSXKaDR/GpMFLVzH5v9C83hOJquCRSsqOGSr?=
 =?us-ascii?Q?MrANU0KHYP3dhf55/jnjnHsY2VK4hukjvk/70g4vDS/Vc8W3AOaYIqAaoR6O?=
 =?us-ascii?Q?8vo3ir1L39BNLUc+QGFeGLKLxCN7GbXbGApQ5vWrqNVCK37yg6ShxlGWfbWW?=
 =?us-ascii?Q?7/yq2n6Oo0eyjrLU4z+jI9bu00tP4JrZ3glvvujnZMV57x6kqNg3jrWnw+3+?=
 =?us-ascii?Q?wjyPqJKDWTjcqfnfi00liH+1HjjGnzEbY5HuX+rR3vLjv4hEXqQTt99qui5B?=
 =?us-ascii?Q?qyuDpqrnj5946CKbJyuGEWGLAYAucyX8R9jWiYWWbpusRbzds9iPDN6DprXj?=
 =?us-ascii?Q?/AeiPnMNQ5MOTA5inBBD+kjxVdqe6jZ3fn9SofzjlEKmiNcmmmnMOgwreFc7?=
 =?us-ascii?Q?jI3f9T9NwOYt30EZBX0z5iKVyNjSlO+rXOUpq0ze3iXrI1mJHCzNDXhvzBqp?=
 =?us-ascii?Q?t5s2SL/mkLtFDI/DrY+5rTTgOmRtqBJ8yb2HvTFEpWQB31Ym/7wKhePHhKiK?=
 =?us-ascii?Q?ap40lFK3bZEFaVOV7PMNph1uA+00upRMvv/ag1j151YDbmBWrZMCGRhtnkEu?=
 =?us-ascii?Q?+yLq3M2WRQATD/84G3RsMF89rbVBYyp+YutcJ8AVmpfjNsXKbpHNPKQeR145?=
 =?us-ascii?Q?ZG3qWduDssdwRUjDApFufMFia+vuTiFEXEI9LejpE9zwDub5HfiRGsiKX36X?=
 =?us-ascii?Q?YWf2YTZJJavW29Ov53pXvdRM15ItmLl26QUApQxSN3ajQA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5445.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?yYpLOFE9uZ0CPxqJVwTK62jd33swkg/4LhMKiBIQggUMrsqONQOLOVIDRa0f?=
 =?us-ascii?Q?KtvDio4LXTcGT1jE4ct4zDfXGbxfyQMWtLCfyzD91it4MWQE0J17Arkx1DnL?=
 =?us-ascii?Q?kaLrJ8P+klolm5+/JfBzRRTr53t7oCVykq5nkwlOHoHfG/GEUHKYd1zk1vhw?=
 =?us-ascii?Q?8eXuYbvtCNw+6Npoq4ri//3dGPFEgu8gXZUzJrsyVKTrpccGgPpj/bDPTA4s?=
 =?us-ascii?Q?YIdAT7TLmY7BFXvA8L7yq2c5nplMWd2R4MRbxrQy3oaomlpa5Ma/a0LPAErt?=
 =?us-ascii?Q?+k22KeRzynbP6topX04lOOngv6ufysbWIEMj+NTmi5l/0s8hB8RawX/PdHZI?=
 =?us-ascii?Q?+DsWRPRvqp6bgGv1/nUSpdxkGajGH/0alu/SWqVS4mLIDBQcwHDtsPwbKxpk?=
 =?us-ascii?Q?445YIi3bmkk5KCXX+iMFPUNdZBwFG0pUZxsWqZo9g7hvOy6n6vd13cICkkI+?=
 =?us-ascii?Q?t3H4BQ3i4XIuX8pVoMHpVuzzPSBzhwKbXoIgVl7hRwd7nc2gYFn7wNMnKTi8?=
 =?us-ascii?Q?W3KRVkTMiQL6cVl088Vd9h7C/ZVGfvO47Cb2YboFdFHondvxLTXUwm1mpai/?=
 =?us-ascii?Q?qqAT5nZgRu6DcCD9W2NXgMItZXWrMT9bInCfq0qj99yw7mB9HkOkueIIKnhY?=
 =?us-ascii?Q?qSGQ8kIopqpc16cYIb2rc/girp0Cx2PyiDOR24VBYVf5qfdBVQ9O1Z3L84t6?=
 =?us-ascii?Q?jybkUOIDCBeHyPzgoYpvLJqKQC/9Hpr9pyMiVXg2YkQXYsToiiu5EN9YEBoB?=
 =?us-ascii?Q?k5rOFlw4VWC40WTMxRjuFncItgbmbpQCqFo8sKHWRkXitQrYXlj2O72Z7AKu?=
 =?us-ascii?Q?qhY2seMuiZLhqFf6ocY2QhYqphY3FUEnx0ND+MUoCGhAk/lH0zraWd28CgYU?=
 =?us-ascii?Q?vmwYQTi1WhKhP3JuQSfAhpBl3+gSbAG8C4FAdDdRT2NuGyQQYciAt0/XDi0R?=
 =?us-ascii?Q?GvFgU10xtH714zAGdWJirVRaLEJO+SvtdS7OYHtjRwnh0s/jwYhZy8BUS+bb?=
 =?us-ascii?Q?w36l/nW+ikRo91AOukeWitC/F0zQnHYthZrSJ2a780z0/mYIjn12tBQlB7Tq?=
 =?us-ascii?Q?rvxnLuqHVsY1tVRb96O+63emugB0LzLJ6H3p/SMcTDbzfLC2a//BaZALUNPU?=
 =?us-ascii?Q?LGFs942zSXCYG1vNWlK91EECxVwy8R7gGClq7ZEQw8f4ml32zCGAV6hMnuub?=
 =?us-ascii?Q?Jy+qdHNUPC8MfszbgxrPApU99d6PdW/NVLigPn4g+y3IrdCIWI94hjEOUzja?=
 =?us-ascii?Q?6NjBbjm1OiRenx9WDE6TDlBw07O0iccssubRv4TMgdtQqGxKt086LQqzFNjD?=
 =?us-ascii?Q?Ot5r4kAnbBYxq9IzR6EvAg1ysNwU66HuAYArYV330SeiDQ2YbZAs4ILJsFEo?=
 =?us-ascii?Q?qsubW791sEVbYzNkyzIpN6oWfc7drACRxMQOPHz96LumvzQl1cbgutbUdWSi?=
 =?us-ascii?Q?m9XExq6aOfBJjpvtJKb9808ySrhITHgPbhaXISkS/xGwzOjEQ/0s5xLbE7m2?=
 =?us-ascii?Q?EqR5D8AuTHCtZwuhchHHPD9/dkFcsm9dVsup6QkILRfPCinE8HAw5zG3qtEm?=
 =?us-ascii?Q?8Ab7uWibsTy2tKhgJ4kWR2r6zGxLD7KA3IQJuzKMAx/CmFYxb7m1pqND89sN?=
 =?us-ascii?Q?6g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5445.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bd58f1ec-321a-4346-24af-08dce7156539
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2024 21:17:05.8285 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uREcZShc7J28j/qfRLZ7rP0MztBxIQJYl5mbqPs76NoAIlqwR1Z/CkV6Xnc3iTfja8qn9xEbbqjTJybqxBwLfKYrXArmBa0hlPdy3uolYF4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7691
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
From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Rodrig=
o Vivi
Sent: Tuesday, September 24, 2024 1:36 PM
To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
Cc: Deak, Imre <imre.deak@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com=
>
Subject: [PATCH 15/31] drm/xe/display: Delay dsm handler registration
>=20
> Bring some consistency to register/unregister order at the
> same time it aligns with i915 sequence order.
>=20
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

LGTM.

Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt

> ---
>  drivers/gpu/drm/xe/display/xe_display.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe=
/display/xe_display.c
> index 45949b095d7e..e5df50221a04 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -217,8 +217,8 @@ void xe_display_register(struct xe_device *xe)
>  		return;
> =20
>  	intel_display_driver_register(xe);
> -	intel_register_dsm_handler();
>  	intel_power_domains_enable(xe);
> +	intel_register_dsm_handler();
>  }
> =20
>  void xe_display_unregister(struct xe_device *xe)
> --=20
> 2.46.0
>=20
>=20
