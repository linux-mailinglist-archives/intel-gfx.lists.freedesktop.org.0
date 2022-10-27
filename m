Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C8F6101BB
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Oct 2022 21:34:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 316C710E075;
	Thu, 27 Oct 2022 19:34:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B2B310E075
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Oct 2022 19:34:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666899259; x=1698435259;
 h=date:from:to:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=GCsRluVkpbr2d9E3AtgLFHbUG8GbktJU02w18LVjdtA=;
 b=mt2MfKhWO0pyqFnjonEHlok0As3XcBLzwZzfHy2DPEUSj5hfKE3w7WXm
 ZN3EN0Hdgi0AOOpHkYmY+DnsUSybYXdLObncDqzeEU9rswpOQVCbzxBmX
 9d9yU9teS2KvdWswx7uVIB/X2IB3Ws9N/q+1+pBBNW4AGQ2PS3aaJ8+/h
 KzqK5RVPmZgy8K7gcK9vsPcQcqaS0cGnvgLTDZv6ORYHYtvpuxY2EWlRg
 sSl9OT5jpUVPAnb+2AF2k3u7Ra498ffMnV7/LxG9t8mMT0V1NCofnb4e5
 3QXiErLwfFm4ZGOqzGZFcLL5c2mNM8hXqI9jC/r5TEmwRethdh/713CPa Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="295733078"
X-IronPort-AV: E=Sophos;i="5.95,218,1661842800"; d="scan'208";a="295733078"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2022 12:34:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="961750030"
X-IronPort-AV: E=Sophos;i="5.95,218,1661842800"; d="scan'208";a="961750030"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP; 27 Oct 2022 12:34:17 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 27 Oct 2022 12:34:17 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 27 Oct 2022 12:34:17 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.42) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 27 Oct 2022 12:34:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KY6HZuEtf4s+FJZT5nVLAP6aT3pXPc8ertRN01h5KV1ZopYMTguPw2w660dWUXeqxAqRYi1QW3MVn5iurzefFwo5zQQHUCA2X6xibq/LQ+d47s8m3WBXwOQJXIhg/cWGutdjwloVjH1zxSg11ZphMvg9Y4D/sK7104GdiWvXqJWlWLnabvZhvdXupD3cRL85zTjrgN0EjfknGXm1SlTKAg+dL62gnAB7E0+fbC2FQkkXcI9cCMKl8pET8GND1kOePRqvXQlZUW6jmDPSwTCiSyiAgtpS9gI8p6bzWIioDaU3dR5mi3mE8EsGRawbaMSf+ce/4TP4mCKzzpVdUrjTmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rrc1TFx9TZ62upUkmdbmywQz/HxWDH7CyLrfCI2fAq0=;
 b=dTzWmWdYpth4nCU/iR3xGpc9+OOs2BvjebvoKlQ1WQhAoufbY0sWhfcL2F8s+RzlTOSOi4XP/x5Hd9wBwuzz4CL/B4ci3eCrE3dopQxuwHHCwhazWlLT7Bx+4faAQr2f2rng4o9XsGkQ7P7c5d7ay5cP7Kn1RPPgWxlsgyui1telvvPrcsl2Vx+qT6JlL3O91cJ/IvjOgi0rXMQ1Jun146JJhsDC2zEUrJCm9eq7JitMt6uBDDQBmxUt7FMs+5G6/cvw9rlYrInGRw3YklfTcNnPGAsjNzGS+cEzEuZOtPhoAFRQQmB7QyVghDaWHyluiaOq/DZvzOEHSGmSFnl3qg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 SA2PR11MB5066.namprd11.prod.outlook.com (2603:10b6:806:110::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5723.29; Thu, 27 Oct 2022 19:34:08 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::78e2:5141:1238:973a]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::78e2:5141:1238:973a%4]) with mapi id 15.20.5769.015; Thu, 27 Oct 2022
 19:34:08 +0000
Date: Thu, 27 Oct 2022 12:34:06 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <Y1rdLic4+qZ5gPzI@unerlige-ril>
References: <20221026222102.5526-1-umesh.nerlige.ramappa@intel.com>
 <166688332151.4252.302590095075880296@emeril.freedesktop.org>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <166688332151.4252.302590095075880296@emeril.freedesktop.org>
X-ClientProxiedBy: SJ0PR03CA0232.namprd03.prod.outlook.com
 (2603:10b6:a03:39f::27) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|SA2PR11MB5066:EE_
