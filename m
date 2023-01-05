Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6957065F53E
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Jan 2023 21:32:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96F6B10E80F;
	Thu,  5 Jan 2023 20:32:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3E6310E80E
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Jan 2023 20:32:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672950758; x=1704486758;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=IkjnYR62nQWNAF8Iu2nOhcbXk4VisSH6fah98q6S1s0=;
 b=WesHuKZCazsQEGfQEUGtMbnLBG5bf+QC5gkb/LiCXY8Y28T5gaNvojEO
 ueniigXdiIl+AfCZBLF8Fhm46aLg6JG1Ha/gnX6MZCI4blYV3iz3hqpuI
 95tkps6FjxvLg2cGyV7G2SwaHyFB8kGEkACnh1g9IWWbOWdQuOY067y1k
 PtTxI/OUEEBut0CvA232a40D50ul4isoDrxuvtAVO77IZWaRXcSg/knUZ
 OUYmfSKLxptNMeRx6pWmJy23xTOd+sWqhBA5crpIWB+0pQ4lazawjujCL
 Q+rHBAyBpv6r5eknh/Vzq15kRQXuq/aQEARtK42T5R1AXyS1v2S9eE2kv w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10581"; a="349533683"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="349533683"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 12:32:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10581"; a="686251246"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="686251246"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga008.jf.intel.com with ESMTP; 05 Jan 2023 12:32:36 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 5 Jan 2023 12:32:36 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 5 Jan 2023 12:32:36 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 5 Jan 2023 12:32:36 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 5 Jan 2023 12:32:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j63v/C5EuUYcQCVYix2hfVn+StVoa7TcseEnp4z0ndgsEJCEhQ3RlD7ucOLWDuuezBHvfABqinY6WNDHvnITrPkRa93zXWcxiwpLhHsuN5A0LMZqBVGfz1646jfqhY+Uie0Dj4m8fjkt95nE985IuFhl54ycgk8iwjCzZChEKc886ubjl/Zwd3Og7Y6jpz7WZ4bNE3ISDPNKE3fhTB3+eU2tIXeAjIzF+R5wXq+majra6EQmSqhZQFlkvvY1LGwZq/K3penhSiNegmBYIecApxoOW1z0gYMsr2LXEQI4HOgfcwSBrb3OdKudcTNUooYDtAHb2wmu0JG7R5MND8n5DQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ja2LNN3W2z5mpuUjWVgnkrM8GUI3UKZ/YhjfBjNz7es=;
 b=apwMjUqGWRTNle/eZ+XS9VjWIfWcZmDtqr3OGay6lV4ooL0Egpplp2Elcy9B0/3v19HmgbyO9NMdY55EK9xOvyq3EnUftvVzrAFxeB9izKZPxRJMyhCY/CLiS3G4ko9a4710qIjgTPrKZyaEUhe+n2fd1kKVuxN0DxtwOh022fA9vm+kvSeQs2bOnBrDHGa2YyEG4lI6CEX1NZ/ZsirWzbZWQbyRGEtkBiivzsxYXTdxVVzp8l0kwT/1m1o82JWa3Fjr4vBtYdN2Mx/2N2zYIcF+cEIi3pS7diQm58os2PVJFZw8rYsK1MTJZmcTMIO4R3OmLiSis4aTB8ayDXCZTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH7PR11MB7641.namprd11.prod.outlook.com (2603:10b6:510:27b::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Thu, 5 Jan
 2023 20:32:33 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808%8]) with mapi id 15.20.5944.019; Thu, 5 Jan 2023
 20:32:33 +0000
Date: Thu, 5 Jan 2023 15:32:28 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <Y7cz3LwaEcZOYZbv@intel.com>
References: <20230105131046.2173431-1-andrzej.hajda@intel.com>
 <20230105131046.2173431-3-andrzej.hajda@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230105131046.2173431-3-andrzej.hajda@intel.com>
X-ClientProxiedBy: SJ0PR03CA0164.namprd03.prod.outlook.com
 (2603:10b6:a03:338::19) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH7PR11MB7641:EE_
