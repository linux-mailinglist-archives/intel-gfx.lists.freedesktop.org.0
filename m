Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 056B4602FCA
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Oct 2022 17:33:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E47310EF50;
	Tue, 18 Oct 2022 15:33:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15D6510EF50
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Oct 2022 15:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666107185; x=1697643185;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=pTGq1PfKOHkEb4YCz8WP5PXYr2ZM1Y0NjV8Vkr0mVP0=;
 b=Oak/OQjCkHJpK/sCenZXVW1sAZKYc7edNSrCLNdz1+14ernZlSSp0sMm
 7X2kQOT5jesx3JAhV/qxA2Bl2wA4Tx+DMbY8UtDLYzOCX0iduwv1MHffb
 J35COmX0FKXjvkmNs7wsnc+yc8DUHkzLQunLO6S7481OHeIkdOyxL6ooT
 RCOKQEBhojJSHmD0wulZ9Cqko1+QMfG3kqVf4WJpZJEc8fx7veBDCi5VF
 I2/a8J/zxnT9Hfa85DzB/p4ySibWd2RRLCMjt0a1eZB0IoMbUIwcI9lqA
 JD/QozfTYmkhL6E1z/69ASKxRuuRbMdYn9tmHlmun50vrcPiymAi3szXO Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="332688222"
X-IronPort-AV: E=Sophos;i="5.95,193,1661842800"; d="scan'208";a="332688222"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2022 08:33:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="754102253"
X-IronPort-AV: E=Sophos;i="5.95,193,1661842800"; d="scan'208";a="754102253"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP; 18 Oct 2022 08:33:00 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 18 Oct 2022 08:32:59 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 18 Oct 2022 08:32:59 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 18 Oct 2022 08:32:59 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 18 Oct 2022 08:32:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KfVyg51bOEgYJnmOzg6boTzpbm4US4kbfQrDYrkeHGQPpwWAMoL+qGt4hBQqilB18uP+lJxPqPSQWH5ww+XrHY105586MsiTuGX6HpeK/5dJ+ZFAFU24V4ziUII9AaqzLpPJeeTz3uRbcLyrHEywZ8/SJCqlIOgMA/FJkNjpPK8C2DKmkn1TFrMgUfvy5xn65/MUfhhVC8SskFpMJs0rMiwjiu5TMPU9nXZT7uMJZvAothd2azl/tVHK6qZOX/cm7vP94r4v+Kd5oAW8DnMGde6OKk8Kpn6OuQRiC9JhwgqUB7BOd2prxTZDc3avEfh+T8PR/L072G0hLBHW7/f2Ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GAyQwlyuEUKIi3mTTxnngfcTdJQYNoVTYFBiQyEu4EM=;
 b=AYbvBjHNL80v8mEzGxKeeCFqzcxnupT71N311xGlmu4746z8kZD8pyx/4A9V1vSAGHIBJAqwTXC2h+vLDahtA9mF+muzhRX7q0AMJCb12fXfL5TjDVpfQRlxLsiLfK2GoGbytrShJ94YYpNNffF07AoJ8Q8OWfAQ+hz5MIcn0TTnnxex28751FpCEK235KHCcAu2YhqqvB2NmZN9U2wpny3snUUmSv6Gyf9z/PzC7L2b3o+LTg4+0DECRwZqxu3GmxnCyLKOg3Pzu6z/nbon2Tc6Jy5ZW2Fzz9KPNlANdQOLr0QWXC6tPnWwWMTN4UEf3ljPI84syDDLuhu3kGqaSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by PH0PR11MB5061.namprd11.prod.outlook.com (2603:10b6:510:3c::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.26; Tue, 18 Oct
 2022 15:32:50 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::29f8:1b74:685c:6198]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::29f8:1b74:685c:6198%8]) with mapi id 15.20.5723.034; Tue, 18 Oct 2022
 15:32:50 +0000
Date: Tue, 18 Oct 2022 08:32:48 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <Y07HIB7s5rr/kfEs@mdroper-desk1.amr.corp.intel.com>
References: <20221017085525.3898649-1-andrzej.hajda@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20221017085525.3898649-1-andrzej.hajda@intel.com>
X-ClientProxiedBy: BY5PR17CA0034.namprd17.prod.outlook.com
 (2603:10b6:a03:1b8::47) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR11MB1632:EE_|PH0PR11MB5061:EE_
