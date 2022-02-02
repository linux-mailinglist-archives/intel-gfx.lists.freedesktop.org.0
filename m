Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D67074A75F7
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Feb 2022 17:35:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05A2810E389;
	Wed,  2 Feb 2022 16:35:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E1FB10E389
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Feb 2022 16:35:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643819717; x=1675355717;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=V7d4+rvvp3M3h93lVvZTOZSmr4fbjQtjroUy8pyZw1U=;
 b=SULZxm1/5pI9yKHhFkRXMzOmMsB5NgnJKXUyJeH/HoHPx1tha9NoL/Ko
 Ztng+aHQQ+a0OKC3UAXAeIndiRyHPijqWP1GkDSTmOU+JCNZjk4ZBDrox
 WXOSnz5iMfD15IGTVdITHz9b2+ZIBaSMcZei/HvQPK2V0lo15nLSXXo8i
 VM2jWkhHGeOcPjBTWJlOq+fUWAEfpGRM2Ih1369yk24+fqYXD6nozh/0S
 VR0rlPxM6uyr8GcxE35zoAQq5Eo/qyTspaEw0mxl6BQYKxEVRL6yVA8o1
 JYLhhkHLsgwk4qms5KDZ5UaxnCFBVNVkjsNMXnkLEy/LCtK1mD2L6k9C0 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10246"; a="247725862"
