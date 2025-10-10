Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19FE8BCD10B
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Oct 2025 15:13:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67BCD10EB66;
	Fri, 10 Oct 2025 13:13:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e1IB7ZXc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7172110EB66
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Oct 2025 13:13:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760102002; x=1791638002;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=8FN/cFUwn/qEuTeqnhptFhWCMmBx8gs7EZOczhb9JHg=;
 b=e1IB7ZXcgMJd7653NUuD5ho9jJzpI8XupSh+wPBAxiW/JSwoZiH70mA6
 tQNWmB9iaLSkbTrvgAwOMhj/o8hvjPWgGezEnQjX7OeGYtCbKTMenfR60
 4ZeGR3vEoBIGjwagEcqkn+MlcETsmk/oczT7i1BUHpp62NW+CE7JIB4jQ
 0I5rAnm9NqNv8HZq6ymFnsT1P4wxB/xfmSatWNI/ti6Yu/d4mmH3Yk5Q/
 1sWj0+TeWneZicdr6XAudQmSc7/6ag5o99vhDejBEZGP3nfuy2GC+64i4
 ios4BtQEF25TU6bDY0dGSbXuPJOvCVjG2/2g/ApVymwIAE3miiHns8D7z w==;
X-CSE-ConnectionGUID: DMcdw9asRPy9KE9O2KC7zw==
X-CSE-MsgGUID: 2pQpVImsQUqzE2Hpc5+iwQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11578"; a="62024089"
X-IronPort-AV: E=Sophos;i="6.19,219,1754982000"; d="scan'208";a="62024089"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2025 06:13:21 -0700
X-CSE-ConnectionGUID: yLeGJ41IQieJUfQGzdMtjg==
X-CSE-MsgGUID: idab3iZUQ8O3jFfGJ2Ep/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,219,1754982000"; d="scan'208";a="180796984"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2025 06:13:21 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 10 Oct 2025 06:13:20 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 10 Oct 2025 06:13:20 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.26) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 10 Oct 2025 06:13:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ATNMcv8wC+vkUGLBbefZBDe0QUNnMWt6kgwLCWn61T8JOhecw7jH2Ki+ise2KdqCYgB2Q8C5nClJbNdyH93jWF2BDCKLwfWUUufFPXIS0uQdXTKsfdWmMXtAKwGhvONke6mBwglp7rUUPKXHdBc0eGBrt5eGjz6Z12553cUbjh6ExF52I8sIjs4EwCMX+2HfuEafSAUS3Ny+GChhsGaqbXRiHXzdOeKbEjB69bbGv5sHiZc1WUku0BZp6jBUr25gV7ZKZbbx67LN0hOhVXNoCKU7e0c+roQXeEfV/1c7gBh0j8BXbC8m+0TgYfl2LUYIbwLO4Iqb10yCrSn9gLqK7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bWMcAYdbFV6osmGHK38EtgNNEFjVFO5qZNRQHovjbTc=;
 b=YPU4rWHw2X3rooU2l43AEPz58v0Gf7niGa/JB/dPiiNleYu2zHi9QRfcQalpjwrVMn6mH+aUEZZQPMmZCaICDC8THKMp6NbopkpIJGGyE1jcaDAo0U3En19HYhbidKuv8ZejmXY2elVeceJvnBSNuTxJcGPrkRVeVJtzFvvuCbiu4GfRYnmVDDeErGpGfibFR37IoXCL2tbPIKe7F9Wt3sDmUtBV5MJNGejwonEXr2Ha4pF+ciNUpM1deSDBHV+7Sr6tWLNKmsb8jaJFQx5FU052QVtksHgM3vstD+CBXPIT15nV/coo0zcaku5C0F3ha5p9CUMQMb5L5JsnQt7V2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by SA1PR11MB6990.namprd11.prod.outlook.com (2603:10b6:806:2b9::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9203.10; Fri, 10 Oct
 2025 13:13:17 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%6]) with mapi id 15.20.9203.009; Fri, 10 Oct 2025
 13:13:17 +0000
