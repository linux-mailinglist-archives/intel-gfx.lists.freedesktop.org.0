Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ECD6B623AC6
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Nov 2022 05:05:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB44210E65D;
	Thu, 10 Nov 2022 04:05:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25C1C10E65C
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Nov 2022 04:05:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668053147; x=1699589147;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SNlnQkFgwIRTLpRDKn5kSoTjy59UUizynKF07BtEiSs=;
 b=L9cZ9yup7q6w8giOW5AFdJX+Kt8Owxlcde1/oWBv10AmJ4eJKZfXKqUm
 Vr/uCT7ZwLlLoEpXoXXbwuZUzkFMkPS/WcyE60xB5qlqPRIlU0IABMSzV
 Lts/XvHUc+M+G1o3FXvolNXZKFnMjdaWfGR8aGAtvqA9gKXsmJ20++PoO
 nm8O8L1tMLDRs1uVpmzuR9sUWb0DnsnDCsLrC9FOw/jpNKE/U2A+psOIX
 rorrfkvs6Wwcl0NW42zyAhrsiP0mkWQIsiQ1l3CNNQoPx8xHSpgwqpfP2
 W29evE72QVSE1PrApvfyrA2c9fPeSkm1uzawzwOJ13VxKLYhpcV3CG9OM w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="311203924"
X-IronPort-AV: E=Sophos;i="5.96,152,1665471600"; d="scan'208";a="311203924"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 20:05:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="762133947"
X-IronPort-AV: E=Sophos;i="5.96,152,1665471600"; d="scan'208";a="762133947"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP; 09 Nov 2022 20:05:45 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 9 Nov 2022 20:05:45 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 9 Nov 2022 20:05:45 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 9 Nov 2022 20:05:45 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 9 Nov 2022 20:05:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L7gwCbrugUrFr8aj1QcvH/HfX4sceOo/UfWk4mV2/NSPRWZuxccOKKuVPPTXazjO33fFXaIyKgvdJTyO87EJ1ENMcrMZABN5y159F856mfJZIqgcP8tO77MGQlPQVCVDEGYo3Wr1sYjnvKpsGPcSFGJu7h13O7V5Yv5pXYdHeNLsnAJ37DSvoM17GQmBEfhALYv1jXkFJcunzG+UlCKKjVQ8GVKXarKaXcZ6bJ8hgGXUMAosc0lmlyrL8CAVvVPVFWH2F5iiRr7z22ctaLB6FMf3k2rMnjPyAnipj6Nm/NhSgkixw8/dvEEVQkbJ590j5OhIow7JmkdDYZYHmEJ6ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KHy1MrXjv9oG0Xz8/2jx8719ZigMXhLJAIE5MH1r0M8=;
 b=JBtC1kdIiPl+v75K32u9gqqo3pKtHpMtFTfyA1QCgxpRiTQ5gEgyJ6kBlnMS7pmYQ3ddFZIpzCWH18wWKDZLNac5b7tYW1zILhhp3ZK9z3DubPaWLydIzFAmJLUwCQFYV+pBFZq41oJkCZ0onRrSfEiu2B+EXDQs8H8GjyAWbx2P9rSdzLiRNRdc3Wn4oxqv0/Mhjl041f0qhDaPBGODMBKerb6lQxzVVzuKezoMmPGo6b6QLUjLQPG+Onc5U23ddo+7ii7C/eJfIoi+LOPyHz+HBnGh2zQstYhTQXE/iWPR0jpUuZDM+2TN7rNlAMvFgKEkFQmT1CK9bfHp5BFZJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH8PR11MB6706.namprd11.prod.outlook.com (2603:10b6:510:1c5::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.27; Thu, 10 Nov
 2022 04:05:37 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::21a6:81fa:3ed7:a486]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::21a6:81fa:3ed7:a486%9]) with mapi id 15.20.5791.027; Thu, 10 Nov 2022
 04:05:37 +0000
Message-ID: <01aa693d-7b1b-4310-79ae-8aecf43644f5@intel.com>
Date: Thu, 10 Nov 2022 09:35:28 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.4.1
Content-Language: en-US
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20221026113906.10551-1-ville.syrjala@linux.intel.com>
 <20221026113906.10551-12-ville.syrjala@linux.intel.com>
 <ae278ba0-f13a-8218-3b82-76b634deadb0@intel.com> <Y2Temsw9pX+KEy2E@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Y2Temsw9pX+KEy2E@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0239.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:eb::18) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH8PR11MB6706:EE_
