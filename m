Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 302BA7D168D
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Oct 2023 21:52:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4D2410E5E3;
	Fri, 20 Oct 2023 19:52:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88F5810E5E3
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Oct 2023 19:52:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697831535; x=1729367535;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ys0ykXCmsYK1H3eEEXsDtobLIp2xqgj5WtWyyN6g+Fw=;
 b=Cmnk+HuRFQo3UYxa4qFY23pGvssWOhmhf6OxqnpzQLjycZ1sblhPtJZP
 E/tZcTMlvf8zBFEiM7J3xSHMgJ2/EdF+SAH06k7UpuqmMQBf74bAz3fK2
 o+hB8l35GWzjdYZ5WVfw1W9zqHyGUr0EE8FrB8dqAxH7mVFGPAMWTYIRq
 dynsL2lz1k+F26gc2QCofZjrYCh7DBNquWdZNEdbPn8dp9zjxFP5cisjT
 zW67fAhYx5Sr/VyqKEgHY2ytxdGsH9giwI+i5BS77Ufc1EKyQdK74S3xU
 fLTwJbNmey3JEL8QhPfwQBU5Widlgt62S9Dtyw3s2/Rg6xumb6S9fCTem w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10869"; a="390451987"
X-IronPort-AV: E=Sophos;i="6.03,239,1694761200"; d="scan'208";a="390451987"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2023 12:52:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10869"; a="1004698585"
X-IronPort-AV: E=Sophos;i="6.03,239,1694761200"; d="scan'208";a="1004698585"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Oct 2023 12:52:14 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 20 Oct 2023 12:52:14 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 20 Oct 2023 12:52:14 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 20 Oct 2023 12:52:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Wp8knSZxE0iM0HesWq/kGA5XvNUI1B1GIIa6vCcks1rUU9r4hUIfXpNfrfOU1AJLmJ2u74ToitN/T1KonZVXi6XnVnpm3CieQfQ4v92foadd4x8r23ceq4y5eRnFWT9XheQ4HMN401HjE3220ERhfGpAF4k4WYalOgkXgnfP+5Jd+zlgc5TWsWd1xI8rAWD4n25LhWD0/OgjPITKJIcV1P53DI/VIbIvddQqLGNvypPTtaNROAzv4P3M+slfuTaecSIme/tAkKK0tVMihFwxy+Rvc1dkm7+JM51RwxbAyGFa0MHg6sh2N/HlXfhRfgkXJ1k7o+BvlbPz+NEM8sfZbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+5HBbqYvTDEfKnfOqXAWwc+TBPpIXNmszf8JbCMRej0=;
 b=UF7FQnKLY3KFW+IHy6CnHe5QZKJZcwG12Nj7zNgA/H9lAXTFVSPeQUAF66Np9MJcILXzPrPqC/uQLaSGuv51TtgBENJ2/pBI2x6O79HKy5GKSf7GtJ93i/KyH1Er3QG+QjauPxBNqLnrry2GYZVT8aNBsepJXvwsp5q3vv/EWv98Rc6ZoqtsohjITz9/Vw0xWEnsZdlXJlM48T/gT+YK/wUwHthiWuq5uTRrl9FCwcWPe5VZ+Kdp1ybMZH48eNUooPFYpLaDiWBv7ztaXQE8C2kks/s4f8+t/FG18zzGpuy4g7e/MbSqGLF27eD/cpbcdazPxCjCCthq27f+xZeY3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5445.namprd11.prod.outlook.com (2603:10b6:208:30b::7)
 by DM6PR11MB4642.namprd11.prod.outlook.com (2603:10b6:5:2a2::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.26; Fri, 20 Oct
 2023 19:52:12 +0000
Received: from BL1PR11MB5445.namprd11.prod.outlook.com
 ([fe80::1d86:9790:8b2:4fa]) by BL1PR11MB5445.namprd11.prod.outlook.com
 ([fe80::1d86:9790:8b2:4fa%5]) with mapi id 15.20.6907.025; Fri, 20 Oct 2023
 19:52:12 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Hajda, Andrzej" <andrzej.hajda@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 2/4] drm/i915: Reserve some kernel space per vm
Thread-Index: AQHaA05OlLtswnS9AE6vJa6fCShHRrBTFjBA
Date: Fri, 20 Oct 2023 19:52:12 +0000
Message-ID: <BL1PR11MB544524C9A557FFD782688D2FE5DBA@BL1PR11MB5445.namprd11.prod.outlook.com>
References: <20231020120912.1888023-1-andrzej.hajda@intel.com>
 <20231020120912.1888023-3-andrzej.hajda@intel.com>
In-Reply-To: <20231020120912.1888023-3-andrzej.hajda@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5445:EE_|DM6PR11MB4642:EE_
x-ms-office365-filtering-correlation-id: e931d92e-a185-4196-7d0e-08dbd1a60d8d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KS6OaJAW+h3xkN3oadq2F7qWD5+KiGr0+z5uQVm6M7AHeniox6xsRnzST7nJgIZxSBXwR0RBZfY7b1nktPhAyyG0jN8+pbAGSZrRx3PvB48EVo/62hWz7+DClDVzzNr/0xe1EUo2s0Jl2Rzgg12Wd6kNxLuYK4ijex70kF9ag6/DYr44aMvLckSTDX1rHhgbjYRS3OgW3YaqQME7uNtBLI4XfmCvk8IKiDvhJ3DoF+ttqI2ygMpxRxSh7l3Anej419zjIiR771e3bk7jDYCS0H88aMn14JFjcoGaHr2ckKPvIhntl0d8JSqS/CASvFTVyMS6m+gatwegO3miCIkih6kH1u7HU1MLHyHwRqY5Ei1Qtsis5BFJPT7IuSOUf8RD8pMswLXDq32UIRTbqZP236NZjcqXeKYZZHaywXZge325PSdrISOj/ucCraf8HgOsAKTEfrHPYs/xo4C17fY1htTuRqSLzLhaT7fNItUWHFQvn0NTRWow3+nxP251JEKoNgDmTVvOgeQgsEgXQo/3pecdEjjPiGAgeyo8mooLzbRlJk2nZoebLE9hiJ4uMuqBQcTULQd59jZQksKRKbQeXEF+OWMoBxElCfBcmWTDNUiJe0c22Xn9s5GZG6Hrdp0G
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5445.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(346002)(366004)(136003)(39860400002)(396003)(230922051799003)(451199024)(186009)(64100799003)(1800799009)(2906002)(478600001)(5660300002)(41300700001)(4326008)(52536014)(8676002)(8936002)(110136005)(76116006)(316002)(55016003)(66946007)(64756008)(54906003)(66556008)(66476007)(66446008)(83380400001)(33656002)(86362001)(38070700009)(38100700002)(122000001)(82960400001)(53546011)(26005)(6506007)(7696005)(71200400001)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?YWnVfl+mWdVQ0MvaXD/+grz+j4wb9bQVkYQV4YDU1WBIK9CgBy1Hm28Tsbgh?=
 =?us-ascii?Q?FjWrvPYfpbC8rvjykDL2c6djev9rkrTA5m2HSIyJbPdmIc4hESfRctPqqGpn?=
 =?us-ascii?Q?n/VGMDvVitsoRBF0YzF/uUlqchPhZmq1MPXmAayOOnsk0JPIIXycflNRwtG4?=
 =?us-ascii?Q?d/Xp4/VTp41gHt9tCXwOt9hp/pkVno6wf7fo8o2+f5RrrdhbP99mlW4TwGQo?=
 =?us-ascii?Q?70rMV/10RYMuhRdBcp49mVK2zJnFxjauRfIwkYpIYZHl+IayDepN1aVS21Jn?=
 =?us-ascii?Q?whbVJ7ptkLTpofk24tkXT9k/fPh1aVFmzygMhvG9AH3q31XA/Fcv5qiT4gFe?=
 =?us-ascii?Q?Rw+dIsD6AP2EBrEWHYYDiNWwczCq8KWtytFoOQEVuvlfgY9jezXKK8zE2eIe?=
 =?us-ascii?Q?HfTGd9sStPshbZbtWOx11X3FO9/KDV+YXjBKmutm+oW6OuaFxvjNYbYh50GP?=
 =?us-ascii?Q?Vn6KYU4LCirzhjO3Glc55r0z3tu68TFSbGkKc9ER0qNwvcOk4ONq7ytBXNGq?=
 =?us-ascii?Q?bmOJNPwHPTlmTQ7DZr3epz3UaoHu1jMmEQZM9Dx/6kM3NTUBgmljB8ZCoeAF?=
 =?us-ascii?Q?H3jmKvIpMYEowK3/SCHOs44O4GSFrrgi4m5MxQJFKVyEY2jYnpukj1uwF2bY?=
 =?us-ascii?Q?rlEF1RqQNABU8xAh7FmOwQDFSczmoZWjKo7MbCqwKuPZCQL9W8+lHj8bXUgL?=
 =?us-ascii?Q?Z2RdNVHJpp+BP8cixCMikEJBseAqRZvlUSOKEwx+B/79f4kbE/qFBrBReRGd?=
 =?us-ascii?Q?J0BSQ2lv/nddNMHj5zTq9X5SWUhlCZBiA9h4WGN2RmBd280y0xDM+uGcxKLn?=
 =?us-ascii?Q?d8RytlUOWNd/Pj80gh3TWw9ojsFnBwZ6Pf0P1exuiufYuQMdwjxFdGBNwZPS?=
 =?us-ascii?Q?x4JoPhLsFUqas2y7VgXE8V4kS8WDrDPXgixpytkmob5KpHAWQ2Z7xNvbuDeq?=
 =?us-ascii?Q?gWzDODBIt0BjAeK4sK0pQlzMmPCojJlbRbHoVcxKQ2RU1N5tb8lnw4Huhl8I?=
 =?us-ascii?Q?/nfSGWXtdXpoeUvlHzeBZ6zYNaotIDfSDhoXAaNZHVZPhn1w63JNS8rm+ZuB?=
 =?us-ascii?Q?WZsio+0GqQ04ED5wYgfPgJyY5rMtXNIk/lWn9xJgSxgvmy8dey+K/uOPqc9E?=
 =?us-ascii?Q?lT1WuPSANY8obH4aDYtM3pH7QCo+D2LGRaHe3+zg/5sRzF3ZmtPE5zBMnN5B?=
 =?us-ascii?Q?RmWvg1fo1MUEgsGYPNpcMicyUw4L1hhGmIhY+ENbnm8HEI/SWu+mtUXRA6Lf?=
 =?us-ascii?Q?lSRVoJjWXk1aRTWSiSu7LvBNAwGEBsJ4cdHDn3LiL/aICOIjFGnYcMivjdHY?=
 =?us-ascii?Q?ojHvXXjvnSKk95kRnIQDcoAyq8akvbSlbUCrGa0vF6vKvyuiQFdpxfLo3hns?=
 =?us-ascii?Q?HjBsuoBWbK9ZVgO59qbg2PhCdt3yoRn0eOiClPTae4aW+nUt+tzNEcZe74QN?=
 =?us-ascii?Q?9cqQqiST3J634uhHHePg8KoUYZO50APFEE6dH9ohZ/bPNmWooqePDW5GDejR?=
 =?us-ascii?Q?rrM3JsxezvIOtOMtJGC6RhtxLbDcflMay8MdknxzpVQT8GCh2t7mXIeHdUIm?=
 =?us-ascii?Q?ovMNdfEU1IJ5SN5TZ9eT6Gnq+xyAeTJs03kxERrp?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5445.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e931d92e-a185-4196-7d0e-08dbd1a60d8d
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Oct 2023 19:52:12.4740 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 44M4GPUQ9Dk5OxKIWWuJ1/Khze6vVzsUKKAQ8+5h9rFDOmUmRRvqAIiqFJK4VaNS7+K9Si1AHnbTI9lXb6sQHdk40RPAGtpnhqythoHa+y8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4642
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 2/4] drm/i915: Reserve some kernel space
 per vm
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
Cc: "Shyti, Andi" <andi.shyti@intel.com>, "Cavitt,
 Jonathan" <jonathan.cavitt@intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

