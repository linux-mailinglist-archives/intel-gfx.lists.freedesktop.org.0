Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07CD59E74CA
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Dec 2024 16:45:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EDA310F12C;
	Fri,  6 Dec 2024 15:45:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d1ta12E3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48EDC10F12C
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Dec 2024 15:45:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733499928; x=1765035928;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=6tDqUliP2DofWrTNxq6GVB3LAZpOaDH6cX6apcauorY=;
 b=d1ta12E3ZTnfMLH3/+jawCRAr6kpKT/TLmt9l6iWqC1RsySJ/ygv3dff
 7ca5iIlsS7m85mdriT5O8cxet0grOlNCpuDFajr4nDOOKZb5gWuf3+aH7
 B0LhOrpAIslnJZ65tplREvir+fN1bCfdWpv2zlQ1lmzxuUrcEpnSTVM0e
 9bPjZ4p7IRAynpffmMaDFklOmH7jbRr9BzkV09GWxhdsYUUBykTNIEhPz
 h9KqCBwBBcKmi8TmcBakHs04GAeDDuT5gX7AW3N2Zu8SuaUP4ZGuQid2s
 SfsCcTIRpPPK5yfdtBolg1GgSz4whcrP9c1JrBbe7YNh1TLCr8q2Hu8+8 g==;
