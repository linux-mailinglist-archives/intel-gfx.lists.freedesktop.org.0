Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A6A0A7903A3
	for <lists+intel-gfx@lfdr.de>; Sat,  2 Sep 2023 00:34:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4E2010E01F;
	Fri,  1 Sep 2023 22:34:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B41DF10E01F
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Sep 2023 22:34:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693607650; x=1725143650;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=yw6MhhHwhwyHMTT4Ggos4qA3IWNBOnNry4vuITf9KSM=;
 b=cxEe619CrOmLKjNRZ2yreMR4bIiceYfhpriwK6LfCsD+Si4v3a5Rvnc1
 SU/zB/SMOTo3gx/CUWhBmSbvEGiVlU0d8QhFzQ4HdVLYKI+4Lda/DPBvu
 0h6IHcJisBcFnHQkb0QerwbrXImYwOsGF1K6KZp+0sF+nJ29t7qw9l3U4
 m7e9k3aC3c2opHtv6ySKQj7J0NZeUB6nJiQPWnvnwN68Si6g27UcGsSUv
 WFWHdWo6lLkjSSVyy9jXisFbrvhO6ii0KcXbwbTmI/PYbk995UeENuUvK
 QKcEE+iYT/BTOcFSQcslWo7fJk/pLCd5Z6E3oDRw058nNKEBh0zlTVM1q g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="375222652"