X-MS-Office365-Filtering-Correlation-Id: 6f6d3821-82fd-4343-3b9d-08dac2d0d30a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Mk20Ez/rwMZXf0Lk1jMZMQFu+mVGYidC8no9x1EagwpoyLMM+ENvCSA4gZ/PbHPZcZ73LiLfNWn9/cdEe7QYfKJzvI+CG34PMoiWj0qcRtx3lEN1wa1NMJgvcKWf4Cxnn6fZqzGnJ4Rz451gO2TPo4Q8N8H9YXFMeUKZi8k7Ct6zCDv1ZVuXNt07n9UIi3184voj2UxFper/9MvkfWQzNldQcI9GOP89zRs0aa5Hwk9URt4vHg6a6wsC0n9gSQAokNQFjKeiBYXQqpzRnl41LuI+NApi/2diONsJLSTXlLBplTkXct4/LahXD6KDekBv0lHPEtjucWGYB4nZsnTJlKR2cHb+9f2XdshrcDRgkzduDN/AdIm8GNbOYiqiEC/rqgDtBpGuWdeE4PflpVXJVLQADi6d/Tj4zTLLtS1EMHnOlINOo1dkUdUk/1JA17WkTyHSxhWfEAYWAmPKy+1W+F2R4hjyzeBlMrybTLeAT5mp0q9fwjzqBqF3Zq2ZM6fWzOi+De59YjhPbR/RWWq8LHFNklJ+p6MZQeteugjJSDWAcgrNFVZ/UkPYOyKZELIKOzlomLAPwb/KR/0zaHZ9T5mKItd6KIBPOTI2b4/xu5XOOZsiD0EwkkDJxVwSy3t6tiiGmxPnbowYnjpMojGbK9Y77A3JmXEpGTWaqsCM4YKmBQt1Wr9acaH+vdrZLjPQ1Sr1rA3SHuMBIpCmVtgToq58+6ZZ5u7kpPrO12DXdLLFLff+LgN9ySTgKpSqd6pjKZsfAn+qzRK1cJbMAyl0KJn7Lq75eeViVld74D6LPUw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(39860400002)(376002)(346002)(136003)(366004)(451199015)(55236004)(8936002)(26005)(186003)(6512007)(6506007)(66476007)(66946007)(5660300002)(66556008)(2616005)(53546011)(8676002)(316002)(41300700001)(4326008)(6916009)(36756003)(82960400001)(66574015)(38100700002)(6666004)(86362001)(31696002)(478600001)(83380400001)(6486002)(2906002)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NWpQS2lDL0ExelVja2MwVFBlTkIxWkxqSWZUNXVMWGxBTkl6bUVBSHo1dGUy?=
 =?utf-8?B?SDN1SGRKdTUxK1pPVmpjNVJqdHhKOWdTRHJ5WnVsZjJ2Y1NHWTUvMXV6QWFX?=
 =?utf-8?B?S0NZUU9WZmNScTlNSlhzWksyTml1aWJzdGxsa0daV0JTaFpZVStHN0xoZGtJ?=
 =?utf-8?B?VWc0ZEFHZytibGcwaFJZQzJod2hjN3dDRWtjLzZBN3RDdFp1b25WN005U1RO?=
 =?utf-8?B?SVhGb1V3QTlVRHNBeCtzK2h4alVHOTRIMWg0bFZBOUhiMERpZEd4V2ZlVEtG?=
 =?utf-8?B?RkRCZ2hyR21sOVREZFNYS0pUUE9WQVVGWElUZFAya05uSjhucUNzRWRtamEz?=
 =?utf-8?B?dERmUkIvSU9yU3FPOVYyb0xvK2o5ZVhpNk9ocjhuRU84Unh5K2o2OFpkRGEw?=
 =?utf-8?B?TnlWL3hBVlNScitxWXJYYjR3RkpoSktlcjRTUXYyT0xIYi9hcGRGVlFMNVow?=
 =?utf-8?B?QVNFeDdtVmtDV0xPM2NZQ3hCWTc4SVgyVzZndTBGWHQ4bzhVblFpNm1tR3Mw?=
 =?utf-8?B?MWVCRi8vSm9RbnNyQVpRVWwyZWxYSCtJUWRFWHNlM3R5OWhPZnFteG0wck5J?=
 =?utf-8?B?Q1FSNTd1Ylh2aUdzR3FGZFFnZ3UvN0Y2Q1lLREpld0FBV2Yxb2ZaOXg0MUJS?=
 =?utf-8?B?NWZ3Y1h4WFBEMURlMjBPTzc1YmI5TjBZYVROOTFrVVFlQlJCaTBrNTd0V3FR?=
 =?utf-8?B?VnJ1UTFnM0hzUHZadmRSb05IbEVoNjVBVVhDeXk4RDJMcDB0d2ZDQlJ6WDhE?=
 =?utf-8?B?NVBvd1lzYjE2S0c4ZG5rSDV5SVh4U1lTbm8vZGtGQ2JlL2diUEFQM2pYaE5p?=
 =?utf-8?B?QklHK251bFBEc3FVRjNwNFBKTDUzRlhjT04rblE5VGhVWVc2ZUxxeGZmOTJy?=
 =?utf-8?B?aHlpRERxT0NMYys4eGlmbk50MngrQmZZYnMrNTllcHVmRzg0czNoSkdybUtF?=
 =?utf-8?B?bFBYdlZCcDA5WTBZdVZBaE14VnFxazlzQUo3VnluakpZNFR3aVBNNnljYXZy?=
 =?utf-8?B?K2s4TEZJTFJtZ0hZWEhLTzlwNVA3Zk55YkRGZlg0cWVMT1lQT2RYMTJiSEdP?=
 =?utf-8?B?TTZjWDNJWjN3RkhvNy8xMG1IUnVDY3pYWnAxOUNTeXpRamU4VlFXVUROa3JB?=
 =?utf-8?B?a0xTSHpvUWFLZis4VkFEZU1FYitzVE1KeHp0SDAxZU15MGNMbU9zSUt5Ylh3?=
 =?utf-8?B?bTRheFNhTk9qVlpWNVNBYmx1WEl2d2kzR0pPTGRKRWNqcGxkVjl4N0x5aUJV?=
 =?utf-8?B?aEc0VHVVR1gzbzVUZkdHNWdTWUZhNmRIWC9Ma2Rnek5EbzhhZWp3SjRnaXJC?=
 =?utf-8?B?aGFaN0U0ZHU1NzhLRFRpRG45M3E0WG9WL3p6cytLV2VFZEV0Wk16UFFUTHJE?=
 =?utf-8?B?YXNGU04xbTZTMEZ5MDRpVGZDbWIyZGxxVHVVOXhRUjdFTTFBd0tMSnFqNXVS?=
 =?utf-8?B?K2M5RnlFNmE1aFVLdFpSV1E0VGsvNHhSZmxSTnMrblhEL29FWVhNdm9Qd2lm?=
 =?utf-8?B?aVl6YjJ1WDc4N0U1TFVBa29tdVhQVlhXOFRxUU4vZVdwdjE1dWIyS0h3UnZu?=
 =?utf-8?B?NE9GTm81SC9lcHViT2ZpY1VUWFNmWHRCOWhFcys3OE1YaHpVaDJPM09IOEU0?=
 =?utf-8?B?QUhvd1NCQ3UxeXkrdFVINTNld1F1UUt4d3g5M0Y0cVdFUjBBRyt3bnU3cEZr?=
 =?utf-8?B?QStkTSthQmp2MWVRbW5tRTNuL2VKcndTQ28zQ2xXT3BUcVQ4d2xmbEJRUjEv?=
 =?utf-8?B?cVB3UjNEaitRakc1Skc0Q3dpTG44MS9FYWtxQ0MyQlYwUWxlUENRdStGV055?=
 =?utf-8?B?Vm1NVGhyTFArdk9COGg5djdEY2R0OE5OcU5ZaWUyaTFQVDMweS9lZk55RXBJ?=
 =?utf-8?B?L09JdVkyUWw5R3lMc2lvdUwyY1VYcmMxczFyUUxqN0h2alJiWUVHa1dpZ0Qz?=
 =?utf-8?B?dHBlMzhZRk1QQ0R5QjRPOXdxaGQ3cGROVFZjMEhkUFZseGZhYzhkQzZxT1lS?=
 =?utf-8?B?S0NIT1A0NkR4Z1JoaWZUcWZxRGpZRkhUOFQ2ckxSVWNxcWhPVVQ0S1R6SzZK?=
 =?utf-8?B?WCsvbEpPZDZQUEthR3JjRTBYeEJJQUc1ZWR3M0M2SkFWeDNDTCtlUkN3K0xw?=
 =?utf-8?B?Q0NzbFRpdXh6amhYWlpNQll1KzN1d1o3WlJPMHpEbGRJUUptaU5CYmtncDV4?=
 =?utf-8?B?NFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f6d3821-82fd-4343-3b9d-08dac2d0d30a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Nov 2022 04:05:37.7089 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8EvJQpd4aS7W1rLOj7GCwzL4udQYlTYJGHPGVg9EugW2pgpHr8n7yyDa6W9wD8XMBivrte149fZwg/BOpHM7VqTf9cDxUIqMBAwvqs00sLk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6706
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 11/11] drm/i915: Create resized LUTs for
 ivb+ split gamma mode
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