X-CSE-ConnectionGUID: W1vvBk9KSy6UiWsLn7QXWg==
X-CSE-MsgGUID: pD9n7O5OQ6m45t1KraNoNw==
X-IronPort-AV: E=McAfee;i="6700,10204,11278"; a="51392736"
X-IronPort-AV: E=Sophos;i="6.12,213,1728975600"; d="scan'208";a="51392736"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2024 07:45:27 -0800
X-CSE-ConnectionGUID: e9Cm8ll6RwWZhQKlT5/fEw==
X-CSE-MsgGUID: w2LX1u9ESTi+5UPXY5a8ZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,213,1728975600"; d="scan'208";a="117691499"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Dec 2024 07:45:26 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 6 Dec 2024 07:45:25 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 6 Dec 2024 07:45:25 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 6 Dec 2024 07:45:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ugEZaxGdDu0TjZnO3mvXwqA5TC0AY2jyB2I7ewyvTFIUOaIQBeruGM6ORLCcqJVqF3L03CMMcp19tFQPEOPgcs4UPzrpGfgWnpqxM9ZDk+wmJ0ku6jEIqVmtstBNvoHScIoFtkxEKeNlTm5zEi6pZpWt1JsoeeSuUI8a0kwfi87t8bhICBvG4IbEcqK37sEH9f97r1UWHY8D7F8If5DBsg5/910TezboP4zhqHEhXwh/IFrxXwdbSObDTgGZ0HaULzsb1zxaSMaltRcX+zo81UhK0lR8wTwWzsMCpUUSCZL6/mlUMSoOkPHVwpaLCy5f2Bp9i0Wg3HsGZh5U71P7Pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rE2zqBfM+S9rQ9uJSLRcKUY+t3QiWBp+AWztLcGVBqk=;
 b=GcRQfJ5HTxTLALtJldKrXpvpgRug09hPStI66q9yMF/5NFFggY68eLnv4TNn9y04b+MxtrzQ3uw27901r3xWF4xevLUMgyEOwSqEhChpLelIAiJHm+7Y9ZBcW8GcvwHNaiZZ4LTgjuL2v/VRZN8dV9+kFXJ2F7iUujNqBbFPSLcTuJqQX7HfhgyHixScMBXAu30SydaQix+C3iy1Q7EgsTppp1iIz/DEvgN4pJSKQC6YoGHKO7VZ4BEZUHOSC1/p5xexu4qxbKg7q82IXzl218g+iPY2o5MsgTsAMvcpdBitlkZPMIYQ8I1LQELrKAVlMRNSk12FJEkT2JZqK+l3Yg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SJ2PR11MB8567.namprd11.prod.outlook.com (2603:10b6:a03:568::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8230.12; Fri, 6 Dec
 2024 15:45:22 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.8207.014; Fri, 6 Dec 2024
 15:45:22 +0000
Date: Fri, 6 Dec 2024 10:45:18 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Raag Jadav <raag.jadav@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <anshuman.gupta@intel.com>
Subject: Re: [PATCH v1] drm/i915/selftest: Log throttle reasons on failure
Message-ID: <Z1McDvyOeoiVmOmd@intel.com>
References: <20241205081413.1529252-1-raag.jadav@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241205081413.1529252-1-raag.jadav@intel.com>
X-ClientProxiedBy: MW2PR16CA0051.namprd16.prod.outlook.com
 (2603:10b6:907:1::28) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SJ2PR11MB8567:EE_
X-MS-Office365-Filtering-Correlation-Id: 1ed7a07b-df81-4657-46c9-08dd160cfe56
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?7UIrgKkHdsQ8JHajWvQVl3L2U7me4/i/0VOarp4bCPQT04W9gbzIFbiHeac4?=
 =?us-ascii?Q?QVgHQqP4jgBNROigREPfg+If7e09dLd6kjW1xG0V33ClRJA/X2AAvdzcQqmk?=
 =?us-ascii?Q?ewBhy3FK70MfcSo1ESO3jdz29YVkN9Mzxi9xKBqnsUXYP89drb3WIzILsbD8?=
 =?us-ascii?Q?G9N1+2m53CIvgI/MXnwbS3ONouScLkd7SOl0WcydXJb08mr8HnKQ1Q+TNhFY?=
 =?us-ascii?Q?epbDhaqnhDzaO59zM5rNyt1o5olqsF4TyEMAR+3C80dg1eX5H3aU5ufq2KOO?=
 =?us-ascii?Q?Pag9wnP1bx7YdDWkoAvE7raaxBcHubNX4N0lyGdZgIXyI+j2WCNPGF8xCbbP?=
 =?us-ascii?Q?paS5HjW2mMGCiLMdYgNe5NtPG+juuCERY6mFqEuUGsSBh1bZBWIvP+vh82j+?=
 =?us-ascii?Q?3iSW35spP+Edaj8WreZScY4PFy97oSBJ42etuTTKPb3rZm0PNN7NeMGDX7D9?=
 =?us-ascii?Q?cyWCkUtGE6MZC8eoKepTpjQpF2pTcJa0H6nxf5d48MHGGcj5cvugcYcQve43?=
 =?us-ascii?Q?p2qJq1zavkCaC+x3V3+0wkgguU5cRTGsJEL3sOMqHt5MliK+A06HjMSIBxxl?=
 =?us-ascii?Q?AiqDP32Kq4W4B3wqrKG5xvjAKqd9NxBso4/g5hv3B3zm41haxC/PubIO5xax?=
 =?us-ascii?Q?5me8u9KMhUr1qo1JzLf9hUjRK94RokPu+hRGwsx+Bw6DtscffeF7TDhrKBHf?=
 =?us-ascii?Q?db4tSYQYfmsQZPqwu7l1EK880ce92isKhH+4TCwi0F72ZznnCpp/Q9iekx+q?=
 =?us-ascii?Q?GYUW/bcz1ww/RAuzswWfEnUXvOIYDI3C+HqmhSOSivFCVhzGGy/xTtxF+qre?=
 =?us-ascii?Q?pCAoJEJc43/bxzc2lXhEPcgEZ3gAXr7acEQpAG0aMVvH1zIMBEpl959Tj4nB?=
 =?us-ascii?Q?CdkqIiFagII1QDudeHanpnkd+Hnw9whAsiChlYUy7zw9D6HYM3HN92muheLb?=
 =?us-ascii?Q?inn1Jf7Glr1hJgfiflJpYJO/v5AII6YErEuMPo370ar9BTGUUle00c1FZJjj?=
 =?us-ascii?Q?dvMeSwNb0pmlJHPuzfn9D8F92CNP6o9383w13nm8RMDARlP1AfzyWB/5FzWd?=
 =?us-ascii?Q?l/sw8+nEvLBephnRkWcx8uoUPlHH/7qFQU9aj5PmHcJknfTzvQGjhnukgN89?=
 =?us-ascii?Q?ndnvzEuCZFglgt1pfFN/QjxmG4J939UpQB5nojszv7PxneSfQvmf7Orp2DLY?=
 =?us-ascii?Q?E410u0eAu7ofDfJrFAgTzpqYDsmQ3uuvr9+3vI3U2jsCkN6eyEPNUDMV4b5Q?=
 =?us-ascii?Q?FApTf5vdi6DNx+Sw/YvSWTUUt3Ro1yzyqdbc9hSIl2E9pZtvQMQm9a/wMK3/?=
 =?us-ascii?Q?i55Tg25hIl2CABdx/FeEWwZPB1yCwST8AwWlm4YgptYYOA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?C4YEs5x6tbgrwBMZUVhEW3WN3oJhACxRlYZ3CkUw5OrJIHZWS9w284VYo/Ea?=
 =?us-ascii?Q?2aYrK6x2Hq3V2K772XTVBlznJZ4yUNSNvGIvzkj2THWslT05XGHQeEDoQYgC?=
 =?us-ascii?Q?vwRnUmWiSoWmvDbQtWB3fOpCF9wsQ9c90rTho+JoGZrpLBOGJjx/2g2xpF9c?=
 =?us-ascii?Q?Ii/Z88Xbh/z7gg12oCfgBYrsD9LNYIIgF2K1gOCG0jJ5cpWEb1LP63fkhpyD?=
 =?us-ascii?Q?3RbzV28kSJOO0OGT0MD93VVFm/pHAaG8CKnRVg87NY/ksAd0dLwyvw93VbOe?=
 =?us-ascii?Q?bjGISiL0gIJkHMszRerpUkWtB4OWlSZ85aXKWTkoQ8ISd3LwUuk6QgyV7cyc?=
 =?us-ascii?Q?6++Vx3g8UtPhSaFBuAr5CQMDV43uLMBSQ4veBMJeNZNhQwi2fQWNccNJ62hj?=
 =?us-ascii?Q?nnU24IdyQViz1kzJ34NRhsSe9KyPmisw66zlnBM9U5bKyVe1efE3qcEBYqpf?=
 =?us-ascii?Q?HtSQmo4+ngqk47P0skGEeuj3tO5lIgBif1fiEEGDgRGZrsydNAixzm0D/KW0?=
 =?us-ascii?Q?LDDnzui8+lIvugu4Qk7PPkCAFKWF/T/zlMgFXjXmsjp70ZR+6hQYxtI2TRfu?=
 =?us-ascii?Q?YAL5AVWV1xvwXqKc23Fdtzxxstgb8XP4FDOT6qWuLKwaWDJVKSN5CQoQNHkM?=
 =?us-ascii?Q?pQqovYXi77dcljP/dX+0oL9FwQDdR9gGuQqkSgp+VOKdeNufKAFaM8ZhNx/o?=
 =?us-ascii?Q?ESfA9h35faveuwsLgM8kmPZKM8lcwSXNp5E2TwHS4JaX/sQfNSOhMAYm3mrk?=
 =?us-ascii?Q?8SjnQqFDfFrge4f705UTv0hBNuBhiUGNfKS5f+2RBmDVJxWC5Roe7Kj4so2i?=
 =?us-ascii?Q?cx50Cn4g3oDuGrjro26td4zn/Svd0dwpXMYzP5q3mj618mz/3sSQrTwGE9Qe?=
 =?us-ascii?Q?T/znZtTvFtKlLsR8maSNnPKTMYa9JDLaZ7onaDg5d9dXmeV7HVsmq8JsW1PR?=
 =?us-ascii?Q?M5Wk0yyUlbE2oT0MJWAsGFwAXUAG4jmuULR8AW7+T0te53NSarhF3cDxmNCj?=
 =?us-ascii?Q?ArnwlLemWoTJ03x9fqDBDthVYhsHHZ8dOm3ysUJkwk/CUWzcLfVA3SeAKbjv?=
 =?us-ascii?Q?YUaoRoDgo5KJohGZVraqWSaDW0PetCV55GyUC/L6jZLdwCFaidO7L4JSMYGH?=
 =?us-ascii?Q?dv7fdcSj/QNsnvWZYIvrTu1+Rro84nrbMdNY5pbKknu+Bcq2qigOI3v2QvrX?=
 =?us-ascii?Q?t1MlWaX3f1btfZhS8UlW0LuwiKoU2yv0v1I75mCJhVnPiSc8sWlotJ87pv75?=
 =?us-ascii?Q?v9yYrklVwdotAU2APi6ljAxyZ2ULkgUeWJ6Cd26ssVOTFHiggdWBNSm3Ywhu?=
 =?us-ascii?Q?suQN7i6+xDgd9YBHj/QRT87q7Pt/UiadHZyQcANCelQ7duHmGu02sXH7vfnH?=
 =?us-ascii?Q?8uoQt+sVxZ266BY4fyANCduNOJJ9j+kGVaqWlLFWoB8O7GcEf9UYZA6bA3w6?=
 =?us-ascii?Q?QBVMDUURbyzbkgRI1Yur8xnY8A+uulENYy1CIcCFKLEEXHpO6bjIG9ESaYkJ?=
 =?us-ascii?Q?6qxNX+egztwqX2jsD3/0d06+kujUXCzngs7STIo/WzDCt/OISuyN1s6OHP78?=
 =?us-ascii?Q?2671JdpaCu3O8Nsv695JxqPjX9RJazWA42ToBVzRmRulY3u5YpgVPsEQOg2a?=
 =?us-ascii?Q?HA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ed7a07b-df81-4657-46c9-08dd160cfe56
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Dec 2024 15:45:22.1444 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QRDwPzPSiL2VmxMzzG+lxbiBJIugLaR+IwBNfujP0wXlfgRzKz6SLYNJWc7wUmepEJS/HxOCplGQ/3Wx8mom6A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8567
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

On Thu, Dec 05, 2024 at 01:44:13PM +0530, Raag Jadav wrote:
> Log throttle reasons on selftest failure which will be useful for
> debugging.
> 
> Signed-off-by: Raag Jadav <raag.jadav@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/selftest_rps.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
> index dcef8d498919..1e0e59bc69b6 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_rps.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
> @@ -478,8 +478,11 @@ int live_rps_control(void *arg)
>  			min, max, ktime_to_ns(min_dt), ktime_to_ns(max_dt));
>  
>  		if (limit == rps->min_freq) {

I was going to merge this, but then I noticed that this prints only
when the throttle moves that to our min_freq...  When PCODE throttle
the freq, the guaranteed freq can be at any point, not necessarily
to the minimal, so this print is not very effective in the end of the day

> -			pr_err("%s: GPU throttled to minimum!\n",
> -			       engine->name);
> +			u32 throttle = intel_uncore_read(gt->uncore,
> +							 intel_gt_perf_limit_reasons_reg(gt));
> +
> +			pr_err("%s: GPU throttled to minimum frequency with reasons 0x%08x\n",
> +			       engine->name, throttle & GT0_PERF_LIMIT_REASONS_MASK);
>  			show_pstate_limits(rps);
>  			err = -ENODEV;
>  			break;
> -- 
> 2.34.1
> 
