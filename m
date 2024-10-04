Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7378598FD55
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2024 08:29:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 013A910E7FA;
	Fri,  4 Oct 2024 06:28:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="npPEeF4+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6315B10E7FA;
 Fri,  4 Oct 2024 06:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728023338; x=1759559338;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=tBbWKp89B9V6QeHhAF+3GMtWIXj8gnw0kxuYFayvC/c=;
 b=npPEeF4+X+5ZV7WczYwScJHT/hhbBp8BhEL6LZFmHHb4Dqv7gNdbXI0l
 2LT7Nnoq1FstrevUiQON3qV904zNwVHOMffU2kTqjIZvMdFhLeP8cz+w1
 donqsn0Fh3n0IX1SdKVoA8B3TFpE6fMX5sjseaDrwZeoujOOd+WHGI7Br
 8Kwvu7B0mtFcMvZta1m/ydZUidX6WvhFBIKR84p0O8C9cdIGm0NlaSmNZ
 GeZes7w85O5q/tARzyD6vb+S3If4I9ecQtQghVxCqZdMAYJipS52x+Zay
 OYPO9OEBOwMxrxbRLGeAZysFdiwoujPyJuzYIAQG3EnMObstU/KpoTcps w==;
X-CSE-ConnectionGUID: wZe7LytsSsKxZ8yp7z9awA==
X-CSE-MsgGUID: 1S7I1SRCS4CpaBOQK0ZJ2g==
X-IronPort-AV: E=McAfee;i="6700,10204,11214"; a="27407891"
X-IronPort-AV: E=Sophos;i="6.11,176,1725346800"; d="scan'208";a="27407891"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2024 23:28:58 -0700
X-CSE-ConnectionGUID: QU/6lajWSOakXtQwpzm+Xg==
X-CSE-MsgGUID: hDBArQ8hQZiokEbOaPiGHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,176,1725346800"; d="scan'208";a="74919052"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Oct 2024 23:28:58 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 3 Oct 2024 23:28:57 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 3 Oct 2024 23:28:57 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 3 Oct 2024 23:28:57 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.42) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 3 Oct 2024 23:28:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oppcYBJ6kD9q4DqlZgH9gLATf9NdcGg8pBMugL4nDIQ30RGVNuBhE6HKkKRnzNt3e2KnnpET3Q2jMiloAWlZ08w6vWqlBhE+DYO4vs+vlmODW7QOlGEovsrS9NHys/MYSl5FMTzat6gjmfEjsybd38AuOyyf3EC+GRIXD1leAS4bqT11/I1wq/J3l4OouwzNpjhYMQ+PUCzIaVMPhhfaMhhJVl736kjOvvKiko0xLDAVJO8Ymy6e+2prD0UecGvZWinwIsYv8hZpBdzsuUQS3ksLwryhp9wBoXnHQPy0f4xPw64PUHpa2Q43mXGFatmJQi4XFtJs88jz4hC9aRqvMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hm4usD4TdjARqBr6VOcju2Ibagu+CIdz2r+WKpHClZ8=;
 b=kRi8Dimt+f95kCTMuruyAp8zWVPvfE2UufuBTHoM6GN13EPIa4Rl42RVpQaASb7Ktgfb91TvGloehne2U1Gbmok3dJiF8apqwdlq1iIdsQmJIl5MWQbUtzVOhfhqWCLrjcIYGLf7iMrG4o06A3OB+xhn1eFbMaoDjI+X8h87/axz/g6mga7pVUfHa2jjQXyM9CbVGJmT652BgXg6d6GXJ87dQb6TsI9EFnOdm1l1JnOqcsJs+zBNs5aWZw73gqSZhEyjavyzAbTeffQY9nYXako86pc9Mn86RKsSBFkU/1PMwoYrdKIVXj+vfFmBxjauUa2VvICAE/KvBOcuIuoOAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB6522.namprd11.prod.outlook.com (2603:10b6:510:212::12)
 by PH7PR11MB6475.namprd11.prod.outlook.com (2603:10b6:510:1f1::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.18; Fri, 4 Oct
 2024 06:28:50 +0000
Received: from PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::9e94:e21f:e11a:332]) by PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::9e94:e21f:e11a:332%6]) with mapi id 15.20.8005.024; Fri, 4 Oct 2024
 06:28:50 +0000
