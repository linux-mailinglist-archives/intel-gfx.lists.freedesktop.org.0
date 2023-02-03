Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A169D68A06C
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Feb 2023 18:35:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 779A610E05C;
	Fri,  3 Feb 2023 17:35:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2426210E05C
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Feb 2023 17:35:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675445742; x=1706981742;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=wvQgIcc8iEdf5BjL0d7Anvmb4mZh3pka7Sh8deOMsZ0=;
 b=K4hZnWt1Fe1IGxxLI4WfLhEKq8rarVcwgp4SXpKNII0Q6mgCDhForIhn
 1m7vxYA44eeoBCYbDEBkgTnAwtEqjb6naWS9tqEUt6QqY1NBau0m94jD6
 p+/orKbGRcPOxUPAXyZ+G2RiUtn1RIZ40hn2R/GRXlBWKyE/g53v0mh7j
 WpnqLve9JCldqgSjU7YKONOIyl4t3W9goA2IXNkyOxcE1ShFbACbfsopo
 fleat56flXwJ5ULQJCxClU5TQa9t37kcNepUs2r4mQm/WlOoVy7RvwkWi
 vmidRxs1DBXu5ycjms+72E9xO+v7iRVz4C4ve1bAutXllTXgEkQ4x/nMF Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10610"; a="316803258"
X-IronPort-AV: E=Sophos;i="5.97,271,1669104000"; d="scan'208";a="316803258"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2023 09:35:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10610"; a="615783326"
X-IronPort-AV: E=Sophos;i="5.97,271,1669104000"; d="scan'208";a="615783326"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP; 03 Feb 2023 09:35:40 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 3 Feb 2023 09:35:40 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 3 Feb 2023 09:35:40 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 3 Feb 2023 09:35:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TV8r1aRxzUfk5i3sRCjEO3ZZytgwklbyCwjKDluyo7dOummRbVmDARjlyWG0f13Jh7xWCEySqNVSMr5UrYrzMwg3IAuO/bK+DQDzAwAb+ob5yyC345q246H8DDoz84GESsMF+Q23n8iuaR6jYxT8Iopp6iY6X39LchoYdmBxBQC3+pa/hW3Hf5X5pyGie37LA5pUXoGPaJGozP6yAZdJfG4MXrnN/ooX9CipiTIvhj1mnjkl9u+vWMGrRRSLxfJW7DxaDLW3NCy4mvGC+QAsDgG2UO8kZgftLUGl10meb+ZB+O/ZdJ1y3TKduE4mU6piPmWhGj1hiappQdSOLF8o0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UGXFOsDHE5OUuSYOmwB0fOM8R2wpBaBTOPKpXVZxqm8=;
 b=LrRrw8fWuNKCTjrE+q1TXZZNQ3dGPcbhZD41z0rNMsmUVQ3cIDa9DeqUwjhTWgAekRGFpV3uHOcm0+76lzuEFC/dByTkDTlCk05ayqVZvp9d45QGFN2FmC+S/8R9fJ2M7nxx5TuxPtTLBblQDFchiXW9qa6AvLYTYeH/R0XkSNugIY0dO51nFRKZLiHZ2Vob9YPGQ43Ld77WcMHQ8z+YBRg8rChNTcB1S9ZJn7uPCLSySTiFmj43e+FjDAhJsHPhD+zMbTJe6CoXp7BjYcuFY3+7StzargDvai+RNZj0shLstvrh0WUkEul/ZzwkqINEwP23O4p5RGW3DlVyoKSC8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by CO6PR11MB5601.namprd11.prod.outlook.com (2603:10b6:303:13d::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.27; Fri, 3 Feb
 2023 17:35:38 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::e1a3:6ad3:9f43:5f25]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::e1a3:6ad3:9f43:5f25%4]) with mapi id 15.20.6064.027; Fri, 3 Feb 2023
 17:35:37 +0000
Message-ID: <c9fc1ce1-15a0-0849-3c93-0c98a21220e3@intel.com>
Date: Fri, 3 Feb 2023 09:35:35 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.6.1
Content-Language: en-GB
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20230203001143.3323433-1-John.C.Harrison@Intel.com>
 <20230203001143.3323433-2-John.C.Harrison@Intel.com>
 <8115b355-53a1-6337-3984-ec638ebda674@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <8115b355-53a1-6337-3984-ec638ebda674@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0074.namprd03.prod.outlook.com
 (2603:10b6:a03:331::19) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|CO6PR11MB5601:EE_
