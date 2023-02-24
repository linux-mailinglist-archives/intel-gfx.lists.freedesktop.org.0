Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 644DB6A222C
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Feb 2023 20:12:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D84EF10E090;
	Fri, 24 Feb 2023 19:12:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD0E310E090
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Feb 2023 19:12:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677265939; x=1708801939;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=c6tUiGBz/jFWoeMoR9ELyJEsnymePfM9xdvP2TuzkEQ=;
 b=Prqb87kcexsTc4J5V+W5IbQOOHJeipOE7hP20ESk6l4JZOKj+YYY0/th
 w3cEczK5Bwof4W3oqWksHTfBXqtnLpc+eb602vrS/ghBLkX+uoQS9JmZX
 c50wrz67+UeSFfi6nOjJhE16uF2unKHTIIduwpFjCl/YLDrCx/C4catqO
 72jDf9XRy8X9QCjeV4tRnSWauOFgPGLOqJAqEIs13FB72BEhlPlDdKmGW
 hikhsgJGuZMMq1hZl4c7MbKOJjURWouqT9bDaPHyFIScj6j9QMysmvJWr
 5hGVxJc2j/P8mT6UbeQrJ68VgADwKJV+L+BQmefdJSrgEFnWHjhmajDul w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10631"; a="332246642"
X-IronPort-AV: E=Sophos;i="5.97,325,1669104000"; d="scan'208";a="332246642"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2023 11:12:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10631"; a="675034692"
X-IronPort-AV: E=Sophos;i="5.97,325,1669104000"; d="scan'208";a="675034692"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP; 24 Feb 2023 11:12:19 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 24 Feb 2023 11:12:18 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 24 Feb 2023 11:12:18 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 24 Feb 2023 11:12:18 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 24 Feb 2023 11:12:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FuDOXV0SLQ8fR5pOtzbn2D2u+VsjbhNMxEyYmaiN/RqshCmWbkgKjh34psSbjYSwvyz2ED9n2wy6xK4FYrTMP0+FYc5vAD9oTooYfJIW+Dj1/RkbKgC05e2XARjTgm0cWqx1+xZwjNtC6NT4t+qIyR84TnZjcST548GEU0Twwtnr+HAFdx1bvApjq576ViJX0r4BR+6sc6uUGPeNy4SFIWREggFEzk5gq88eHYscWVCxP5t4lkmXvdQm3W1iQD4ZhOf23iM0ik6ulZoAtnBbC3bmDQZUKlJfDcIJHyyc4wJ6zV28lHa8n3kq+dp0jGLkRjBO+kg4OOtuSZApQP2K6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wLnpOZH0vcI8BRnoPXFBJuN0j3TySSeMBuCHyp+B8UY=;
 b=W2rtnmNFAGAxdrOhu+Vx2vJTFjK1WoZ2vZjwhVWwKkjG5Y2YlbwsW6pOOuaQ8fdmxFlDaSQR8hPQbLSnKm5F7Ym3vCardolGYYSNQXxLG/7//f+6H+J9LV1d9ds5YC3JbQ/0p3KYQifgtMM6hRsLZyy9VW6c3s6rNzs0VLgD6b0dRpepfuapdCJ1OPRdqPI2vW+E6wnJhCjvOxwVd5YeQswqLgiIHJiL8gzzVsYSau4f3sWnqejU8rsuJe+EkCvubDWwTHDKtclsaSrxOO5O82jD99uLqmwhVgUVGQsLnKxPzAORKLf3loc8A9Hfn3YBAWrIweR3Lu+/l/aZBctYFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 PH7PR11MB7430.namprd11.prod.outlook.com (2603:10b6:510:274::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.21; Fri, 24 Feb
 2023 19:12:14 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9bf9:4252:3ddc:7ac2]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9bf9:4252:3ddc:7ac2%7]) with mapi id 15.20.6134.024; Fri, 24 Feb 2023
 19:12:14 +0000
Date: Fri, 24 Feb 2023 11:12:04 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <Y/kMBGfnIiE+S3o0@orsosgc001.jf.intel.com>
References: <20230217005850.2511422-1-umesh.nerlige.ramappa@intel.com>
 <20230217005850.2511422-8-umesh.nerlige.ramappa@intel.com>
 <87edqof1qt.wl-ashutosh.dixit@intel.com>
 <Y/AWXg7u6/fnwtpH@orsosgc001.jf.intel.com>
 <87cz67g2hd.wl-ashutosh.dixit@intel.com>
 <87sfeyonqq.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <87sfeyonqq.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: BYAPR21CA0001.namprd21.prod.outlook.com
 (2603:10b6:a03:114::11) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|PH7PR11MB7430:EE_
