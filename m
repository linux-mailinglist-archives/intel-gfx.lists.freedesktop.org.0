Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 358CE7A2300
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 17:57:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7D8910E169;
	Fri, 15 Sep 2023 15:57:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97F0A10E169
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Sep 2023 15:57:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694793426; x=1726329426;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WmbCV185+mced8P0zdaC7kcbmaNvC0xT0NTsT5WZk7Q=;
 b=nxqQTm6ntmHWJduoeN1CP3tcJ5DULzqRTP+Uj7j4PafLRf5RTBHP14jQ
 K0wQYi74lHjpf/JnPBiUzZL4IxeHXGO0P6Dkgu04H4nkORdtruu7eE6bY
 cthCOzsao4XNKbkEE8VmfkhON9dkmDJOCs5/fR4WydCYrw4dde988dE2T
 T0eeLQxlGFEBEb25b3jmHAllTLWyk4AqwVLeAz8gidaoi8oxorw0cnY0Q
 ShDDcjTHI7OmDT6lA4FWTIwa0tj8SB5L+8tKoGi3KDPEm4SZINmmGmHXO
 56Dx9kyY0NVkIS/EuJsZilXUNYAXHnBvtjfdKKlcLeWLih4I/N92J6Byy g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="358699349"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="358699349"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 08:57:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="738379822"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="738379822"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Sep 2023 08:57:04 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 15 Sep 2023 08:57:04 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 15 Sep 2023 08:57:04 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 15 Sep 2023 08:57:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dgw9Vfu0HJsoP9z61y7Bl0NWO0LlRXSnwTqm5SOg15D2vhPuoZHw+9U5wkKCqhWgx+wpnLCGK7OeH8eA17e/MEFiwZBrciey41RCQOl1E/Z351qJa06J15isbjEe60CR8bFBZ+at+tWuuMe8hmoLtdZVnaVcE2T2u8dRJLMaq55sHzdfOOaC4c7r8eEjuQKJujrIWI1mof3Mtyd3juMZs0zsndZtupupe2+Q5+AMF1+U69SXuDYsiuOUIMji3fTGjE8S1ufLxPgg5jiwyJ6F8sgT4fH+nEE9ikFz5y0wDHMwlpOmqO8Ax5fdmqKHGb7UM7/FKjaC1rhbUEDMV+QvBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kjcHlqkSHZDGQnWZ0qW4DICn1DFupX6Et6o5mVs0eeo=;
 b=ITljUOgjSl1GMDbuyNZgWMyTB4D5Z9SLqWEik6zt9pQB2RIXvuEWHcGNQcFfRi4xN8s8eATyF936ElHthEpaU23RCl/Y6Qp8OXo1iTl5RMYaW+5agcT+8v/rM0hh7VVR63/XN3oBuKI5dHL9nj+i5UiFaEncgYVSMdDAUJVJ5+VQmMN1KZSntsOZDaeYfRbPvqxXZm3j1aEwuEEs0ZdrXEml/bUEqjDGwLoZKDKlTmcpky096TKPffD6J32zcMA2HopmuNM76UkjagC3evb7Un93iLK9Zpg//IRofxMVGDsojrBwM1nIGNFkk/aHAqXGQlPMfZsb4l/9uqqZ/m8Xtg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA1PR11MB6991.namprd11.prod.outlook.com (2603:10b6:806:2b8::21)
 by SJ0PR11MB4781.namprd11.prod.outlook.com (2603:10b6:a03:2d8::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.21; Fri, 15 Sep
 2023 15:56:56 +0000
Received: from SA1PR11MB6991.namprd11.prod.outlook.com
 ([fe80::18a2:59e7:4541:b61c]) by SA1PR11MB6991.namprd11.prod.outlook.com
 ([fe80::18a2:59e7:4541:b61c%3]) with mapi id 15.20.6768.029; Fri, 15 Sep 2023
 15:56:56 +0000
From: "Zeng, Oak" <oak.zeng@intel.com>
To: "Das, Nirmoy" <nirmoy.das@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 5/7] drm/i915: Implement GGTT update method with
 MI_UPDATE_GTT
Thread-Index: AQHZ5697JY+dV6d2IkG8BECE/oX8P7AcCfsg
Date: Fri, 15 Sep 2023 15:56:56 +0000
Message-ID: <SA1PR11MB6991E7C50BEFDCB2EEE04ABA92F6A@SA1PR11MB6991.namprd11.prod.outlook.com>
References: <20230915083412.4572-1-nirmoy.das@intel.com>
 <20230915083412.4572-6-nirmoy.das@intel.com>
