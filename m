Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BFDE457C6EC
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jul 2022 10:54:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7572D8B613;
	Thu, 21 Jul 2022 08:54:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6157A8B6AE
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jul 2022 08:54:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658393683; x=1689929683;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=qgVD2LsfPLCALLacZNKIj3H8NT18K1p+OxZVE6L0W/8=;
 b=bBd4TwceCjd0EkGw7uvGjbfRAfA2BfrQqMY6z8d7hQGzMBb9nobheeHd
 oA9wEBO5qYU66eLnCjR0MhetAq+9mzMiVAw3Bbi8S5IdtYw8wpDWr51wq
 GH9eLhsWJZ2lq5ZEIP5N9mXNj26fOoifeqow9l9gsQ08y/atA1wSzhSY9
 EFRuI3S4rvcfso87v+yY2TqkiZokSdDeKRRwObUtxOgv7M3kSvVaRFcgJ
 LtlRcmIhpMfNL6w7xiObx2Fb0YZJLA4Zyojo7L8xaTEnxc1FLJMhvUFp+
 texenzfLqDTEb6CxDCcXBzehzoqQc2hY8/O8Gs8vnwXIMxYKanAmuQxMS g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10414"; a="273837649"
X-IronPort-AV: E=Sophos;i="5.92,289,1650956400"; d="scan'208";a="273837649"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 01:54:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,289,1650956400"; d="scan'208";a="631095966"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga001.jf.intel.com with ESMTP; 21 Jul 2022 01:54:42 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 21 Jul 2022 01:54:42 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 21 Jul 2022 01:54:42 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.49) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 21 Jul 2022 01:54:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KhSSb88MgQ24kK5nmiKeUfQ6Hv68W/VB4bbC7Wvo/7LO/KqBICWmAwu/NrN5FqziSl6gq3meL9hKYQXuQ3e7G0AhGMvnpBvYFj6P5NwA8BYNhS2SYYgcgSvFlS5fHy2fNmWqRVfkhuGFhBRglxqOh1egkVZ1Nc6Qlt3JnnrefMEDaRjHm00I5bAl1cZZaCIMnn4Pj1GkMLY159SIAhw72WLDuNOXN9+uMRVZ5TOOwpfsZk1AGFO9tUEkQuVgIEJp704JfPMLZphluKQFG9aWqWKEYBgz5QuvPwoXqpGjrpuhzd/iRcJGE94ZlQOl39WKCxUS/St6rHnZ5Ia52vguUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y0zfHYn+ZDq/IT1if1FrLCbeYT2NoRpNV+nn5t6adko=;
 b=a9fBAvniy5qMbmiaLhzgYIASOYZ+AF7nNSvVgDpRdKqWGk3cwc6bBeMyJEF/LyNMUTbVkhZ5IRAPcEPFw9RL+pf/y7JZeB8ep35EXELE9dDwlJ8O5+qIRIwu/5l6XZazYppIkV0mAiZjBHoF8RbJYRLcSEIS54P8FolhouB/vjpks+AQeK5IHym1Q6QtVuJsYLs1Z+bc8RUo0BDTNaMubrYJrKVwfoHJUxHqIdMVaDhCZ1qZAyuxIU2PRJlmV3/im8lZSAcabRxjoV2h+05BpBpqoftav3crYMSgM7D4v/Z8k+CJqPK13KZCbW/8X4rWfmluD72UH982mLUzz+CBaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MWHPR11MB1983.namprd11.prod.outlook.com (2603:10b6:300:112::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.14; Thu, 21 Jul
 2022 08:54:39 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::38c8:a900:6915:3b3b]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::38c8:a900:6915:3b3b%8]) with mapi id 15.20.5458.019; Thu, 21 Jul 2022
 08:54:39 +0000
