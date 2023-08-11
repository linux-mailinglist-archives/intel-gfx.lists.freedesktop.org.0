Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A0787784B4
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Aug 2023 02:59:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B54A10E140;
	Fri, 11 Aug 2023 00:59:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4861B10E140
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Aug 2023 00:59:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691715572; x=1723251572;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=kGsZFDPCoCheuR9I7DeqxtlrNt7AHzd2ybl6ddTPHEk=;
 b=c/OoCtb0EqnwVUYa+YAm82teF+3AW5FjcCBry7o0yHsNysi4GnCEZgJW
 5Fk5OfCVwYhfMBEwcGGbwUDKk1C4e1oB0LnIggiaSbrwRLOKVX3uMlpBn
 hKyZLnZo1HzSKU7ylu0VjTDakSQT0Dts6rp3QUoT6i6OVHnj9OHc9iRL7
 ci/zHxCNRRFWRxhmRrSAchnAqN0JY8kUCpY1xk9GOgZr8OLmcsWPzUoNf
 W1efp4V2S26RjleT6XKJkcWQD9HJ0yO519qQ8DfIwfZzqgCEHBs3FtfNu
 eG65KunpPI+bxHuW3+g9/pPal3oB2XaKpUTS2G9gzHZMKVlezj8n3P/fg A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="361701514"
X-IronPort-AV: E=Sophos;i="6.01,163,1684825200"; d="scan'208";a="361701514"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 17:59:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="875969599"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga001.fm.intel.com with ESMTP; 10 Aug 2023 17:59:30 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 10 Aug 2023 17:59:27 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 10 Aug 2023 17:59:26 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 10 Aug 2023 17:59:26 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 10 Aug 2023 17:59:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QS4D3BIogB4j2x74l1OApTKAlv0N/1vhODI3L9uaNOWO5fLr0kPeCiSpYoUNU5MyT3gSu9y7WSbm3DDF/wXqG6TXHNNq3uw69FDn1Oew5PJwkiXSk8kJIvntANNVPUyBgZZknGo3Ckf5IDi3HIEAvKjzvjN8S+rGmlak86ISM6t5E6kmsBc/52Rf/w5jfosRabrxpJvoDlKzI1VZdMhX3H+9363yrVWVyqzrmFA7ZKGOYnAcaytDlBVHrxX44Atq3MOjQhnsmoih/B+7dWJpp621FuwarP/qDEeO5YUVfhsDNGSJDwSaXllRYZQo6LuV5jFV4/cvn3EG8MaKVMG5uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6W2r7bUxubF1A6vF8XGRgrvxGmQzmmob2Gmo7eS1yl8=;
 b=Gu7WbeURTiJ/ITn9vHfBHwp+RbsSMogXdlKCv+oA9sZhEaCBziW1RAfklRQIxVP2GpgcakG1q39QN+ND+cPj02seBa7r2PaG75MY2iYPDZIaTACXFylBpv3MNZYyDr3JjbqXIj3zLu4Vlsh9AgxyJFEmL7Yi2tYhIoJRAxWdHt1fyXe8Ggb30T8ETzXlzbfCLBD1oyfYROIJSeeFC1+6ky3EmD9VKnIn+ZUoozEra1SYXqIT3D2cEijkzr387r2tao88Kmjq+E8ktCk2TXH409c7KieZcs3p9Olli9QmsSguBH/K+pb4adaX0s+u53JqktL+5jnGQcSFvTnC6xOmVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 IA1PR11MB6466.namprd11.prod.outlook.com (2603:10b6:208:3a6::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.30; Fri, 11 Aug
 2023 00:59:18 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41%5]) with mapi id 15.20.6652.029; Fri, 11 Aug 2023
 00:59:18 +0000
Date: Thu, 10 Aug 2023 17:59:15 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Shekhar Chauhan <shekhar.chauhan@intel.com>
Message-ID: <20230811005915.GD3375865@mdroper-desk1.amr.corp.intel.com>
References: <20230809064043.375079-1-shekhar.chauhan@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230809064043.375079-1-shekhar.chauhan@intel.com>
X-ClientProxiedBy: SJ0PR03CA0024.namprd03.prod.outlook.com
 (2603:10b6:a03:33a::29) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|IA1PR11MB6466:EE_
