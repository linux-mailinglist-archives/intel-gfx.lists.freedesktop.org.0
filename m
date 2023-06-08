Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04C39728A6C
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 23:52:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8226A10E631;
	Thu,  8 Jun 2023 21:52:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7331410E625
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jun 2023 21:52:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686261140; x=1717797140;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=SfD9FNqQDzeYG8PGpIjC0j+Mvi9UyYANc4DLaUFoO6M=;
 b=gHRlx0JVLf9tFkAQV+5Yy0hkYb4Mx2526IyvN+UEMTDpLRaNpnjTos7R
 jwhw87LzYFO6qGsyyJYOCAoUgpE+UQxk4M6FKP1mB3RYYGDu+9rld6YsV
 2hnAwiy4Gwv+Ei+3i/WK10Hi5kwZ7SCxquaG7lzlhEtR+ufY8MGoLCa8/
 qeyLbDDbc7Q4VHPdDDZESXWftgHdWcIIhrSAlIRYZu0JRAzYR4rIFYG+g
 M8EdU7esUScW6jEXYX3Yw5tnGv/jGEuf1CNX4ZL2PnCYZvtBJryWw4/Bn
 qGwn8kEJV+EATZ8krqco3fCD0Ju6jTbNe8CTxWZ7HQkbPJI7un9tQ0G8V A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="356322743"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="356322743"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 14:52:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="1040254598"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="1040254598"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP; 08 Jun 2023 14:52:19 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 8 Jun 2023 14:52:19 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 8 Jun 2023 14:52:19 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 8 Jun 2023 14:52:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Sabf3Jgg4iZ4Gh7mDzd2H6ndSrn5P5YeOLy3DXKd5y6Rm98pcYfzUXsLHqhXZqFmQfCyuyGpBToc5syYUIXw9swKf08TqsDRhUFHNXXYJyNN3f1V8mHd3hvJW8smTQ1hWLTpeaE4LHV14o0Svs1XXQpp4Nt+E0wIBwk/sl6kRpqJ7SM1aV/gCljb5rp6oXxeuIJ5hym859TlHTFpuVT+eevY5S4UwrOflEbpAmlgLemXmFiHTYtrXowtBF9Gy8sXE8cJIOA8RLWdV4LucpDdaRZh2njIesqasKXGaQ5h3WvRKOlTilcNVsFwUfN/UsyATMUq/JlridXUZpsJdM5DoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bNP1h/Mkjn2s7K6LNLi0bLmRvFYfmTELlyEHQVNdWcs=;
 b=C3mTguZk79csfxTVaJUzh5ewtpc8hWYTpMXcOJj4UBIWpCzoRczb/QOpQZCmF321m2edsjCP26Id/SzAXILCZb4/zh/hjghRxEuyCIz9fEvfvvaWxxHYOCNDjAr7NGIxag3Po6RyyO6kNEwUIZEJhC9uUG31gAWxhVVQRZNSLf+IcVp29emeJ4JKXpbA83pDbOg4NVn8VzKMmB8vkS5/IQ0hyqJOHX0sr2Qm6a4wccVv2+l1Dbs8VySeNHLbRunlYnJYhPRKN4Q51TqJSQCtQPTrB/xigxpFJjwKs2uauFEY7Z+fwJ23lKEhZic6iISa7E+DRnBgd13kdO5fCgrpXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 CY8PR11MB7847.namprd11.prod.outlook.com (2603:10b6:930:7c::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6455.33; Thu, 8 Jun 2023 21:52:19 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::9f98:8f3c:a608:8396]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::9f98:8f3c:a608:8396%6]) with mapi id 15.20.6455.030; Thu, 8 Jun 2023
 21:52:18 +0000
Date: Thu, 8 Jun 2023 14:52:13 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20230608215213.GB6953@mdroper-desk1.amr.corp.intel.com>
References: <cover.1686236840.git.jani.nikula@intel.com>
 <2f2829dbcd9c08553306b7610555e75ed23802a1.1686236840.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <2f2829dbcd9c08553306b7610555e75ed23802a1.1686236840.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR13CA0027.namprd13.prod.outlook.com
 (2603:10b6:a03:2c0::32) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|CY8PR11MB7847:EE_
