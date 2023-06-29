Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66519742A83
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jun 2023 18:21:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 117E110E054;
	Thu, 29 Jun 2023 16:21:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EED610E054
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Jun 2023 16:21:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688055707; x=1719591707;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bzhgj5J669qChHUU8ctSRAXA1iTuPkab+20q3mIVlQA=;
 b=gnkXfNEzmoCmvUJFjHfMP5PWRHrbewgeB26Z6fEiFhDooAPxLSz3aacj
 dYpWduZv+3Kq83RymvzrrOCvRnnQ2nm1HKDo7QUCfnYIbzTxQQw8fwvuY
 d0kfhkij8c6PKb+7XPPKrdfAogCGvFPDBB3WKSTkiQaD37k1V1yyKN/UW
 CWfCIl/KyV1W008Rkd1aaF3tNcCwHOiMdBe6VP7tOE3uBjDr5GoqRCoLv
 TMWRyT/5UPkv50td1OacFkLsT1UMZYm5FR7d5o1fYX4H0e85N7JFQK8tH
 47ZPu+d64+piL4Ys64aG11znwHIpBZEO7k6XTJf3o1+nJc9ueyvdnXFFm w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10756"; a="364726904"
X-IronPort-AV: E=Sophos;i="6.01,168,1684825200"; d="scan'208";a="364726904"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2023 09:12:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10756"; a="747087761"
X-IronPort-AV: E=Sophos;i="6.01,168,1684825200"; d="scan'208";a="747087761"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga008.jf.intel.com with ESMTP; 29 Jun 2023 09:12:26 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 29 Jun 2023 09:12:25 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 29 Jun 2023 09:12:25 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 29 Jun 2023 09:12:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kz9HSyoTQzk4z7w4VP/6VXr33ljqQFkPmYwE+2pVqdofH2RimCZORFeRkigWvZFGrLr+g+cAjnt9lynNnKpRoxgAeFhcAnqelgappfk1oBOZOasTE9OXzwr03AqR7iA/wFiiCqWCHoMwYOqUqZiPVCqMgl5jLYv1M/efsHMHWiAquGMZLemmPzhUz9U1IHF8WEXbNfVIbClarut/JjB4yeCFUP0nhZcfolbwkDe9h1mWZiCM5ngSQKOuO8gO3+Zg8WLqJK5CggjzkuOd8CBnLyLcfS1tv9BuqA2M+gszZ6Vabue3mB5xATUHHyxWgmFq4I8ZVe1i6WtggaBdFiiJIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hFO1JMk/ENQ5EoTBZvWHF4g96qof+Td6qK7puJgEeCA=;
 b=KDWOu1hOMoubv3qw13d9HKAwK23ERLFqI9tztCbkLztwngijrMkmrDCKaMm+/NtCbfKtlK0UIosGvbMjZCQRDDgjcZ9st7V8uODDtJ5AsquLRsb2TAM/OYPjEaTGColXt8Q9dL56azGw2wNqDqrtG5PSu9NKYa+fizVYNMwtgSsS/f25/QqBoq6maybaM6Jvsr+jzrvHYb0Vy3WouIutePruzNGSsObSLu6w4KFt512+65pa7bKabs+F047mWjUb5uV1iBdmdYtdz0sESGYtaHocznOZKK9XWnqPeBxDr5fubUYcPuvUEfMGD6R4KPptWNj1lWGj1SXDQvvnwsUeaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB2567.namprd11.prod.outlook.com (2603:10b6:a02:c5::32)
 by LV3PR11MB8578.namprd11.prod.outlook.com (2603:10b6:408:1b3::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6544.19; Thu, 29 Jun
 2023 16:12:18 +0000
Received: from BYAPR11MB2567.namprd11.prod.outlook.com
 ([fe80::28b4:ae85:a4f0:3f46]) by BYAPR11MB2567.namprd11.prod.outlook.com
 ([fe80::28b4:ae85:a4f0:3f46%4]) with mapi id 15.20.6521.020; Thu, 29 Jun 2023
 16:12:18 +0000
From: "Yang, Fei" <fei.yang@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 1/6] drm/i915: use mock device info for creating mock
 device
Thread-Index: AQHZqQoV533goqSAM0yCrH+2ql7C56+h9pJA
Date: Thu, 29 Jun 2023 16:12:18 +0000
Message-ID: <BYAPR11MB256739279E6506909864A6649A25A@BYAPR11MB2567.namprd11.prod.outlook.com>
References: <cover.1687878757.git.jani.nikula@intel.com>
 <b0db62045a96a3fd4cf123685da88cc777f9b485.1687878757.git.jani.nikula@intel.com>