In-Reply-To: <20230915083412.4572-6-nirmoy.das@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SA1PR11MB6991:EE_|SJ0PR11MB4781:EE_
x-ms-office365-filtering-correlation-id: d7ab42d7-5ec2-49d3-8f08-08dbb6046320
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pIDqu71oVHD862kCW6LFTUUMmJxnpP/J5cYCbpYvpIOsZnVNSkD3P/bSTx34WqzasRvkZHsmnQXYh1D2MtMU5Qcf8edwNwN1VyHk/rN9ZEUvRYIQXJb9ofG7OCFgZOlv38VzSpqhi/tZhjuD6YW0jar+GM6uIgH4rwNg5+R9MjDfgX+z0akoO9qbxbrimkYmKzu3ZJzQdOT3S4ahGEQbb7puXn9UdiyfcjFLvFTLranzGmejPhTngdI6gBaYDDXMfAzWuFH/5KmXxj+M9qiw2VGBGW5cM4K2QFgu7BGwTvX9Ne4NekQmgYlpX6k5PD6HST/jK0FFgd31uGdk7IHMD92RuIur9drDNs85S30hFTH+Inw/LLBz0WbuS5do+LoiS/oPxPR1230REdxG9FsDxrDSlHEk+10fcpy53dFzAxPlgBMsO2Zl7RsMZErAf7OFyW8hA6ROzRoU1qUJTEEGezNdSW1gPRnjWz1fjzFowhH8UiQ998xux6SgneJDT27CfmK10NwAXmgS2OwGVysYgcxJVUEmV4TXf1T4Dhp1A7hV77hiN8w6/770Q5vznOj758EO9EiIpb9znZFPVAnNYf/EX3g3XoStMSY6SzrPgWKUvsYcFDiX02yIAzX7yMEg
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR11MB6991.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(136003)(396003)(39860400002)(346002)(376002)(1800799009)(186009)(451199024)(71200400001)(7696005)(53546011)(6506007)(55016003)(33656002)(122000001)(38100700002)(82960400001)(38070700005)(86362001)(26005)(2906002)(15650500001)(30864003)(9686003)(478600001)(83380400001)(4326008)(5660300002)(52536014)(110136005)(8676002)(41300700001)(8936002)(316002)(54906003)(64756008)(66556008)(66476007)(76116006)(66446008)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?r+bmtanOx2ctzGtKGK7BIVtbFpkOf0LdbTLX1ig/5qCro+kxjPmszveN5AT/?=
 =?us-ascii?Q?QKZjn8EJSlgxXGQJHNQqKzkKoGArzMIs2YM5VhEQrHrBZ51+P0gworwBh8KX?=
 =?us-ascii?Q?ZzoTpMgrhsGPhlQlrTAHt2BQ8yUMshVnqU7fEc3pXApgqqwQduA0WBtrLJgU?=
 =?us-ascii?Q?tkMjsecGqjE4oea19Y/ot7ZIMv8O102eMZoFc22kyvbRgLG6DUuvAZkOfTnK?=
 =?us-ascii?Q?KVUlZS8OeOwZgOMuAFhFJjiMrvuR3y/Zh9D2xMZSIWZoEgl9Lj9sp8AC2Izi?=
 =?us-ascii?Q?E500Ht2I7ur2BC+R4lVrkbC74QcbGTi+VAIIya8kZO1xAhHgsynwdMZpXBcp?=
 =?us-ascii?Q?bmSU/GBjUkf8T8pni/Cl53wdxi9kEBrBC5He44sBqRJyMY/HkpZzi+9CFsGq?=
 =?us-ascii?Q?np+CF1FAypjfwCfb8flqWw9GCRK398TVU6nKlOX+lhj1Ls4KAREeXEk//ESM?=
 =?us-ascii?Q?DvfXIiaZGAOnyj/R7kuOAWWtcBJWM6mAHmBsaJXBZMFycDT07vWJcXyQFOSX?=
 =?us-ascii?Q?IDJjE56BXNaJOSeG/frPr6AxPbZz52wOwz3RQxuEbB9f5pTstQ59/mPm6XbF?=
 =?us-ascii?Q?praDMN8QWQgx6c4gJsoK7daUfOJ22fmuAyOD9R8TLPon3M6eVaVNtmSEaYCe?=
 =?us-ascii?Q?WvlEN6ufkSLolyfh2ZFTsDfoTAHGGbQt0jrKMxmSIc7lWjW9oOvK8Bn4lM7L?=
 =?us-ascii?Q?Ea4mi2tOMRPYsh186DLJS6vfUOysu+adMmdFfJrLKND+EDF6xSjkPtJqALRQ?=
 =?us-ascii?Q?vE+BwmUap0/u9GZY1qKDFoPiMEFAZzuNIuK7St4ZnCdUBYvEr7/rqUVNu6Fa?=
 =?us-ascii?Q?f6tnfETlQTXrL9sIOFzmmz56z7og38chNBpKLjLnglqz0SrF6aq4xu8WqQCY?=
 =?us-ascii?Q?ubkwIwBb3El71IyJoeExLSGyrsct6H8hoEs+twcsGbq6a37a5RP50B5BT1P3?=
 =?us-ascii?Q?1tCpu7/7EQO+EiaIqiwgFX5uZBnla40CPbEdFcrPMBchyqoeULKtpDgc0pzI?=
 =?us-ascii?Q?ft1vlEYZrqOZHO9AIMFZwxQgqsp9XyxStHBzpRL9NSH7kMUfKlH0PrLoEo4l?=
 =?us-ascii?Q?cGfYhQnbjn++ohOV9jErqMoEGEUu98Dncilsn2pAIy6hw4itmzD769RDDn2s?=
 =?us-ascii?Q?EL/Tbxd0tBvHfzHTHalTlB11bxCZfEwk6lR+KPaE7jPjr9/dAltj0w9howEE?=
 =?us-ascii?Q?HxmWRPOy74eMzPkfy9OcQ1H10twRYY86e7MDmxLkbd5V/kZFYAdhV6Blwv0g?=
 =?us-ascii?Q?RFBowGSGrnqQ+/NxXzN6G/xa5c0IsGLqwKmBgQzzKwC5k9M2yqLQJEfAKqxC?=
 =?us-ascii?Q?XwU10/NS8H2DPzcRndQahWn+qqDfX5CE4zp6C1I4AYhvnsK8wQXW/bbm4m66?=
 =?us-ascii?Q?KbGwh4szzdKLFU1FeAGFjGslAZz3t97Bc3ziFMAa7YWnYWF+AklTIVVRLh/z?=
 =?us-ascii?Q?AiFXW+fSXUjkCDzxdHw2GE2az4/Am1ukxIUAu6FAvO3PhJHSOqNtaeyg+yYw?=
 =?us-ascii?Q?788AbhmHe5/eR0j3kMnOrQFqL5ZPPg/Xk0G8XL6vA1ToW665jkobdluJsF0o?=
 =?us-ascii?Q?0D0aJrDHOnvbjhCTzjs=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB6991.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d7ab42d7-5ec2-49d3-8f08-08dbb6046320
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Sep 2023 15:56:56.1937 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aKEfOQzM1AJiUSimoPFwzdQufiw6iwPfhyi/uAcUUu2ift5mYSj6PqwAXxF/80TksgUDqJL+w9NxgH3FjPyfKA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4781
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 5/7] drm/i915: Implement GGTT update method
 with MI_UPDATE_GTT
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
Cc: "Roper, Matthew D" <matthew.d.roper@intel.com>, "Shyti,
 Andi" <andi.shyti@intel.com>,
 "chris.p.wilson@linux.intel.com" <chris.p.wilson@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