X-IronPort-AV: E=Sophos;i="6.02,221,1688454000"; d="scan'208";a="375222652"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2023 15:34:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="769339898"
X-IronPort-AV: E=Sophos;i="6.02,221,1688454000"; d="scan'208";a="769339898"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Sep 2023 15:34:09 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 1 Sep 2023 15:34:08 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 1 Sep 2023 15:34:08 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.46) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 1 Sep 2023 15:34:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b/7IoVTRkUmPXqKTeLkaqyOnk+A/VImbbQltIbuSIhsFxkWQ1eUfoe41DTLWiODRS3gsWLlQjNvSt1Bfl02H7UmzD6zzjwFYJsDA9z9t5rADYU5PQhRuUj8AARLDcQFjhfzVthDWGglM0LExZ0tIaJV31q1PvesgggdaidIRQLxuWvlOHrpE5a2/X/CimmRCtadTjeCgD7uMe2KsXz5ToaP3HikHvXX7Dxk8n00beN+u8YyYvkS0uyZcw8+9P2OjtJGCkL12WPkChBtqwp45UkV6klf6+3RNf9zkQOJAJrsr0GCK/pytSrikwRg+yNZh+6vOGwpaqF36WYYxZpxDVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JyctxHDKZWuk+7/hxywckf5xLKCQs/+RMJjtrTBaMYs=;
 b=U0al0WHQKx3YS4vVkhNuYx08V/ofQGXze+CncGc/vFIE33/g3kAHG9vdGDEdIm/HyPChjJxMHUtc3QTI7vTs1aYE8hyHzXQKElGV4B/o+jSazREbug1s/94qPQHwIjp6x46DV96InfNQJclRuPtPJVGKssW11CM628MBXdKW1CCi6qtApPopPPXhO/JeirO91TvcrGmweuPiMkR2WgJA3ld4hiQpdL3ARIsTd9dknw4YSfSG3CJQIeuzdMk3b52XJVUy2L1NqDeYmJ7O8pAhyQYZqBw2Zj+d/lExiNnYhgIYd0uTfknQPOJWzhrb4sQPMKwYXRBty7CTi+NN4oGoxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 PH7PR11MB6546.namprd11.prod.outlook.com (2603:10b6:510:212::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.26; Fri, 1 Sep
 2023 22:34:04 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6745.023; Fri, 1 Sep 2023
 22:34:03 +0000
Date: Fri, 1 Sep 2023 15:34:00 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Shekhar Chauhan <shekhar.chauhan@intel.com>
Message-ID: <20230901223400.GW6080@mdroper-desk1.amr.corp.intel.com>
References: <20230901045700.2553994-1-shekhar.chauhan@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230901045700.2553994-1-shekhar.chauhan@intel.com>
X-ClientProxiedBy: BY3PR04CA0029.namprd04.prod.outlook.com
 (2603:10b6:a03:217::34) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|PH7PR11MB6546:EE_
X-MS-Office365-Filtering-Correlation-Id: d2a47ae5-215d-4260-7898-08dbab3b8b2d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Ebm8HWv6GJMcBRhCuybr2+sjFwzhbMkQJOolUeCw9K1SJVA/mtuyxu6//VJQTjNwd0wE3CtzeFo88ouZMLuf5x9M3us8OidUtWdCJUqSlch0Ngd9vlUHpA3G5SeVO7tirGQG43VNKV0knSB8F1djhGEp8+VhajfymwjQKnx8qvdpLBUSs6UtLWlYJhyWAunp8HMecArmNJ5QjqvNylxZ3J0NoGIrjR2vfdzONtLo0ilfMg5PCFHLB5OS4AYjZdm/8OGGV8g0rhIgY/6kudiCUC7AzVQNaGUnVEbey5BKQyEXgk+aTmMR1x7BhXAU37DqYo3FsQJ6VsRuHolzHnqfACjG9xwCSzLxRsCPBLO2We1K88bVDBd6qRByLAKViANQYUJXuC4jNFe2C34QRPty/D68M0M4qVcklSA5gW8pWaavlzNGs5XVrEkHPs3bquLZS2rqVoDG3jD1gmfBIOuXmFlTJlkEqY1pxFoZyguHkdMoGVatiSSxfyTD0l7i6FTdOoVYqtIFh2VD1iH5oykS3duFnPy/1ua36Yuuu/TwgmlSf7zAqjn66k47s/Apnc7f
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(346002)(366004)(376002)(136003)(396003)(451199024)(1800799009)(186009)(33656002)(8676002)(6862004)(4326008)(8936002)(6486002)(6506007)(86362001)(66556008)(66946007)(66476007)(6512007)(478600001)(41300700001)(316002)(26005)(38100700002)(6636002)(5660300002)(82960400001)(2906002)(1076003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ZXadMPGdZYC0gxPoGIRD2QaqEWP0IpkMHkZ++bwgGHDBri9RuqpDBth+ZOSE?=
 =?us-ascii?Q?vLzLu+z37m4eTm5En5QhG2WeXo0JHGURhD7i76xekzaQGQKX6s4fVMJBV9LT?=
 =?us-ascii?Q?6Ov0mMBV6K/svo6fnj9Sqca96Cdd97MzwwhTI5q/PAFKCCf2aeMdbmOB57gY?=
 =?us-ascii?Q?2KrjlBnbW48o70fkDEOupaRl2vIcn5Kiyyhd08X1Kpq/XzTYqLc7voyReQpg?=
 =?us-ascii?Q?fTssiEGq1rhC1RS9fkxTx6ERf5TYnvHHT7NlnAE6cLFbmvpLdW0pIpOhJXbw?=
 =?us-ascii?Q?xxLTR3W6d7XpbNBGcO/Hw2x3FjpboRnmSguAThYozMUuEfltCCG0+VuZl4Kq?=
 =?us-ascii?Q?2YdWSgeGY8qjqVNaZ4vxRCWSiPZQsOXyVHbA8Snjjq7fY/1vU32gjm3NN2Za?=
 =?us-ascii?Q?qjsecWtiGFdyIPr6QjO0AX6qBGYYQxNC4MahHeLBXIm7gvZAO/tZrGDSVr0Z?=
 =?us-ascii?Q?u4A7VNAkt/Q9sw7pZ50j37X9z7kdbvRZdfruVbiBfnGmVYGg8JlhckO2s6z3?=
 =?us-ascii?Q?ZKudGxHRZjBTlGWczAncAftHz8xOSj0H6sDI7hUN2/WOJFgEHa+Xbwwett48?=
 =?us-ascii?Q?O5obWw4L59fmzBZWU3KxZySYYITFQCUKvwlXwMGuY4/B9p4eJ1KMb/p2a2Wa?=
 =?us-ascii?Q?5s7k79609SAI5SYdMCoGm7edniy/Wxd+Ig4M/YhnE8cmRdFdijg1gv8sz6+W?=
 =?us-ascii?Q?bZM/0APQ4QAtb28zC9RG6LSvFRSDRkb1CjlbZefoOz84Q3tz0qLoVvFhIubX?=
 =?us-ascii?Q?07buT3e37a8TQFr+6jdIxcgsP/baRMlQvZ16aejc8+GmFjcyVK8zVvvQP+TI?=
 =?us-ascii?Q?w/QTLkZ52wJNjBC4Jo54wOAh8f/ro6Jmnvzlx2L9/6FLIXRJcC4Xi8flkU2O?=
 =?us-ascii?Q?h4cwF9sSEJc0HSSCNj2K8X+EJT485/KfhtvqK7pGzMgol+ys+RUwak1JtOdi?=
 =?us-ascii?Q?FU0jONIvqjU/xsyto1XYzn1YIL2K18TdJXzx5l3koEzkPfCrdSZ8hYS5rlvM?=
 =?us-ascii?Q?Nmgf2vx80y/LGvli75q1ROKB1fRpPBFLxu9+LoG4F773FUYx761txR3F/MI7?=
 =?us-ascii?Q?FXhBqk4EbPZITXUkrPu5cs/3cVHgcADOmnVK3VQ5F8hNn4nQqDWGI3nhcgJM?=
 =?us-ascii?Q?77LD3pd0THWYPo8FHUYUcRNVQrzxeKxSCGxjg0Oc5HLm6Th2BAEuvqA9BmxY?=
 =?us-ascii?Q?/HlZCPvMdwTRJgewwCtGfymASh0smCaZNlMopyK0a3CnX/6KqIZtfzJPOvL1?=
 =?us-ascii?Q?U6Crf9CQcybZajnrXFbpHS/XaUIhy/uz+dQuwWxiVDg8WyVz3tctMUsut8pG?=
 =?us-ascii?Q?18ja6CNuxJTTnf6PSXvPuqXQhveJBX84jumEnhOLptj5CaKd997hQ00S/28f?=
 =?us-ascii?Q?NdVtts0eo9KG7angQZPxYJJBZtbHaV/BOp0zZfFTJOVQEEDeMgEGWCjlXkCN?=
 =?us-ascii?Q?+yCK5kXY4FYjx9dbKGWgw8gWdxVd45gJbF1M+mxXlG2gihrR92tQj4Lybrtx?=
 =?us-ascii?Q?tURktKEbf4b8CrXbsr426Qqbkj3uzT9TRzgE/bB5veuicpJSmt3CeDlErFgr?=
 =?us-ascii?Q?l4mpQvvFm7mxoMjxso17BTMNLvTUh/iI4D0cD6kgYgBmflgUZE2vo8rCHMt8?=
 =?us-ascii?Q?qA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d2a47ae5-215d-4260-7898-08dbab3b8b2d
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Sep 2023 22:34:03.1664 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5J+U1nBVINKgPlCbAsh48tBakrLkmhKa3+hW/HL/ZwaYM8DcGts4Avikw218P+VPP7btERj2oxGKFu0UdtEs0R9z8f2pthqFTWktei/Ec88=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6546
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add Wa_14015150844
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

On Fri, Sep 01, 2023 at 10:27:00AM +0530, Shekhar Chauhan wrote:
> Disables Atomic-chaining of Typed Writes.
> 
> BSpec: 54040
> Signed-off-by: Shekhar Chauhan <shekhar.chauhan@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 2 ++
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 8 ++++++++
>  2 files changed, 10 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 0e4c638fcbbf..a00ff51c681d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -1218,6 +1218,8 @@
>  
>  #define XEHP_HDC_CHICKEN0			MCR_REG(0xe5f0)
>  #define   LSC_L1_FLUSH_CTL_3D_DATAPORT_FLUSH_EVENTS_MASK	REG_GENMASK(13, 11)
> +#define   DIS_ATOMIC_CHAINING_TYPED_WRITES	REG_BIT(3)
> +
>  #define ICL_HDC_MODE				MCR_REG(0xe5f4)
>  
>  #define EU_PERF_CNTL2				PERF_REG(0xe658)
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 864d41bcf6bb..70071ead0659 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -2327,6 +2327,14 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  				  LSC_L1_FLUSH_CTL_3D_DATAPORT_FLUSH_EVENTS_MASK);
>  	}
>  
> +	if (IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 71)) ||
> +	    IS_DG2(i915)) {
> +		/* Wa_14015150844 */
> +		wa_mcr_add(wal, XEHP_HDC_CHICKEN0, 0,
> +			   _MASKED_BIT_ENABLE(DIS_ATOMIC_CHAINING_TYPED_WRITES),
> +			   0, true);
> +	}
> +
>  	if (IS_DG2_G11(i915) || IS_DG2_G10(i915)) {
>  		/* Wa_22014600077:dg2 */
>  		wa_mcr_add(wal, GEN10_CACHE_MODE_SS, 0,
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
