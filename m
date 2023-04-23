Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 225A86EC22D
	for <lists+intel-gfx@lfdr.de>; Sun, 23 Apr 2023 22:16:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2A4F10E15E;
	Sun, 23 Apr 2023 20:16:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D8D610E15E;
 Sun, 23 Apr 2023 20:16:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682281012; x=1713817012;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xzFuqFBQ5S0v6udTv+Nh6S7guhBR0Evgr/a4DUeOtvg=;
 b=W+vmOkhdBZfS2092rYw2PEC5bTZzmyuEfdjl/EnizSiqRsw2To7RRw6f
 p3T53Z4Cv+akOYw+f2yzAH2h6FyL1p84x9iuI0sJN4vAXZgp242PI+yH3
 yj+NJ1IVcYhlmg+jEHPKcUrdTPcgHxohYoOeKd3ZMrqtUUo1sF+rM6h9R
 3qrO0qoEeCtaIi1PdtW13zLpZAjG5sF9CPmMsOeCDLg95Lysr99WHG8tP
 g1ymQgoIoBhryRPUG16rz/1nm4OZwbPgdVcz6998w7bMMFsNxhDuQEMnL
 zxbirwZ7ApFTag5zYmBos/xVawcOBunbVvW9BDyYnI3xmAw3InTZkJ8ZK w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10689"; a="349111026"
X-IronPort-AV: E=Sophos;i="5.99,220,1677571200"; d="scan'208";a="349111026"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2023 13:16:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10689"; a="695522184"
X-IronPort-AV: E=Sophos;i="5.99,220,1677571200"; d="scan'208";a="695522184"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 23 Apr 2023 13:16:50 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Sun, 23 Apr 2023 13:16:49 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Sun, 23 Apr 2023 13:16:49 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Sun, 23 Apr 2023 13:16:49 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Sun, 23 Apr 2023 13:16:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MKAy5gJRH5E2lEuupIlmWhguXrEJVWLi1J6Jh70YcNpv5deyL9FubioftCxZTnJynmM12FBWCleaRJQhw3vR2VE2W+whPo2IoAmrxyiZ4qgtoBlGCLKmTot6XcbJBwV2YFiA5Gadtxc2p1jZ6lDc7/OZpWGP0DjnGgHyJ8XCcr0qyqpDw4pRDl2LhdGCeT20R7Y7amSMAijM7kFD8XjgYoU2rK2QnySURPA+QBAFIhPte0BQ9Zc5SIPuP0Hr1gnr1YB/NmwePzLH4DHunXTVNDYgAilx0aqKreM7eL0PA8O8kddSkDk+BV6B2yElowgqReQ21wXwTjJLz18mgVNbIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IKNA2nmYHnP4w4YreG9GNmYeOAafojOdA3fsZWd7v2o=;
 b=mj07FOXhmp5ItWqhBb+gb6ZMb5GJ4OgigxTf/pQSMgwfjW0Xa5yTNRGpvPP9JRbOsd1Ws7oKmLQ6XC7MVvmW4OCGCenuZLktoNbD4QeZHMh2zxXiFCybVsbQS9nJUXUTUUwJGRsBMYPSg4sxV7HKlAPQfzTPu6w0rOfPWE6rlNqVTOxQtE9nhpELMwx4TS5t2MfRGWQhkZnYUYEBFsFfL17ccrdTzFp/dMpNcrS3vLsTlYlJOp12EZWYSlvMXheh2NOj+0Qa+KEoQ4xbp0ocnPEMx1x3upZa7janwnuJpq9ABoANQQ7TCiZTkqqRPpMI16u0FRy3pQckIZhcgmR6sQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB4274.namprd11.prod.outlook.com (2603:10b6:a03:1c1::23)
 by DS7PR11MB7857.namprd11.prod.outlook.com (2603:10b6:8:da::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.32; Sun, 23 Apr
 2023 20:16:47 +0000
Received: from BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::85e6:cab:e327:77c3]) by BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::85e6:cab:e327:77c3%6]) with mapi id 15.20.6319.032; Sun, 23 Apr 2023
 20:16:47 +0000
Message-ID: <73d1718a-ec6b-5c00-fe62-b79ce03ef9b2@intel.com>
Date: Sun, 23 Apr 2023 13:16:44 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.10.0
Content-Language: en-US
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
References: <20230414191639.2565389-1-vinay.belgaumkar@intel.com>
 <20230414191639.2565389-3-vinay.belgaumkar@intel.com>
 <87ildyqkh4.wl-ashutosh.dixit@intel.com>
