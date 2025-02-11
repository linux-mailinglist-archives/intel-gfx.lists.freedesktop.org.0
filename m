Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5D3CA313A1
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2025 18:59:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85B8E10E16C;
	Tue, 11 Feb 2025 17:59:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GgWCoGUa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B54B310E16C;
 Tue, 11 Feb 2025 17:59:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739296792; x=1770832792;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hNi4TeCff+Sn1tgxWc2MGnHxNAF3i09vj+Y+09kazBI=;
 b=GgWCoGUadJCypivnTSZQNkz/ld0C0IuTTmR1XSUxGDMgixo9YrX/0uf3
 L3fmbo3t8pqdYpna26e50PwbCQsvagggZRkaNciwgE3X2xCYZ8dp8lOZI
 cMZuw1LxojxGXrX5rqUtSBU8WNSxeATTM72QTBRAMAVA/P/FCcKACBgdH
 d4o4hx/HKSDp1UDI139iTYLAyW43+7g6pbRG1xesgy+XT7XuM+3f1lUy/
 YHQ82JIVYva0Hmbs+CL5wJbBlvcIY9nCI8hnyd5FL3rHERxVZp+z0eInq
 QXGgKk83raTDrB7G120JjW7J46VbqGXFUo+JrYjd+ayyJd+zlPL9xpgGI A==;
X-CSE-ConnectionGUID: Z0re48RkSBmbeMIvtOYaEQ==
X-CSE-MsgGUID: cimbXzb1RfepU70vhCtkoA==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="39843988"
X-IronPort-AV: E=Sophos;i="6.13,278,1732608000"; d="scan'208";a="39843988"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 09:59:52 -0800
X-CSE-ConnectionGUID: 6AXt2n5QRKSAn/F8Hm+WXA==
X-CSE-MsgGUID: WF5kuhhpQcqIJMNVd2aX0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="117201676"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Feb 2025 09:59:51 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 11 Feb 2025 09:59:50 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 11 Feb 2025 09:59:50 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 11 Feb 2025 09:59:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VG+6nPissuv7mzUo5aV94VUc2ZRs1gRxVLAaUGTquoiHimiVd9NABxYalCY7DRXckSsKXS1HNGQ5SFu9LC2AEw8Nnumq/k4dnSj5fv3svD2aKgTx4a7aBdJ803WcZLWe4xB7ON8H61BO5A8WuMlTgltiO6Xq7ZL0mW3t8Pjokd9CPHsj3UVL9ZVZLTTI+8ay208ksLvJ95w++d5qbnvz0G/AhW2uh6+QgdnDocnlBkMOQ8DOw4hG0QseP9d8F9QuwKyeoZFGlwjKWTYD4U8uXj+N7+b3hyWYogXZM+M6fUZiSwkImPrcLfGC+X3pPFB+SAfwp0rCT8L5I//8g5HIiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nZHYsJIDGjecJuvltGwA5ODaqXPrKVIkUJaSQ9Ouwi8=;
 b=rVD+14CzmoPnW6K33BVtLBIhp3MFi1q9HppYIIfLiYAhEMC4dDOnnn/FIATLtEP4gPQu5JqThl8p0XIoKK/Xj8m/xFuto+LKivBcSzWP8ScX3Aek/dCOxy06F7oay9PO3g7FnitkeDgIxIr62C8u8jNSBrXcvwp2fXpS1RUmHBw5p7vIVHvBpYucUXiu+FMyHYVnxl0rNbdmVJgpwLuWy0bT3KiwN/0z0zNKmE2dMUCFEWfervP8rFYqCCbvBePYdN0SSbOi/Gglay2zEHV1ro2zclkwiuqQeWMVAKTkAie9ODpfPKq/s4WJBN3KueEIn+iEsqwG5qvwitZWxK5+zw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by SN7PR11MB7490.namprd11.prod.outlook.com (2603:10b6:806:346::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.18; Tue, 11 Feb
 2025 17:59:01 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45%4]) with mapi id 15.20.8422.015; Tue, 11 Feb 2025
 17:59:01 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH 3/3] drm/i915/pch: Remove unused i915->pch_id
Thread-Topic: [PATCH 3/3] drm/i915/pch: Remove unused i915->pch_id
Thread-Index: AQHbeUm7sQy+w8X3k0GTHU4I9HE7HrNCaoeQ
Date: Tue, 11 Feb 2025 17:59:01 +0000
Message-ID: <IA1PR11MB6467361B361747C0B7574A67E3FD2@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <cover.1738923308.git.jani.nikula@intel.com>
 <fac1c59800128e8f398e83d718a3a5dc235d0526.1738923308.git.jani.nikula@intel.com>
