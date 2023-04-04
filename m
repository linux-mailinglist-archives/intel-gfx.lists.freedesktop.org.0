Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBA786D6C07
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Apr 2023 20:29:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AB3710E748;
	Tue,  4 Apr 2023 18:29:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E9E110E748
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Apr 2023 18:29:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680632973; x=1712168973;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=q4syyZAMvlpphOpBrWDdMZtKjWaWdlzHwTNnBgwvq4k=;
 b=DmnWZSWNlnLAwXaAHllTBw9sSNlUwRmJdnqX191xLMs+7CVfO3Q4ZIK1
 P+7Tx9kEFxhvBus1gQVg5gkr4GjUAOuNiM4gUZi/ES4hjO52Dxda0ZHVA
 53q471XlG94HCcnXIsextDwuppwwG+0tyQ5/pdI34hG1NrYk9tbz8goA2
 8pvkhI/HvrdMwAR0LDb3JTU0hNcfPCp1LW6KojDNifb0oHh2/zOT4SLdW
 4pS0ymqo4ech6j/oZ8CkzwigSJVOiV2YX5KDyDSjeuPPbKfJsp4rO+B0v
 E6CpC6gMWpl7iPT4cMzJTNrDROx8c3WB/ecj3T5llPi9qNTFuTSxNR1pD A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="405039309"
X-IronPort-AV: E=Sophos;i="5.98,318,1673942400"; d="scan'208";a="405039309"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 11:29:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="860692395"
X-IronPort-AV: E=Sophos;i="5.98,318,1673942400"; d="scan'208";a="860692395"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP; 04 Apr 2023 11:29:31 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 4 Apr 2023 11:29:31 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 4 Apr 2023 11:29:31 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.170)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 4 Apr 2023 11:29:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JRwiN8Zli1HxxjRsgrk8sVP9xN1HTvn/YDO2ZRbAMCqG5V5U6i91dgvtlGE9BcUJZcIF7WYHz+lHqGekK4jyc9QIdl/UsVla51JkMiHwURRor6YKNbB3H3MsnkYi0W3Vs7VGEQdNDrZl6gAvYe05HjYUI7jSisl7g2b+vA+g820qKS9fUcm2iN5PaBaDqLyT7St3R/fgUakGmC3qxBjRIy61K0iU0KrCQyFiY6RH0UiIslI1FIwnw1Hgo2iy9W6VD4ybyfcK+dJk02EJh86J8NWtDh1fN+sOkW6APDNVirBfgYMAcF6ytZlbz4uk+FaHMfnmSRswkOXT5259+jCrKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WW/DmGR/hEI1+TDxJYGdWmHPlUKvw1lkVVC+FtmtSds=;
 b=IGCeJlzZNh9S/Ckbch4Bvoyrb8tNNo51TXwJGD7m6E34UiFAxHHIFXJ1Rfmtc2il6uxrYvbgoNJ4yT+tVHDnPq5fUZFmTp+pEbtL7DsgTKGK6j5jO5j9ntHj+ToAvgJdrqxptSBBBPNYDzYIg+6xdZegRVbMav1KoJ6QW7cyZJUbfcr23ZkIZQdk1GCLQJnbLgIf9/SOrp+562pfRbzLsdBfOz/5YB82fN63swELj+6BRYYnsq2Q97wUDdehfYOD6N5Q/bU1Vfwh0PqlzMd3NzkME/p+8qagkepvgI5+3Jv4rE797tjYPeyP6ZbPhkbb/vWPZOU157x86WGU7OLAFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by CY8PR11MB7193.namprd11.prod.outlook.com (2603:10b6:930:91::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.33; Tue, 4 Apr
 2023 18:29:23 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::9e31:fa24:17e3:a69a]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::9e31:fa24:17e3:a69a%3]) with mapi id 15.20.6254.033; Tue, 4 Apr 2023
 18:29:23 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20230404173220.3175577-1-haridhar.kalvala@intel.com>
References: <20230404173220.3175577-1-haridhar.kalvala@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Haridhar Kalvala <haridhar.kalvala@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Tue, 4 Apr 2023 15:29:15 -0300
Message-ID: <168063295542.5056.8712357609960573647@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR13CA0021.namprd13.prod.outlook.com
 (2603:10b6:a03:2c0::26) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|CY8PR11MB7193:EE_
