Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECAE277B24C
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Aug 2023 09:25:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E24C10E110;
	Mon, 14 Aug 2023 07:25:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB88610E077;
 Mon, 14 Aug 2023 07:25:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691997904; x=1723533904;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=fDnakUXwBYnIdkc0KaugO0nyo1FAEAJRVI4gZejaWi8=;
 b=fKbwiqiJEYU3p3veeI24K5sU9iq7eRMNZGgw2h1iQ13FAYeceZ7WdN+v
 4pFmI7+haCM83Pyy3CInmxnOlTf74W58x8PsqP4BvP3nlkHNcVP0YOruM
 I4EC4AmWt/AlA5hnOabYQS5fuo2QOmubLPMYOA3E7R3TSwRgKSFERE4fT
 MaqXrQCe5c/kY3Li0wqjOr1oVzJIsC1Ba9FNDu5v8BE/sXW5/L9coO+r7
 X4nhPzO2OYK4h+m3grwfLMKkTO1X6F+qLMdVubCRf977BiZ00EyFm3Xl6
 J/tvBWKDm/jMmPjxOfBDkLX8VTXUwQHO2U0SCza5Kr/15L8GNI8DglJTA w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10801"; a="351579129"
X-IronPort-AV: E=Sophos;i="6.01,172,1684825200"; d="scan'208";a="351579129"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2023 00:24:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10801"; a="726923274"
X-IronPort-AV: E=Sophos;i="6.01,172,1684825200"; d="scan'208";a="726923274"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP; 14 Aug 2023 00:24:56 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 14 Aug 2023 00:24:56 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 14 Aug 2023 00:24:56 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 14 Aug 2023 00:24:56 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 14 Aug 2023 00:24:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MVA4O1I5JIO0LUSLOmoH8VZBPWdulcPw2Y1AcMNvA/+0AJgksFkqN279mLKg47NGpNJuAepbjHnVNWT3dQWodm6UxtjLetDDCfucLB4iVyB5IDf1xjLbXmeJ+L1DedsSNlnacd4ZSUapVeBYvpcONqyodYuhTm1r5Ah4OUjSMzyPTBwwFf4VpNO+z1wtWDLp24s0H8z19lnFRxJ6VYsxnqDNv7kp8Za7jgrqrQ7fjyMMWJhSPAVEi7XJevSXQImvD0fnGqUqmZyt/Q3Q3k07XfC+pGUw1UCSC6PbSqeQN3TmyGg+LPUS4fH+ogLxrWRDrxQQ4bmu/e4Z0++p0zkO2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XDMrDMP2bLwVd/hlu3592atw2SR0ztVEagF5nURw9n4=;
 b=JPT/jHy63sThZUyPb4MJSdTVX+4zAFKCTQwrFYTqF/YuqyuwQnGtU6kFAlCrmLGpRgDjZqy2rdraE0ize91dWbnnl4Is4JYHsOhIZ2+HTKzHhjiaS7oU9/IyrEn2MzJyEDwEzcpv81j0RLZgTMz45vVyRsaiV8oRM6QbbEqMCJ4PBS4oi9uXbnJc0SG6YmjDmcrOy6Fjjn0S4TLSYBWMd1sqaNRwAEG5HWhpRiY+3pm/xsbFgqDviwapSropH3EYU5PxiEQbn5ivXNrE0w8obD24ORvGA6DDenWm0b01iQY/XQW7lStZDkrkP5vbbrPRCQxiGeFVMA6qdbSu1JzCjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB7958.namprd11.prod.outlook.com (2603:10b6:8:f9::19) by
 SJ2PR11MB8347.namprd11.prod.outlook.com (2603:10b6:a03:544::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.24; Mon, 14 Aug
 2023 07:24:53 +0000
Received: from DS0PR11MB7958.namprd11.prod.outlook.com
 ([fe80::6b9:384:8202:b294]) by DS0PR11MB7958.namprd11.prod.outlook.com
 ([fe80::6b9:384:8202:b294%7]) with mapi id 15.20.6678.022; Mon, 14 Aug 2023
 07:24:53 +0000
Message-ID: <b5e574a1-7aa4-d233-3b02-f0acbac517bc@intel.com>
Date: Mon, 14 Aug 2023 12:54:42 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.14.0
To: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <igt-dev@lists.freedesktop.org>
References: <20230809005014.3451790-1-vinay.belgaumkar@intel.com>
Content-Language: en-US
From: Riana Tauro <riana.tauro@intel.com>
In-Reply-To: <20230809005014.3451790-1-vinay.belgaumkar@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0228.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:eb::16) To DS0PR11MB7958.namprd11.prod.outlook.com
 (2603:10b6:8:f9::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7958:EE_|SJ2PR11MB8347:EE_
X-MS-Office365-Filtering-Correlation-Id: 8d360ccc-8d1d-42d8-6a0b-08db9c978d04
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: c+uLnUuDGPQ/ogGc8RshfpeIIKHNYzEZiFWqZ/aHfTMey8d207d6Tks3XtF7UW5rZc8hC28sh6CaY2DOu+XwPANkFfoN/IoemEFLL6BzVORYDCYQyyv0gay75aREYPwjc2UZdWadXYC9oICH8hka9H9XB8niEHaX07JriEh+EszUrFysFx+8akabayiS6lUzduXlKAdI0SFpUJKPpLZSamdQMEJkDpsBVnrUGXXO8xLJ9FTCrOlkcpnnUFo/h1A66+aThJhyKpAoy0Uhe96bGWp4kE/q9+Q/Z+GkKrr+fb8OEcgxgxIIEi87YEmWqtunpDxOkcxyykl9P25gQ8+qg/2Kad0pWsWj7mjgkHzbFHSXZRLmZTrIg1FxCDaxW1jeM990ZlDeHlWArjdUTjV1f3XtZF2ix9NWfrhyK/5LbOX0NCz64eMz8qaTExir2wrSsXhIePtmPyZj2+NyTVChwGsOyg9tah6+43ZOVmL1a+hW3yTVvCHiHA/16UmaKCD2px8YOZLVAYQGd+4hplKhioZdQZxVmSX0PASj6veUM4p3lUMuFQKYD+OZ0FnRWixMOFLF5qUTdJhq4hTAMIkI2qZgxeHPQif67u9nGftWXNJFwDLHzoQ+rDrb/nVFBt/Id4+gpVUY6nV6VjESbfBgGkM00rVlHwCw/QmT62zZpKM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7958.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(366004)(136003)(346002)(396003)(376002)(186006)(1800799006)(451199021)(31686004)(6486002)(966005)(6512007)(6666004)(36756003)(31696002)(86362001)(38100700002)(82960400001)(83380400001)(6506007)(2906002)(44832011)(2616005)(478600001)(8676002)(53546011)(8936002)(41300700001)(26005)(5660300002)(450100002)(66946007)(66556008)(66476007)(316002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cUdOTW5BTVIyRFJLSzhCeHNEVkNqRmJmY1l5UlZGSDZnc3gycXlNZ1dQSTU3?=
 =?utf-8?B?S1hsWXArS2ZHMHhNaHZFdERQQ0xtSWkwMzRwQk9qU3Q2Wm9adG9Xb3lPSzJj?=
 =?utf-8?B?SGFHOW9tQkhjRHJQeUlhNXBKSU1PUlNrM1RwT3YvYzM5cUdLYzd0SFR6YU1F?=
 =?utf-8?B?blhVZDNyNlFsTXE2OGc3aEVBcUxObGZtTitvUUx6WllaWnBOcExFWDBBeUpR?=
 =?utf-8?B?b3NDUE5JS3E0MVZmcHNWR29oRnJBUnhZRjVVUzZkN2t4VkxrUVlWNzhpOGFh?=
 =?utf-8?B?NzI4QWhHYjZCb2lQV0x3K0VtdjQrbXhEVWJENE9tR0lZOW5ydlZCVzVlNGJY?=
 =?utf-8?B?ekVFcUlTOXRWNVBNK2hZMktnUGw3dTdoSmozTzhEK1BLQjNlbERhYW1LdFY5?=
 =?utf-8?B?elNEYWNTaUJtWjNxdncvWVI2N0lmK3poclBGS3ZuL1E2MEhlVEZFa0ZOazNC?=
 =?utf-8?B?Tk9PL2xSbEtEWk5nQ25qeEhGL3BCRjdXVkx6TlZNaUxMRFFMMWkyMXFDNjdO?=
 =?utf-8?B?MzBwazFGL29uQUp6SVRLaUJyQlpwWGRKNVdYYVBMVGJzc2VkSG8zcjI3WmE4?=
 =?utf-8?B?ZFJ2RnlaY1NOcE5GSzlrbE9kOXVxcG5FRVVHakFmRmpheCs2cC9WOTNNLzBH?=
 =?utf-8?B?R093dkwxbjJzcE13emxnbUtvdFg4aEtQVGJaRnRLYVNQbldDQ1RKblozVjlo?=
 =?utf-8?B?WUVYKzNHNGFaUE9Rb2hteCtvcitMc1RlRzlKRWlCMHlUQVh4Qkt5RDRlN2dC?=
 =?utf-8?B?blJGVmRlT05xcko2UzRUWE80OWNpOThOQnNqd1BiR0tmTmFMNXEwVXV5Tkw4?=
 =?utf-8?B?SGV4SXlNUFFBWGJJTjFFOTJJZHEvR3ZSYXU5ZXgyVWJBaUZGTmlmM2pCL0VG?=
 =?utf-8?B?b0JPam1aOHVwVHdpT3ZpcEVpQm1RT3Y1UjhzQ2dVNGtXWS9RT2JJOG81NENt?=
 =?utf-8?B?WmtGVFFWUFV3U2dHZjZkY0dQR29hNmxpVHovek9wc2d4aTNBdzlLWFhjU2ph?=
 =?utf-8?B?Wkg4c210ZjlrV2h1RllnWnl2em1abWI4bFY3dGlzdGYxVkVXMExEcDBFTXdw?=
 =?utf-8?B?K0phY3A0bCtXRGwrbllXNkhWKzExeDZ1Nk9zVS9STFgzMTJwWDVMVGc2dkgx?=
 =?utf-8?B?aXhHcW1nRkg1UjBUTFRhcGhJUmVEa3VYeW9MMkdhWG5qT1YyUlJ2ZnlUYjl6?=
 =?utf-8?B?MUxaakQwaTh1VGRCN0R5V0JXNE5GK0N6YlRHU1lkQy8yY2dadFg1TVp3NW9M?=
 =?utf-8?B?ei9ENER5MDUxWVdqMDdsbTdlK21udmx0Sm04UzJ4aEJWb2pMR29KbHRrZ0hp?=
 =?utf-8?B?VDFKeG8ya0VBWFNDQXRsdDFOMGgrOEFBcTVQT0w2RnQweVRsUkxiRTgwcGhF?=
 =?utf-8?B?UVNXNS84dStpakswVUk1YXNMM2grSDVmRk5sS0tEVVJ2eWc0TUYydEt0d3R0?=
 =?utf-8?B?UkwzbDlzRDNrM0hXTWsxWWNuNjR4UXF0THY3RmZtcC9IZG1IV1kyNnRwMDcy?=
 =?utf-8?B?alREanl4VlY0UEVVSFJSS0NNbjBBU3FlSC9ybXBDQU9PSytMUDM5bU9vVHZE?=
 =?utf-8?B?UmNPQWQ1ZzgvZ2lhWUNLeXhkcUZCVmpaNmFRNVR5ZXJrdFFxUXNqTi91a1Vm?=
 =?utf-8?B?KzRXbktFZ0hRZEZDNGlIaXhocmxkMDBRaHgvVno0RnVzV0FCRk5DUmhFd1Iv?=
 =?utf-8?B?WmJHRXdNOE83K3I2YlFoV2R1RTFhTTVBZVRGcmtFbXlKSkw0U1pBU1RERFpV?=
 =?utf-8?B?VGZTMXdKc3NNODRUTW52VlFyQXJJMERLUkNmVlVPNjhIUEl4Tlo2N0k1QjFE?=
 =?utf-8?B?bXZTeCs4Z0YrOVBObEZUKy8yaC9RZC9tbEhxQzhyelk5UkV5clpKRU9ybmMy?=
 =?utf-8?B?SUl1bzhBbDJvTERWY09kMmpxcEhJSmp1aVhTRkFVcnBHUGNmd3RHN3lTY28w?=
 =?utf-8?B?czRlbkU1WEZXZTNsMi9MK1N1UmNrUmxWdGZXVGV2UWlpb21NTC91QkNMRnNT?=
 =?utf-8?B?MlNGTFlQdDJKaWRIeTZKdFpRb2l6ME9nRlZuQmpDSEV0QjFPWVYxclhmYnpk?=
 =?utf-8?B?cllWVll1QTVJVEVzK25QeW1TV09oRml0b3BpME8xaEFqWlFxQ093Uk92N0lt?=
 =?utf-8?Q?zct5AJYuITBxEoA3w5RAhhWxF?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d360ccc-8d1d-42d8-6a0b-08db9c978d04
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7958.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Aug 2023 07:24:52.8264 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ki689LUwrFjExn7z5E8b89Tv4i2yvqO8LyQTsqyxrhxCcY0wEH6+StVj6G0L2EX7EpvizH3xiO/iTpBBQzNY/A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8347
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests/i915_pm_freq_api: Ignore zero
 register value
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

Hi Vinay

On 8/9/2023 6:20 AM, Vinay Belgaumkar wrote:
> Register read for requested_freq can return 0 when system is
> in runtime_pm. Make allowance for this case.
> 
> Link: https://gitlab.freedesktop.org/drm/intel/issues/8736
> Link: https://gitlab.freedesktop.org/drm/intel/issues/8989
> 
> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
> ---
>   tests/i915/i915_pm_freq_api.c | 18 ++++++++++++++----
>   1 file changed, 14 insertions(+), 4 deletions(-)
> 
> diff --git a/tests/i915/i915_pm_freq_api.c b/tests/i915/i915_pm_freq_api.c
> index cf21cc936..9c71411ee 100644
> --- a/tests/i915/i915_pm_freq_api.c
> +++ b/tests/i915/i915_pm_freq_api.c
> @@ -88,6 +88,7 @@ static void test_freq_basic_api(int dirfd, int gt)
>   static void test_reset(int i915, int dirfd, int gt, int count)
>   {
>   	uint32_t rpn = get_freq(dirfd, RPS_RPn_FREQ_MHZ);
> +	uint32_t req_freq;
>   	int fd;
>   
>   	for (int i = 0; i < count; i++) {
> @@ -95,14 +96,18 @@ static void test_reset(int i915, int dirfd, int gt, int count)
>   		igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn) > 0);
>   		igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rpn) > 0);
>   		usleep(ACT_FREQ_LATENCY_US);
> -		igt_assert_eq(get_freq(dirfd, RPS_CUR_FREQ_MHZ), rpn);
> +		req_freq = get_freq(dirfd, RPS_CUR_FREQ_MHZ);
> +		if (req_freq)
> +			igt_assert_eq(req_freq, rpn);