Thanks,
Oak

> -----Original Message-----
> From: Das, Nirmoy <nirmoy.das@intel.com>
> Sent: Friday, September 15, 2023 4:34 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Zeng, Oak <oak.zeng@intel.com>; chris.p.wilson@linux.intel.com; Piork=
owski,
> Piotr <piotr.piorkowski@intel.com>; Shyti, Andi <andi.shyti@intel.com>; M=
un,
> Gwan-gyeong <gwan-gyeong.mun@intel.com>; Roper, Matthew D
> <matthew.d.roper@intel.com>; Das, Nirmoy <nirmoy.das@intel.com>
> Subject: [PATCH 5/7] drm/i915: Implement GGTT update method with
> MI_UPDATE_GTT
>=20
> Implement GGTT update method with blitter command, MI_UPDATE_GTT
> and install those handlers if a platform requires that.
>=20
> v2: Make sure we hold the GT wakeref and Blitter engine wakeref before
> we call mutex_lock/intel_context_enter below. When GT/engine are not
> awake, the intel_context_enter calls into some runtime pm function which
> can end up with kmalloc/fs_reclaim. But trigger fs_reclaim holding a
> mutex lock is not allowed because shrinker can also try to hold the same
> mutex lock. It is a circular lock. So hold the GT/blitter engine wakeref
> before calling mutex_lock, to fix the circular lock.
>=20
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> Signed-off-by: Oak Zeng <oak.zeng@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_ggtt.c | 235 +++++++++++++++++++++++++++
>  1 file changed, 235 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> index dd0ed941441a..b94de7cebfce 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -15,18 +15,23 @@
>  #include "display/intel_display.h"
>  #include "gem/i915_gem_lmem.h"
>=20
> +#include "intel_context.h"
>  #include "intel_ggtt_gmch.h"
> +#include "intel_gpu_commands.h"
>  #include "intel_gt.h"
>  #include "intel_gt_regs.h"
>  #include "intel_pci_config.h"
> +#include "intel_ring.h"
>  #include "i915_drv.h"
>  #include "i915_pci.h"
> +#include "i915_request.h"
>  #include "i915_scatterlist.h"
>  #include "i915_utils.h"
>  #include "i915_vgpu.h"
>=20
>  #include "intel_gtt.h"
>  #include "gen8_ppgtt.h"
> +#include "intel_engine_pm.h"
>=20
>  static void i915_ggtt_color_adjust(const struct drm_mm_node *node,
>  				   unsigned long color,
> @@ -252,6 +257,145 @@ u64 gen8_ggtt_pte_encode(dma_addr_t addr,
>  	return pte;
>  }
>=20
> +static bool should_update_ggtt_with_bind(struct i915_ggtt *ggtt)
> +{
> +	struct intel_gt *gt =3D ggtt->vm.gt;
> +
> +	return intel_gt_is_bind_context_ready(gt);
> +}
> +
> +static struct intel_context *gen8_ggtt_bind_get_ce(struct i915_ggtt *ggt=
t)
> +{
> +	struct intel_context *ce;
> +	struct intel_gt *gt =3D ggtt->vm.gt;
> +
> +	if (intel_gt_is_wedged(gt))
> +		return NULL;
> +
> +	ce =3D gt->engine[BCS0]->bind_context;
> +	GEM_BUG_ON(!ce);
> +
> +	/*
> +	 * If the GT is not awake already at this stage then fallback
> +	 * to pci based GGTT update otherwise __intel_wakeref_get_first()
> +	 * would conflict with fs_reclaim trying to allocate memory while
> +	 * doing rpm_resume().
> +	 */
> +	if (!intel_gt_pm_get_if_awake(gt))
> +		return NULL;
> +
> +	intel_engine_pm_get(ce->engine);
> +
> +	return ce;
> +}
> +
> +static void gen8_ggtt_bind_put_ce(struct intel_context *ce)
> +{
> +	intel_engine_pm_put(ce->engine);
> +	intel_gt_pm_put(ce->engine->gt);
> +}
> +
> +static bool gen8_ggtt_bind_ptes(struct i915_ggtt *ggtt, u32 offset,
> +				struct sg_table *pages, u32 num_entries,
> +				const gen8_pte_t pte)
> +{
> +	struct i915_sched_attr attr =3D {};
> +	struct intel_gt *gt =3D ggtt->vm.gt;
> +	const gen8_pte_t scratch_pte =3D ggtt->vm.scratch[0]->encode;
> +	struct sgt_iter iter;
> +	struct i915_request *rq;
> +	struct intel_context *ce;
> +	u32 *cs;
> +
> +	if (!num_entries)
> +		return true;
> +
> +	ce =3D gen8_ggtt_bind_get_ce(ggtt);
> +	if (!ce)
> +		return false;
> +
> +	if (pages)
> +		iter =3D __sgt_iter(pages->sgl, true);
> +
> +	while (num_entries) {
> +		int count =3D 0;
> +		dma_addr_t addr;
> +		/*
> +		 * MI_UPDATE_GTT can update 512 entries in a single command
> but
> +		 * that end up with engine reset, 511 works.
> +		 */
> +		u32 n_ptes =3D min_t(u32, 511, num_entries);
> +
> +		if (mutex_lock_interruptible(&ce->timeline->mutex))
> +			goto put_ce;
> +
> +		intel_context_enter(ce);
> +		rq =3D __i915_request_create(ce, GFP_NOWAIT | GFP_ATOMIC);
> +		intel_context_exit(ce);
> +		if (IS_ERR(rq)) {
> +			GT_TRACE(gt, "Failed to get bind request\n");
> +			mutex_unlock(&ce->timeline->mutex);
> +			goto put_ce;
> +		}
> +
> +		cs =3D intel_ring_begin(rq, 2 * n_ptes + 2);
> +		if (IS_ERR(cs)) {
> +			GT_TRACE(gt, "Failed to ring space for GGTT bind\n");
> +			i915_request_set_error_once(rq, PTR_ERR(cs));
> +			/* once a request is created, it must be queued */
> +			goto queue_err_rq;
> +		}
> +
> +		*cs++ =3D MI_UPDATE_GTT | (2 * n_ptes);
> +		*cs++ =3D offset << 12;
> +
> +		if (pages) {
> +			for_each_sgt_daddr_next(addr, iter) {
> +				if (count =3D=3D n_ptes)
> +					break;
> +				*cs++ =3D lower_32_bits(pte | addr);
> +				*cs++ =3D upper_32_bits(pte | addr);
> +				count++;
> +			}
> +			/* fill remaining with scratch pte, if any */
> +			if (count < n_ptes) {
> +				memset64((u64 *)cs, scratch_pte,
> +					 n_ptes - count);
> +				cs +=3D (n_ptes - count) * 2;
> +			}

Should we return error instead of silently fill pte with scratch? Or maybe =
even gem_bug_on on this case? The caller didn't allocate enough pages, mean=
s something wrong happened...

Oak

> +		} else {
> +			memset64((u64 *)cs, pte, n_ptes);
> +			cs +=3D n_ptes * 2;
> +		}
> +
> +		intel_ring_advance(rq, cs);
> +queue_err_rq:
> +		i915_request_get(rq);
> +		__i915_request_commit(rq);
> +		__i915_request_queue(rq, &attr);
> +
> +		mutex_unlock(&ce->timeline->mutex);
> +		/* This will break if the request is complete or after engine reset
> */
> +		i915_request_wait(rq, 0, MAX_SCHEDULE_TIMEOUT);
> +		if (rq->fence.error)
> +			goto err_rq;
> +
> +		i915_request_put(rq);
> +
> +		num_entries -=3D n_ptes;
> +		offset +=3D n_ptes;
> +	}
> +
> +	gen8_ggtt_bind_put_ce(ce);
> +	return true;
> +
> +err_rq:
> +	i915_request_put(rq);
> +put_ce:
> +	gen8_ggtt_bind_put_ce(ce);
> +	return false;
> +}
> +
>  static void gen8_set_pte(void __iomem *addr, gen8_pte_t pte)
>  {
>  	writeq(pte, addr);
> @@ -272,6 +416,21 @@ static void gen8_ggtt_insert_page(struct
> i915_address_space *vm,
>  	ggtt->invalidate(ggtt);
>  }
>=20
> +static void gen8_ggtt_insert_page_bind(struct i915_address_space *vm,
> +				       dma_addr_t addr, u64 offset,
> +				       unsigned int pat_index, u32 flags)
> +{
> +	struct i915_ggtt *ggtt =3D i915_vm_to_ggtt(vm);
> +	gen8_pte_t pte;
> +
> +	pte =3D ggtt->vm.pte_encode(addr, pat_index, flags);
> +	if (should_update_ggtt_with_bind(i915_vm_to_ggtt(vm)) &&
> +	    gen8_ggtt_bind_ptes(ggtt, offset, NULL, 1, pte))
> +		return ggtt->invalidate(ggtt);
> +
> +	gen8_ggtt_insert_page(vm, addr, offset, pat_index, flags);
> +}
> +
>  static void gen8_ggtt_insert_entries(struct i915_address_space *vm,
>  				     struct i915_vma_resource *vma_res,
>  				     unsigned int pat_index,
> @@ -311,6 +470,50 @@ static void gen8_ggtt_insert_entries(struct
> i915_address_space *vm,
>  	ggtt->invalidate(ggtt);
>  }
>=20
> +static bool __gen8_ggtt_insert_entries_bind(struct i915_address_space *v=
m,
> +					    struct i915_vma_resource *vma_res,
> +					    unsigned int pat_index, u32 flags)
> +{
> +	struct i915_ggtt *ggtt =3D i915_vm_to_ggtt(vm);
> +	gen8_pte_t scratch_pte =3D vm->scratch[0]->encode;
> +	gen8_pte_t pte_encode;
> +	u64 start, end;
> +
> +	pte_encode =3D ggtt->vm.pte_encode(0, pat_index, flags);
> +	start =3D (vma_res->start - vma_res->guard) / I915_GTT_PAGE_SIZE;
> +	end =3D start + vma_res->guard / I915_GTT_PAGE_SIZE;
> +	if (!gen8_ggtt_bind_ptes(ggtt, start, NULL, end - start, scratch_pte))
> +		goto err;
> +
> +	start =3D end;
> +	end +=3D (vma_res->node_size + vma_res->guard) / I915_GTT_PAGE_SIZE;
> +	if (!gen8_ggtt_bind_ptes(ggtt, start, vma_res->bi.pages,
> +	      vma_res->node_size / I915_GTT_PAGE_SIZE, pte_encode))
> +		goto err;
> +
> +	start +=3D vma_res->node_size / I915_GTT_PAGE_SIZE;
> +	if (!gen8_ggtt_bind_ptes(ggtt, start, NULL, end - start, scratch_pte))
> +		goto err;
> +
> +	return true;
> +
> +err:
> +	return false;
> +}
> +
> +static void gen8_ggtt_insert_entries_bind(struct i915_address_space *vm,
> +					  struct i915_vma_resource *vma_res,
> +					  unsigned int pat_index, u32 flags)
> +{
> +	struct i915_ggtt *ggtt =3D i915_vm_to_ggtt(vm);
> +
> +	if (should_update_ggtt_with_bind(i915_vm_to_ggtt(vm)) &&
> +	    __gen8_ggtt_insert_entries_bind(vm, vma_res, pat_index, flags))
> +		return ggtt->invalidate(ggtt);
> +
> +	gen8_ggtt_insert_entries(vm, vma_res, pat_index, flags);
> +}
> +
>  static void gen8_ggtt_clear_range(struct i915_address_space *vm,
>  				  u64 start, u64 length)
>  {
> @@ -332,6 +535,27 @@ static void gen8_ggtt_clear_range(struct
> i915_address_space *vm,
>  		gen8_set_pte(&gtt_base[i], scratch_pte);
>  }
>=20
> +static void gen8_ggtt_scratch_range_bind(struct i915_address_space *vm,
> +					 u64 start, u64 length)
> +{
> +	struct i915_ggtt *ggtt =3D i915_vm_to_ggtt(vm);
> +	unsigned int first_entry =3D start / I915_GTT_PAGE_SIZE;
> +	unsigned int num_entries =3D length / I915_GTT_PAGE_SIZE;
> +	const gen8_pte_t scratch_pte =3D vm->scratch[0]->encode;
> +	const int max_entries =3D ggtt_total_entries(ggtt) - first_entry;
> +
> +	if (WARN(num_entries > max_entries,
> +		 "First entry =3D %d; Num entries =3D %d (max=3D%d)\n",
> +		 first_entry, num_entries, max_entries))
> +		num_entries =3D max_entries;
> +
> +	if (should_update_ggtt_with_bind(ggtt) && gen8_ggtt_bind_ptes(ggtt,
> first_entry,
> +	     NULL, num_entries, scratch_pte))
> +		return ggtt->invalidate(ggtt);
> +
> +	gen8_ggtt_clear_range(vm, start, length);
> +}
> +
>  static void gen6_ggtt_insert_page(struct i915_address_space *vm,
>  				  dma_addr_t addr,
>  				  u64 offset,
> @@ -997,6 +1221,17 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
>  			I915_VMA_GLOBAL_BIND | I915_VMA_LOCAL_BIND;
>  	}
>=20
> +	if (i915_ggtt_require_binder(i915)) {
> +		ggtt->vm.scratch_range =3D gen8_ggtt_scratch_range_bind;
> +		ggtt->vm.insert_page =3D gen8_ggtt_insert_page_bind;
> +		ggtt->vm.insert_entries =3D gen8_ggtt_insert_entries_bind;
> +		/*
> +		 * On GPU is hung, we might bind VMAs for error capture.
> +		 * Fallback to CPU GGTT updates in that case.
> +		 */
> +		ggtt->vm.raw_insert_page =3D gen8_ggtt_insert_page;
> +	}
> +
>  	if (intel_uc_wants_guc(&ggtt->vm.gt->uc))
>  		ggtt->invalidate =3D guc_ggtt_invalidate;
>  	else
> --
> 2.41.0

