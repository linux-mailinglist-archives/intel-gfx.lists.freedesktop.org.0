Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03E968B8453
	for <lists+intel-gfx@lfdr.de>; Wed,  1 May 2024 04:24:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48FC710FEF3;
	Wed,  1 May 2024 02:24:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RD2rY7lf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3A2310FEF3
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 May 2024 02:23:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714530239; x=1746066239;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Do7R61mjGv1SISazaMBqgGxthos1flgG/Q7mQcayZiM=;
 b=RD2rY7lfN2AUAyiyxQW7OomiVBCpGzwX6dMLLuF/RruN6ev7WvlZ1cYd
 A81fRZ3tHZMjkdf9wbIqLEypUH7/LQyaUWo3LJbDy7Xietp+u+yvOWQxR
 gNbVS75CIs+FxIX9cwMztBL5glofjGKJ+z58sWH3f8M9NvfeerclRjHN4
 80f05TFyphN9X3OeGPAsjodMAY3lV+gmd2f3lOHTXcScJu9Jati+DYN5B
 d9+ZRxUjMJjkPOrda8OaMSaYnIvL48KV/YXUJqwuJBOGrpKVsPkiSZYI8
 fWPHqSa1bZnELiGaWYDgcR6n5yh8sOJt2CZplotWuinjG8YcAgXyo3MbD Q==;
X-CSE-ConnectionGUID: JlvUTZ3jT2SoZBUp+6j+jQ==
X-CSE-MsgGUID: 8Sh73XaLT42nwV0tL396sA==
X-IronPort-AV: E=McAfee;i="6600,9927,11060"; a="14058843"
X-IronPort-AV: E=Sophos;i="6.07,244,1708416000"; d="scan'208";a="14058843"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 19:23:58 -0700
X-CSE-ConnectionGUID: sq6ihN7ISjmJ/wt5whgHHw==
X-CSE-MsgGUID: QoawUDfZRW+Jv9Xjc4ETTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,244,1708416000"; d="scan'208";a="27156203"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Apr 2024 19:23:58 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Apr 2024 19:23:57 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 30 Apr 2024 19:23:57 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 30 Apr 2024 19:23:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oUZ8MbWQ+H64sNUsNg7K1bwf/aY3HrgbAS6DEnspWhqU0b4yc5wwvFQoDMHTcmE2C0riDBj/J2v8MIwm8Qm263ynHSeDinJ7B1f9onZdXD7idvaBP4AfvBe+psrXXJtCqmHQ3h0DNt6pcMbAjArRekH2fvMBZFQMR2zwkfWT6HrLf9VBLi52pj7ZnUSOptwchTxy+2tHTZBZhZ3ZvWfnOnFSTBs0rfO034olCmP3EvqdYTqT//MXG1DtxyKsRjUNaUUwcuMYUkD0+BGUNNq1nJzbuI1ntmHZlgFlFi5fOA0ujEoxHKW72KoPq7lC6w95fmgLUr9ZqSM2sXwAagL+5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nLvUxOXEi+JK6egfkZ73v6Og/ZLwmpYX03NARLfXpQs=;
 b=KQj+pOzCSM3VJvRC9zzUaIC6+9slMYr9Du0EjOseTj2KRgvkgIC/4bUhgYuYxZOqDKPd5FaMgP6BF/ZkFLaRj75GK7F2z5zNnu6gYf4yw4WsRvYmBer/qCVbjvYF8K/kzmyIIUTVHWh8EO4gGCuCsXvOMzGZmMzLK5N8j27Vtfiq/6Iyg8fw9PPrhTUyDpZK7nyZeGhEcwfZccDggnS7aQelyfHTZ2XSKVmk7B1ZmwxoZVeJu2lhT4jd8q29AChToMmflev3719Hf02zVJ/Q55OzaAgqMOg+ZY+MrVRIxvGsts128s8s1dPIGXsdEwx0Dybw3pR9nVEbJIlnnAEw8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CY8PR11MB7731.namprd11.prod.outlook.com (2603:10b6:930:75::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.34; Wed, 1 May
 2024 02:23:50 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7519.031; Wed, 1 May 2024
 02:23:50 +0000
Date: Tue, 30 Apr 2024 22:23:45 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <jouni.hogander@intel.com>
Subject: Re: [PATCH 14/19] drm/i915: pass dev_priv explicitly to
 PSR2_MAN_TRK_CTL
Message-ID: <ZjGnsQbcvzMjDQU4@intel.com>
References: <cover.1714471597.git.jani.nikula@intel.com>
 <72934c8ac3a923ca0c12fc6cdeec1e0b87ecc4a4.1714471597.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <72934c8ac3a923ca0c12fc6cdeec1e0b87ecc4a4.1714471597.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4P223CA0028.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:303:80::33) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CY8PR11MB7731:EE_
