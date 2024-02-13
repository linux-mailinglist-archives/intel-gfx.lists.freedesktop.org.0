Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00380853B6B
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Feb 2024 20:44:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D3DC10E0EB;
	Tue, 13 Feb 2024 19:44:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mZqgzcLl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DBBA10E0EB
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Feb 2024 19:44:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707853464; x=1739389464;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=hh8OfNs2vJYYF/BHAn/mQhCvwb65FRkEk80vN92Jnwg=;
 b=mZqgzcLlPXu+TPTFsVP8FISHEf0Wqx3GUKuIRGiKuyYGm+a1WbJ0CqUR
 rydKX9q8ZNDtoykLTGxsqR1gO/xOLdmBtOGnq2EjunAgY57ZZQyX03P85
 KM15p28au0isCXBj+r754tQMzk8TspFux+uRispoiVC40+4T2agBmYgfQ
 u8WDDAavLde/AojoFHv+LxNkgeNxPaj47DQQXnwZFuqSPocyXaL+T69TM
 Iu/ay9mMmQf6Ap0jpi7kFNzt4VaLyE18z0cBsNBSDom2ZFEC+F7TkmX+/
 hpS7oikgXjsCMBy4wVnvcrD81jCrUiNqGnh/LJrRfwBthJKzaN+YyZuHz w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="13275494"
