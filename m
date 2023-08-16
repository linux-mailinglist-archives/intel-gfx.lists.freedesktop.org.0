Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4642677D710
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Aug 2023 02:25:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C98C10E2A4;
	Wed, 16 Aug 2023 00:25:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75FB510E2A4
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Aug 2023 00:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692145499; x=1723681499;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Tu6KnbE4HLxVweI/LXcniA4KArwy/02EdsddxE51a2Y=;
 b=PCvy2btVtlgAeBorJ6/bhEFLmo+qxxP//HpMzmkTdqZKERSjRyPHfsUi
 prk8uCNOpSOwCKve4rcIo2xUaf6wlRLQ03zsQXMSZhV+QG+g5cqx0mZvo
 trP0TamUBiEouONbvm1i7a7kcrgi+bnwmePdV1lVj0ClwdtZ1Q7RN9zfU
 XZpwBzifjotUALYUvwtSAZYsqtb11I7YdGeRxgh/1GjOg0lMAvAmbhudR
 sMkWVkDCI8RAxxZD0sS6P0d4iqxd8rLFyCjAoYUczfX1QoGygk/DcvH0p
 qsjpYg0SZS9qgwvQEMcZCj2yPGR6b7VnHC+ZOuGg60oMKt+0LFNnpvhca A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="369880740"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="369880740"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 17:24:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="803999661"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="803999661"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP; 15 Aug 2023 17:24:58 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 15 Aug 2023 17:24:58 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 15 Aug 2023 17:24:58 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 15 Aug 2023 17:24:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XJssbOJCJ3+DN3vyO//p3mCxGZxr0q2GW9pQJRK2WUe003Hf9Ujq1CM4LrCgtjkQ/wSfHv814xuq8F6STcKe9E17/EbtNb7fD4Ed21R+DQykCyMO/lDLj+3lY5kUIejgoNT7/6f//jJtpC7WzHODuEDf9lXY6Fdcu7c65w13MIuuoeD/vlxLxXdHMBHD15/NDQh1VVp+mfB+Gsh0zhveffcPD4AaoSNTQ+i8EG7kXC0AyTJkNJmD1EI80f0Erus9+C8hOx/zrmu9Rsfr1fAjWYx+ZErHiYP95vqRy2Wxgm/U34Edhu8BPr3yVpupFJwckwrgml/roNsghSnMS9sqIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ATh6gkoDmPcCUcG6ww4AD4zTibtReT3rCL4KZ217UFE=;
 b=csuc55lUUF/zFTzpu9Cv451NhRfUxfmQSR81uryFOV/tSL9uqMchktuK0080UZqKL8YkCk2WC4ZLBgdGiemwzgcRCOkJab5vh4kfNaOHLfv9+Nhu5CC7eclBh1Wi0YXjw+RHLgOCRSLtPkT1gEJfUXhr79akJcXFpVS6UcM/i+exxor9d65cW/w2M7YP2t6yA6H1cwGxpgZBobj02qkh/BBo56IAqez0Sd6n453gBZjT1N8LIKdPWCBmYqzFkrmIViyOAI9n5n6Bu8Z6SPwu5ZywpWfMTjuS3FM5nkz160cyEdjBwsbe+Urr/t2jr+1FyzFOwgonwWJWJPLEJEkhoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 PH7PR11MB5818.namprd11.prod.outlook.com (2603:10b6:510:132::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.26; Wed, 16 Aug
 2023 00:24:56 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41%5]) with mapi id 15.20.6678.025; Wed, 16 Aug 2023
 00:24:55 +0000
Date: Tue, 15 Aug 2023 17:24:52 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Message-ID: <20230816002452.GP209733@mdroper-desk1.amr.corp.intel.com>
References: <20230815201344.298573-1-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230815201344.298573-1-gustavo.sousa@intel.com>
X-ClientProxiedBy: BYAPR01CA0018.prod.exchangelabs.com (2603:10b6:a02:80::31)
 To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|PH7PR11MB5818:EE_
