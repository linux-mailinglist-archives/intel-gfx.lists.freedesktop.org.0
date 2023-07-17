Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 327E3756BFA
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jul 2023 20:27:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7B7E10E2A3;
	Mon, 17 Jul 2023 18:27:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9FC710E2A3;
 Mon, 17 Jul 2023 18:27:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689618420; x=1721154420;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=d8FwOTZ6HxI6uMIe88WcTG02GZojEPd+SO4op7LatPY=;
 b=Ayq7sWBzHyHu+KSQ8bSHEnPRibgZRHrZemQWE9sSPt+h9F8fdLbMFqLJ
 uV26wBPVakw3C3/ZBOWd04JmV+HQFsa8lePX6liOd0N3qILOtKqinan3n
 LVeGK/TSLz3ClHlUBQ8NXqVEG2RrdMXF6/BGQKFkx/QGWZVdZMJlpde6d
 R6070bU2dCflxXQ0BNMBB/URbbfRqbPjI8WhXS/H2EuAwOV2VS753xc42
 gVj11spN7NNlgBPkbiVgEgXHEd3yyx384sPxXi6qi5mYHZ868YTYJKGqa
 thV/61s4dKRyimLJydZeIc1/RyryY6pa4xeUn4T3CZS9cTF1gJfxtux1s w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="345599673"
X-IronPort-AV: E=Sophos;i="6.01,211,1684825200"; d="scan'208";a="345599673"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2023 11:26:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="836972298"
X-IronPort-AV: E=Sophos;i="6.01,211,1684825200"; d="scan'208";a="836972298"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga002.fm.intel.com with ESMTP; 17 Jul 2023 11:26:58 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 17 Jul 2023 11:26:58 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 17 Jul 2023 11:26:51 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 17 Jul 2023 11:26:51 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 17 Jul 2023 11:26:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hZSAoMesxqLspJTzOtV0PF4F3y/+8ZUlPNGUYmeSi/wqWOQq5pBGxifoKNDkK7LdBi6lVMgKRHbOWZsaLkgYloEsU9l2iNQ613l4ZnsN3w9QrUKdyd69UtOvoE6jdTjdJu6h5fjAy6lPGlG93vSdby/19Rnl39G+urGWGQTOmCIYKHQD0XM/1WUl1Otdaq+wRwz4t7HRI73e3GI3VmB6Dy5JGmlnum0sUHtYb1lES/f6wOjP20m8p/Am2H9JwqV2phqJltxMn3cQb8fSZp6HVvbfE+EQ53Ol3x7bEwkRJtmDu9ZD3GLZTfIYHJW96qCgI4wt7uVfDB16sgXAOsZLTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nkZYxq4iMuDaAg1k6rq3zN9NVvy+vTx34pEb8M3tvLA=;
 b=FChbmTRni3+09fCurjTwK5T/J08ZQIqzUANSL1Q6yrM7Og/a+wr4fLpYRA3zqzC1VrqW5nvEn/yAIe600A6q/XlW2XUa7l22goPDvLwi/XTivbNglMyynprJdKwksBdUR5RDvX49MAyfLCocLMOjGwjKyceYXHc4ORvaIrl4giLYMNDIsIVwPyGBX+nREpbqufifmYNBl7j6DUX0jU/Up82I5fp8dPcbiAFewfyP6bZpExfj1HMn4KPWvmZPYLGH2hxxk+4Ilc0jcE5k+M+KsonhF1nqM/ANEr19dhlTqhLm/Cl1m/uDzjDCNi5mDdQMYswdeDU/qfEMUC4lybBTHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB4274.namprd11.prod.outlook.com (2603:10b6:a03:1c1::23)
 by DM4PR11MB7399.namprd11.prod.outlook.com (2603:10b6:8:101::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.32; Mon, 17 Jul
 2023 18:26:40 +0000
Received: from BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::8b4:fdfd:4a61:1e14]) by BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::8b4:fdfd:4a61:1e14%7]) with mapi id 15.20.6588.031; Mon, 17 Jul 2023
 18:26:40 +0000
Message-ID: <e132d009-2532-e675-9887-2a161dfd8780@intel.com>
Date: Mon, 17 Jul 2023 11:26:37 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.13.0
Content-Language: en-US
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
References: <20230707232359.81039-1-vinay.belgaumkar@intel.com>
 <87zg46gpqo.wl-ashutosh.dixit@intel.com>