On 11/4/2022 3:12 PM, Ville Syrjälä wrote:
> On Fri, Nov 04, 2022 at 10:49:39AM +0530, Nautiyal, Ankit K wrote:
>> Patch looks good to me.
>>
>> Minor suggestions inline:
>>
>> On 10/26/2022 5:09 PM, Ville Syrjala wrote:
>>> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>>
>>> Currently when opeating in split gamma mode we do the
>> nitpick: 'operating' typo.
>>> "skip ever other sw LUT entry" trick in the low level
>>> LUT programming/readout functions. That is very annoying
>>> and a big hinderance to revamping the color management
>>> uapi.
>>>
>>> Let's get rid of that problem by making half sized copies
>>> of the software LUTs and plugging those into the internal
>>> {pre,post}_csc_lut attachment points (instead of the sticking
>>> the uapi provide sw LUTs there directly).
>>>
>>> With this the low level stuff will operate purely in terms
>>> the hardware LUT sizes, and all uapi nonsense is contained
>>> to the atomic check phase. The one thing we do lose is
>>> intel_color_assert_luts() since we no longer have a way to
>>> check that the uapi LUTs were correctly used when generating
>>> the internal copies. But that seems like a price worth paying.
>>>
>>> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/display/intel_color.c | 81 +++++++++++++++++-----
>>>    1 file changed, 64 insertions(+), 17 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
>>> index 33871bfacee7..d48904f90e3a 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_color.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_color.c
>>> @@ -597,6 +597,30 @@ create_linear_lut(struct drm_i915_private *i915, int lut_size)
>>>    	return blob;
>>>    }
>>>    
>>> +static struct drm_property_blob *
>>> +create_resized_lut(struct drm_i915_private *i915,
>>> +		   const struct drm_property_blob *blob_in, int lut_out_size)
>>> +{
>>> +	int i, lut_in_size = drm_color_lut_size(blob_in);
>>> +	struct drm_property_blob *blob_out;
>>> +	const struct drm_color_lut *lut_in;
>>> +	struct drm_color_lut *lut_out;
>>> +
>>> +	blob_out = drm_property_create_blob(&i915->drm,
>>> +					    sizeof(lut_out[0]) * lut_out_size,
>>> +					    NULL);
>>> +	if (IS_ERR(blob_out))
>>> +		return blob_out;
>>> +
>>> +	lut_in = blob_in->data;
>>> +	lut_out = blob_out->data;
>>> +
>>> +	for (i = 0; i < lut_out_size; i++)
>>> +		lut_out[i] = lut_in[i * (lut_in_size - 1) / (lut_out_size - 1)];
>>> +
>>> +	return blob_out;
>>> +}
>>> +
>>>    static void i9xx_load_lut_8(struct intel_crtc *crtc,
>>>    			    const struct drm_property_blob *blob)
>>>    {
>>> @@ -723,19 +747,14 @@ static void ivb_load_lut_10(struct intel_crtc *crtc,
>>>    			    u32 prec_index)
>>>    {
>>>    	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>>> -	int hw_lut_size = ivb_lut_10_size(prec_index);
>>>    	const struct drm_color_lut *lut = blob->data;
>>>    	int i, lut_size = drm_color_lut_size(blob);
>>>    	enum pipe pipe = crtc->pipe;
>>>    
>>> -	for (i = 0; i < hw_lut_size; i++) {
>>> -		/* We discard half the user entries in split gamma mode */
>>> -		const struct drm_color_lut *entry =
>>> -			&lut[i * (lut_size - 1) / (hw_lut_size - 1)];
>>> -
>>> +	for (i = 0; i < lut_size; i++) {
>>>    		intel_de_write_fw(i915, PREC_PAL_INDEX(pipe), prec_index++);
>>>    		intel_de_write_fw(i915, PREC_PAL_DATA(pipe),
>>> -				  ilk_lut_10(entry));
>>> +				  ilk_lut_10(&lut[i]));
>>>    	}
>>>    
>>>    	/*
>>> @@ -751,7 +770,6 @@ static void bdw_load_lut_10(struct intel_crtc *crtc,
>>>    			    u32 prec_index)
>>>    {
>>>    	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>>> -	int hw_lut_size = ivb_lut_10_size(prec_index);
>>>    	const struct drm_color_lut *lut = blob->data;
>>>    	int i, lut_size = drm_color_lut_size(blob);
>>>    	enum pipe pipe = crtc->pipe;
>>> @@ -759,14 +777,9 @@ static void bdw_load_lut_10(struct intel_crtc *crtc,
>>>    	intel_de_write_fw(i915, PREC_PAL_INDEX(pipe),
>>>    			  prec_index | PAL_PREC_AUTO_INCREMENT);
>>>    
>>> -	for (i = 0; i < hw_lut_size; i++) {
>>> -		/* We discard half the user entries in split gamma mode */
>>> -		const struct drm_color_lut *entry =
>>> -			&lut[i * (lut_size - 1) / (hw_lut_size - 1)];
>>> -
>>> +	for (i = 0; i < lut_size; i++)
>>>    		intel_de_write_fw(i915, PREC_PAL_DATA(pipe),
>>> -				  ilk_lut_10(entry));
>>> -	}
>>> +				  ilk_lut_10(&lut[i]));
>>>    
>>>    	/*
>>>    	 * Reset the index, otherwise it prevents the legacy palette to be
>>> @@ -1343,7 +1356,7 @@ void intel_color_assert_luts(const struct intel_crtc_state *crtc_state)
>>>    			    crtc_state->pre_csc_lut != i915->display.color.glk_linear_degamma_lut);
>>>    		drm_WARN_ON(&i915->drm,
>>>    			    crtc_state->post_csc_lut != crtc_state->hw.gamma_lut);
>>> -	} else {
>>> +	} else if (crtc_state->gamma_mode != GAMMA_MODE_MODE_SPLIT) {
>>>    		drm_WARN_ON(&i915->drm,
>>>    			    crtc_state->pre_csc_lut != crtc_state->hw.degamma_lut &&
>>>    			    crtc_state->pre_csc_lut != crtc_state->hw.gamma_lut);
>>> @@ -1564,6 +1577,38 @@ static u32 ivb_csc_mode(const struct intel_crtc_state *crtc_state)
>>>    	return CSC_POSITION_BEFORE_GAMMA;
>>>    }
>>>    
>>> +static int ivb_assign_luts(struct intel_crtc_state *crtc_state)
>>> +{
>>> +	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
>>> +	struct drm_property_blob *degamma_lut, *gamma_lut;
>>> +
>>> +	if (crtc_state->gamma_mode != GAMMA_MODE_MODE_SPLIT) {
>>> +		ilk_assign_luts(crtc_state);
>>> +		return 0;
>>> +	}
>>> +
>>> +	drm_WARN_ON(&i915->drm, drm_color_lut_size(crtc_state->hw.degamma_lut) != 1024);
>>> +	drm_WARN_ON(&i915->drm, drm_color_lut_size(crtc_state->hw.gamma_lut) != 1024);
>> Does it make sense to use some macro for LUT size for split gamma case
>> and regular case?
>>
>> Same thing perhaps can be used in ivb_lut_10_size?
> I don't think macros would be really helpful. I guess I
> could have used ivb_lut_10_size() for the create_resized_lut()
> calls below. And these WARNs I guess could have just used
> device info stuff instead.

Using ivb_lut_10_size() should be good enough, I think.

In any case, this is a just a minor suggestion. Patch looks good to me.

With the small typo fixed in commit message:

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


Regards,

Ankit


> Or I could just drop them entirely
> since they aren't really checking anything super important, and
> the create_resized_lut() would work with any input LUT size anyway.
>
> Thinking a bit further we could certainly consider extending
> the ivb_lut_10_size()/glk_degamma_lut_size() approach to cover
> all the gamma modes. Though I think it would probably make sense
> to implement that as some kind of struct based approach where we
> describe each LUT format in a struct. Would also be more in line
> with what we've been thinking for the uapi revamp.
>
