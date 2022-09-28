Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B7FE65ED466
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Sep 2022 07:57:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B773C10E264;
	Wed, 28 Sep 2022 05:57:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90CE310E264
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Sep 2022 05:57:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664344659; x=1695880659;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=W5YuDixYVPIvphcbg8UIIzXsSSHUUrK4DRTt8mgSxks=;
 b=D7UtBA1H5kvKViWDmUYtBbUUBoXeznxlB2DVF/PbHHpBJQWXWNSugYFi
 kM+xF0h2sMLhcu8C/RWvTITt51mXRW9eGc4BHK5A1Li65gbPsu894SYNb
 Irozg2wbZedQssa4VVM/K3hpXH+fr2rQ8ssNkcbZ5zhqUAwraL6eTNb/K
 4QjcNmpKQc1SbLDN1zHW0oFChrXxtKpdUe96pCzyzUtxQU9vbPLNL+WAM
 /Ugwaolqbva6v3+zbSBDqm+fYfxOD470QlElL3pvZ+YdfVpQJKZHAsOf4
 X+5HSiwgIz0OGFPiMjC/KxbXDP9LU9vS/ugOsU1NeQ6fMVWGHWEcTt8Np Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="363353156"
X-IronPort-AV: E=Sophos;i="5.93,351,1654585200"; d="scan'208";a="363353156"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 22:57:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="621794046"
X-IronPort-AV: E=Sophos;i="5.93,351,1654585200"; d="scan'208";a="621794046"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP; 27 Sep 2022 22:57:29 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 27 Sep 2022 22:57:29 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 27 Sep 2022 22:57:29 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 27 Sep 2022 22:57:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j+wzo897Q0MsuFMJa9LzqU4R02bdkeLFYZXwhgLXshAjWlp+8stCMJitJ3xopJFbQH1MvyYF/9UyRieKiAfXiIJLqfGwRiyWTAaoB04S0C7VvtMgKEDYiRHK+QUf225HHZMouZHweiCVCQTXEV5uw8sa9nPwzxf61dYkf8lOeTpuIDdhk6L6P2k9TU0fLuKNfnmUxuPZvoRZFn8moribqAxIvgdCvMLF87jh2b6FU9bX2pxxwl+TIg03q250WjWXeZe5do5MBlCil3vZhS8+Pd4Fy2gUvOZdDuOd9Y2a7kpQNSZJEQBuZPefudYS79TxWKtQhEC99osVNJbIonATLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PmVenIHToifacfprQIZAjvCLeZHbjEFK0k/8q1cI/+w=;
 b=mlXJ/OztK7EDNz+rxr4J9hObTx/FbeFksjujGyG/4ECRDkohx0kDJPjS+fMTeUoLk35VRGUD5A2jAILsfnCvFcK5JncPUGW8aJOp+UJ29xCGphO+JVpyvoM0/pmK9FIOBTJG8Ukt01PRI3JDVBKo4wWDL7FgQeLSeEEex7r2qM4MsZaQIQ0a8AjTvyNvdHJK2sedprE1iKG76ltNmg5q7ATxOlBxIEbSqUHRcZXmrqRbkZSGxfBtnYKOitlR2BnkbfqfhF3lCpRWVwi9UHutjIKCLOYYfVSXmywwL2vt91U/iBycIYg/ZXHWGWOO9CpIbSndO/zeIxCmyVsz9a7z1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SA1PR11MB6992.namprd11.prod.outlook.com (2603:10b6:806:2b6::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.17; Wed, 28 Sep
 2022 05:57:27 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::c7a5:baef:b2be:1516]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::c7a5:baef:b2be:1516%6]) with mapi id 15.20.5676.017; Wed, 28 Sep 2022
 05:57:27 +0000
Message-ID: <68a95796-9e7f-c919-9d5c-6c418f088334@intel.com>
Date: Wed, 28 Sep 2022 11:27:17 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.13.1
Content-Language: en-US
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>, "Belgaumkar, Vinay"
 <vinay.belgaumkar@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
References: <20220923110043.789178-1-riana.tauro@intel.com>
 <20220923110043.789178-4-riana.tauro@intel.com>
 <52445825-138d-f2f8-25d9-c13ff25dee12@intel.com>
 <CY5PR11MB6211F84E31B356A627ABBE6795559@CY5PR11MB6211.namprd11.prod.outlook.com>