X-MS-Office365-Filtering-Correlation-Id: 2c27241b-fe74-4c8b-cf97-08daef5bf925
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kGo9QcBtFxnjHDJQ3ba2dEecdywXyp2y2izWpnhEr3jG1UPi9P0PnmDVKPji17v10sYewgrWvIY0Z70CXAx3QAxvRTA3QXDdnKT/uUFEbdMVbgFC6RKbWQJ82ei0urN0k4gM7dDmklVPslS0n1mzotaIhorq4+XDpeQH2Bwdps62v2RhKWKPf5dtvqPJNN8nbYce1DcQQejXJO61rCWyRwObqfKrB8EgbrDai2eMLrxj/RNG67+B2eEr+JP5Voj3xjkBup/wnHAwFJNOHz24h9sxeb16DOnL9kjuS/E9qpJs8t5HjAm2bcYElOaNkgDY7e/eQhh3lq0ULXl/P3fBQrUcoitPxYnT8sV0k4kCj2FP9n4MRHtQTmloFHEjwsYqGMqJH9Kt/zuNSQiQwYWAyq77Wo0SX5U5DgSMjOdqIvgllwxpsy2f9cMmsKpxycp7+LTgLeA0PynHbx75/373Bk1G+JdapWbD8+3cAEN3UxseOLEKiMhEI5Z6zUNRTP9dfzM5lgkSB0uPiOllRdnSMKYoYztkzac4s2Zq/LAEw9jyJOvgBNGv8DaG2fGtqHGAjzXzQh0iWS12ydDwbnJ/2+q7I+Dzbp5w+yNohzHcLwFnqfxLEu6q+1wxrTea9jxnt68lP630h09cEbFmO/BySw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(376002)(39860400002)(136003)(396003)(366004)(451199015)(8676002)(6862004)(5660300002)(316002)(478600001)(66476007)(66556008)(6666004)(66946007)(4326008)(41300700001)(8936002)(6486002)(2906002)(37006003)(6636002)(54906003)(6506007)(30864003)(38100700002)(186003)(26005)(6512007)(82960400001)(2616005)(36756003)(44832011)(86362001)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?kQ1nRAhyGE60NGcB4o0/d1cOPseC0m8SuMXnlUAUujXiUGMCNN2B3Wsc66k4?=
 =?us-ascii?Q?mKo9yck6dbfZsPwrayhpALnXG8HQ3yM251cRuTS4it7xzWHXSmgZnPQpgDEN?=
 =?us-ascii?Q?NEeaZD+TbZF4O8hDW0IFEkYsydAvdSa7/d6q9DKmgjCLN00xjvo/iLH71lik?=
 =?us-ascii?Q?VeeVf/CqGkVVqaWJPOU38Zd83OQKRSeqncMn7WMGu93kog6VQelU81C5gOqR?=
 =?us-ascii?Q?GNjBLa0Dyb7z3jFST0n6gu9+OWjrlj7OOKB67bWhieEu0DxJfY4ecNXRNC7v?=
 =?us-ascii?Q?t2NZ/4xNKqyNaqlfCecdQ/9bmII5EQr9HvasQR6n0TUJ4gm9yFLGwFNp9qap?=
 =?us-ascii?Q?3mFxmgmzcZ2oQq3EdEsPHZnhNkqZ1beDTLxU+fms9RSM+Pkem6IuXlc5Ta85?=
 =?us-ascii?Q?qfbMe9KDrYvUqx/WRS9/yZq0DQPOnFucgmJeb8s7eqLmM5QBh/ALzmy2fWwv?=
 =?us-ascii?Q?2XG4hNWIHIOID8I2PCe5AHCJL9ugX+5wYfdTQtTI1vetJzrd2ys495GMrtzM?=
 =?us-ascii?Q?PTsEfYOyPna6kRBxpiU5jklxo5fw8LNsN63RtuDwGzFnp3oOden7wPgMlGa3?=
 =?us-ascii?Q?N1cK0ln19ZRbhZA5GGjaCMztaqdFOruF2Etw+NltKUKs/fd2WJt4udcQWHYu?=
 =?us-ascii?Q?1pCJrXwjnTx6f/HLdFtWRcBLKpsGD3KzBBCEGGGSwZ49bnUStKfyo4zUpcS0?=
 =?us-ascii?Q?LTHVMsqvZ3PXau9Z1tMcdTRkWYDrKEe8GKR0ZL584TXA9G79HZBhrIOIDicp?=
 =?us-ascii?Q?+1eQ6t+8hk0tWyQMGyiSIZd18Qlr+lZw+pRsY34FvX80U5SHoeUd/dsxcNBC?=
 =?us-ascii?Q?lQqSfFTlN08zXz4Nc03SvM+X5PPGIGPT2Ahow2sl+VKZlkPGQgPR93FPOZv5?=
 =?us-ascii?Q?S31Qu3fooMmA381p2tBOU2aKSla7LgoAIHjj0Xmvx4wBcpmhJfCk9cKNHt54?=
 =?us-ascii?Q?fMKBUytQZKnpT8BIcOdqRAJD4ZQ2h7uAxNlB2pF5WCebiiSP5ORn/0Drvidc?=
 =?us-ascii?Q?OzwjgOPAg4BE6zjQcPRh7UCUrHKii0vITX2O4CnNj7SyXYHqJa1RnR6akylb?=
 =?us-ascii?Q?Ru4MLhul/uPwIgH/PdC9SDA5MeM//PoY+dzlV1551E86qMZOkHhYn4eVeZ7P?=
 =?us-ascii?Q?rumDRyPHRibf9790JRGAyzqdCe4dJlBkvU4/J3L9xujjVQda0hLz5OWEkhDg?=
 =?us-ascii?Q?iP23ZeTbHADZnIpLvaGdnOgK5EMVOgPGude/VOJAltkRLXfM0Yhpy6kZhg+1?=
 =?us-ascii?Q?2N5xMQlGfFAsdxR1oC00JPTMUWVS2O7qi/tEO45qcy/k78UTziVuN5ppUeMT?=
 =?us-ascii?Q?sKhLPaIv4YuaAcVdFr8MQA/CQlG9YGWBBeBnadXkDmHh7IJA86gTFX1XA2Dw?=
 =?us-ascii?Q?HgRQtajhSRqMJopp3LTP1Pzs3eHu/S+pCOpXnv8ALAZ16KLShaRYfbx8KMEM?=
 =?us-ascii?Q?rFDH8qSaNEpu230WqbuhUOyAq/9T0yN06Ja0r/x6n7Wvw+wU2Rt455OiH1Nk?=
 =?us-ascii?Q?A633pkm5onxgxV8sDWOiKgpHWQcXT0K251JifsYkOtv6MoYPSw/6/bh69bge?=
 =?us-ascii?Q?p9GcPYDn9SCvMmaooVd+aKXVaJW90DweN0oyNcqal7fx+Eb2oHKS+CyK+fxV?=
 =?us-ascii?Q?6Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c27241b-fe74-4c8b-cf97-08daef5bf925
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jan 2023 20:32:32.9913 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BL6H7drQ8fmMWqUdAp70cD7eCmjwW3BRNa4sZxajtXd347nmvuRN/f9AkCTIVhP5LRx3kI/JTv/Kk1zkOxd0VA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7641
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 3/9] drm/i915/display/dpll: use
 intel_de_rmw if possible
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

