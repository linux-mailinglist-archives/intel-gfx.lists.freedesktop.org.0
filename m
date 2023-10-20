Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EBE57D1698
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Oct 2023 21:55:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F342C10E5E4;
	Fri, 20 Oct 2023 19:55:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECB9A10E5E4
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Oct 2023 19:55:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697831701; x=1729367701;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=B/IMPgo4Ewm6hH5KamxWhGO3uATbBy/5w1IqRfYOZ78=;
 b=iGz9UNU8Jxif97hrZnZ1Ea5OlHl1/dm6UpKv/QXHdMJEWrR2hEbY8Z8t
 kCOelvPr1Pl2Zvcw51MxR5xnqYSUXXBtTaOXq5maxou65y3qlO66K+2Ns
 rb0/pv+vP8eDbuS5PHRhe0Svy95uqvtpUKXcNEVBMRCuylgnqthZagnlA
 Jst2JafKNhzMwA5VOzHMtTQw9b8L6AdmX+wIpXyYg5XEIe0/1rqEav4Pu
 pLJ4wsYsacJfjERR+W9VOyMG4mOnznYR2t6vtfftjyE+9u2RH2GD8HFFV
 qqaGgKXEGFA7vctnkp7fvF4n+VruFSa6E3GFr80u+wx95hVHrMi8p7nda A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10869"; a="371632962"