X-MS-Office365-Filtering-Correlation-Id: 6443c080-200b-4f01-1ab3-08db9a0630e2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZV3ck+TR1s76Hm1vQl3E8UhJBEwDcje/17XdwS9NvqFawEERkh+Ua88X2bsi0Ihaaz/x+oxCfothuwa+S7ZaG0hTNsLsQktLo4fLmwDNDVBcn95Sv90mNNkhMp2OtqUOaPUeXJXNOUBSgG7fJ/W09SvqFpYJJhl70mT9kxdtpWW68Yexs7R4E6f1CO8ioDK7lG4Gb4jjYf5Q+IMehfkgCRzv8tYsxbpEa8Ai6zLJqSQlWfnM7BFCFq1+L+vUdVcfY0OilbUJQNYoezpa42H7j+2W/AyXs5MRiK1ZrjWCTwuYEZAh7MSHeJl5Xw4i4NVlyfdIyIMraWohxiLVeUdTEJm0aSA8U0Q59IRwIILp3EEU6qgSBiOSGt4ZjH8bwLKsXRM7avx7qOMLBxzDRBV550viGgS82iGsqFf9UZz6gy5JGGfrRTWDGTRb7fL3U9426nPPC+J6cpKEy0Eth0TJ4DUJnnw3TzI11mdj3IwX73vFC8yzBre97yUgOFWDwqJWVdbfKzmSQXznM8YhQ0CkuqLAH6IPhCbkUjOezyq3bk36hVqo9xqhQWHgkR9wxpAe
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(396003)(136003)(346002)(376002)(39860400002)(186006)(1800799006)(451199021)(6512007)(4326008)(478600001)(66476007)(6666004)(66556008)(6636002)(66946007)(6486002)(316002)(41300700001)(8936002)(6506007)(1076003)(26005)(8676002)(6862004)(86362001)(82960400001)(5660300002)(33656002)(38100700002)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?dF2LV8MoskWPqYXBULPUCGqA2OzlLjStlRRnUvFOdJGKaP4A8/xEGhz5ogAF?=
 =?us-ascii?Q?z7bwgDTDoQry1Y4CO2aHUyRwHfPtd2Zg7KO9A/Y+Ver2M4f5f0nhE8yApXsx?=
 =?us-ascii?Q?zhu5IJRbpFkiQpVyqbNWytBQjGQD95OZ7Rrohu1wCVBoTpUpPEPGSTZASWLM?=
 =?us-ascii?Q?S5SLKSlRfL0pAIYK01zqkQ6S7AqYTjBNg0ltB9qWI9ShLGEGi9tkE6ZafCWk?=
 =?us-ascii?Q?GL7dXm1RsWL+qH1LozCWr5miPWp8T5674QM9kEkawa+uaI0hW7R1khQ7v/Jg?=
 =?us-ascii?Q?pSL5JWvNenewI5IVWKqHaDRVXj9nvBYoCtYM78RbwFnAdU0lHYmrKIll5fd9?=
 =?us-ascii?Q?klAVo4Aac6E5tjrPaJQMfWf/XMY2T9zCn8bz2aV+0dUSuzRY6+Uj/AOMjiPc?=
 =?us-ascii?Q?QT5Q2UbWOzG2ASy/W2fP8fxacKZkB23M+CemuV/w9hg3+8tOsQB+szSK8rnt?=
 =?us-ascii?Q?guFWhF4+XltIkpUPq10uNJ2LmvdnYSte31flW8oZgFSbJJ/fMbDALObLLTUG?=
 =?us-ascii?Q?LBmRnmxbIqK+T214ql2hGtUGhrfj5geHZW4SV2ZB7xGhL8p2njBzn4IBNQOz?=
 =?us-ascii?Q?Mx0CTE/0RM1l0/tLax7dHOCpvATjGQ2I+9b2jKmDuGpef5FGL19mVPrFS9UO?=
 =?us-ascii?Q?em7Q5Kiyqc9EAfUvthTQukyAoZFNqgRpaJUwAOfqLJ9AuR5qPsm4V7CLw5TS?=
 =?us-ascii?Q?pVykl9NDpjegvTF7A6Su1LoMWbNsPv965f5vokOnBBgB2883KgPuHD/Tkn0I?=
 =?us-ascii?Q?AkmAkSElNAKVss5PWXg/6NDtlWEXuXWlIOspJAVd3n29yqMpYZv2ZU/gFgPG?=
 =?us-ascii?Q?JWLbaJBlJj3Tv25RcxGbZD+3Aih/0YbLCSUs22AWHuaIBRoThhjBReV2K9Kg?=
 =?us-ascii?Q?tYx4MphyUxD86yxHT8/W978IxVTLk7BwWpddEKr9PtA+GnyOZDzQnS8LXBjO?=
 =?us-ascii?Q?9rut1DvZCSpn8aXddgqcB6yq6wHAHZgzuuuIM+KqDpVAsw8f3iGmkc8nJOsS?=
 =?us-ascii?Q?mxhqTzOCn8qDZ4mEw8gXd6sgoIukfwKO1NiE6pQgaVcgkvz7sjrhllOU5zVO?=
 =?us-ascii?Q?mERL7Df7hzSDB+1/cJ1ooS+1wjzWS8oN0Jyrb63AL9W28SYOrJ/nwXwRDX3L?=
 =?us-ascii?Q?hS5EJKUmGqJFyQZbCyzwS7hjz0Or1R1CVSDUTxZ1RQb5olbZuu4pgd+R0pE3?=
 =?us-ascii?Q?cbL+RQ6632ssYoohzsm4M3bM8ooRbKF7X2AAhNC4XdnuVeyZLFid2fuul27a?=
 =?us-ascii?Q?cQe+ReFSO4hx5HckOk7yGwY+8ctK/9Wb0rdnkwHVH96O9PIZkU71Q9jDKOp1?=
 =?us-ascii?Q?3LNMxjk2nUEyfyZQGxX7amEj8aleuywq1Oe4h12Z9wRZDwMZ5k72W4RrBJ07?=
 =?us-ascii?Q?G8jeymkgml8dhuI2Bg/s+4Kr/yyGBF9kZfOdJofe0eGLo0zroHHud6KYkgS3?=
 =?us-ascii?Q?YZm6SiSbIBZpt5RbPHW6oQ756ZcNMqgjudaDziYdtwpcp92rIdAkYErR+omF?=
 =?us-ascii?Q?pgIOpk9R7PXNTR03RC+4BRUR0WUZ02LoiXZkLQkANj2ALroL2wZwm+CqO99i?=
 =?us-ascii?Q?eZCDhV79zMIMtH22Npq7JQ1mJy16fVAyj0goEbhKgkHNyJW5TRL06k1tteBk?=
 =?us-ascii?Q?8g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6443c080-200b-4f01-1ab3-08db9a0630e2
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Aug 2023 00:59:18.4823 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Z4eUd3Sg60REFcppNbD1gu+v/VMFEfeH391YKKrx9UoZ0pn3jWg4/Ewl83uruHvW5NkdK87wEsiELI3pTd2lhVp0nKgtj2n8dBd004Zug2c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6466
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Disable SF round to nearest
 even
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

On Wed, Aug 09, 2023 at 12:10:43PM +0530, Shekhar Chauhan wrote:
> Workaround for disabling round to nearest even in the SF unit.

I don't think we want/need this workaround in i915 (see the explanation
I just gave on the Xe patch for the same workaround).  However we do
need to _drop_ the implementation of this workaround that we already
have for DG2.


Matt

> 
> BSpec: 45818
> Signed-off-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 01807a7dd2c1..f233a552539b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -850,6 +850,9 @@ static void mtl_ctx_workarounds_init(struct intel_engine_cs *engine,
>  
>  	/* Wa_18019271663 */
>  	wa_masked_en(wal, CACHE_MODE_1, MSAA_OPTIMIZATION_REDUC_DISABLE);
> +
> +	/* Wa_15010599737 */
> +	wa_mcr_masked_en(wal, CHICKEN_RASTER_1, DIS_SF_ROUND_NEAREST_EVEN);
>  }
>  
>  static void fakewa_disable_nestedbb_mode(struct intel_engine_cs *engine,
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
