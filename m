Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BDF54DA758
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Mar 2022 02:24:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED95089DA7;
	Wed, 16 Mar 2022 01:24:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 522E089DA7
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Mar 2022 01:24:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647393874; x=1678929874;
 h=message-id:date:subject:to:references:from:cc:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jxLEtbKgcZo1g4lTnjNy4NfhRfZqRJJThv+SKg+2+90=;
 b=WGcyFjeiqWhyaHhwsCK+xzSRm9eXNgGhHe86yzJO+0qiMryn36mWkVD6
 Sd6Ks6tgxquKFOIqNdiAcYj2RiroohadPkkJ56FakCIB+DUYM6AAr1NIk
 znEIen4s0QbgdWtAOAFd6/qxHcqGEBUrMxb/JKJufDfZnL2IJQGBzwbHt
 51ZanGAYbgVW7WJkFU4q4xvR5zGwujDn22NZ4uKWIyLX9olz17rYsUoq1
 J4l5uk6OLf06u/vY42u1AJWreUiA20MCfOp8pgKbTBOP/H/A++w/tavp6
 ET7NHrLC4Ec0uNt7Jao5B82PVvjhMwuFzRRHQTKKcjX9TXkzc5YCFxXNt g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="236407018"
X-IronPort-AV: E=Sophos;i="5.90,185,1643702400"; d="scan'208";a="236407018"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 18:24:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,185,1643702400"; d="scan'208";a="644472753"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga002.fm.intel.com with ESMTP; 15 Mar 2022 18:24:33 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Tue, 15 Mar 2022 18:24:33 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Tue, 15 Mar 2022 18:24:33 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Tue, 15 Mar 2022 18:24:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AVI0+CiCUPmK5h3GE87MA5mrPzf2UCr/7mZLCiSdVmS7su36JwBw6fIixpvRGYokCn3NX5Lqw3fr/ventzVc3bn5T+5HMGQawdZ1SRavAn3CH00Wl1c2oUcrpyJxihjkFnWPKB4yZo/f3ya90B6EsKmsohCIweVDiDSPuDQzbXOqDB5CIH+JmbrewQnJuJNZ85OKH6Y99jdDG6fl9Y9ro+gbiQn2BKE5TsOp0UMVJoBemlAsvSOF/EjgghqIpfI+K28bsglskUn14Fw98zts3w7IozpEOz1++bT8/6YvVOx2LkmmDKYUdoQptdKjdQYDUICyqUSPuyTAXzUyK5Mivw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hEbkeKzj2mXiLwhWTfHJgki7xbKirgIwhISfrGCvk4c=;
 b=bBXPNnaju0rbZG8dVD8qRrA8RxNou+N65b5Eu4pXVe/nWdfHu+ucjOWNMLr2CQmeBYbtQqtknKsu8rqklAMmhnnI/LwW94khP/fE4LqkHbBE4tF60JHSXWY+iKdeFTPCiFuAFcUqP7JSsps0+60QsDbXu4paCq3jSFwXPmENRd7MXZo8t4hoieLV+PwB/OPr7a/edJ3bv3cHsTLJO+pYFDZLJqRacG6X489qHKtULrNMPBA9FbpbU6D8ic9PBXQHV1vkm4dYifcpc5AhIP8vFy+CvFS+OF2zBnrq6g3Ndn7ECbBGk+I+Gq35ZJclpe2nmDbQnfZnZSPYG8Qn9eQaJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1563.namprd11.prod.outlook.com (2603:10b6:4:5::13) by
 CO6PR11MB5585.namprd11.prod.outlook.com (2603:10b6:5:356::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5081.14; Wed, 16 Mar 2022 01:24:30 +0000
Received: from DM5PR11MB1563.namprd11.prod.outlook.com
 ([fe80::8559:2882:703d:3890]) by DM5PR11MB1563.namprd11.prod.outlook.com
 ([fe80::8559:2882:703d:3890%12]) with mapi id 15.20.5081.015; Wed, 16 Mar
 2022 01:24:29 +0000
Message-ID: <28607a49-d08f-cba6-8a2d-cc1a324a0125@intel.com>
Date: Tue, 15 Mar 2022 18:24:26 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: <intel-gfx@lists.freedesktop.org>
References: <20220314170954.1537154-1-alan.previn.teres.alexis@intel.com>
 <164736864422.20492.15417503977611416401@emeril.freedesktop.org>
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
In-Reply-To: <164736864422.20492.15417503977611416401@emeril.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR05CA0033.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::46) To DM5PR11MB1563.namprd11.prod.outlook.com
 (2603:10b6:4:5::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f4b19e7a-f3bd-4a5a-cc7d-08da06ebb7c2
X-MS-TrafficTypeDiagnostic: CO6PR11MB5585:EE_
X-Microsoft-Antispam-PRVS: <CO6PR11MB558513DF499BE42812A1F5CA8A119@CO6PR11MB5585.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hdndWcTtVfm3iya8QzfiUdLyZFb/r/18gD7v3Q9LnBPCDCeG9G+e/bAk0+gAkwqdOWkYI59CXYn9VBkjrGT/SGc3s0nSC/+TIzftNu0udEUr4E4X0RShkxyZDcZJReoFaGCfXHDyv2XLkcfR+6cb9p08/TW4X6l3Y9qRtcfRrLejaQ8QKtiBSE6uS8YNQ3XL/Lvkz+fF08L2549CtT1m1vEcLWIrzn3v5dl2T2sGcJ9ILGpSCtLP82Owub7VYrcOCgWW/mOs1Tw4OaXhHr29WVdN5C4G53beZQtS1TUBRMA9HpaDJoHC/y7Y8wTtC7JvUPBKhlY1O7ICxWFoPjbfJx476amLzK016kqF4IvSdXbhv6JN4kIpUMvEOiLGjxrFVsL5woriK/uuT8N9FebxPsG+jjHqv6/W8YwSViiRhQjeaUozD2+IxBhFXgW97zSkWWiNnAVsNOUvKBz0jlAFuGm+5h4sa0wTs5CfcG7e4O89uSq/CBuAL+PkxlJAINTKla0iYBWpaqUkRaURHMxi7YYIe09bU7U64kcC4xNuhAcV20Rrj+QhzRmXHnok70Xup3GrloqjYEJ73O33zHU/2Xuidas/AFGaRmOQrTGqTHfc5RnkLueGeRlNURFIaVQWHuOE6XufI/c6HBVYzgIxwh/LkruhpZMLHdNOwR5IaSsFVh8oiI2z0Ou77fxbdsccxU0MT7fwxvo0UrlPaQa1mJwGlukUmXu+rKm+voSu4Yba0YzrW2CjTQ2RfQ9EzKg8
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1563.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(6486002)(31686004)(30864003)(966005)(38100700002)(316002)(82960400001)(6916009)(6666004)(6512007)(5660300002)(36756003)(6506007)(8936002)(508600001)(53546011)(2906002)(66946007)(66556008)(66476007)(4326008)(86362001)(83380400001)(2616005)(107886003)(31696002)(186003)(26005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZU00L0RqSThvZ2RNZ3dCa3FBb2VOZWkvMFVvbmt5OEg2bDRnMUtRYURVd2Zz?=
 =?utf-8?B?eU1UYnNtVEdDQ09mb3daanAxaktreXl0V0VHS2N2ejJLMVk5VmFlSjE2TXg4?=
 =?utf-8?B?THF1b01uMTVKcGZFbSs3U3FEeUdZOHBmSmk3ZVJ0NWtZZ2xneUJKMzJBd1Bj?=
 =?utf-8?B?QUpTTExVaWtNMFZKZytRdVdjUmMrYStmQk9aUGgxcFZZREQyQkpTNmU5QTg3?=
 =?utf-8?B?UXVTM2VuUVQyYkcyK0RGZjRnbUViMStwenMrTFRXNnMvTWxsb3NGUFB0VE4w?=
 =?utf-8?B?K1pXRm1MVGpId1pRSStaSTNuOHFMRFdFTjE2dXNKTE9QcC9ESXBJT2RVNE9u?=
 =?utf-8?B?ZEJPdjJnaGhzMDFsdVFwTTFWb1ZHdVdaczlwNjlXek1BV3lxOWJSRlRFVEg3?=
 =?utf-8?B?UC8zN3VLTU4yQTdtQ3hidm5JL1NLcmNoWDBXZGE5Z0poNTdUaTlNYzNzQ0k5?=
 =?utf-8?B?QUt3SHRFRGc1cDV2Y2FZQXlEaFp6UlQrVHRMYlJUd2R1aFJacWIzU3A5T0Nz?=
 =?utf-8?B?T3NRNjVhem9jWmlLMExmL2ErdE5NNXc4WThFZHk3cUp0UVhzMldJT0lYaWdD?=
 =?utf-8?B?N1M3Qi9yN04xK052cXM1Tk96aEpyUUFOYWNpbUZjU09hemI2UHNkOWpHd0pJ?=
 =?utf-8?B?bWZjVnMyMC9YS1dncSt2WmlYckpmOXZaeksvRjRMbTQreDhibkhlb0pBTjZZ?=
 =?utf-8?B?dUJ6QS96ZEJMNFBUWDFZek1vbzBWcllBdUE0WjYxSUkxQ1NucUY4TFMxQlQz?=
 =?utf-8?B?OVdUdTBueEtScGx5NDZMSnllYVFUd0EzeitWUE5hS3pLQVBFeitTd2cvdmJY?=
 =?utf-8?B?MmU2cnB1Z3N3MXFIay9OdzNvdlI0VWdETlFnQWZMbGNDbGxXWEV1bm44d2NH?=
 =?utf-8?B?VkpYTUdsR1k4aGhFOU1WVlNYZ2MvYmN6ajQ2bEhRd2FvNzFBZGMxd0NjN3lV?=
 =?utf-8?B?OVN3SFhYd1NwcDNvSFlZWWlydzBqMzRlK0drWkpRR3pLWGQyc1Vja1pWa3o5?=
 =?utf-8?B?T1pGOHpVQWtjU1JKZzJlT1lLZGRzbjJvc2JJa1NmN2FzUmRPWkFHbFZJMDI3?=
 =?utf-8?B?bE1HcjZjYmxRRlNRZDVNdnNzUWZDdkg3dzFXT3FqbjVWTFRCcUdsOWY2MTJz?=
 =?utf-8?B?TjRlSDdQLzVBTGRrNlQ3NVZDWnQwODJYN00wbDZkaXRJZjROUWNIT0tjMmhW?=
 =?utf-8?B?NHpzV3hxcEhKbEJuNFBmN2dJeHc5TmdEYmV2dzZiem1zQ2NvdHBoNmJHWkpY?=
 =?utf-8?B?WXdNUnBaS3hVdU92dkx2K3JJckJNUU5pYjdrczkyaWZTaHZRV09ibGtmaXV3?=
 =?utf-8?B?bUp4MzIyZ1djWVIvajhOUzJTbHJ0Mzd1ZWJVUGRBcGxWcW9PUXJLRjVSeWZP?=
 =?utf-8?B?bUNhTU9Wc09lSTV1N2dMR0ZrbFg3d2EyblRKaWMwc3B1RE1LcGlmbVNxN0Rs?=
 =?utf-8?B?dFN1Um5UWW11eUNvVTFHT2pTKzNaQXUzVXVWZm1WcVgwbGlHUlY0QXVPaCt1?=
 =?utf-8?B?eUpmTC9TWGl4Qlo5aGVlaHZmVDM5ZElJemUwZkRQMXRCRmx6anJFUGF1dE9j?=
 =?utf-8?B?NnVlbVBFckkxcjJPUWozMWNiRWJhVXV4Q0VCSjM1ZFlMZzBjby9ueG1YRUIr?=
 =?utf-8?B?bThRU0dhUEFoN01CRWZvQ0ZtYmJhUDdxc1RDZnd4akF3YU5LcGtxSm5YaFpQ?=
 =?utf-8?B?c0NoVEpCL2RtNWtpc3MwN2VUT2gvbU9rYmgxTW45cDF0SnVVdEtBNVhYaDRv?=
 =?utf-8?B?TDlVOGhWa0hOSzJIS1VpTFhTNFlHaW1nd2g3VEdxSlBCRHlDamJGbm5Da3Ey?=
 =?utf-8?B?VjRpREpJck82NnVBeVNqKzlxNVJ5WkJGZElKM01SV2hZa3Q2Zmd0Y0cwdkJ6?=
 =?utf-8?B?a0lWakh4YUJmSUlzT01UQWFsNXNnTnZJZ0k1QjVqdlZwcG56cVRqZ1NObUFV?=
 =?utf-8?B?MGxPcEFpQTNQY25ETjdUdU4vMEhVYjVldzNyRVdxcDFjb3ZhNFV3TDhPUEJP?=
 =?utf-8?Q?Q5rt89Xpzrkm7AWf5fqgE1J7dEIdwA=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f4b19e7a-f3bd-4a5a-cc7d-08da06ebb7c2
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1563.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Mar 2022 01:24:29.8455 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oSF+A2freGwwNJqUIEFMi7t+wMAmYfWyra0luhScj9biJWsqSFD7fffrA5p81mcxibDcKxFI60e3oM0Q98c2QMKf/qkblDvxfn3AzbRJSR4wmz8KDMbbGDwBWMON+XR0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5585
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_GuC_Error_Capture_Support_=28rev2=29?=
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

I shall fix the length line warnings.

However i shall not fix the " WARNING:OOM_MESSAGE: Possible unnecessary 
'out of memory' message" warnings for reasons as stated because the 
caller function is not reporting the OOM error and because if such an 
error occurs, the ADS function that populates the offsets for the 
error-capture register list will default to the null list. And even if 
the null list had failed to allocate, the ADS routine would have been 
able to use the initial empty error-capture region that would have been 
interpreted as a null list. The reason why i still DO want the drm_dbg 
(as opposed to a drm_warn) is because I am assuming the the definition 
of "i915s normal operation" does not include guaranteeing a valid 
error-capture dump since this would be a driver error-handling-condition..

...alan


On 3/15/2022 11:24 AM, Patchwork wrote:
> == Series Details ==
>
> Series: Add GuC Error Capture Support (rev2)
> URL   : https://patchwork.freedesktop.org/series/101348/
> State : warning
>
> == Summary ==
>
> $ dim checkpatch origin/drm-tip
> 41d2f067e825 drm/i915/guc: Update GuC ADS size for error capture lists
> -:40: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
> #40:
> new file mode 100644
>
> -:324: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
> #324: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c:653:
> +				ads_blob_write(guc, ads.capture_class[i][j], ads_ggtt + capture_offset);
>
> -:345: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
> #345: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c:674:
> +				ads_blob_write(guc, ads.capture_instance[i][j], ads_ggtt + capture_offset);
>
> -:469: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'regslist' - possible side-effects?
> #469: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:63:
> +#define MAKE_REGLIST(regslist, regsowner, regstype, class) \
> +	{ \
> +		regslist, \
> +		ARRAY_SIZE(regslist), \
> +		TO_GCAP_DEF_OWNER(regsowner), \
> +		TO_GCAP_DEF_TYPE(regstype), \
> +		class, \
> +	}
>
> -:513: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (16, 16)
> #513: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:107:
> +		if (reglists[i].owner == owner && reglists[i].type == type &&
> [...]
> +		return &reglists[i];
>
> -:689: WARNING:OOM_MESSAGE: Possible unnecessary 'out of memory' message
> #689: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:283:
> +	if (!caplist) {
> +		drm_dbg(&i915->drm, "GuC-capture: failed to alloc cached caplist");
>
> -:731: WARNING:OOM_MESSAGE: Possible unnecessary 'out of memory' message
> #731: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:325:
> +	if (!null_header) {
> +		drm_dbg(&i915->drm, "GuC-capture: failed to alloc cached nulllist");
>
> total: 0 errors, 6 warnings, 1 checks, 749 lines checked
> 7b2eb12974e1 drm/i915/guc: Add XE_LP static registers for GuC error capture.
> -:26: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
> #26: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:25:
> +#define COMMON_GEN12BASE_GLOBAL() \
> +	{GEN12_FAULT_TLB_DATA0,    0,      0, "GEN12_FAULT_TLB_DATA0"}, \
> +	{GEN12_FAULT_TLB_DATA1,    0,      0, "GEN12_FAULT_TLB_DATA1"}, \
> +	{FORCEWAKE_MT,             0,      0, "FORCEWAKE"}, \
> +	{GEN12_AUX_ERR_DBG,        0,      0, "AUX_ERR_DBG"}, \
> +	{GEN12_GAM_DONE,           0,      0, "GAM_DONE"}, \
> +	{GEN12_RING_FAULT_REG,     0,      0, "FAULT_REG"}
>
> -:34: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
> #34: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:33:
> +#define COMMON_GEN12BASE_ENGINE_INSTANCE() \
> +	{RING_PSMI_CTL(0),         0,      0, "RC PSMI"}, \
> +	{RING_ESR(0),              0,      0, "ESR"}, \
> +	{RING_DMA_FADD(0),         0,      0, "RING_DMA_FADD_LDW"}, \
> +	{RING_DMA_FADD_UDW(0),     0,      0, "RING_DMA_FADD_UDW"}, \
> +	{RING_IPEIR(0),            0,      0, "IPEIR"}, \
> +	{RING_IPEHR(0),            0,      0, "IPEHR"}, \
> +	{RING_INSTPS(0),           0,      0, "INSTPS"}, \
> +	{RING_BBADDR(0),           0,      0, "RING_BBADDR_LOW32"}, \
> +	{RING_BBADDR_UDW(0),       0,      0, "RING_BBADDR_UP32"}, \
> +	{RING_BBSTATE(0),          0,      0, "BB_STATE"}, \
> +	{CCID(0),                  0,      0, "CCID"}, \
> +	{RING_ACTHD(0),            0,      0, "ACTHD_LDW"}, \
> +	{RING_ACTHD_UDW(0),        0,      0, "ACTHD_UDW"}, \
> +	{RING_INSTPM(0),           0,      0, "INSTPM"}, \
> +	{RING_INSTDONE(0),         0,      0, "INSTDONE"}, \
> +	{RING_NOPID(0),            0,      0, "RING_NOPID"}, \
> +	{RING_START(0),            0,      0, "START"}, \
> +	{RING_HEAD(0),             0,      0, "HEAD"}, \
> +	{RING_TAIL(0),             0,      0, "TAIL"}, \
> +	{RING_CTL(0),              0,      0, "CTL"}, \
> +	{RING_MI_MODE(0),          0,      0, "MODE"}, \
> +	{RING_CONTEXT_CONTROL(0),  0,      0, "RING_CONTEXT_CONTROL"}, \
> +	{RING_HWS_PGA(0),          0,      0, "HWS"}, \
> +	{RING_MODE_GEN7(0),        0,      0, "GFX_MODE"}, \
> +	{GEN8_RING_PDP_LDW(0, 0),  0,      0, "PDP0_LDW"}, \
> +	{GEN8_RING_PDP_UDW(0, 0),  0,      0, "PDP0_UDW"}, \
> +	{GEN8_RING_PDP_LDW(0, 1),  0,      0, "PDP1_LDW"}, \
> +	{GEN8_RING_PDP_UDW(0, 1),  0,      0, "PDP1_UDW"}, \
> +	{GEN8_RING_PDP_LDW(0, 2),  0,      0, "PDP2_LDW"}, \
> +	{GEN8_RING_PDP_UDW(0, 2),  0,      0, "PDP2_UDW"}, \
> +	{GEN8_RING_PDP_LDW(0, 3),  0,      0, "PDP3_LDW"}, \
> +	{GEN8_RING_PDP_UDW(0, 3),  0,      0, "PDP3_UDW"}
>
> -:71: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
> #71: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:70:
> +#define COMMON_GEN12BASE_RENDER() \
> +	{GEN7_SC_INSTDONE,         0,      0, "GEN7_SC_INSTDONE"}, \
> +	{GEN12_SC_INSTDONE_EXTRA,  0,      0, "GEN12_SC_INSTDONE_EXTRA"}, \
> +	{GEN12_SC_INSTDONE_EXTRA2, 0,      0, "GEN12_SC_INSTDONE_EXTRA2"}
>
> -:76: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
> #76: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:75:
> +#define COMMON_GEN12BASE_VEC() \
> +	{GEN12_SFC_DONE(0),        0,      0, "SFC_DONE[0]"}, \
> +	{GEN12_SFC_DONE(1),        0,      0, "SFC_DONE[1]"}, \
> +	{GEN12_SFC_DONE(2),        0,      0, "SFC_DONE[2]"}, \
> +	{GEN12_SFC_DONE(3),        0,      0, "SFC_DONE[3]"}
>
> total: 4 errors, 0 warnings, 0 checks, 180 lines checked
> fe8afd1fccca drm/i915/guc: Add XE_LP steered register lists support
> -:70: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (16, 16)
> #70: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:163:
> +		if (reglists[i].owner == owner && reglists[i].type == type &&
> [...]
> +		return &reglists[i];
>
> total: 0 errors, 1 warnings, 0 checks, 260 lines checked
> 9473e1b1adce drm/i915/guc: Add DG2 registers for GuC error state capture.
> d2224cffdf02 drm/i915/guc: Add Gen9 registers for GuC error state capture.
> -:23: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
> #23: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:28:
> +#define COMMON_GEN9BASE_GLOBAL() \
> +	{GEN8_FAULT_TLB_DATA0,     0,      0, "GEN8_FAULT_TLB_DATA0"}, \
> +	{GEN8_FAULT_TLB_DATA1,     0,      0, "GEN8_FAULT_TLB_DATA1"}, \
> +	{ERROR_GEN6,               0,      0, "ERROR_GEN6"}, \
> +	{DONE_REG,                 0,      0, "DONE_REG"}, \
> +	{HSW_GTT_CACHE_EN,         0,      0, "HSW_GTT_CACHE_EN"}
>
> -:39: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
> #39: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:42:
> +#define COMMON_BASE_ENGINE_INSTANCE() \
>   	{RING_PSMI_CTL(0),         0,      0, "RC PSMI"}, \
>   	{RING_ESR(0),              0,      0, "ESR"}, \
>   	{RING_DMA_FADD(0),         0,      0, "RING_DMA_FADD_LDW"}, \
>
> total: 2 errors, 0 warnings, 0 checks, 146 lines checked
> d570336063fd drm/i915/guc: Add GuC's error state capture output structures.
> 337a718c748c drm/i915/guc: Update GuC-log relay function names
> b56a530bf6ee drm/i915/guc: Add capture region into intel_guc_log
> -:58: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
> #58: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_log.c:217:
> +	log_buf_state = src_data = log->buf_addr;
>
> total: 0 errors, 0 warnings, 1 checks, 155 lines checked
> aebb26f6ac77 drm/i915/guc: Check sizing of guc_capture output
> 4c1ddca98b9c drm/i915/guc: Extract GuC error capture lists on G2H notification.
> 2dbcd0c5a00f drm/i915/guc: Pre-allocate output nodes for extraction
> aab27c57b88b drm/i915/guc: Plumb GuC-capture into gpu_coredump
> fc94e848f611 drm/i915/guc: Print the GuC error capture output register list.
> -:35: WARNING:BAD_SIGN_OFF: Duplicate signature
> #35:
> Reported-by: kernel test robot <lkp@intel.com>
>
> -:134: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'a' - possible side-effects?
> #134: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1440:
> +#define __out(a, ...) \
> +	do { \
> +		drm_warn((&(a)->drm), __VA_ARGS__); \
> +		i915_error_printf((a), __VA_ARGS__); \
> +	} while (0)
>
> -:144: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'ebuf' - possible side-effects?
> #144: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1450:
> +#define GCAP_PRINT_INTEL_ENG_INFO(ebuf, eng) \
> +	do { \
> +		__out(ebuf, "    i915-Eng-Name: %s command stream\n", \
> +		      (eng)->name); \
> +		__out(ebuf, "    i915-Eng-Inst-Class: 0x%02x\n", (eng)->class); \
> +		__out(ebuf, "    i915-Eng-Inst-Id: 0x%02x\n", (eng)->instance); \
> +		__out(ebuf, "    i915-Eng-LogicalMask: 0x%08x\n", \
> +		      (eng)->logical_mask); \
> +	} while (0)
>
> -:144: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'eng' - possible side-effects?
> #144: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1450:
> +#define GCAP_PRINT_INTEL_ENG_INFO(ebuf, eng) \
> +	do { \
> +		__out(ebuf, "    i915-Eng-Name: %s command stream\n", \
> +		      (eng)->name); \
> +		__out(ebuf, "    i915-Eng-Inst-Class: 0x%02x\n", (eng)->class); \
> +		__out(ebuf, "    i915-Eng-Inst-Id: 0x%02x\n", (eng)->instance); \
> +		__out(ebuf, "    i915-Eng-LogicalMask: 0x%08x\n", \
> +		      (eng)->logical_mask); \
> +	} while (0)
>
> -:154: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'ebuf' - possible side-effects?
> #154: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1460:
> +#define GCAP_PRINT_GUC_INST_INFO(ebuf, node) \
> +	do { \
> +		__out(ebuf, "    GuC-Engine-Inst-Id: 0x%08x\n", \
> +		      (node)->eng_inst); \
> +		__out(ebuf, "    GuC-Context-Id: 0x%08x\n", (node)->guc_id); \
> +		__out(ebuf, "    LRCA: 0x%08x\n", (node)->lrca); \
> +	} while (0)
>
> -:154: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'node' - possible side-effects?
> #154: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1460:
> +#define GCAP_PRINT_GUC_INST_INFO(ebuf, node) \
> +	do { \
> +		__out(ebuf, "    GuC-Engine-Inst-Id: 0x%08x\n", \
> +		      (node)->eng_inst); \
> +		__out(ebuf, "    GuC-Context-Id: 0x%08x\n", (node)->guc_id); \
> +		__out(ebuf, "    LRCA: 0x%08x\n", (node)->lrca); \
> +	} while (0)
>
> total: 0 errors, 1 warnings, 5 checks, 286 lines checked
>
>