Message-ID: <c695ccc2-e22e-8ac3-8a44-0b7df0f253bd@intel.com>
Date: Thu, 21 Jul 2022 14:24:31 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.11.0
Content-Language: en-US
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20220707052712.2033748-1-ankit.k.nautiyal@intel.com>
 <DM6PR11MB317775DC2D990594E3297055BA829@DM6PR11MB3177.namprd11.prod.outlook.com>
 <c758d7c0-cb11-7135-2048-a197998ac2da@intel.com>
 <DM6PR11MB3177EFA94C68E9D3D23EAB79BA8F9@DM6PR11MB3177.namprd11.prod.outlook.com>
 <63bd6ab5-6450-2934-6634-18d61f7dd77f@intel.com>
 <DM6PR11MB31778E9B592622E38D26AF57BA8F9@DM6PR11MB3177.namprd11.prod.outlook.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <DM6PR11MB31778E9B592622E38D26AF57BA8F9@DM6PR11MB3177.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN0PR01CA0043.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:49::20) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5aac5929-10a4-4f4d-192f-08da6af6a527
X-MS-TrafficTypeDiagnostic: MWHPR11MB1983:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: P6I5NTZkr+3v4C7rOrAOPwL2n82cVj0wfFQ+/ku/S1CPLGTq9m5yj79wLYs8TI0NAmGIXm9G3yWBR1cw1cUu/h1TSo3eJ26bANIiVqSoVeWG7rNrL6OxusKEczDsIVix5H8Dngex8q+a9pFoQSOk1Vk/1uzXtCMofuuc3Tz4oZfp5MTP/VDz+e2WcgcwVYFYLRw3a2Wn1ebHYVkgy+oMoOq475PRg4hpGLR8/pOj+HBhfAj/dzRGbi1az88P+WGd8PJmSN9OP0TEA5ST8hv8UE9tgJNFQ/a6D0WOEtzJoCGniT7RkK5YgjctEOs53VeUupqhoD/+uLzse/nKPy02a0drGQXws81BejKZUvBEIiPYh4ytPdHFg0GtgOcjD65YedO1uvQGP6TIAUz/DRkZC5AX51ABXXFOH19uow9q8d0RUWtMWkbe/d9ExCHX4UL/PxPzD7Y0fbqNQ1fmDl4+rQMHIvkhbeo9Kbxe6OUhraIFpDDO5zyzm+zm1Cxg+ZalEqsIPET3lgVClbPj7bfX7aN398jvYOQThGBGV0FDDR/56RvBAfHioP86aG3Ieez45wIKbHPmoT8pdRdpjd+1mZc9VYr5lF+a5r7l60obKCmHo7m7aQq9t20kYTPWh4roUnKBHGeDV1sh+ZZHeekp2O7QD54J4LFMifqz1hszwNnWGhEoFn4d5/hG/MY0KTACSLD90VHHBmgcrYIEkBHBepeaShHElV1x1nFWc4OUTskdSswFXTXY6HZOY/zZCBhCkmZZE5o6xYF0J2THN3FaLXJhuPRtecRfHyC+zhoAX4Bm3zgzStx24gkyalo33WwSKCV7M85XhgHQu41Xq+xTGQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(396003)(39860400002)(136003)(376002)(346002)(110136005)(83380400001)(186003)(36756003)(41300700001)(31686004)(2906002)(478600001)(26005)(2616005)(6506007)(6512007)(38100700002)(82960400001)(53546011)(5660300002)(316002)(66946007)(6666004)(6486002)(86362001)(55236004)(8936002)(66476007)(31696002)(8676002)(66556008)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NTI3d01CN1BYa01Pcnp4cWVjSUFvUnJzN2JPK3J5K0pZNVliTFVpRTRKaHUy?=
 =?utf-8?B?bFMzR09PVHBHUmhtOWhpRHduTVUxNW9RcTliUFFvRm5YNVUyUllKVGZGNG5X?=
 =?utf-8?B?eUVhUVNxRTZMcVhhTU9xYUJKczJRSE1RZUorOTFkMUNBcG96MHA2ZWFNNnY3?=
 =?utf-8?B?UkxlUnpTNFVtY3hpaVcwNFFZaVNXRHJJM1ZWNmRYN0lZams1a2F3SnhCRGJi?=
 =?utf-8?B?TmFtR1pxR2ZFbzlOR1hZVUhDZG1OZHBQMFEvQkFHbkwyZlFRWWlvVzRRUG42?=
 =?utf-8?B?RzRsa0xnbG9KaUgxMmx4ZWQ5dFcrL29XRklJYVJ6VU8vWFpRUUVKTFZmN2l4?=
 =?utf-8?B?V1NGZ0U2cmhPMkozczdEVWJOSUlTdU41UTkvb2haVEkxeElMQlNFcEdJU25O?=
 =?utf-8?B?Q3NTZVhHWE1hOHhSTG4yN3B1QnJDSkxoYjlOblo5ZVkvMlhVaXREeUxQOUMr?=
 =?utf-8?B?MllSWlpGRGNRbU9qbHc4N0k0U0JTbTM1UlhNYmpRWWhTTGptUDN3bHFFMzk0?=
 =?utf-8?B?eGxVN0FjZTNjVk5TdDROZVFnOWx0SFNuSDFWZGNQS1kva0hMMytDeHNDcThF?=
 =?utf-8?B?cWNJTTduM0pQWGJvYlc2aTdtRWtHV0lqdFBwOXJBajNaamozUkdlb0plR1pi?=
 =?utf-8?B?eEREMUM4cHM0MUx5VW5HMjhLajFORWQyVkNDeG1PVktWM2lacit2emZNcmY1?=
 =?utf-8?B?NFo2eENuMjNUOVJFZy95dWV6cnFJekNmTHNuZEJoVm5wazJQbGtHT29INkRS?=
 =?utf-8?B?c2ZmZ1I2MlN1aUt2RU1sR0NQMTc4TUxCenpDNkNtbXNvS3E1MFFIS25WY2Fx?=
 =?utf-8?B?Y3gvOGZNSVRZSmRHb0FIUkxLQVBiY08vNE9QM0NmVUlTcWhhcmNXOGIxRjB4?=
 =?utf-8?B?dkNqM0oyeHJ6MklNdW1OWGZSZlFZQnFtRkRENjdlenpINm9WVE5PbHM4N2RP?=
 =?utf-8?B?NW9QYVRLRDRCajhuQjFXNXRnUVRXUHJQaHR6SXRlV256dXgwSnJDUlpjbW5O?=
 =?utf-8?B?QUhKdGtZbnVyODhvbFVOMmF0dDY5RTVzU2JUV05mVGE4OFZKOXdPR0Q2NmJw?=
 =?utf-8?B?N1drd0NQYk55RFEwblFBK01EdW4yWWpWbitzcVRVc3FtaVFHaXR5Mkh1VjR1?=
 =?utf-8?B?SUltZVo4bHF6ZE0yT05pZUlncHN6Mm5SRFlFN1RBaHRDVGlNTDhzeVRQbWR4?=
 =?utf-8?B?YmNlN09yZUNJL1haVEc5VC96OTNJVXQxOVFSTmNKeldpdkQycWREYTJWNUpk?=
 =?utf-8?B?RDZlbW9WbEZ6cFJZWUpUQ3Jwa0N3anJ6dDRTNExndFhraWFxaXMvVm95c2Rm?=
 =?utf-8?B?ZXpEK2p3dDVzZXZwUG5xR0MvaUZBSlJveTM3QzhVRkR2SmttWCtoYzY0b0RB?=
 =?utf-8?B?WlJzZC9wR2hEdFZzZlcwS1lBUkpBOW5KWDdxbnBQNDJYNzgvRGFvQ3dKMXlX?=
 =?utf-8?B?eXptWEVvT2UveGRJdXNmaWlNdWFsdzJnazhlV1o3WWlrcFZTR3hrZkZnVDFo?=
 =?utf-8?B?YVVyMjhOL0tkYU1hVFA0cUFnem44ZDVFYnpmTDFmZStncmUyY1ZkTXJpa1N1?=
 =?utf-8?B?bmRCbnQvamNaU1dabjh5ZXBhdEhLRkNqSXV2WVZtL1pNKys0ZU80am0zMGJu?=
 =?utf-8?B?RkY4NCtudVgyL3dWS0Iva25SejJvdWpEcWtBcHRsaStTWU1OZEtUK1cyak5m?=
 =?utf-8?B?dzJvQkVKR2FuOHBvMzV1cndBL21KeS9aT0EwTTN0ZHVHaVg0cHU1aVpKOW52?=
 =?utf-8?B?VmlGS0tZMVRvUTNLZHpPOXVSNFdJdFpXc1FsV241NkZxVU5LYzAzN3puZlJq?=
 =?utf-8?B?cHZWMEpPdk95Z21zclBuN2RuM0FVTFljdnh5eEYyRngrZ2xaaFJXckJ6Q0Q5?=
 =?utf-8?B?VWtnYk1LblFZR1h3S3NmcmpuQjl5V0czT0E0cWdncHhuQWcxV1dmcjBjU3lS?=
 =?utf-8?B?c3JoSHl4V0kxOUkwRkJ0Z2dQWE5rU0hLNTJqZjFWZ2VNeDBldUtTRlJFdnB1?=
 =?utf-8?B?bnBJRmwyRHEzL21KT1ZjYmE5R0JXZUNaU2ZWWGZZUUJqcUlXdzcveXQyYVM4?=
 =?utf-8?B?TTRUMHRUTWw1ZTZVVmpwdzFwZWE1WUxhUUdMdHU0R0JIcmEyYzZYZVNjclVS?=
 =?utf-8?B?UDRaUUFyT3UvNzN3N0NwR0x4a1pKNWEwVlRob3Bod0tneHRIMy9SZS9hUjJk?=
 =?utf-8?B?bVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5aac5929-10a4-4f4d-192f-08da6af6a527
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jul 2022 08:54:39.5085 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: N3sTfIf+SVOel91F8RdBIo5qTbNaa1943Uh+pqPWPomyqbj4rW0MtYLC4UbFAIwnTUvOCE1AAFooSxZgV8siJJ7m/jch4DkocfNF2sCG3t8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1983
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/hdmi: Prune modes that require
 HDMI2.1 FRL
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


