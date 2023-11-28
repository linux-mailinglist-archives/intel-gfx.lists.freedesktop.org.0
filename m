Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ED2D7FBEE8
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Nov 2023 17:04:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD68710E0AE;
	Tue, 28 Nov 2023 16:04:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A34710E0AE
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Nov 2023 16:04:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701187474; x=1732723474;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=3+r7PZqM1Ce6Ik9u/h97k3VTxR9NkY5qacTh6fAWl/s=;
 b=M0+IcA34eOinGDhSiorGHPfcxMIbeuwNeLKATzTvG9AFlTtHgxCCk3Qr
 WKK2CTY5HTwn02W4A4oxJGLcKKf9T07zAUqq/ev52iBbNPN1v2gu2wqy5
 7DjeEK8TxQUfCRgaZFoVv9ljexAe7mEymwb8s+cpJjQA6xjkrQCPlBPI/
 PHe0e80JYtQg70qpLbJ0dStt5oD3NZm0nm8Wnte2K20QSojpIa95MaOc9
 usrKZ+AGCnyJ6JZhXhiKih3URMv5MIOD/lQT6nlMc5H15tA5QrwQNjJ4D
 QS/Ys4DFu1iR29evb3yV+3uPqYMLXWL22Mk9PNhS3av/y4XTCubOQi0s3 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10908"; a="392703296"
X-IronPort-AV: E=Sophos;i="6.04,234,1695711600"; d="scan'208";a="392703296"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2023 08:04:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10908"; a="768563880"
X-IronPort-AV: E=Sophos;i="6.04,234,1695711600"; d="scan'208";a="768563880"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Nov 2023 08:03:37 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 28 Nov 2023 08:03:36 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 28 Nov 2023 08:03:36 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Tue, 28 Nov 2023 08:03:36 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Tue, 28 Nov 2023 08:03:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eTWLT5licWRtElnf4ON5dLMlNh3dgccvRu3BFBuaO3a8EVq+tNTNNCO/1ygrX45y4IIhBlQR06oTP64tJzy9+ajqf5dpT2v/WBsA486+KBIHftKKE2igOgqNgqfxXduS9tgXe66w8cAKF+2O1OsMV+l/cWxAukvqnTHu/BRhysQLv1YeSRwcPS7angJz1SzLKDzuwse3YFc+IXjVkejg5fUnLnngAdTdL/3sZvHpiJsDQ8HdfizpUztggH5fLxHXzhBOLq5MasukLIqoAbVaJfElnSPr7Nod4yPW+gT/aJhaEkT21wxL+u7heqcL+woPyWvxL8/OMfl0eqMm8Zvp2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hTtFrUao5HpnjznQIzbq02ciTFWOiFAa7+znDT5SoLg=;
 b=IACP1PENoTqS2ozuFJ6Br/1fO60HbVI2sZTqNXQovIQl+4w1DndPOhujM/9+f0M0Y2n44H2Mx7Kdsz6KsLPJED4AOobe/DiBsIWvseRbT+D/vvZCSmlMlguQaBlbI/TM31ZhDDO457iBAmGTnLSMH9rhjX11cRUOY99UHLVwMvkVq+3hwIKT0i7YwU5UYqiTMJQkoVc+AcUqaWrA71fENaq2E06SF3qnGSiVRo7iHyxEaLMv8lmIb8BozbJ0htRkI1qFu80oNaMT8Wzo1nP1ZP2HT7KbNz45L7YrKhEA5uNYo2ZoRa4bQHkr/K0N8IAGLj73IcbMMTT4ZG2RGluL+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by CY8PR11MB7194.namprd11.prod.outlook.com (2603:10b6:930:92::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.29; Tue, 28 Nov
 2023 16:03:34 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::4f1d:17b5:88b5:76b0]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::4f1d:17b5:88b5:76b0%7]) with mapi id 15.20.7025.022; Tue, 28 Nov 2023
 16:03:34 +0000
Date: Tue, 28 Nov 2023 08:03:31 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Message-ID: <20231128160331.GK5757@mdroper-desk1.amr.corp.intel.com>
References: <20231128102451.825242-1-balasubramani.vivekanandan@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231128102451.825242-1-balasubramani.vivekanandan@intel.com>
X-ClientProxiedBy: BYAPR07CA0027.namprd07.prod.outlook.com
 (2603:10b6:a02:bc::40) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|CY8PR11MB7194:EE_