X-MS-Office365-Filtering-Correlation-Id: 8c4b2917-e7a9-418d-c920-08db686aa0bf
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1RWgNgvX0kFWjrtIp87zaz6qqHk0alekhPDkrWfaa79dy7CgA5QeUfFwD6Gxd5vsrZzJopBgtVSxqXBJ+0uSh363ljYBRrMkaFhiaPcFcxbbXu422Bek9aR+v8CWyxEMw2jnVHc/H5H4oBwpYfOiXNYZJ3ygLI9pdhEpn4Q0VFEHIwywXbijfLriLvbo414g71DlUWsp1mZfVU8+MpJKF4oWXAZnR0KWJnWluZYXAtXG+gG9NgeZn+1WQ3yx8SK2SA2hM6qWQHc0PmvOLZDzLMT4BG8vh4yo8ze6WXfLKiVvrguVZlKVuWkB+KmD8s2gW1LAdWCDVDtV/QyPoJWUCD8TVa6bYe6I2GSWRtnaGBXO5dsFfvr7gUHJEoVpuaJ5jVtdlWEvzyw98JMtFWQvIwifVlxHcIRZEPaizXvWCnNj0b9ofXmaAnHab1db0C5raqBNV2+CyzdGKBQANJIOtIljNKVwTKAg69G9rF9wTWEGH8mIOwNyluP0HwnS5zoWT1MzgLg6AX31+8XvNwuXPkkBcckPOiVYPCiVsHZD87/LduJQwBZlU+6frkPTV9SV
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(376002)(136003)(366004)(39860400002)(396003)(451199021)(41300700001)(8676002)(4326008)(66556008)(66476007)(6636002)(8936002)(66946007)(6862004)(5660300002)(316002)(66899021)(2906002)(6512007)(82960400001)(38100700002)(1076003)(26005)(86362001)(186003)(6506007)(107886003)(478600001)(6486002)(83380400001)(33656002)(6666004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?YKuiCes8CpH8U+H+C6bdYw8o3bUmSUg8KTZuvO1nXsQncCRmyHWUAwCWnW6A?=
 =?us-ascii?Q?gKrbeYYQySyXXQxClBRVw+/63mlyR9mUyrJjdzJMJMvo4vwYhEOdmyaG06hH?=
 =?us-ascii?Q?FmEEYdYsyCz2e/z4pYXriBWUhEmbkqpQv1SDA0UZ6qR0spFxZpTx3jv3oOcG?=
 =?us-ascii?Q?Hrvcg4GJTNPjtai+Eg5qzUhryfq9Azhxw1o4pXc695gw6P4HeVesxuqLtYNd?=
 =?us-ascii?Q?dKIiJcYXPijVlWM54CFDUuy+jQWDb0n4KuV7NmSKGPZd+KkvqdA+ttJlkAS1?=
 =?us-ascii?Q?9GA8JD0rjW9mCEu4ef0v6SSSQ3+RfrjiVa+MdilJ1KvztBNQAqgxGBh5rRjL?=
 =?us-ascii?Q?XeIKZe7omX0nLh6+ApJRa74U4O09OOm/VlXo/+Pfr1LMFDOHV0QBwAA8SAww?=
 =?us-ascii?Q?KV8oyiRgECoUT2FSCwqpOiazhP59dOcQj5k8jgI2hnOSCrOt4oFkJ+itdWZQ?=
 =?us-ascii?Q?HffjgQLhPpE8dqqn0A+CZQW6oxHPV6aVR6yn3IZlQrbG3W17YLhPVtAgIW4Y?=
 =?us-ascii?Q?/5TnNG/u62+0+QxTYuYqrRoopnVbqDq4IsW1MZKrk+RNkjbQYlNwTXWDNsDi?=
 =?us-ascii?Q?1GPh7CMChq1j4dKt1zhS2hJjCnvYIs0RArm+nI4DnHl0IrjkcEltB6PNl7+l?=
 =?us-ascii?Q?n3mjhP3iKy7//YcjMXimpKaix4AdsLZm/qsVgR6U/biAw9D9jIu8Jjri6Qnt?=
 =?us-ascii?Q?ayNMT4KuQ5aHe4JCTAjQB+ZJ/PokAgaVUtCwZ3cill/z80l13EAn/Fujlm1h?=
 =?us-ascii?Q?e6YJ/EpLpqdAs+isNkDtQhS8h5f+KdYjdgZieenQ7pdpk9Cdhj4VDvh9N+jN?=
 =?us-ascii?Q?gG594USYAec8tfFd2uJThCBVYgG2mfBHKQ37TGVuWG835Qu48jqMEGTKtpZR?=
 =?us-ascii?Q?ekb2bvhZF4Gw/WER+po9jyVgi8q8KmKQgN6b1ueRHIi1yLMA7Yt+FzhG70RR?=
 =?us-ascii?Q?OwQJRwLxoAvxzckYkc2D1r8Jy7vG5+idckl9gdrGNbBJk5aXls8h3SdHuZ2w?=
 =?us-ascii?Q?Qbq2YRxnFOncNTI3yvI12ufWNfXJOwqQZHPzsp/hYQKyti/w6da47RsXsjLI?=
 =?us-ascii?Q?+YtTtQ0K6IMiTiE5mq9G9g9WP0uV1mBlLaJPszQGM9dsJh7QnShIO+QE9Tuq?=
 =?us-ascii?Q?Z/Nf3joy5wGusuIHuv+f+AIm0pQwI+ERog3oPC6li2R0My9kIsaxdpetJo06?=
 =?us-ascii?Q?bXDQc8HFC10aR+EG9FBcJgx5XXMl60MmmSbpBTwsygfCb3LxVejtPnlfWFRB?=
 =?us-ascii?Q?OedsnXj23s83/S/hfLBoouMknuxeHvjnPqiBCqPvv98FBl4Wmp/+9ijSJUJm?=
 =?us-ascii?Q?B9mUolLEpuZKEkDnL7BQTGFAbjVqMG2svvacm6GhOvVgqfhKCvwKUD0Eq3On?=
 =?us-ascii?Q?FSshXNCZvtF+i4siST8wkkCBfBoOSKaV3Wkoy4xQyvff676S6vhSMdqGgO42?=
 =?us-ascii?Q?tbPhWT3KUnd/iptwjGeTorGo9i8SnZAxpEVSB4aCKnl3Ltyf46KhSHzu8OB+?=
 =?us-ascii?Q?JFptejSRubPpMbNeyOCmhjOtFQiQlgwg/AsRPhPhoHwxDMSci+R8CE2aU3R9?=
 =?us-ascii?Q?xXpEpSu6a1cr6P2bYYydDpteAwNOGjGqd1r6cCtE4tqZezSSVdtTUxFc+G0r?=
 =?us-ascii?Q?8Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c4b2917-e7a9-418d-c920-08db686aa0bf
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jun 2023 21:52:18.3804 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KlASmfKllQQ+pBdQ7W8Gjv4RdsM4QgHkZVMa1BByObB30OGhEa5c8N0zKHguyCSDNMiJ+Q9quUA+sTmqC1sJ8zK9tMY8R2wW5kEqjG7Wn3g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7847
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915: separate display info
 printing from the rest
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jun 08, 2023 at 06:09:02PM +0300, Jani Nikula wrote:
> Add new function intel_display_device_info_print() and print the display
> device info there instead of intel_device_info_print(). This also fixes
> the display runtime info printing to use the actual runtime info instead
> of the static defaults.
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  .../drm/i915/display/intel_display_device.c   | 21 +++++++++++++++++++
>  .../drm/i915/display/intel_display_device.h   |  5 +++++
>  drivers/gpu/drm/i915/i915_debugfs.c           |  1 +
>  drivers/gpu/drm/i915/i915_driver.c            |  2 ++
>  drivers/gpu/drm/i915/i915_gpu_error.c         |  6 ++++++
>  drivers/gpu/drm/i915/i915_gpu_error.h         |  3 +++
>  drivers/gpu/drm/i915/intel_device_info.c      | 20 ------------------
>  7 files changed, 38 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index 3fd30e7f0062..60cfe52c0bb7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -915,3 +915,24 @@ void intel_display_device_info_runtime_init(struct drm_i915_private *i915)
>  display_fused_off:
>  	memset(display_runtime, 0, sizeof(*display_runtime));
>  }
> +
> +void intel_display_device_info_print(const struct intel_display_device_info *info,
> +				     const struct intel_display_runtime_info *runtime,
> +				     struct drm_printer *p)
> +{
> +	if (runtime->ip.rel)
> +		drm_printf(p, "display version: %u.%02u\n",
> +			   runtime->ip.ver,
> +			   runtime->ip.rel);
> +	else
> +		drm_printf(p, "display version: %u\n",
> +			   runtime->ip.ver);
> +
> +#define PRINT_FLAG(name) drm_printf(p, "%s: %s\n", #name, str_yes_no(info->name))
> +	DEV_INFO_DISPLAY_FOR_EACH_FLAG(PRINT_FLAG);
> +#undef PRINT_FLAG
> +
> +	drm_printf(p, "has_hdcp: %s\n", str_yes_no(runtime->has_hdcp));
> +	drm_printf(p, "has_dmc: %s\n", str_yes_no(runtime->has_dmc));
> +	drm_printf(p, "has_dsc: %s\n", str_yes_no(runtime->has_dsc));
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 706ff2aa1f55..d137e62666e0 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -11,6 +11,7 @@
>  #include "intel_display_limits.h"
>  
>  struct drm_i915_private;
> +struct drm_printer;
>  
>  #define DEV_INFO_DISPLAY_FOR_EACH_FLAG(func) \
>  	/* Keep in alphabetical order */ \
> @@ -126,4 +127,8 @@ intel_display_device_probe(struct drm_i915_private *i915, bool has_gmdid,
>  			   u16 *ver, u16 *rel, u16 *step);
>  void intel_display_device_info_runtime_init(struct drm_i915_private *i915);
>  
> +void intel_display_device_info_print(const struct intel_display_device_info *info,
> +				     const struct intel_display_runtime_info *runtime,
> +				     struct drm_printer *p);
> +
>  #endif
> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
> index 76ccd4e03e31..4de44cf1026d 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> @@ -67,6 +67,7 @@ static int i915_capabilities(struct seq_file *m, void *data)
>  	seq_printf(m, "pch: %d\n", INTEL_PCH_TYPE(i915));
>  
>  	intel_device_info_print(INTEL_INFO(i915), RUNTIME_INFO(i915), &p);
> +	intel_display_device_info_print(DISPLAY_INFO(i915), DISPLAY_RUNTIME_INFO(i915), &p);
>  	i915_print_iommu_status(i915, &p);
>  	intel_gt_info_print(&to_gt(i915)->info, &p);
>  	intel_driver_caps_print(&i915->caps, &p);
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index ace8534b6cc5..51a1fc2a6f58 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -698,6 +698,8 @@ static void i915_welcome_messages(struct drm_i915_private *dev_priv)
>  
>  		intel_device_info_print(INTEL_INFO(dev_priv),
>  					RUNTIME_INFO(dev_priv), &p);
> +		intel_display_device_info_print(DISPLAY_INFO(dev_priv),
> +						DISPLAY_RUNTIME_INFO(dev_priv), &p);
>  		i915_print_iommu_status(dev_priv, &p);
>  		for_each_gt(gt, dev_priv, i)
>  			intel_gt_info_print(&gt->info, &p);
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
> index ec368e700235..f109656cb1cc 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> @@ -649,6 +649,8 @@ static void err_print_capabilities(struct drm_i915_error_state_buf *m,
>  	struct drm_printer p = i915_error_printer(m);
>  
>  	intel_device_info_print(&error->device_info, &error->runtime_info, &p);
> +	intel_display_device_info_print(&error->display_device_info,
> +					&error->display_runtime_info, &p);
>  	intel_driver_caps_print(&error->driver_caps, &p);
>  }
>  
> @@ -1983,6 +1985,10 @@ static void capture_gen(struct i915_gpu_coredump *error)
>  	memcpy(&error->runtime_info,
>  	       RUNTIME_INFO(i915),
>  	       sizeof(error->runtime_info));
> +	memcpy(&error->display_device_info, DISPLAY_INFO(i915),
> +	       sizeof(error->display_device_info));
> +	memcpy(&error->display_runtime_info, DISPLAY_RUNTIME_INFO(i915),
> +	       sizeof(error->display_runtime_info));
>  	error->driver_caps = i915->caps;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
> index a78c061ce26f..9f5971f5e980 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.h
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.h
> @@ -14,6 +14,7 @@
>  
>  #include <drm/drm_mm.h>
>  
> +#include "display/intel_display_device.h"
>  #include "gt/intel_engine.h"
>  #include "gt/intel_gt_types.h"
>  #include "gt/uc/intel_uc_fw.h"
> @@ -209,6 +210,8 @@ struct i915_gpu_coredump {
>  
>  	struct intel_device_info device_info;
>  	struct intel_runtime_info runtime_info;
> +	struct intel_display_device_info display_device_info;
> +	struct intel_display_runtime_info display_runtime_info;
>  	struct intel_driver_caps driver_caps;
>  	struct i915_params params;
>  
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> index 6e49caf241a5..53d316804071 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -93,9 +93,6 @@ void intel_device_info_print(const struct intel_device_info *info,
>  			     const struct intel_runtime_info *runtime,
>  			     struct drm_printer *p)
>  {
> -	const struct intel_display_runtime_info *display_runtime =
> -		&info->display->__runtime_defaults;
> -
>  	if (runtime->graphics.ip.rel)
>  		drm_printf(p, "graphics version: %u.%02u\n",
>  			   runtime->graphics.ip.ver,
> @@ -112,14 +109,6 @@ void intel_device_info_print(const struct intel_device_info *info,
>  		drm_printf(p, "media version: %u\n",
>  			   runtime->media.ip.ver);
>  
> -	if (display_runtime->ip.rel)
> -		drm_printf(p, "display version: %u.%02u\n",
> -			   display_runtime->ip.ver,
> -			   display_runtime->ip.rel);
> -	else
> -		drm_printf(p, "display version: %u\n",
> -			   display_runtime->ip.ver);
> -
>  	drm_printf(p, "graphics stepping: %s\n", intel_step_name(runtime->step.graphics_step));
>  	drm_printf(p, "media stepping: %s\n", intel_step_name(runtime->step.media_step));
>  	drm_printf(p, "display stepping: %s\n", intel_step_name(runtime->step.display_step));
> @@ -138,15 +127,6 @@ void intel_device_info_print(const struct intel_device_info *info,
>  #undef PRINT_FLAG
>  
>  	drm_printf(p, "has_pooled_eu: %s\n", str_yes_no(runtime->has_pooled_eu));
> -
> -#define PRINT_FLAG(name) drm_printf(p, "%s: %s\n", #name, str_yes_no(info->display->name))
> -	DEV_INFO_DISPLAY_FOR_EACH_FLAG(PRINT_FLAG);
> -#undef PRINT_FLAG
> -
> -	drm_printf(p, "has_hdcp: %s\n", str_yes_no(display_runtime->has_hdcp));
> -	drm_printf(p, "has_dmc: %s\n", str_yes_no(display_runtime->has_dmc));
> -	drm_printf(p, "has_dsc: %s\n", str_yes_no(display_runtime->has_dsc));
> -
>  	drm_printf(p, "rawclk rate: %u kHz\n", runtime->rawclk_freq);
>  }
>  
> -- 
> 2.39.2
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
