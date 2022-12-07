Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D059645E29
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 16:54:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CFE310E10F;
	Wed,  7 Dec 2022 15:54:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47B9910E3DB
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Dec 2022 15:54:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670428471; x=1701964471;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=bfCnlbzzcsd6JkMWX8xQFttsBIXFipxY+WVRFDSrF8Y=;
 b=gZemphHPUVY6mXGQoabI+bHphVs1xPHHQO/7hxXTBds8nVjDyZBuFn25
 rlBBNFsNpoOZLpcyNRQzd1cgUjCJreoo54POI7vMkUemYLB38o74ixw6J
 XIWUoFmYVFoJAkZ93LudRGnmEYPUWx6075y42TRjKJlO/f3mBGXAPbqKU
 mMjp61RCdC3qpXDTMJv+7A9ypxy8BBZBKJXY/oGHiU8ilvqWVspcMKHUq
 qJDZwkR1dQpvNaTt9tEBTJlvff2kp7zercNBzB+EckQ1VT+/xWaMYAyf6
 lIipCPxZ29tAprPgdSMsBSvuC/xs1rKStgrJF3GK9vTOWZ9GVo4it8XD7 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="297277062"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="297277062"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 07:53:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="646651386"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="646651386"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga002.jf.intel.com with ESMTP; 07 Dec 2022 07:53:17 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 7 Dec 2022 07:53:17 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 7 Dec 2022 07:53:17 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 7 Dec 2022 07:53:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=POVdf60MfPQBJOP+kRuR36ci3BLeLvlEsGWK2NZCIEJmHgMsTS9AhFsFYFRAcdGhJhH3SGjPq0sBbfnTKJYXCrn05i7vv8J+c6hT9Gfh2HqhTOXram7BfkziQ4Q4bNsMqlAENhmnqdU7OSiZdDODMXzXbNRyGApTUsGodUTtWJX5bAVE0ifPWciKGt5YXfKdfgj+0+8Hy0odMNjSeapiwSmiY7cDbpSWXwaC6zgMLIoaXijMLterWa31S5J8JTxExABZ+JtPLMfMLDB8073/CnLXfntAHMG6I/yJ5oZnZ8ePWoG7AdkczYk9jpftbvqR+SazE69c0fz9Gyc2DJygOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=E2ndOA/tgbqgms0e/7gSpbwMjw+tIX1hsKumK+kzuFI=;
 b=iD4YqbkzBUX2B8NSRO0qLCeVuuHLqRJ6gROQWH/P9LkiYtqu/dDnRfEl+ddaheRH7OPwCqwM9/D3syVdPPnvwTuddKBh+vk2B2FoQrXJ0Xp/NHx/LTnR1GpRHH1GWES858kdwDEbXEfo26s6kly4xFUiikkbf262crTtFCeq+mm73tlAPfUjIrrKiM/MttRQZmD0t4LwQxATeO/8Ucmw++2LjboKT/Au1czjwoWix3dRaB64q5Z3ZSjTEu6W60wbPGrnF/FP2vYmUIRfl9d7DR1VF/afsla4PTLvkR5+z3U4vJNl3lP9GhnHlBM2QhXfi4A/0lEYP3CEm5Zaj2WwIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH8PR11MB6754.namprd11.prod.outlook.com (2603:10b6:510:1c9::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.14; Wed, 7 Dec
 2022 15:53:13 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808%9]) with mapi id 15.20.5880.014; Wed, 7 Dec 2022
 15:53:13 +0000
Date: Wed, 7 Dec 2022 10:53:10 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Y5C25k16xcEg+JRw@intel.com>
References: <cover.1670405587.git.jani.nikula@intel.com>
 <75ae3f2945912f908df2444d4f0ab97a23b89897.1670405587.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <75ae3f2945912f908df2444d4f0ab97a23b89897.1670405587.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR21CA0008.namprd21.prod.outlook.com
 (2603:10b6:a03:114::18) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH8PR11MB6754:EE_
