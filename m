Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E6D17EB846
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Nov 2023 22:09:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 057CE10E4D7;
	Tue, 14 Nov 2023 21:09:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 413E110E4E2
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Nov 2023 21:09:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699996187; x=1731532187;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=n5a0fnu2ycniIu9N2EaVBeTZXQZNwGqa4efotdXG3u8=;
 b=NYOEpakwOknSAgkFrnkxwQQHhsqZMVy29BCuy73qfb6WUNI6WZ3oxsSv
 ADl+rq/i/ZOz4HvKIkw4KSTv4ZxEceiWXdB5PmMuH2i5grb0631kESr+i
 TBGK+xjP71xDh8m8LOL7zP2CHUSkL7vY9h1PyroRly9IMD9Uqn6FCkLDe
 TpszkXyEGwj9ZRn/a3X/4e1VFSY2q/b/k2OFjl7aDaOLhi53Sma/ohZbO
 9lBoUrQBBwL4fYV+L0nY3jseJBUY7NMzJrK6wxQKEqgMuQx25Abw5jf2m
 LNuzsCwcB83+4aFHarWdjlK2SSC7uF3+uuPYoxQ9pA8g4hZjmtHwa5HWp Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="9385720"
X-IronPort-AV: E=Sophos;i="6.03,303,1694761200"; 
   d="scan'208";a="9385720"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2023 13:09:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="938246144"
X-IronPort-AV: E=Sophos;i="6.03,303,1694761200"; d="scan'208";a="938246144"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Nov 2023 13:09:45 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 14 Nov 2023 13:09:45 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 14 Nov 2023 13:09:41 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Tue, 14 Nov 2023 13:09:41 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Tue, 14 Nov 2023 13:09:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YEyQVo7964WsK9vcnhJyguJw80zs6OeUAVAV1y1bwF6et6a14RALolgmJKKFUg51SOJUZrXqOKK1k0jAGqELXn3bTZ5KZ9ia+gH8oWMTbI2KC0XQAotaRvNxqO1dfbYKznjsU+SULDBaSmI+2agbrmuSclM6k4AN0GaPrszX0MPzRBRFg9mJ7ryc8+RJBWsL8Kr6U1eJHPwlfgyHIIM56+Pyszf2HM41A9JVDyVtxxSv5i9a+PJVSqQ13y2zho1LTO6gJ6569mtDQLGBM5YF4aTs7F2XX3KmwGsBe/BG5+0mvjJeWXBq7O7nLgspe4opYwp9eJ4fmopmCGlKEtyKzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=otTG0ZwtHnCQXvwUWuS15UZLlKKcYO3vmJgo6Qvebag=;
 b=VseJ2hpyGCBl8tZPFylvE/KzUUUTsFUY5swkCQ4gIOiIXIgi4jJnU+tTEXU/qRBXRv0ryz6/jeBR5j1fltGTAXVrMw/nkc+fILH19jZrN5fnB6RbM12Z/HkH43s6LCScxSj2m+gzReuw8Xf/KZiuT8CUzqxk8XBO3p8L0jKCyfz92MI0QKki8s0GLNoUTjZz/1JJLM3NPM318fs//yfiabC10aHkj0wA5eFIt8UbrLEwNqrd5c9VP6KxWpz5s0BW/QhYiBUciGD8ojNxWmMPmWb4KshVg1k9+cS1L3N238cx52qnmu3pHdsODJiHf1UVKYTjN2b1dddWOwNkRMwYBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB7605.namprd11.prod.outlook.com (2603:10b6:510:277::5)
 by IA1PR11MB6289.namprd11.prod.outlook.com (2603:10b6:208:3e7::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6977.31; Tue, 14 Nov
 2023 21:09:29 +0000
Received: from PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::588d:b37f:130c:9e86]) by PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::588d:b37f:130c:9e86%7]) with mapi id 15.20.6977.029; Tue, 14 Nov 2023
 21:09:29 +0000
Message-ID: <dbd777a6-884b-43b6-b4ea-f102b8bff8d7@intel.com>
Date: Tue, 14 Nov 2023 13:09:26 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20231109235332.2349844-1-daniele.ceraolospurio@intel.com>
 <2b774727-e901-4c17-b6b9-2e4b3348cae6@linux.intel.com>
 <ae06d191-bff4-4646-b5bb-bfaa0be4d5e2@intel.com>
 <b3833f42-2737-42f4-8e68-a5b3b96b308e@linux.intel.com>
 <d5bd8629-02bd-4743-a6a8-fca15e2c2cfc@intel.com>
 <fb96ca8c-6d72-4f92-a257-a4dc6f66e4ef@linux.intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
