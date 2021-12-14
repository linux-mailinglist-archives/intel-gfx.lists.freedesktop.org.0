Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2A6747469A
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Dec 2021 16:38:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 572AB10E56E;
	Tue, 14 Dec 2021 15:38:42 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7438510E552;
 Tue, 14 Dec 2021 15:38:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639496321; x=1671032321;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=t4hLlxUc8ZBm1oGyBeMRMbXQcd78Iufx5ZTBgZhmrLc=;
 b=Fstiu9Ar1O1cKOBpK8iocH/ypd+5ClF85xBiul8qhFE2W7dDYxo6Svvy
 Ek6aCZR7/UkXX2xrHxvTHfy9pz8W0IIYVGKXPgjVo6IyP0eeTkZHj56i3
 uvGWEvBq5daI4fmkHgHHdu9T8eZ2g0h9S1VG2FsKs9wJY2t14NLWMPgEW
 srb0JEmWnRg7WOJk0uXEu6JlY/3b5iggMYCr9qyhwovS4n5v8zRsxivsq
 XtUTm2SmLCAwJGTOWYhRMaCU7WG6Kneq03higwKaDNLvxaGs+j8EyRGtM
 n0dstNdABcRhY69YUVcG6un6D7GkCj47x/RLMITnJ8lAefT3rNx7dAz5R A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10197"; a="325279492"
X-IronPort-AV: E=Sophos;i="5.88,205,1635231600"; d="scan'208";a="325279492"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2021 07:38:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,205,1635231600"; d="scan'208";a="604375722"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by FMSMGA003.fm.intel.com with ESMTP; 14 Dec 2021 07:38:40 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 14 Dec 2021 07:38:40 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 14 Dec 2021 07:38:40 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.47) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 14 Dec 2021 07:38:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TXxiwN6jjl2YpEzycdO6mA5+PhqkR46d4fmqcAPlCZuzpj06bXL3kGJcXzOtuW28RU03v3rXDN/9eu+E3pmrUnlcX8UBUgptzIc6Uvl0So7zEdr6D5v2rJ/iEcsr5I9GCqsSsXzlROhdt0KBOHQI6oFmu27H+t0aWkViZPFFZ+CoRtN6vwKSZXXVlAZRk195yavYo4f6Yp4jCXqGld8w/v/kUTiKV7pIAgvFOijJtYcNkfOveNVcKSVgkf7GaekWz1NoTjwsxWu13WkG8KcNZku6BRdJiBrAAnWmBB2f7SAFj4leGasTpgB+4ni6SHR72IF/NF5BM1WOP2wCjbWmNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q8/Gp593zSJiwxM3z1zW6sbVhDbpFVQ/cyzEOwWWZYE=;
 b=mtOPFP7RIvlXFeukhNzqF+yBbFfeJg5bMEH28BzI0F6YYoa03BNEqp6endyA7cgb7KTYQkiQuxg3+sqOzUfArbzNMFwf3r53+fi3m/n0myHLthAXag6TIWIlOl10Y59Pw6cXPpsgFU+c5wQrl7iTYPSXlITD95W3OjVcub2GrgPrAqgK/7KJ/sTnRmMq40jWKG4l5LrHaFeD3Rl/rANiwkT75HZqPSL6M1NezjazDyaKNvZ+gO8LDxFmfD85Us4XAbMIVC11FUFTwZtXtFIue81vrHLSC+fmwtIR5cKvOre5PHqz6MlJ36/H/1BQL12/o3XVkPI/P7bRLFhFcDcWKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q8/Gp593zSJiwxM3z1zW6sbVhDbpFVQ/cyzEOwWWZYE=;
 b=vuclZGaoizihDfM834xYySY600NSKjDAnGF9LNC7gKMl8LX7DAdWvLh8HoQ7s6wiK5PacAE0PjLXmCxRdjgnew1Yu3L40ptS3PXQWaTMal8smwJz1WNXsMj5vbXh9goLJcyGucdN+FOMf5rVyCZS38IcZbSdQ+a+XFNah97ssms=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by SJ0PR11MB4846.namprd11.prod.outlook.com (2603:10b6:a03:2d8::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4778.16; Tue, 14 Dec
 2021 15:38:37 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::8460:d836:4335:641e]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::8460:d836:4335:641e%6]) with mapi id 15.20.4801.014; Tue, 14 Dec 2021
 15:38:37 +0000