X-MS-Office365-Filtering-Correlation-Id: 5d9e0b77-8ccf-438f-6c03-08dab8523784
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: evx0AJLHAeBoMLrUoq96jNWDsYJ9/QoIIID9DNRF3TxqiL89Stz1aPSTKfDMaBbgffRPwBPkza3e/7h7/JO9d5G1KCmDVMKDNXhdESeLG+tPrMG9JUUT2TBzXzHXtUdZ7ZIAyR/vZTKP+50h5F+SYu0o6VAXYyHJeCw3/bWJ9xBfM05aATuL4b0TiYw3XoHDO+Zc5WTzRYZH2mFGF0x2mOxdg/NO3y7GYfqf9UW21egFY3gygoItdEuj9fEGaj/GzLVZFlpiVbIoj0WF6K3AQ6/a855Jp8dKP80bTU9a8KtBS3XsHdcvU/IZL+EVDlyZW4/w9JoPTmQ5TGWnWjE1hmSJWhdkNbk3c/JKxtxpQj2tEWi+Bl2Lkoqv92pSou1VTyhxT0nBRrX4AzPLtpu2iJz1PG2yt47rbICGghWmQ9rBY7/HEjS6G+zxFM6En8aQM2UwW4Q/KIwkCjWyqIq7fWLSuL8GD37eTVeNVoZpi6HsQhQvCsfgILhObARZSDwLtUwwmMNyy9yyWjyl5jt/+mplVuNEN3FS+/10cezNsNDeMouwlOQxzm4y9T3jHIVGBOFkoAHgR2Qd+QxUPN3HK8erSlGUJYmnmVfL9Yh1ntBbZj+Bqg01wtqfSFOYqnJDHGsP7+uIemxbe7xZcret1mer0jUf6JKJsP+kZfVtj4pKg06JwWttFIf8HcYrnmTSKwKNNPlw42gSHDrNWYPzdrdovjjOGUynjRpthaY5hYnUZIJc1GG3zBYBajlzFeatXSmdCs/rWR0UgZKAPh9Abw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(366004)(396003)(136003)(346002)(376002)(39860400002)(451199015)(8936002)(82960400001)(6506007)(316002)(38100700002)(6916009)(83380400001)(9686003)(66476007)(6486002)(86362001)(66556008)(478600001)(41300700001)(33716001)(26005)(5660300002)(66946007)(6512007)(186003)(2906002)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UHZWdTFrbFBPZTU1QmJNL3lXMlhjMHhnTUpjeXNtdU5mWEdGcGJ0UExtT0Zl?=
 =?utf-8?B?RUF1NGprNnRORE02OE1NeTFBYW1DTXE2d3d1a3hLK0xFcWVjQ2JSMTdIK1NZ?=
 =?utf-8?B?TU9wVERiWkdVVHlKd29UWFBEOUNwUVEycVlHQm05N2IwazBERlRsb05lV3Jn?=
 =?utf-8?B?QXBLNzVFZ3FsV1hTeXBTcW1CTGNCYm92QXVaSXA2K2JnRXc2clY1TUZadWhT?=
 =?utf-8?B?MzBva0hYRlZ2WVVHOFlEWi9Eb3JiSURBUU5Vd1E5VVRjdkFJelhwM0ZSWkla?=
 =?utf-8?B?bXFvTWdzMEpYZ0JSUldpNHNFcnpmeXlGRHBmNHVaSUwyZUJNVGNIWmgxN2l5?=
 =?utf-8?B?ZzZGVEl6bVZZMkxpN1RNejdaYU8vOU9qaHBsbHNsSytRR01jRTQwRFEyTXJs?=
 =?utf-8?B?UDdiYmhoMEcyeXAzTzUyd2FUV2pjRDJEcndKRjdVSzB4dVBUdHA4RlNUNVUr?=
 =?utf-8?B?dkxlSjh2MmVpa1dmZHlTUnhGYTZJOVpLMmtqNHpoUXJ4RTJCVnRvN0tHNmVC?=
 =?utf-8?B?emtKclZCRURMazlobHdObFJ4ekEvS1ZIRE1VRXYramVycG91cWU1cStFS1B2?=
 =?utf-8?B?bFVGZXRDOERlMWVjdFQ3YWYwc1pvOVBPYmNaVHM4TFU2VVVBaDl0c3hnUFla?=
 =?utf-8?B?TWVtaVJrSjZ4MnFkV1dGc2hKR2pQZkxRSGd1cngvbDZNNUhUMEZhQmNsKzJh?=
 =?utf-8?B?UnBBVTVKZWRtbUZNUlBsUDJNc0xKQmRUMXdRM2VRa0FOQmd5OE1MUi94ZW9o?=
 =?utf-8?B?MkJqM0dtNTdsbisvdzdZS0NDQ1lJOWljekh4RndIdjdKaXdFby9vcTJrb3JS?=
 =?utf-8?B?bFNLekRNYVJZY1ozb0ljZ2plbnl1WXhseklWVTlkOEdCYkZXOStwTU5oaXUw?=
 =?utf-8?B?eG1uUEpldzkrTVI0K2g0ODRGbTJlL2dqNVR2dkxxcFZTMjJTUENhZDJBaW5j?=
 =?utf-8?B?NDF5TlV1ZmhkZXJjeXNJSWNCRnV4UW1HOVhMZVRleGo0aTQ3S3BsVi83WlVl?=
 =?utf-8?B?M0JqTHRGclFXdGFvVzJCUGlDTElJUksvdlpNVEdqYW1ma3o1T3lsMm0yS1E0?=
 =?utf-8?B?NmkzdlFSWXBhYUVyTzA2OXBkcGFZclBCbzVQUEc5bTk0aEpSRlgxenJZM2dL?=
 =?utf-8?B?V3B2S3FnSXdHeUxMQnA0cjNtR04zdFlHRjdKcW9aazZrdmZGOE5DTW56SmFU?=
 =?utf-8?B?bDZ0UkhHSFFWVTBvcldQbWR1a2IzRlEvTkZtbXRWaTlNbk1QK2lSSUVPa1V2?=
 =?utf-8?B?YmNKU0pFTnl4MnVTRkxxbGR0ejJJdnpSVlNlU1RIcG1EdFN5WFI0TVkrd1ha?=
 =?utf-8?B?SnlZWnFSWHFtSE8zTHREV29nMjVUYWRPWUVydjd4d1hvemhyTFlUZVM0ZGxO?=
 =?utf-8?B?emtUMWJkUUpHaStHemEyaWFDd2tXaEczK3ZDa2d5eHh1VXZzNFFzOGFUWVQx?=
 =?utf-8?B?VHV4K2JPZUd6QzhzRkM4TWxRR0FuOXlkMDNFNWMrWUQvMHo5UmRkSnZ2K2hD?=
 =?utf-8?B?UXpWcVY4SWU1czNNUkRLZlRNSk9qVVZxUkNIclEyZXdiMVA4bXB5aHV6eGFD?=
 =?utf-8?B?QWI5YWF2QWtoSjViMFZvdGRxZGs2R002c2xIOXdVdjI0RmtDcWhhUENleHBi?=
 =?utf-8?B?TEV3SEIvTm94ckVIUXFIVzd5RTA3d1ZqajVvaUQ2Y0hUSnEwUjNtOFJsZXNX?=
 =?utf-8?B?RUlqRSt6aHNwd1E2YXJmZ2lzbnhHTzhRNGVnNjJvb3JNbk9NRW4yZis3eHpo?=
 =?utf-8?B?UWZ0bjE0N1FSZmsxTTc3L2NUVHFiampGSFFYSGxZL2NYTTJKOFFtMjNIbExh?=
 =?utf-8?B?UGNWSjdzcWRvTmpaQTh6ZVN6eTNSQzhNVm5NdEs1ek5rNXl5MmRWM3NaWmcv?=
 =?utf-8?B?RjV5MEJrL3MxTE8yV0p5amI4bUZmZU5vUFZYT0I3ZDVzU2JKWGJTTlF0bEFr?=
 =?utf-8?B?bDA5eThXODVzZVdBL1EzYzVQY3UzL3d2VXdUajc5NlArck0zNWd5UkluVi9C?=
 =?utf-8?B?enVCa1NBQm9LWlF1Ny9tdEthUDBQcU15dUZEYjRjcnBabUYxbnB4QkxHZkMz?=
 =?utf-8?B?d3FtQk9CYzV5ZDZ3UzJobngvWVNFWEh4dGVUYnl4bExveGV4eDFlL3UySy82?=
 =?utf-8?B?OFVFOHZnQ3lib3NVZW5YeUxDRm1XOEQ0MmxCZlJPQzhQcmNJUWI2TlVTRnpF?=
 =?utf-8?Q?YVowhwRvmXsMHPaN24Eumeg=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d9e0b77-8ccf-438f-6c03-08dab8523784
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Oct 2022 19:34:08.7256 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rMvhMgdjQWVDDG4KbIoHt1m3KrFhWKBdZBtH8WcO9dg0cZJu+wPnDXkFDsCb/xukCmwjhI7NzzhgKJ3T0j0Doo2JcQbukiR+frSl5HtvRls=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5066
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgQWRk?=
 =?utf-8?q?_DG2_OA_support_=28rev11=29?=
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