X-MS-Office365-Filtering-Correlation-Id: d347b386-d7ed-4cf4-1e66-08db060d100f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lvpYscx6XA52TzUYbFAO7ruIFEHxUjHhQjmQgqPTlrsSSl7eQTNFeVjkpgRjAGUBxo0wfmCkvSrNwD26PYa7n10euSaHrEiRQ6KiX6Pnh1PGgpkedBmzXGMBTqEf4AFHOzGtDOjv/FYzYCcN4d1Jo9+jEYr+qnZcLc/mGaNbkIS7zkT/YDEGpSx1vqTD+WtwkaxVE0xsha/oYS1SCht6eBnFCDNCrP+7n+zWLcpffCwYJeGUZoFNpRqeZWji4dzxnNK0G3qlNFwUxlFYV+QyUCIpvB30mv3LC26bWHXXMlNwwxl7cLf9hxce9igTRRhoNZbwVNgqhQuPAmKrJDmMfMPOhkUZYerZP/ftZVFs1755UzKACWMo3kQ8XPcVpEQTQ8b9NTCxcTlvhCzo3WT8XwWcgIjLq6tGHlxZE+NNs1EmafyE9WTYEmFLwQLCcDBoP/uNdgkooCT5eJw3ffR64AQzFGtbvwkSu5tBTK6AHLC1nZ0jNQQeb5s+UCHjUrzM79jPIlJs+g/WATIXB6JmCjw6Oc2WMY2Jex19gvIglOra8BujQX2lkNIvA4pIEkQWs0vjcKcTNY1KHNPD2rW6yfSCoRHJRgaSZg1QM1Z5bQxM+eD4/vTsLdKosXwsOTzomkOLgWGCE0JBQ7FIrEHZUa5oiUNkLueUSwGTtPj5sWK87wIE9yijeafUy9Iojkd9S0qG4FRR3gh4jvX09Ap3ruru4xb+JLJDfK6cVrfo854=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(396003)(346002)(39860400002)(136003)(366004)(451199018)(38100700002)(5660300002)(66556008)(15650500001)(8676002)(186003)(66476007)(31696002)(86362001)(26005)(36756003)(66946007)(41300700001)(6512007)(6506007)(53546011)(8936002)(316002)(82960400001)(478600001)(2616005)(66899018)(31686004)(2906002)(83380400001)(6486002)(30864003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M05taGhjOHF6K0RmRXFkZERuUFRTOTd4ZDQ4M213SlNpZnZ2NzF0SXQyUTVL?=
 =?utf-8?B?SzhrOU5VU2JTMWRVRVFxUU8rb05JRWphakp2KzJtWS9Tc3JjVlUxYnkyQUs5?=
 =?utf-8?B?Z2llSlllZG80UlhaNjYwRjU0ZjhUNEM2LzRPYkNQWFd1U05kamh1Nk9qS1dZ?=
 =?utf-8?B?UUpMSGpSd1pza2ljZUNDbTNSOWUvQS9VbXB2T25KeStaaHJlWnNreWxRNFYv?=
 =?utf-8?B?UjVUTkRvNTBMeXhybDdwQlN6d2N4WG5BYTZ4dml2bERQRitIT0kwenNWdnlF?=
 =?utf-8?B?UUJ4bFNaSTRqUThXRDh6emoyVlFuU0R0eFVES3RiN0tKQzNkYzloZFdWLzdX?=
 =?utf-8?B?WFptNlhtbU1rOEdQV3o2Q2RWajdRVk95RXBEQ0xIR3FldGN3ZGQrdTBPdXJ3?=
 =?utf-8?B?N3lvdTU2ekJyUGNUUEwzV085N0pTYkQwTEJyOHlrQXorcllwTHFZS243VzJu?=
 =?utf-8?B?UGRSUU1ZVUNQRzI0Z0dCaFY4RVRjVEVROVFSMnFubHMyK09La05zeDA4T3hC?=
 =?utf-8?B?bTlNaHZkOTVqemRnM3p5eXdmTmhHTlhaVjBrd3lXRGo4bURKdnhMYTNibmF4?=
 =?utf-8?B?L2JXcjJmOHJmRkFlTS91dlNVQ1hneDFnektFaFZsVEJxOFhIZzkwOTR2aUdZ?=
 =?utf-8?B?OHZBUmJGK2JoL2NLMDNlZzRBMVZ3RE5hR0FZNHowOHZDQU5tOGxyUGxDVFdQ?=
 =?utf-8?B?THU2TXA5VWhNQnFoOFIweXVGQmpGTXBUNG5KREdvZ2poWDFQdlVXMWprenYy?=
 =?utf-8?B?azRZSm5xWEREbnVFY0lUUW8zTDRxaU5Dalo5TU8ya1AzemUyRko4cXZ4YjMy?=
 =?utf-8?B?MVFWOXpnZFhlRTRXZURydktQZ1k2aWR5cU5xOVc5aHY0UkNrQ0FqVklYeE9z?=
 =?utf-8?B?dGFLblNxc3hHUkI5ZWh1aWtiVDErN255b1V5Sm1RRG42aDhXeng5UVdkYjFr?=
 =?utf-8?B?ZFhMWE5KSktaS3cvcUE5dzhXZVNRc0k1TkR1QkhmNFcrVFFXZ2RzTGlsOUpV?=
 =?utf-8?B?WTBXRjlIZEdZVzZZQUFpWExGaW5iMkFNYUJ4aGtUV3hhQTV2aGlFVzlhWXU3?=
 =?utf-8?B?bzd3M0lBRmtvbC8yOXJrNjV1VmNWcCtNaStoMXBmcEhFWkVkdVNsV2oyYWVy?=
 =?utf-8?B?SXQ2Mmo2UWJsMTBzOERiZUNETU1PVWV3dzJNdmVtMm0wV0YvU0tFSEk5c2Ny?=
 =?utf-8?B?d05ZSjNTS3pxcEgrdko4aXBBM2I2Mm52aUcxYzdYYTJ1UGtRRDJ4OXZMbjN6?=
 =?utf-8?B?VFFTdTY5blNQYUxYS29MOHJseksxVUJreXMzSXhNMVJYajRQQnd3UzNCRXlt?=
 =?utf-8?B?V2ttSytvS2hPZ29nVHZWaW9rVkRlVGNSbGxoR0RvMTB4Q000VzNpUytuR1RW?=
 =?utf-8?B?aXhsUzFjMlJYS2M1TGg5bjJTNHd0d1ZEam1tejVDODROK1RBQ1NvWkd2anhE?=
 =?utf-8?B?bGJtaExFbkY2clRHTGpWbitNRGoybmI4RnNZZ21XeU1PckNWSnVjWXR1U2Yx?=
 =?utf-8?B?V0VXUGJzc3BkaS9jdUdSL0NWSzhoc3ZxZnNONmYvTFFUdG11bUE4cVNJcEhy?=
 =?utf-8?B?ZVdQTmRnbjJlY0x3N1dyc0QyYjlMMGFJbXhJSzBGNUJhVmQ4ak13bHc2VVFv?=
 =?utf-8?B?VVc3T3NUbmd5eW56bEZGeDV5T3RsWFhxQVQ3SkVFQmJMWEF0M3FVS2xOR3k4?=
 =?utf-8?B?a0Y3N1V0OHE3UTRkUnNkdHZwbTVIWksvRW9hV0UwU0RHVlI0QzFVRUpuQWcw?=
 =?utf-8?B?TXRCNkMvdGdyS2RFL1hFeFlybGlENzA4K2FheWxEclc4UUxtaUVrOTdpWDRp?=
 =?utf-8?B?b0lXOWZLMmZ3ZUZPSDZmVWlzZDhHSGhtQVhOTlp2VmVuOU5nc0ZDNENadUhz?=
 =?utf-8?B?Z0FXbW1Ib3ZocUFZVVlQbFNPZHFaamV0cXRsMzZlQTRDbEJMQ1V5WXozSEw3?=
 =?utf-8?B?QTljWE41UGNpYW56R1V6b05xRS9HY0oxZDMvRE5GamZSOU5nK0lDc2tiT3E4?=
 =?utf-8?B?YXRIVlAydHZaaUxKQW5wMEkwb0lycks4bzFaNzNsNm5OaWpERFU3ZmNGSHJy?=
 =?utf-8?B?T3hqRGxmdmZBbFBvRWlBY2p3UHFNaHNNV0svTjVwaS9XVlNqRmtGVHFFQmlK?=
 =?utf-8?B?VjBNaHMxbkM4TVFjZ0lLOFpOaFVuZXdLZTBDcU51WGpKUUhNOWZJbFo3SldB?=
 =?utf-8?B?cEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d347b386-d7ed-4cf4-1e66-08db060d100f
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2023 17:35:37.8699 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qnaJSmq2IUsJwhWk9dQybHQ2dk5bhDnjBCn/0doCilQK+nRg/8BxgUaLvy4oIAUxfas2ipKQvZi2uSBzIcIshIpslNHorvSNMz3EDDYDG/4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5601
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915/guc: More debug print updates
 - UC firmware
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

On 2/3/2023 01:39, Michal Wajdeczko wrote:
> On 03.02.2023 01:11, John.C.Harrison@Intel.com wrote:
>> From: John Harrison <John.C.Harrison@Intel.com>
>>
>> Update a bunch more debug prints to use the new GT based scheme.
>>
>> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/uc/intel_uc.c    |  42 ++++----
>>   drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c | 116 +++++++++++------------
>>   2 files changed, 73 insertions(+), 85 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
>> index de7f987cf6111..6648691bd6450 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
>> @@ -83,15 +83,15 @@ static int __intel_uc_reset_hw(struct intel_uc *uc)
>>   
>>   static void __confirm_options(struct intel_uc *uc)
>>   {
>> -	struct drm_i915_private *i915 = uc_to_gt(uc)->i915;
>> +	struct intel_gt *gt = uc_to_gt(uc);
>> +	struct drm_i915_private *i915 = gt->i915;
>>   
>> -	drm_dbg(&i915->drm,
>> -		"enable_guc=%d (guc:%s submission:%s huc:%s slpc:%s)\n",
>> -		i915->params.enable_guc,
>> -		str_yes_no(intel_uc_wants_guc(uc)),
>> -		str_yes_no(intel_uc_wants_guc_submission(uc)),
>> -		str_yes_no(intel_uc_wants_huc(uc)),
>> -		str_yes_no(intel_uc_wants_guc_slpc(uc)));
>> +	gt_dbg(gt, "enable_guc=%d (guc:%s submission:%s huc:%s slpc:%s)\n",
>> +	       i915->params.enable_guc,
>> +	       str_yes_no(intel_uc_wants_guc(uc)),
>> +	       str_yes_no(intel_uc_wants_guc_submission(uc)),
>> +	       str_yes_no(intel_uc_wants_huc(uc)),
>> +	       str_yes_no(intel_uc_wants_guc_slpc(uc)));
>>   
>>   	if (i915->params.enable_guc == 0) {
>>   		GEM_BUG_ON(intel_uc_wants_guc(uc));
>> @@ -102,26 +102,22 @@ static void __confirm_options(struct intel_uc *uc)
>>   	}
>>   
>>   	if (!intel_uc_supports_guc(uc))
>> -		drm_info(&i915->drm,
>> -			 "Incompatible option enable_guc=%d - %s\n",
>> -			 i915->params.enable_guc, "GuC is not supported!");
>> +		gt_info(gt,  "Incompatible option enable_guc=%d - %s\n",
>> +			i915->params.enable_guc, "GuC is not supported!");
>>   
>>   	if (i915->params.enable_guc & ENABLE_GUC_LOAD_HUC &&
>>   	    !intel_uc_supports_huc(uc))
>> -		drm_info(&i915->drm,
>> -			 "Incompatible option enable_guc=%d - %s\n",
>> -			 i915->params.enable_guc, "HuC is not supported!");
>> +		gt_info(gt, "Incompatible option enable_guc=%d - %s\n",
>> +			i915->params.enable_guc, "HuC is not supported!");
>>   
>>   	if (i915->params.enable_guc & ENABLE_GUC_SUBMISSION &&
>>   	    !intel_uc_supports_guc_submission(uc))
>> -		drm_info(&i915->drm,
>> -			 "Incompatible option enable_guc=%d - %s\n",
>> -			 i915->params.enable_guc, "GuC submission is N/A");
>> +		gt_info(gt, "Incompatible option enable_guc=%d - %s\n",
>> +			i915->params.enable_guc, "GuC submission is N/A");
>>   
>>   	if (i915->params.enable_guc & ~ENABLE_GUC_MASK)
>> -		drm_info(&i915->drm,
>> -			 "Incompatible option enable_guc=%d - %s\n",
>> -			 i915->params.enable_guc, "undocumented flag");
>> +		gt_info(gt, "Incompatible option enable_guc=%d - %s\n",
>> +			i915->params.enable_guc, "undocumented flag");
> all these above messages are about i915->params so IMHO using drm_info()
> is still more applicable than gt_info() ...
But they are explaining the path taken on a particular GT to reach the 
final decision about what to load or run. That could be important. E.g. 
on MTL render tile does not have HuC so the decisions will be different 
even though the modparams are the same.

>
>>   }
>>   
>>   void intel_uc_init_early(struct intel_uc *uc)
>> @@ -549,10 +545,8 @@ static int __uc_init_hw(struct intel_uc *uc)
>>   
>>   	intel_gsc_uc_load_start(&uc->gsc);
>>   
>> -	gt_info(gt, "GuC submission %s\n",
>> -		str_enabled_disabled(intel_uc_uses_guc_submission(uc)));
>> -	gt_info(gt, "GuC SLPC %s\n",
>> -		str_enabled_disabled(intel_uc_uses_guc_slpc(uc)));
>> +	guc_info(guc, "submission %s\n", str_enabled_disabled(intel_uc_uses_guc_submission(uc)));
>> +	guc_info(guc, "SLPC %s\n", str_enabled_disabled(intel_uc_uses_guc_slpc(uc)));
>>   
>>   	return 0;
>>   
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
>> index 65672ff826054..7d2558d53e972 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
>> @@ -11,6 +11,7 @@
>>   #include <drm/drm_print.h>
>>   
>>   #include "gem/i915_gem_lmem.h"
>> +#include "gt/intel_gt_print.h"
>>   #include "intel_uc_fw.h"
>>   #include "intel_uc_fw_abi.h"
>>   #include "i915_drv.h"
>> @@ -44,11 +45,10 @@ void intel_uc_fw_change_status(struct intel_uc_fw *uc_fw,
>>   			       enum intel_uc_fw_status status)
>>   {
>>   	uc_fw->__status =  status;
>> -	drm_dbg(&__uc_fw_to_gt(uc_fw)->i915->drm,
>> -		"%s firmware -> %s\n",
>> -		intel_uc_fw_type_repr(uc_fw->type),
>> -		status == INTEL_UC_FIRMWARE_SELECTED ?
>> -		uc_fw->file_selected.path : intel_uc_fw_status_repr(status));
>> +	gt_dbg(__uc_fw_to_gt(uc_fw), "%s firmware -> %s\n",
>> +	       intel_uc_fw_type_repr(uc_fw->type),
>> +	       status == INTEL_UC_FIRMWARE_SELECTED ?
>> +	       uc_fw->file_selected.path : intel_uc_fw_status_repr(status));
>>   }
>>   #endif
>>   
>> @@ -562,15 +562,14 @@ static int check_ccs_header(struct intel_gt *gt,
>>   			    const struct firmware *fw,
>>   			    struct intel_uc_fw *uc_fw)
>>   {
>> -	struct drm_i915_private *i915 = gt->i915;
>>   	struct uc_css_header *css;
>>   	size_t size;
>>   
>>   	/* Check the size of the blob before examining buffer contents */
>>   	if (unlikely(fw->size < sizeof(struct uc_css_header))) {
>> -		drm_warn(&i915->drm, "%s firmware %s: invalid size: %zu < %zu\n",
>> -			 intel_uc_fw_type_repr(uc_fw->type), uc_fw->file_selected.path,
>> -			 fw->size, sizeof(struct uc_css_header));
>> +		gt_warn(gt, "%s firmware %s: invalid size: %zu < %zu\n",
>> +			intel_uc_fw_type_repr(uc_fw->type), uc_fw->file_selected.path,
>> +			fw->size, sizeof(struct uc_css_header));
>>   		return -ENODATA;
>>   	}
>>   
>> @@ -580,10 +579,9 @@ static int check_ccs_header(struct intel_gt *gt,
>>   	size = (css->header_size_dw - css->key_size_dw - css->modulus_size_dw -
>>   		css->exponent_size_dw) * sizeof(u32);
>>   	if (unlikely(size != sizeof(struct uc_css_header))) {
>> -		drm_warn(&i915->drm,
>> -			 "%s firmware %s: unexpected header size: %zu != %zu\n",
>> -			 intel_uc_fw_type_repr(uc_fw->type), uc_fw->file_selected.path,
>> -			 fw->size, sizeof(struct uc_css_header));
>> +		gt_warn(gt, "%s firmware %s: unexpected header size: %zu != %zu\n",
>> +			intel_uc_fw_type_repr(uc_fw->type), uc_fw->file_selected.path,
>> +			fw->size, sizeof(struct uc_css_header));
>>   		return -EPROTO;
>>   	}
>>   
>> @@ -596,18 +594,18 @@ static int check_ccs_header(struct intel_gt *gt,
>>   	/* At least, it should have header, uCode and RSA. Size of all three. */
>>   	size = sizeof(struct uc_css_header) + uc_fw->ucode_size + uc_fw->rsa_size;
>>   	if (unlikely(fw->size < size)) {
>> -		drm_warn(&i915->drm, "%s firmware %s: invalid size: %zu < %zu\n",
>> -			 intel_uc_fw_type_repr(uc_fw->type), uc_fw->file_selected.path,
>> -			 fw->size, size);
>> +		gt_warn(gt, "%s firmware %s: invalid size: %zu < %zu\n",
>> +			intel_uc_fw_type_repr(uc_fw->type), uc_fw->file_selected.path,
>> +			fw->size, size);
>>   		return -ENOEXEC;
>>   	}
>>   
>>   	/* Sanity check whether this fw is not larger than whole WOPCM memory */
>>   	size = __intel_uc_fw_get_upload_size(uc_fw);
>>   	if (unlikely(size >= gt->wopcm.size)) {
>> -		drm_warn(&i915->drm, "%s firmware %s: invalid size: %zu > %zu\n",
>> -			 intel_uc_fw_type_repr(uc_fw->type), uc_fw->file_selected.path,
>> -			 size, (size_t)gt->wopcm.size);
>> +		gt_warn(gt, "%s firmware %s: invalid size: %zu > %zu\n",
>> +			intel_uc_fw_type_repr(uc_fw->type), uc_fw->file_selected.path,
>> +			size, (size_t)gt->wopcm.size);
>>   		return -E2BIG;
>>   	}
>>   
>> @@ -635,20 +633,20 @@ static bool guc_check_version_range(struct intel_uc_fw *uc_fw)
>>   	 */
>>
> this is GuC specific function, shouldn't we use guc_warn() instead ?

Much/some of this code is not actually GuC specific. Also, GuC can 
sometimes mean Springboard. And there's always the potential for bugs to 
cause the wrong code path to occur. So I would rather the keep the '%s 
firmware' string rather than forcing it to be a fixed prefix. Which 
means that switching to guc_warn will duplicate the GuC prefix.


>
>>   	if (!is_ver_8bit(&uc_fw->file_selected.ver)) {
>> -		drm_warn(&__uc_fw_to_gt(uc_fw)->i915->drm, "%s firmware: invalid file version: 0x%02X:%02X:%02X\n",
>> -			 intel_uc_fw_type_repr(uc_fw->type),
>> -			 uc_fw->file_selected.ver.major,
>> -			 uc_fw->file_selected.ver.minor,
>> -			 uc_fw->file_selected.ver.patch);
>> +		gt_warn(__uc_fw_to_gt(uc_fw), "%s firmware: invalid file version: 0x%02X:%02X:%02X\n",
>> +			intel_uc_fw_type_repr(uc_fw->type),
>> +			uc_fw->file_selected.ver.major,
>> +			uc_fw->file_selected.ver.minor,
>> +			uc_fw->file_selected.ver.patch);
>>   		return false;
>>   	}
>>   
>>   	if (!is_ver_8bit(&guc->submission_version)) {
>> -		drm_warn(&__uc_fw_to_gt(uc_fw)->i915->drm, "%s firmware: invalid submit version: 0x%02X:%02X:%02X\n",
>> -			 intel_uc_fw_type_repr(uc_fw->type),
>> -			 guc->submission_version.major,
>> -			 guc->submission_version.minor,
>> -			 guc->submission_version.patch);
>> +		gt_warn(__uc_fw_to_gt(uc_fw), "%s firmware: invalid submit version: 0x%02X:%02X:%02X\n",
>> +			intel_uc_fw_type_repr(uc_fw->type),
>> +			guc->submission_version.major,
>> +			guc->submission_version.minor,
>> +			guc->submission_version.patch);
>>   		return false;
>>   	}
>>   
>> @@ -687,10 +685,9 @@ static int try_firmware_load(struct intel_uc_fw *uc_fw, const struct firmware **
>>   		return err;
>>   
>>   	if ((*fw)->size > INTEL_UC_RSVD_GGTT_PER_FW) {
>> -		drm_err(&gt->i915->drm,
>> -			"%s firmware %s: size (%zuKB) exceeds max supported size (%uKB)\n",
>> -			intel_uc_fw_type_repr(uc_fw->type), uc_fw->file_selected.path,
>> -			(*fw)->size / SZ_1K, INTEL_UC_RSVD_GGTT_PER_FW / SZ_1K);
>> +		gt_err(gt, "%s firmware %s: size (%zuKB) exceeds max supported size (%uKB)\n",
>> +		       intel_uc_fw_type_repr(uc_fw->type), uc_fw->file_selected.path,
>> +		       (*fw)->size / SZ_1K, INTEL_UC_RSVD_GGTT_PER_FW / SZ_1K);
>>   
>>   		/* try to find another blob to load */
>>   		release_firmware(*fw);
>> @@ -768,10 +765,10 @@ int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw)
>>   	if (uc_fw->file_wanted.ver.major && uc_fw->file_selected.ver.major) {
>>   		/* Check the file's major version was as it claimed */
>>   		if (uc_fw->file_selected.ver.major != uc_fw->file_wanted.ver.major) {
>> -			drm_notice(&i915->drm, "%s firmware %s: unexpected version: %u.%u != %u.%u\n",
>> -				   intel_uc_fw_type_repr(uc_fw->type), uc_fw->file_selected.path,
>> -				   uc_fw->file_selected.ver.major, uc_fw->file_selected.ver.minor,
>> -				   uc_fw->file_wanted.ver.major, uc_fw->file_wanted.ver.minor);
>> +			gt_notice(gt, "%s firmware %s: unexpected version: %u.%u != %u.%u\n",
>> +				  intel_uc_fw_type_repr(uc_fw->type), uc_fw->file_selected.path,
>> +				  uc_fw->file_selected.ver.major, uc_fw->file_selected.ver.minor,
>> +				  uc_fw->file_wanted.ver.major, uc_fw->file_wanted.ver.minor);
>>   			if (!intel_uc_fw_is_overridden(uc_fw)) {
>>   				err = -ENOEXEC;
>>   				goto fail;
>> @@ -786,16 +783,14 @@ int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw)
>>   		/* Preserve the version that was really wanted */
>>   		memcpy(&uc_fw->file_wanted, &file_ideal, sizeof(uc_fw->file_wanted));
>>   
>> -		drm_notice(&i915->drm,
>> -			   "%s firmware %s (%d.%d) is recommended, but only %s (%d.%d) was found\n",
>> -			   intel_uc_fw_type_repr(uc_fw->type),
>> -			   uc_fw->file_wanted.path,
>> -			   uc_fw->file_wanted.ver.major, uc_fw->file_wanted.ver.minor,
>> -			   uc_fw->file_selected.path,
>> -			   uc_fw->file_selected.ver.major, uc_fw->file_selected.ver.minor);
>> -		drm_info(&i915->drm,
>> -			 "Consider updating your linux-firmware pkg or downloading from %s\n",
>> -			 INTEL_UC_FIRMWARE_URL);
>> +		gt_notice(gt, "%s firmware %s (%d.%d) is recommended, but only %s (%d.%d) was found\n",
>> +			  intel_uc_fw_type_repr(uc_fw->type),
>> +			  uc_fw->file_wanted.path,
>> +			  uc_fw->file_wanted.ver.major, uc_fw->file_wanted.ver.minor,
>> +			  uc_fw->file_selected.path,
>> +			  uc_fw->file_selected.ver.major, uc_fw->file_selected.ver.minor);
>> +		gt_info(gt, "Consider updating your linux-firmware pkg or downloading from %s\n",
>> +			INTEL_UC_FIRMWARE_URL);
>>   	}
>>   
>>   	if (HAS_LMEM(i915)) {
>> @@ -823,10 +818,10 @@ int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw)
>>   				  INTEL_UC_FIRMWARE_MISSING :
>>   				  INTEL_UC_FIRMWARE_ERROR);
>>   
>> -	i915_probe_error(i915, "%s firmware %s: fetch failed with error %d\n",
>> -			 intel_uc_fw_type_repr(uc_fw->type), uc_fw->file_selected.path, err);
>> -	drm_info(&i915->drm, "%s firmware(s) can be downloaded from %s\n",
>> -		 intel_uc_fw_type_repr(uc_fw->type), INTEL_UC_FIRMWARE_URL);
>> +	gt_probe_error(gt, "%s firmware %s: fetch failed with error %d\n",
>> +		       intel_uc_fw_type_repr(uc_fw->type), uc_fw->file_selected.path, err);
>> +	gt_info(gt, "%s firmware(s) can be downloaded from %s\n",
>> +		intel_uc_fw_type_repr(uc_fw->type), INTEL_UC_FIRMWARE_URL);
>>   
>>   	release_firmware(fw);		/* OK even if fw is NULL */
>>   	return err;
>> @@ -932,9 +927,9 @@ static int uc_fw_xfer(struct intel_uc_fw *uc_fw, u32 dst_offset, u32 dma_flags)
>>   	/* Wait for DMA to finish */
>>   	ret = intel_wait_for_register_fw(uncore, DMA_CTRL, START_DMA, 0, 100);
>>   	if (ret)
>> -		drm_err(&gt->i915->drm, "DMA for %s fw failed, DMA_CTRL=%u\n",
>> -			intel_uc_fw_type_repr(uc_fw->type),
>> -			intel_uncore_read_fw(uncore, DMA_CTRL));
>> +		gt_err(gt, "DMA for %s fw failed, DMA_CTRL=%u\n",
>> +		       intel_uc_fw_type_repr(uc_fw->type),
>> +		       intel_uncore_read_fw(uncore, DMA_CTRL));
>>   
>>   	/* Disable the bits once DMA is over */
>>   	intel_uncore_write_fw(uncore, DMA_CTRL, _MASKED_BIT_DISABLE(dma_flags));
>> @@ -950,9 +945,8 @@ int intel_uc_fw_mark_load_failed(struct intel_uc_fw *uc_fw, int err)
>>   
>>   	GEM_BUG_ON(!intel_uc_fw_is_loadable(uc_fw));
>>   
>> -	i915_probe_error(gt->i915, "Failed to load %s firmware %s (%d)\n",
>> -			 intel_uc_fw_type_repr(uc_fw->type), uc_fw->file_selected.path,
>> -			 err);
>> +	gt_probe_error(gt, "Failed to load %s firmware %s (%d)\n",
>> +		       intel_uc_fw_type_repr(uc_fw->type), uc_fw->file_selected.path, err);
>>   	intel_uc_fw_change_status(uc_fw, INTEL_UC_FIRMWARE_LOAD_FAIL);
>>   
>>   	return err;
>> @@ -1078,15 +1072,15 @@ int intel_uc_fw_init(struct intel_uc_fw *uc_fw)
>>   
>>   	err = i915_gem_object_pin_pages_unlocked(uc_fw->obj);
>>   	if (err) {
>> -		DRM_DEBUG_DRIVER("%s fw pin-pages err=%d\n",
>> -				 intel_uc_fw_type_repr(uc_fw->type), err);
>> +		gt_dbg(__uc_fw_to_gt(uc_fw), "%s fw pin-pages err=%d\n",
>> +		       intel_uc_fw_type_repr(uc_fw->type), err);
>>   		goto out;
>>   	}
>>   
>>   	err = uc_fw_rsa_data_create(uc_fw);
>>   	if (err) {
>> -		DRM_DEBUG_DRIVER("%s fw rsa data creation failed, err=%d\n",
>> -				 intel_uc_fw_type_repr(uc_fw->type), err);
>> +		gt_dbg(__uc_fw_to_gt(uc_fw), "%s fw rsa data creation failed, err=%d\n",
>> +		       intel_uc_fw_type_repr(uc_fw->type), err);
>>   		goto out_unpin;
>>   	}
>>   
> rest of the patch LGTM except that since we are around and to be more
> friendly I would use %pe to show error codes
Yeah, missed those.

John.

>
> Michal