X-MS-Office365-Filtering-Correlation-Id: ab1f6242-68d2-4c24-decc-08dbf02b92d9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rFqvXdarETUsEVFcdWGCHnMDWfeInsSI5+2X4P8dzQ4/kljmynurcL+wVcjZJIG+cfw1T2Ln1IRtv1Yw+ICGu37SxiV+Xra+DgjU+zLwhWwWwnd7MRrOzgKKSScIxyBEgzTYi6EXsuTnzuB9iWabJ/FEh745FX9SwOal8JM4pHZCoMaLMn0r35Mfm1kTczmZ330vt9MvwtA+s31PTYbhW3M1J2/XzGEwD1UfBZa57enOVEZ/ND+hVIbt/guyloQqHDI3TE88+U8bBSUCheBy9XJWzCoI7zuqWS6VJpGQH5s+bIWuXLJq7W0PxaFazV55xoSJ3XgRnXVPAdNzUEjrqWnX1Yo34/OFzfCyh0Hgclmtr4k72ZDCad/sWV9uV32Ry7mBYVyeAJTfC8laBF/aOnLn3KWlw3tRQ2LxEQ5iOhweaCQve+TCX75g1wcqJmbSk1BC45Ry4QPLAdK5VwKV0oNZxuu8usUNeiufYv2m02khEHllKfX8x3L8ngUHZpuu8x0V1s4twWsAbYtu4BVVn8aPAqQ60omzPc+weKJU7ejv0vKMSiOwedm0IDgyoyo6
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(136003)(366004)(39860400002)(396003)(376002)(230922051799003)(64100799003)(1800799012)(451199024)(186009)(38100700002)(41300700001)(1076003)(33656002)(83380400001)(5660300002)(82960400001)(26005)(2906002)(86362001)(66476007)(6512007)(6506007)(8936002)(6666004)(8676002)(4326008)(6862004)(6486002)(478600001)(316002)(6636002)(66946007)(54906003)(66556008);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?k9ql/GK3gMAZ2u0hCl/tnBdAnFl5SALokMs7M5/mw4A0HsHdh65tAu8FGvUO?=
 =?us-ascii?Q?NgCRACS9UzHHab0DS/heYjh9PbKsxfoy1cTQjvt5tGsASMrsHxjElyptfj7u?=
 =?us-ascii?Q?xUaXmfVJt+BbiOTD8wWrmpI6UGh8jUDAB0Ym6CX/fN8E1H0cqyQ+GkTdZCgw?=
 =?us-ascii?Q?pst2ILrNhtuBCgSmFwPtI+U69A2jQrPviRd7nTtEp0MtI3QfL96u1QW2mQkv?=
 =?us-ascii?Q?P6aLcGNTpf6oAQetPZZiV5g8LUUdyRjbYsuf9QaCFkvtHg6U61y2rqKc6T+p?=
 =?us-ascii?Q?aF6ITyLnIbYoCg/saJcVhk/ElrkiW7lqjdS/Hm2HJ6sF+Phz4MatEFyZiZkN?=
 =?us-ascii?Q?qAv4gFK8ZwECxxcCnmhYavbK5keqtpvGOcu739ZoiViwhQ9oqwPJMupD4Y3I?=
 =?us-ascii?Q?kkEuQkKGOxnsgkj/1JR8GO7Tqq62sgdKP3A/fLVCzvSsJ/UJxQX3VjNGQY8D?=
 =?us-ascii?Q?voX3b/ppPt2hzBJ5D5Co6no5QyUXOrcL1I7uWNG4llqzSEhgnpEFODShSOd3?=
 =?us-ascii?Q?yQ9myjDe4c+t9OVrXoc58E73lhYMma2437u6K673zyc+m+m2nR2IUhOX1VFD?=
 =?us-ascii?Q?cGeAQcBG8AaxNI5IElJEbbJlN5ZuG1Y2ni9hLaGYAZcONlyaWK1o2DMqHMAE?=
 =?us-ascii?Q?iAVA8MLdBE76N6lvuYWtBQOjUwKwN3DL5o5RnkVpj6Z/gEMx7BmDghggjob4?=
 =?us-ascii?Q?EbO45j7P6Kb55SElSIkw1Sp5cnMovZfo7czeWOwegGDg+PYNkh5epkWoAeb9?=
 =?us-ascii?Q?mKdKuWojYiUUWSPVqTB2T8UhXhTQYh3DYNDjlkL64xTk3jEKJr27ROJ4iWlJ?=
 =?us-ascii?Q?vZmhtl9gPuijT+1PoVwF+tgnJnhV1wmRP6z4N/3EjnWNk28gxZJzzK6ri/Qy?=
 =?us-ascii?Q?BtUbjl5DpfP2KzSbeUH28I3ZMl9giK2DpBBbQCEMWnRXZUhKZUAxfq2x1JYg?=
 =?us-ascii?Q?O/WZ6zO86W8Jgze8mGimMdXVys/++eVpF9V1N4BYt6zCf4tWX+9wkb0b7oWi?=
 =?us-ascii?Q?OkmiBaBcPcBrXqfleSA+8gJ9ytj2iCx1sRBZzXYmULUotxXFcwI5tR7ZRoh8?=
 =?us-ascii?Q?/HIVoCEZJDsPrzkmA6EGy1xrRLeJBqSAKFXjPAd+EMbZLdJljvQfS8DlV6fV?=
 =?us-ascii?Q?23JP+9Z+21ddpUxLHigLCz9GfzyPUsikH27/0CP9W5sFfiVXHat3oLwam4EV?=
 =?us-ascii?Q?/qecj9TTIfts1sU4//Vj1zsIxoplQ77Chay743oqXMbthqlNeGRhRvHHS0fG?=
 =?us-ascii?Q?gc1WR1JNdf6PfftZ7QxPTLIVIaBxNe7rjY7WVQ07VYJDp6qAgIuGdQBOcW5w?=
 =?us-ascii?Q?xRZ94KkjnWnkTY0nPG3KBVTEJ26WDkbdB08s0XTNavlWB+TO+buNcpycbBJX?=
 =?us-ascii?Q?y+sZ4fKPCdUf9Hts6UAgc98WI8BLucxPvsSgvIbCwouUKM6NavrLQIHD2cb4?=
 =?us-ascii?Q?HbvS3SJEJHDpHEQQnhEjfuSXD18eGS0RSZ55T485s0DnPWAp5yWyX0LEFGco?=
 =?us-ascii?Q?Jr1nqYI0lfzJDQPaIdyn4cDyZegTb276fy9P9MHoPzn8AUFJdNvBjeyxJyPN?=
 =?us-ascii?Q?HGXT7/NqpJH/nhQg5RVLrris3KWn1owm1ra9hAPpt/OdA/s7auPcpI1OiR8J?=
 =?us-ascii?Q?0Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ab1f6242-68d2-4c24-decc-08dbf02b92d9
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Nov 2023 16:03:34.3506 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +ey+B+vaV9RJAEIO5Rgyml7q2aaPF0GueVTnJ61JwfsWwc6aymaWDCmR0FvWJovKYIfaXoWf2+BD4PO7Ww8ozfkKemULssnbGmEBmfDnIso=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7194
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Fix IP version of the WAs
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