On Thu, Oct 27, 2022 at 03:08:41PM +0000, Patchwork wrote:
>   Patch Details
>
>Series:  Add DG2 OA support (rev11)
>URL:     [1]https://patchwork.freedesktop.org/series/107584/
>State:   failure
>Details: [2]https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107584v11/index.html
>
>    CI Bug Log - changes from CI_DRM_12304_full -> Patchwork_107584v11_full
>
>Summary
>
>   FAILURE
>
>   Serious unknown changes coming with Patchwork_107584v11_full absolutely
>   need to be
>   verified manually.
>
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_107584v11_full, please notify your bug team to
>   allow them
>   to document this new failure mode, which will reduce false positives in
>   CI.
>
>Participating hosts (11 -> 11)
>
>   No changes in participating hosts
>
>Possible new issues
>
>   Here are the unknown changes that may have been introduced in
>   Patchwork_107584v11_full:
>
>  IGT changes
>
>    Possible regressions
>
>     * igt@perf@global-sseu-config:
>
>          * shard-tglb: [3]PASS -> [4]SKIP
>
>    Suppressed
>
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
>
>     * igt@perf@global-sseu-config:
>
>          * {shard-rkl}: [5]PASS -> [6]SKIP
>
>          * {shard-dg1}: [7]PASS -> [8]SKIP

The sseu-config feature is only applicable to ICL, for all other 
platforms, these tests are expected to skip.

Thanks,
Umesh
>
>Known issues
>
