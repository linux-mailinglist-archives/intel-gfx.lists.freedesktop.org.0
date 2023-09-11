Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 999BD79A8D9
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Sep 2023 16:46:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DAFE10E30B;
	Mon, 11 Sep 2023 14:46:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 286FE10E30B
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Sep 2023 14:46:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694443563; x=1725979563;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Z9vWOQCHwQvKdHQYulfv4e4zX/uynwxQzrXz3q1I/t4=;
 b=PKVGkk0qVhTa0j5gH5s3HoH2D2ZQZO+9G5j/4f1/M8U4wDPC068+jiHf
 TQrgJUNm9R2e7zj6YbcfSaCNv6803l150/9qhkSlDxruaScFIQR/Fp4j9
 455HXMGDf3JmhM3ZwvdFOdOheDv8imJ15ncvSDGtpKu/g5+70iDTypRMx
 9Cf4ITwQhNNX+mMX/JviMETSOx1VR7jaRFkxZE/7b6nPrNqM+20qgANGK
 mdUce5G5bSq+GKGx0pWwnnvS/JcSgO4FnKGI6CCQcvwnMV3MhC3QDCDzM
 0qz3h8jW5LqKK8Ykh2q2xphXjrvPHI3mKsLr7aRRO6vw/Hq4G8PhGOQPV A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="464468460"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="464468460"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 07:46:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="858343337"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="858343337"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Sep 2023 07:46:02 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 11 Sep 2023 07:46:01 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 11 Sep 2023 07:46:01 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 11 Sep 2023 07:46:01 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.108)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 11 Sep 2023 07:46:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ncpivNxfCVjNmkENWijnJgrLeXczfmj+LZEmrmsszQojCyQ5qIJxL3+O4Ppp5rCbWcfhdPdpQ4KW6GJriL9eGCSnhpJmw8UJh0QLrEb6EPa2JFgum4vXzC9BueXGFXWDkcdg7hMdicDautqpmqvtMucuuEwTVdPo/jS8dQSpElSUj/69OZOxlarnxMqBOpWmGlcjd25wudu4HPNSQ4F9cBoOKoNVltumtlPIefXvOwoOvEnmQ0KjHCf0ZYl5k5YTiXy4a6sAqjHhzOGK9KiSQ19IfWpxyrL+h4fRj0PpS8PzA5tAprF9eAO8h9GmRTsqbtcvXdEh2FJXj3n/0p2ygA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FSAQjqQx2SwIPVD7xlseIRfioiHlbQ54sE1C/aqstwk=;
 b=T6aUPWsCzbYoqqSYJNgtWftk7P/HzllKrNWce5DyVuyi6SJAyz70AM4tP9xfiLloLqrquNuzUEeaWb/AqRKMFEGfLHdn83rmoFKPO9AcxhtfhhE2MgmpyvLkJeNkAOr04k/wFfIXGxT8nB/Wkwgljmz6DRx0PoQfRVFoQNRqjsYFL1eJcVXgCCF+lDkCE/JjDcCDl30jQp8s57u7MJP+cDY5oD9e1qGeG2I81Ls7B4AyHHXVVBainxDeCbMxxvWS2Ui3hs5jtFd2Puqh3/hHzpZuHZcRbgQerx0XjR5GQWrIo3YDkFFxCTfDkpwsYgkDNCK7yl3pIodshMCRHDMhFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by CH3PR11MB7842.namprd11.prod.outlook.com (2603:10b6:610:128::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.35; Mon, 11 Sep
 2023 14:45:59 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79%5]) with mapi id 15.20.6768.029; Mon, 11 Sep 2023
 14:45:59 +0000
Date: Mon, 11 Sep 2023 09:45:56 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <wetll4dmmg36536akmjgdotyiai73nsljllumo7foyac4z5g6e@p2o6lxujxpfp>
References: <20230911123305.1682554-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230911123305.1682554-1-jani.nikula@intel.com>
X-ClientProxiedBy: BY3PR05CA0027.namprd05.prod.outlook.com
 (2603:10b6:a03:254::32) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|CH3PR11MB7842:EE_