X-MS-Office365-Filtering-Correlation-Id: eb5febd6-61c5-49c7-bfa0-08db353a8353
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qd4FmY2u3sZX5CUOpBet7EuQUxe//ssNTVl1rRPRZ8gl4raauSRB8lXipHcgf81HXt22k29IN6e5Q0LsWLj0SaUBBR7oJIJE0goeumOX3S/ImBv4iOL9Ju5lkF0fxL0EXp19Q7oVus62ZlZ9yKVp+DTIYFGMbynOXNqsVJnzNu3DXYCdsQ04sIKJGqcciluUJLgYmf65u8TIHPVJBV7ZebgcOQdypKspNH7rwOhLf+4mrSNLBjP6dlFdneyh4Jc9wZCuI+sX2Y7v2pRgTM3+WrFrWBKYu2fIqtWRTAIvPLyjsleuHMDIO16+J/Vqf/J7lT1j+2c8un/IhNYZDCFC4fkuQ4aJgcgWB5+sJzs8DkhYsO32ukm9kwgHtC0Ct5BrM73TsBmHxpTuUg3yggbspIM1t7JXzFMI1Emi7uJ8ZgcywVuwqFAs4tCKZspV4JRtw0JKv+B7mPgT2jljkoajmEul/4CoacDKxDAoCSEuZOI4CEhpJkDasnIuOZUuUmE04WNc00d0QK1dlL+9WMlQTQJZH+AQD22RnZYUCPMMp8d/b0dX4raZfJ9vLxGjiDwI
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(396003)(39860400002)(376002)(346002)(136003)(366004)(451199021)(2906002)(44832011)(38100700002)(5660300002)(66556008)(66476007)(82960400001)(8936002)(66946007)(4326008)(41300700001)(8676002)(316002)(478600001)(86362001)(6512007)(33716001)(186003)(9686003)(6506007)(26005)(107886003)(6666004)(6486002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bGRUaTlWdEk1U3hYMW5lMG1RYXgxK3REa2syRnFuejAwZjdOdFk4U3FDSGNC?=
 =?utf-8?B?a3BRbDA1NWJyeFFSdE4yampFUUM1czloTWl0bThnZWlBdGE4Z2Vjb0lBVCtr?=
 =?utf-8?B?UURkeDlTaG0vVVRvQ0t0ak1zMm9XY0V1UU9ZNW9ac1lhQmF3R3pDQjBjT21R?=
 =?utf-8?B?ckEzcWRON3Z2eUVVbUl3OXJkaTJyNStoeVIzak9STndRclpzUStwSzJqcFJt?=
 =?utf-8?B?cG9xUS9Yd2Q2R0dLRlpTcElDZ292ODVBcGtaWVJaOFlnRlN0eDRmMzgwb1VG?=
 =?utf-8?B?c0FhV3pYWGZaNTFaNFQzcWZGSXo4TitRbFV4eDF5RG5MaFJnVTFLZmtjTFNz?=
 =?utf-8?B?ZktZT0VkUGxOcmFmZmYzdmEreDZnVEh0NGpLS0xlWExuQm52MVQxRnZuWVdy?=
 =?utf-8?B?OE9UZ3daWUNlZTJ0Rzd2L0pjR3ZVMW0vdkoxaFgxeVJHYWNjQ2RFRDZQR1ZK?=
 =?utf-8?B?UGlGSWhFelZpVDIxelBWL2xsMWk1eVZTaDNNMys2eDdhVS9tRXNvb2RQcEk3?=
 =?utf-8?B?OUNtRUlHMjJUMWhVNUxGTFgyaTBrelBqNzNzcjJ6L3J3RDMzQjNlZ3BtQXFE?=
 =?utf-8?B?dFhIam1wcXpwemNuZHRTSkRsWmdUU0JjQ2hXK096Z0VxdEpUS1l3WlJlMmg1?=
 =?utf-8?B?RERja1IyaEFaWXdEWTQ3WXc2WXlOSjRBOU9hTnZiWDZpWUQ2NExpWlUyd2Vz?=
 =?utf-8?B?ZnFVaWVUUm1MMjZGQzV4MGRQcTA4OE9EM0Eva21CSTFIVE9mcDdUZER1UzFp?=
 =?utf-8?B?d2YveTFBTDRHeUJvVTdJNUc3MEpORG1jWlJNNmczTitSR0U0MmdHbExrQXFj?=
 =?utf-8?B?Kzh5cXhBaEE2aUNRVUt4eEt5VFNrcnVmZWdwTm5iL0tLRDVnbzBRZEJJeTVh?=
 =?utf-8?B?Vm1vUjFja0FoaEV6Y0RsaTdmY09kanNiNXpsL3BnVXllS0RGSFppb1pCRXZT?=
 =?utf-8?B?NENKZDh0TEozTXJLY01aT3RaOWZhdzZIZjlIaWZsdTVoSFhybWorRko5eERp?=
 =?utf-8?B?M0Z3UUtyaWJVVGtoMTVSSUZnaXZUanJFbzY2V0VZS1B1N1diQW5XR2NIT1My?=
 =?utf-8?B?UGVMQWNLWEVybktsNmxINVFPLzJJV3pHVTNJOFVLY0daWEtQYktIL2I1YzZB?=
 =?utf-8?B?clF0dnV5dUpOSUQ2QmpUTkM4TEFNYkF3Z2ZESHluWHExRFJiZlB1QTkwYWwz?=
 =?utf-8?B?Z0cwdm9QTUNzVkpvalh0S2pURFFBd3V2WnM1RkpYeDJSWENaa29TRWk2aTJV?=
 =?utf-8?B?aW81Y29makMwTUtNYXVxS1daY1ZsWFdia2Y1MC9SL3B2b2tGeHQyRy9qcSt0?=
 =?utf-8?B?WktuZ3J1QXpsMkVyUXkxd2p5UUJTbWlJQjRSUzFJZ2l2Um5pT2lGM2dXeUtQ?=
 =?utf-8?B?WGZCSHU5c0FTUUZEZGR0Sk8rcmF6cWorbDdPTm1ycjdvMkRFU0VIWk4yUytO?=
 =?utf-8?B?VC9rWEZUZTJHUUNPdldnQzZPeGoxNk8zQmlIVnFtU0N3WGtESFowTDVBTS9R?=
 =?utf-8?B?MXlndnlqSWlLQlF5MDVhc3FvaldseDJmaDdXODViUE53d0JqOVVtL3duSlY0?=
 =?utf-8?B?S3NjMnVCQURMNTRObFJXcG50RzNZdVVwemlIQ01ZeVRwV09TMGNvUzRnVkhJ?=
 =?utf-8?B?MXRDR1pzVXNNVldNODJjM1dEc0NONjIwV29pMEwwMW1qbTBPbUx5NGJ5Y0Vy?=
 =?utf-8?B?SWwwbzdQUmVlT3E2RGJjdWZqbTdUSi9UWUEwZ2VFOGVic0xaNTArTWNRZXll?=
 =?utf-8?B?N0xXYkhmU3czVmJxbDlOU00yNThLdGNRaXJmZFc1a05CNjhwbjdEajBxa0J0?=
 =?utf-8?B?ck9xVThRa2J0YW55MDV6Z1RrdFJhdzNoUitDeFVMUXdvc2hIdmttYjlCL3lx?=
 =?utf-8?B?WkNyWE5GU2g3ckhGYmJVQ2RNWko4Sm1vNU9PR091WEd5aWJGNDcxMFVsRmJ6?=
 =?utf-8?B?SXNEWXJsSFZXTEY5d3FNTzAyWGt5c2llaTR5MHIxZHV4QlZ4b0prTmVwaVc4?=
 =?utf-8?B?V0dCbHdkdGttNnp0VkRTWmdXNzBLQ3dTL0ZmcHJmSTErYU1od2FoTzlBSlRu?=
 =?utf-8?B?c0t2YTFYUkcrUGJ0YUlxRmIydXhGVWJ1bWI5YzhnTjVCSUcrbGxRSmVGd3pl?=
 =?utf-8?B?Q1diTUFaZHo1WUhXdkw5d09VNmFkWGhiV3NXNnhXTE1kN2YvZDgwenBGeHJL?=
 =?utf-8?B?c0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: eb5febd6-61c5-49c7-bfa0-08db353a8353
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Apr 2023 18:29:23.1968 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7FNcpj2CRjgxHvfKhsmX6Fl3/j2MwhRBY03O9u1u5alKAPzp7vV3oyxzHVl7nFGZujSj3jcj8UX1R9sx9ummJw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7193
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Add Wa_14017856879
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
Cc: matthew.d.roper@intel.com, balasubramani.vivekanandan@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Haridhar Kalvala (2023-04-04 14:32:20)
> Wa_14017856879 implementation for mtl.
>=20
> Bspec: 46046
>=20
> Signed-off-by: Haridhar Kalvala <haridhar.kalvala@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 2 ++
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 5 +++++
>  2 files changed, 7 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i9=
15/gt/intel_gt_regs.h
> index 35a4cfac2d20..492b3de6678d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -1177,7 +1177,9 @@
>  #define   THREAD_EX_ARB_MODE_RR_AFTER_DEP      REG_FIELD_PREP(THREAD_EX_=
ARB_MODE, 0x2)
> =20
>  #define HSW_ROW_CHICKEN3                       _MMIO(0xe49c)
> +#define GEN9_ROW_CHICKEN3                      MCR_REG(0xe49c)
>  #define   HSW_ROW_CHICKEN3_L3_GLOBAL_ATOMICS_DISABLE   (1 << 6)
> +#define   MTL_DISABLE_FIX_FOR_EOT_FLUSH                REG_BIT(9)
> =20
>  #define GEN8_ROW_CHICKEN                       MCR_REG(0xe4f0)
>  #define   FLOW_CONTROL_ENABLE                  REG_BIT(15)
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/dr=
m/i915/gt/intel_workarounds.c
> index 1c8e0e91a2fe..6ea453ddd011 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -2971,6 +2971,11 @@ general_render_compute_wa_init(struct intel_engine=
_cs *engine, struct i915_wa_li
> =20
>         add_render_compute_tuning_settings(i915, wal);
> =20
> +       if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_B0, STEP_FOREVER) ||
> +           IS_MTL_GRAPHICS_STEP(i915, P, STEP_B0, STEP_FOREVER))
> +               /* Wa_14017856879 */
> +               wa_mcr_masked_en(wal, GEN9_ROW_CHICKEN3, MTL_DISABLE_FIX_=
FOR_EOT_FLUSH);
> +
>         if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>             IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
>                 /*
> --=20
> 2.25.1
>