On Tue, Nov 28, 2023 at 03:54:51PM +0530, Balasubramani Vivekanandan wrote:
> WAs 14011508470, 14011503030 were applied on IP versions beyond which
> they are applicable. Fixed the IP version checks for these workarounds.
> 
> Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 18ff7f3639ff..5f091502719b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1697,14 +1697,14 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
>  	if (resume)
>  		intel_dmc_load_program(dev_priv);
>  
> -	/* Wa_14011508470:tgl,dg1,rkl,adl-s,adl-p */
> -	if (DISPLAY_VER(dev_priv) >= 12)
> +	/* Wa_14011508470:tgl,dg1,rkl,adl-s,adl-p,dg2 */
> +	if (IS_DISPLAY_IP_RANGE(dev_priv, IP_VER(12, 0), IP_VER(13, 0)))
>  		intel_de_rmw(dev_priv, GEN11_CHICKEN_DCPR_2, 0,
>  			     DCPR_CLEAR_MEMSTAT_DIS | DCPR_SEND_RESP_IMM |
>  			     DCPR_MASK_LPMODE | DCPR_MASK_MAXLATENCY_MEMUP_CLR);
>  
>  	/* Wa_14011503030:xelpd */
> -	if (DISPLAY_VER(dev_priv) >= 13)
> +	if (DISPLAY_VER(dev_priv) == 13)
>  		intel_de_write(dev_priv, XELPD_DISPLAY_ERR_FATAL_MASK, ~0);
>  }
>  
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
