Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CE7A78F1B1
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Aug 2023 19:09:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 266C710E0EF;
	Thu, 31 Aug 2023 17:09:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3682410E0EF
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Aug 2023 17:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693501739; x=1725037739;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=+7ldHe0rI/X/Tk/Ck5DIdRWsudv57noi9VvSsXaPAh0=;
 b=P6CBs6J2Ht923eeVmoMCdUS5uDc2uKlGcoWhnem1eT+wcxpUvZtbRkGl
 SG54TfXfIkj1WGTnCkNEnaSXFFXSlJ+pRBO6evH9vzb+SzXD2CpzSdYIK
 lCxtrqgVlx2nolaOlTcZGiIZ9fHJp/jKdb3AtZ3zvqru9gCPMyGQ9+L+l
 hej/EXlY3TFjej+JIRmKgndFBTjWYpX1JUJwvQT9p44YaO8zz3EXxYe5d
 c8g00HGll2xyqd+m559pMbxunlFYnXyJ3L+4RG+yMf4oI5cCETPzC4HT3
 TbkARh0Go1TVo65mPqZkig/h4Ys7Hg+73Z5eD1ciV6thRYuGzeVcVHO4G A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="442401684"
X-IronPort-AV: E=Sophos;i="6.02,217,1688454000"; d="scan'208";a="442401684"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2023 10:08:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="913366605"
X-IronPort-AV: E=Sophos;i="6.02,217,1688454000"; d="scan'208";a="913366605"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Aug 2023 10:08:39 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 31 Aug 2023 10:08:38 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 31 Aug 2023 10:08:38 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.107)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 31 Aug 2023 10:08:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n52yM+8dNxDDDjBmMbIsabRp+EUT90RPaABWMeA79Y+xdo2WQf//+YWwN0FLz9HgRrftuX1lrWWDZnrkYpDo4vUzEEhmR+CgO/5MxdTswtr+cv7D52BagyAnYYFlYgOUz7FiWtElaIAh9tEofbU4lV2jYK5Eht54VInTmfWhAjtHR9QlYqP88hSrbTFys+82o5Vbqk3J9Y94pcJeq2mkA7U7LBEYWfaw0hn2o0K8NP97G/kpJAteQSTVMDLkZm/woe58YPZ8h+5/e98RKZPfMP4A3ceKCllpZlm4n1kfscTfcdQsydZd6J4FeKZF9Km4uqgdXP9LtGe1jpTz7jSmxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IfDYV70nH8iH8HuH0/l5nwkMAkRgSnb8W6JtyQZiBak=;
 b=Wii1Vl2+Y0C/OPiZ+YqrXJb34C+zref3NSh981w5XiSTyy1uCea4zf/08QXYn5USBA3FSAmGIJUGdP2nKZ5H73QgNTp6/yLFiCgZMbr3Oce7aByx8vWdvHKITWCUx2HsoO8mTJl3aQSsHcjihxHCUwdcPiVLDeHfxxxwHewWfzstsuLjtdadA+jy/tUA5IXjhioCVhz+yhB7Ud/c0CSvJs+cF9XwBy7so+4ZG/bOGg9q/T8whjNvbPvCLte9tne7xAFQS7yHleqcNm2+kWjAdokNr0Lndmzm1slLozUHovdkh2tDOEj/1EpoOwFKg6P0TxOQaO8SL6L2vt2qB+BqLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 DS0PR11MB6493.namprd11.prod.outlook.com (2603:10b6:8:c3::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6745.20; Thu, 31 Aug 2023 17:08:34 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6745.020; Thu, 31 Aug 2023
 17:08:34 +0000
Date: Thu, 31 Aug 2023 10:08:31 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Shekhar Chauhan <shekhar.chauhan@intel.com>
Message-ID: <20230831170831.GT1529860@mdroper-desk1.amr.corp.intel.com>
References: <20230831155925.2501205-1-shekhar.chauhan@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230831155925.2501205-1-shekhar.chauhan@intel.com>
X-ClientProxiedBy: SJ0PR05CA0191.namprd05.prod.outlook.com
 (2603:10b6:a03:330::16) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|DS0PR11MB6493:EE_
X-MS-Office365-Filtering-Correlation-Id: ae6b53a1-1a6b-4d55-d3fe-08dbaa44e880
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +54ctviZsYJGHWA7Rn0EZFAuB4MFV+WbxwtChQyzjaXbKq/KIhEPUPWI8aYq9yTm04PehTWE/2LdmIkwycuuTTyvGvxoAk4taFyp42glGc9PERqL/iquVe1bYeSSDuCTzafggIMMxgm9WuLirENpk0PNkq2FQXJOPlHUcq9GxdsPqdkHaQ4HApCoUSL+Ayj+UYEApfRLGtafX1ikTB0P7DOZe97tVPxqw0b+zfvufQvBHyAddR91oVpkMU4D5E+kwxh8PMrk6JL3g+Lm/JXE50uKjKblAREIyoWGRGU3BGTKJ5wAxZTDwBIi8FBifMSX7ktAAsNtdkS480kexxYvO373vsAY3YnYI/hZdoqguQtNoOHcrERq7cKG2OoAJLJ/6PR2ctVhjuNs0zbdVf/3qwKl2a/yada2/rlzGWjANoDsGXeR1TzGQo+36QOuLFRjy7v9VYnTu8L7YIPJt78V+dk5R0fnG3Ds0KgTwApDFKy6Y769zaT9RSWGF4pFmNi2iB1F9hghGqanIpZeP5U4565kzSZCf3ia3YbY3wFAww5A55Cch9XnFtDaxYOXzb+s
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(376002)(346002)(366004)(396003)(451199024)(186009)(1800799009)(478600001)(38100700002)(26005)(1076003)(66946007)(41300700001)(6512007)(82960400001)(66556008)(66476007)(6666004)(6636002)(316002)(6486002)(6506007)(33656002)(5660300002)(6862004)(4326008)(8936002)(8676002)(86362001)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?rA4zfNX5sn4fywmwCU3gjIo8KazU7OSGn5nB3E6fSwH7uZJjXf+VRJZhGUes?=
 =?us-ascii?Q?Ysa1Hr5PoBKEmbiwQUq2symYXusajeh8iiEE8c6FC3OOxRbrkeXgbHXgBEnM?=
 =?us-ascii?Q?j0iAm9LxeFqwH/JxgyytI7/T5MbIGEEgP2c16ToTGzq/cH5K/l1dMXGDjWUC?=
 =?us-ascii?Q?l/InP1NcyjPamOHWeDRhu27EDk+657PS/cm08aQFKuyvVGmC5ErK+vGqwo+S?=
 =?us-ascii?Q?HuN11tnJTU7S9y9wprPUNyqyXMjUxT3XffvxU6cf7yq/mhWfD2poy/nNffCS?=
 =?us-ascii?Q?oaztzXZtRRUucfpDPrCVs4VOFDebG7muxtWgBhxts+RP+TTt4i+ocu7+oYzx?=
 =?us-ascii?Q?ziUMyIJW1bwZPl8wVHvyFCqadH4Uj0bPks1GU7Yg3ny54l+Ip+RI3NSkgSkK?=
 =?us-ascii?Q?WmArh5MLf+jRoH7aRqw1bnH5u6Jzw8okw7DNTwupe1h7nXs4Az2Zf5UG4zIO?=
 =?us-ascii?Q?WmLOzFiy5tULEVFjA47Wr41kxoMR3EJUM3PYwyGEDKlQht2pgHtqgzKhznx1?=
 =?us-ascii?Q?M632U+XR6eyvsEIv/qp1zPpVz4VQfHNBjHWr7h3lpTXwkDE9iA9ieozZ7P3C?=
 =?us-ascii?Q?z//v/MP55FqRsLY7oZppYzc2UMtpWThq0SBO2SarEEkmr8otGNuOzX8+a29e?=
 =?us-ascii?Q?sdt5kNgPlFp6cu1LUf8Or5sTBw9lFtCMd/XKnXqIxPjdxcWSrLX9y54XPcfG?=
 =?us-ascii?Q?cqaV6ifqjeS0Xx8gl2NwmgZdjXcgKWOcrZV6Nz0TKE2sK6WtZgYqNXyZc1gN?=
 =?us-ascii?Q?W6OdRp09EkptjgIzLzQHZVUbieIeA9Pc6yrjA8LJvo3KlY0qopjAPXu8bR1i?=
 =?us-ascii?Q?EaoeyHqlwwYHOI0HKVW1IMLGTWvLBVaYSzDIsqH/TsB6auHoLiIDytAoRtvX?=
 =?us-ascii?Q?4X0zG8OUXmHqnYJgDL2ICOlPUKsEpZCnTl3I5YrF1wgG889I3DgR6+9baFd9?=
 =?us-ascii?Q?m4WGq4XpcLUvg2sIOLk7nquMt3l3Led86xlktqrrnLrJqw9QMSmRH9hrS2Lt?=
 =?us-ascii?Q?AuMU+7G30o+hbUY4AstkwUnrvzQnlZQUxAW2sd9u23HqdwjuQVxE2QbvDiWd?=
 =?us-ascii?Q?BZyX0Eo0cl6jBnnJkjnEgVRMgv+DyLPbcBUbOl255XYK0edx8Mz/iFQzrpwd?=
 =?us-ascii?Q?FKxuwbM4lPfItLt29E4JeY0D0ZZTNE+a5bFVTnOHyBiJEuq+tWmvHbEFD5X7?=
 =?us-ascii?Q?3Dti2opvnmTwZUrRCgY0ZwRqM4viuS6fHESaC7j2EsQnZxMaRTGBSz82c7b6?=
 =?us-ascii?Q?IYg4I6AodP8UOlGqi9we/VCVw0Ncqzru2/IE7BJR3TU5utbMW5I934CsV78C?=
 =?us-ascii?Q?mfferrBrLseTivbId18KfSwVLer63sTVoOYnTw7pI/NPsk9z5Lcd7t+1AmHQ?=
 =?us-ascii?Q?DIBKzAADysw6y2npMRMZN5VUQq1U+73qf6lETagwtMiNfFxRDSZQI/U5xIZi?=
 =?us-ascii?Q?2dAWmzPoVeZ+Ht+80lNMF46RlW98pDTQbU2DNJcuVgiOiP89uzj7HdPFAHdh?=
 =?us-ascii?Q?ZbBLjk6B/8n5Dg0HQvdTmVHEmIbi/TjezMDG1c9PlcZLWrp2Avtc/ZwtJ3NC?=
 =?us-ascii?Q?RhK7iQDQVoBq2Y9N4dNQMgrJbEeaRKB04e8/1JGiWAyVAYbJnRs3fUT8mIS0?=
 =?us-ascii?Q?Uw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ae6b53a1-1a6b-4d55-d3fe-08dbaa44e880
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Aug 2023 17:08:33.9742 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: C9DEpMxM9WZ6ZjgJlA6zfYik88BPEGTWXyuL7Vp1H5+tqsZIcH3CEPUJ8wKAalWET3f9ylF4z3j6gRN0ptgcdNz/j/67JAO/cxgk6yaDQcQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6493
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

On Thu, Aug 31, 2023 at 09:29:25PM +0530, Shekhar Chauhan wrote:
> Disables Atomic-chaining of Typed Writes.
> 
> BSpec: 54040
> Signed-off-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 2 ++
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 8 ++++++++
>  2 files changed, 10 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 0e4c638fcbbf..82b533aa0c03 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -1218,6 +1218,8 @@
>  
>  #define XEHP_HDC_CHICKEN0			MCR_REG(0xe5f0)
>  #define   LSC_L1_FLUSH_CTL_3D_DATAPORT_FLUSH_EVENTS_MASK	REG_GENMASK(13, 11)
> +#define   ATOMIC_CHAINING_TYPED_WRITES		REG_BIT(3)

Since a value of "1" for this bit disables something in the hardware,
we'd often put "DIS" or "DISABLE" in the name somewhere.  E.g., the
name we used for this bit in the Xe driver is
"DIS_ATOMIC_CHAINING_TYPED_WRITES" which helps clarify the semantics a
bit.

> +
>  #define ICL_HDC_MODE				MCR_REG(0xe5f4)
>  
>  #define EU_PERF_CNTL2				PERF_REG(0xe658)
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 864d41bcf6bb..d853f228fabd 100644
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
> +			   _MASKED_BIT_DISABLE(ATOMIC_CHAINING_TYPED_WRITES),

_MASKED_BIT_DISABLE will disable the bit (i.e., set it to 0), which will
enable the behavior in hardware (and a value of 0 is also the hardware
default in this case).  Since the workaround description is asking us to
set the chicken bit (thus disabling the hardware behavior), I think we
want _MASKED_BIT_ENABLE here.

It's always a bit confusing when enabling a bit disables a behavior and
vice versa, but it's a pretty common pattern for hardware chicken bits
like these.


Matt

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