Message-ID: <aa68b66c-ea91-23dd-57ce-71ebd61ed43e@intel.com>
Date: Tue, 14 Dec 2021 07:38:34 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.4.0
Content-Language: en-GB
To: Petri Latvala <petri.latvala@intel.com>
References: <20211213232914.2523139-1-John.C.Harrison@Intel.com>
 <20211213232914.2523139-2-John.C.Harrison@Intel.com>
 <YbhoRiHwnkZV3awF@platvala-desk.ger.corp.intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <YbhoRiHwnkZV3awF@platvala-desk.ger.corp.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0276.namprd04.prod.outlook.com
 (2603:10b6:303:89::11) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8544ce42-b74c-420b-b8b3-08d9bf17cb90
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4846:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <SJ0PR11MB484695FD28C74B13D964B30DBD759@SJ0PR11MB4846.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2958;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JYy8P+ldSRIyh6PurU4AFNcIrbxVA3RkgPFcWIDRWU0FJSnaW705ByO8btKl/jRYUZnAXScz42BqpxK/W/hw4tINuAKDHbg1FkEE58VDBL0AKpYKPv1dtfhSP6bWfahDveo/+RkyCeZ3DHTZ3zxwR3KTIkNE6XBtp7qYqGP61maIAr2qtit07Cyoqczmy2nLyYbtVbvb8EKAT5oK4gABh2DZ2X7yNO0iyvXGIR7dXhAWpavnC7RkB5VN29rKoBx8t3uBfdT7BRTRmhyLlnbLenXfvt5UiLiCFQoq6VsLLmtwXbuQo5cGr5nk3JUfdzbkchd2Mciw6fRohm2M89r2/Syr5ZhGa8OeN3LkvWRcdfjySFLLT0q1TTDU7dPQTtIMtNZIBv3f+u7ZBPUp64cP22BVUx2By9sGQJYfXeepjiJYi+4QXWvpnaPVGO8XMHst1AXAa3k7ptarS90gZTn7X4w91maaBrmlkXVDnAGqpyMCGpFopyR3zjVYfBWNlHpksfwduDH8fqCcEjXb6fH8rw8+AZ8yNaUEFkPmCTOg7TYIDVnOwgfyDmotEJ73ZAr1ZiqUGqF4PNDmk51dpbeRJnvlFgwVRgU3KSykBByn3QBYuhaXtHv7jIp98B3VIEiE+5W8V4rBQjIlH7Qj+Paq1lab7FJmp4NhVVFtxuGOnmSsr0wl9S/6RdkfEGVEA1SCYvNZ70SuCSnLwHQxJWjjBdJM2LjBHttQvQtFK5ildfVIVvDk76gtphGIjXteRU3f
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(186003)(4326008)(6666004)(66476007)(5660300002)(83380400001)(26005)(6862004)(53546011)(508600001)(8676002)(2616005)(38100700002)(82960400001)(36756003)(37006003)(450100002)(31686004)(316002)(31696002)(66556008)(8936002)(6512007)(66946007)(86362001)(6636002)(6506007)(2906002)(6486002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VW56OEo2S0kyd0VqcEdqY2RsMzFQRjM2aFpYRjh2MFdCR2prckk0OS9WK3Fk?=
 =?utf-8?B?c3k3R0Y5MGtEdGtiMGJQMmpBbGRhYlUyQWliTVVYTFh0aVBSdFFRR0cwYllt?=
 =?utf-8?B?M25jWFF2Kys2SzJ1czBJVElCVXZoWXVUR1BGb3FYS3llS3dGQnNzSFFQYjVW?=
 =?utf-8?B?N05uSGc5WmZUYnhGd1FjWVY5OFFVakZSVkdyY2QrdU1mYWwydTlqRlc5ZTVZ?=
 =?utf-8?B?TVNwSlZQWlFpZG10TGd6RVJoTHhDV3k1dDZLT2syRjFPb0ZJbUp3Rlk4cWFq?=
 =?utf-8?B?dmJYQktENFljejhrN21kS3U0QmpuZ0N5Ri8xdXFvVm9BYmtRazRTUWJlUFlC?=
 =?utf-8?B?ZDdVU0tRcmY4NklYWUtHTWlNWExnb0loelRwd2VnTllCdDF5RUlndUtKM0xh?=
 =?utf-8?B?alkxMVZWbEZkTnM4RElYdllGQTFDSzdSOE5IeXExOGhXSmtTWHRsaTVkTnZs?=
 =?utf-8?B?b3doQzdFQnNyejlkR25WY2J3d0JsUE5LNDBCUTl4cTB5NGE3b0JIbmp5bCtS?=
 =?utf-8?B?dTFuZGZ6VklKNHFOUDcxMUVTTXZLRllXQUVwVC9GNU52a2lVY212azV0TERK?=
 =?utf-8?B?QU9FRmFaVzR1clNIK1ZqZ3ZZUVpMK2Qyb1gwU2lKUzhqeFNUbTJuc0h6aFE2?=
 =?utf-8?B?QUhCSmJIRE5pS0o4OWJoN1hMemhXc0lEVVJJZzlzOE1DTFZPZHFFRGYyYWJZ?=
 =?utf-8?B?T0JXaDY3c0lwYlRUdlgzSVRnVis3N1o1Mjl6MkpIUkhtcG0wVjNYalBGRWpG?=
 =?utf-8?B?MlA0OWNuRTdTUGJKVWl2ajJHSkRPdzhTVDRlYXlDd2VZT3ZtaTExUmlkelN0?=
 =?utf-8?B?VStvWkYvNTRHSEtGMUF4TGZrc3A4dGIrQ2VqaDFqMFVLTXgwakFXZTNSeGta?=
 =?utf-8?B?dkMxZmN3NHVPUnBkNCtOcElRSVFKVzcvNGVFc2pjS3RESit1ZkNQT0J1UTRw?=
 =?utf-8?B?T2s4U1ZtUURSQU5mbXYvbVE1UzcwNVhrcTMrUkNwZjhJeUVYUytHNHV6SEVL?=
 =?utf-8?B?a2duNEVMN2x6YW1wL09OTjhKeGpLT1BCUFhDV1d3enQ3ZHVyWFZLS3VkWkx0?=
 =?utf-8?B?VWwybG5QNzhQNktHV1lwd2g3ZE8wTnhpNFNFQ1l0bkl5WWJEb05pT2JSVG5J?=
 =?utf-8?B?OEJJblE1bzd4dTZXSFd2VVZyNFRvVjVHYXNhRkJhdDlzVzE3cUwxaUI5S2NV?=
 =?utf-8?B?WXgwK1BGTi9QQWtTSkJTYkhGSFJoV2lKUTdHZm5wb21hVXB6aTZraHlhc090?=
 =?utf-8?B?RThmUUJDTjZCaGpKdDhpdEpyNC8wRjI1dVIzYUs0SGlWUStVNG9KdmxzUVlk?=
 =?utf-8?B?dE1PcWozbzhRNGx2dDFqdllhakQwK1hLVGdxVFVKTERDVHFEVnN0bXFoMGRr?=
 =?utf-8?B?OCsvYTJ0dDI4dXNYY05DSnNhVjFGYXFrZEpqV001enYxbXNwVzVURldsY3kr?=
 =?utf-8?B?MWtvSjdXSnJKUzU0dXY2dGZMMU1xN092UGlKd3lHd3g4emkzbEk0QXN4MzJP?=
 =?utf-8?B?VzB1ZDVuUGJVY2hhREh2aGRRYnNEZnlZN1k2UW9LbExScUFrd2M4c3BINWNz?=
 =?utf-8?B?Q01mUUdIZVUxUHZQZk9iSnlmLzVjRzZTWkdPbjh1b2h2Z2JvWjAxK1R5ejU1?=
 =?utf-8?B?MXJRcWVEOC84VGE3Q0Q3VDBNYVlJTDBFUVRod29xWitDZVlGeWR5bE5pUkE0?=
 =?utf-8?B?VnJrR0FwRUwrVjVGMDg5ZUY0N0dPN2xuWUZNNlI2b1hjNHIrZ2MrNStqVzc5?=
 =?utf-8?B?S3M5aExDQ2pxSW44bmFYbW93RlB3STZRYWdUWFRVTWdWRGswUVBsT0o1RDBI?=
 =?utf-8?B?Qm8zSjJkWFc1UEg0ajROUFh3NWhWRUNlOXVRanFXYUg0alZ2SUNQaDE3ZWxS?=
 =?utf-8?B?T0dtNTJFdkhGVFBoUWJqSVRNR3Z1SjBtODYvMloxT20zazRUQUd3S2crZW9u?=
 =?utf-8?B?Q2hxaTBBWjdZcWpWUzNsYWNyZGFmdlhLSkh2ZTBPZisreXpEbHlqQ0lEY1NU?=
 =?utf-8?B?Z1lEMytVQ1JNZXhPenpoeklRRytScG00Z21VRHFoVmpkRk9TY0xzNi8xSHBw?=
 =?utf-8?B?WFJVUmZCalhvd3dCdG52bHB0RlZ0bkRNUXcxZDExc0tQTnBpN0pwcEFMN09v?=
 =?utf-8?B?Uk5GZDhTWnJTZFlrckdTSGowUGpoMVNoWndHbVVkMnJ5czlyaWlsTXJwaDVX?=
 =?utf-8?B?dFk3a0hnZjJlL3lIazEvcjJaYndycUdBMEN0djVvTnhjeDZkV1ZPcjRiSHpr?=
 =?utf-8?Q?QXcMZ3/5zXObWTcdHCp7ithtelZBG2K69HxotyViyA=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8544ce42-b74c-420b-b8b3-08d9bf17cb90
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Dec 2021 15:38:37.2079 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ++TopfSMamQza/KXvRxAlq+LY860LavPOBo1s8bAKEdNNG/Q8JKMNpdpg2kt+ZVPk/b+FcfmSSgb7Vpln0R/cqYr4/mDLXaodRcc3xoz23M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4846
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 01/11]
 tests/i915/i915_hangman: Add descriptions
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
Cc: IGT-Dev@lists.freedesktop.org, Intel-GFX@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 12/14/2021 01:47, Petri Latvala wrote:
> On Mon, Dec 13, 2021 at 03:29:04PM -0800, John.C.Harrison@Intel.com wrote:
>> From: John Harrison <John.C.Harrison@Intel.com>
>>
>> Added descriptions of the various sub-tests and the test as a whole.
>>
>> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
>> ---
>>   tests/i915/i915_hangman.c | 11 +++++++++--
>>   1 file changed, 9 insertions(+), 2 deletions(-)
>>
>> diff --git a/tests/i915/i915_hangman.c b/tests/i915/i915_hangman.c
>> index 4c18c22db..025bb8713 100644
>> --- a/tests/i915/i915_hangman.c
>> +++ b/tests/i915/i915_hangman.c
>> @@ -46,6 +46,8 @@
>>   static int device = -1;
>>   static int sysfs = -1;
>>   
>> +IGT_TEST_DESCRIPTION("Tests for hang detection and recovery");
>> +
>>   static bool has_error_state(int dir)
>>   {
>>   	bool result;
>> @@ -315,9 +317,9 @@ static void hangcheck_unterminated(void)
>>   
>>   	gem_execbuf(device, &execbuf);
>>   	if (gem_wait(device, handle, &timeout_ns) != 0) {
>> -		/* need to manually trigger an hang to clean before failing */
>> +		/* need to manually trigger a hang to clean before failing */
>>   		igt_force_gpu_reset(device);
>> -		igt_assert_f(0, "unterminated batch did not trigger an hang!");
>> +		igt_assert_f(0, "unterminated batch did not trigger a hang!");
> Ouch, this is a bug that could use a drive-by fix in this same commit:
> Add a newline after that text.
>
> With that,
> Reviewed-by: Petri Latvala <petri.latvala@intel.com>
Well spotted. Will add that in.

Thanks,
John.

>
>>   	}
>>   }
>>   
>> @@ -341,9 +343,11 @@ igt_main
>>   		igt_require(has_error_state(sysfs));
>>   	}
>>   
>> +	igt_describe("Basic error capture");
>>   	igt_subtest("error-state-basic")
>>   		test_error_state_basic();
>>   
>> +	igt_describe("Per engine error capture");
>>   	igt_subtest_with_dynamic("error-state-capture") {
>>   		for_each_ctx_engine(device, ctx, e) {
>>   			igt_dynamic_f("%s", e->name)
>> @@ -351,6 +355,7 @@ igt_main
>>   		}
>>   	}
>>   
>> +	igt_describe("Per engine hang recovery (spin)");
>>   	igt_subtest_with_dynamic("engine-hang") {
>>                   int has_gpu_reset = 0;
>>   		struct drm_i915_getparam gp = {
>> @@ -369,6 +374,7 @@ igt_main
>>   		}
>>   	}
>>   
>> +	igt_describe("Per engine hang recovery (invalid CS)");
>>   	igt_subtest_with_dynamic("engine-error") {
>>   		int has_gpu_reset = 0;
>>   		struct drm_i915_getparam gp = {
>> @@ -386,6 +392,7 @@ igt_main
>>   		}
>>   	}
>>   
>> +	igt_describe("Check that executing unintialised memory causes a hang");
>>   	igt_subtest("hangcheck-unterminated")
>>   		hangcheck_unterminated();
>>   
>> -- 
>> 2.25.1
>>