X-MS-Office365-Filtering-Correlation-Id: 9a96ae69-92c9-4b6d-c293-08dad86b25bf
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: aPR5Ni36S+FRTg5MmLPptg1KlLYSJkN2yz1YGxcgjIviC6JatL4K5kcJrSZdJuV7VNvs1eXV2evX4YAB0lme3eL+21Sz7jGrH4jzAqkUEZ1A6eY0HnrBJ0BzccfGb95XY/Vu4PRb2PWDR7EYT8rxEMz9YtYER3dQPapINSEED+c8Vb5sAvPUiL7gXmGuuIUjAs0pf5l03ZiP1K1bNNeNiyYZfIYzsuJ/ma8UrRVXF8KGlAzkPXlSgeLD/pBw/g0Th7I9U4N1PUaQwPmYigvrQTbPKlfWq1GsfMkysLbLsTOBzQZZPtbv1N2K0w1T7AUfhkR4E0T1viZaiImW9fVmU+o0K6RgMUg99bCbtK2/Z9mERj77LRTHhnuIZwtKv9U0tc5pAuKvknWI7o84aHleyWbIFn1hhDV5JE9gVXkERTSzbYCibNF/C/k0VyTGOBNM0ZL4HCSQ1P0IT48HoU6RzYUcydQwskICmub1msCOTiX1q7oMLe09U43nMduvr83SWYWiUrss8NnJSyWsArC0Da1DdJb2/GVrBJWOD/rQdaBWpjFyGiHBp4yHxNILjcz9c+EqMcYPB7WEhQoTaCKFsf/L+Lye7MFivJqfDyu41+OoHxuelBScDxNafvBtStsnhw62mDHgFYu8I6ulmGOkBXl+EQXr3yZdUp01JE7rMxaJ0P8QR6f2GECCo5fq6ybk
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(346002)(39860400002)(136003)(376002)(366004)(451199015)(2616005)(83380400001)(26005)(86362001)(36756003)(478600001)(6636002)(316002)(37006003)(186003)(6486002)(38100700002)(82960400001)(6506007)(6512007)(6862004)(44832011)(2906002)(5660300002)(41300700001)(8676002)(66556008)(66946007)(8936002)(66476007)(4326008)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?cC1HO19a3TawxMmIIgWx/7sIKmoy+aDOt04JwVJXMgsgKsL6/KS77wJ0EaRy?=
 =?us-ascii?Q?/03+qgT0CZpM/wHehsvydWCOwjf+IMyTYRIPJPkGAFia1sE2Zgfe+Hp3iMYN?=
 =?us-ascii?Q?G0yUoGVZLA3OFXns++P/iels/uWDHSfdL9QQbYbnlP0GMkbHQvOUS4MXrpYt?=
 =?us-ascii?Q?+MQGeT4WwktDBcMdPww5metucMd4ROqWKtsq/l9qjSC5Eoj9NXWq1CyKujvI?=
 =?us-ascii?Q?tCpmOFKJEWaSDHyTI/2Y5RdVZrFW4/6W6L0cmVCjJnpqxJaPFAgJBbGHE+cO?=
 =?us-ascii?Q?l6RA+7YB6BE2YS4atZmVfslxIeNpeYGYbI1SaqD/tw22a1qWNwK2icLi2zLI?=
 =?us-ascii?Q?UKnLCLNoJvtzlDgkS79MAevQwnvPI0CdL6gAtMQ3cYagDBix857F0o+/Tvtk?=
 =?us-ascii?Q?nOO0egEYV1yxokGQkzpJHrtPXVo63+7Iw0iuNnA4k0Ro7GUPnlIe/zIGrcNx?=
 =?us-ascii?Q?UynrVH/aVDYSgC6hrHXD1UT2QxuSNoghnRfvDO0fSqyTkYe+O55r38KoocdG?=
 =?us-ascii?Q?PtixcMZFz4Pq0bBnkOINmIvozBBF0YmPphkMd94Jw+Az01iq+LyFKYq6VoKc?=
 =?us-ascii?Q?qxCigVlVLKm7EfJV76XxErO4Ugwhp6r9PlghkO7QqKOxMSdx8z6o/1DHC5zF?=
 =?us-ascii?Q?6qy+c1dQ2kanY7ZHWVwHP96uXdFaaJjLzly7jztzlcUkTLMkrr+q2NNHYmfr?=
 =?us-ascii?Q?BkPIplwu6ERVmk6HcRNnA4q5xJ1Otac1eDohGE3I5kl3t+nPgdadR/gRiq56?=
 =?us-ascii?Q?5+nOqlo80FvXpTgvvWGawc+LlR6ppRSmoUMWNw1OKR2A9B9mQfPylRmsafDF?=
 =?us-ascii?Q?ItNYH0qWgYv3xn1S7wTbAolrbiHwc5EJ9SmjAY7KcDL1uOcKWK/jyhuc6fMG?=
 =?us-ascii?Q?IiPh/j0AKlWM3vqU7CdO6mAKqIL1S/Q/Ac1RzlBHP6S0zBiKswRQ4pZkLdph?=
 =?us-ascii?Q?pHhq6AN8RjsUIIsnPp9BBlfXz2DC+Txh4hRZCG/CTfoZGRYTJSjRqXzFFyOo?=
 =?us-ascii?Q?aKzj2j6Q6ZHOcaZCaeBTnN9utO63KKwzHehwJ5XqGITxA4nznUXG4j2C1X/e?=
 =?us-ascii?Q?g7cOCNCk/zyyymYU5ryWj5MVTFUdS3UpbzRx+G2CI7UEIf9gFkdk1In6MHJW?=
 =?us-ascii?Q?eZkVW+1pHyzEQuCZTcdwq9VddcV+o+YlwQue+KXLcDcp9/5Dn95gcebBCje/?=
 =?us-ascii?Q?gk0EnBgkhti9pa1qasdbRCP9oB+f58gPdi8dKt3WVzgU597UJYMc5j3Zlp4G?=
 =?us-ascii?Q?NUSGM4q7JAti711R8FGGLMa5cpEWFXonFIk4nNjVKCj8nPl6Ihdc94vovk9K?=
 =?us-ascii?Q?lzhUYYmlXXB/G2xGnVHdsaimxyr4JHD5nral7M+mB5MFx/PXsyBB7YLAojL3?=
 =?us-ascii?Q?d2c/JaAt/nk3LR5q9iRLsNsZTQardEyVriiyWaJzIgXFD1DIunaCwlGALvk0?=
 =?us-ascii?Q?r8wqpgxUQx2lrtoSB/EO5TLgsyeY8bu/0tFB/3lKvtZ6FOO4juKakRvtwQu8?=
 =?us-ascii?Q?s8lEEmOiGh6r9WAZPugqVIDpNqaFF/NUp3m10SJFlVA55Fs11Soq2WSM+KRc?=
 =?us-ascii?Q?iH7pDC2JGrwaS/dCzUGHAUbj/qgsD4UvK+lUos8N2Sis9UKC+bFoVCxECU5L?=
 =?us-ascii?Q?Jg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a96ae69-92c9-4b6d-c293-08dad86b25bf
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Dec 2022 15:53:13.4958 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: homEOBBb03CJyaXiiAPonLfPLKD2qx5BZ88UDRiiYZ3c4otJaafkzYBbgLJVNixKLXEdEJDZ0FPXJnYXlD4ckQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6754
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 2/5] drm/i915/backlight: drop
 DISPLAY_MMIO_BASE() use from backlight registers
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 07, 2022 at 11:34:43AM +0200, Jani Nikula wrote:
> None of the remaining backlight registers that use DISPLAY_MMIO_BASE()
> are used on VLV/CHV, which are the only platforms that have non-zero
> base. Just drop the DISPLAY_MMIO_BASE() use, reducing the implicit
> dev_priv references.