Is there anything else that can cause req_freq to be zero?

To differentiate can we assert only when runtime_status is active 
(igt_get_runtime_pm_status() == IGT_RUNTIME_PM_STATUS_ACTIVE) ?


Thanks
Riana Tauro
>   
>   		/* Manually trigger a GT reset */
>   		fd = igt_debugfs_gt_open(i915, gt, "reset", O_WRONLY);
>   		igt_require(fd >= 0);
>   		igt_ignore_warn(write(fd, "1\n", 2));
>   
> -		igt_assert_eq(get_freq(dirfd, RPS_CUR_FREQ_MHZ), rpn);
> +		req_freq = get_freq(dirfd, RPS_CUR_FREQ_MHZ);
> +		if (req_freq)
> +			igt_assert_eq(req_freq, rpn);
>   	}
>   	close(fd);
>   }
> @@ -110,17 +115,22 @@ static void test_reset(int i915, int dirfd, int gt, int count)
>   static void test_suspend(int i915, int dirfd, int gt)
>   {
>   	uint32_t rpn = get_freq(dirfd, RPS_RPn_FREQ_MHZ);
> +	uint32_t req_freq;
>   
>   	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn) > 0);
>   	igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rpn) > 0);
>   	usleep(ACT_FREQ_LATENCY_US);
> -	igt_assert_eq(get_freq(dirfd, RPS_CUR_FREQ_MHZ), rpn);
> +	req_freq = get_freq(dirfd, RPS_CUR_FREQ_MHZ);
> +	if (req_freq)
> +		igt_assert_eq(req_freq, rpn);
>   
>   	/* Manually trigger a suspend */
>   	igt_system_suspend_autoresume(SUSPEND_STATE_S3,
>   				      SUSPEND_TEST_NONE);
>   
> -	igt_assert_eq(get_freq(dirfd, RPS_CUR_FREQ_MHZ), rpn);
> +	req_freq = get_freq(dirfd, RPS_CUR_FREQ_MHZ);
> +	if (req_freq)
> +		igt_assert_eq(req_freq, rpn);
>   }
>   
>   int i915 = -1;
