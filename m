Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 735938FF1BE
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 18:11:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7887B10E9F7;
	Thu,  6 Jun 2024 16:10:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h/2a0yxp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 849A410E9FB
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 16:10:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717690257; x=1749226257;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=GTZnoKp4yoMI/pWRA960BOpuSuUjPG3Done2VfuwKYE=;
 b=h/2a0yxpYxqFl7/IBoKwYIFQ8Zi7o4/iDW0V6F5YLfBJEG6owmIZmCxe
 whoipI8sHasjew5RTdnhS0ZvNrOdYmn8QB6iPR58729sf223mb4a4jMew
 i4hjuQ8ti7UAd4WuoCxl43WYNTMlR4v7JaBbXlAXLOnJ9E4i8qPOHZeDr
 gQiq0xt/QXCDTiMwehX3b3HKT2RCLC+0Bzl9vhyoXzfiq+WJH8/pw0dI7
 JXk9Vyj6LDxahRSamBsxK4sI/MVA2tEETD3hEuYBOIM3upm99v9HgQ0A3
 tyB6RzfsxgsSlH2GnwXiRTXDcjAp/o690xi9rBZ9oXAGttNtJPXosA6qi A==;
X-CSE-ConnectionGUID: yINKFh5WSMyu6NP3n4T32w==
X-CSE-MsgGUID: s+nR89ZWR36zQjpVmTi/Zg==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14493054"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14493054"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 09:10:57 -0700
X-CSE-ConnectionGUID: yr4FaFYbQrq69IjWDgDb2w==
X-CSE-MsgGUID: NFyCh1Z9RCaHpMnBPULg2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="42944531"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 09:10:56 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 09:10:55 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 09:10:55 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 09:10:55 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 09:10:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CaJR5AWzDpKBKNjsyknDkjEyeiKaWXYjYxrxcvmBOz/BM0VnxPFBhZId7ZG51ImA5S+sEVEZOZkhIGjLioPxI4h2IxYdaIctGLDL2iLmHpzdWTDiBSKKjyEijIMQqL4E4XAVHnaT4+9rj/ON91N5ygtpSM9PzYChwNrwvir3Ipax2tNFvIgpAN3cPJURnphMA23g0QNkiYU7bBCNIiDKnQZfQgF7hksakDCDvutaSOVg6tXfPE7ThXiogoMeIKv3N5WhQhNA8ip47nhDLIfA4m5VmKEp24OQU54fWgX1FFKQu6z/F1hQQH1NhcUJ4iCuiI97EnzEeOEPtXiO/mccew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XSwGMd0ejGh6tmrArYuRCIt5Bs7AWPSdTGZmSSGF92Q=;
 b=LFVCBUiY0ocONkcYZk/2t3o3djpCBqayMrp2NHv4R40kCYjtaCdK0ftdbjlRa8TK1EVNULO265J9sj7o+1usZ2coofaMOXmVvjlQmtJSHEtRE7r9ergzY9ditEdXPI55+E98HytG7uem0T9EFBbqYNbvMFUPs8RzeWFNJJQk8Cy6HFvNX8cftrM6MheeoD8e/xFYwRPMKkCEOrn78x9FimeESirZuwV4SgHJGspFWKfBnLWy5vZR1Z9wWCirJXAKR2IU1/X920UjA1lt9yuKdyBwSwifr0e+PoTyKebUlly9QE1zlnI+qSdZLugKC0Zl+rD2hJ7gBDhfA9b+jpWpAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by CO1PR11MB5172.namprd11.prod.outlook.com (2603:10b6:303:6c::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.34; Thu, 6 Jun
 2024 16:10:54 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 16:10:53 +0000
Date: Thu, 6 Jun 2024 12:10:52 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 49/65] drm/i915: pass dev_priv explicitly to _DSPBSURFLIVE
Message-ID: <ZmHfjKI9seDji9Za@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <5f05ab9ecfb07c8261c8b5ddea3472259ee1a788.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <5f05ab9ecfb07c8261c8b5ddea3472259ee1a788.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0046.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::21) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|CO1PR11MB5172:EE_
X-MS-Office365-Filtering-Correlation-Id: ac1a8817-0e59-42b0-beae-08dc86433dc7
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Aqu4dIcT8t2MyjT7uqyi5gHmZNPZ8Yh7+jyDE3upjVmDIQCynpBrMdo5jxKV?=
 =?us-ascii?Q?288CUOfG9lLwDJP6EEpIrhopHsUoefu5jCR1xyKM5NI90S0dFB3LOdMWMmSV?=
 =?us-ascii?Q?f2vrnjFHGZg2zLVh7JaLWN8vf6W7gIbeCVaUESF8Nr5/ttXTYSZRAkMML0xo?=
 =?us-ascii?Q?FRbsUZm3lSjCyOKrE7BOTowW4Sou0Gl2ifAcjtiTWg/3QXm8Y8C10GK96U0F?=
 =?us-ascii?Q?q/9NOrG0FK5CvX2KTs6iX512porfNxI6ZsgU4zvbk36Ag2QbbHV1Bw5WlRHY?=
 =?us-ascii?Q?9a7Rjdi0F/cxMDuIYmsH8r1MZt7rvuPI29ln1oxWOEPKM96hM43C95TI+BGP?=
 =?us-ascii?Q?UFWZY/reGf11opfeX/YHyX/CcuvFEMQWtXLmCYo/R4q0S9785uvYJtRsnvLV?=
 =?us-ascii?Q?9m8MeAyuSgVtIwNFOk3wjfs+B4RWYf1GI3Ig9GybD8EF4nsygENY8hI5AWaC?=
 =?us-ascii?Q?DUXUBuZKmFhkuEcavuFry/4q221XpkFNwpxCUuxn9s2AwLj3R1qWbvAQR54C?=
 =?us-ascii?Q?FBgfXvJzsBLQkSZWorVqM6WkmjHWQqrmC6S8P6DD+6bXvFqiRDu/0voxaoVH?=
 =?us-ascii?Q?Oa/vT6rRdTZId5EPHcKyJLzIgaN9/tNzdd0PucxP+yFNO9hm25yNmB9CE7Wg?=
 =?us-ascii?Q?Gr/j8ZHnxt37ZgYlX96B2+0JTmLN/zTJS9utdFzTGoT/v27dfKYWkvvG6kjj?=
 =?us-ascii?Q?DTerNRfDsPBc4TcmnFIuW14nTTGiDMMc2dCth+T1u6uGkahgd2ebOLw1ViVn?=
 =?us-ascii?Q?Kmh/oncDtzjIwIpWzIZp0C5VN64EHutFmhZXKYdiDdxu6fpQjKuBWt+DrPRt?=
 =?us-ascii?Q?7sGbdZY2fkf5sTKRmtc8NdQNqWMefDy0DJ1Ufped9oN1K2i9qy8s0daVB1BJ?=
 =?us-ascii?Q?cpJrTRIh9AZBr5ZzUa+vu83r6QF6d+YYR7XjNkzSRVCwaJ1hEwyKvqjZnozz?=
 =?us-ascii?Q?tEhCKEyPdnLJtya1bPJ8SnrXlu4nOAfl+EhNTLZqMyCng8iuJZ/59XoVH/HN?=
 =?us-ascii?Q?ZKh9/9cyr0q1jrYuHddZK/8nJrMQ8ncR5XmF1H4xnJYZrnHaa0GvHnm932Yp?=
 =?us-ascii?Q?OyFmkkgKt82wS3BIoMMKe31B4cCgbVYVXwPhRX+JknJZJctcFR9Hm9rW6lEM?=
 =?us-ascii?Q?UicUc20TdLqfPpAwXptGbHKYtI5LwJfP0+MZcCGGZymCcM7mUqjCj+Wz15wH?=
 =?us-ascii?Q?iv7EUKep1pZjuDZ0YwwdqBuvU2YxjDpw0K2EEKPaJLbA++U1AAkimQDOiaMB?=
 =?us-ascii?Q?OT/JXZFMKmnSbfxXjY9N6wkAsn4Rh2AZUNln8emvl6uoyEzrxLmFOihNSbla?=
 =?us-ascii?Q?U8CcjvrdExGuLBKXCq3GGcMX?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?AKxsuAP94VdlKHvN0V2W8x+wxsew6rW/LDDjmkB+Od2wXhCfaqf/EK30wjL9?=
 =?us-ascii?Q?2N22iEg1CNqQ1K9azpa7YLPO9rfNcE7vnK1SL48Gs1QDWNrtToeHy13X0+OM?=
 =?us-ascii?Q?pdehAMDX/9uBciutJdIJK2rxycQHCqO44XEPslq5uvyh2kOSukjvoUG/iqfX?=
 =?us-ascii?Q?78CXTY7v6xXlD+LlbGKxQGFC3OZyHeMdWVCXyaw6zQ4eo8pzkLGaWZHmJFc9?=
 =?us-ascii?Q?7YaZYn1pkoHIV37dggt5LT5Z6griMJWsZNRScPnxT1PJCCM06vckHEiuTORC?=
 =?us-ascii?Q?QMh+jN3KYv0rvBYmuRahyfEp6GCZYwALp4TnSzKL+NBpIXE9OJ0JJcAP4iFj?=
 =?us-ascii?Q?tM3bk8A5XMCMsAYJPSR0OqfezJToy6PZpbXsxmKcqJ9f3/SjycVNHyuybVr0?=
 =?us-ascii?Q?rgA4Pv37QgybcejcuFV8c0W6cVceSrhSDumZweAJ+lDItG/OUsyg2pHsez4z?=
 =?us-ascii?Q?Z6XxPOZPe2UasVKPRuM00S0m3sS0ocGULIGpgtC7fw9+GbJnyMojOEBOSSMf?=
 =?us-ascii?Q?3AKPqR7J6UpBik3TETezOB1Ihp5sBdDhze391knKcQGMbG09osxTtrYm/t/N?=
 =?us-ascii?Q?4gZI4ApHCcM/es2cdcaLjJmn5YvJWw771+ET4nKUVXGWNncA+VpJkpp6dw2T?=
 =?us-ascii?Q?9hlUIZwBS9vS8A5uScGrLcqekMpvbb9xtRLKWGxlJiFSZiQj74db7hRJO9AB?=
 =?us-ascii?Q?efyK3UaKvVqRLj/xrgX6YTGmgDFWSgUn3fx5wDvrkQWf9FxeAwtub+Z1+YlV?=
 =?us-ascii?Q?s8Ho0AoGFM8BmNeQxqTYFywkyyxraiufrMrHfEhQFgxI6l7b8wLqTZXHDyZ9?=
 =?us-ascii?Q?H2KKU7hHOFL0/NjCnxSwtKz9Evl6mpoE2kO8CLkkbqhe+DHbLH6DiNgoARWj?=
 =?us-ascii?Q?XnHDgUvlLodQ8NVQYhGqWzwHePFzc/LHmp3LWzwhFK2FWs9rODc9zLAUvSYs?=
 =?us-ascii?Q?zFvsiQCOA21tEN9NPfozueD+ipSkEDvPsimPrhBtDa2zZ9BXjW6UXQIjimXA?=
 =?us-ascii?Q?O+rcNqZztNVo6CJeOzvdnhA3+Ur3jnEjfM4Ln9xup5hHRLQKXBmyK0pUOc5y?=
 =?us-ascii?Q?8iKVw7i4mUE5WpgS3yknaRKjK2l2bf9aOVdrwD6gQphfQdbH/eM1aymNuFUb?=
 =?us-ascii?Q?V50XQP7+H6h5Rl07cZZ0kRFmilpr68TOjP83YLzDWsy9op4pmCPDkTzHowVA?=
 =?us-ascii?Q?F45+mP3FNgNwZLY7ay8P0yTuPS6LJIhao9O5RIXQzeBwPTiWIIn6go8eUByI?=
 =?us-ascii?Q?ElYIKOLdXgtIsg7u+P5+cSacsH7CirmOtIFVmPl+0iLO7VW7sq1xAf6aActG?=
 =?us-ascii?Q?BgP/pLuMh/uDfSXMuBgyy3LK8A5kum2z74cMaG2+8SBQPBWmon4KOLQw9uTe?=
 =?us-ascii?Q?qyI7pTGiMW3iT2yGvogQ0txh9xfRin1e4zGmqZTobP9tPbbNHJsgylZfutex?=
 =?us-ascii?Q?+96Foax+HQyi8yCFgUTcH2kAIYkHO6EkUTqyM+THCvv6uqAz9VcH4uiJ1uy5?=
 =?us-ascii?Q?bmPhjAcoHgFHCHALayIxKmUQzzByu3uzLh46euTrUDwv/uDtndAJSL9ZjHsn?=
 =?us-ascii?Q?hiiB6vVxBnl77fdetW0OPJ27Ndy8rqRAVhYHtGNI?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ac1a8817-0e59-42b0-beae-08dc86433dc7
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 16:10:53.9215 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: g/jtV3sID3FoiZq5M/qdgThFe8Is7I/1IXk21lpGJ6qKW4WbzXB8c3uS9Ez48gbde39ViHwwR1IhKVQZK22Zag==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5172
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

On Tue, Jun 04, 2024 at 06:26:07PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the _DSPBSURFLIVE register macro.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 03c7b55e1bd3..62cb456568e5 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2316,7 +2316,7 @@
>  #define _DSPBSURF(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x7119C)
>  #define _DSPBTILEOFF(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x711A4)
>  #define _DSPBOFFSET(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x711A4)
> -#define _DSPBSURFLIVE		(DISPLAY_MMIO_BASE(dev_priv) + 0x711AC)
> +#define _DSPBSURFLIVE(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x711AC)

ditto

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

>  
>  /* ICL DSI 0 and 1 */
>  #define _PIPEDSI0CONF		0x7b008
> -- 
> 2.39.2
> 