From: "Tauro, Riana" <riana.tauro@intel.com>
In-Reply-To: <CY5PR11MB6211F84E31B356A627ABBE6795559@CY5PR11MB6211.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN0PR01CA0036.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:4e::11) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SA1PR11MB6992:EE_
X-MS-Office365-Filtering-Correlation-Id: b879b4a6-4ffd-4327-508e-08daa1165275
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GyX4ldhgDNOmPCs1nLI6RCQc1R3nEBqZRfPGPuxwS0nvMBHULvo3Wqf6yQQfldj+rcWF946pwJ5Zu7Jf/szYF8FG4PfSsgWNEjj8lZ+Zbvo2Cotb6S8DJfp4nQpIVwXTojVhP1OUakKSW9HN8/qDUfO+l1q9mvKSCC972RH5aZVeBMup0/RUgrojolKGbZHvsBOh9EzJpa9FkkmCnflyFoxSiyx8JmHYtUblZkMkMZ4v68tf0UecAQqaopycSHmi9Y0uvSrZdlHc3PW0ct0dBGdS6OEMQLzQV+Zy4GDsCl/LDV+jep6LgjwXBhAZFnAHMlBC01uZX2UaVo2CRxXozOPXPXgeeFL1TUIz1yl58gf7U9N1w9ZLA6qzbgLdL5OqJevYIPJ//Aekh+4amYVMcJdI48WqnL3RSorHHCLy4P/XjEyif3o2bzjadZ6/WadBqzDbix5gjBjcj/RMQ1DTLS46i9Z8eIoDZL3RxnXSXMJ6O1YO3L9/CyddQBnj90FhEaKNZWCab/DyTjW1w24kEMaOmrp+eKNrZsNYSN1wqKkNOFBgXqjyNoEYSPASmc292mmlfvIZKAz+OljNs5DLTmK/a2lOhvb4Y51MKJGYef8TqLMOgxOND2dmG/IiKGcuqsE/6VnJAEV/jQdqN7we2fjPO2pdtKV1zTWsNcVWbeKUKXqPU9sOrXqGfLgKkbCi3QSwldg2RGewyYg91S9Lvb5f/W5/YOpARx0c3ARVVOC8A4RxpnznMHdS31YY7iMSWOOvJ2fHjoZxS95UfqKDxyKAwZFVwv7JkXke+epK5Cg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(39860400002)(366004)(376002)(346002)(136003)(451199015)(31686004)(26005)(6512007)(66476007)(2616005)(186003)(478600001)(36756003)(6506007)(38100700002)(82960400001)(316002)(2906002)(6486002)(83380400001)(53546011)(107886003)(6666004)(54906003)(110136005)(8936002)(5660300002)(41300700001)(66946007)(4326008)(8676002)(66556008)(31696002)(86362001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MXhER3RJeStTSUllQlNJVHB5TThBdXdQWkNiR0xvdDluM3ROdU5nN2lpeVg4?=
 =?utf-8?B?Mlp3RkNxZDYySHV1eUJ0Zk1hTHFDOC9MSkNKeWpZNEdqbjNZSTdtMkJMdE9S?=
 =?utf-8?B?N1RnTTQzb1ExdEJGOUROOUxVakJmMGtkRkhWREdBS2ttZlFIMVA0QWxXUUxZ?=
 =?utf-8?B?U3VDU1Y5b2dBaU9uQkJWRUNIKzJpNVBxdktXdGs0UEVPbitPTlJxSFlaM3Ri?=
 =?utf-8?B?aHRkaFJDV090RDREMFY3N1c4VVhQUjlacVQwZWhYR0ZFai80SGtGQ3hnUkZh?=
 =?utf-8?B?eWwwWmEvTkQxQ3JsSit3T3FXR3JoR2R6cEFYd3JOOFEzSlhwYXNmdU1IakVP?=
 =?utf-8?B?SlJwbmdKN0h6WDlnZGRNZVp5eDZTZm9nZlJHcXpQTDFpN1BsME5IYnU5ZDJI?=
 =?utf-8?B?blVhMytyandJUjBXSnVRTXJ4cjF4Mk05MWdiZ0dKaTdITGVrMHcreWoyZnlj?=
 =?utf-8?B?SXFKYm0wdEJkcktuUUhDckdVemU0RXFGMVJLM25ZQW0rT0tyWDFuTWM4SmZJ?=
 =?utf-8?B?K3lPbEg5MWwvK0V5VmpWeDJINzdKTU96a0FGN2xBTEZmb0NOZi9ONWR3MFp4?=
 =?utf-8?B?UVh0UlZxTDRwYkhUSG1oWGhXQmRGUjcvV0JJVFppdWRCbDBHd092d3huMmZk?=
 =?utf-8?B?dXdiQ0x4Um00KzNPcHJLa3crTnJOa1BNY050T3RWNTQ0OHFDcW1lZFdOK3ho?=
 =?utf-8?B?RmZoT3JQK2oxV2xDaEFvK25DdExPWXhGNnUwZm9RRTl2ZU9HYmgwOXJmczQ1?=
 =?utf-8?B?MEhFNXY4cUpHZjRKaUUyQlc0QnBEQjhCRmlQbVV3YnJMcWxpSVZmYkdIODZW?=
 =?utf-8?B?am4rR0pxb3N0SlNFeHlCbnoyeXA4M2ZiTnRwNXlCOEo0UjdEc1lMTjR5UW53?=
 =?utf-8?B?c3BPTEZIa2pLYXl5YVRyb0R2Z29EQlNIMXFOc1E5dHd0cTEwa0h1cytmZU9D?=
 =?utf-8?B?bUNOYlI4OTNMR3RIcmNNeEErZkVIcWdlWXBySThZM0dkUWUxQkNEeHRyQm9K?=
 =?utf-8?B?bDNJc2lJdHVzaE1YMEo4M242c1JYL2R1UUdCd0hxM1FJL0kwNllLcTZaM3d1?=
 =?utf-8?B?TnlJKzV6QjJBbk52bnFCSnROTXhxMmVYcldCTnQvVGVnTGV5N24vYTh6SjJt?=
 =?utf-8?B?MHJjL25JdEswU2I1NENBZWpoZzRFV0FZcUlrN2F1TjBTbHJOQTdHRURNd0xI?=
 =?utf-8?B?VGp2SjFFMVQxaGdzSHQzNnVYUjhYVFhuZ0pldW01SWJ2RWtjWVh5VkQwMCtB?=
 =?utf-8?B?SDNqQWljd2dsdWI4NFFCVXJUMUpHdE9DdVhUMVlQZTdiNmVrQTk0RC9qMEhW?=
 =?utf-8?B?QUdZVThwNm9lSjVEdnlJMlF4WXhqcGxPMURXQ1h2Tnlkd2lpQUlneDdkRGh0?=
 =?utf-8?B?eHN5Y2l5cDhScGlOYXBES3JNY3l3RGgxQmh1ckg0YnhvVXZNbUgxU1g4Z0pa?=
 =?utf-8?B?VlhuZFN2c2RsLzZ5czNqQTJRK3RqSW9TQ1BvZ0swbTZsMlg2cmZ0TVg0VTJB?=
 =?utf-8?B?ZWcyWHYwNDdFQ2Y1Zld0cDYwREF5K3gvczNkbkNnQkUveHNwM1gyUkJ3emdB?=
 =?utf-8?B?YXlMNlBNTDRCbm8zQWpOZXF2cFh2Mm9uenFpelIzYTVGZXdNVGlaTDNNWEdM?=
 =?utf-8?B?SzlUNUllZnRWQXZSTW9lekp4TDJXWVFUVDh3VlBJYTZhaUpMbUJ6SVBKN2I1?=
 =?utf-8?B?YnYreTV1UmJxWmtMR2JQV0RTNFM4a0RqWDJ5TzB2K0syVFJndXlJRG5GUDRr?=
 =?utf-8?B?OEVqSTEyeGpRMkV4RkUzTzNiTE1FNDJFZlZlMDN3T0pqUHdxNkRCdzNIZFdV?=
 =?utf-8?B?S1BSMEhlQlZjSGpvTzRLL2JZaFY5L0VPbVBwQmU5blVjOGJlekZ6ck1mQ1Aw?=
 =?utf-8?B?SHZQRmtsWHZ4dCs3US95MlViakpnQkxPekZkMlJqaS9XcnB5WE5sNVB1LytL?=
 =?utf-8?B?U25ZNS9tcFU1Y281ZjhzQU5helNFaDZaRzZoRzU5M1UwZ0RWcmxDODlpV3ZP?=
 =?utf-8?B?VUtWVGhOY1NmSk5iRE9oL1lkdVN4Y1UvdW1YWFBSUVdiNmgxUzdERGxRNVhQ?=
 =?utf-8?B?WUdaOFdwZlZtSVo4ekNxYmtUcnFzT0M3N2o4QzhacGFCZllJZU44RlhKRWZp?=
 =?utf-8?B?c29KdVlCZGVGWnkwdEc5R05hSm5acXUrM3Q4dFMxRUVEY1NlRUw1K3orZTc0?=
 =?utf-8?B?UEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b879b4a6-4ffd-4327-508e-08daa1165275
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Sep 2022 05:57:27.4712 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5pBtNcBjRVMBMGtNwE8mbi36adYBlF3O5YzmryEGil5Dqo9Umx+6HyfYOoEdsirUAJXCMo4StisS4bA3xrsyOA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6992
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/guc/slpc: Add SLPC selftest
 live_slpc_power
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