Date: Fri, 4 Oct 2024 06:28:40 +0000
From: Matthew Brost <matthew.brost@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v3 07/12] drm/xe: Add xe_ggtt_might_lock
Message-ID: <Zv+LGF6E7FkAMNMz@DUT025-TGLU.fm.intel.com>
References: <20241003154421.33805-1-maarten.lankhorst@linux.intel.com>
 <20241003154421.33805-8-maarten.lankhorst@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241003154421.33805-8-maarten.lankhorst@linux.intel.com>
X-ClientProxiedBy: SJ0PR03CA0184.namprd03.prod.outlook.com
 (2603:10b6:a03:2ef::9) To PH7PR11MB6522.namprd11.prod.outlook.com
 (2603:10b6:510:212::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6522:EE_|PH7PR11MB6475:EE_
X-MS-Office365-Filtering-Correlation-Id: 6c19d71c-81d9-4bf4-4852-08dce43dcf5c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?K9eR9zowY5UIK/5kZR4woWqVbUxmNTZ/q40iVFFAKRk6LSCIondjCPcX7o+2?=
 =?us-ascii?Q?R/V2hjFWkRYqqq03U9MGLat1rE5ZaBDaO+MjbUBt2azBT+diWpoW+MUJgoS3?=
 =?us-ascii?Q?eSyYJ7qwLtajPBR3KAORi6QMvfKXaIxqwzWp5kyLpCWyf11+OPnOrgEf+keG?=
 =?us-ascii?Q?wLiKbBpBm2smJeTsrEfuI5Iz9e59Iln/Li+zXbeFeFu3Ev8wHd9caKDFpSKa?=
 =?us-ascii?Q?sGLOZsnAzW1wix/CwkCtrasF0huuzvwJLaQze4wQCfcLkt87BLxylRiaXFD6?=
 =?us-ascii?Q?n6ZHIb3wNmtlPJzfQG9XjwjM5M/AAd+3Qcn2+U05mfU9CwjJV4mBGnbEx63m?=
 =?us-ascii?Q?SCz2LZ0kCaCk2uW/rl0oMSC/TCjC72v3ok+UzzdObcb2Q2+3eWOaatJxZOPI?=
 =?us-ascii?Q?Gh08Rb4mV+0JpzFH6S7+m82No6TMzOG2nIo26xdu3DY9fhjK2L3iO4OYPULd?=
 =?us-ascii?Q?RxmKSzytdF0FehfVtuZab94ED8MXdqjODaFbyfqaOd8gQVLdikzGEz7qvkS3?=
 =?us-ascii?Q?6POSosaymsepcfeph3LNTIGsjASbMdyR1Qnub1NiyBfKxmEqYBjsbs69PI4S?=
 =?us-ascii?Q?xF7dRkzUf7TnGUKMQQBQaAQF6PJwLkL80ZwvyRrdgvCZidG6WMkudPMYMP0L?=
 =?us-ascii?Q?SSM2mIp8gLw4xYyn6TJHtB8nhy7FJ1XO/tqCmFPUvxygAsUrUpZhra0bvY1G?=
 =?us-ascii?Q?z39VoCQaa/8PFeV8Lcu9UsQDOs5/98FM3IH403F3XpTlzlvtV16sY7XEOXm/?=
 =?us-ascii?Q?IWC2c6V/ACsklnGapTm5W7ZsohX6YBUModmAY5a+OcR8jXRQgYZq3Bio2Aor?=
 =?us-ascii?Q?4FPStLolGha9JNSMO5o0eJiwuLivoDzv2iEOGlPOGa1hMTMe+yqRsZSO9bg8?=
 =?us-ascii?Q?XQ3Tj11SAFI1oU/NYGtrrmniVcIFiwNS9uAruJnEdDV+I1O73q/BqEt2UJ+N?=
 =?us-ascii?Q?N8AWiwB2JhfnL/NvwYqeknYnzZbSDskZMAkPLFvuSAGs15HWC/8ZE67AqdkH?=
 =?us-ascii?Q?eZpjCFHWhrp/iypJHLeegTBwN97MPg+kXXFyVb716udaF+uS2t2jOMLGD/sM?=
 =?us-ascii?Q?uGfaGncSxLlDGZrc4E4JaR0tmynxCZ4ittwrHszHWt1rKZ6BbJSsYqns1fx6?=
 =?us-ascii?Q?VMmLlvl2SNBeX8dI10x1xCwx4EHAH5D6etAGgeVyn140b0rQ0YyOW/uVq2jH?=
 =?us-ascii?Q?VnySRJXAglYkEUvcWCsaTsQW3nAoz3v/ykj07m4+jU9rloEAUEd5F4Vt5t2U?=
 =?us-ascii?Q?84quPz2xxWEEXQA77SFViIDLd0BLsBXWUgMTSIjkRg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6522.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?TYX32QpCN4YfmisKzD0RMiIcQkWvMWNBtKfx5FOI1MzO8QVRs+KVmFRj+Hub?=
 =?us-ascii?Q?L0qXY87OF8mq1HHqCQchiqhEkUlLV8p5Vh3oWOWMEeFTKktvF4vctbzTj1xL?=
 =?us-ascii?Q?F4IYKGTO3bGpVebO/q3GxRETfYDCv6NDp67JF3ndlNp/LqWGeBlzAlx2DTu7?=
 =?us-ascii?Q?fkLLaI2nY/qSFasjxuqNoWVIYZGVjn3Fl1dhfVrSHW6uv2zFxUz4nrgP0/Wd?=
 =?us-ascii?Q?fJ9RCr+fltiLwotNVN2snn6VS7a/ttz3q4vV06GybcNyD8ohcptG1Y32v3aj?=
 =?us-ascii?Q?GpRHotKAUW2oSAT3YBrXB+3WAkrWBW7abu4nZP3+qcJGhg/DUSJjlOk5IWEG?=
 =?us-ascii?Q?GinPj19mewkTCxFBLC8Ik6cRLwK/OsmaolxL5R0sNlEP2H2f2posLQaiM9Mp?=
 =?us-ascii?Q?X9EnozjPo0jB00AmDM0LdgXnmCcfh0SMQoQR3Th4NLpw2+AsXgLduxmXmT9W?=
 =?us-ascii?Q?j8gwSIGPuKjunwrbHN7lwWa1ZgNN2wiPqZpT/ucAhoez2sE0N5AdFmLbgl1H?=
 =?us-ascii?Q?wzHWPP0r4oJfAoSmmLSIj+TPaoFzifj9zV1R24bBXhbcIl5Dw+2feJdaiiT0?=
 =?us-ascii?Q?dgdjXgLUTL57Er12gFCEE3LnehJd+mwA9dKA/s0hsEUGBAYxIPXctmeTYRH1?=
 =?us-ascii?Q?JyyHwYM/S48BnWVBF2xPwiMG4EgwMYplmE4oB/X7hlZu8b84Hz7RO8E7yHdY?=
 =?us-ascii?Q?w9O/i1Sngfobsts4HqhfnfnqYBAusGpHXaOCCFyKgDZ+icuGxgl3CMkhIUrJ?=
 =?us-ascii?Q?CZ0X1JpVecP4TBMKf52yNFV0TXk+4eqC7/uXcqKNccL0MYX0ERUXU/dxG0EX?=
 =?us-ascii?Q?N5EcwxWqxs4yFa7XU3OycXzt5YkK+ts+F3szT1J1fASl1DJwOW+XBAFxtaww?=
 =?us-ascii?Q?tKRmChfU1rrz53G2MTGvRNoLVHYZK5wSgdmS00D17Ur7TpVmB6LZQW7vK8Jd?=
 =?us-ascii?Q?n8hqk8ejc1p4BfNb0sVdIEtL/ZM50H+ge3jfnb1OPy3NJV6yTZ2qQaYtAEG/?=
 =?us-ascii?Q?zNB8MTYs5YYdMSMmHlHf1gZTQZZScSPP9A/f8aVRu6bXoO93RExRelZxt+JR?=
 =?us-ascii?Q?g6KYhutfIJFZrPvfoem3S8Zct0dLRLVYiD5rawElMErFD/AnAOHF+ntNn7Zp?=
 =?us-ascii?Q?3FJAIGarzev59HNdtmHMPqv1fFMGsf6p0kcKl6bs8Yv/TjHRcmtMvL1qiFRX?=
 =?us-ascii?Q?j52GN2xvgKmJ7gntxB8At3LzwLXeCLtx3ArtIMGB3QuB3JxqdbCaoP3O5YXW?=
 =?us-ascii?Q?zRfzOjPMoXRyOHA5S8t1fK8aMrB9c0ghAfnIDQ9T00rgvvAB4PD4snGGMFHA?=
 =?us-ascii?Q?zEzbjSVZIKi25nPRHqfGvn/MrSuHERMFME9cHPkm1j4o2oNp3DXzCqN2bGIn?=
 =?us-ascii?Q?ULQp25tEeeb8TR7FJMbUzq8aSRAkAwxTA48ez+fmgtZs4CjdU44A/B4IQ+Au?=
 =?us-ascii?Q?o6C69jzAKpjNZghdgJt22ue9wbTibSzztDyVbBTatxEBUA9154RHyOoJ4oDN?=
 =?us-ascii?Q?1US5Xb1ylcUIdGb3lPGybmjNv5G5Z06gt+oJAOlfiwrGY1rq12L06mCyaANw?=
 =?us-ascii?Q?gunw0pd59Z+bfQ0635n31nuwDqQsDQHx9EO7BBe1vE+rlQUJA+Iw08BLDGm2?=
 =?us-ascii?Q?rg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c19d71c-81d9-4bf4-4852-08dce43dcf5c
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6522.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2024 06:28:50.3739 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Hj23FGYmpj6iUFr5I8irmFw43rQAJrRyZf+poBbEeeYon11WMwdnYp0beayRnGMfGNpYhvCH7KRr+JsnUWx7cA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6475
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

On Thu, Oct 03, 2024 at 05:44:16PM +0200, Maarten Lankhorst wrote:
> Another requirement of hiding more of struct xe_ggtt.
> 
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

Reviewed-by: Matthew Brost <matthew.brost@intel.com>

> ---
>  drivers/gpu/drm/xe/xe_bo.c   | 2 +-
>  drivers/gpu/drm/xe/xe_ggtt.c | 7 +++++++
>  drivers/gpu/drm/xe/xe_ggtt.h | 7 +++++++
>  3 files changed, 15 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/xe/xe_bo.c b/drivers/gpu/drm/xe/xe_bo.c
> index 5f2f1ec46b57a..f85c389e9a1f8 100644
> --- a/drivers/gpu/drm/xe/xe_bo.c
> +++ b/drivers/gpu/drm/xe/xe_bo.c
> @@ -2359,7 +2359,7 @@ void xe_bo_put(struct xe_bo *bo)
>  			might_lock(&bo->client->bos_lock);
>  #endif
>  		if (bo->ggtt_node && bo->ggtt_node->ggtt)
> -			might_lock(&bo->ggtt_node->ggtt->lock);
> +			xe_ggtt_might_lock(bo->ggtt_node->ggtt);
>  		drm_gem_object_put(&bo->ttm.base);
>  	}
>  }
> diff --git a/drivers/gpu/drm/xe/xe_ggtt.c b/drivers/gpu/drm/xe/xe_ggtt.c
> index 1ffc0917e28fe..7e5a793651583 100644
> --- a/drivers/gpu/drm/xe/xe_ggtt.c
> +++ b/drivers/gpu/drm/xe/xe_ggtt.c
> @@ -175,6 +175,13 @@ static void ggtt_fini(void *arg)
>  	ggtt->scratch = NULL;
>  }
>  
> +#ifdef CONFIG_LOCKDEP
> +void xe_ggtt_might_lock(struct xe_ggtt *ggtt)
> +{
> +	might_lock(&ggtt->lock);
> +}
> +#endif
> +
>  static void primelockdep(struct xe_ggtt *ggtt)
>  {
>  	if (!IS_ENABLED(CONFIG_LOCKDEP))
> diff --git a/drivers/gpu/drm/xe/xe_ggtt.h b/drivers/gpu/drm/xe/xe_ggtt.h
> index bdf6d0733e2ca..62c8ce636939a 100644
> --- a/drivers/gpu/drm/xe/xe_ggtt.h
> +++ b/drivers/gpu/drm/xe/xe_ggtt.h
> @@ -38,4 +38,11 @@ u64 xe_ggtt_print_holes(struct xe_ggtt *ggtt, u64 alignment, struct drm_printer
>  void xe_ggtt_assign(const struct xe_ggtt_node *node, u16 vfid);
>  #endif
>  
> +#ifndef CONFIG_LOCKDEP
> +static inline void xe_ggtt_might_lock(struct xe_ggtt *ggtt)
> +{ }
> +#else
> +void xe_ggtt_might_lock(struct xe_ggtt *ggtt);
> +#endif
> +
>  #endif
> -- 
> 2.45.2
> 