X-MS-Office365-Filtering-Correlation-Id: d73df9a4-6328-4bdd-9847-08db169b09d0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YfpTRHgEAe1z7DE+7g1/lWhGBh+AYueFUjd7XzL960ToZ/2frI5vQQKZtXuS4/dbwnhkwEbVGL9wETKAMaOZD+KM4rVSEdXKHhNoslw0rKoWPDFq2UWjxZXP5G6klB2MpwrRf5XMYMmlv9fue2UCpp8Mf4tUTeJekElQePT7FARkkKoseOs7ClgTAH6kych9NjJiCSJIZoBqjcyHMUa8uyQlfFTFRViqQaa8DjlO4xUwVH46rjizqena9KDqRDKi6q8gjLlWSQtXSpLfpyILXzj7jXOEWWWklFJjvwvoKOPbO9gZh8hDdNJzn7Ju//3Fs8opfpTCkb9iw5BFi3+E+ciM8gMxlk6+wOTk0OY9WGHJAoQ80msRUTc1qC4cbgOeoL6cV0FbZA7PB7YmFwmKGDQHoDqlitxKmdrnSoBJ9drEONjvQ2GF67K2CnBuZ3FVK3itEsjUB1quWF+EFhqF9JMl0ej8qqFqHVIsL+TA26sLTJSrzRFB6iCVfxR3qRHKQ1cs6quXEV0PADA2WNcWomE1IsupgCCDnBzccsPZQyErTOIhCXXDEF2BADuo7cR/keneOxNtK8aLUKoKdWPZ5/1w1xRzkv94tc5JeqAiwAWnvMDzdnah+iy7U0VLJuQ4D4zJEyHqbioAAUHQuI3ReA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(376002)(346002)(396003)(366004)(136003)(451199018)(41300700001)(8936002)(6862004)(66946007)(4326008)(66476007)(86362001)(8676002)(66556008)(5660300002)(478600001)(6486002)(316002)(83380400001)(6636002)(6666004)(186003)(6512007)(6506007)(26005)(2906002)(82960400001)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bGZaTlV6dUJocnNVQmFqc1hoZXYwelZYa0J4M0dwWFBQNkdlaXZvSkYzZzJU?=
 =?utf-8?B?R2lOSUVtTHVtSlAvQmc4c2hzc3I2cGZJNExHZkRSWCtWcE9oaDdkNTZyMzRR?=
 =?utf-8?B?YjNraHlGa2F4RXhnSktOZ2ZsdWR0TFV5MEpQd2RlLzdZU1lNd0Fna1E0MDZ1?=
 =?utf-8?B?YzdXajg0eVUreUZNWm1OYXN1YkFrYW10TjVEU0tnRUM1Q1dWTWZTdG51MS90?=
 =?utf-8?B?UWN0NVJEbG9uODFjKyt1WG1qVTJCSXRXQk40TkZqSjk2amNBczZ2eUZHVklG?=
 =?utf-8?B?ejJDSUdBc21PeGoxZTZKR0JHeE4raXVrakdybmYyc0ZSTmlGQjlyN1FVcHp5?=
 =?utf-8?B?MENRN2JEMkdvOGZ1SjF1ZkpmdDNqZEJRR0N4WXlOakFXL0Z2S2xOODlsMDJO?=
 =?utf-8?B?em81NXBLNlErSm96dENQemRhTllJdktXbmd3bm04WllCemx6T2RxaW9Ub0sw?=
 =?utf-8?B?SVJPem12Rmg5bDRGNzZrdFJqZndjSHhUVkdoLzJWOWlIMndVS3B3c3Zxc2pz?=
 =?utf-8?B?RzFDWHVjUEp4TitEdHRLamJPUTNXeU94UUJYeS91MkxxMXYzd0hjVlFMcnVu?=
 =?utf-8?B?ZlM1MTR1MUZRenhKK08wS2dWeGlmWlpQWDhPRHB6V2FqYUpwdjdnQjVZSm1q?=
 =?utf-8?B?U2dQWUxYa0d6dm1HRFlCaXJkYS8rR0libG1qRE9FNXVsa1FtUGVmSkR0Z09m?=
 =?utf-8?B?SjE0Mit1aXA3c3MzMzhqVnFYdTdrYlVaZXhkUFdPRkRBZGQ1OUdYVzlqZ0p5?=
 =?utf-8?B?WmNlbTBmMTcxbEY2dEhYaklVZCt3ZWlYQ2VDcUNhWUxXVWJOUjF4c3lQdTBm?=
 =?utf-8?B?SnoxbTh6ZVBoVHU2SmFHVU4rUVBrQzdIWTNSNnljK1lzaEErSGN1a1JKR1Ey?=
 =?utf-8?B?K1NrejZvbjQ5T2hUTXBMWjFFZnExTmlhSW1Vb1NmU2RST2JJQjVTNUthbHNj?=
 =?utf-8?B?dGRIaGNRWE1xMjR4Wll4b1IrNit0T2NrSlV6ZXFNRXJmT3hOWXhYY280S0NI?=
 =?utf-8?B?YzdpcEd1YUMvdmdseUd2NkNOVml6T1VVZGF0ajhjQ3IwRFNmUVdmZTBEeHlN?=
 =?utf-8?B?SFJoTFdJSmRHK29Xa0FleEc4eXVVMGhUS1BSYkx6bFB4eThUQ1RkYzVyZitx?=
 =?utf-8?B?YzFla3N5dFR2UGltdTZaQTRsT1pNQWNNRUNUSDdIRG9DenNhbms1MlhtRklN?=
 =?utf-8?B?RVVMRHZuREdmeWxhVmJzd3N2em94NGZNS1ZtSW5OYmtZSTBmc2Q2MkYrSW04?=
 =?utf-8?B?ZWJWVU10Uk5LOUFhY041RStZWXQvcVRvUjZhZTBKUTVHTksrNkFGckQ5RllS?=
 =?utf-8?B?TUpKOUZzLytndjJqZjhhZndIQ0c0Rm1UTVA5bW5DUzAvTElOYzFtNmdhdGNX?=
 =?utf-8?B?WnVHckQ4TU90and1YWQ2c2JQLzUvbUdlQXZNaUcvbWdxbHNyMmUvaHIwc21q?=
 =?utf-8?B?ZGNFOHIvSEN6dzJQWnNPaC9qc1NMTVlOcjlxUXJUdm5rNHNjZnZ1QWVKTWc1?=
 =?utf-8?B?eU4xVWR5M1R1WHZiZU5FS29MN3c0NkFORzFlelNMa3VOS0RZK3BrMDhRdlI0?=
 =?utf-8?B?UHQyVmRrTVhpTUVUS0h5TjFKWmdvUlYwMnphODhEbTA1bENDWFEyLzY5ZWdV?=
 =?utf-8?B?T1gvRVNkOWR3S1kzL0RFc0xEMjFHRDc2cGZhbnRiU0ZWejhZL1NHNEZsaGJJ?=
 =?utf-8?B?NmNwU0xVWGFIY2RkK1Y0clRrZE1mVDFwYXk5QTRSRVdROVYxZ3FFWFRSU05t?=
 =?utf-8?B?VlFqZHNpaWpEUmF4Mk1Bbi9vTGJMYllqQ3VVbDlNUCtLdlZmbytIc2R4YlJO?=
 =?utf-8?B?K1JNM2dZdHlUcDVzWnFNYlZEUTBOOHFteTM4NUZlRk9YRDJaQlBReWprVDFk?=
 =?utf-8?B?cGpPM0xoMVhSR1B0VlB0NEpTNzZTOGFKV0d2NGNMNnZmWjl2Uno3V3EvSklD?=
 =?utf-8?B?a2J5UjMzUGpEYkZuUTlnMmprN1k0MS83ckV2OTBESnJhV2UrNjFLc1pRMFB0?=
 =?utf-8?B?dnFyeGE1QjVMVnAyS01nYnpxNXpJUktzazZKbnNXUlZYdnJzT25hOVdPZ3lx?=
 =?utf-8?B?Vno0a1NuWHRCdWtsc3dzMU5HenQ5S0RzbG5JYUFGVmljQmtlbTR3N2xDdkJk?=
 =?utf-8?B?UDNoMklpa21rVGNPVXlndVFYY1FidTBOeW9WY1pvR3J0QjFSRlIxbHIwSHpu?=
 =?utf-8?Q?UL7VYae7Q08veaH/ax9zjXA=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d73df9a4-6328-4bdd-9847-08db169b09d0
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2023 19:12:14.4870 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +UCoFetKm7qZu8Gy1qGWJuwKVx2ztWi2gfvnx5WitumAlTdLoCO1EqX7erKuujMlZQ5kzFnMvzE7UfuuH0wgJwpRCd/4C38B3ra57qbiBME=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7430
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 7/9] drm/i915/perf: Handle non-power-of-2
 reports
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