X-IronPort-AV: E=Sophos;i="6.03,239,1694761200"; d="scan'208";a="371632962"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2023 12:55:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10869"; a="707315188"
X-IronPort-AV: E=Sophos;i="6.03,239,1694761200"; d="scan'208";a="707315188"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Oct 2023 12:55:01 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 20 Oct 2023 12:55:01 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 20 Oct 2023 12:55:01 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 20 Oct 2023 12:54:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ilQa7MzsUA6ClgsFIITEeXTc2A/1dmi4QIMiX9wgD3slguDIbZIQRKl0z9dbzzpZkFwFnWI+1A0i+wMuM6fgPt8CkzkhDiZ+w3+Kt+WnZQPiegXJwfTOEUnl0PaLEyeJySsIdjabbcbVWUK1mee8ef1IiQNLHkJitQhkCdsGroXfnL2TfDf2cIu96glOO9eqCT8VC8KVQAmTmY4UbMqH3cx5gnHZ+jQ4k5S86IuYGblfYKDMARY3swK3yk01Ugrgn/jMn9Iuk+QDJPurVZXWP8Svgl/2cpBokPtzuQZ0amJU+AuLbw5kIueXCGi7wgKDwyruKVze98b6zEcmZ3XEfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Yn+FLzPLMXyfJqzl+JP1YjxBtQjLdTuBdvjYeWtzSvM=;
 b=N2+WaqDVeFIvRF0AA1FxyWGivDPW2j1jG5olL3nskehtsgSB8NO1RtoAinFZa5EaCCx9mkfSZQYt1RuQbDbJf0DUew/qifse3DrUAnFyWW8pdWogox7rDZq2cznmS2/Eg8egRhOmWYv62Yf6IIk0mfmmjmcfYwkp2wR1F8S8oBObQZln24oTsxzSWlZbmD5c5fIJsruwZyiYwVSh50aVG7XAhOi2RPCwxCLF95wfNnHS2deu/xnUpoZm5Zc5UYVPo0iTPxJPcIh0Z+9Ui3dRa9OOCtVAdXe8QGry2BLNGi1PUdFip8BKQnlm6XwH9DAEJES40Iv1IWX0WjSoEuKcOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5445.namprd11.prod.outlook.com (2603:10b6:208:30b::7)
 by DM4PR11MB7325.namprd11.prod.outlook.com (2603:10b6:8:107::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.21; Fri, 20 Oct
 2023 19:54:57 +0000
Received: from BL1PR11MB5445.namprd11.prod.outlook.com
 ([fe80::1d86:9790:8b2:4fa]) by BL1PR11MB5445.namprd11.prod.outlook.com
 ([fe80::1d86:9790:8b2:4fa%5]) with mapi id 15.20.6907.025; Fri, 20 Oct 2023
 19:54:57 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Hajda, Andrzej" <andrzej.hajda@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 1/4] drm/i915: Enable NULL PTE support for vm scratch
Thread-Index: AQHaA05QqYTVUI9lnEqyvxiz7/waa7BTF3iw
Date: Fri, 20 Oct 2023 19:54:57 +0000
Message-ID: <BL1PR11MB54452D78EE5FC67170926F15E5DBA@BL1PR11MB5445.namprd11.prod.outlook.com>
References: <20231020120912.1888023-1-andrzej.hajda@intel.com>
 <20231020120912.1888023-2-andrzej.hajda@intel.com>
In-Reply-To: <20231020120912.1888023-2-andrzej.hajda@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5445:EE_|DM4PR11MB7325:EE_
x-ms-office365-filtering-correlation-id: ea7781a0-e136-403d-00af-08dbd1a66fbc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yVYZbUt8yG0BUuYEuflgGLXHrt7+CEEcpIvzbzSn6wD4bNLl6mgyh6h8ChiuLOfccvHyPpp80YJOt+IZLaumIVtPpqWxXcig3KPTu2GFzpVFR/x1P5NeDaSYYTXdD3QA02L+4gNzpqY8qct/A1/VrJsUkaBL/1Y1XZGAHagEvJdXcCQwlKe9jAIlyQJu/KBZVv6rlP7yJpzKRkUd+njT/1tjpAeuhtjHb8quNuIrSS9z3Rsrm4Ui/tloQ/xq9KlC5Zll4LV4qVVBFA+k0ewcN2Zge4Z8C5GrFUdrxfzYm9eV0s9WH3ad1MpfqbFN//ieclxggXATdQ08MU3O1qNfkvAk3CkG/6Fd7dXG24YmUbN8gb3Bnh8byzp3KCL0tR4QvnBI/rvsXA0AudGhg2EamlKopgSbyaTwAjvAMBuyrvaBgwuTsjVo/Ky+JwQyvtAKwVp5+sj5swMPcndWrtqYmq69sByb3lmYhGxopIf8nyK4dxaq/Dl8UbdH8/tzG2lOIQkCqlBTFsxHxY4y6eyWRm97CQoJU2L/875BK8SjaRWGnOPt/9K73yYRfWdIy8VbLrnogTtblW29N8UulyMAJdViaqdMKkj9GybIVotsTlv2ukCUJhuqEjek9Jbpti0k
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5445.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(376002)(396003)(366004)(136003)(39860400002)(230922051799003)(1800799009)(186009)(64100799003)(451199024)(38070700009)(86362001)(33656002)(55016003)(66556008)(54906003)(66476007)(316002)(110136005)(66946007)(64756008)(82960400001)(122000001)(38100700002)(71200400001)(66446008)(6506007)(53546011)(52536014)(76116006)(7696005)(83380400001)(26005)(9686003)(8936002)(2906002)(478600001)(41300700001)(8676002)(4326008)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Lk3yvcEaaqDtwlZ2NJ6bUsViHrG7NAhEIrFAXSuEzpwN7jd7M8NoFJuROJcV?=
 =?us-ascii?Q?GLXyKJ29VBEeYInpRtXIgKKgv18xhiI/XVd8CcF1DktRT2t0HJyNV4vwSXLf?=
 =?us-ascii?Q?BsQF8w78frURg8vQTAuOpIH4tx0/Cd3BgX6f7r1oJauO4ggCyPyjk4+BVUSP?=
 =?us-ascii?Q?Hu6jP0npdRQQL44FiHOlCzpkyyfRpsYh5ibpvjMXd97hgnOpEivCKovNNFT0?=
 =?us-ascii?Q?Tk9/LwjvN99KwEOrzyIsD18j2mNsrumq9Zwu8kBgB1NMcn2RbxfNUz3LHnX+?=
 =?us-ascii?Q?x5AdKtfbMcuwxKCvczK5LvJnOyBAL3A40n1T6iaY/L6JZO7fmh0+k+7ZZvlO?=
 =?us-ascii?Q?tRN1SXV4mRiISuo/YIqkKkK3DCoT617dfZdbPIKzcSFExvRmc5BKhwJg0lfZ?=
 =?us-ascii?Q?S8iv/Al7Z3JBE8/inG18GHbOWisM+ljZ9zajqUIByJ+U5BlhjpjEkMlNcN0D?=
 =?us-ascii?Q?WaJSTyK2r9//zkDN++fqlLZP6A6g4vu39zBzm7otUyyotY97BD3zFWEzSJh1?=
 =?us-ascii?Q?er0uVNpbhnQHF4Yg+4oWmeMyy8xwC2sJIYPBsXPMXtkH/DX/tpVSaWrC4c/s?=
 =?us-ascii?Q?0oQ6Yc67CX4YitzsIpVJqBjyz2eeA0qK2myHZ61UO3dLSjAzrdMt220bmVfs?=
 =?us-ascii?Q?c3g81FlYBrZ1nPsu4X7ifIy+e2IRyX+8XY9ZIfaaVIbofwvzR6LtgjLdqvMe?=
 =?us-ascii?Q?e1/qNmm1zV7D74FM3NkTnVXuOaSii4padq+z0PKRqNc45DOAS3t8EXGJ0xG5?=
 =?us-ascii?Q?4h5pLGCxbMKlbxV3zYtqGyvPi7QxuI0L1aw8xEU0F6p3dY7irz6LsctrlXX9?=
 =?us-ascii?Q?xMJUL1mQK8FNHQxNlTlUZPcg3OhuxDnwAZKMbO3f9a2A7EAc5N9UWy8+CleR?=
 =?us-ascii?Q?vRXdZdavUh3dvls46DjsD15n/EZVVvj9AIFiqiBHx4duujKBKMqovqGgycIB?=
 =?us-ascii?Q?WWx4kP6sj6lBti8aqlwmqKfQ5vTwsUlSXYL4V5koi6/nLR1h+NUwsfzG9Khf?=
 =?us-ascii?Q?AAzAPO2MtaMwsCfc2sWukji+v90KelzlEl6wN0YgCqk5yzKDIicTGMxwuUsM?=
 =?us-ascii?Q?wrZ6d9NY3Hau3Qy0tymuuIN4OCfsK7iBQ3lOdcyibtz9kvH939XmXF9Z9hSv?=
 =?us-ascii?Q?6RW9JgJGKQtfNCerkOww8tft77L+83wzwoBL51URqOXaOp9Wbtj60B6GlLFR?=
 =?us-ascii?Q?Kv0xZmGPAxV85Bn3ZOUSXJMY9jE/kovQqytgTdaaMAeNKsP/HZ40IjJkK+KB?=
 =?us-ascii?Q?deTpJsGoYmIxUYUxdRPpH1ZbBRAiuf7hXI+2CICDLaIMY64vVtkJwiywbFiM?=
 =?us-ascii?Q?4IZwx50KMBG0SFnJOTPAcKwICgt1YdpySE7bM656FAaye8vFenej0mcRLzz6?=
 =?us-ascii?Q?JgvLRFLAY+0GBMhH6l+/rgXCFFTitKiwaYqfWwsZdIfF7B5PnmI11Hsn152n?=
 =?us-ascii?Q?3P3FjmWfx/FLvRHRiYnEc8wANwwASPJ5eS3Km57OmPKeRaH1XSveuxvp/FZU?=
 =?us-ascii?Q?1wBxGNMxAmJWy+ZjYxIxBlQ03lvO5UnyEqfvJDhIwnXOvM4MCCaZ84NZxcps?=
 =?us-ascii?Q?BSxY9hobKZ7Fr+aCUw5bZYa5fDNQSxFRPT+ijXlV?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5445.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ea7781a0-e136-403d-00af-08dbd1a66fbc
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Oct 2023 19:54:57.2093 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pUgrJ0O21Iapn5wV9xgFKl74RWGyH0nyQJt3oD5oohP0HWbo79w0M1QRXUpv3H//M8hGagHn96h8L+97xeT2SW9vNvCe3YAkHOw+5b/Sxnk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7325
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 1/4] drm/i915: Enable NULL PTE support
 for vm scratch
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
Cc: "Shyti, Andi" <andi.shyti@intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

