Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 244FA785F36
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 20:06:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5723110E095;
	Wed, 23 Aug 2023 18:06:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B7F610E095;
 Wed, 23 Aug 2023 18:06:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692813998; x=1724349998;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=xZa8HiRRPeWYSz07fwTOq2feVFSpld0Z4KXtzu3WYR8=;
 b=g8Mn/z0R7wWF6EKQa7dbhOeGldYVL7otahQgOOGz2P3qw2RIKsQMQ8ge
 3i4r1749KSY/JOAx7bjk+tWu4umRMK5vweyV+dmej8okZcNC3fCwKbQ/v
 wNQ9KCbkMgOmr9Mh1Q2UPMXWRhpjIB16zimtaQP0JjbGYNz08FCxrjtie
 NMssMUTuQOT7w996MSyox+PwxBqSxDylSM7UJXMJisIJXCRykVT9/7tGX
 LHh5aqVsN9QXAzJbzXwwbhK/VGMwIBt+/wi08LiZd51g5ueuxFT6lr/In
 Qo9EuWWU508688ydWdOhTRcslGd3xRDeRxztklRgeHcqYvLSJdiWBCqaA w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="364410645"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="364410645"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 11:05:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="713665717"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="713665717"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 23 Aug 2023 11:05:34 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 11:05:33 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 23 Aug 2023 11:05:33 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.42) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 23 Aug 2023 11:05:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UUz/8kN/qfeIa4+CAnr8gJ23kGGljBuZT3zdd5/EBE9TUmuwcaJA8Lr87pNDC9rRKW/e5m0bIgc3SBhZa67a4565mXSKXWOsf48ufwCQtya5jzFlaI9y8d6FIjR3Rvn93L2cU6mOVDFSUDmfsVLfSuXmHg0JrgfStn+eF3ufsMRGErZESFJ/wx4jp//s/3UnqNyGhPOl2Ll0EPbzZ+YE+YfFawtRtMS4kt1sWDBYELSn4CQZq1NJFaaumKsl8BtzFAy4GONLJ4a8A07J5j8MiPT+UT8ml4zkOCIdTKwv8vcZgn+/bf8BS58RCBS7fQlMk1YW1+esv1eMW/ALCfj0yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WJ63hq8FtIgQZDM60YpFc6zIowSRj7KEzAsi8XjCm5c=;
 b=fAuheLI4DtfBTmU6fMu4arXpG3hb/IrXm4gbNYT/Vf1yL3cRpQ0gH89VHHCskr17TpeQUx9aaGDTg3OGQ6Rvf9tSLUZD8wTiavnomtlTP6BPFE/zI62lk717qr77nCFmz3VcsnrAgZm+ibUP/gUD/G9HAoZbxauxGJSDtPPArDkC4kc5hJZqEHQQ+IGD87lzR4BltxyKR077QlBGnEf/sLJQmlBh6E/l4/S70wKuZ0PMXHH9p4kBn6gz7vwv8/lBhXRyxPulgCn223AeCE/eGpmg/QB8lgTJ/aqWqxod+yANBPJhZ9sFJPBbg1TMrbOaQ83IYTViUxUjGRSbJmLd7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 CY8PR11MB7340.namprd11.prod.outlook.com (2603:10b6:930:84::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6699.26; Wed, 23 Aug 2023 18:05:32 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6699.025; Wed, 23 Aug 2023
 18:05:32 +0000
Date: Wed, 23 Aug 2023 11:05:28 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20230823180528.GI6080@mdroper-desk1.amr.corp.intel.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
 <20230823170740.1180212-15-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230823170740.1180212-15-lucas.demarchi@intel.com>
X-ClientProxiedBy: BN9PR03CA0717.namprd03.prod.outlook.com
 (2603:10b6:408:ef::32) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|CY8PR11MB7340:EE_
X-MS-Office365-Filtering-Correlation-Id: 06a23cc0-6c90-400b-ec03-08dba4038aae
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cjBugaqkhL77AYyqELEArVKKYqqNxre8VhDKYLyE8984sggp6u6lGG+HyKRgglSXkcnsG1xMFPLWsSLs5zn+3Iwr37XatM0rW6bHHy4QiE5s9dHynw/qmrRSvyARYxcCWrxjS2PLFPECmRWZf7rIoFA+e9H9n0C6qAEsyBXnSgdTwS/pskFSr3ht28HDjRRQ16LpaRn86NUiEri9ZYRLn4JQw523smLUfwQlHZdfrpYm18/zW9q1fe2y9Sj5QEjjTj2OtQMcpmmV89kuRfy2DE1X+8xTC0t/r6YMl3rvltpm3oJwqz3eIZbDIz8UGCSEx18cHIbKWp8smUl3mIpBmTIGvfDY/VckRLIz8tj2gXNuowCI6q4I998gqSZ84d7j9MyQDWuJkhO2ELbgCQ05FlBpJoQk1WzB4Fjs7JiVsFEiWOrMWdq2fcE1PuNzEkQBehf3XSVkZJ45Y7LdfwfvMbyefU9d4P6Bi1nSmFKxBrC1TU7NviXeHv/3U2c/xe8/p2tIyAhKL4DKa0yCllS0V293CUkdALBq9HL+GRc2jkxmXeoW0DQ8DZfyxARb4dFACHWHxVqYb3xrL8Er9cNwN1XQhu/yLIyMFPTzk2T011690IhuCu9atKwloZZ1TS1Q
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(376002)(136003)(396003)(346002)(39860400002)(451199024)(1800799009)(186009)(66946007)(66556008)(66476007)(5660300002)(41300700001)(6636002)(316002)(2906002)(478600001)(86362001)(450100002)(8936002)(4326008)(8676002)(6862004)(38100700002)(6666004)(6512007)(6506007)(6486002)(82960400001)(33656002)(1076003)(83380400001)(26005)(226253002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?dqc0ULsXMQ43PgHqtd1Q1L6agFONZd1oEqBdNXSlEl1sckGFw4PsLCajfvGN?=
 =?us-ascii?Q?bR0OY8Hs7F4w3Xe/TcLTrjGw2JIfdMWrSuUV2qpp5TBRxB+sYJJ9OLrl1aUI?=
 =?us-ascii?Q?7DpEu1tDxt4ZCQuw21s5YG9PMetkuvLwdNFex0ZOGpoQvv4VNNzA7luV6P0G?=
 =?us-ascii?Q?ZhnMSVjaAjOJRJsu9naF2LC1WO0CIUA4sh97nI/asrFdDftWZwkSIS0Nk//C?=
 =?us-ascii?Q?/vCChaaa0VcW256ZDEdnEHtw+Dhkn+Rr1oWi3WKBrehWS8EaZY43AlKx8Sxh?=
 =?us-ascii?Q?b2BHob+IJ/Bss1T18DY6IsPnfMB1WFIP4ix0L64tSEohdQBitP2yuExXdHxn?=
 =?us-ascii?Q?VQSgEAMUIPFwff2iAxinacwTRxD/pGgSMeGMLP8ZcUFvVp/7a0DllPcOnnlS?=
 =?us-ascii?Q?SU3rM3lFf+qFUNXb+JUjLJMbe5yNDiYADlyRG65wlemaYbJw6isBVqnR5Ddp?=
 =?us-ascii?Q?oaxKh6pIyMwCRAA7MefdxmbY2i/2BT/C9yGkM38IK9vIiER9R/80JdlIX2CB?=
 =?us-ascii?Q?pNjJcfvUhfuq8GFei/cQ4iAngnh4SXvQ6AAQ05Z5T0em62wvbSskEetVMtBq?=
 =?us-ascii?Q?mJySNIYPXdT+lQQpfStpLOI4L5WABpidws86njJPVHarvF4FmCACvwoDimAa?=
 =?us-ascii?Q?l9D2E+0j/do2tMZfvd4kqvhgfHZmhnCmjCmr6jr44nJciPpYKLBz7ESUM2ei?=
 =?us-ascii?Q?oUpAS7H5jxYzThxuTwA4mQz6auoT6aRPZdnn5C0jpUxwT/j1vnngOXuORqwX?=
 =?us-ascii?Q?leWBm8ydihRqFCdie6hgaHImsjavyC0gzg2dfNqBXr0QmDIDV5j4zcZO4ysE?=
 =?us-ascii?Q?89KA6M42c+yaX7j7kJMd+1IeTG+2PL99E9UF1gQ93rg3azl2YHbniiMX2cMh?=
 =?us-ascii?Q?RQzY52x6KAeAuVhtyxzD855pf21EV1KVn9JzQxdAjfBediObaP6OjNlSl678?=
 =?us-ascii?Q?hwsFd7rWNh2YG+cZ17x5GG/QCrpI5F/Nk4G03z9YHQfcuVKzqNfSsWphBf3T?=
 =?us-ascii?Q?cQhzd04hIbxpWCiWiuFgCg+sHzKUJ10posaU0DVj/eTN7Q4l6wqUJm05RVbs?=
 =?us-ascii?Q?vQ9aiQG0OI/LgMN+rC48lRbMHJk9pv+a3e9TNDYRRjnWtU/EII8rbvj0ZxOL?=
 =?us-ascii?Q?ah7DpKq9QaW2zlacxSpcdv7/wcZSdWD+OQ3TXMg7OuID1UI8PCMmeeRkoTVZ?=
 =?us-ascii?Q?EcyWI7YjjRHnZLW2dB78xpcKV5CAPwAoW2BTcpfnV13y2fJOsjaZMpOYk0nH?=
 =?us-ascii?Q?e48wLKJF5unHomPEK3aLfBb7iaMD5HE6Z1PRFiEXRzU7NIgh1RnybKvfC0dI?=
 =?us-ascii?Q?0egJhl0JZF4MSKTeeRIT4+2zeiQoAdoFr8mSoVQGdYXF8nRCeOzLaqOUzBPs?=
 =?us-ascii?Q?ZD42srkvb6ACBIuWE+EupzyVJJZJ2ubwr7Uhfy4gIE4CjubQaGhX5YgkKO6Q?=
 =?us-ascii?Q?oJNzc1tncwfI+dP/A+EIGSOL8ewnhJPdjoVsNmU966VbTWNvA9PJS2Fsykgc?=
 =?us-ascii?Q?TOn9AlgatBKV63zQs1RsSQNrTAXHUCMNGtgrNsY0XGZPbi7I1syHZjfo04Ga?=
 =?us-ascii?Q?Be9XwJcYRbXd5nGnOy32x3ksMhIuDkC50OCtJjo7S38pH3UguXKlfYMeTNDt?=
 =?us-ascii?Q?1w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 06a23cc0-6c90-400b-ec03-08dba4038aae
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2023 18:05:32.3061 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xi+l6hO+0IKnhfQEImANGKYchuL+xEHllAw1YNRywCZxIRj9Oybxh9fy1ntZEeM+gv1J/xSslYw74LlYKAnxae9RNlQf2XVKDDoCPNiXTIg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7340
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 14/42] drm/i915/lnl: Add fake PCH
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Aug 23, 2023 at 10:07:12AM -0700, Lucas De Marchi wrote:
> From: Gustavo Sousa <gustavo.sousa@intel.com>
> 
> LNL has south display on the same SoC. As such, define a new fake PCH
> entry for it.

As mentioned on the earlier patches, either matching on display IP or
PICA ID might be more appropriate than matching on LNL base platform?


Matt

> 
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/soc/intel_pch.c | 5 ++++-
>  drivers/gpu/drm/i915/soc/intel_pch.h | 2 ++
>  2 files changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/soc/intel_pch.c b/drivers/gpu/drm/i915/soc/intel_pch.c
> index cf795ecdcc26..5b9a01d26cab 100644
> --- a/drivers/gpu/drm/i915/soc/intel_pch.c
> +++ b/drivers/gpu/drm/i915/soc/intel_pch.c
> @@ -220,7 +220,10 @@ void intel_detect_pch(struct drm_i915_private *dev_priv)
>  	 * South display engine on the same PCI device: just assign the fake
>  	 * PCH.
>  	 */
> -	if (IS_DG2(dev_priv)) {
> +	if (IS_LUNARLAKE(dev_priv)) {
> +		dev_priv->pch_type = PCH_LNL;
> +		return;
> +	} else if (IS_DG2(dev_priv)) {
>  		dev_priv->pch_type = PCH_DG2;
>  		return;
>  	} else if (IS_DG1(dev_priv)) {
> diff --git a/drivers/gpu/drm/i915/soc/intel_pch.h b/drivers/gpu/drm/i915/soc/intel_pch.h
> index 32aff5a70d04..1b03ea60a7a8 100644
> --- a/drivers/gpu/drm/i915/soc/intel_pch.h
> +++ b/drivers/gpu/drm/i915/soc/intel_pch.h
> @@ -30,6 +30,7 @@ enum intel_pch {
>  	/* Fake PCHs, functionality handled on the same PCI dev */
>  	PCH_DG1 = 1024,
>  	PCH_DG2,
> +	PCH_LNL,
>  };
>  
>  #define INTEL_PCH_DEVICE_ID_MASK		0xff80
> @@ -66,6 +67,7 @@ enum intel_pch {
>  
>  #define INTEL_PCH_TYPE(dev_priv)		((dev_priv)->pch_type)
>  #define INTEL_PCH_ID(dev_priv)			((dev_priv)->pch_id)
> +#define HAS_PCH_LNL(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_LNL)
>  #define HAS_PCH_MTP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_MTP)
>  #define HAS_PCH_DG2(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_DG2)
>  #define HAS_PCH_ADP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_ADP)
> -- 
> 2.40.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