X-MS-Office365-Filtering-Correlation-Id: 7dd48df9-ec00-4c61-64d0-08db9def3754
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7EASOqxDqOZG/ap2QwffYmO6TfWtA3SZPPQ8t9kLaDPwb1r7kuTclUjrQJFYlHqHcdRuWKQvyhP1hFUTHlxDouP9Bo/ck4i2892FGFzgF1PHQeHw6P6jrdoci2N6o5qaxyh6Nbxwz003B8B/ftwbDdjAPX18XbE4D66HS768KbOUCw0weB/58XJkE2c1+qIMHMOHPk2ditfBzXRdrRMesxWg+UttMr48Y7Zvm/emdcdWnJ93XDUICb3fiQGkYiAFFjvW7b2lZPzyujr3RLW35MuYEMbm6preVy4KMo5X5U51nTpvxbgrzNfGbrBLAlCvZAZbTQ/YmnBf/KiylNlRCwOsGkYiNWGAyWx+otnvC8QyI/rSTyPoyb4utYgKLSfdwhQjoYvCtM+KrVDYmaiYw4oUy+ZY6D2SuZl18+pv5bHGug9ApF1WtpaSpRkR/ArH+5g3N5t7Psz+zn0zTclI2EowWcpsXjrIuT3cIi+tMSzccCdh6jLB9lzc/n0Uj0DJKb+8PqzGnz/cKK0Gje3Y/mU8Gr+5RyZ1FgDbSHLak6VvlWuh7mtddojJOnp+91WG
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(376002)(346002)(39860400002)(136003)(396003)(451199024)(186009)(1800799009)(478600001)(86362001)(6486002)(82960400001)(6506007)(66476007)(5660300002)(66556008)(66946007)(6636002)(316002)(41300700001)(26005)(6666004)(33656002)(38100700002)(83380400001)(1076003)(4326008)(6862004)(2906002)(8936002)(8676002)(6512007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?XuZ6Ejq5QgEV4SQFdDHSYsFJBj2zjPtrfqMdrWU4wSlqvIFRyNKgvAP5yIq0?=
 =?us-ascii?Q?n8OjVSEKgF5TW1p0nCzGSVVUrZqUJiTCqy9XrH1BOg1WJTV4dA2J5sreVQUL?=
 =?us-ascii?Q?xW1cMzHRuFLUdyAVw4x+7RY9mAP9fA8qITGcGejd0W0YfeoMo9xU8jCCySZV?=
 =?us-ascii?Q?5DgdqeiP/UMwLZEeJAfKkEF7xguqYfZnxyBlncK7Dt7QVK8vkSwHSskf65Tx?=
 =?us-ascii?Q?j61805YS5OeW4j5KPJg1owhfY3ohlgoaXF53TIHQIppMbRT9UXffAfwIUyDG?=
 =?us-ascii?Q?SXF7I3N/DSNcIDLtfxEYYe2OEqF/xakMErwUDRTQ+/N1nP9DTaxttv8gFrCn?=
 =?us-ascii?Q?xqreM5OjYK4QGZ8QPZ7WTdbEGE5hoVO2DEhnK1SnYGB/jfujJivMq4PfLQM5?=
 =?us-ascii?Q?pnb1fdaFdLusxi4chyIeaZ1o9z1wgCWtLZY0tDi+t+iA0B3OkR9NcObZqxxd?=
 =?us-ascii?Q?O8rGod+t7ZE1qRVJRJQrVHU7BBDC0SAQqQnndsC+a0OhWJccHvaCXkrNMRqy?=
 =?us-ascii?Q?24v0K+KEVYXKTyaFyZzNdAasN8ITErmKfezTH74go7pKvU+USIGfU0kLW9Gm?=
 =?us-ascii?Q?siPpAY9bTs8H3NVZVUQo6VAbfipCD98dwAijwMpyqxTLKp5VwpmY0BhMC53Z?=
 =?us-ascii?Q?kVBZndWXJtIc8uja79zaduz2ut+sFzVuVWFKxpyG7O5KP+RXNKlg+Tq5eI8/?=
 =?us-ascii?Q?A2DBASrJOAcAUqCSJgcDqJOURcd9ItuMYVDGGB3gw2teEWUSRvFfPQZvdQDF?=
 =?us-ascii?Q?plmteUBnpwWjCB+zJrBFUGY8Z+mq+Kz1jEC/lnE2k5qDyxwUUK46BbUDyT14?=
 =?us-ascii?Q?zSOgZLVSIYy4Y3cvm7OtHac/MO50ahTsD9oZbl++Uyujdk77wfB0w508UfCI?=
 =?us-ascii?Q?hz6HzFUm5M1voj54n5NnO/LZsDyM7qiIniPAI8/7wNymUq7cM1Dx/2jDmpcn?=
 =?us-ascii?Q?LPFK20caln1F4qcRuganeQoNC3WlDFLr+bV2VjUjV68pEhVOJ1J0RvLf8vrp?=
 =?us-ascii?Q?PV3v4qQy4e/a5vQlj+LAsoAyoAdLy/xVyuR7l/NhxWBE7p0r9pkcf9kpoyPE?=
 =?us-ascii?Q?ijHC6Yoj0rnLAAC4na/L2nHbkujraPvNAKn1MnWWdOnWu3I5zjAGdaMqZWfq?=
 =?us-ascii?Q?y6OcduNVe+ltzlXX+94COztht2k+qhGugpthszA039CfzUw7VogMCTgQQJOX?=
 =?us-ascii?Q?sEDJsybifrw05s7/x7luzylnbBB+hBd46EDJTvCvQatOXLdJtGMHDtZd86oi?=
 =?us-ascii?Q?9GN8GrRcfeu2Rrc/n4rdM5QRqQwNHWGiWaEQnUTgJ3lffj6vAg0PQWrr3JJi?=
 =?us-ascii?Q?Jgch2cbFY7NAnj3tADN7ja4u1gup1r+ioO/+01a2oXVkWEF8mv9kCcczC00K?=
 =?us-ascii?Q?CGiZ/6vzPmxVUx9NFCxFoJu1NwLaGVsrY+/4wdVJcTfylNe3HOUlVC2swQ3l?=
 =?us-ascii?Q?8/WcWwI/x9C2Pf2Um5eVyD2AoZwbvT0Rd8LEpudGlgCxPm1Gh9X8aBvOJeNC?=
 =?us-ascii?Q?hzcoEeMchM/+rKNSqk/dXe4yQvtJYDXO1q9IzcRyObVmw0aTKR0se50C9FyF?=
 =?us-ascii?Q?+yVWmoAUVv3zH0rBUmGON2YXpyFZhWDrRkZM9weGrkw0/KAe/UPhF5MTvHHl?=
 =?us-ascii?Q?KA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7dd48df9-ec00-4c61-64d0-08db9def3754
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Aug 2023 00:24:55.5953 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ts/DQIdDtEkJqx3iZj1WYt+5cok//RkqYdSUEGxfp/Teu01PF5x8k3fHuLRnSBFkR0+0FEKU5+T3qFAbp4e3c8a8oqBoQSp3EDxNLZHbrCI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5818
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Remove unused
 POWER_DOMAIN_MASK
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

On Tue, Aug 15, 2023 at 05:13:44PM -0300, Gustavo Sousa wrote:
> That macro became unused with commit 323286c81245 ("drm/i915: Move the
> power domain->well mappings to intel_display_power_map.c").
> 
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 9e01054c2430..71d70bd9fd82 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -338,8 +338,6 @@ void intel_display_power_set_target_dc_state(struct drm_i915_private *dev_priv,
>  	mutex_unlock(&power_domains->lock);
>  }
>  
> -#define POWER_DOMAIN_MASK (GENMASK_ULL(POWER_DOMAIN_NUM - 1, 0))
> -
>  static void __async_put_domains_mask(struct i915_power_domains *power_domains,
>  				     struct intel_power_domain_mask *mask)
>  {
> -- 
> 2.41.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