On Tue, Feb 21, 2023 at 10:51:57AM -0800, Dixit, Ashutosh wrote:
>On Fri, 17 Feb 2023 17:57:02 -0800, Dixit, Ashutosh wrote:
>>
>> On Fri, 17 Feb 2023 16:05:50 -0800, Umesh Nerlige Ramappa wrote:
>> > On Fri, Feb 17, 2023 at 12:58:18PM -0800, Dixit, Ashutosh wrote:
>> > > On Thu, 16 Feb 2023 16:58:48 -0800, Umesh Nerlige Ramappa wrote:
>> > >>
>> > >
>> > > Hi Umesh, couple of nits below.
>> > >
>> > >> Some of the newer OA formats are not powers of 2. For those formats,
>> > >> adjust the hw_tail accordingly when checking for new reports.
>> > >>
>> > >> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>> > >> ---
>> > >>  drivers/gpu/drm/i915/i915_perf.c | 50 ++++++++++++++++++--------------
>> > >>  1 file changed, 28 insertions(+), 22 deletions(-)
>> > >>
>> > >> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>> > >> index 9715b964aa1e..d3a1892c93be 100644
>> > >> --- a/drivers/gpu/drm/i915/i915_perf.c
>> > >> +++ b/drivers/gpu/drm/i915/i915_perf.c
>> > >> @@ -542,6 +542,7 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
>> > >>	bool pollin;
>> > >>	u32 hw_tail;
>> > >>	u64 now;
>> > >> +	u32 partial_report_size;
>> > >>
>> > >>	/* We have to consider the (unlikely) possibility that read() errors
>> > >>	 * could result in an OA buffer reset which might reset the head and
>> > >> @@ -551,10 +552,16 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
>> > >>
>> > >>	hw_tail = stream->perf->ops.oa_hw_tail_read(stream);
>> > >>
>> > >> -	/* The tail pointer increases in 64 byte increments,
>> > >> -	 * not in report_size steps...
>> > >> +	/* The tail pointer increases in 64 byte increments, whereas report
>> > >> +	 * sizes need not be integral multiples or 64 or powers of 2.
>> > > s/or/of/ ---------------------------------------^
>> > >
>> > > Also I think report sizes can only be multiples of 64, the ones we have
>> > > seen till now definitely are. Also the lower 6 bits of tail pointer are 0.
>> >
>> > Agree, the only addition to the old comment should be that the new reports
>> > may not be powers of 2.
>> >
>> > >
>> > >> +	 * Compute potentially partially landed report in the OA buffer
>> > >>	 */
>> > >> -	hw_tail &= ~(report_size - 1);
>> > >> +	partial_report_size = OA_TAKEN(hw_tail, stream->oa_buffer.tail);
>> > >> +	partial_report_size %= report_size;
>> > >> +
>> > >> +	/* Subtract partial amount off the tail */
>> > >> +	hw_tail = gtt_offset + ((hw_tail - partial_report_size) &
>> > >> +				(stream->oa_buffer.vma->size - 1));
>> > >
>> > > Couple of questions here because OA_TAKEN uses OA_BUFFER_SIZE and the above
>> > > expression uses stream->oa_buffer.vma->size:
>> > >
>> > > 1. Is 'OA_BUFFER_SIZE == stream->oa_buffer.vma->size'? We seem to be using
>> > >   the two interchaneably in the code.
>> >
>> > Yes. I think the code was updated to use vma->size when support for
>> > selecting OA buffer size along with large OA buffers was added, but we
>> > haven't pushed that upstream yet. Since I have cherry-picked patches here,
>> > there is some inconsistency. I would just change this patch to use
>> > OA_BUFFER_SIZE for now.
>> >
>> > > 2. If yes, can we add an assert about this in alloc_oa_buffer?
>> >
>> > If I change to OA_BUFFER_SIZE, then okay to skip assert?
>>
>> Yes.
>>
>> > Do you suspect that the vma size may actually differ from what we
>> > requested?
>>
>> Not sure how shmem objects are allocated but my guess would be that for a
>> nice whole size like 16 M they the vma size will be the same. So ok to just
>> use OA_BUFFER_SIZE in a couple of places in this patch and skip the
>> assert. As long as vma_size >= OA_BUFFER_SIZE we are ok.
>>
>> >
>> > > 3. Can the above expression be changed to:
>> > >
>> > >	hw_tail = gtt_offset + OA_TAKEN(hw_tail, partial_report_size);
>> >
>> > Not if hw_tail has rolled over, but stream->oa_buffer.tail hasn't.
>>
>> Why not, the two expressions are exactly the same? And anyway
>> stream->oa_buffer.tail is already handled in the first OA_TAKEN expression.
>
>Basically, for me OA_TAKEN is a "circular diff" (for a power-of-2 sized
>circular buffer), so anywhere we have these "circular diff" opereations we
>should be able to replace them by OA_TAKEN.

I guess I misread your comment. They are indeed identical. I can change 
that.

Thanks,
Umesh