From: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
In-Reply-To: <87ildyqkh4.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR02CA0032.namprd02.prod.outlook.com
 (2603:10b6:a02:ee::45) To BY5PR11MB4274.namprd11.prod.outlook.com
 (2603:10b6:a03:1c1::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB4274:EE_|DS7PR11MB7857:EE_
X-MS-Office365-Filtering-Correlation-Id: 92da4008-fa16-4d14-c123-08db4437a9c7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rjIBbR8gvTEACF794ncVC7BRfPzDQWMNiv2jjbgqNIOyL+T5nREQAWfdwuHgrlVKTanYrsmD9vRngrv1k9nXInsANmNGyB0CYLpKxAO3AvDt/R+VnmrPgmhO3cBFH0k9ee+WiAzIIOHOWoxswkXdgqiMAgLrUSPcpMa5vXLpG0Lws7HDZVBvmtvjEYcmefvlZQXunT7cUPDVqhLQ0qVoll2azRFpig86VOM1AY6vexocE8EZCHyekMnGu+Wv40AXuLtWq6wSaN06yXm8UtFppvsDUGzK25FsY6hNWlQmpIlFGYJ8ivZToLnXCzxkVnNAlQaQUqY1nvBNHYWLRTbOphCWiIBV9AY9L0STnOwyw/XBOnTPUL0i76Ns6N/XpA7KNYLy/Zit5zYib72wP0DkwawDYuABfrB2OSsOWz4gIqwmmeyzknWGjgoSCqdg4YQJHRxVbi6yRMsy4IuHsuBGXIKkST3aNwd16X0KOYXA+yJ7ZR/2i3hA/3P2EkACnfUTnKJqjsIjHWE5Mo9cAE2uu+Gb9CqD5FCzx6aZHM5u+q2lWzsysM7w4fzNjkile14w+uFRHtKDwiJcwXt81XdiNWHqitOqU0mroKKesMp0pKhD1EEITuZ0asQGxBndZfSW
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4274.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(346002)(136003)(366004)(376002)(396003)(451199021)(6512007)(6506007)(186003)(53546011)(26005)(86362001)(31686004)(31696002)(83380400001)(2616005)(2906002)(38100700002)(36756003)(8676002)(478600001)(966005)(6486002)(6666004)(82960400001)(37006003)(6636002)(4326008)(450100002)(66946007)(66476007)(66556008)(8936002)(316002)(5660300002)(41300700001)(6862004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VmNub1RXd3dUQVhBMlB0ekN6cnVVMXdpaHd2bk95NHVaQ1FjVXNmRGRPWHd2?=
 =?utf-8?B?SFAvSXNrQ0drSXJ3dnNQZUUyY2lycmxjNEhOYU9tSitVZjJkdVBLVjNzQ0Rk?=
 =?utf-8?B?THM3eWJlUkNtcW9rRTFLZVZjZE5oNTIxQk5CVVNPNGlJVXF2aXhMbWRRUXhu?=
 =?utf-8?B?T0hUcHFZUFlaV1FSdytnNlh2L0NqeHM0WGN0MVo0djZYM1lncWhIcmtvOUFE?=
 =?utf-8?B?ZDhiQkYwYURQazY4ZlZyd09wVE5TU1RaUEJXWU9IRkloNWpJcndHTTFmN3lK?=
 =?utf-8?B?UC9VRlBLT3BMRzRiUDgwaTNpUFFWZVkzUGZGVzRNNGt5cDQ2T21sU2Z6STE1?=
 =?utf-8?B?dDNnbmJ0N25oajR5MlRYOHpsZjZHWkN2eUF0SU1TZmFqanVndjV4T3RFdElK?=
 =?utf-8?B?elIzbEU5cHgySnExcmJUcVJ2OTJqU0tUbHB2dGZqTFZCMXVnZXYzSmZHK2xa?=
 =?utf-8?B?Wm5UTlJ2MlYwSWF0WmU1dmp0WGlpSUl2MXpRVTdINE5BSlV1ald3SU5RSnQ1?=
 =?utf-8?B?Zi9xUWo3R1BNVTREVnFIbi9hNktxNGZxblZnTmtBYy9ZWEpjNlJWWEtHcjAw?=
 =?utf-8?B?N25BM0dXaGJIRURKcWNDU2xoTS9TVW1neXpaakR1VnhDdWpiMDJFNmxkMlFx?=
 =?utf-8?B?VXpOV0tva2x2ekRONENJc0tNYjJ1VXQwZUJObXJHZmVENVBjSDhLZzR2bmt5?=
 =?utf-8?B?VzRtT0g0QnhJTUxqS1M4VlJYcCtwWUQrNkh0d2dGNkFJbmR3MzFLSTVTWGRy?=
 =?utf-8?B?Z094LzZETCtwVzRwdm4ycERjZ3poTHpVWm5GeTZGT2JzSkZXbWpyckpPaHJz?=
 =?utf-8?B?UnF0MERmK1M4bnExd0NST0JLOU0xUnFUTmtOMHZudkIwOGZPMyt6TXMzVEoy?=
 =?utf-8?B?ZXB4bU5CbjlZU2Y1bUVGVGRKNWlPbVpkcXNLTWFVMWlETHpyVEZXWWN6T0F4?=
 =?utf-8?B?RWdIOFYrNGFUNWtmMDc2Mktxc0tmNDhLOFF5L2lTWnp6YjhxUFd4QjdacHZn?=
 =?utf-8?B?M0txRXVITnppKzFRbUFMZHJIVFRhOGdGSkF6QjdkR1FGR1VnRjJkWDZSbFF4?=
 =?utf-8?B?NzVWeUxnTExheWNQQ25zWUI5blBlUHRWSHkyeHBoRG1IbG1YL1VQbXNLeXFB?=
 =?utf-8?B?ZUxtK3I0dzJ0ckFsWVY0ekw5SGJ0d3g1cndkQVh4RUdvOVd4TC9sRXdwQ3Fl?=
 =?utf-8?B?enJHcmlBRkpTN2NWVVBucVZLTVRQUStXT2lmY21razlXR2NKYTFHbVpwR3Uz?=
 =?utf-8?B?STA5azJLMlkvTDZPYXNzTjRQNUFrOWlYVW02czY5T2RJRjloVTI5SG1DVDhK?=
 =?utf-8?B?dXdWYklEVHdhbUZnejFLS29EQTBSaDlUL0txQUs4SVBUQ0YyVURoZUEzYVNJ?=
 =?utf-8?B?R3RHaVRCMW5HSGZJc3Q1MEVGUnZKWHdDd1RES2hOSkxjLzJwVjkxS3RVOWsx?=
 =?utf-8?B?NXhaSEo3UzdTQXorYTB4UlJGVVRvRjRzWHNnOHJBUnhpeVRrcE5MR2Qxcnlw?=
 =?utf-8?B?WnNndjREcnRnaTV6RHVSUjZwUEhmdHhJQThld085dFhmRkVpU1J0dHI5bjBE?=
 =?utf-8?B?TjdzTlN5ZUU1b2pGcVp6ZVZxbjQ4aTJTL25qSGF5K3VqbENVZ1J0aExVQlF3?=
 =?utf-8?B?Z3FTSjlnVGtJeklIQ3Q4K0Y4NnRxK0hFZ3JScjZqTW9uUVB4N0RaNDhFT0Y4?=
 =?utf-8?B?MVhCWmx3dkoxQ2ltVlU5RnlJVFRtSnF2Z3EvOXVHclJLdnJaOHE4ZWxXV3Vh?=
 =?utf-8?B?UmJ0cGdWK3ZySjBmWHppYWZNZldjUmRWTFBSa0UwbUFQdVZocWZUQkxaYkNP?=
 =?utf-8?B?L1dOMnhFMUpnU0N0S2pveTFjeFBhL3cwMmVkdG1VRXJERXF3MjhHNmxuRVJT?=
 =?utf-8?B?S2RCRHZtSXI3ZmcyalRXYXgveTV5cW1YUDNSckdKNFJmcHlFZDZadjBKTGlS?=
 =?utf-8?B?TmFFeWpHUUVIVTFwSWdIbmg0K05MMDBSNERucC9RS3llQ0FRWFpsYSs3K0hp?=
 =?utf-8?B?Y001V3cyRWttWmJ0akVab0tFeFZ3UndQaUJOUEtsMUhtNE1MeGtXcWx6MUh3?=
 =?utf-8?B?WC9ZQkYrbER3MUsrOVhVclRQcDh2QlN4NkZwby9xQnNhM0FGQVVkUHN1OVZ2?=
 =?utf-8?B?cnJyc1hvU0E1SjNGVFJucEJCd01uU0hIaGxUazJlb1FJdWgySGhxMWN5M0xR?=
 =?utf-8?B?WGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 92da4008-fa16-4d14-c123-08db4437a9c7
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4274.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Apr 2023 20:16:46.7891 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Uv9k2TQ/mHz+jlXnY8JYuDMIaF3kd4Vngsv36GzMLJgHxei1pj9pxYcysV5VMJRSMfavkYoWNgBNTh62/9bc958zDHweQYaqUa+xzjeTapI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7857
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 2/4] lib: Make SLPC helper
 function per GT
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 4/14/2023 1:25 PM, Dixit, Ashutosh wrote:
> On Fri, 14 Apr 2023 12:16:37 -0700, Vinay Belgaumkar wrote:
> Hi Vinay,
>
>> Use default of 0 where GT id is not being used.
>>
>> v2: Add a helper for GT 0 (Ashutosh)
>>
>> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
>> ---
>>   lib/igt_pm.c | 36 ++++++++++++++++++++++++++----------
>>   lib/igt_pm.h |  3 ++-
>>   2 files changed, 28 insertions(+), 11 deletions(-)
>>
>> diff --git a/lib/igt_pm.c b/lib/igt_pm.c
>> index 704acf7d..8a30bb3b 100644
>> --- a/lib/igt_pm.c
>> +++ b/lib/igt_pm.c
>> @@ -1329,21 +1329,37 @@ void igt_pm_print_pci_card_runtime_status(void)
>> 	}
>>   }
>>
>> -bool i915_is_slpc_enabled(int fd)
>> +/**
>> + * i915_is_slpc_enabled_gt:
>> + * @drm_fd: DRM file descriptor
>> + * @gt: GT id
>> + * Check if SLPC is enabled on a GT
>> + */
>> +bool i915_is_slpc_enabled_gt(int drm_fd, int gt)
>>   {
>> -	int debugfs_fd = igt_debugfs_dir(fd);
>> -	char buf[4096] = {};
>> -	int len;
>> +	int debugfs_fd;
>> +	char buf[256] = {};
> Shouldn't this be 4096 as before?
>
>> -	igt_require(debugfs_fd != -1);
>> +	debugfs_fd = igt_debugfs_gt_open(drm_fd, gt, "uc/guc_slpc_info", O_RDONLY);
>> +
>> +	/* if guc_slpc_info not present then return false */
>> +	if (debugfs_fd < 0)
>> +		return false;
> I think this should just be:
>
> 	igt_require_fd(debugfs_fd);
>
> Basically we cannot determine if SLPC is enabled or not if say debugfs is
> not mounted, so it's not correct return false from here.

Actually, rethinking on this, we should keep it to return false. This is 
making tests skip on platforms where it shouldn't. Debugfs will not be 
mounted only when driver load fails, which would cause the test to fail 
when we try to create the drm fd before this. Case in point - 
https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8839/fi-tgl-1115g4/igt@i915_pm_rps@basic-api.html 
- here, the test should have run (guc disabled platform) but it skipped.

Thanks,

Vinay.

>
>> +	read(debugfs_fd, buf, sizeof(buf)-1);
>>
>> -	len = igt_debugfs_simple_read(debugfs_fd, "gt/uc/guc_slpc_info", buf, sizeof(buf));
>> 	close(debugfs_fd);
>>
>> -	if (len < 0)
>> -		return false;
>> -	else
>> -		return strstr(buf, "SLPC state: running");
>> +	return strstr(buf, "SLPC state: running");
>> +}
>> +
>> +/**
>> + * i915_is_slpc_enabled:
>> + * @drm_fd: DRM file descriptor
>> + * Check if SLPC is enabled on GT 0
> Hmm, not sure why we are not using the i915_for_each_gt() loop here since
> that is the correct way of doing it.
>
> At the min let's remove the GT 0 in the comment above. This function
> doesn't check for GT0, it checks if "slpc is enabled for the device". We
> can check only on GT0 if we are certain that checking on GT0 is sufficient,
> that is if SLPC is disabled on GT0 it's disabled for the device. But then
> someone can ask the question in that case why are we exposing slpc_enabled
> for each gt from the kernel rather than at the device level.
>
> In any case for now let's change the above comment to:
>
> "Check if SLPC is enabled" or ""Check if SLPC is enabled for the i915
> device".
>
> With the above comments addressed this is:
>
> Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
>
> Also, why is igt@i915_pm_rps@basic-api still skipping on DG2/ATSM in
> pre-merge CI even after this series?
>
> Thanks.
> --
> Ashutosh
>
>
>> + */
>> +bool i915_is_slpc_enabled(int drm_fd)
>> +{
>> +	return i915_is_slpc_enabled_gt(drm_fd, 0);
>>   }
>>   int igt_pm_get_runtime_suspended_time(struct pci_device *pci_dev)
>> diff --git a/lib/igt_pm.h b/lib/igt_pm.h
>> index d0d6d673..448cf42d 100644
>> --- a/lib/igt_pm.h
>> +++ b/lib/igt_pm.h
>> @@ -84,7 +84,8 @@ void igt_pm_set_d3cold_allowed(struct igt_device_card *card, const char *val);
>>   void igt_pm_setup_pci_card_runtime_pm(struct pci_device *pci_dev);
>>   void igt_pm_restore_pci_card_runtime_pm(void);
>>   void igt_pm_print_pci_card_runtime_status(void);
>> -bool i915_is_slpc_enabled(int fd);
>> +bool i915_is_slpc_enabled_gt(int drm_fd, int gt);
>> +bool i915_is_slpc_enabled(int drm_fd);
>>   int igt_pm_get_runtime_suspended_time(struct pci_device *pci_dev);
>>   int igt_pm_get_runtime_usage(struct pci_device *pci_dev);
>>
>> --
>> 2.38.1
>>