Date: Fri, 10 Oct 2025 09:13:13 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915: drop unused non-i915 IS_<PLATFORM> macros
Message-ID: <aOkGaTf2Sep7Z7nX@intel.com>
References: <20251010080021.1087315-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20251010080021.1087315-1-jani.nikula@intel.com>
X-ClientProxiedBy: BY5PR16CA0027.namprd16.prod.outlook.com
 (2603:10b6:a03:1a0::40) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|SA1PR11MB6990:EE_
X-MS-Office365-Filtering-Correlation-Id: 35db67fc-1cb1-44a9-81e9-08de07fec684
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?ugvdjJJo64MauKRuXUlWGzRUWmvDGockvIEmwu98cXisMt8zs2J1JfVRBzOY?=
 =?us-ascii?Q?A2f/eBZzZNNXc3bDsu/GK/JAbBhaq9E8nmE5Y/yN5jUiXZ7z4n0zDt32l8wz?=
 =?us-ascii?Q?CqFMBiNryPgFxXWJBX3sWFbeKezoXs//aO9J/FQ6/D5rfjeY04tgsqETAtbW?=
 =?us-ascii?Q?lRluEcUolxy4IGLjGZL3MvU+EqwOhjE0xcD81COwtKprkX4OKf0QhcKNhgk2?=
 =?us-ascii?Q?80OwEZjsGQF7HfsSdDjk5bsUa9LANE1pzcJQJEYYCDpVj12PcgSZJdfHjoEi?=
 =?us-ascii?Q?zgwpEHuI1buXVRpMJx6xOq3DRX9xUkU9e1NRg8EC9AaGbD8tk5QzLzodWaxx?=
 =?us-ascii?Q?L78OXckdzolBA6NvQRigF3JhR7grORHKbke84M6Vly7Gzun+r/LgSxYWQF0T?=
 =?us-ascii?Q?BPlJDbmCDVv436kM5lPa/n5tVdi7Zb9wZlhMmc9n1AxaXmquV5gK5Lc7qOLk?=
 =?us-ascii?Q?mOaYfRopaDPXIqSPakx9VKSlJEgW8kGb3C/QDN6tSY0TnUEqY78I7RiM/D4f?=
 =?us-ascii?Q?P8RBBEUUmu9yJkhAh19DVKxukNo7lq+CehhE/Eo3dkf9oWwQiEk3cZbT3D8t?=
 =?us-ascii?Q?H58EmgCUDk9YYFKGDLcag4WzQ/myLnvxpif+T7jqy1KjBk/zL3gKMZkA145B?=
 =?us-ascii?Q?JBacjQXTRqyC+Y8Lg0Xy2+nMLiApIXmQXNVjUwETYBrlRyWZQ5798CRqlO0Y?=
 =?us-ascii?Q?d3emHLWbw6/2Sii87QkeaLK1uuPpwjsv3dtuEAFhsXn/wWuZhI6P8YHEdo/E?=
 =?us-ascii?Q?bvo3AacmVotM/IkT7z808ihtDY6zDczPhfJsANQV5oZDgYgsfz3TqvZJwCGp?=
 =?us-ascii?Q?qhDLKFdGziojJwHF/8PKf1TqYHHoWU5Bo5FL2O0YZZGAOLeQcpaTYynfwNyp?=
 =?us-ascii?Q?pMw3jaRWUU2tYWQU05ViRYcJNxHS7dDSliQ2Mr3ogPu1Zpy6t6/BoLcVAQ7h?=
 =?us-ascii?Q?QEJpLoJA7L1x7/rayyXG8mnMb1HTcRQfvhqb1ChDHyrKZCNAxdPsVOUDdjXk?=
 =?us-ascii?Q?FHzxY0CfQHlHFHZrEEJh0+0DleAZPGeFFyjkhmLxlaqDyvD6nJs+7AceKZy5?=
 =?us-ascii?Q?4ICqLsrNZKELxTw6JPyax/T2UZPkpON4NtNZAg1tN1JAf9h4imUQKmb0CgT+?=
 =?us-ascii?Q?bH3Kh11I+JjO8GawLxrPEpyLPos1L0p4q0jWrMbvLvaHav2vT1HUqIZdRAbY?=
 =?us-ascii?Q?6S0X7JqmIj+tGgzb05PjhddfCFjCvtN3UfgJDVRJDHTPI0KaW4wwrrFmBmgp?=
 =?us-ascii?Q?/dtu+ZIPitWHqidz3s8oolu2bHuNBucFdeuK+WYT7Tnef8YIZyMohMjEbDcC?=
 =?us-ascii?Q?iEU5G6YfWYYshBDmOWL/gQvwissdsJbBYLW2cK8+TI1uZ4gL5xIanLaR65Rg?=
 =?us-ascii?Q?nUmG8Z8eyOJGsJnHsIngbXGUJRcB5WYKuLWVSXNxMId5vmLrIG39ob2EMQ7F?=
 =?us-ascii?Q?0oY6qohUu88gBQ755TbyERNFxIkE3WbA?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?etKgebTKRfZ/mjlM0ez54Uaj6/dCOutJbijoqq22kICfGl+xtDn/2mIRkLY2?=
 =?us-ascii?Q?1EZ1gxwCoh3qvv4zZ1z3ItrmOcmGqhjARZlkNoVsN2/rQSimni8ML8t1OobJ?=
 =?us-ascii?Q?Xwu+5x3GAA9IDJhGuir2ZiwoCilt2+IINUJsfls2LejHTpcMMmjBXALHQvZK?=
 =?us-ascii?Q?z1aG2g69W/aFYORyzhHRzpe3ZGsIGru7P6PeY/PlqR2FDt4IR90psIij7i/D?=
 =?us-ascii?Q?lHO+LN9fr59PaBw1W1qPJnaGuXkfJeWZZCXY1FUHXGWUlMO7pNHZ9nokqNR0?=
 =?us-ascii?Q?MFZbINoql9ZaKLsuBvtA8ZmlRDBInOG5o6NRaXPBUASRWx6M/DySYK3xGQMp?=
 =?us-ascii?Q?sOjoJnkZI+wAQCNamZ4US6EqrWhcfjTlbQnLH8CpyWpRw3Kp+oRc1FIMmEWo?=
 =?us-ascii?Q?Hm8NAEbbh8CWGcg0ZArpZgIwJT5imUd1o5AQZMQTdUqXlO9kQjmfIIWI3bgE?=
 =?us-ascii?Q?CeOoxAw/QdhKCdjQx53bRx3y7ZPvli5oDfBZY5PbCWUJPEIxlkk1JDhkqLht?=
 =?us-ascii?Q?CeNeZftIRu24MIrlLbF1IhRSDe1/9Vd5EuMlv+lLsiTu/pSpxO2ZhJqe5FJn?=
 =?us-ascii?Q?374Klo9XDkxXLXbrkgHTI9vlEzbckzjAs7IDpLPfQRtO5Sc+LT1UcY6ZRAkh?=
 =?us-ascii?Q?uTMWVrTxOg88qd22XcBsZ0LClLEoeqmHoaomPu6NqYUf8n3kObohhCGeJK6/?=
 =?us-ascii?Q?sV9kdvl+cWLgaAYmBgW6821iRMV7D5srwxF4W1DkZcRIifP4NE3lwVthZAMl?=
 =?us-ascii?Q?QXP6M9K2aeHS2Qez7XHGE98oTmexcq8tWwRaYfOg7n+ZaKR9MpoJMqZPDEvf?=
 =?us-ascii?Q?I96UYvEvCF6CwZrgqas6ghhE0QWiNuBYpE619XsK19fIpJriFC24DNgEwd70?=
 =?us-ascii?Q?bk/7EDsbP/mrVTqfrd6jxKTd2LnM5BCLNJmel+6nONs0s4LRdpH2LclvhJb0?=
 =?us-ascii?Q?R0ZIpMbquGEfkanz7CZcqu5x+jgdlg1f4Leu9v7r/CJ9NrQ6xB8bzMDyN6dC?=
 =?us-ascii?Q?D3nyQRSP4W/2pqjnMgpMYbXb9E7GrticAapUFV6fVtaR5K+Q6x/IqrHAduwn?=
 =?us-ascii?Q?BKLH2wQjn3ABijFA3H4xwNAi+zPSQy/ZD+YY2e3spNiIjEgol8Cjv7s7h18v?=
 =?us-ascii?Q?Bn1Hv33N5dHJgD4evG0V1wC96RcWOPPy2NOpCbiHllOL723yJSmOmjEH9/xl?=
 =?us-ascii?Q?zZgthdx7utyBxbQAjvakmih/CJAHstbtQIqgrU9bpu1vjXceHwhWZ6z/cu0U?=
 =?us-ascii?Q?DFs65zSP+wJaln99yh1yjmO/Vx/eY5MSGW6AnsXkrI4aFWJLZ510fPC4XCVi?=
 =?us-ascii?Q?7Bc4iK+ocvD2XYxPNYE9aOcEuIggPLAT0L4hGWHotHnXWgUJ2qpyYR3fuy7n?=
 =?us-ascii?Q?jBBmEGW9uAhnHwHyf68rw3fHw5qp2B5lKqDtIVBwnrrlp8QpO1Ki/trxzxiR?=
 =?us-ascii?Q?azqziG0GFb16TxKKv06aMt+MPjQYXcKIJG3t1jO8/Ov4mb8He8otodr2BXBg?=
 =?us-ascii?Q?THJouAhzZ22lHcYcuN/jNjXDr1jSAXe8ruXQKSsQZ2t5kEigG83JdB5cRQ68?=
 =?us-ascii?Q?Q5M9RnuWigQ1XkQ8eYYFuxiPyVZmfOAgDACB/Roq?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 35db67fc-1cb1-44a9-81e9-08de07fec684
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Oct 2025 13:13:16.9601 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IdZMvDu209ZN1iLuxnPHxhW6ebHhwqCF4pE8EDkGseO8klfE5EYSms2rxDeorqZ73PLjLNkyXd8fEg8H12/kBg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6990
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