On 9/27/2022 4:42 PM, Gupta, Anshuman wrote:
> 
> 
>> -----Original Message-----
>> From: Belgaumkar, Vinay <vinay.belgaumkar@intel.com>
>> Sent: Monday, September 26, 2022 9:35 PM
>> To: Tauro, Riana <riana.tauro@intel.com>; intel-gfx@lists.freedesktop.org
>> Cc: Gupta, Anshuman <anshuman.gupta@intel.com>; Dixit, Ashutosh
>> <ashutosh.dixit@intel.com>
>> Subject: Re: [PATCH 3/3] drm/i915/guc/slpc: Add SLPC selftest live_slpc_power
>>
>>
>> On 9/23/2022 4:00 AM, Riana Tauro wrote:
>>> A fundamental assumption is that at lower frequencies, not only do we
>>> run slower, but we save power compared to higher frequencies.
>>> live_slpc_power checks if running at low frequency saves power
>>>
>>> v2: re-use code to measure power
>>>       fixed cosmetic review comments (Vinay)
>>>
>>> Signed-off-by: Riana Tauro <riana.tauro@intel.com>
>>
>> LGTM,
>>
>> Reviewed-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
>>
>>> ---
>>>    drivers/gpu/drm/i915/gt/selftest_slpc.c | 127 ++++++++++++++++++++++--
>>>    1 file changed, 118 insertions(+), 9 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/selftest_slpc.c
>>> b/drivers/gpu/drm/i915/gt/selftest_slpc.c
>>> index 928f74718881..4c6e9257e593 100644
>>> --- a/drivers/gpu/drm/i915/gt/selftest_slpc.c
>>> +++ b/drivers/gpu/drm/i915/gt/selftest_slpc.c
>>> @@ -11,7 +11,8 @@
>>>    enum test_type {
>>>    	VARY_MIN,
>>>    	VARY_MAX,
>>> -	MAX_GRANTED
>>> +	MAX_GRANTED,
>>> +	SLPC_POWER,
>>>    };
>>>
>>>    static int slpc_set_min_freq(struct intel_guc_slpc *slpc, u32 freq)
>>> @@ -41,6 +42,39 @@ static int slpc_set_max_freq(struct intel_guc_slpc *slpc,
>> u32 freq)
>>>    	return ret;
>>>    }
>>>
>>> +static int slpc_set_freq(struct intel_gt *gt, u32 freq) {
>>> +	int err;
>>> +	struct intel_guc_slpc *slpc = &gt->uc.guc.slpc;
>>> +
>>> +	err = slpc_set_max_freq(slpc, freq);
>>> +	if (err) {
>>> +		pr_err("Unable to update max freq");
>>> +		return err;
>>> +	}
>>> +
>>> +	err = slpc_set_min_freq(slpc, freq);
>>> +	if (err) {
>>> +		pr_err("Unable to update min freq");
>>> +		return err;
>>> +	}
>>> +
>>> +	return err;
>>> +}
>>> +
>>> +static u64 measure_power_at_freq(struct intel_gt *gt, int *freq, u64
>>> +*power) {
>>> +	int err = 0;
>>> +
>>> +	err = slpc_set_freq(gt, *freq);
>>> +	if (err)
>>> +		return err;
>>> +	*freq = intel_rps_read_actual_frequency(&gt->rps);
>>> +	*power = measure_power(&gt->rps, freq);
>>> +
>>> +	return err;
>>> +}
>>> +
>>>    static int vary_max_freq(struct intel_guc_slpc *slpc, struct intel_rps *rps,
>>>    			 u32 *max_act_freq)
>>>    {
>>> @@ -113,6 +147,58 @@ static int vary_min_freq(struct intel_guc_slpc *slpc,
>> struct intel_rps *rps,
>>>    	return err;
>>>    }
>>>
>>> +static int slpc_power(struct intel_gt *gt, struct intel_engine_cs
>>> +*engine) {
>>> +	struct intel_guc_slpc *slpc = &gt->uc.guc.slpc;
>>> +	struct {
>>> +		u64 power;
>>> +		int freq;
>>> +	} min, max;
>>> +	int err = 0;
>>> +
>>> +	/*
>>> +	 * Our fundamental assumption is that running at lower frequency
>>> +	 * actually saves power. Let's see if our RAPL measurement supports
>>> +	 * that theory.
>>> +	 */
>>> +	if (!librapl_supported(gt->i915))
>>> +		return 0;
> 	This seems a wrong abstraction, this should a generic call should check both hwmon registration for dgfx and rapl for igfx.
> 	Br,
> 	Anshuman Gupta.
The current librapl_supported has only rapl related changes. The hwmon 
energy is yet to be added.

Will change the name with the hwmon patch

Thanks
Riana Tauro

>>> +
>>> +	min.freq = slpc->min_freq;
>>> +	err = measure_power_at_freq(gt, &min.freq, &min.power);
>>> +
>>> +	if (err)
>>> +		return err;
>>> +
>>> +	max.freq = slpc->rp0_freq;
>>> +	err = measure_power_at_freq(gt, &max.freq, &max.power);
>>> +
>>> +	if (err)
>>> +		return err;
>>> +
>>> +	pr_info("%s: min:%llumW @ %uMHz, max:%llumW @ %uMHz\n",
>>> +		engine->name,
>>> +		min.power, min.freq,
>>> +		max.power, max.freq);
>>> +
>>> +	if (10 * min.freq >= 9 * max.freq) {
>>> +		pr_notice("Could not control frequency, ran at [%uMHz,
>> %uMhz]\n",
>>> +			  min.freq, max.freq);
>>> +	}
>>> +
>>> +	if (11 * min.power > 10 * max.power) {
>>> +		pr_err("%s: did not conserve power when setting lower
>> frequency!\n",
>>> +		       engine->name);
>>> +		err = -EINVAL;
>>> +	}
>>> +
>>> +	/* Restore min/max frequencies */
>>> +	slpc_set_max_freq(slpc, slpc->rp0_freq);
>>> +	slpc_set_min_freq(slpc, slpc->min_freq);
>>> +
>>> +	return err;
>>> +}
>>> +
>>>    static int max_granted_freq(struct intel_guc_slpc *slpc, struct intel_rps *rps,
>> u32 *max_act_freq)
>>>    {
>>>    	struct intel_gt *gt = rps_to_gt(rps); @@ -233,17 +319,23 @@ static
>>> int run_test(struct intel_gt *gt, int test_type)
>>>
>>>    			err = max_granted_freq(slpc, rps, &max_act_freq);
>>>    			break;
>>> +
>>> +		case SLPC_POWER:
>>> +			err = slpc_power(gt, engine);
>>> +			break;
>>>    		}
>>>
>>> -		pr_info("Max actual frequency for %s was %d\n",
>>> -			engine->name, max_act_freq);
>>> +		if (test_type != SLPC_POWER) {
>>> +			pr_info("Max actual frequency for %s was %d\n",
>>> +				engine->name, max_act_freq);
>>>
>>> -		/* Actual frequency should rise above min */
>>> -		if (max_act_freq <= slpc_min_freq) {
>>> -			pr_err("Actual freq did not rise above min\n");
>>> -			pr_err("Perf Limit Reasons: 0x%x\n",
>>> -			       intel_uncore_read(gt->uncore,
>> GT0_PERF_LIMIT_REASONS));
>>> -			err = -EINVAL;
>>> +			/* Actual frequency should rise above min */
>>> +			if (max_act_freq <= slpc_min_freq) {
>>> +				pr_err("Actual freq did not rise above min\n");
>>> +				pr_err("Perf Limit Reasons: 0x%x\n",
>>> +				       intel_uncore_read(gt->uncore,
>> GT0_PERF_LIMIT_REASONS));
>>> +				err = -EINVAL;
>>> +			}
>>>    		}
>>>
>>>    		igt_spinner_end(&spin);
>>> @@ -316,12 +408,29 @@ static int live_slpc_max_granted(void *arg)
>>>    	return ret;
>>>    }
>>>
>>> +static int live_slpc_power(void *arg) {
>>> +	struct drm_i915_private *i915 = arg;
>>> +	struct intel_gt *gt;
>>> +	unsigned int i;
>>> +	int ret;
>>> +
>>> +	for_each_gt(gt, i915, i) {
>>> +		ret = run_test(gt, SLPC_POWER);
>>> +		if (ret)
>>> +			return ret;
>>> +	}
>>> +
>>> +	return ret;
>>> +}
>>> +
>>>    int intel_slpc_live_selftests(struct drm_i915_private *i915)
>>>    {
>>>    	static const struct i915_subtest tests[] = {
>>>    		SUBTEST(live_slpc_vary_max),
>>>    		SUBTEST(live_slpc_vary_min),
>>>    		SUBTEST(live_slpc_max_granted),
>>> +		SUBTEST(live_slpc_power),
>>>    	};
>>>
>>>    	struct intel_gt *gt;