X-MS-Office365-Filtering-Correlation-Id: 3878dabc-03d1-41ea-1bd5-08dab11e044e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: f5z9tZJZNLoXlzHGlOJQgEXQ5Cs3A+VIfTuVaaABfIf2Tw5wfWhIBEkAWT48YPBUMa67bz9Hkm2clU3g+ZDh24n54s/D8jtoPSUcUcOMVC60g57bqdvA7hYVuR9OzAIzG1dOCrjmPofzAvO3LXbkFESTb/1h2Xm7p1G5v7R7tWUFUhNz2MG433bpFro+sIezEQXN443pi+uZ5bDxTL7eBZtkgfAO4kKwLy5ZZEs2vSqFCoJedMajwkgWLsbrexSFhXam+Rrm+c5v/amdM0Z9UdvSSkm6r4vZ2LVkDBwMMC1zefHiD3aQaNNXGCdahsCp1JAKPLI0ulIs3RkM09SKKJHoMOeyi1D5JEUT31mpTlrhG6bH+LGFEFwJarDxxz4yoeiu64ZCyji7nqcDJZk+i/WJ0CPCSYytdcJIhdsuUtua/XoS9Hcjlx/QmE+4Cqx2YPTW3C5EkzfYnVFZesvZatOTG6Ybs+VrbXPYuGg2pZWyE/NeS7+OP5PyYwHH4h+IFwa+BAjm1iooPZXxk4CPNyxTVAvegviTGBC0R3XCq1nSqIkCEn+GFzw2BO21Y8DY29zfq4+I0JrvRR6HyzSGwBwqNEbZVB9QLpnGhdpN8MsnNHmmfPUmEC0yvF58xXsQ+XoJTWIGp1V3WcL+Ywr5lWCwgbF8mFeeT+MYfXU/ufFsi0Qg2vAj3SI31uTMtEnpxTGBz3J6T/7+CtTRr4C9Hw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(39860400002)(396003)(376002)(346002)(366004)(451199015)(86362001)(5660300002)(38100700002)(2906002)(82960400001)(186003)(83380400001)(26005)(6506007)(316002)(478600001)(6486002)(54906003)(6512007)(6636002)(41300700001)(66476007)(66556008)(66946007)(6862004)(15650500001)(4326008)(8936002)(8676002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?coBlIcG7tH6MTFEN06J3cra33TbI8xvspdtZmkhuOtNz5Y0XKyPvBJISgiuz?=
 =?us-ascii?Q?ptwDwk/f7k8DtqNa7Odd/AJzR0/Oi6UqbUWAowgCKaB+bimDCFuPNajhzVfJ?=
 =?us-ascii?Q?osICjYxAY34eOS1Wk5UP7uM7yAA50Hmsyhc3KfLHJW8++U+RmMn4J1/iYpXu?=
 =?us-ascii?Q?UKlSJCWJyieVA1fd4HoCDlcH1sChTQx0v63ZTpRKDAmFFtblSFcdaypGx3Ad?=
 =?us-ascii?Q?PzsrNsGleWLF44Zlmfakf4jzT9gRMAzovkAyGxyTat4T9iZC74EkyOLz5Aza?=
 =?us-ascii?Q?8UL3s7vTuu9Zrno4iBak4ieXBOhP3ehESrhdr1st0X25rINekk0GwtcFuT2z?=
 =?us-ascii?Q?++vRSmgb8O/BpuYFzjL+7cMQPQYWchcLBYzNmHz7q3UT2+6A/5/QFsClXWrr?=
 =?us-ascii?Q?uXgdL8RoKUi1mbMwL5jFjsFP/1ndPYDADit1paaTNbGqBwD4yUDAQisrNiZU?=
 =?us-ascii?Q?hF0Opoo6w3dKq+nHs3FJyjxFhZDDGKApyfrLqjyb9Vc4ip1aNIVIvemOcrLt?=
 =?us-ascii?Q?Mw1TYmNGfSbtRXuWvOKb47an9GjivCGy0dSIRpFmpAOfAdLhAt/bqqjxUmy+?=
 =?us-ascii?Q?/9+Lo7nfFvh5ISrycad6ghMX4tOhEfq9iurxaqcuxzSdOoP/VtC6anDxmLQ0?=
 =?us-ascii?Q?Yo5sFy47obE16/BxqvLjJ2TJtPZAs5QA03O6JRb0vEFZwB4kjEltk/+1I40c?=
 =?us-ascii?Q?AwNE32zYMqI5U2ZFDRdWwUjXsOksPTQamNKn811BF4XMhE5GCfDLgEU2UIqJ?=
 =?us-ascii?Q?wLPaDlwBvpRuuIlTm6WYjwJMeJn8gkSy9OxwXQnRpOKidd50GviSWPpSo1Yo?=
 =?us-ascii?Q?Gd8ZE4U5sb+zdXZLUTkvXPeT4sw+XOyIEL0v82trS4kGQhhuSoqxTCuZK4bM?=
 =?us-ascii?Q?jU8bUEpSfrFQLfhy9Gm3KknS7J5bUf4Gaq8/DoAlOIzCo2lMCJlIkzIvmnlP?=
 =?us-ascii?Q?NdJKC7NXQPa2Y1wQcqy4h7bRoQcfpWqN8c6mmTvSLrt/2ejq4BqabeME2EV7?=
 =?us-ascii?Q?zieD/CBjMY7JJbXS/+OQLRTMAyu1jnZ17qpFDIZ2fSm3JR0CR8jocFnT6JYa?=
 =?us-ascii?Q?BmMW6BixwWRqIRjJ06hfFA9WAm5YlhNRo2bAejfPTqUN6kPZg1wNcIW3P1sD?=
 =?us-ascii?Q?yaJsdjOIQ8ma/21+xMhrrxwjPuNlftRKvP0meSvKjHTtoq1OTKK3ZIL0yrwE?=
 =?us-ascii?Q?a6JIRWr37DuNVpFxEP4SWWzPB+qEzhcOZ1Thplii64WKf1ky/u/4K1mfvV9b?=
 =?us-ascii?Q?obyhER9WzfN0IqqieHE6CWdU4ur5TeiGI5OcxJjfexh1cLfIwTXKSDhtmW5b?=
 =?us-ascii?Q?xVflYKPqyZCeLdiGXA41W0Gk/SRfbgpyxVX/a+JBPd5tw9jNjNjXSQ06kMBQ?=
 =?us-ascii?Q?8gQx3ZEOGmGZjrwBDevjQdPtGer7amvUOMuOEFZoAMryKcQwdDOYdAbju1XA?=
 =?us-ascii?Q?jzqybBYpm+pjEUlV5mwWqqIlN3jhRnlY0kEuRxDHAWbeChtZVW38a1um7oE+?=
 =?us-ascii?Q?+lK4Yeae6HD8bHd7CBXj8X+U4Qr0VIswS08OPEGcZQVno2TjVpGCwpHaM7Tv?=
 =?us-ascii?Q?WokJGFB/c09BHwIY3eeIGFSlqMEv39xCsOhJa1qpLx/yApaRiVKPFUvWqn9d?=
 =?us-ascii?Q?QA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3878dabc-03d1-41ea-1bd5-08dab11e044e
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Oct 2022 15:32:50.7271 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eioG+8HQFY2pacIw5Hz4DyWp6Z9QcdMSffIA7QJFVlk4Lv28CRdfKDETzkfO02SolTY04Klmk3oan5YvhfHRWpMI1T7GB6z/rrRcvJ+4oWA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5061
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: fix clear mask in GEN7_MISCCPCTL
 update
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Oct 17, 2022 at 10:55:25AM +0200, Andrzej Hajda wrote:
> GEN7_DOP_CLOCK_GATE_ENABLE bit should be cleared, not inverse.
> The bug was introduced during conversion to intel_uncore_rmw helper.
> 
> Suggested-by: Matt Roper <matthew.d.roper@intel.com>
> Fixes: 8cee664d3eb6f8 ("drm/i915: use proper helper for register updates")
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_irq.c | 4 ++--
>  drivers/gpu/drm/i915/intel_pm.c | 4 ++--
>  2 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index 2b75ca5e6e618b..d68859866bf238 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -1052,8 +1052,8 @@ static void ivb_parity_work(struct work_struct *work)
>  	if (drm_WARN_ON(&dev_priv->drm, !dev_priv->l3_parity.which_slice))
>  		goto out;
>  
> -	misccpctl = intel_uncore_rmw(&dev_priv->uncore, GEN7_MISCCPCTL, ~GEN7_DOP_CLOCK_GATE_ENABLE,
> -				     0);
> +	misccpctl = intel_uncore_rmw(&dev_priv->uncore, GEN7_MISCCPCTL,
> +				     GEN7_DOP_CLOCK_GATE_ENABLE, 0);
>  	intel_uncore_posting_read(&dev_priv->uncore, GEN7_MISCCPCTL);
>  
>  	while ((slice = ffs(dev_priv->l3_parity.which_slice)) != 0) {
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 9f6c58ad8bdb06..19d4a88184d7a1 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -4321,8 +4321,8 @@ static void gen8_set_l3sqc_credits(struct drm_i915_private *dev_priv,
>  	u32 val;
>  
>  	/* WaTempDisableDOPClkGating:bdw */
> -	misccpctl = intel_uncore_rmw(&dev_priv->uncore, GEN7_MISCCPCTL, ~GEN7_DOP_CLOCK_GATE_ENABLE,
> -				     0);
> +	misccpctl = intel_uncore_rmw(&dev_priv->uncore, GEN7_MISCCPCTL,
> +				     GEN7_DOP_CLOCK_GATE_ENABLE, 0);
>  
>  	val = intel_uncore_read(&dev_priv->uncore, GEN8_L3SQCREG1);
>  	val &= ~L3_PRIO_CREDITS_MASK;
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