Will we be able to entirely kill the display_mmio_base and the implict
references? I have the feeling we are one step closer... anything
blocking in your view?

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_backlight_regs.h | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_backlight_regs.h b/drivers/gpu/drm/i915/display/intel_backlight_regs.h
> index 02bd1f8201bf..d0cdfd631d75 100644
> --- a/drivers/gpu/drm/i915/display/intel_backlight_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_backlight_regs.h
> @@ -21,7 +21,7 @@
>  #define VLV_BLC_HIST_CTL(pipe) _MMIO_PIPE(pipe, _VLV_BLC_HIST_CTL_A, _VLV_BLC_HIST_CTL_B)
>  
>  /* Backlight control */
> -#define BLC_PWM_CTL2	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61250) /* 965+ only */
> +#define BLC_PWM_CTL2	_MMIO(0x61250) /* 965+ only */
>  #define   BLM_PWM_ENABLE		(1 << 31)
>  #define   BLM_COMBINATION_MODE		(1 << 30) /* gen4 only */
>  #define   BLM_PIPE_SELECT		(1 << 29)
> @@ -44,7 +44,7 @@
>  #define   BLM_PHASE_IN_COUNT_MASK	(0xff << 8)
>  #define   BLM_PHASE_IN_INCR_SHIFT	(0)
>  #define   BLM_PHASE_IN_INCR_MASK	(0xff << 0)
> -#define BLC_PWM_CTL	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61254)
> +#define BLC_PWM_CTL	_MMIO(0x61254)
>  /*
>   * This is the most significant 15 bits of the number of backlight cycles in a
>   * complete cycle of the modulated backlight control.
> @@ -66,7 +66,7 @@
>  #define   BACKLIGHT_DUTY_CYCLE_MASK_PNV		(0xfffe)
>  #define   BLM_POLARITY_PNV			(1 << 0) /* pnv only */
>  
> -#define BLC_HIST_CTL	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61260)
> +#define BLC_HIST_CTL	_MMIO(0x61260)
>  #define  BLM_HISTOGRAM_ENABLE			(1 << 31)
>  
>  /* New registers for PCH-split platforms. Safe where new bits show up, the
> -- 
> 2.34.1
> 