-----Original Message-----
From: Hajda, Andrzej <andrzej.hajda@intel.com>=20
Sent: Friday, October 20, 2023 5:09 AM
To: intel-gfx@lists.freedesktop.org
Cc: Nirmoy Das <nirmoy.das@linux.intel.com>; Shyti, Andi <andi.shyti@intel.=
com>; Cavitt, Jonathan <jonathan.cavitt@intel.com>; Chris Wilson <chris.p.w=
ilson@linux.intel.com>; Hajda, Andrzej <andrzej.hajda@intel.com>
Subject: [PATCH v2 1/4] drm/i915: Enable NULL PTE support for vm scratch
>=20
> From: Jonathan Cavitt <jonathan.cavitt@intel.com>
>=20
> Enable NULL PTE support for vm scratch pages.
>=20
> The use of NULL PTEs in teh vm scratch pages requires us to change how


Right.  I forgot about that typo from my version.  s/teh/the.
But that's just semantics, of course.  I won't block on it.
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt


> the i915 gem_contexts live selftest perform vm_isolation: instead of
> checking the scratch pages are isolated and don't affect each other, we
> check that all changes to the scratch pages are voided.
>=20
> v2: fixed order of definitions
>=20
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Suggested-by: Chris Wilson <chris.p.wilson@linux.intel.com>
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c | 6 ++++++
>  drivers/gpu/drm/i915/gt/gen8_ppgtt.c                  | 3 +++
>  drivers/gpu/drm/i915/gt/intel_gtt.h                   | 1 +
>  drivers/gpu/drm/i915/i915_drv.h                       | 2 ++
>  drivers/gpu/drm/i915/i915_pci.c                       | 2 ++
>  drivers/gpu/drm/i915/intel_device_info.h              | 1 +
>  6 files changed, 15 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/driv=
ers/gpu/drm/i915/gem/selftests/i915_gem_context.c
> index 7021b6e9b219ef..48fc5990343bc7 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
> @@ -1751,6 +1751,12 @@ static int check_scratch_page(struct i915_gem_cont=
ext *ctx, u32 *out)
>  	if (!vm)
>  		return -ENODEV;
> =20
> +	if (HAS_NULL_PAGE(vm->i915)) {
> +		if (out)
> +			*out =3D 0;
> +		return 0;
> +	}
> +
>  	if (!vm->scratch[0]) {
>  		pr_err("No scratch page!\n");
>  		return -EINVAL;
> diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/=
gt/gen8_ppgtt.c
> index 9895e18df0435a..84aa29715e0aca 100644
> --- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> +++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> @@ -855,6 +855,9 @@ static int gen8_init_scratch(struct i915_address_spac=
e *vm)
>  						      I915_CACHE_NONE),
>  			       pte_flags);
> =20
> +	if (HAS_NULL_PAGE(vm->i915))
> +		vm->scratch[0]->encode |=3D PTE_NULL_PAGE;
> +
>  	for (i =3D 1; i <=3D vm->top; i++) {
>  		struct drm_i915_gem_object *obj;
> =20
> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/g=
t/intel_gtt.h
> index b471edac269920..15c71da14d1d27 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gtt.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
> @@ -151,6 +151,7 @@ typedef u64 gen8_pte_t;
> =20
>  #define GEN8_PAGE_PRESENT		BIT_ULL(0)
>  #define GEN8_PAGE_RW			BIT_ULL(1)
> +#define PTE_NULL_PAGE			BIT_ULL(9)
> =20
>  #define GEN8_PDE_IPS_64K BIT(11)
>  #define GEN8_PDE_PS_2M   BIT(7)
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index cb60fc9cf87373..8f61137deb6cef 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -776,6 +776,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>   */
>  #define HAS_FLAT_CCS(i915)   (INTEL_INFO(i915)->has_flat_ccs)
> =20
> +#define HAS_NULL_PAGE(dev_priv) (INTEL_INFO(dev_priv)->has_null_page)
> +
>  #define HAS_GT_UC(i915)	(INTEL_INFO(i915)->has_gt_uc)
> =20
>  #define HAS_POOLED_EU(i915)	(RUNTIME_INFO(i915)->has_pooled_eu)
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_=
pci.c
> index 454467cfa52b9d..aa6e4559b0f0c7 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -642,6 +642,7 @@ static const struct intel_device_info jsl_info =3D {
>  	GEN(12), \
>  	TGL_CACHELEVEL, \
>  	.has_global_mocs =3D 1, \
> +	.has_null_page =3D 1, \
>  	.has_pxp =3D 1, \
>  	.max_pat_index =3D 3
> =20
> @@ -719,6 +720,7 @@ static const struct intel_device_info adl_p_info =3D =
{
>  	.has_logical_ring_contexts =3D 1, \
>  	.has_logical_ring_elsq =3D 1, \
>  	.has_mslice_steering =3D 1, \
> +	.has_null_page =3D 1, \
>  	.has_oa_bpc_reporting =3D 1, \
>  	.has_oa_slice_contrib_limits =3D 1, \
>  	.has_oam =3D 1, \
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i=
915/intel_device_info.h
> index 39817490b13fd4..36e169695cd61b 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -160,6 +160,7 @@ enum intel_ppgtt_type {
>  	func(has_logical_ring_elsq); \
>  	func(has_media_ratio_mode); \
>  	func(has_mslice_steering); \
> +	func(has_null_page); \
>  	func(has_oa_bpc_reporting); \
>  	func(has_oa_slice_contrib_limits); \
>  	func(has_oam); \
> --=20
> 2.34.1
>=20
>=20