In-Reply-To: <b0db62045a96a3fd4cf123685da88cc777f9b485.1687878757.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB2567:EE_|LV3PR11MB8578:EE_
x-ms-office365-filtering-correlation-id: db2387ea-4158-4f20-d559-08db78bb9c68
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TTAyWb5mlSWrGy4x74QcO/LcRrEtNN9yd8Pwm3/4UNfpn/HIKXgQ23QyyhKIO3Sn/Vt+gqbZdKWM1bawFH7xvJkqknle6Zw0+Q4IFO3rOW1SFB0z85J32p8otNhbEpdDFMgnGYZ/0QJbtV219NvArmr1NLRfSEYSnupVMulFNG/0Sd7f8yN3zEkR0IEQNIvU+OYuRDcx2hsL8j4Cwj8igHZCV5Cv5K1p/J31Tl8B6ZDQNThFIawhn6WknXGuf0PVAP9vE/Nd3a5qceWFLh5a/0fR8yRk8jK68ZEny9gqpa5S8QhCaZvtm04D0DYTQGmSQzoV8AV2RQJOli8TdNehQBmb0nuBBqWim2TI7oC4E5eVNJ6Do9UmH+AC7Ytps/e3XkNaZCL6TbtTZJXFAWIiQ6r0S5mIhfwcWWNjkL4FJMvkVk0rt4oo4gw5Zv+YBSGKu+60ZDgRJciZBdE3f7ikaUw0xyAqa7Ml/HngYNVe07Cx68PNdo9+Phjke5easEUYegjd3LGplVcHkQ5R2mPKhHY0AwL2Xop3Az2r49pkeYcRozOmQCCtdZn5BBKahTj6FO4MIBDZQqPwsr3nAaV6dyfu52mNFRYbUdBHVY/09CA3GCBII0hZc/q8+Jl1oGVk
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2567.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(366004)(136003)(376002)(39860400002)(346002)(451199021)(2906002)(8936002)(8676002)(6506007)(316002)(76116006)(66946007)(4326008)(64756008)(66446008)(66476007)(66556008)(38070700005)(41300700001)(9686003)(186003)(26005)(7696005)(86362001)(38100700002)(83380400001)(55016003)(122000001)(82960400001)(110136005)(54906003)(52536014)(71200400001)(33656002)(5660300002)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?XHrVh1pAfUjwq1CMH3dGI8/XTHR5521RE4oRQ974LRNyRV/x9Sy0NUHbrKeY?=
 =?us-ascii?Q?DovcqTj4l/loQTDHIUbD0dcSh0U67Am9CRjVa3RE+NhGpY04VQMU/WCGITTQ?=
 =?us-ascii?Q?+1Kt1KGikjqx2/7qczYumCto8T3SlAhjS98OjbhYBgXV833kVz6CzHlX+gJR?=
 =?us-ascii?Q?fC8aWwi2IP9UGAyWG6vfobfkMZLgYEYIh/cSWzaCIeMXlYxGagmTwDh2GRFb?=
 =?us-ascii?Q?49QLNYwUXchQmnaqwpzsleV3P1DIB+p10z6FoaYVFxyEnVxOeik6v/XykMzK?=
 =?us-ascii?Q?+DlGJuWsKh7bzMQ8YeerMgb75KS0mTpbl7phwfTzGEylUuLeKk9/9JBgi3DG?=
 =?us-ascii?Q?cy1jUNACqREut96MhS8iKK07ypEocuP4ULUQqF9R6JU/1mrcY7KlfJp6zADN?=
 =?us-ascii?Q?cH9zM0TFCABLrtRnXFcI8798UPLA9FhrbbxaO3Imd3u+ZlXe9pZ8HrmoWDFR?=
 =?us-ascii?Q?Axsj5pRjQVblwSsqe+bWmzIy+w/ijOiRZYtMFi3JLV/nYE5cX/9g2Ihk5XT5?=
 =?us-ascii?Q?wcxAx9FzynZKGvhSQh68RIVEhqKt/f8meQpkH86Xvup0GgyvkWdeBB+sCuin?=
 =?us-ascii?Q?WjmV8fVCyQCmQgoY77LueScz9bhU6Zwg1gGpZhb9kj+StlZ1zsOKzAC/Nw8O?=
 =?us-ascii?Q?msiwOQagLRkGJtSaxxEiQOACnj36WHUyDS/iqTwh5orgS+VWiK0IECom0a5Q?=
 =?us-ascii?Q?NlUhwsJFslEUaWieqPlvAHVPGSkKFVMBNUlF8C1bYKJ8RFq6IElBfaqIWULQ?=
 =?us-ascii?Q?5f+EX1nRr2zT4nTqVAp7w8duG0mcRdtMEecOgzyiSGTCGbpG8bwm9EwBoC09?=
 =?us-ascii?Q?KJdXmH/Ysap3tZ3D9yzyzcTu4/o/ugk8E5sovMGhIBJpr8vyxHGRYcLgt9AE?=
 =?us-ascii?Q?JW3Xz0+6Y263irVs0vj7wulaK/uOslbyetFnEyeTDiK6OxAOUg6X4knb8uP3?=
 =?us-ascii?Q?39R/EdVn/BJMZtwAtaRNaj27uoPbLtsCGG2Vwjcf6ljYrQuoIfSQbjIkE1yi?=
 =?us-ascii?Q?cQKnCOIQSS3J8jbWgvl+PAVS07UNylQgSKPIohEq//hmRcW88xjjPf54bYDc?=
 =?us-ascii?Q?rXKvNTvrFEbKyYrRo2Yf374IZck/5K4cidDiZ2B1TjT438hSxab2p7/87N18?=
 =?us-ascii?Q?1kARWZ7/XF0JOmKPNdGsMnsZm5EHiYyKUQWI41lmupCouWnNyxDHsyheBHlC?=
 =?us-ascii?Q?RfDDmtFMqFLIdYpguiKTyaA1W+trEmGm653Xp3LpG3E9Eu8vsFVnEM5tOyFQ?=
 =?us-ascii?Q?xkyWrRoZUQA7ma+EsUy5rIx2hBLT2n2wffcr0KmiuN2wYboWEcaWA60bhAyq?=
 =?us-ascii?Q?wxbpk3XmEuoLMQvGkVvcz1xOiVfQFAeCndnpQIMoU85SZRv3x2ePKdiRBDGY?=
 =?us-ascii?Q?sfNsE5aMoJFmcLtepmeLbU9qZ+0FX6caefpxHbvXFdTd9qUmAG1JNXI8/7IU?=
 =?us-ascii?Q?wpjFTMPLcxFlib3KyMHseBobMoluHKQTWMcdvxIF+rIeiWrKdCWhftEwRuF/?=
 =?us-ascii?Q?TfbMp4J3P5driD1OQMEg4Lb+DhBkO4/hm/JpmiVVC+7aGDYiCA9XFnAoVbmq?=
 =?us-ascii?Q?FTBZ0xTY/T8S2jrt9eA=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2567.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: db2387ea-4158-4f20-d559-08db78bb9c68
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jun 2023 16:12:18.1265 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /tg5mH0G/2rYhBzKbtGeV6zgqWKjAZXnA/0gIbgeHGwUbi4GI5ArnH7376RZf9NiJwZs2ofAQao4ZEq2aqN3tg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8578
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 1/6] drm/i915: use mock device info for
 creating mock device
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
Cc: "Roper, Matthew D" <matthew.d.roper@intel.com>, "Hajda,
 Andrzej" <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> Instead of modifying the device info on the fly, use static const
