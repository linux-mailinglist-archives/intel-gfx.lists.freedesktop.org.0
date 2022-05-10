Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E88AB52112B
	for <lists+intel-gfx@lfdr.de>; Tue, 10 May 2022 11:39:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38D2710E165;
	Tue, 10 May 2022 09:39:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19F8210E165
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 May 2022 09:39:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652175583; x=1683711583;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jxkUO75GsuONAxUQY7oOcQmCW8f0RCAeP7YVJ3q1wX8=;
 b=PRpPYY88dF6Z22e/5AeG4t6y4U58JBMQ6suGDws85jOWtOQu8ASsAHuS
 B/pREQsXQIWbdsPXi8FPMjGGEAq8U72f5ttlLYSILNSRVOXmC2c/1XIXx
 q4gmCMSvAkabZS9SFmDGcrPD/UIsZ/rY8kuPqZBF4ZFkJVjy6pX3U8GY/
 jaOO33diJBhSGgIsfFI27JBoB1NeBZDiQBUzKs0pLtrvwJv4WHVeDRJyJ
 ehUlihRrLLQoXNvQZZe9jwHRDJIYvr3A+yE19bbtAGRjd3IL/c/CyjQYZ
 RDKC4GObD+XLNdngt/9Wf5H3115CO5IaqeoKQmkuLCL9VJseeVw0ePZC5 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10342"; a="269255526"