X-MS-Office365-Filtering-Correlation-Id: 06794bbc-fb8f-41e9-e018-08dc6985bcbe
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|1800799015|376005;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?OgHHWOXjEgg52T7QMAvrEld82YrWrmmZN+4Zvd4siPmVS4CgakMAH8oLXT4n?=
 =?us-ascii?Q?5KtaahW+WR0bMH7foDXAl4OBjtdp3VRN/+8hLrrOPzFuXG9LS7DTyJ4SIZE7?=
 =?us-ascii?Q?nLxXvpXfAKMRbH5a1U/BA53taMkDf5ZNX0tRF+0C44vCzrKK2iUsVeqm/iMh?=
 =?us-ascii?Q?9GwMX/b20dLTuiSaEdH1RKEYKFp5Z3+zG7WOIsm/t6Pq9on7fYvojVDey+te?=
 =?us-ascii?Q?HblalzVF7TNQB8ROk7+1B+7YOfzQRwEAodHIYXGCk2mTkwxdbiMXouv+3GQm?=
 =?us-ascii?Q?CbHnxl09yzYpm6gB5oCzSfkm5zj4lFWiM//dq8NBqxTt9wkXgsEeQbnM1wSB?=
 =?us-ascii?Q?hlsYmesWcNlYKSbgj5vnevAa2nZNhOizFH0Yxxq+ds3NMCPE+SnPDUkT3mSk?=
 =?us-ascii?Q?7NnJNifTODq7BaZSRdC5hWaY8G7mY+r35NhLT2lfoFWaPO8YU0H4vDjzRgsW?=
 =?us-ascii?Q?Is8lGpIm0rhJ4QXc3g29sDmD3oqg8mjEQbXl1bLg9N8jSav9lkYuLb8zj6Vl?=
 =?us-ascii?Q?Dvxu3+kViprpC69waOfQi/uHN6oFApQTzMiOAK9qb8kLML6iMuqsV+E/DBcN?=
 =?us-ascii?Q?HXzPLgMbpsLUI6wG1lpHJIYPbrLIgLfocrjrn8WDW/6HWBEjPRznBhU+l85A?=
 =?us-ascii?Q?UVjhpzCAUN+Vq26kYie2eucv9TtOOwBW9CGur8yG0TVD9N9wjwwU5am1O6/X?=
 =?us-ascii?Q?m1Ro/ZwNuCHMWHCC/kqOc/OEuLMA2wDGYgGavnWlRQMqbHAukzJ4NwSIN0xh?=
 =?us-ascii?Q?P0NfCWD3ES7ZyhIJPbFTEgQLE3+uu59fYoPj/ZP3nq+/Rt/JPPBvVwj/iTBU?=
 =?us-ascii?Q?Bo5mk4ieiFzaA9Y7atPnxn1/XOOzbseqOUf7skKb7tQM+vjbbsahA7VcNtkK?=
 =?us-ascii?Q?rC4xm8z2vbD4ev3YUdMrsXktrJsU6nb8sn0KsYok7x5PPcTmB122Di3QL8O3?=
 =?us-ascii?Q?AmADoHEp/DT56PmDdta9Z+/EsXkRfBuyjnH4wwGPRAKSWPgrQn+GglF1yjIU?=
 =?us-ascii?Q?kKAY3MZ27Aoqpcn+voNcFksrxP3O5PgexhrVsv1cS45XqksJXWnhhiAHznF2?=
 =?us-ascii?Q?TYmeZCiQlOJfaoh1goWVe9PnC0X/yPHgjxDFjzJExSHfwJKr8Wd+gHw0y5/S?=
 =?us-ascii?Q?hotEAzPaCkeyXK7OB056Bx3M/2rdqxkL//qpYGyZ2Sr/MOtJJHEl21V0UcTj?=
 =?us-ascii?Q?oTOTA5niw2IPhpp52ypUXn5Xt0RSsc48SMp8vRi7Tk1CHKvS4XBZANN2ed8h?=
 =?us-ascii?Q?9IdiPbb5F3qGSWQ1qOO0ngspn2+88DMi4z9n3g3WTQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?df6tBnNxwDePYZmXYQyOe4uXU6sHOsbskXiOJ31MXmJR5mykut0Amwwt3lrE?=
 =?us-ascii?Q?/FMxIIjCkFymJ+FhgC2w1XA9Jy8Az1cIPazB0OziNfDKEq2heBhodIrr8d6v?=
 =?us-ascii?Q?tBwAD1X5rLUa/nhztXWe+qXz+xygN6JTFmb7ye4sxwlj9+pmHxWZTny4JC6R?=
 =?us-ascii?Q?7Fqn1+8m2OsnDZUk96Je+A3mYqCmKMteB/veHVnSiGdQEVyBHx0r5UdsPQd5?=
 =?us-ascii?Q?P3c3F9TH78XsbiEqT69WBShC8WUREUJMQGYrxYeLBdMJonPwwg8yhHm/tw5i?=
 =?us-ascii?Q?/ha4TlXc1jTfm0tiMgWMzIJ/EGCALi17OH7hFMN9PBN93AVAhxa3y+e3IOtx?=
 =?us-ascii?Q?/ecBgnhNbO1L+JjTydK4VnB8XrvXhLpDK31b7hj4YWmL66lj0iQ5xDkYM/ew?=
 =?us-ascii?Q?fDFg9l3THrQJaMesBYBoS0AmlvPdTArlKnJcXg38x34yWu/v92T/sfUMDYa8?=
 =?us-ascii?Q?gJ+lheHdMdtog9iQmWUt7dScHFx2bSJgv0f0wC6L2CrXK2oRyR3D/AIQd76g?=
 =?us-ascii?Q?/NeDV2j5SpAylMROxHzUGlmiwrjuw8pwZTEBsiFqYC0ci0bK4tA0dlY73VkC?=
 =?us-ascii?Q?RFTidNJoAdldbxb6osCKvf0GbD8PFA2wEKVqaY1qbqoxDpJMrvpsvJr69WK8?=
 =?us-ascii?Q?6rVo298vxZUsKsSYGhgVnZ+rLGAe3cpyKkVLGrcExnjWPaUQma6CLf3KLPRo?=
 =?us-ascii?Q?CLUMvRmiXAbyBG7re50nUhI3GgbOQTN3NdNOfM8Bjm0Snm9bwgd9IPFc47GR?=
 =?us-ascii?Q?xWWn6ci8zWA0wun/xLt8ODfsE1vUFtDgSv3e9PP4WtTHpVp5OgxGGvRTIdE1?=
 =?us-ascii?Q?+4Pgh+xGhTfP2yifdwVaGwFOh4oTOBWw6muB+w5FdDwq1GYvT3nX2JcYCVrC?=
 =?us-ascii?Q?PBCUSMMx19zrzMXKlamsLwP6yDbBpeIuElYuilpCgu+BWFV4HtHyW1uZYmON?=
 =?us-ascii?Q?THhqbx7xZaVnKvmnMXIAgqxj9PLQDHBokNgGR9bIk15UkzCToVvjyVQXP0Jg?=
 =?us-ascii?Q?1gPPQXxy82jYyMXU8gr2wwXQRG+XTFNGyFBtknUtHRtu4nqRb4u2x9eluHsr?=
 =?us-ascii?Q?k98K+GPIniLtHnTof1v9DxCMlcfzppz7UYWXCKKHrpZGKiY9UrNBwfULegS1?=
 =?us-ascii?Q?dYEi9E5WrIqZ7975E0WmAEXPLFuRZeR5bsHgvi2wNOrSR6+sGKSekQfAYuL/?=
 =?us-ascii?Q?ufl7Dt30rYVjV4tp3fzsudZGXlGyKFYC+HUHql1pcn03TXG0zU7w6KIenDfD?=
 =?us-ascii?Q?Rdb91k2mW1/KVOvK5RQGI/Ht6MV9bBHXQFUq8Mfi4vsLvWgAlq5ywxSaBNw2?=
 =?us-ascii?Q?zBV4peSdhGnc9e6Zl5kuapUXRlSZzb6ZbPqhb6Il7vlCU4WNhsX1+At1Dxhw?=
 =?us-ascii?Q?mjzoX4wif13nKKQbBUFmuTSpqEG+i9ObMPrSIzi91XnU3u8RPbYqOvXdMFnH?=
 =?us-ascii?Q?4n/vg0eGhUGzgY4k/sI5ZUrbo5xwor2OoyHcjTN8uHBtY6shexUUrhy8EbJ/?=
 =?us-ascii?Q?zw7zZudlQN6rZEauN3BrVXvyu7GytfSVabRWtDXhUPOl/N0PoKwCOkHEakam?=
 =?us-ascii?Q?aUQUe0w3TWEgpJsdH7gSQ2f2Xw16ZhQ+KvAiFKzgAeTzP85E5+xRbi/djrzz?=
 =?us-ascii?Q?ew=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 06794bbc-fb8f-41e9-e018-08dc6985bcbe
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 May 2024 02:23:50.0623 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NpHsSVqNCcWLzn1+U9YFvTMQHng6LL1niDVbobK01sRGvjhcSg5uMmm4LnJmnp7QBkQ8OeIrrj/vQEjjAHc9dw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7731
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