On 7/19/2022 12:32 PM, Murthy, Arun R wrote:
>> -----Original Message-----
>> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
>> Sent: Tuesday, July 19, 2022 11:40 AM
>> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-
>> gfx@lists.freedesktop.org
>> Subject: Re: [Intel-gfx] [PATCH] drm/i915/hdmi: Prune modes that require
>> HDMI2.1 FRL
>>
>>
>> On 7/19/2022 8:45 AM, Murthy, Arun R wrote:
>>>> -----Original Message-----
>>>> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
>>>> Sent: Friday, July 8, 2022 3:36 PM
>>>> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-
>>>> gfx@lists.freedesktop.org
>>>> Subject: Re: [Intel-gfx] [PATCH] drm/i915/hdmi: Prune modes that
>>>> require
>>>> HDMI2.1 FRL
>>>>
>>>> Hi Arun,
>>>>
>>>> Thanks for the comments.
>>>>
>>>> Please find my response inline.
>>>>
>>>> On 7/8/2022 9:30 AM, Murthy, Arun R wrote:
>>>>>> -----Original Message-----
>>>>>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
>>>>>> Of Ankit Nautiyal
>>>>>> Sent: Thursday, July 7, 2022 10:57 AM
>>>>>> To: intel-gfx@lists.freedesktop.org
>>>>>> Subject: [Intel-gfx] [PATCH] drm/i915/hdmi: Prune modes that
>>>>>> require
>>>>>> HDMI2.1 FRL
>>>>>>
>>>>>> HDMI2.1 requires some higher resolution video modes to be
>>>>>> enumerated only if HDMI2.1 Fixed Rate Link (FRL) is supported.
>>>>>> Current platforms do not support FRL transmission so prune modes
>>>>>> that require HDMI2.1 FRL.
>>>>>>
>>>>> If the hardware doesn't support FRL then it basically blocks HDMI2.1
>>>> feature.
>>>>> Then it wont be possible to use any resolution above 4k60 is it?
>>>> Yes right. As I understand, the HDMI2.1a supersedes HDMI2.0b, and so
>>>> the
>>>>
>>>> platforms  supporting HDMI2.0 must now pass the HDMI2.1 CTS.
>>>> The HDMI2.1a spec introduces Marketing Feature names for 4K100,
>>>> 4K120, 8k@50, 8k@60 with suffix A, and B.
>>>> Suffix A meaning mode supported without compression, and B meaning,
>>>> mode supported with compression.
>>>>
>>>> There are CTS tests that expect these modes not to be enumerated, if
>>>> the source does support the given requirements.
>>>>
>>>>
>>> Thanks for the clarification.
>>>
>>>>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>>>> ---
>>>>>>     drivers/gpu/drm/i915/display/intel_hdmi.c | 21
>>>> +++++++++++++++++++++
>>>>>>     1 file changed, 21 insertions(+)
>>>>>>
>>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c
>>>>>> b/drivers/gpu/drm/i915/display/intel_hdmi.c
>>>>>> index ebd91aa69dd2..93c00b61795f 100644
>>>>>> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
>>>>>> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
>>>>>> @@ -1974,6 +1974,20 @@ intel_hdmi_mode_clock_valid(struct
>>>>>> drm_connector *connector, int clock,
>>>>>>     	return status;
>>>>>>     }
>>>>>>
>>>>>> +/*
>>>>>> + * HDMI2.1 requires higher resolution modes like 8k60, 4K120 to be
>>>>>> + * enumerated only if FRL is supported. Platforms not supporting
>>>>>> +FRL
>>>>>> + * must prune these modes.
>>>>>> + */
>>>>>> +static bool
>>>>>> +hdmi21_frl_quirk(int dotclock, bool frl_supported) {
>>>>>> +	if (dotclock >= 600000 && !frl_supported)
>>>>>> +		return true;
>>>>>> +
>>>>>> +	return false;
>>>>>> +}
>>>>>> +
>>>>>>     static enum drm_mode_status
>>>>>>     intel_hdmi_mode_valid(struct drm_connector *connector,
>>>>>>     		      struct drm_display_mode *mode) @@ -2001,6 +2015,13
>>>> @@
>>>>>> intel_hdmi_mode_valid(struct drm_connector *connector,
>>>>>>     		clock *= 2;
>>>>>>     	}
>>>>>>
>>>>>> +	/*
>>>>>> +	 * Current Platforms do not support HDMI2.1 FRL mode of
>>>>>> transmission,
>>>>>> +	 * so prune the modes that require FRL.
>>>>>> +	 */
>>>>>> +	if (hdmi21_frl_quirk(clock, false))
>>>>>> +		return MODE_BAD;
>>>>>> +
>>>>> Instead of setting this frl_supported as false, can we get this info
>>>>> from hardware, so that when our hardware supports it later it would
>>>>> be
>>>> easy to enable this.
>>>>
>>>> We can have something like:
>>>>
>>>> src_supports_frl()
>>>>
>>>> {
>>>>
>>>> /* FRL not supported in
>>>>
>>>> return false;
>>>>
>>>> }
>>>>
>>> Yes something like this looks good. It would be a good design to judge
>>> this based on the Display version.
>> I do agree, we need to have this check when we have HDMI2.1 support for
>> any platform.
>>
>> In future patches, when FRL transmission will be enabled, at that time it
>> would make sense to check for display version, and parse from VBT about
>> what rate it allows  etc.
>>
> Awaiting patch with handling this properly!
> Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>


Thanks Arun for the for the review.

I have sent another version of the patch, with some changes.

As discussed, check for FRL support, will be added while enabling FRL in 
future platforms, so removed the function altogether.

Regards,

Ankit

>
> Thanks and Regards,
> Arun R Murthy
> -------------------