> mock device info.
>
> It's not okay to modify device info at runtime; we've added separate
> runtime info for info that needs to be modified at runtime. We've
> added safeguards to device info to prevent it from being modified,
> but commit 5e352e32aec2 ("drm/i915: preparation for using PAT index")
> just cast the const away and modified it anyway. This prevents device
> info from being moved to rodata.
>
> Fixes: 5e352e32aec2 ("drm/i915: preparation for using PAT index")
> Suggested-by: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Cc: Fei Yang <fei.yang@intel.com>
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Thanks for fixing this.

Reviewed-by: Fei Yang <fei.yang@intel.com>

> ---
>  .../gpu/drm/i915/selftests/mock_gem_device.c  | 45 ++++++++++---------
>  1 file changed, 24 insertions(+), 21 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/g=
pu/drm/i915/selftests/mock_gem_device.c
> index 09d4bbcdcdbf..4de6a4e8280d 100644
> --- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> +++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> @@ -118,15 +118,31 @@ static void mock_gt_probe(struct drm_i915_private *=
i915)
>       i915->gt[0]->name =3D "Mock GT";
>  }
>
> +static const struct intel_device_info mock_info =3D {
> +     .__runtime.graphics.ip.ver =3D -1,
> +     .__runtime.page_sizes =3D (I915_GTT_PAGE_SIZE_4K |
> +                              I915_GTT_PAGE_SIZE_64K |
> +                              I915_GTT_PAGE_SIZE_2M),
> +     .__runtime.memory_regions =3D REGION_SMEM,
> +     .__runtime.platform_engine_mask =3D BIT(0),
> +
> +     /* simply use legacy cache level for mock device */
> +     .max_pat_index =3D 3,
> +     .cachelevel_to_pat =3D {
> +             [I915_CACHE_NONE]   =3D 0,
> +             [I915_CACHE_LLC]    =3D 1,
> +             [I915_CACHE_L3_LLC] =3D 2,
> +             [I915_CACHE_WT]     =3D 3,
> +     },
> +};
> +
>  struct drm_i915_private *mock_gem_device(void)  {  #if IS_ENABLED(CONFIG=
_IOMMU_API) && defined(CONFIG_INTEL_IOMMU)
>       static struct dev_iommu fake_iommu =3D { .priv =3D (void *)-1 };  #=
endif
>       struct drm_i915_private *i915;
> -     struct intel_device_info *i915_info;
>       struct pci_dev *pdev;
> -     unsigned int i;
>       int ret;
>
>       pdev =3D kzalloc(sizeof(*pdev), GFP_KERNEL); @@ -159,15 +175,18 @@ =
struct drm_i915_private *mock_gem_device(void)
>
>       pci_set_drvdata(pdev, i915);
>
> +     /* Device parameters start as a copy of module parameters. */
> +     i915_params_copy(&i915->params, &i915_modparams);
> +
> +     /* Set up device info and initial runtime info. */
> +     intel_device_info_driver_create(i915, pdev->device, &mock_info);
> +
>       dev_pm_domain_set(&pdev->dev, &pm_domain);
>       pm_runtime_enable(&pdev->dev);
>       pm_runtime_dont_use_autosuspend(&pdev->dev);
>       if (pm_runtime_enabled(&pdev->dev))
>               WARN_ON(pm_runtime_get_sync(&pdev->dev));
>
> -
> -     i915_params_copy(&i915->params, &i915_modparams);
> -
>       intel_runtime_pm_init_early(&i915->runtime_pm);
>       /* wakeref tracking has significant overhead */
>       i915->runtime_pm.no_wakeref_tracking =3D true;
> @@ -175,21 +194,6 @@ struct drm_i915_private *mock_gem_device(void)
>       /* Using the global GTT may ask questions about KMS users, so prepa=
re */
>       drm_mode_config_init(&i915->drm);
>
> -     RUNTIME_INFO(i915)->graphics.ip.ver =3D -1;
> -
> -     RUNTIME_INFO(i915)->page_sizes =3D
> -             I915_GTT_PAGE_SIZE_4K |
> -             I915_GTT_PAGE_SIZE_64K |
> -             I915_GTT_PAGE_SIZE_2M;
> -
> -     RUNTIME_INFO(i915)->memory_regions =3D REGION_SMEM;
> -
> -     /* simply use legacy cache level for mock device */
> -     i915_info =3D (struct intel_device_info *)INTEL_INFO(i915);
> -     i915_info->max_pat_index =3D 3;
> -     for (i =3D 0; i < I915_MAX_CACHE_LEVEL; i++)
> -             i915_info->cachelevel_to_pat[i] =3D i;
> -
>       intel_memory_regions_hw_probe(i915);
>
>       spin_lock_init(&i915->gpu_error.lock);
> @@ -223,7 +227,6 @@ struct drm_i915_private *mock_gem_device(void)
>       mock_init_ggtt(to_gt(i915));
>       to_gt(i915)->vm =3D i915_vm_get(&to_gt(i915)->ggtt->vm);
>
> -     RUNTIME_INFO(i915)->platform_engine_mask =3D BIT(0);
>       to_gt(i915)->info.engine_mask =3D BIT(0);
>
>       to_gt(i915)->engine[RCS0] =3D mock_engine(i915, "mock", RCS0);
> --
> 2.39.2