On Thu, Jan 05, 2023 at 02:10:40PM +0100, Andrzej Hajda wrote:
> The helper makes the code more compact and readable.
> 
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 165 ++++++------------
>  1 file changed, 53 insertions(+), 112 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 1974eb580ed198..e9215ebcdfc44d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -608,10 +608,8 @@ static void hsw_ddi_wrpll_disable(struct drm_i915_private *dev_priv,
>  				  struct intel_shared_dpll *pll)
>  {
>  	const enum intel_dpll_id id = pll->info->id;
> -	u32 val;
>  
> -	val = intel_de_read(dev_priv, WRPLL_CTL(id));
> -	intel_de_write(dev_priv, WRPLL_CTL(id), val & ~WRPLL_PLL_ENABLE);
> +	intel_de_rmw(dev_priv, WRPLL_CTL(id), WRPLL_PLL_ENABLE, 0);
>  	intel_de_posting_read(dev_priv, WRPLL_CTL(id));
>  
>  	/*
> @@ -626,10 +624,8 @@ static void hsw_ddi_spll_disable(struct drm_i915_private *dev_priv,
>  				 struct intel_shared_dpll *pll)
>  {
>  	enum intel_dpll_id id = pll->info->id;
> -	u32 val;
>  
> -	val = intel_de_read(dev_priv, SPLL_CTL);
> -	intel_de_write(dev_priv, SPLL_CTL, val & ~SPLL_PLL_ENABLE);
> +	intel_de_rmw(dev_priv, SPLL_CTL, SPLL_PLL_ENABLE, 0);
>  	intel_de_posting_read(dev_priv, SPLL_CTL);
>  
>  	/*
> @@ -1238,16 +1234,10 @@ static void skl_ddi_pll_write_ctrl1(struct drm_i915_private *dev_priv,
>  				    struct intel_shared_dpll *pll)
>  {
>  	const enum intel_dpll_id id = pll->info->id;
> -	u32 val;
>  
> -	val = intel_de_read(dev_priv, DPLL_CTRL1);
> -
> -	val &= ~(DPLL_CTRL1_HDMI_MODE(id) |
> -		 DPLL_CTRL1_SSC(id) |
> -		 DPLL_CTRL1_LINK_RATE_MASK(id));
> -	val |= pll->state.hw_state.ctrl1 << (id * 6);
> -
> -	intel_de_write(dev_priv, DPLL_CTRL1, val);
> +	intel_de_rmw(dev_priv, DPLL_CTRL1,
> +		     DPLL_CTRL1_HDMI_MODE(id) | DPLL_CTRL1_SSC(id) | DPLL_CTRL1_LINK_RATE_MASK(id),
> +		     pll->state.hw_state.ctrl1 << (id * 6));
>  	intel_de_posting_read(dev_priv, DPLL_CTRL1);
>  }
>  
> @@ -1265,8 +1255,7 @@ static void skl_ddi_pll_enable(struct drm_i915_private *dev_priv,
>  	intel_de_posting_read(dev_priv, regs[id].cfgcr2);
>  
>  	/* the enable bit is always bit 31 */
> -	intel_de_write(dev_priv, regs[id].ctl,
> -		       intel_de_read(dev_priv, regs[id].ctl) | LCPLL_PLL_ENABLE);
> +	intel_de_rmw(dev_priv, regs[id].ctl, 0, LCPLL_PLL_ENABLE);
>  
>  	if (intel_de_wait_for_set(dev_priv, DPLL_STATUS, DPLL_LOCK(id), 5))
>  		drm_err(&dev_priv->drm, "DPLL %d not locked\n", id);
> @@ -1285,8 +1274,7 @@ static void skl_ddi_pll_disable(struct drm_i915_private *dev_priv,
>  	const enum intel_dpll_id id = pll->info->id;
>  
>  	/* the enable bit is always bit 31 */
> -	intel_de_write(dev_priv, regs[id].ctl,
> -		       intel_de_read(dev_priv, regs[id].ctl) & ~LCPLL_PLL_ENABLE);
> +	intel_de_rmw(dev_priv, regs[id].ctl, LCPLL_PLL_ENABLE, 0);
>  	intel_de_posting_read(dev_priv, regs[id].ctl);
>  }
>  
> @@ -1902,14 +1890,11 @@ static void bxt_ddi_pll_enable(struct drm_i915_private *dev_priv,
>  	bxt_port_to_phy_channel(dev_priv, port, &phy, &ch);
>  
>  	/* Non-SSC reference */
> -	temp = intel_de_read(dev_priv, BXT_PORT_PLL_ENABLE(port));
> -	temp |= PORT_PLL_REF_SEL;
> -	intel_de_write(dev_priv, BXT_PORT_PLL_ENABLE(port), temp);
> +	intel_de_rmw(dev_priv, BXT_PORT_PLL_ENABLE(port), 0, PORT_PLL_REF_SEL);
>  
>  	if (IS_GEMINILAKE(dev_priv)) {
> -		temp = intel_de_read(dev_priv, BXT_PORT_PLL_ENABLE(port));
> -		temp |= PORT_PLL_POWER_ENABLE;
> -		intel_de_write(dev_priv, BXT_PORT_PLL_ENABLE(port), temp);
> +		intel_de_rmw(dev_priv, BXT_PORT_PLL_ENABLE(port),
> +			     0, PORT_PLL_POWER_ENABLE);
>  
>  		if (wait_for_us((intel_de_read(dev_priv, BXT_PORT_PLL_ENABLE(port)) &
>  				 PORT_PLL_POWER_STATE), 200))
> @@ -1918,39 +1903,28 @@ static void bxt_ddi_pll_enable(struct drm_i915_private *dev_priv,
>  	}
>  
>  	/* Disable 10 bit clock */
> -	temp = intel_de_read(dev_priv, BXT_PORT_PLL_EBB_4(phy, ch));
> -	temp &= ~PORT_PLL_10BIT_CLK_ENABLE;
> -	intel_de_write(dev_priv, BXT_PORT_PLL_EBB_4(phy, ch), temp);
> +	intel_de_rmw(dev_priv, BXT_PORT_PLL_EBB_4(phy, ch),
> +		     PORT_PLL_10BIT_CLK_ENABLE, 0);
>  
>  	/* Write P1 & P2 */
> -	temp = intel_de_read(dev_priv, BXT_PORT_PLL_EBB_0(phy, ch));
> -	temp &= ~(PORT_PLL_P1_MASK | PORT_PLL_P2_MASK);
> -	temp |= pll->state.hw_state.ebb0;
> -	intel_de_write(dev_priv, BXT_PORT_PLL_EBB_0(phy, ch), temp);
> +	intel_de_rmw(dev_priv, BXT_PORT_PLL_EBB_0(phy, ch),
> +		     PORT_PLL_P1_MASK | PORT_PLL_P2_MASK, pll->state.hw_state.ebb0);
>  
>  	/* Write M2 integer */
> -	temp = intel_de_read(dev_priv, BXT_PORT_PLL(phy, ch, 0));
> -	temp &= ~PORT_PLL_M2_INT_MASK;
> -	temp |= pll->state.hw_state.pll0;
> -	intel_de_write(dev_priv, BXT_PORT_PLL(phy, ch, 0), temp);
> +	intel_de_rmw(dev_priv, BXT_PORT_PLL(phy, ch, 0),
> +		     PORT_PLL_M2_INT_MASK, pll->state.hw_state.pll0);
>  
>  	/* Write N */
> -	temp = intel_de_read(dev_priv, BXT_PORT_PLL(phy, ch, 1));
> -	temp &= ~PORT_PLL_N_MASK;
> -	temp |= pll->state.hw_state.pll1;
> -	intel_de_write(dev_priv, BXT_PORT_PLL(phy, ch, 1), temp);
> +	intel_de_rmw(dev_priv, BXT_PORT_PLL(phy, ch, 1),
> +		     PORT_PLL_N_MASK, pll->state.hw_state.pll1);
>  
>  	/* Write M2 fraction */
> -	temp = intel_de_read(dev_priv, BXT_PORT_PLL(phy, ch, 2));
> -	temp &= ~PORT_PLL_M2_FRAC_MASK;
> -	temp |= pll->state.hw_state.pll2;
> -	intel_de_write(dev_priv, BXT_PORT_PLL(phy, ch, 2), temp);
> +	intel_de_rmw(dev_priv, BXT_PORT_PLL(phy, ch, 2),
> +		     PORT_PLL_M2_FRAC_MASK, pll->state.hw_state.pll2);
>  
>  	/* Write M2 fraction enable */
> -	temp = intel_de_read(dev_priv, BXT_PORT_PLL(phy, ch, 3));
> -	temp &= ~PORT_PLL_M2_FRAC_ENABLE;
> -	temp |= pll->state.hw_state.pll3;
> -	intel_de_write(dev_priv, BXT_PORT_PLL(phy, ch, 3), temp);
> +	intel_de_rmw(dev_priv, BXT_PORT_PLL(phy, ch, 3),
> +		     PORT_PLL_M2_FRAC_ENABLE, pll->state.hw_state.pll3);
>  
>  	/* Write coeff */
>  	temp = intel_de_read(dev_priv, BXT_PORT_PLL(phy, ch, 6));
> @@ -1961,15 +1935,11 @@ static void bxt_ddi_pll_enable(struct drm_i915_private *dev_priv,
>  	intel_de_write(dev_priv, BXT_PORT_PLL(phy, ch, 6), temp);
>  
>  	/* Write calibration val */
> -	temp = intel_de_read(dev_priv, BXT_PORT_PLL(phy, ch, 8));
> -	temp &= ~PORT_PLL_TARGET_CNT_MASK;
> -	temp |= pll->state.hw_state.pll8;
> -	intel_de_write(dev_priv, BXT_PORT_PLL(phy, ch, 8), temp);
> +	intel_de_rmw(dev_priv, BXT_PORT_PLL(phy, ch, 8),
> +		     PORT_PLL_TARGET_CNT_MASK, pll->state.hw_state.pll8);
>  
> -	temp = intel_de_read(dev_priv, BXT_PORT_PLL(phy, ch, 9));
> -	temp &= ~PORT_PLL_LOCK_THRESHOLD_MASK;
> -	temp |= pll->state.hw_state.pll9;
> -	intel_de_write(dev_priv, BXT_PORT_PLL(phy, ch, 9), temp);
> +	intel_de_rmw(dev_priv, BXT_PORT_PLL(phy, ch, 9),
> +		     PORT_PLL_LOCK_THRESHOLD_MASK, pll->state.hw_state.pll9);
>  
>  	temp = intel_de_read(dev_priv, BXT_PORT_PLL(phy, ch, 10));
>  	temp &= ~PORT_PLL_DCO_AMP_OVR_EN_H;
> @@ -1986,9 +1956,7 @@ static void bxt_ddi_pll_enable(struct drm_i915_private *dev_priv,
>  	intel_de_write(dev_priv, BXT_PORT_PLL_EBB_4(phy, ch), temp);
>  
>  	/* Enable PLL */
> -	temp = intel_de_read(dev_priv, BXT_PORT_PLL_ENABLE(port));
> -	temp |= PORT_PLL_ENABLE;
> -	intel_de_write(dev_priv, BXT_PORT_PLL_ENABLE(port), temp);
> +	intel_de_rmw(dev_priv, BXT_PORT_PLL_ENABLE(port), 0, PORT_PLL_ENABLE);
>  	intel_de_posting_read(dev_priv, BXT_PORT_PLL_ENABLE(port));
>  
>  	if (wait_for_us((intel_de_read(dev_priv, BXT_PORT_PLL_ENABLE(port)) & PORT_PLL_LOCK),
> @@ -2016,17 +1984,13 @@ static void bxt_ddi_pll_disable(struct drm_i915_private *dev_priv,
>  					struct intel_shared_dpll *pll)
>  {
>  	enum port port = (enum port)pll->info->id; /* 1:1 port->PLL mapping */
> -	u32 temp;
>  
> -	temp = intel_de_read(dev_priv, BXT_PORT_PLL_ENABLE(port));
> -	temp &= ~PORT_PLL_ENABLE;
> -	intel_de_write(dev_priv, BXT_PORT_PLL_ENABLE(port), temp);
> +	intel_de_rmw(dev_priv, BXT_PORT_PLL_ENABLE(port), PORT_PLL_ENABLE, 0);
>  	intel_de_posting_read(dev_priv, BXT_PORT_PLL_ENABLE(port));
>  
>  	if (IS_GEMINILAKE(dev_priv)) {
> -		temp = intel_de_read(dev_priv, BXT_PORT_PLL_ENABLE(port));
> -		temp &= ~PORT_PLL_POWER_ENABLE;
> -		intel_de_write(dev_priv, BXT_PORT_PLL_ENABLE(port), temp);
> +		intel_de_rmw(dev_priv, BXT_PORT_PLL_ENABLE(port),
> +			     PORT_PLL_POWER_ENABLE, 0);
>  
>  		if (wait_for_us(!(intel_de_read(dev_priv, BXT_PORT_PLL_ENABLE(port)) &
>  				  PORT_PLL_POWER_STATE), 200))
> @@ -3641,8 +3605,8 @@ static void icl_dpll_write(struct drm_i915_private *dev_priv,
>  			 !i915_mmio_reg_valid(div0_reg));
>  	if (dev_priv->display.vbt.override_afc_startup &&
>  	    i915_mmio_reg_valid(div0_reg))
> -		intel_de_rmw(dev_priv, div0_reg, TGL_DPLL0_DIV0_AFC_STARTUP_MASK,
> -			     hw_state->div0);
> +		intel_de_rmw(dev_priv, div0_reg,
> +			     TGL_DPLL0_DIV0_AFC_STARTUP_MASK, hw_state->div0);
>  	intel_de_posting_read(dev_priv, cfgcr1_reg);
>  }
>  
> @@ -3651,7 +3615,6 @@ static void icl_mg_pll_write(struct drm_i915_private *dev_priv,
>  {
>  	struct intel_dpll_hw_state *hw_state = &pll->state.hw_state;
>  	enum tc_port tc_port = icl_pll_id_to_tc_port(pll->info->id);
> -	u32 val;
>  
>  	/*
>  	 * Some of the following registers have reserved fields, so program
> @@ -3659,23 +3622,19 @@ static void icl_mg_pll_write(struct drm_i915_private *dev_priv,
>  	 * during the calc/readout phase if the mask depends on some other HW
>  	 * state like refclk, see icl_calc_mg_pll_state().
>  	 */
> -	val = intel_de_read(dev_priv, MG_REFCLKIN_CTL(tc_port));
> -	val &= ~MG_REFCLKIN_CTL_OD_2_MUX_MASK;
> -	val |= hw_state->mg_refclkin_ctl;
> -	intel_de_write(dev_priv, MG_REFCLKIN_CTL(tc_port), val);
> +	intel_de_rmw(dev_priv, MG_REFCLKIN_CTL(tc_port),
> +		     MG_REFCLKIN_CTL_OD_2_MUX_MASK, hw_state->mg_refclkin_ctl);
>  
> -	val = intel_de_read(dev_priv, MG_CLKTOP2_CORECLKCTL1(tc_port));
> -	val &= ~MG_CLKTOP2_CORECLKCTL1_A_DIVRATIO_MASK;
> -	val |= hw_state->mg_clktop2_coreclkctl1;
> -	intel_de_write(dev_priv, MG_CLKTOP2_CORECLKCTL1(tc_port), val);
> +	intel_de_rmw(dev_priv, MG_CLKTOP2_CORECLKCTL1(tc_port),
> +		     MG_CLKTOP2_CORECLKCTL1_A_DIVRATIO_MASK,
> +		     hw_state->mg_clktop2_coreclkctl1);
>  
> -	val = intel_de_read(dev_priv, MG_CLKTOP2_HSCLKCTL(tc_port));
> -	val &= ~(MG_CLKTOP2_HSCLKCTL_TLINEDRV_CLKSEL_MASK |
> -		 MG_CLKTOP2_HSCLKCTL_CORE_INPUTSEL_MASK |
> -		 MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_MASK |
> -		 MG_CLKTOP2_HSCLKCTL_DSDIV_RATIO_MASK);
> -	val |= hw_state->mg_clktop2_hsclkctl;
> -	intel_de_write(dev_priv, MG_CLKTOP2_HSCLKCTL(tc_port), val);
> +	intel_de_rmw(dev_priv, MG_CLKTOP2_HSCLKCTL(tc_port),
> +		     MG_CLKTOP2_HSCLKCTL_TLINEDRV_CLKSEL_MASK |
> +		     MG_CLKTOP2_HSCLKCTL_CORE_INPUTSEL_MASK |
> +		     MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_MASK |
> +		     MG_CLKTOP2_HSCLKCTL_DSDIV_RATIO_MASK,
> +		     hw_state->mg_clktop2_hsclkctl);
>  
>  	intel_de_write(dev_priv, MG_PLL_DIV0(tc_port), hw_state->mg_pll_div0);
>  	intel_de_write(dev_priv, MG_PLL_DIV1(tc_port), hw_state->mg_pll_div1);
> @@ -3684,15 +3643,12 @@ static void icl_mg_pll_write(struct drm_i915_private *dev_priv,
>  		       hw_state->mg_pll_frac_lock);
>  	intel_de_write(dev_priv, MG_PLL_SSC(tc_port), hw_state->mg_pll_ssc);
>  
> -	val = intel_de_read(dev_priv, MG_PLL_BIAS(tc_port));
> -	val &= ~hw_state->mg_pll_bias_mask;
> -	val |= hw_state->mg_pll_bias;
> -	intel_de_write(dev_priv, MG_PLL_BIAS(tc_port), val);
> +	intel_de_rmw(dev_priv, MG_PLL_BIAS(tc_port),
> +		     hw_state->mg_pll_bias_mask, hw_state->mg_pll_bias);
>  
> -	val = intel_de_read(dev_priv, MG_PLL_TDC_COLDST_BIAS(tc_port));
> -	val &= ~hw_state->mg_pll_tdc_coldst_bias_mask;
> -	val |= hw_state->mg_pll_tdc_coldst_bias;
> -	intel_de_write(dev_priv, MG_PLL_TDC_COLDST_BIAS(tc_port), val);
> +	intel_de_rmw(dev_priv, MG_PLL_TDC_COLDST_BIAS(tc_port),
> +		     hw_state->mg_pll_tdc_coldst_bias_mask,
> +		     hw_state->mg_pll_tdc_coldst_bias);
>  
>  	intel_de_posting_read(dev_priv, MG_PLL_TDC_COLDST_BIAS(tc_port));
>  }
> @@ -3766,11 +3722,7 @@ static void icl_pll_power_enable(struct drm_i915_private *dev_priv,
>  				 struct intel_shared_dpll *pll,
>  				 i915_reg_t enable_reg)
>  {
> -	u32 val;
> -
> -	val = intel_de_read(dev_priv, enable_reg);
> -	val |= PLL_POWER_ENABLE;
> -	intel_de_write(dev_priv, enable_reg, val);
> +	intel_de_rmw(dev_priv, enable_reg, 0, PLL_POWER_ENABLE);
>  
>  	/*
>  	 * The spec says we need to "wait" but it also says it should be
> @@ -3785,11 +3737,7 @@ static void icl_pll_enable(struct drm_i915_private *dev_priv,
>  			   struct intel_shared_dpll *pll,
>  			   i915_reg_t enable_reg)
>  {
> -	u32 val;
> -
> -	val = intel_de_read(dev_priv, enable_reg);
> -	val |= PLL_ENABLE;
> -	intel_de_write(dev_priv, enable_reg, val);
> +	intel_de_rmw(dev_priv, enable_reg, 0, PLL_ENABLE);
>  
>  	/* Timeout is actually 600us. */
>  	if (intel_de_wait_for_set(dev_priv, enable_reg, PLL_LOCK, 1))
> @@ -3815,8 +3763,7 @@ static void adlp_cmtg_clock_gating_wa(struct drm_i915_private *i915, struct inte
>  	 * since TRANS_CMTG_CHICKEN is only accessible while DPLL0 is enabled.
>  	 */
>  	val = intel_de_read(i915, TRANS_CMTG_CHICKEN);
> -	val = intel_de_read(i915, TRANS_CMTG_CHICKEN);
> -	intel_de_write(i915, TRANS_CMTG_CHICKEN, DISABLE_DPT_CLK_GATING);
> +	val = intel_de_rmw(i915, TRANS_CMTG_CHICKEN, ~0, DISABLE_DPT_CLK_GATING);
>  	if (drm_WARN_ON(&i915->drm, val & ~DISABLE_DPT_CLK_GATING))
>  		drm_dbg_kms(&i915->drm, "Unexpected flags in TRANS_CMTG_CHICKEN: %08x\n", val);
>  }
> @@ -3900,8 +3847,6 @@ static void icl_pll_disable(struct drm_i915_private *dev_priv,
>  			    struct intel_shared_dpll *pll,
>  			    i915_reg_t enable_reg)
>  {
> -	u32 val;
> -
>  	/* The first steps are done by intel_ddi_post_disable(). */
>  
>  	/*
> @@ -3910,9 +3855,7 @@ static void icl_pll_disable(struct drm_i915_private *dev_priv,
>  	 * nothing here.
>  	 */
>  
> -	val = intel_de_read(dev_priv, enable_reg);
> -	val &= ~PLL_ENABLE;
> -	intel_de_write(dev_priv, enable_reg, val);
> +	intel_de_rmw(dev_priv, enable_reg, PLL_ENABLE, 0);
>  
>  	/* Timeout is actually 1us. */
>  	if (intel_de_wait_for_clear(dev_priv, enable_reg, PLL_LOCK, 1))
> @@ -3920,9 +3863,7 @@ static void icl_pll_disable(struct drm_i915_private *dev_priv,
>  
>  	/* DVFS post sequence would be here. See the comment above. */
>  
> -	val = intel_de_read(dev_priv, enable_reg);
> -	val &= ~PLL_POWER_ENABLE;
> -	intel_de_write(dev_priv, enable_reg, val);
> +	intel_de_rmw(dev_priv, enable_reg, PLL_POWER_ENABLE, 0);
>  
>  	/*
>  	 * The spec says we need to "wait" but it also says it should be
> -- 
> 2.34.1
> 