From: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
In-Reply-To: <87zg46gpqo.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0P220CA0011.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::31) To BY5PR11MB4274.namprd11.prod.outlook.com
 (2603:10b6:a03:1c1::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB4274:EE_|DM4PR11MB7399:EE_
X-MS-Office365-Filtering-Correlation-Id: 4c3f3837-bfaa-45b1-00b2-08db86f35cf9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4yuCYsF0K1jL6K+3fQTYqVxDMtUaXJZUZwSlS160lk81M+zXXtJUnCgHjxT3TpwWhET7MbD3KCmPhW93xqRXIoU0ExgJNf9BXzV3AAbWfZEWBBp33KwN6GmDw52APs9t9eHJUjLeAUWaJBlsWxmSxYq/7rC+lDOvXg0GxzHg0jDQqI91ZbJ7beT4ip0lMKeBe3xKFwT2T0ZJClZEc0qQtNcf5BlOHA/VLLcOkJ8daXvzIFMa4nCLrgpEq74n1Et4zQowyPloGs9N3S8rmAEwtJhQZbfnsO6+Snrb9JDgII3YCsRFVcgU5pUIoaLMBZEfes+KC87ddi/cdYfXvot3YvITrjQl5Bgrr0BJshVKku7QZ+MUDyrEHMTJGnDRAOHrpIniKCPeDxxUijwL19DA3tsxVVBpaTavn5XsZcCosgInbdgwc7aneQtEMOH6oSmJqDXdcZ78+b9S9nfW13AeiyZqZyFqOyu9/G/UX1/XG2/f/gfULQ+GasxMNp+o8k7pAG0vNVTDuW0nirH2ppwuGXtMfPHAFGGKWAKb4PwE0LspS3Sat1ehS6qkm5tPjRZFX9oe770KCmmI/Bs4xjZu25crjOl5t1vwnvE+k+25bc47jQVslUXw9+C8MVim/z7vybPBqAyoF1/xgvWce12m8w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4274.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(136003)(376002)(396003)(39860400002)(346002)(451199021)(8676002)(41300700001)(6862004)(66476007)(66946007)(2906002)(66556008)(8936002)(6666004)(6486002)(37006003)(6512007)(450100002)(86362001)(31686004)(6636002)(4326008)(316002)(2616005)(36756003)(5660300002)(38100700002)(6506007)(83380400001)(186003)(26005)(82960400001)(31696002)(53546011)(478600001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WmVpbHdmMVpkRXVVU09jSGVLejVuMWtWNFYxemc0dSt4b2N6SGxPcVE0SnpR?=
 =?utf-8?B?YW5GNGZ4cG0yVE9SWm96QUNtWFZxMDBjNmxiRXZFdFlscU8zdVhiOGxMV3Y2?=
 =?utf-8?B?WTJqNktZdnV4cmJWVVRmTU02QW40bVN6R2c0TmJveEFQUzVLOHhNMzdaK0NE?=
 =?utf-8?B?NXpWTzlrZVVzS054T1FPaXVrSTZaUGtTWWFBZmd1WjN2aDYyVVdOaUp0U05C?=
 =?utf-8?B?MGY1YTIzcVAvM1pHS3RERjVDZ082MWEwc0xIU2JSZGdXMEk1UjJWTUtyRVBh?=
 =?utf-8?B?MlJINjd4bmtoTm9LSVZ0QlEwdmpGV0RpbjJnaXpacW1yTjAzV2dwTm1iNnlC?=
 =?utf-8?B?dEEwcVR2Z2N3S3UvKzhLTy91dTZwWjRTbHhCSExnU2FMZU9mbFBPUk5lZ2Fp?=
 =?utf-8?B?U21BQnpMb3dkTEk3OTdzcTRUVDdxWjdZaTNoK1lkcHoxVmpxWkZvYkt5QmJh?=
 =?utf-8?B?MHRsNE8vUzZQQTFiempBL1M1YlhlUVB6RVl0L1RqVCtBeUJUVTBDN2ZoUkFJ?=
 =?utf-8?B?aWR4QXZGNi9BUkovZlhFY3c2WUFocUh5blpNbE9PZWYrOVA1T21iWUR5Z282?=
 =?utf-8?B?MDNTY0J6ejNUUUowTGI4NW1hc3BsMkZGQ2NUM3NNWFpGUzl6Y0UwV25OQ0No?=
 =?utf-8?B?UnRQdTBQSDlhcWEzQ1VNZis0U1JnVEZOYkVwRllzbzhHamRCWFZNajhxTlg2?=
 =?utf-8?B?WU1qME9qS25UTnBQa3lUUGEyQ1hmNEVrVlJJa29qNUtTZ1dNMGpwTkFzcDNm?=
 =?utf-8?B?cVJBVWVnTTBuOVNJYVZCOXZSMWJmOUlIQk5KVW15RXc0VUFac1Q3UWIrNklw?=
 =?utf-8?B?aUVoUWRTVktCTFc0dER0b05RdFp1L00rTVloS3ZmYnVTU0dmQVZISTN5RHZn?=
 =?utf-8?B?dFlzaXkzaUgwQ1h6ZFZLMUdBZFlza2dNZDczb3oxUHMxVkVMbGcySjdkQUtE?=
 =?utf-8?B?Qkw5bC8rR041ZUtSTWpxcXFVT1BYSE91bGlaWW9CYnJ6b0U0bVBsNm02VzRo?=
 =?utf-8?B?OVg2OHJGUWJiOUJJTmRrUzRGZ1N5b1lTR0FaSk9GdlRncVFLTGxVMVlvYi9m?=
 =?utf-8?B?R2QrWWJnV21ndnFBOFBvbFdXOVJkdDZFeWV4cjFQN0JtWHg3NklKYUlNS1Mx?=
 =?utf-8?B?MXJXSVhlNUxWYlFRRU1xM1FqU3A5Q3hPSzl4bEgzMjFtOTFUczFwUitIbitZ?=
 =?utf-8?B?K285K3pZOWNWOWM0aTNYTTBJa3NRWGdhWmxMaktON2pZZEs5SGk3b0VpelA3?=
 =?utf-8?B?TkVhRE5TODFrQTdhZ3pxU2tLdS80UzZsVjhla1N6eWhYaHNpaDFBQjZXTm15?=
 =?utf-8?B?bVN6Sm1wMlhkd2NNSk9Ec1RFR2YwVzlIbWh3WENSTnMxeXgwWmdMc0dwMlhO?=
 =?utf-8?B?QlZINjU3RmZkOHNLNHo4bzV4V3FRMUhUTW5UQXBFaSs4SkU3cXd0Z0hoRnlu?=
 =?utf-8?B?S2xrMFU3am9QKzhRYktmeGN2azhrajV1MlA3MFRJcFBxY3hrR1dsSEYyOFRK?=
 =?utf-8?B?VHBaS2VxcnpPNFB1TkthNlpybGJXU0IyZ2YvcERjSVVYUWZnbW53QTlCb0xX?=
 =?utf-8?B?cUZiWCt6bXNMQWdINzkxd0pKVXdCMm9nL3Mydi9aSWI1NG5HaFJQVU9Menk1?=
 =?utf-8?B?UG5rWWxhTlpXZ2gzWFNqQzFkZWdMYnVFVUpRTUdFN2hlWXVCcEZ4WDRacUpn?=
 =?utf-8?B?MEhIeCtrelFWRFovZndGYU43R0ZJN29DUVYvQ3ZzSmtITDBIOU1XQ2VlS1Y0?=
 =?utf-8?B?WnltZkovT2ZlejEvdGNKTjBtRVdFWTNTMjFIdzhoeXJXQ1NIamdMbldiKzVQ?=
 =?utf-8?B?d0VDd1pNR2xDRFVoUUVyYTV6YmZ2QlZkRjZNbnMyUGE2UDZybjN5ZG1Eb2VM?=
 =?utf-8?B?aUMyMTVuTGdvYUR4SlE5dE43NjR5SE5wM1dzQ25WL05KUTFRaFBXaThDeUo1?=
 =?utf-8?B?Z1NHTHRJZ0xhWndEcEZkQ0xtaVRxTm5wQ1ZlZ1dsdWtnWWhQMWZCZlNoL2JH?=
 =?utf-8?B?V2NvUjBmS0RyMERSZUNnWkVkeHk2NTNQYXdjbDdrL0IzTDFpNVV6L0VDaDFy?=
 =?utf-8?B?b1R6L25ZY3ZCUXYrSzR0SHE5TEpRdVZ1NVVMNVkrZkcrUnZvKzBINnRmbnJZ?=
 =?utf-8?B?UkRJVG1TVnVtVW40UVlySmtvVnNxM3BIQit3eml4Q2FwUHNQL2ZNeVM0c0Zl?=
 =?utf-8?B?eHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c3f3837-bfaa-45b1-00b2-08db86f35cf9
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4274.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jul 2023 18:26:40.0095 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EmgTM3htTmU8dsv+7LY6GxspbZoKUGzRCful0QzjA/mSyKqx1Sy8FIMcGFzlRSi25HHGbEmKT/Aw7jS2jUFQVUbLxQg6SsD4vvELl4TmvV8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7399
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915_pm_freq_api: Add some debug to
 tests
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


On 7/8/2023 12:36 PM, Dixit, Ashutosh wrote:
> On Fri, 07 Jul 2023 16:23:59 -0700, Vinay Belgaumkar wrote:
>> Some subtests seem to be failing in CI, use igt_assert_(lt/eq) which
>> print the values being compared and some additional debug as well.
>>
>> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
>> ---
>>   tests/i915/i915_pm_freq_api.c | 18 ++++++++----------
>>   1 file changed, 8 insertions(+), 10 deletions(-)
>>
>> diff --git a/tests/i915/i915_pm_freq_api.c b/tests/i915/i915_pm_freq_api.c
>> index 522abee35..cdb2e70ca 100644
>> --- a/tests/i915/i915_pm_freq_api.c
>> +++ b/tests/i915/i915_pm_freq_api.c
>> @@ -55,6 +55,7 @@ static void test_freq_basic_api(int dirfd, int gt)
>> 	rpn = get_freq(dirfd, RPS_RPn_FREQ_MHZ);
>> 	rp0 = get_freq(dirfd, RPS_RP0_FREQ_MHZ);
>> 	rpe = get_freq(dirfd, RPS_RP1_FREQ_MHZ);
>> +	igt_debug("RPn: %d, RPe: %d, RP0: %d", rpn, rpe, rp0);
> Print gt here too.
ok.
>
>> 	/*
>> 	 * Negative bound tests
>> @@ -90,21 +91,18 @@ static void test_reset(int i915, int dirfd, int gt, int count)
>> 	int fd;
>>
>> 	for (int i = 0; i < count; i++) {
>> -		igt_assert_f(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn) > 0,
>> -			     "Failed after %d good cycles\n", i);
>> -		igt_assert_f(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rpn) > 0,
>> -			     "Failed after %d good cycles\n", i);
>> +		igt_debug("Running cycle: %d", i);
>> +		igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn) > 0);
>> +		igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rpn) > 0);
>> 		usleep(ACT_FREQ_LATENCY_US);
>> -		igt_assert_f(get_freq(dirfd, RPS_CUR_FREQ_MHZ) == rpn,
>> -			     "Failed after %d good cycles\n", i);
>> +		igt_assert_eq(get_freq(dirfd, RPS_CUR_FREQ_MHZ), rpn);
>>
>> 		/* Manually trigger a GT reset */
>> 		fd = igt_debugfs_gt_open(i915, gt, "reset", O_WRONLY);
>> 		igt_require(fd >= 0);
>> 		igt_ignore_warn(write(fd, "1\n", 2));
>>
>> -		igt_assert_f(get_freq(dirfd, RPS_CUR_FREQ_MHZ) == rpn,
>> -			     "Failed after %d good cycles\n", i);
>> +		igt_assert_eq(get_freq(dirfd, RPS_CUR_FREQ_MHZ), rpn);
> Probably ok but why the changes in this loop?

There are a couple of bugs that are failing around this area.

Thanks,

Vinay.

>
>> 	}
>> 	close(fd);
>>   }
>> @@ -116,13 +114,13 @@ static void test_suspend(int i915, int dirfd, int gt)
>> 	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn) > 0);
>> 	igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rpn) > 0);
>> 	usleep(ACT_FREQ_LATENCY_US);
>> -	igt_assert(get_freq(dirfd, RPS_CUR_FREQ_MHZ) == rpn);
>> +	igt_assert_eq(get_freq(dirfd, RPS_CUR_FREQ_MHZ), rpn);
>>
>> 	/* Manually trigger a suspend */
>> 	igt_system_suspend_autoresume(SUSPEND_STATE_S3,
>> 				      SUSPEND_TEST_NONE);
>>
>> -	igt_assert(get_freq(dirfd, RPS_CUR_FREQ_MHZ) == rpn);
>> +	igt_assert_eq(get_freq(dirfd, RPS_CUR_FREQ_MHZ), rpn);
>>   }
>>
>>   int i915 = -1;
>> --
>> 2.38.1
>>