On Fri, Oct 10, 2025 at 11:00:21AM +0300, Jani Nikula wrote:
> The IS_LUNARLAKE(), IS_BATTLEMAGE(), and IS_PANTHERLAKE() macros were
> added for compatibility with the xe driver, for display needs, even
> though i915 does not support the platforms in question. Display has
> since moved away from the macros, and they are no longer needed. Remove.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_drv.h | 10 ----------
>  1 file changed, 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 6e159bb8ad2f..adadb7e7836f 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -488,16 +488,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  #define IS_ALDERLAKE_P(i915) IS_PLATFORM(i915, INTEL_ALDERLAKE_P)
>  #define IS_DG2(i915)	IS_PLATFORM(i915, INTEL_DG2)
>  #define IS_METEORLAKE(i915) IS_PLATFORM(i915, INTEL_METEORLAKE)
> -/*
> - * Display code shared by i915 and Xe relies on macros like IS_LUNARLAKE,
> - * so we need to define these even on platforms that the i915 base driver
> - * doesn't support.  Ensure the parameter is used in the definition to
> - * avoid 'unused variable' warnings when compiling the shared display code
> - * for i915.
> - */
> -#define IS_LUNARLAKE(i915) (0 && i915)
> -#define IS_BATTLEMAGE(i915)  (0 && i915)
> -#define IS_PANTHERLAKE(i915) (0 && i915)
>  
>  #define IS_ARROWLAKE_H(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_ARL_H)
> -- 
> 2.47.3
> 