X-IronPort-AV: E=Sophos;i="5.88,337,1635231600"; d="scan'208";a="247725862"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2022 08:35:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,337,1635231600"; d="scan'208";a="538321685"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga008.jf.intel.com with ESMTP; 02 Feb 2022 08:35:16 -0800
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 2 Feb 2022 08:35:16 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 2 Feb 2022 08:35:16 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 2 Feb 2022 08:35:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GLmx4fU6y6VqehSln5o3C+GR3lqeHuguUKUX1jtbu3nobMAcI53qtSFAT8V/XheNwG48YB3NrpbD62jwL85k/KnRRfE9npcTUdGNgQyNYN8jxJE36lENrAoY9wOTaOXcx3WHcL8cJKiO9C9zBn1UP4HPG2KVBGF9abTu9OUDKGUQIX2dfSsXkcR/6oSs6YnDxTVJALhDg9MTknM/m41TmiOqXeX1UemEo36LuD8zJlsy5ruz97fxI5+ZBFfvQnrH+qnfVWaN9Anua00L351YJXD2GJgKQBqGcG/zoihkHPo93x5MIjgWEqBnHLvMSGv9rWdcLJBRnqfL9/9NsiLqxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0lcfTg7gL6RTl7JanWv8lckaf+yiiEK5qz042N72kK8=;
 b=OXY+lAFeh+zRGBEJz99hCK0AqGOHcu7fzi7WlEdCNqgPQjaGpaIZcTk88f3PXMLieWAXpiW8nkfsS58MquufJK6OyPHPOytvQ5lmiitBlmuk3oP/2r7eOacoAdqi6DkLayyD/KQUgfv6GtyJX4CTPLD9/XkrHxJ8+4dBWyTvj1trXVRhD8UjYoQY04Jhxgas7+De4aIL9Zy52o46u3VEPfLSV6XYXZJv/vVNF2zNHA8IkkCMORX4WvD8/r68xCmZHzpDW7JNa1pYbZYBqCgt9yQQgYILEj2bQYTAGXocfMrGIjEOCmXuiLi2OvQH0d2dJ7p4Zx+mij8yf8FEisDuDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1645.namprd11.prod.outlook.com (2603:10b6:301:b::12)
 by DM6PR11MB4012.namprd11.prod.outlook.com (2603:10b6:5:6::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4930.19; Wed, 2 Feb 2022 16:35:07 +0000
Received: from MWHPR11MB1645.namprd11.prod.outlook.com
 ([fe80::c57f:45d4:4b3e:38a0]) by MWHPR11MB1645.namprd11.prod.outlook.com
 ([fe80::c57f:45d4:4b3e:38a0%7]) with mapi id 15.20.4930.022; Wed, 2 Feb 2022
 16:35:07 +0000
Message-ID: <3d745589-3b4b-9672-60ce-431c6d59c2a0@intel.com>
Date: Wed, 2 Feb 2022 08:35:06 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.5.0
Content-Language: en-US
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220128221020.188253-1-michael.cheng@intel.com>
 <20220128221020.188253-5-michael.cheng@intel.com>
 <d1f41d2d-6b99-6d7d-d7ee-df789da077df@linux.intel.com>
 <cbf63d18-9443-d4ee-62b4-784079bdf28a@intel.com>
 <95cef15f-3464-aaff-c1cc-96e00b13f48c@linux.intel.com>
 <c097fde2-7b69-7d7c-ef06-ca81edc9046d@intel.com>
 <8177f292-3c69-b475-9efa-0fa00e9c37d4@linux.intel.com>
From: Michael Cheng <michael.cheng@intel.com>
In-Reply-To: <8177f292-3c69-b475-9efa-0fa00e9c37d4@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR03CA0354.namprd03.prod.outlook.com
 (2603:10b6:303:dc::29) To MWHPR11MB1645.namprd11.prod.outlook.com
 (2603:10b6:301:b::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c57f422e-f492-4bf3-3009-08d9e669f88b
X-MS-TrafficTypeDiagnostic: DM6PR11MB4012:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <DM6PR11MB4012B4DF57182458E116C9B9E1279@DM6PR11MB4012.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 55+rMCzcd2eno4dL/4BbmyCelHDuiO6+30SgaTWUobleF3NVfEhswzGr/aa8WXh7Z7VDjjIYTX+0QY1e0QuZOCogS1CNz2/zJH3rF+8yFVh7elFKbKX7XFZIiFbt0k1s7JPQG0bPRL5wt+9SlPGHPu9qi/qkUqb27kc47RtzGf0Jf4RinD0LaJTyYs7U+MNPMBOHbPQIrANW/1iPQmxDMyhcyOFfTYI9/X3PWQqKepsBPHIxwcrZkEgHkYV1M9V/keY2GIxnTjMOD3Ql+CMPlhOHevhCik6B02tHoavuE14Dq6j6VwKLEkD0pb+0r8dXf+NzrEfRqEgQOzQVdMq5FzmpB1TCUHPHPImTPcDuhfnwyiEdAUBQzjvDjTnprqDxnpCIJnR6e/gmdoOhJOtj16yZ2FueNElVvGYHEIN/E80QEYf4+9foNRS9SNvmqxFkA15dKw6TvJ+W9HOYcfOnJXllaEQOc20jFoPQjZtIc16vKky9JbXeSPcHb11Wd+zl33WGqCzEeGAvEN+Qy/L2oq0yWoTTf5f46aPjDxgqgrjjzcmruh1hP3RE9ka1AU0SINf7vahVJ1+io0Txo1vPlPy7Gru30XU++VMa77QqEiVvDknw/+/wfk1YRSx6L8BgiJfhhRMnn8JgV7K/HWSG7iFyE7I4PUA39qeZBmu4LL9UGCPbF4d7ZoHa0HuaXzGDQhVXBLDYbzN+8M2zfoChtgbHX1Xlawule+BaAf1i9EU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1645.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(316002)(53546011)(44832011)(31686004)(6512007)(2906002)(6506007)(36756003)(31696002)(86362001)(2616005)(186003)(508600001)(82960400001)(38100700002)(83380400001)(6486002)(8676002)(8936002)(4326008)(66556008)(66476007)(66946007)(5660300002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?LzU3RE9ld1Q3RE1pc3p4QVQ3a2FyNGM0U0ZDZkJhQThsTVVVeVRxcDRwU3V2?=
 =?utf-8?B?Z0dHK294Z2xMSk1IUUxYcXhZbjRjV0NPZzR5Zkk3Zk9hdnRvM1RObmdCT2RR?=
 =?utf-8?B?ZmNBNjNuT2VPTEMyYmFJQ1c3UWNZM3ZLV2xBWFNtckVubWdmaUtmV0Z5SXBN?=
 =?utf-8?B?ckN1ZkZ2NHNPZm9kbTNtdWNCQU90RHRWbkM1N2pkL0hENDdRUnZuZEU4ZEhk?=
 =?utf-8?B?YUJGemNWSk5WcjRJQUgrTlVPT1UzY0R1c1hsOUxOU3JNdnVkdEVBc3EvWGNG?=
 =?utf-8?B?dmhudGdxWENoSGZxcW9VbFJKNkF5RS9oNHVnSHlGQ2RkbFQ1Y0J5L3Y2TU9y?=
 =?utf-8?B?aFpkOWlxNHVjQnRMS3pKOEZaQitPMVVTVit0UFFpUklEOERZaC9yN05yNzFJ?=
 =?utf-8?B?TEhQcmsyTUJPQW1JMFZsN2pqQTR5OHFPeFJSZ3FKV3JzT0FPOVlSK1E0eXRV?=
 =?utf-8?B?ZDkxU3NzaUl6VHloTFBQc2c1Nkx5VDBtY08vT01VYmtoQ2xJc1hKNWU3UzIr?=
 =?utf-8?B?QU9aUkg0VThFdGFUaEFwOEVoSWE0Q3ZJRjhCcWNPTmRmVEllYXhrZSt5TS9R?=
 =?utf-8?B?ZXZoOWhVRGk1Q0JOcmlHSmlvSFg2M2NxQzZucnZRQk1XLzJQRmljR0NSeENZ?=
 =?utf-8?B?WnBYdnk5ekN3Yk9sanhoSjJ5bnU4NW5MT0V1YjYxYW1HSWQvNThXMGxhRWVK?=
 =?utf-8?B?VVREM05tMU9EVTF3REpBTDhyVzhuZEZFa09odWhLVGJSbU5HT3kybGFRa0pF?=
 =?utf-8?B?b0FjYUVWS1p0UkliSHFvZkRjazFpVlY3dWQzUzBEeWlqbFFGcVQzS3JpdkFl?=
 =?utf-8?B?M2ErYzh6NGNaTlFJY0Z6dzk2VXYxdDVxVVQyMjdZRkJBdzhtaGxlaW1WcUU0?=
 =?utf-8?B?THdiREdMa2FabzI3OElyL1NRSG5tWVdmZzE0a0s2ckFLaFptSVRQeHZHK1Mr?=
 =?utf-8?B?QmVhbFJSN1I2SmpQY0JGY08wYms2cHdac0l2MjRKZUhDSjFVdW4rYlhHQnVD?=
 =?utf-8?B?VGRoNndXdlVyZ0RRa1VyM2JvZkY5ZnRieDFlMm16THN2OWp5YzFoUzhuZkNS?=
 =?utf-8?B?RjJ0QXNuZkZJSkZpM1plbGJINTVqWC9VWWFvd1FFT1Bad0NKL1E1TDFtZVpB?=
 =?utf-8?B?Q2ZBVWZpem5WSDJnaGxKSGpwM2NYZzlxTDhKMXg1ZFI2Y1lCS0Nya2tkdkJh?=
 =?utf-8?B?a2RoOVUycXdOVXFCcHQ2TWtiYmF5Nm5sN2VobDM4Y1NKeGl2TC9VOEgxSVVw?=
 =?utf-8?B?K2RJbTd2VTRvOWxmUjIzN3o4REFxbVZrUFdsZC9XQ3NkOGl5MjhvbHJ1SVJZ?=
 =?utf-8?B?U3JKSTF6bFo4c0hTU0VhdmlFZ05jeHRiUjhaM1B4TTJpaFlvdlNEYUpGWXZo?=
 =?utf-8?B?ZGRhQjd3MlJVd01NWFg1VmFlamZmVnI1RkJNTThmZmVRRUgrbkJPOVcrcnhn?=
 =?utf-8?B?L3NZb0Z1N3lBbzRRZ01md0ZyeTdDaC9sRmpVWkU4R25zQituK0daczlxSXdO?=
 =?utf-8?B?aHJ6WDAvN2VFdXFJck5MdzlpRG9RS0hNbitIekpzRHBpNG5vcWk4NlFkbDVq?=
 =?utf-8?B?ZkE4bnlOWmJSeTJKQ3J2UEpoMDQ1RDJ4YnA2ZE43VTI0UTA0b2E2eFhJb2dT?=
 =?utf-8?B?YjhvNzB0Wk5hc1JzZlVCZ0FyOGVpOXdDYlMwWm9TTWM4V0xGTE0yZ0hyajYr?=
 =?utf-8?B?bW8zUGl0eFhMQWUxUXBUZkJMdWo1a3JVeXRqN25Hb05RdjU5U0tld2hBN0pB?=
 =?utf-8?B?NHZuNVdnd2U2K2N2RjBNRU5WUjlBS0Z3bmNvaGREeWd6aEJQbkZKa0FLOTZD?=
 =?utf-8?B?UmMrU1drWXBaK21ZOGFOakF2ak5KODBKWGZPSnczcG1ZR2k3QndoOEZETFFM?=
 =?utf-8?B?Nzc3T01Bb2dic0xLK3lZL2hEK1c5b29KRm5hLzZSdnp4eDMvV1grNG54SXpP?=
 =?utf-8?B?QlRvWlA3YU1lRUZIWUJvSFVKT2N2bVpIQUgzSlA1WjcrU3VEK0V3YTdVMWp4?=
 =?utf-8?B?alFHMVpZcS9rL3hMQWJaYkwvdFBaMFNDSnBOeTYxSkdvRHlLc216SVdnSDJX?=
 =?utf-8?B?N0NuQU1aSmJsWXB4b0JhejhUNEIwbS9HWi9XaWdONFpmOElIUDJlVWpmb3o0?=
 =?utf-8?B?azVrWDZkNWs2bjlrdUhob3dYUXB4ZzBDeUF6b0dQN0RqS0pFeGRCRVY4Mmlr?=
 =?utf-8?B?RW1qWDlkNDAxV2krZlQ1bjVNaDUwZGViZWdPMXVCUTAvc1NIVWQzMUdicXEz?=
 =?utf-8?Q?rZwtlIh75ugUEiLzcOm+4EEiEc0HfgWq3vibuY1uFA=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c57f422e-f492-4bf3-3009-08d9e669f88b
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1645.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2022 16:35:06.7649 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: c6e6hzBkhH0lRakqtuOYHKbpf317VmuVgcVJdbbQlebaw/zhdrw0chJxlAPjn7uG07VwtUtDdrPc96NO8SMOGQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4012
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 4/4] drm/i915/: Re-work clflush_write32
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
Cc: lucas.demarchi@intel.com, matthew.auld@intel.com, mika.kuoppala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

As far as I know, we haven't gotten to the arm implementation yet, since 
we are trying to get i915 compile for arm without using random ifdefs 
and dummy functions.

"Noob question - why is i915 the only driver calling it? Do other GPUs 
never need to flush CPU cache?"

Unfortunately I don't have enough expertise to comfortable answer this 
question. Maybe someone else can chime in here? Lucas? Matt?

On 2022-02-01 8:32 a.m., Tvrtko Ursulin wrote:
>
> On 01/02/2022 15:41, Michael Cheng wrote:
>> Ah, thanks for the clarification! While discussion goes on about the 
>> route you suggested, could we land these patches (after addressing 
>> the reviews) to unblock compiling i915 on arm?
>
> I am 60-40 to no, since follow up can be hard. I'd prefer a little bit 
> of discussion before merging.
>
> Also, what will be the Arm implementation of drm_clflush_virt_range? 
> Noob question - why is i915 the only driver calling it? Do other GPUs 
> never need to flush CPU cache?
>
> Regards,
>
> Tvrtko
>
>> On 2022-02-01 1:25 a.m., Tvrtko Ursulin wrote:
>>>
>>> On 31/01/2022 17:02, Michael Cheng wrote:
>>>> Hey Tvrtko,
>>>>
>>>> Are you saying when adding drm_clflush_virt_range(addr, 
>>>> sizeof(addr), this function forces an x86 code path only? If that 
>>>> is the case, drm_clflush_virt_range(addr, sizeof(addr) currently 
>>>> has ifdefs that seperate out x86 and powerpc, so we can add an 
>>>> ifdef for arm in the near future when needed.
>>>
>>> No, I was noticing that the change you are making in this patch, 
>>> while it indeed fixes a build failure, it is a code path which does 
>>> not get executed on Arm at all.
>>>
>>> So what effectively happens is a single assembly instruction gets 
>>> replaced with a function call on all integrated GPUs up to and 
>>> including Tigerlake.
>>>
>>> That was the slightly annoying part I was referring to and asking 
>>> whether it was discussed before.
>>>
>>> Sadly I don't think there is a super nice solution apart from 
>>> duplicating drm_clflush_virt_range as for example i915_clflush_range 
>>> and having it static inline. That would allow the integrated GPU 
>>> code path to remain of the same performance profile, while solving 
>>> the Arm problem. However it would be code duplication so might be 
>>> frowned upon.
>>>
>>> I'd be tempted to go that route but it is something which needs a 
>>> bit of discussion if that hasn't happened already.
>>>
>>> Regards,
>>>
>>> Tvrtko
>>>
>>>> On 2022-01-31 6:55 a.m., Tvrtko Ursulin wrote:
>>>>> On 28/01/2022 22:10, Michael Cheng wrote:
>>>>>> Use drm_clflush_virt_range instead of clflushopt and remove the 
>>>>>> memory
>>>>>> barrier, since drm_clflush_virt_range takes care of that.
>>>>>>
>>>>>> Signed-off-by: Michael Cheng <michael.cheng@intel.com>
>>>>>> ---
>>>>>>   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 8 +++-----
>>>>>>   1 file changed, 3 insertions(+), 5 deletions(-)
>>>>>>
>>>>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c 
>>>>>> b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>>>>>> index 498b458fd784..0854276ff7ba 100644
>>>>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>>>>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>>>>>> @@ -1332,10 +1332,8 @@ static void *reloc_vaddr(struct i915_vma 
>>>>>> *vma,
>>>>>>   static void clflush_write32(u32 *addr, u32 value, unsigned int 
>>>>>> flushes)
>>>>>>   {
>>>>>>       if (unlikely(flushes & (CLFLUSH_BEFORE | CLFLUSH_AFTER))) {
>>>>>> -        if (flushes & CLFLUSH_BEFORE) {
>>>>>> -            clflushopt(addr);
>>>>>> -            mb();
>>>>>> -        }
>>>>>> +        if (flushes & CLFLUSH_BEFORE)
>>>>>> +            drm_clflush_virt_range(addr, sizeof(addr));
>>>>>>             *addr = value;
>>>>>>   @@ -1347,7 +1345,7 @@ static void clflush_write32(u32 *addr, 
>>>>>> u32 value, unsigned int flushes)
>>>>>>            * to ensure ordering of clflush wrt to the system.
>>>>>>            */
>>>>>>           if (flushes & CLFLUSH_AFTER)
>>>>>> -            clflushopt(addr);
>>>>>> +            drm_clflush_virt_range(addr, sizeof(addr));
>>>>>>       } else
>>>>>>           *addr = value;
>>>>>>   }
>>>>>
>>>>> Slightly annoying thing here (maybe in some other patches from the 
>>>>> series as well) is that the change adds a function call to x86 
>>>>> only code path, because relocations are not supported on discrete 
>>>>> as per:
>>>>>
>>>>> static in
>>>>> eb_validate_vma(...)
>>>>>         /* Relocations are disallowed for all platforms after 
>>>>> TGL-LP. This
>>>>>          * also covers all platforms with local memory.
>>>>>          */
>>>>>
>>>>>         if (entry->relocation_count &&
>>>>>             GRAPHICS_VER(eb->i915) >= 12 && !IS_TIGERLAKE(eb->i915))
>>>>>                 return -EINVAL;
>>>>>
>>>>> How acceptable would be, for the whole series, to introduce a 
>>>>> static inline i915 cluflush wrapper and so be able to avoid 
>>>>> functions calls on x86? Is this something that has been discussed 
>>>>> and discounted already?
>>>>>
>>>>> Regards,
>>>>>
>>>>> Tvrtko
>>>>>
>>>>> P.S. Hmm I am now reminded of my really old per platform build 
>>>>> patches. With them you would be able to compile out large portions 
>>>>> of the driver when building for ARM. Probably like a 3rd if my 
>>>>> memory serves me right.