X-IronPort-AV: E=Sophos;i="6.06,158,1705392000"; d="scan'208";a="13275494"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 11:44:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,158,1705392000"; 
   d="scan'208";a="7626280"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Feb 2024 11:44:24 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 13 Feb 2024 11:44:23 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 13 Feb 2024 11:44:22 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 13 Feb 2024 11:44:22 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 13 Feb 2024 11:44:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LjLgULM3Vc1mhzbck4giBYNdAvrPCCuDiSfBU4L2jYk+pzWxMZJQh3t/tl03SoSFyFaDeGLDtzcOJrFGOGHBdsnhG4IpFZOK+GpN+OYWBRmNXj/PIMyA5D4FMWysKrTRksOxnTly1JRXi8KS+emtG+zDDI7C1NnPsyfDZhTBjsFy/fdJBxEplk9WMEr43vycYx1UCHsWHMb32ttwPGgDDa8pqSSRlJHSn/U2AXn7RyZbnZ33J5+R+JObVOUx80Y1TbBJChxC3apks8pnFfZShsSUSO41/EDNM864vHtB3XnsTg546vdli+/JVqvejVFP6xImdAEe0FAxDL5ipdPaeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KbmVvOy8IXPRoeZ3KfBUxghSW8KdNYpG26sAoKSrxko=;
 b=FxWXiMAeCNVq5fHHPjgL8Chcr9mbz11ryDvIDxdkmdZfQDEQnyx5lIg+wBf8B5gakAe2kPSk8IG1qbZMjrirGKg0Q2YM2x3kTMLHHUkvksSm0whU7/mqZ8MZqTcyi90lIJiIpDJiqBnfKfvSvcgNaqB2gnm1kU3ShXRxw2k38RwbQOTwUEYBdQ7zmU1hcByEB5DAw/3uRCIlq59CmJZa/9OiUlsrwyZ3CaxRBqnKXQ/LgzzozCQs2LU9zmdvYVXSLHhbv5SQSuW8wFlr7vU8FmItQ1UO87CLPnhCHVXIUXhn4R8HZJWZB1Twsy21oKxaY5sI4zxL7Zamomwv6Ou5yw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB7408.namprd11.prod.outlook.com (2603:10b6:8:136::15)
 by MW3PR11MB4746.namprd11.prod.outlook.com (2603:10b6:303:5f::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.39; Tue, 13 Feb
 2024 19:44:20 +0000
Received: from DS0PR11MB7408.namprd11.prod.outlook.com
 ([fe80::152d:16f5:ab9a:7c6e]) by DS0PR11MB7408.namprd11.prod.outlook.com
 ([fe80::152d:16f5:ab9a:7c6e%7]) with mapi id 15.20.7270.036; Tue, 13 Feb 2024
 19:44:20 +0000
Date: Tue, 13 Feb 2024 11:44:18 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Tvrtko Ursulin
 <tvrtko.ursulin@linux.intel.com>
Subject: Re: [PATCH 2/2] i915/pmu: Cleanup pending events on unbind
Message-ID: <ZcvGkvueh2nbqeyd@unerlige-ril>
References: <20240213180302.47266-1-umesh.nerlige.ramappa@intel.com>
 <20240213180302.47266-3-umesh.nerlige.ramappa@intel.com>
 <87sf1w6wjo.fsf@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87sf1w6wjo.fsf@intel.com>
X-ClientProxiedBy: SJ0PR13CA0055.namprd13.prod.outlook.com
 (2603:10b6:a03:2c2::30) To DS0PR11MB7408.namprd11.prod.outlook.com
 (2603:10b6:8:136::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7408:EE_|MW3PR11MB4746:EE_
X-MS-Office365-Filtering-Correlation-Id: 259d3ca4-500c-4de4-054f-08dc2ccc2bbe
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Kl8e50axR8A8A1vbgdM0qVU5kshfPQovuM3f/O1RQA3AI560HGGygTVEQGvpnsEleTuLoKUjRFk8ZUpdIeb45qmDK48XnnGr0SJ3F9EnxxooaX2zB+dgWruCLTnuS4qAIrQ/UKGKNRlL7ATAqdDmHZOYKX3Cv7p1k/RORhHNQh9VyMEwrsxBgu9yuhTSMlEpjVi7l5v0g1nPYu6ryMuvePQ6rlozM3AgJbxAtx+C1/Xt6Ul1D6L4pmkohsIqJfTTy6cz5QU9L2XrH94oyPiiJ90jRSWXmd8jiqRSRxn7N8XJdtBHJMeqf1SkI9zX3teDgCLl5wNdqW67fEKZFYHNKXlgVYCEjSKPjfAQLcErzY/tusdfzOx9j+1uvvFIDNG8u/0Nx0ZixqH4ONpCJgIIo21rvhKz3x2EoY7D3pOpngnq2X7Z5c98Vmq076zxBxBhabUf4ghWiaCat23ljUpBS3QqR+ckehb7ZxrBqYxQf8GdI0NVuQanG2g2GObnIs0cy7AmtwoxGlFPKEHS1EMzfYDIH+5QNUXzrZ24utfM/Lc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7408.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(396003)(39860400002)(346002)(136003)(366004)(376002)(230922051799003)(1800799012)(64100799003)(451199024)(186009)(83380400001)(38100700002)(26005)(6512007)(82960400001)(6916009)(66476007)(4326008)(41300700001)(5660300002)(8676002)(66556008)(8936002)(66946007)(2906002)(9686003)(6506007)(478600001)(6486002)(966005)(316002)(86362001)(33716001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SGJnTnQ1RTZNQ2lZeHU0VWZOc3BuZkhEakdwRVMrdERyekNUWERFd3hzSjBM?=
 =?utf-8?B?SGprNXVrTmdUWEZSZXRsaTdlRUlVZjlSeFBvMFUzMURSSWE1V0d3bGs4RFli?=
 =?utf-8?B?blRMTHc3QStIYU1nQVpZZVNHSUpVZjRWK28yZ29TREQ3aDM3bVNuSlBwZ2NM?=
 =?utf-8?B?UkRXWENuZTQ2amVoVmQrRWlUSkJJYy8vSnZOc3dUa3FXMkY3SjlTSzcwQXlT?=
 =?utf-8?B?eGkrUGU1SXJJSi84d2VrcktIaklQdGFvbHB2Z2IrWmRhK3RBM0JBNE96S09t?=
 =?utf-8?B?VzhEa3dKVE1tVDgvdmtYeFJTR3NSbWR3VXA4SmZjK2w1b1ZTV0tzMDhMc3g1?=
 =?utf-8?B?L3ZBb0pPOTNGNUM0YUVrQm8xSDUzWWdXSWlwRU5lcE1oRzcyS1pvYi9CK0Nw?=
 =?utf-8?B?SkV0dlBMTWFNOWRZdGpWOUhMMDJBSWdid1dVd3hFK1ZOcHZ2YjAzNnJTTFg2?=
 =?utf-8?B?aWR1NkVHeUVyTXpybE52L1Q5VlgwY25JcnM1RjdYYnJuYVhBZWs0dzFQV1dF?=
 =?utf-8?B?U3RwOEFTVVdVSmR1V05oQnNPTmQ3cWhWVWJZWm1zZTJ4K3hZLzJRZUxqYi84?=
 =?utf-8?B?L3AxT0F4YldSbjJ0eEkyYjlCTllGSzRqVkhFK3Z3R2pQU1hKSXFhR2tvTEpt?=
 =?utf-8?B?OWxhaTZhc3JWbHdmcUd2elg3NFVYTjcvR3JMNUxraForSWl3NFRXN2wwRSsz?=
 =?utf-8?B?azR4RTVtRHV4VHlCSnc1WGp3VDV0VjFibUxBWm5uYUZwenhtdExJRkVCNEFk?=
 =?utf-8?B?V3VMZWEvL1BJU2tRRHZRbXluOFR4ZUlVV2drUFcxeG5CeUhLUmdXUEpHWDRB?=
 =?utf-8?B?Rjk5akpZMWtQQ2NMZGM1eWpSZUJsZVFNQjMraWx1bFAvZktjNDlYTDZxQ3dF?=
 =?utf-8?B?b2d0QlFVZUdnS0hybEg4dGpuZEwxMWQ5eGQrdnVLN0xYbzJPOWo1NVNXeGFl?=
 =?utf-8?B?bTFrb1VuZ2h5OUp3cnVuQis4Z0U4K2o3UHYyVDFmUkxlNkhBYmNDTHBnMDhT?=
 =?utf-8?B?VkNCcGh3cVZtS2NZcFc3allVU2Eyb3BKY3JyWWlrN0tUbVl4bVNKTVRpWlBU?=
 =?utf-8?B?WWpmK1Y5b0xyWTV2dUR5ZjFKZUN4VW0ydk16cGR1MU5oR1JxUk9vZjRaMjQx?=
 =?utf-8?B?YjhIM1BTcVpmTlNKMlEvci8vcnVQQkx4cS9BSCtXd1B4REJJT1VVb01ZL3U5?=
 =?utf-8?B?d2tZcU9oSnp5SldUL2dkR3h2VlhkeWREVmtITzdxYWt1ajlGT2crOXNGcTF3?=
 =?utf-8?B?Q2lqSWYxdFB6b0QzYUFqOTNTT3lEaE9vRFR6ZzIwNHM4WnhFbUhhZ1FTQUFo?=
 =?utf-8?B?eUcrVzBxcWQrZ0ZBLy81d09ZdWxwOUFYMkFrdzJuQTNBbkJGRitJbGZTdFhz?=
 =?utf-8?B?Z1NFUDhtQlY1bktybkJYUnJLc1RuVDcwVDZpVG0zWkFRQVdXVFordzcwOUs1?=
 =?utf-8?B?NXN3dUdybi9kZjJuaVpEMjJNd2luVHdWbGs5OTAyYlE0RlAyLytOSEhyaEY5?=
 =?utf-8?B?NDFJS2RZdTNjSVJMUEJtNkhVakh3cWMyVHNsc1BnUDVQNWhIcGdUYXpVQ1di?=
 =?utf-8?B?a3orbWlTYWs5NDErd1JMaHFSaWlRSjNaZTBCb2VjNkRHSDVxUFYzblBTSEJ6?=
 =?utf-8?B?Zk9JYUZLM09IS0JFNUZoR0p6OXlDemZsM0pTUndnZ0xoTTBvOHRDRXFCa3hC?=
 =?utf-8?B?czR1MjhCdFhVd1hjRHZUNGF6WGQvKzFMYUhvRVoybkxJc21QdTB6Q3hHZWZY?=
 =?utf-8?B?ZlVkd1JpRi9jMVQzRjl0UGV2M1hoNndvclhPMUdnN25SZXJ6ZFAzREkxN3VB?=
 =?utf-8?B?bzRGVDJCMFZiVDE1Sm96WUN4YnhtRExPa2hhaDk3dC9qQjZQTDV0RTZBbTJz?=
 =?utf-8?B?cXB0S3pQZ20renZKa2hRa3ZXYU5pbzdKODhnSTVhOVMzbnl0UGI0VzYrSVJk?=
 =?utf-8?B?RGpFY0VZaTdCZVUvYzFSakljeWVzVTZLcVFnTkNCakVKRFV1RHR5THNJbVRJ?=
 =?utf-8?B?U3FQWGlIdmFSd3YzYjNBUWh4VWNtcm5YT1pDNk5HZ3BEcE1sNythRE43OElp?=
 =?utf-8?B?NUljRU1mMXZidE9mSDgvZyszdUxmQ0Uzei9zUHJRS0ZNOFdJd1hCZ0pZcG1n?=
 =?utf-8?B?YWdFek5KRTRPMTZ1UjhENTRSTUJMeU9aSkE0Y0RseHdyMHY3aEVVZ2Vzd1Zm?=
 =?utf-8?Q?iW0gD2Xi/Q/OjCrAdkbfIPg=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 259d3ca4-500c-4de4-054f-08dc2ccc2bbe
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7408.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Feb 2024 19:44:20.0749 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1TRlY0Fr4fBFZz6jG+kg90CR5XjqWAlFOoYlIIlAjfRkhX7VwexMrTypaGtRpVS4nlkHw5ikys5jKV5U5uUTYmk3l4NLm3U6JKObS0IkS10=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4746
X-OriginatorOrg: intel.com
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

On Tue, Feb 13, 2024 at 08:36:43PM +0200, Jani Nikula wrote:
>On Tue, 13 Feb 2024, Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com> wrote:
>> Once a user opens an fd for a perf event, if the driver undergoes a
>> function level reset (FLR), the resources are not cleaned up as
>> expected. For this discussion FLR is defined as a PCI unbind followed by
>> a bind. perf_pmu_unregister() would cleanup everything, but when the user
>> closes the perf fd, perf_release is executed and we encounter null
>> pointer dereferences and/or list corruption in that path which require a
>> reboot to recover.
>>
>> The only approach that worked to resolve this was to close the file
>> associated with the event such that the relevant cleanup happens w.r.t.
>> the open file. To do so, use the event->owner task and find the file
>> relevant to the event and close it. This relies on the
>> file->private_data matching the event object.
>>
>> Note:
>> - Closing the event file is a delayed work that gets queued to system_wq.
>> The close is seen to happen when kernel returns to user space following
>> the unbind.
>>
>> - perf framework will access the pmu object after the last event has
>> been destroyed. The drm device is refcounted in the init and destroy
>> hooks, so this causes a use after free if we are releasing the drm
>> device reference after unbind has been called. To work around this, we
>> take an extra reference in the unbind path and release it using a
>> delayed work in the destroy patch. The delayed work is queued to
>> system_wq.
>>
>> Ref: https://lore.kernel.org/lkml/20240115170120.662220-1-tvrtko.ursulin@linux.intel.com/T/#me72abfa2771e6fc94b167ce47efdbf391cc313ab
>>
>> Opens:
>> - Synchronization may be needed between i915_pmu_unregister and
>> i915_pmu_event_destroy to avoid any races.
>>
>> - If unbind and bind happen from the same process the event fd is closed
>> after bind completes. This means that the cleanup would not happen
>> until bind completes. In this case, i915 loads fine, but pmu
>> registration fails with an error that the sysfs entries are already
>> present. There is no solution feasible here. Since this is not a fatal
>> error (reloading i915 works fine) and the usual case is to have bind and
>> unbind in separate processes, there is no intention to solve this.
>>
>> Other solutions/aspects tried:
>> - Call perf_event_disable() followed by perf_event_release_kernel() in
>> the unbind path to clean up the events. This still causes issues when
>> user closes the fd since perf_event_release_kernel() is called again and
>> fails requiring reboot.
>>
>> - Close all event fds in unbind and wait for the close to complete by
>> checking if list is empty. This wait does not work since the files
>> are actually closed when unbind returns to user space.
>>
>> Testing:
>> - New IGT tests have been added for this and are run with KASAN and
>>   kmemleak enabled.
>>
>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/i915_pmu.c | 96 ++++++++++++++++++++++++++++++++-
>>  drivers/gpu/drm/i915/i915_pmu.h | 15 ++++++
>>  2 files changed, 110 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
>> index 4d2a289f848a..2f365c7f5db7 100644
>> --- a/drivers/gpu/drm/i915/i915_pmu.c
>> +++ b/drivers/gpu/drm/i915/i915_pmu.c
>> @@ -4,6 +4,8 @@
>>   * Copyright © 2017-2018 Intel Corporation
>>   */
>>
>> +#include <linux/fdtable.h>
>> +#include <linux/fs.h>
>>  #include <linux/pm_runtime.h>
>>
>>  #include "gt/intel_engine.h"
>> @@ -573,9 +575,21 @@ static void i915_pmu_event_destroy(struct perf_event *event)
>>  {
>>  	struct i915_pmu *pmu = event_to_pmu(event);
>>  	struct drm_i915_private *i915 = pmu_to_i915(pmu);
>> +	struct i915_event *e = event->pmu_private;
>>
>>  	drm_WARN_ON(&i915->drm, event->parent);
>>
>> +	if (e) {
>> +		event->pmu_private = NULL;
>> +		list_del(&e->link);
>> +		kfree(e);
>> +	}
>> +
>> +	if (i915->pmu.closed && list_empty(&i915->pmu.initialized_events)) {
>> +		pmu_teardown(&i915->pmu);
>> +		mod_delayed_work(system_wq, &i915->pmu.work, 50);
>> +	}
>> +
>>  	drm_dev_put(&i915->drm);
>>  }
>>
>> @@ -684,6 +698,14 @@ static int i915_pmu_event_init(struct perf_event *event)
>>  		return ret;
>>
>>  	if (!event->parent) {
>> +		struct i915_event *e = kzalloc(sizeof(*e), GFP_KERNEL);
>> +
>> +		if (!e)
>> +			return -ENOMEM;
>> +
>> +		e->event = event;
>> +		list_add(&e->link, &pmu->initialized_events);
>> +		event->pmu_private = e;
>>  		drm_dev_get(&i915->drm);
>>  		event->destroy = i915_pmu_event_destroy;
>>  	}
>> @@ -1256,6 +1278,14 @@ void i915_pmu_exit(void)
>>  		cpuhp_remove_multi_state(cpuhp_slot);
>>  }
>>
>> +static void i915_pmu_release(struct work_struct *work)
>> +{
>> +	struct i915_pmu *pmu = container_of(work, typeof(*pmu), work.work);
>> +	struct drm_i915_private *i915 = container_of(pmu, typeof(*i915), pmu);
>> +
>> +	drm_dev_put(&i915->drm);
>> +}
>> +
>>  void i915_pmu_register(struct drm_i915_private *i915)
>>  {
>>  	struct i915_pmu *pmu = &i915->pmu;
>> @@ -1313,6 +1343,9 @@ void i915_pmu_register(struct drm_i915_private *i915)
>>  	pmu->base.read		= i915_pmu_event_read;
>>  	pmu->base.event_idx	= i915_pmu_event_event_idx;
>>
>> +	INIT_LIST_HEAD(&pmu->initialized_events);
>> +	INIT_DELAYED_WORK(&pmu->work, i915_pmu_release);
>> +
>>  	ret = perf_pmu_register(&pmu->base, pmu->name, -1);
>>  	if (ret)
>>  		goto err_groups;
>> @@ -1337,6 +1370,64 @@ void i915_pmu_register(struct drm_i915_private *i915)
>>  	drm_notice(&i915->drm, "Failed to register PMU!\n");
>>  }
>>
>> +/* Ref: close_fd() */
>> +static unsigned int __open_files(struct fdtable *fdt)
>> +{
>> +	unsigned int size = fdt->max_fds;
>> +	unsigned int i;
>> +
>> +	for (i = size / BITS_PER_LONG; i > 0; ) {
>> +		if (fdt->open_fds[--i])
>> +			break;
>> +	}
>> +	return (i + 1) * BITS_PER_LONG;
>> +}
>> +
>> +static void close_event_file(struct perf_event *event)
>> +{
>> +	unsigned int max_open_fds, fd;
>> +	struct files_struct *files;
>> +	struct task_struct *task;
>> +	struct fdtable *fdt;
>> +
>> +	task = event->owner;
>> +	if (!task)
>> +		return;
>> +
>> +	files = task->files;
>> +	if (!files)
>> +		return;
>> +
>> +	spin_lock(&files->file_lock);
>> +	fdt = files_fdtable(files);
>> +	max_open_fds = __open_files(fdt);
>> +	for (fd = 0; fd < max_open_fds; fd++) {
>> +		struct file *file = fdt->fd[fd];
>> +
>> +		if (!file || file->private_data != event)
>> +			continue;
>> +
>> +		rcu_assign_pointer(fdt->fd[fd], NULL);
>> +		__clear_bit(fd, fdt->open_fds);
>> +		__clear_bit(fd / BITS_PER_LONG, fdt->full_fds_bits);
>> +		if (fd < files->next_fd)
>> +			files->next_fd = fd;
>> +		filp_close(file, files);
>> +		break;
>> +	}
>> +	spin_unlock(&files->file_lock);
>> +}
>> +
>> +static void cleanup_events(struct i915_pmu *pmu)
>> +{
>> +	struct drm_i915_private *i915 = container_of(pmu, typeof(*i915), pmu);
>> +	struct i915_event *e, *tmp;
>> +
>> +	drm_dev_get(&i915->drm);
>> +	list_for_each_entry_safe(e, tmp, &pmu->initialized_events, link)
>> +		close_event_file(e->event);
>> +}
>> +
>>  void i915_pmu_unregister(struct drm_i915_private *i915)
>>  {
>>  	struct i915_pmu *pmu = &i915->pmu;
>> @@ -1354,5 +1445,8 @@ void i915_pmu_unregister(struct drm_i915_private *i915)
>>
>>  	hrtimer_cancel(&pmu->timer);
>>
>> -	pmu_teardown(pmu);
>> +	if (list_empty(&pmu->initialized_events))
>> +		pmu_teardown(pmu);
>> +	else
>> +		cleanup_events(pmu);
>>  }
>> diff --git a/drivers/gpu/drm/i915/i915_pmu.h b/drivers/gpu/drm/i915/i915_pmu.h
>> index 41af038c3738..6f62e820f34d 100644
>> --- a/drivers/gpu/drm/i915/i915_pmu.h
>> +++ b/drivers/gpu/drm/i915/i915_pmu.h
>> @@ -55,6 +55,11 @@ struct i915_pmu_sample {
>>  	u64 cur;
>>  };
>>
>> +struct i915_event {
>> +	struct perf_event *event;
>> +	struct list_head link;
>> +};
>> +
>
>Nobody needs this outside of i915_pmu.c.

Agree. Will move it to i915_pmu.c

Thanks,
Umesh

>
>>  struct i915_pmu {
>>  	/**
>>  	 * @cpuhp: Struct used for CPU hotplug handling.
>> @@ -152,6 +157,16 @@ struct i915_pmu {
>>  	 * @pmu_attr: Memory block holding device attributes.
>>  	 */
>>  	void *pmu_attr;
>> +
>> +	/**
>> +	 * @initialized_events: List of initialized events
>> +	 */
>> +	struct list_head initialized_events;
>> +
>> +	/**
>> +	 * @work: worker to delay release of drm device reference
>> +	 */
>> +	struct delayed_work work;
>>  };
>>
>>  #ifdef CONFIG_PERF_EVENTS
>
>-- 
>Jani Nikula, Intel