In-Reply-To: <fb96ca8c-6d72-4f92-a257-a4dc6f66e4ef@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BY5PR16CA0013.namprd16.prod.outlook.com
 (2603:10b6:a03:1a0::26) To PH7PR11MB7605.namprd11.prod.outlook.com
 (2603:10b6:510:277::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB7605:EE_|IA1PR11MB6289:EE_
X-MS-Office365-Filtering-Correlation-Id: aeb95a76-d0f3-4fd8-7cda-08dbe555fd4d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QGmXRBoNOTTViFKChVKF8EdCHs1pw7E+dkJSL9aTYc0YD5ozYxg62DeW4hJxk3mhA9dIM2XQgiaBOerrgTPyxSn7SdUnLzYCYN6BGYcZp42/98vj6Fb09AeONZ9qB1+ZZ5YIFzxQnhnm6cJIl1oBVeUrjjRrrmlvso0zgLIkbOXkNZZZGV1ajqieg3nvbb0qMOdOQrSGLwnHdeyOV1Nn+lMIybiAfnq96cGBPDTx77/fHsbi6hRwP7JobbG802GMXXpwesvR7TP2QvW65ixiKAZUgglxBnxqSp2AIg2rfjZz36US9Hoj6HznAbugYmNtrwJdwydFh9m97MIUvQYOlEviAXov+kDPdRJ8tAR6jzLhS/T2NfRySouhdCZuxg+LH3b5nkDQyJS0rIgPbuL1mJ8rpStv63EYLPwAjCaq2KCsSLDHUiAF0AG6tRNvV2KZMXVKHXKPGszjO++xjCGli6nZ0fCcXm56p4jotLpHo0LSMDMPC3/1cxoyILMSfsIBzCBEaY6TuIPykguSyp4EBcV+AwCWSO9tHTE8tEHP/awBK6807B71g3Nnve1MEhS5qQN4smuA0FBpZvtcxaIP3Em1MiTOKTv9sS2sINg8w6G91JzMCjHViXyyTa++IqBfh3W+GxIeTFQ0kf2srXe1dw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB7605.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(396003)(346002)(366004)(376002)(230922051799003)(186009)(451199024)(1800799009)(64100799003)(31686004)(36756003)(86362001)(31696002)(82960400001)(83380400001)(38100700002)(26005)(6512007)(478600001)(6666004)(6486002)(2616005)(53546011)(6506007)(54906003)(4326008)(8936002)(66946007)(66476007)(316002)(66556008)(8676002)(5660300002)(41300700001)(2906002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cSt1ZWJOemtPZ3U2d3IzeHg2S0l4SlpNUFpwWG9TT29IUm1mS3YrOEpheDF3?=
 =?utf-8?B?QkY4QUpFTzJVL3hGOWJ4T0tMMG9hbkwvdUU3SXgxeXpOUDFCbmVKb25tenJN?=
 =?utf-8?B?K1RFSytFLzYvaUwxUjlaenBFeXdlY1J3aXdaZG1TWFNhMTlyOFdMUGdFWUR6?=
 =?utf-8?B?Y0M2ZUVvczdZYVhkajA1d01kbU52N1BsVSt2TFJ3TkRSbGhvampBNUdYQ2ln?=
 =?utf-8?B?Q1hmWnBHUENJakMxK0FmYnVCMjlCSEZhM1AwS3dWRnppSVdHcEl6L3lVSEg3?=
 =?utf-8?B?bGh1eWdMeDgxbHQwcUg0Wm1aK1NWZ245cTNXMUNIWmdUaG50VnFjU3NaemIr?=
 =?utf-8?B?NWprRHJJMENDb291V2lVeC81TkltbHlGM3BGcWw5d3RsQkhYV01mSlBpNm10?=
 =?utf-8?B?VExDQTdUMjNTUGNLck9jWUU5RWwvdFZhMC9CREtEcTNjcmdzMjFJaXBqWWc3?=
 =?utf-8?B?Y1IrL1dDcFlnRUM5bmU4SjE3TXdVY015b0JNUW1tbFZoWXNWNkJGS3ROQWJ5?=
 =?utf-8?B?citia0kzWEs5TC96QjFsTFByNUdMVVJVd2JvVmxvRERYeVFibmwwQ29SWDcr?=
 =?utf-8?B?aXo5cUdOQlVRUlNQbllwR3RLQy9tZGI1b0tITVFxa2Y3aFZCbURoOUdRazVF?=
 =?utf-8?B?TDJyeDQrN3FNQ2t1NUhjVk9JMktTVVkrZjU1RU1kbjd6TnlKV2RjQlZ2SW1n?=
 =?utf-8?B?bzhzMVY0UGhKVHlOU21KNDNBK0FHY2lYTzJhbmwySkFGVkJjVmlQcDNDYlRU?=
 =?utf-8?B?VU5QeDNhNUQwTlFjcnZHLytKSFNvMkVTaklBbTZKTm55SDNnMC80c3NoaDVP?=
 =?utf-8?B?ekkwV1dOQ3pML3N6Tk02TlIvdS9kcTM4V3V3ajhEano0UFdTR0RQMzI5VVBx?=
 =?utf-8?B?dk9IR3h4cmFrMnJYdmF1N3c4Y2J5M1A4OVpScFU5bGQzMTd1M2FvSk16cG1O?=
 =?utf-8?B?NGs4U2NLTUxkaFpmTGxDalNPUjhhT0tzT2hGVUd1YlluL1FtL1prTjVVYW8v?=
 =?utf-8?B?TWF1MXFyNngzRlM4T1lOQU9aQUxrYThyTjdUd0pKY210WGVNeE9tTXg2ZEhN?=
 =?utf-8?B?UDNIZGFEMFlJd29hdHBhQWJ6b3hFOElCVlp1ZTNiMWNmdXNrTnRoODJ3SGJw?=
 =?utf-8?B?Wmh3Qk5abnlYcndXeW5kQzhtakJlYWlVVW9iOGJCZEQ3eDh4c3B0RGRWRTZE?=
 =?utf-8?B?L2ZEZjJlelZOMnkzMEU5Tndzc0NnYzM4dXFRY1ppQUlhcVdUeHJTNitlOGM2?=
 =?utf-8?B?L3BnS0RlMVBpZHVwRlBjYll1RmhGY0FBaDRpZFVEdmVHVzRRdG9OU3JBNlJL?=
 =?utf-8?B?OWhoaVkrVWFaZ2xKSXI0OEoyZ3g3YzdpWWlqR0lDK3QwSG9ZTnN6azFFeW9L?=
 =?utf-8?B?VXVVTk95ZEUremcrdlNOblRzcE93S0tRRG1hOFFUZU1GQkZTbnZqY2xIemQz?=
 =?utf-8?B?STV1N2hpUEpIUkQxbU16RStnZWRIS1RwZ0xaY0Q2SG0zSkQ1UXRCelFWcFBE?=
 =?utf-8?B?ZnI5ZEZneUM4ZnA2U0dpQkwvanJKU1l2WTVTcm8wVlJmL1ptQjJzbURpdWV6?=
 =?utf-8?B?VUNTSHF6SGY3OVk3emx1RWJWelNkTW05c0ZhY0hMK3p5TEgwd3dXYmlNYnBk?=
 =?utf-8?B?Si9MdzZ5clZ3MHRDUkoyQ2pKVkl4L0xCQWhkZHpqSFlmUWtrakF0Q3VRSUlK?=
 =?utf-8?B?THZjNmdQQk8zU0ZHclQyNEN2bys0Y3pTVnc0akJqTitWNkl6RVEwd1J3Skox?=
 =?utf-8?B?RGZtWFZNekdTcUp6d1ptaFdqSisrTHlvN0F4T0FLb1h5UGxQdEFBK3pSNXRk?=
 =?utf-8?B?R2h5clV2bk51bThEZlJmNkVzK3lQVkYwMXZ6M1hTWFREYXg4U0d0cVVDQjRv?=
 =?utf-8?B?WkozckU0TUdvaTM2VzljSmowY1dVbGZkcE8yK1gzSVJ1K09qcHI3MnNSak1H?=
 =?utf-8?B?d01DdGVHLzF0L0dKcWNTbFQ5QnBGSmJYcGFhQ2YvMVd2TUZzQ2V0SVZFL1ZY?=
 =?utf-8?B?d0o2WjFEelVseHNHdWwwTFZIMHhHRHpHWkxVZUtYUkJxNFBvLzc0RGFtbzl3?=
 =?utf-8?B?Z0FKVFRoMzRRUnhqTHI5NmZmZ2l2WSs2SDdjQ1MxajZZcTlwWFhqakF6akZk?=
 =?utf-8?B?d0RVcHh0a01QN2NiMUZsZVFxeE0vZXByc1BSZUpDL3MvMG15WFRQclYwVU9j?=
 =?utf-8?Q?FypLBd6zpWE4jFrbK2T1QzU=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: aeb95a76-d0f3-4fd8-7cda-08dbe555fd4d
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB7605.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Nov 2023 21:09:28.9731 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OBJDMhy5EFrLyPhzykC0P+2W2slGNREZ+PBaJT/3RzAtY0MFMjatgJMpk4UzHoBvUl3elOlYpplBOC4IggHxDrNfluwOVIVJ9Q4c2K3/QGA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6289
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gsc: Assign a uabi class number to
 the GSC CS
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
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 11/14/2023 9:20 AM, Tvrtko Ursulin wrote:
>
> On 14/11/2023 17:03, Daniele Ceraolo Spurio wrote:
>> On 11/13/2023 8:46 AM, Tvrtko Ursulin wrote:
>>> On 13/11/2023 15:51, Daniele Ceraolo Spurio wrote:
>>>> On 11/10/2023 4:00 AM, Tvrtko Ursulin wrote:
>>>>>
>>>>> On 09/11/2023 23:53, Daniele Ceraolo Spurio wrote:
>>>>>> The GSC CS is not exposed to the user, so we skipped assigning a 
>>>>>> uabi
>>>>>> class number for it. However, the trace logs use the uabi class and
>>>>>> instance to identify the engine, so leaving uabi class unset 
>>>>>> makes the
>>>>>> GSC CS show up as the RCS in those logs.
>>>>>> Given that the engine is not exposed to the user, we can't add a new
>>>>>> case in the uabi enum, so we insted internally define a kernel
>>>>>> reserved class using the next free number.
>>>>>>
>>>>>> Fixes: 194babe26bdc ("drm/i915/mtl: don't expose GSC command 
>>>>>> streamer to the user")
>>>>>> Signed-off-by: Daniele Ceraolo Spurio 
>>>>>> <daniele.ceraolospurio@intel.com>
>>>>>> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
>>>>>> Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
>>>>>> Cc: Matt Roper <matthew.d.roper@intel.com>
>>>>>> ---
>>>>>>   drivers/gpu/drm/i915/gt/intel_engine_user.c | 17 ++++++++---------
>>>>>>   drivers/gpu/drm/i915/gt/intel_engine_user.h |  4 ++++
>>>>>>   drivers/gpu/drm/i915/i915_drm_client.h      |  2 +-
>>>>>>   drivers/gpu/drm/i915/i915_drv.h             |  2 +-
>>>>>>   4 files changed, 14 insertions(+), 11 deletions(-)
>>>>>>
>>>>>> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_user.c 
>>>>>> b/drivers/gpu/drm/i915/gt/intel_engine_user.c
>>>>>> index 118164ddbb2e..3fd32bedd6e7 100644
>>>>>> --- a/drivers/gpu/drm/i915/gt/intel_engine_user.c
>>>>>> +++ b/drivers/gpu/drm/i915/gt/intel_engine_user.c
>>>>>> @@ -47,6 +47,7 @@ static const u8 uabi_classes[] = {
>>>>>>       [VIDEO_DECODE_CLASS] = I915_ENGINE_CLASS_VIDEO,
>>>>>>       [VIDEO_ENHANCEMENT_CLASS] = I915_ENGINE_CLASS_VIDEO_ENHANCE,
>>>>>>       [COMPUTE_CLASS] = I915_ENGINE_CLASS_COMPUTE,
>>>>>> +    [OTHER_CLASS] = I915_KERNEL_RSVD_CLASS,
>>>>>
>>>>> Could we set it to -1 (aka no uabi class) to avoid needing to 
>>>>> maintain the new macros?
>>>>>
>>>>> And then just teach intel_engines_driver_register to skip -1. 
>>>>> Would also need teaching engine_rename to handle -1.
>>>>>
>>>>> Might end up a smaller and more maintainable patch - worth a try 
>>>>> do you think?
>>>>
>>>> That was my initial idea as well, but the issue with this approach 
>>>> is the engine_uabi_class_count[] array, which is sized based on the 
>>>> number of uabi classes, so having class -1 would needlessly 
>>>> increase its size a lot even when using a u8. I thought about 
>>>> limiting the class entry to 3 
>>>
>>> I was thinking the -1 entry wouldn't be in that array since -1 is 
>>> not uabi class by its very definition. It is not reachable from the 
>>> outside so no need to be there.
>>
>> The issue there is that the array is used to assign uabi_instance, 
>> but I can hardcode that to 0 for now since we don't expect any new 
>> engines of that class. would that work for you?
>
> My issue is that the starting position here is GSC engine has no uabi 
> class, therefore it shouldn't have an uabi instance either, therefore 
> the fact you cannot use the array called engine_*uabi*_class_count to 
> assign it something which it shouldn't have, shouldn't be an argument. ;)

Agreed. The problem is that we use the uabi_class/instance for things 
that aren't strictly uabi (i.e. the traces) so we need to assign a value 
to those even if we don't need it for actual uabi purposes.

>
>> Otherwise I'll try the 3-bits thing and see how that looks.
>
> 3-bits.. I have to admit I don't know what you mean by that?

I was referring to limiting the uabi class index to 3 bits to limit the 
max array size to 8 and use -1 for the GSC uabi_class.

>
> I can try to sketch out tomorrow what I have in mind. Lets go from 
> there. I might fail and concede there is nothing to be gained by using 
> a different approach.

sounds good.

Thanks,
Daniele

>
> Regards,
>
> Tvrtko
>
>>
>> Daniele
>>
>>>
>>>> bits so the array would max out at 8 entries, but that seemed to be 
>>>> getting a bit too convoluted. I can give it a go if you think it's 
>>>> be cleaner overall.
>>>
>>> I had a feeling it would be, but without trying it out I won't claim 
>>> 100%.
>>>
>>>> Note that this patch does not introduce any new macros that would 
>>>> need to be maintained. I915_LAST_UABI_ENGINE_CLASS already existed 
>>>> (I just moved it from one file to another) and is the only one that 
>>>> changes when a new "real" uabi class is added; the other defines 
>>>> are based on this one. This also implies that if a new uabi class 
>>>> is added then I915_KERNEL_RSVD_CLASS would be bumped to the next 
>>>> free number, which would cause the GSC to show as a different uabi 
>>>> class in newer logs; considering that i915 is on its way out, a new 
>>>> class seems very unlikely so I thought it'd be an acceptable 
>>>> compromise to keep things simple.
>>>>
>>>>>
>>>>>>   };
>>>>>>     static int engine_cmp(void *priv, const struct list_head *A,
>>>>>> @@ -138,7 +139,7 @@ const char *intel_engine_class_repr(u8 class)
>>>>>>           [COPY_ENGINE_CLASS] = "bcs",
>>>>>>           [VIDEO_DECODE_CLASS] = "vcs",
>>>>>>           [VIDEO_ENHANCEMENT_CLASS] = "vecs",
>>>>>> -        [OTHER_CLASS] = "other",
>>>>>> +        [OTHER_CLASS] = "gsc",
>>>>>
>>>>> Maybe unrelated?
>>>>
>>>> no. Before this patch, we hardcoded "gsc" below when calling 
>>>> engine_rename() for it. With this patch, we use the name from this 
>>>> array, so it needs to be updated. The GEM_WARN_ON below was added 
>>>> to make sure we don't get different engines in OTHER_CLASS that 
>>>> might not match the "gsc" naming.
>>>
>>> Ah okay, one special casing for another, a wash I guess.
>>>
>>> Regards,
>>>
>>> Tvrtko
>>>
>>>>>
>>>>> Regards,
>>>>>
>>>>> Tvrtko
>>>>>
>>>>>>           [COMPUTE_CLASS] = "ccs",
>>>>>>       };
>>>>>>   @@ -216,14 +217,8 @@ void intel_engines_driver_register(struct 
>>>>>> drm_i915_private *i915)
>>>>>>           if (intel_gt_has_unrecoverable_error(engine->gt))
>>>>>>               continue; /* ignore incomplete engines */
>>>>>>   -        /*
>>>>>> -         * We don't want to expose the GSC engine to the users, 
>>>>>> but we
>>>>>> -         * still rename it so it is easier to identify in the 
>>>>>> debug logs
>>>>>> -         */
>>>>>> -        if (engine->id == GSC0) {
>>>>>> -            engine_rename(engine, "gsc", 0);
>>>>>> -            continue;
>>>>>> -        }
>>>>>> +        /* The only engine we expect in OTHER_CLASS is GSC0 */
>>>>>> +        GEM_WARN_ON(engine->class == OTHER_CLASS && engine->id 
>>>>>> != GSC0);
>>>>>>             GEM_BUG_ON(engine->class >= ARRAY_SIZE(uabi_classes));
>>>>>>           engine->uabi_class = uabi_classes[engine->class];
>>>>>> @@ -238,6 +233,10 @@ void intel_engines_driver_register(struct 
>>>>>> drm_i915_private *i915)
>>>>>> intel_engine_class_repr(engine->class),
>>>>>>                     engine->uabi_instance);
>>>>>>   +        /* We don't want to expose the GSC engine to the users */
>>>>>> +        if (engine->id == GSC0)
>>>>>> +            continue;
>>>>>> +
>>>>>>           rb_link_node(&engine->uabi_node, prev, p);
>>>>>>           rb_insert_color(&engine->uabi_node, &i915->uabi_engines);
>>>>>>   diff --git a/drivers/gpu/drm/i915/gt/intel_engine_user.h 
>>>>>> b/drivers/gpu/drm/i915/gt/intel_engine_user.h
>>>>>> index 3dc7e8ab9fbc..dd31805b2a5a 100644
>>>>>> --- a/drivers/gpu/drm/i915/gt/intel_engine_user.h
>>>>>> +++ b/drivers/gpu/drm/i915/gt/intel_engine_user.h
>>>>>> @@ -11,6 +11,10 @@
>>>>>>   struct drm_i915_private;
>>>>>>   struct intel_engine_cs;
>>>>>>   +#define I915_LAST_UABI_ENGINE_CLASS I915_ENGINE_CLASS_COMPUTE
>>>>>> +#define I915_KERNEL_RSVD_CLASS (I915_LAST_UABI_ENGINE_CLASS + 1)
>>>>>> +#define I915_MAX_UABI_CLASSES (I915_KERNEL_RSVD_CLASS + 1)
>>>>>> +
>>>>>>   struct intel_engine_cs *
>>>>>>   intel_engine_lookup_user(struct drm_i915_private *i915, u8 
>>>>>> class, u8 instance);
>>>>>>   diff --git a/drivers/gpu/drm/i915/i915_drm_client.h 
>>>>>> b/drivers/gpu/drm/i915/i915_drm_client.h
>>>>>> index 67816c912bca..c42cb2511348 100644
>>>>>> --- a/drivers/gpu/drm/i915/i915_drm_client.h
>>>>>> +++ b/drivers/gpu/drm/i915/i915_drm_client.h
>>>>>> @@ -12,7 +12,7 @@
>>>>>>     #include <uapi/drm/i915_drm.h>
>>>>>>   -#define I915_LAST_UABI_ENGINE_CLASS I915_ENGINE_CLASS_COMPUTE
>>>>>> +#include "gt/intel_engine_user.h"
>>>>>>     struct drm_file;
>>>>>>   struct drm_printer;
>>>>>> diff --git a/drivers/gpu/drm/i915/i915_drv.h 
>>>>>> b/drivers/gpu/drm/i915/i915_drv.h
>>>>>> index f3be9033a93f..a718b4cb5a2d 100644
>>>>>> --- a/drivers/gpu/drm/i915/i915_drv.h
>>>>>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>>>>>> @@ -238,7 +238,7 @@ struct drm_i915_private {
>>>>>>           struct list_head uabi_engines_list;
>>>>>>           struct rb_root uabi_engines;
>>>>>>       };
>>>>>> -    unsigned int 
>>>>>> engine_uabi_class_count[I915_LAST_UABI_ENGINE_CLASS + 1];
>>>>>> +    unsigned int engine_uabi_class_count[I915_MAX_UABI_CLASSES];
>>>>>>         /* protects the irq masks */
>>>>>>       spinlock_t irq_lock;
>>>>
>>