X-IronPort-AV: E=Sophos;i="5.91,214,1647327600"; d="scan'208";a="269255526"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2022 02:39:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,214,1647327600"; d="scan'208";a="552753289"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga002.jf.intel.com with ESMTP; 10 May 2022 02:39:42 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 10 May 2022 02:39:42 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 10 May 2022 02:39:41 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 10 May 2022 02:39:41 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 10 May 2022 02:39:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mIxn5J7CBcCbeZTcJ5tXKnaoiwyvKl90zjCXc6kFudO02LPAXh/S1fF5YKw1gAv3xBuT38Kb5kHvu1n8ZOdhZLVKWBSTBFMdrevRTJ1MTjrw0wyDW+CQFJeLdXfaNCTPqywWHvGTR9pdLKVOMb2Inw+XRq0Mr0JX+XHMgsaQf43ENwAVSb+I2m9C/uHLqhFyEk8Yc+WlqppPNcIdPqEdlIWVbQ/QpugcKoTDzhz/OsmZOgFm72TfNb4udKc3/hpkdHBPBE13kLSI0p2wp+voXaaTx+7U/AS+2p6HmyRj6n0aByqAgYzpYdj7kl372upfpvN8tb/ZmdVkIGJYQstoTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iAlL/po72qAyDUDwO2WsRnYBiBZF0RKscmemu9GVkI8=;
 b=ZPGO0+vyjH/46nGZTEFdGoXFbgsYgzUE1hZ1oHc+VOeCVEUvmO/bLmz/j44Mu7uxH0rmJO7fKFIqUDPoysGHiLBHvVkWUw1uV4LCf/5YohwZWmYhmxaPeNpBUZ0yapye1LZt+eK/0y8ee18q9eH2F229zXxFVY98YWiBFNurn0WRf5f8N8VM8zpp3jPDMWMQHhZ3kpNv7vqHF+QNH0UHol5cqskbiui56O4ijAF822RNnA0oaEt7+Rmp4hRfqUXNGPTvD8VZAnZse40F+yZqDc+myK5Ih8bNRynelT4IE9bgdzeqRIq0rlaYy+vZpVhFLCeLgg/yBhmfV3f+eFYEgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB3180.namprd11.prod.outlook.com (2603:10b6:5:9::13) by
 DM8PR11MB5719.namprd11.prod.outlook.com (2603:10b6:8:10::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5227.21; Tue, 10 May 2022 09:39:39 +0000
Received: from DM6PR11MB3180.namprd11.prod.outlook.com
 ([fe80::b1fa:393c:9fb6:6871]) by DM6PR11MB3180.namprd11.prod.outlook.com
 ([fe80::b1fa:393c:9fb6:6871%5]) with mapi id 15.20.5227.023; Tue, 10 May 2022
 09:39:39 +0000
Message-ID: <d0fe2315-563d-31b1-28eb-7816800270dd@intel.com>
Date: Tue, 10 May 2022 11:39:34 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.9.0
Content-Language: en-US
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Ashutosh Dixit
 <ashutosh.dixit@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <cover.1651261886.git.ashutosh.dixit@intel.com>
 <06685e6216a1afc79bdf76bd1cfafbc929d4e376.1651261886.git.ashutosh.dixit@intel.com>
 <91a24f6c-4eb6-cc40-f252-d2d45673f932@linux.intel.com>
 <b1bf937f-c38f-f1fb-1deb-1b4c31daae71@intel.com>
 <a37189a5-7c2e-0331-819b-d85603a2de39@linux.intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <a37189a5-7c2e-0331-819b-d85603a2de39@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: LO2P265CA0474.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a2::30) To DM6PR11MB3180.namprd11.prod.outlook.com
 (2603:10b6:5:9::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: eb0d5ab5-a997-43b5-ad6f-08da326900e0
X-MS-TrafficTypeDiagnostic: DM8PR11MB5719:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <DM8PR11MB5719414F7406CC790C199BF8EBC99@DM8PR11MB5719.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8ARlzxkb/jBRGq2i/Of8ODDMTBsBlOPYxCJMnbxL4+IOfgiU9kLHyls7fOcmxLSFMaK0oKaVcpSyTlRvVVJLZKL8O8MS0elO+Q46PIxQ5B8PlJ7zEJNtiRTb/8NbHK5LBryxXEFfViKu/WkhLxf4P/C20ATny961wiQaA8nIjpCHRVweFNQE4vaIntE4/J4EKrO7eyWi1K+0YB9IBvAhUtV6w3PNDRy6bR5k98xwuCT/InUEAchGLyZoHZbIeep9yyMYcQ7x7mJBz7+DZVITdqObXn6i6DDCP4IwwgzGSUC3L3ywuvSWMBk3S4VTo4IaXz3w7OCxL+Lx/TdQ2hnSoYzYlvqXyKanMze5XCIUejehr5KsttUA9cqY8T6LRk5ItFRPrGqEillKKSpV5WfJL4GfRR9AntZ/QD2G9vSLwx5qb99HjwKo6BtDP5v3c7gUyMqsRmwPcriQMnhvtOMqdO7uE2wzPv+uzipP1Ui/RhYH+JQPELNtkyGUd8oGTq8NoxQQXUb+AoWJuG1rEf7uXPd0jjUuP+Nj6l6miqIXFrop7OIa8yvE4cQOFgMo+xYIIUhJJAGVKV7xnkQx5amJWYazVVBa5a7Wrf2pZBXUrzz0mnRl+cxGuBp75V6L9V6PZlx2qfjEMSOpDcdRg8bA+at3ZJjqgeoOFDtiSqsrssETWA6DTwMlTc+ZI0DCTozlhAw8FMJn1H5l10qiWfjDUnIZL6nBuVYqd4TjXdzXxPI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(6486002)(6512007)(6666004)(53546011)(36916002)(6506007)(86362001)(26005)(508600001)(110136005)(82960400001)(38100700002)(186003)(2616005)(31696002)(83380400001)(5660300002)(31686004)(8936002)(36756003)(66556008)(66476007)(66946007)(316002)(4326008)(44832011)(2906002)(8676002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OWt1NW1sMjdJL3lGSHlxV1FvdFdobVhsRTVNaFJZUFN1bWw4VWIyenp0UHJx?=
 =?utf-8?B?ZlhBQ3dIVHNYYXc4REpQMzhReVp2bFhSYkFBSG55RVp3aXJFSVRHUnFXemRs?=
 =?utf-8?B?UVcvTU1GQW5MZXIrc0NwMy9zQjM5K0h0T1RSb3ZhVGFrWnN2dzduOFN6NHlh?=
 =?utf-8?B?K3hMQVMwSnpmK1h5ZGk4VDRtZlpsVVBXR3dvRUhNVWFKN08rYjlWdStSYnFZ?=
 =?utf-8?B?UnQvZWoydEVQUHZrbnpMWThUc0FwWTI1SUFJWXJRSnpWMzU2VGJvVldtb2Fa?=
 =?utf-8?B?b0xyY0wva1B0d01iMnpra0djUUVaeFQ1RUxXdi81WDljdXIwbUdOTW9wTEg4?=
 =?utf-8?B?Qzhlb3czNnpzejZrdzdWczZYQjNNbm5seFh1ZjZCN3loRUVUQ1N0MUJsYUlZ?=
 =?utf-8?B?S0N3dEFDSmZBclhpRDdXSFJDOXRnQm9HcEgxL1BvRE81eW1va0tJVXFhNnZT?=
 =?utf-8?B?UEx5U2l3MVUzb2FzRXUwaGdCVjVob0l3L2NQaHpOakZRK3hPUXhZQUx2bmpC?=
 =?utf-8?B?ZVcvS0R3azBZVzhhNE92L0JMWlFlQ29oNzZYdXUyZkNlNnJab3VENlpZbEoz?=
 =?utf-8?B?Yk1ET3FVcjRPVEZJSkhHaWxNR1Rpa3htSlZYbFNmMURTSWQ2aVlOOFdpbGx2?=
 =?utf-8?B?UWJEVG9SQ0VoRG9JUUViT2thbGRPenV4SlAvcFlHbjVGOE9BZS9hbkw1aER4?=
 =?utf-8?B?c0djN1ZlQWQ1UExmM1kydWZsMWVGVGorNi9odEp5MlJtcTFFcG5XVmFxUWVr?=
 =?utf-8?B?VTkvaG0xKzVUUWNkV0xWYTNSRjY4RTlQSGdyaWprNm9GTVZKdEp5eDZSTDZm?=
 =?utf-8?B?c29BMlIzV2dmN3FwUDZNWlRzSXRBQk1GQkwxY1NTM1hrd2Y2VzBjVmZsQmN3?=
 =?utf-8?B?aWllZ2lIdW1EdVU2Tlk0V0c3aXNSZHMzN3ZoVEZkcWY4a3FsQjVvMlpiRU5x?=
 =?utf-8?B?T2VBN0hNdndWK3E4VGdKcjNXajR2R3BDWGxRM2Q1OGhvckFoSzlCOUJFZW1p?=
 =?utf-8?B?dTk5Mkk0Q2UvcThOUUVDZlNHWDJGMTFBMXozN1ZjT08rcGh4bzlyMXNyU3hn?=
 =?utf-8?B?RUpqNUJXbU9yWE9TQTl6YnNSdUpxNzdaci9iTzdMNGNmcnlxRXgvYThPdWc3?=
 =?utf-8?B?YytDQUNlanY4RGZUUnFEZVJlYndXOWRTQUszbHJCNnMwYit0NG03cE8rQWYv?=
 =?utf-8?B?enZRK2RNOFFudFYvWGkxRTlhQWt1bTRIZ1kydnh5T0kzOWI5Rk9oay9rUm5Q?=
 =?utf-8?B?VzExSHRjOTM1V25keDVrVWRrWTdFODB4dFpTdi9QR2dIdDIxNEFWL0lMcW0w?=
 =?utf-8?B?QzZONDAvY2x5QStrNno3UFpqOEttc1pSeDVJMmFjSjNwRTQ4c29hY1laVmRZ?=
 =?utf-8?B?ZER1cm5jc3NTcmEyci9vR2FtTVg0VGt6T0hOU0N5UFpkeER3VUkrSGgyT1B2?=
 =?utf-8?B?OTFaT2MwLy9NemNsOCs5WEVRT0xkM3kzbkRiaWVuV2s2ZTBYcmxWRWFFNjkx?=
 =?utf-8?B?Qm9pcGtsUjNjSlpKWEE3UUx5b0dlTEdMbDU4dTMyRnVxV0ZwSUk3TmtHZlQv?=
 =?utf-8?B?R0Y4ajY2dUJReU5nbGFIVTduUHlTdEdXejg0bU1SZkk4VDliVGRobTI0ZG5S?=
 =?utf-8?B?cWxyQm1Xc0paV2VIL1Voc0d5MUZuVmhVaDlFTitiZGJETWZXdE1vMFFTVlZV?=
 =?utf-8?B?OEhtcDZ1LzY3OWViN1hNVS9ZYzQ1WFcvMHo2RDU1Z3dkdmdlWk5vNFFXbkdt?=
 =?utf-8?B?TVpyT2svellqd3NEa09DV2d2RTlZblVVN3NCZ3RHZnZGRCtBeXlMc2ZVVkE5?=
 =?utf-8?B?K29nWE04dVJRbUVrYk01NnNVQWFwU3dqcit5Nk1ORVNodVhYcmlEU1R3eTZ1?=
 =?utf-8?B?V0p2R2hmVUhrMC92SytMV3Y2QU0xWUw3M1NMaTFjTlRpeTk1TDhQdSttWlFo?=
 =?utf-8?B?MjlPSFAvRlNzcElkb3NjWG0ybm4reW1MR2FlS3FjRm9QeXFhQzkxdVZJaGtD?=
 =?utf-8?B?alB2Q2Jsc1k1Qkt5dHdhbmVmbkVCTXhTQURuTHEySEpXcUpCZnNKK2pkQzF4?=
 =?utf-8?B?WUtuYWJXNnJ5NkZ6YTNib0pQbXduaDhiZGVxVDZnQ3RYL2dMWTlvZFpOTk9W?=
 =?utf-8?B?MDJtdEIyZm83S040dkVtWnFDU0NjYkprWVZLYm1Dai9LQ3Z3RmVpbmx1amlR?=
 =?utf-8?B?Nm9aUlFaUlQxaGJLaS9ibmowTFI5T3pvSTZTRjYzcWltTEJwckJQVjlibm9L?=
 =?utf-8?B?ZGNLNk9OSDBrMnEwUko5dFA5V0Rrc203UHFhTzBiOFNqYXR4T3k0NVJ3L1Yy?=
 =?utf-8?B?ZEdBekZDaTJ6VmppMy94ZlR6U2t6MnpVSXVHS201bzJZN1dBYlllL2hPTDRm?=
 =?utf-8?Q?NJQzl2aD9D3oyJ3g=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: eb0d5ab5-a997-43b5-ad6f-08da326900e0
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 May 2022 09:39:39.6838 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LgJY8Dcml6Y1wAT/9B68uJ6+YkxDU5yzG+XVXtXK+PUO3UKBnSvbv2SzbHdC6GnZOXHDoozpuV2bEvQztMUZcg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5719
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 6/8] drm/i915/gt: Fix memory leaks in per-gt
 sysfs
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
Cc: Andi Shyti <andi.shyti@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 10.05.2022 10:18, Tvrtko Ursulin wrote:
>
> On 10/05/2022 08:58, Andrzej Hajda wrote:
>> Hi Tvrtko,
>>
>> On 10.05.2022 09:28, Tvrtko Ursulin wrote:
>>>
>>> On 29/04/2022 20:56, Ashutosh Dixit wrote:
>>>> All kmalloc'd kobjects need a kobject_put() to free memory. For 
>>>> example in
>>>> previous code, kobj_gt_release() never gets called. The requirement of
>>>> kobject_put() now results in a slightly different code organization.
>>>>
>>>> v2: s/gtn/gt/ (Andi)
>>>>
>>>> Cc: Andi Shyti <andi.shyti@intel.com>
>>>> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
>>>> Fixes: b770bcfae9ad ("drm/i915/gt: create per-tile sysfs interface")
>>>> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
>>>> ---
>>>>   drivers/gpu/drm/i915/gt/intel_gt.c       |  1 +
>>>>   drivers/gpu/drm/i915/gt/intel_gt_sysfs.c | 29 
>>>> ++++++++++--------------
>>>>   drivers/gpu/drm/i915/gt/intel_gt_sysfs.h |  6 +----
>>>>   drivers/gpu/drm/i915/gt/intel_gt_types.h |  3 +++
>>>>   drivers/gpu/drm/i915/i915_sysfs.c        |  2 ++
>>>>   5 files changed, 19 insertions(+), 22 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c 
>>>> b/drivers/gpu/drm/i915/gt/intel_gt.c
>>>> index 92394f13b42f..9aede288eb86 100644
>>>> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
>>>> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
>>>> @@ -785,6 +785,7 @@ void intel_gt_driver_unregister(struct intel_gt 
>>>> *gt)
>>>>   {
>>>>       intel_wakeref_t wakeref;
>>>>   +    intel_gt_sysfs_unregister(gt);
>>>>       intel_rps_driver_unregister(&gt->rps);
>>>>       intel_gsc_fini(&gt->gsc);
>>>>   diff --git a/drivers/gpu/drm/i915/gt/intel_gt_sysfs.c 
>>>> b/drivers/gpu/drm/i915/gt/intel_gt_sysfs.c
>>>> index 8ec8bc660c8c..9e4ebf53379b 100644
>>>> --- a/drivers/gpu/drm/i915/gt/intel_gt_sysfs.c
>>>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_sysfs.c
>>>> @@ -24,7 +24,7 @@ bool is_object_gt(struct kobject *kobj)
>>>>     static struct intel_gt *kobj_to_gt(struct kobject *kobj)
>>>>   {
>>>> -    return container_of(kobj, struct kobj_gt, base)->gt;
>>>> +    return container_of(kobj, struct intel_gt, sysfs_gt);
>>>>   }
>>>>     struct intel_gt *intel_gt_sysfs_get_drvdata(struct device *dev,
>>>> @@ -72,9 +72,9 @@ static struct attribute *id_attrs[] = {
>>>>   };
>>>>   ATTRIBUTE_GROUPS(id);
>>>>   +/* A kobject needs a release() method even if it does nothing */
>>>>   static void kobj_gt_release(struct kobject *kobj)
>>>>   {
>>>> -    kfree(kobj);
>>>>   }
>>>>     static struct kobj_type kobj_gt_type = {
>>>> @@ -85,8 +85,6 @@ static struct kobj_type kobj_gt_type = {
>>>>     void intel_gt_sysfs_register(struct intel_gt *gt)
>>>>   {
>>>> -    struct kobj_gt *kg;
>>>> -
>>>>       /*
>>>>        * We need to make things right with the
>>>>        * ABI compatibility. The files were originally
>>>> @@ -98,25 +96,22 @@ void intel_gt_sysfs_register(struct intel_gt *gt)
>>>>       if (gt_is_root(gt))
>>>>           intel_gt_sysfs_pm_init(gt, gt_get_parent_obj(gt));
>>>>   -    kg = kzalloc(sizeof(*kg), GFP_KERNEL);
>>>> -    if (!kg)
>>>> +    /* init and xfer ownership to sysfs tree */
>>>> +    if (kobject_init_and_add(&gt->sysfs_gt, &kobj_gt_type,
>>>> +                 gt->i915->sysfs_gt, "gt%d", gt->info.id))
>>>
>>> Was there closure/agreement on the matter of whether or not there is 
>>> a potential race between "kfree(gt)" and sysfs access (last put from 
>>> sysfs that is)? I've noticed Andrzej and Ashutosh were discussing it 
>>> but did not read all the details.
>>>
>>
>> Not really :)
>> IMO docs are against this practice, Ashutosh shows examples of this 
>> practice in code and according to his analysis it is safe.
>> I gave up looking for contradictions :) Either it is OK, kobject is 
>> not fully shared object, docs are obsolete and needs update, either 
>> the patch is wrong.
>> Anyway finally I tend to accept this solution, I failed to prove it 
>> is wrong :)
>
> Like a question of whether hotunplug can be triggered while userspace 
> is sitting in a sysfs hook? Final kfree then has to be delayed until 
> userspace exists.
>
> Btw where is the "kfree(gt)" for the tiles on the PCI remove path? I 
> can't find it.. Do we have a leak?

intel_gt_tile_cleanup ?

>
> Regards,
>
> Tvrtko