On Tue, Apr 30, 2024 at 01:10:08PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the PSR2_MAN_TRK_CTL register macro.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_psr.c      | 23 ++++++++++++-------
>  drivers/gpu/drm/i915/display/intel_psr_regs.h |  2 +-
>  2 files changed, 16 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 36c08cd3a624..ded7795e4c3a 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -844,7 +844,8 @@ static void dg2_activate_panel_replay(struct intel_dp *intel_dp)
>  {
>  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>  
> -	intel_de_rmw(dev_priv, PSR2_MAN_TRK_CTL(intel_dp->psr.transcoder),
> +	intel_de_rmw(dev_priv,
> +		     PSR2_MAN_TRK_CTL(dev_priv, intel_dp->psr.transcoder),
>  		     0, ADLP_PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME);
>  
>  	intel_de_rmw(dev_priv, TRANS_DP2_CTL(intel_dp->psr.transcoder), 0,
> @@ -919,10 +920,12 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
>  	if (intel_dp->psr.psr2_sel_fetch_enabled) {
>  		u32 tmp;
>  
> -		tmp = intel_de_read(dev_priv, PSR2_MAN_TRK_CTL(cpu_transcoder));
> +		tmp = intel_de_read(dev_priv,
> +				    PSR2_MAN_TRK_CTL(dev_priv, cpu_transcoder));
>  		drm_WARN_ON(&dev_priv->drm, !(tmp & PSR2_MAN_TRK_CTL_ENABLE));
>  	} else if (HAS_PSR2_SEL_FETCH(dev_priv)) {
> -		intel_de_write(dev_priv, PSR2_MAN_TRK_CTL(cpu_transcoder), 0);
> +		intel_de_write(dev_priv,
> +			       PSR2_MAN_TRK_CTL(dev_priv, cpu_transcoder), 0);
>  	}
>  
>  	if (psr2_su_region_et_valid(intel_dp))
> @@ -1681,7 +1684,8 @@ void intel_psr_get_config(struct intel_encoder *encoder,
>  		goto unlock;
>  
>  	if (HAS_PSR2_SEL_FETCH(dev_priv)) {
> -		val = intel_de_read(dev_priv, PSR2_MAN_TRK_CTL(cpu_transcoder));
> +		val = intel_de_read(dev_priv,
> +				    PSR2_MAN_TRK_CTL(dev_priv, cpu_transcoder));
>  		if (val & PSR2_MAN_TRK_CTL_ENABLE)
>  			pipe_config->enable_psr2_sel_fetch = true;
>  	}
> @@ -2251,7 +2255,7 @@ static void psr_force_hw_tracking_exit(struct intel_dp *intel_dp)
>  
>  	if (intel_dp->psr.psr2_sel_fetch_enabled)
>  		intel_de_write(dev_priv,
> -			       PSR2_MAN_TRK_CTL(cpu_transcoder),
> +			       PSR2_MAN_TRK_CTL(dev_priv, cpu_transcoder),
>  			       man_trk_ctl_enable_bit_get(dev_priv) |
>  			       man_trk_ctl_partial_frame_bit_get(dev_priv) |
>  			       man_trk_ctl_single_full_frame_bit_get(dev_priv) |
> @@ -2293,7 +2297,7 @@ void intel_psr2_program_trans_man_trk_ctl(const struct intel_crtc_state *crtc_st
>  		break;
>  	}
>  
> -	intel_de_write(dev_priv, PSR2_MAN_TRK_CTL(cpu_transcoder),
> +	intel_de_write(dev_priv, PSR2_MAN_TRK_CTL(dev_priv, cpu_transcoder),
>  		       crtc_state->psr2_man_track_ctl);
>  
>  	if (!crtc_state->enable_psr2_su_region_et)
> @@ -3014,7 +3018,9 @@ static void _psr_invalidate_handle(struct intel_dp *intel_dp)
>  		val = man_trk_ctl_enable_bit_get(dev_priv) |
>  		      man_trk_ctl_partial_frame_bit_get(dev_priv) |
>  		      man_trk_ctl_continuos_full_frame(dev_priv);
> -		intel_de_write(dev_priv, PSR2_MAN_TRK_CTL(cpu_transcoder), val);
> +		intel_de_write(dev_priv,
> +			       PSR2_MAN_TRK_CTL(dev_priv, cpu_transcoder),
> +			       val);
>  		intel_de_write(dev_priv, CURSURFLIVE(intel_dp->psr.pipe), 0);
>  		intel_dp->psr.psr2_sel_fetch_cff_enabled = true;
>  	} else {
> @@ -3112,7 +3118,8 @@ static void _psr_flush_handle(struct intel_dp *intel_dp)
>  				 * SU configuration in case update is sent for any reason after
>  				 * sff bit gets cleared by the HW on next vblank.
>  				 */
> -				intel_de_write(dev_priv, PSR2_MAN_TRK_CTL(cpu_transcoder),
> +				intel_de_write(dev_priv,
> +					       PSR2_MAN_TRK_CTL(dev_priv, cpu_transcoder),
>  					       val);
>  				intel_de_write(dev_priv, CURSURFLIVE(intel_dp->psr.pipe), 0);
>  				intel_dp->psr.psr2_sel_fetch_cff_enabled = false;
> diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> index 762fc0ad7eb5..55e07e87dfbd 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> @@ -229,7 +229,7 @@
>  
>  #define _PSR2_MAN_TRK_CTL_A					0x60910
>  #define _PSR2_MAN_TRK_CTL_EDP					0x6f910
> -#define PSR2_MAN_TRK_CTL(tran)					_MMIO_TRANS2(dev_priv, tran, _PSR2_MAN_TRK_CTL_A)
> +#define PSR2_MAN_TRK_CTL(dev_priv, tran)					_MMIO_TRANS2(dev_priv, tran, _PSR2_MAN_TRK_CTL_A)
>  #define  PSR2_MAN_TRK_CTL_ENABLE				REG_BIT(31)
>  #define  PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR_MASK		REG_GENMASK(30, 21)
>  #define  PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR(val)		REG_FIELD_PREP(PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR_MASK, val)
> -- 
> 2.39.2
> 