X-MS-Office365-Filtering-Correlation-Id: ed9cca9f-8863-4c2e-10e6-08dbb2d5cfe5
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tU5qnbdLgaJI63iDxPzuh1m/9aWd4y67RB8GhpT+3pdTFIv/gPWqcdUozPInyjPb/ny7Blc7NGWOppRJ7cx9pq6FDtfRRqFhrydPqymDn6r48Wo7q1DIKsiuTcXmsCT3bZSLyDZ6mu2Xl+V3HPb5OR0ETR5b3smiRKQbEIZatRAW5/Q0zf+GE15zU+3LHtDooACtWz4WnwtaaHFWB7hMIuiBZYhYZK/nJLU6ro/A6+FtyP+0UROqz7/Vnk+lcRO9E8uWruCTcsiS8/O+aHW62fRXluTV34N7ruEB82aA0b/fGWpTMA6ypl81zihSJhWjKA+n1I1kx3AqhDfsm4v7A58WfUlYYa7L7OYHenG4SU36Ns5CW4D4Xxd1PtekrXOWMSwa9KADWfmSbJm55icWRaQfO9LIn5tvA6ifRyrq9NkJB/cSIX4fsvx70qHie6EofTClZ0HBYYl386qDv455Vd5mqlGy/wLt+BxVqZFP/5JUn2aUqzZa8Iy5eWl7lgkh1StNZfu2wyyEmAQDJX7A5Sg4WSnx4NDjeC1FkgW5fFXm+PMDuGXxHWF34On9koAh
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(396003)(376002)(346002)(136003)(366004)(39860400002)(1800799009)(186009)(451199024)(41300700001)(6486002)(6506007)(6666004)(86362001)(38100700002)(82960400001)(2906002)(6512007)(9686003)(83380400001)(478600001)(6862004)(6636002)(316002)(8936002)(8676002)(4326008)(5660300002)(33716001)(26005)(66946007)(66556008)(66476007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?H1MqKtt68LEPQ/CLklWM2jGmuPlzhkUkj+YqS4XUnPrrS/ozIGrKnPYU4TJp?=
 =?us-ascii?Q?r8g0eU4mMLLWtA2CoazY/NmBaN/pbgbZ7QeRtDRwmdmy0maextNdxYDM03ck?=
 =?us-ascii?Q?trlcZU1FFK+fREBvYP+wLvY1RzPuWCInY0qO7eDlrW+jCvgiP0WCRVXA+Gaq?=
 =?us-ascii?Q?Cgf0uh7CyxaIlil46cMZaqjkxTbdp6XwYPGIHOp+p5HJf3OPlRpZPiV192In?=
 =?us-ascii?Q?o2Re+q2fR35UMOeZGHr4K+Vn8k/tQT8iU/d4/HFj7da/7tRuTzXwSL2fqVFL?=
 =?us-ascii?Q?FsBluND+NtcpBXg4RZWJZwc8biWRjyd9+fGl6HrqTWV2ghXjQRrhtFCYi4yJ?=
 =?us-ascii?Q?VRAAEW1QcqRWvJuE2vrfFn/QI8o4j/9+cOJcLNUjo5unq1Fwf+Bi25p/qgvG?=
 =?us-ascii?Q?eT5WRTBWZZcczip5Fr7TmaAbVLJZu1aRW4ZjRb8CgiJvPC5MN0v/LEhyaL0O?=
 =?us-ascii?Q?YmXnqevOcwzt8a+zBSBVMUHxcnNyHu22iG+wo6+pCBrfdbTyDCipiQhQfaoM?=
 =?us-ascii?Q?fmNynnOPNzZpU+38++s+QJwx7sIdPy/Kt1dFIkLkf0RrLzAqI0rK/4OSE/6N?=
 =?us-ascii?Q?198zgro4e9nk76zsG2NbZT4YDxRqJqPHfFXn4LbMKmmv0wFNcSil1EhjrGxg?=
 =?us-ascii?Q?USP4C/HQmhrGgkUS5OarxxwzusroC9dY49aKdgQUvnfMqWrk08sPyOA1HNsh?=
 =?us-ascii?Q?AHBcezUKIivesCvXMzwneTi4OZiW9XvrZWliLcb7Bqv4XGXbXuaNgp5r6s0s?=
 =?us-ascii?Q?vLjg7x78wNo/xQ6hAnGn80K2PDoE71BZe4aPdwkgB9qrkV2YiGbaG27eB3eA?=
 =?us-ascii?Q?pES6l2Bj+j6Y9fg/I3CIsGw/RohkbuVRo51p7NkGaVuiqnZ2xpOWR3yxVYpK?=
 =?us-ascii?Q?G0pKzr+VBd40+biAsciYipZhuL8Jktdg4ZRfQo7lcNlnUK4roz2D7fDBVWQb?=
 =?us-ascii?Q?4C7pPv7Zg2N5qhl9q6z2Lmkq2qhhXdoLjyUMAUABbPZwedHHSKCTRGCBM3CW?=
 =?us-ascii?Q?34vbmTOnBKweIv0MFTykSo92e+TdFG0VLukU2jdIIDoPeKRz93V9G4rHxVFj?=
 =?us-ascii?Q?/7OtYOAYAY+pjvInxf8T37g823oGgUIRq5DQwtrcrbZmIGxF3v/ys8+9UmlN?=
 =?us-ascii?Q?ubKvdNEOVwMoxCZjqUv24eAu0Vg7rH4O0zvG6J5LuV2Jh9dxNDnLSeC+uEMK?=
 =?us-ascii?Q?JKTi6yH7EfeGp+4vYSKcJIcAqnuW7E4TJPYUspulO/R0JxNaUfgti0xMhfGS?=
 =?us-ascii?Q?Ly2fB2lVchuKOOxOR7lZeY3ZT39vBA8LVaTKo+27vvPrKUc2W9vSp29RzMjG?=
 =?us-ascii?Q?w+FCX/DMjezYNgmDZ/rfs1rF2N2/Mp+FXwVtPzVBWdb3b7bZfzxiselloD+f?=
 =?us-ascii?Q?hJeyRb5tU+4g9rNTxVa090p6bPwAwHR9bGUWAE08oqWMxICbwAyqSV94HGOv?=
 =?us-ascii?Q?xOXWnVU3wevStyknFIFAsLr7yHfc6/Ikdgu+Dqm02FazBVUhb9no5n7ZXnXY?=
 =?us-ascii?Q?F/yXYM8zvwYgWFXZ9FXfyZuRupaXHnm/ZsulGvvqknEOT4jQ4mOGS8t/yBF8?=
 =?us-ascii?Q?Hl8zlvv3DaZ1KblLVcATmQtJy1k4mq1w2yLeqG6To118Vm9SsiTPgBsJ6Hs1?=
 =?us-ascii?Q?Kw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ed9cca9f-8863-4c2e-10e6-08dbb2d5cfe5
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Sep 2023 14:45:59.0714 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rotcAsWjiAfXQ8+2WEvBxV4itqIemSWVLvowkH4PFPz74X10GCoKD6Vh7rcQcAG522ObacPKa4szQo/PZQeEEnBYZa0u6hSXFK1YtYNkSeI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7842
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: rename DBG() to GTT_TRACE()
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

On Mon, Sep 11, 2023 at 03:33:05PM +0300, Jani Nikula wrote:
>intel_gtt.h is indirectly included absolutely everywhere in the
>driver. DBG() is too short a name. Rename it GTT_TRACE() after
>GEM_TRACE().
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>---
> drivers/gpu/drm/i915/gt/gen8_ppgtt.c | 36 ++++++++++++++--------------

I like the new name. However since this is the only file actually using
it, why not move the define there too?

Other than that,

	Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

thanks
Lucas De Marchi

> drivers/gpu/drm/i915/gt/intel_gtt.h  |  4 ++--
> 2 files changed, 20 insertions(+), 20 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
>index c8568e5d1147..9895e18df043 100644
>--- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
>+++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
>@@ -242,9 +242,9 @@ static u64 __gen8_ppgtt_clear(struct i915_address_space * const vm,
> 	GEM_BUG_ON(end > vm->total >> GEN8_PTE_SHIFT);
>
> 	len = gen8_pd_range(start, end, lvl--, &idx);
>-	DBG("%s(%p):{ lvl:%d, start:%llx, end:%llx, idx:%d, len:%d, used:%d }\n",
>-	    __func__, vm, lvl + 1, start, end,
>-	    idx, len, atomic_read(px_used(pd)));
>+	GTT_TRACE("%s(%p):{ lvl:%d, start:%llx, end:%llx, idx:%d, len:%d, used:%d }\n",
>+		  __func__, vm, lvl + 1, start, end,
>+		  idx, len, atomic_read(px_used(pd)));
> 	GEM_BUG_ON(!len || len >= atomic_read(px_used(pd)));
>
> 	do {
>@@ -252,8 +252,8 @@ static u64 __gen8_ppgtt_clear(struct i915_address_space * const vm,
>
> 		if (atomic_fetch_inc(&pt->used) >> gen8_pd_shift(1) &&
> 		    gen8_pd_contains(start, end, lvl)) {
>-			DBG("%s(%p):{ lvl:%d, idx:%d, start:%llx, end:%llx } removing pd\n",
>-			    __func__, vm, lvl + 1, idx, start, end);
>+			GTT_TRACE("%s(%p):{ lvl:%d, idx:%d, start:%llx, end:%llx } removing pd\n",
>+				  __func__, vm, lvl + 1, idx, start, end);
> 			clear_pd_entry(pd, idx, scratch);
> 			__gen8_ppgtt_cleanup(vm, as_pd(pt), I915_PDES, lvl);
> 			start += (u64)I915_PDES << gen8_pd_shift(lvl);
>@@ -270,10 +270,10 @@ static u64 __gen8_ppgtt_clear(struct i915_address_space * const vm,
> 			u64 *vaddr;
>
> 			count = gen8_pt_count(start, end);
>-			DBG("%s(%p):{ lvl:%d, start:%llx, end:%llx, idx:%d, len:%d, used:%d } removing pte\n",
>-			    __func__, vm, lvl, start, end,
>-			    gen8_pd_index(start, 0), count,
>-			    atomic_read(&pt->used));
>+			GTT_TRACE("%s(%p):{ lvl:%d, start:%llx, end:%llx, idx:%d, len:%d, used:%d } removing pte\n",
>+				  __func__, vm, lvl, start, end,
>+				  gen8_pd_index(start, 0), count,
>+				  atomic_read(&pt->used));
> 			GEM_BUG_ON(!count || count >= atomic_read(&pt->used));
>
> 			num_ptes = count;
>@@ -325,9 +325,9 @@ static void __gen8_ppgtt_alloc(struct i915_address_space * const vm,
> 	GEM_BUG_ON(end > vm->total >> GEN8_PTE_SHIFT);
>
> 	len = gen8_pd_range(*start, end, lvl--, &idx);
>-	DBG("%s(%p):{ lvl:%d, start:%llx, end:%llx, idx:%d, len:%d, used:%d }\n",
>-	    __func__, vm, lvl + 1, *start, end,
>-	    idx, len, atomic_read(px_used(pd)));
>+	GTT_TRACE("%s(%p):{ lvl:%d, start:%llx, end:%llx, idx:%d, len:%d, used:%d }\n",
>+		  __func__, vm, lvl + 1, *start, end,
>+		  idx, len, atomic_read(px_used(pd)));
> 	GEM_BUG_ON(!len || (idx + len - 1) >> gen8_pd_shift(1));
>
> 	spin_lock(&pd->lock);
>@@ -338,8 +338,8 @@ static void __gen8_ppgtt_alloc(struct i915_address_space * const vm,
> 		if (!pt) {
> 			spin_unlock(&pd->lock);
>
>-			DBG("%s(%p):{ lvl:%d, idx:%d } allocating new tree\n",
>-			    __func__, vm, lvl + 1, idx);
>+			GTT_TRACE("%s(%p):{ lvl:%d, idx:%d } allocating new tree\n",
>+				  __func__, vm, lvl + 1, idx);
>
> 			pt = stash->pt[!!lvl];
> 			__i915_gem_object_pin_pages(pt->base);
>@@ -369,10 +369,10 @@ static void __gen8_ppgtt_alloc(struct i915_address_space * const vm,
> 		} else {
> 			unsigned int count = gen8_pt_count(*start, end);
>
>-			DBG("%s(%p):{ lvl:%d, start:%llx, end:%llx, idx:%d, len:%d, used:%d } inserting pte\n",
>-			    __func__, vm, lvl, *start, end,
>-			    gen8_pd_index(*start, 0), count,
>-			    atomic_read(&pt->used));
>+			GTT_TRACE("%s(%p):{ lvl:%d, start:%llx, end:%llx, idx:%d, len:%d, used:%d } inserting pte\n",
>+				  __func__, vm, lvl, *start, end,
>+				  gen8_pd_index(*start, 0), count,
>+				  atomic_read(&pt->used));
>
> 			atomic_add(count, &pt->used);
> 			/* All other pdes may be simultaneously removed */
>diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
>index 4d6296cdbcfd..346ec8ec2edd 100644
>--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
>+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
>@@ -35,9 +35,9 @@
> #define I915_GFP_ALLOW_FAIL (GFP_KERNEL | __GFP_RETRY_MAYFAIL | __GFP_NOWARN)
>
> #if IS_ENABLED(CONFIG_DRM_I915_TRACE_GTT)
>-#define DBG(...) trace_printk(__VA_ARGS__)
>+#define GTT_TRACE(...) trace_printk(__VA_ARGS__)
> #else
>-#define DBG(...)
>+#define GTT_TRACE(...)
> #endif
>
> #define NALLOC 3 /* 1 normal, 1 for concurrent threads, 1 for preallocation */
>-- 
>2.39.2
>