In-Reply-To: <fac1c59800128e8f398e83d718a3a5dc235d0526.1738923308.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|SN7PR11MB7490:EE_
x-ms-office365-filtering-correlation-id: cf7797a7-b6c1-4d83-09cf-08dd4ac5c400
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|10070799003|366016|1800799024|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?8xb0eX8n7HqqYiR9bfuT4z4xADBk1nBlSpN6H9YKKQzoFACPS31Iy2LmDlpD?=
 =?us-ascii?Q?+uwLhbpp3kJx+MI5yFGQqJ4V/oxDvuUXwWabRnTfg0v4O7COBcczO21VzQqP?=
 =?us-ascii?Q?cH9DyU3BZiolv7LvZ34Z3zTLmwLQtVftvDVLFjRB6uwuMv3P5UxSI5htKLLo?=
 =?us-ascii?Q?0siLsp4QvyazMwsMD1eNnXOFihUn1NPQtm/7Vv+N9NNhRCcZF8Y+qTYO3hIZ?=
 =?us-ascii?Q?kZYDQ1n7hqsmf2H+mtUWicVxo3l32SGgwtFo0tTg/PmsYnDDZ3OmQ76finBe?=
 =?us-ascii?Q?zXwmYkDCOXF/5EczHO+1h+37dSXqPWgfVH2uBNcqp8u/f/n9nAYklex1A9jy?=
 =?us-ascii?Q?Gt2+yWx/x9iHN6dUmfQ+NFMRRFFcpsmVjN3fwXTuIP47MocwFFePB8FeFqcn?=
 =?us-ascii?Q?45VPFRoZyR4usEqF1P1isb77lCtFQI2itrBIOKtBAr79L71tdMaf8AbhLVAI?=
 =?us-ascii?Q?rnsMGbgSY9ioeUyXExHgD5BzDidq+nQdW/8VA8JJK8aKZQWkdbksp6Wr0va2?=
 =?us-ascii?Q?nKOi9TAnnQAoaIPoxtZlMuuPQ8t0UjJHmy3CXbqUBUPm9Aj2zZqu8lUycQJT?=
 =?us-ascii?Q?/1ZX+qdAcx9uG3CVZ2M0kkxXMlXQkmGF9csHiOYfRZFDy7wr0s5R3tLcRBM+?=
 =?us-ascii?Q?Ij5ms+NlH6R2vPpKOLH9HTjaRiwKWV2Or3hZ6lJ6eipdVgskxP/L1MCtscXK?=
 =?us-ascii?Q?otAAL9YaqCS8LqErA2KBQM4wMe+jO5FYshA971l05ZXE1YBuhNjbq5usZCV+?=
 =?us-ascii?Q?KPdlm7181Di5d/Ee0FDBHxTkUkdhc/Oi+a6mB0vZV+D0nf+aEfAfZbgP/yg6?=
 =?us-ascii?Q?HK9HURVPITF4jYyR+uCiRJYDk4p1PFZXHgcLDoCUxrq7YUlmpcfS6QSvwnmQ?=
 =?us-ascii?Q?s1ijm9bvBiozEdhhHN7/RYqVdvGZkowkZidH1JG5qIoWv0lbK8qMnFj1texh?=
 =?us-ascii?Q?Xhul5pbBN/HgR+oZJMGwTYRnQP/+hkWesq3YdpJY8FuqXxXxGJjqh5Xz8OGQ?=
 =?us-ascii?Q?lF8CdD63XSRvPmImNNwabP0+2Fa8uk17SL+TRW2duQ6vnqqaabYpVByKNR3t?=
 =?us-ascii?Q?1Qd6Byz4FhbXB4ktZ/ELwzuqOZbkI1iO2+6aFIcmth9wsL4LAPEw7yfPsMy+?=
 =?us-ascii?Q?neEbWgSEQi6bhl9THjWpdSw6jr9rCzceUjGhhgoool++WvNoBJHlqq4zygl4?=
 =?us-ascii?Q?2PHWPoZqbReL6mJpNmUiz7CBGbndW0DaLzhgh7wF8yd67VZLcrz5UwT9biZF?=
 =?us-ascii?Q?324tkxacamJ6fk/hpFTRoekXRwEi9u29tp0+aknQjcOzWHwdoImVWHcHPgXE?=
 =?us-ascii?Q?ATZL/6OZhlFl6k3cYdtK3to0/W/0lE8OEC1iBeq/kyaFjsSCtV09Ls5nX0bi?=
 =?us-ascii?Q?d7WfDCXz/fLskRN5HyxFxNm2XtMJ6G5cZXOc5YZzRHJQflbJ/cOyXjJANJpW?=
 =?us-ascii?Q?mdxaVvVb6UJSueXYSVjmTYfsJfw3cZlp?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(366016)(1800799024)(38070700018)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1WuDdhcPucYJ0gx1HgduoTFAxQldQ0PZjCp9Ds7ck8mAOO9KUYnYs9Yn90Gr?=
 =?us-ascii?Q?7FpVJelJ2LrumeUQK6kHQ5t+6ygKMZuq8aIMu/PQJi2igJdZ01DWtDHtvXjM?=
 =?us-ascii?Q?xSpu4EyYakkHUC4mEPuXS/0hdrYF/JxzSpZFuhTqYu1eE3ijWIstvl0d2LjR?=
 =?us-ascii?Q?taItogzp43Yx4xN4QI/EFKY0sW2w25jVM5o9jpJh/WHp7L/M4tgO8xIR4PMC?=
 =?us-ascii?Q?p8HE8fCw73aDMCQdCeLbEZ6rT71asrUZPr2+3elDBZR9Yzrxu3cL8rqYgMoz?=
 =?us-ascii?Q?oCMS0cDKM/UD6vzhmyyYJejItQZFpgn03C0yoeR9UY5JxCCZBgRZqzJr8U+s?=
 =?us-ascii?Q?CO156WAJD2bdwY++AWaHc5MGvnHC2Gr01+wrtX4uR9BN1XjLUfmxyDLpU7JB?=
 =?us-ascii?Q?vxBHTScmMEn8KNqjTKaO1PiMxuf8Yt+rS8Q3xhIQzZqksgTUs2NtDXOjQOv7?=
 =?us-ascii?Q?k7yEGT4CYnMo0t9cO3pdzflTL4aX1zx6ucWd2+RO/y32G2L5bK9S8YY7YtfB?=
 =?us-ascii?Q?l/nMjkAdyqrkR7/qvqXki31iSjQvkspd9b3BEYj3DKwmULTK2uU5RaUIohxO?=
 =?us-ascii?Q?Q/qren6u0xW1ZHLuc5PEnuiLDtXXnxGi6AL9oPrJCGjpcQ59QZFbFpYJobmE?=
 =?us-ascii?Q?YuUl26CYwe+iyRS/LemRZzlsRc7Koq8nlqTEznm1IMmXyjlKFBjMJRuel/zk?=
 =?us-ascii?Q?inpr8XCY+Vq0gjDgt+t0Qz/B7eDaTdzeJtMNbO8p1z+Y68VO6oA0NH440Y9p?=
 =?us-ascii?Q?Nk3rhjGBu/Q+EHv6JuumCIqr16LnfBP5bLi7R3AjW8j8gvL/dgviGL5E4hOF?=
 =?us-ascii?Q?oWcywnzTE0IcD3tHFjyQwu7eSSwrPO+3WNwG84D2F5N9zsygxCVSJVUuVjr5?=
 =?us-ascii?Q?1YgiSwKijdzU5CmLdaIfHuSjhI2toFha7rfjbYdKMub2l+npBHx1IB/Tbp30?=
 =?us-ascii?Q?wPUTZnThBUtSJXPpEfsg5udGBnlmJ82E0e3L0WbncRpL458m6nzGhgRqoJGw?=
 =?us-ascii?Q?yETL1DCaycJrLxWEK7peHKaBUfp2mYFDHusYiQz3SzSZP3Jr+v4eKjwRiG8B?=
 =?us-ascii?Q?QEI/OqK2wL0iWWRrgITKtLwneiXJN7TEu7zm2qBJ7Q7/e+eO8zRo8UiDhESl?=
 =?us-ascii?Q?Lq61Ke+qhkmjP+zpjBYUxlrcFQJjVADm1SiCNvNe5pYiHmY94bFwVg1PIzhS?=
 =?us-ascii?Q?dRFBWI3ILx1BLKF17hX3NPt4/iadMquYM6RgjvZSvy6tgI4Z6E+jKO6XDqcF?=
 =?us-ascii?Q?NPbhkCXLuXCskd7lpnFfMAgyYn+grIchVFycHiSrmwGPlPzdkaaQg9qcl1yE?=
 =?us-ascii?Q?rs4pROCmuq7gSEhFcSPlSm75cI0jq+2QH+kRij4ov48bglCG9Dl5hE68YnpQ?=
 =?us-ascii?Q?fB6BoiSlATklQsu7LNr7+XbIWPlmrqF6mzs4C67JmzCeRAo4CjJrCnRSdx18?=
 =?us-ascii?Q?5wDQ6p0RbfnormwaDVJY/kErjgyVkxEIATw2vCApQvu89xaffaJ4sNUPHMJB?=
 =?us-ascii?Q?1dpRWcRu9JPO4qiEfSlVI6Z4P0tp4qJAlv+glz0bMyf0ucfP7oGyb4OUi4Wy?=
 =?us-ascii?Q?ngoXfwWUvkmW0OxE5TONJ97ibLL23GnuSt1ZRF3K/+iqsEQCC9FL8Xaz5IZY?=
 =?us-ascii?Q?QVRQPxBAgCT96fEiH/SSuKI+fHIdpTLCuoWseYyYeGsE?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cf7797a7-b6c1-4d83-09cf-08dd4ac5c400
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Feb 2025 17:59:01.3715 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: M3UFg0iLE4BRXbYsWGozL2vy8dzTHveFgg4I3vBspyavSJZ77pxASxb+4SwOLag9agCA/MiYLDRgc22nrdVa9w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7490
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
> Sent: Friday, February 7, 2025 3:48 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH 3/3] drm/i915/pch: Remove unused i915->pch_id
>=20
> With the PCH checks based on PCH types instead of IDs, the i915->pch_id
> member has become unused. Remove it.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