-----Original Message-----
From: Hajda, Andrzej <andrzej.hajda@intel.com>=20
Sent: Friday, October 20, 2023 5:09 AM
To: intel-gfx@lists.freedesktop.org
Cc: Nirmoy Das <nirmoy.das@linux.intel.com>; Shyti, Andi <andi.shyti@intel.=
com>; Cavitt, Jonathan <jonathan.cavitt@intel.com>; Hajda, Andrzej <andrzej=
.hajda@intel.com>; Chris Wilson <chris.p.wilson@linux.intel.com>
Subject: [PATCH v2 2/4] drm/i915: Reserve some kernel space per vm
>=20
> Reserve two pages in each vm for kernel space to use for things
> such as workarounds.
>=20
> v2: use real memory, do not decrease vm.total


Would XY_FAST_COLOR_BLIT be able to target this memory region?  I'd have to=
 ask Chris about this:
He's better versed in this kind of stuff than I am.
But I guess the answer must be "yes" if Chris suggested this change, so I w=
on't block on this question.
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt


>=20
> Suggested-by: Chris Wilson <chris.p.wilson@linux.intel.com>
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/gen8_ppgtt.c | 38 ++++++++++++++++++++++++++++
>  drivers/gpu/drm/i915/gt/intel_gtt.h  |  1 +
>  2 files changed, 39 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/=
gt/gen8_ppgtt.c
> index 84aa29715e0aca..c25e1d4cceeb17 100644
> --- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> +++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> @@ -5,6 +5,7 @@
> =20
>  #include <linux/log2.h>
> =20
> +#include "gem/i915_gem_internal.h"
>  #include "gem/i915_gem_lmem.h"
> =20
>  #include "gen8_ppgtt.h"
> @@ -953,6 +954,39 @@ gen8_alloc_top_pd(struct i915_address_space *vm)
>  	return ERR_PTR(err);
>  }
> =20
> +static int gen8_init_rsvd(struct i915_address_space *vm)
> +{
> +	const resource_size_t size =3D 2 * PAGE_SIZE;
> +	struct drm_i915_private *i915 =3D vm->i915;
> +	struct drm_i915_gem_object *obj;
> +	struct i915_vma *vma;
> +	int ret;
> +
> +	obj =3D i915_gem_object_create_lmem(i915, size,
> +					  I915_BO_ALLOC_VOLATILE |
> +					  I915_BO_ALLOC_GPU_ONLY);
> +	if (IS_ERR(obj))
> +		obj =3D i915_gem_object_create_internal(i915, size);
> +	if (IS_ERR(obj))
> +		return PTR_ERR(obj);
> +
> +	vma =3D i915_vma_instance(obj, vm, NULL);
> +	if (IS_ERR(vma)) {
> +		ret =3D PTR_ERR(vma);
> +		goto unref;
> +	}
> +
> +	ret =3D i915_vma_pin(vma, 0, 0, PIN_USER | PIN_HIGH);
> +	if (ret)
> +		goto unref;
> +
> +	vm->rsvd =3D i915_vma_make_unshrinkable(vma);
> +
> +unref:
> +	i915_gem_object_put(obj);
> +	return ret;
> +}
> +
>  /*
>   * GEN8 legacy ppgtt programming is accomplished through a max 4 PDP reg=
isters
>   * with a net effect resembling a 2-level page table in normal x86 terms=
. Each
> @@ -1034,6 +1068,10 @@ struct i915_ppgtt *gen8_ppgtt_create(struct intel_=
gt *gt,
>  	if (intel_vgpu_active(gt->i915))
>  		gen8_ppgtt_notify_vgt(ppgtt, true);
> =20
> +	err =3D gen8_init_rsvd(&ppgtt->vm);
> +	if (err)
> +		goto err_put;
> +
>  	return ppgtt;
> =20
>  err_put:
> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/g=
t/intel_gtt.h
> index 15c71da14d1d27..4a35ef24501b5f 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gtt.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
> @@ -250,6 +250,7 @@ struct i915_address_space {
>  	struct work_struct release_work;
> =20
>  	struct drm_mm mm;
> +	struct i915_vma *rsvd;
>  	struct intel_gt *gt;
>  	struct drm_i915_private *i915;
>  	struct device *dma;
> --=20
> 2.34.1
>=20
>=20