LGTM,
Reviewed-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_drv.h      | 1 -
>  drivers/gpu/drm/i915/soc/intel_pch.c | 4 ----
> drivers/gpu/drm/xe/xe_device_types.h | 1 -
>  3 files changed, 6 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/i915_drv.h
> b/drivers/gpu/drm/i915/i915_drv.h index b96b8de12756..ffc346379cc2
> 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -274,7 +274,6 @@ struct drm_i915_private {
>=20
>  	/* PCH chipset type */
>  	enum intel_pch pch_type;
> -	unsigned short pch_id;
>=20
>  	unsigned long gem_quirks;
>=20
> diff --git a/drivers/gpu/drm/i915/soc/intel_pch.c
> b/drivers/gpu/drm/i915/soc/intel_pch.c
> index fa03b5068a19..82dc7fbd1a3e 100644
> --- a/drivers/gpu/drm/i915/soc/intel_pch.c
> +++ b/drivers/gpu/drm/i915/soc/intel_pch.c
> @@ -286,13 +286,11 @@ void intel_detect_pch(struct drm_i915_private
> *dev_priv)
>  		pch_type =3D intel_pch_type(dev_priv, id);
>  		if (pch_type !=3D PCH_NONE) {
>  			dev_priv->pch_type =3D pch_type;
> -			dev_priv->pch_id =3D id;
>  			break;
>  		} else if (intel_is_virt_pch(id, pch->subsystem_vendor,
>  					     pch->subsystem_device)) {
>  			intel_virt_detect_pch(dev_priv, &id, &pch_type);
>  			dev_priv->pch_type =3D pch_type;
> -			dev_priv->pch_id =3D id;
>  			break;
>  		}
>  	}
> @@ -305,12 +303,10 @@ void intel_detect_pch(struct drm_i915_private
> *dev_priv)
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "Display disabled, reverting to NOP PCH\n");
>  		dev_priv->pch_type =3D PCH_NOP;
> -		dev_priv->pch_id =3D 0;
>  	} else if (!pch) {
>  		if (i915_run_as_guest() && HAS_DISPLAY(dev_priv)) {
>  			intel_virt_detect_pch(dev_priv, &id, &pch_type);
>  			dev_priv->pch_type =3D pch_type;
> -			dev_priv->pch_id =3D id;
>  		} else {
>  			drm_dbg_kms(&dev_priv->drm, "No PCH found.\n");
>  		}
> diff --git a/drivers/gpu/drm/xe/xe_device_types.h
> b/drivers/gpu/drm/xe/xe_device_types.h
> index c0e886bac183..c71b15897f74 100644
> --- a/drivers/gpu/drm/xe/xe_device_types.h
> +++ b/drivers/gpu/drm/xe/xe_device_types.h
> @@ -547,7 +547,6 @@ struct xe_device {
>  	 */
>  	struct intel_display display;
>  	enum intel_pch pch_type;
> -	u16 pch_id;
>=20
>  	struct dram_info {
>  		bool wm_lv_0_adjust_needed;
> --
> 2.39.5

