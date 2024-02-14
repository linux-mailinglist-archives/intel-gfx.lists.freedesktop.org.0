Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3835485530D
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Feb 2024 20:16:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32E4310E0FB;
	Wed, 14 Feb 2024 19:16:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OTK1SWXv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9738410E0FB
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Feb 2024 19:16:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707938207; x=1739474207;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=hBWwpeKoOs+eJAeiFV9CNKgfpo6kumm32EMQzgd+Y3o=;
 b=OTK1SWXvGf6DPxVgjTWYRPtqTPvENWyKCXfZiPdeAzZO2XjEWukdwxTU
 VlNLI4tVgVr6ccjc9s7P7pGoL4XWBgZTFt3HgAXcOeuVWKDVNpu0KUchY
 hZXSh4ope6uYgv/ynH90W25efKc0j55V+XCugdyVOTwa2zCCix4/r+zjn
 /VIQR+elL4dtWd6+aeug9vuoRDU6rrP7AJtffqgCbVqHzkiUOyW5y+7hk
 wk+6xkLPXhHs3532ZyQARZXkQIMUrbPgFXxdrFzVrXNeJ86jdaYqU9Vhc
 x5IrtMLJkRfdajsU1YoVWp6lpVwptYG+zYx8R27ioyy3ftO72wvGH+uAK Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10984"; a="5832118"
X-IronPort-AV: E=Sophos;i="6.06,160,1705392000"; 
   d="scan'208";a="5832118"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2024 11:16:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,160,1705392000"; 
   d="scan'208";a="3203532"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Feb 2024 11:16:46 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 14 Feb 2024 11:16:45 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 14 Feb 2024 11:16:45 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 14 Feb 2024 11:16:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eY2aISM3FvwWVVOpor32u8OIcz42SQGDwS1yljnadTtzHDQ7eZIJWIJhjBvoqnlRoEwM/XpCPtD0MYcpMG7j658wBG4v7YbQtFPyWfKXgXVLH5lDMRkdTjRBvbCIr8qY3If0Ss6wgOqQTtVyE2uJhzcSMG2+rmoGwghW+jhHLYHXs21GNBBCAn0pe/LAzvqG9A/Z5G6Ef0NKrhp/yba9X3jV1I8i7Drj4p4qx46XUhk9KQUxl8B2TVUtJ2WoM9rZ8pgkVjvg/YpXYa6YTvXV7TDc5tMyTuSUtM4LeFfjeTrMsbg/7r1nzBWJ3q6e1ebW/mMscGMNQZAF1VWUxlfK1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lYsZkqsUp6FeHT13juW9CK5S7yAQkqzZoOW8zvHo0S0=;
 b=Yu6hV3BZK+hZeTuadaPMPD0rEeX4/pLJnLZcc7fybRq6TqmKbsooAbbIwGM7BfdKhTIK1gl/KRN4xyBqGm12NYYZSNbCMMssT+VVVlQoNjZxbyjA5JXku9soKUtx0H3HDKOfsbK7NL7k1FsQORh7K/9xu7RMxiXdaN9pYIda9pMwQEbj0fkAIQAo2SawiUy2CH5mLMlh6O5RxpqxzbuAfaw4Yssbeu3YxADButKfEKJS1TNt5iI0xDuv6fPDd5PMG/RNmTbk8C1i0THLcZd4w49fZi+Ef6/j25oTBGAjmEb0lD9O7TPK/0nwpzRULDgZDd5hDc9ny1yGMsdDnwWGKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB7408.namprd11.prod.outlook.com (2603:10b6:8:136::15)
 by SA2PR11MB4826.namprd11.prod.outlook.com (2603:10b6:806:11c::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.39; Wed, 14 Feb
 2024 19:16:42 +0000
Received: from DS0PR11MB7408.namprd11.prod.outlook.com
 ([fe80::152d:16f5:ab9a:7c6e]) by DS0PR11MB7408.namprd11.prod.outlook.com
 ([fe80::152d:16f5:ab9a:7c6e%7]) with mapi id 15.20.7292.027; Wed, 14 Feb 2024
 19:16:42 +0000
Date: Wed, 14 Feb 2024 11:16:26 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 2/2] i915/pmu: Cleanup pending events on unbind
Message-ID: <Zc0Rih1lhnt4LKcy@unerlige-ril>
References: <20240213180302.47266-1-umesh.nerlige.ramappa@intel.com>
 <20240213180302.47266-3-umesh.nerlige.ramappa@intel.com>
 <31f4653c-9f7a-4739-9b47-b7fe1257fa1e@linux.intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <31f4653c-9f7a-4739-9b47-b7fe1257fa1e@linux.intel.com>
X-ClientProxiedBy: BYAPR11CA0068.namprd11.prod.outlook.com
 (2603:10b6:a03:80::45) To DS0PR11MB7408.namprd11.prod.outlook.com
 (2603:10b6:8:136::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7408:EE_|SA2PR11MB4826:EE_
X-MS-Office365-Filtering-Correlation-Id: b44827eb-d83b-4c53-8fa6-08dc2d917a2b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: G95AKLjdDbMSeQ+x0lYW03XdbM1eRER5g3L9VmIQHwrOHAzLE4MlgQrFGk8e0QaNOyYb3kj4R04AzdhSGbE+BSIcd5zwcQ7ea+aLjq49oyjJje6O7Mk5mcgGe/5CRl0vPmy82HJo4lAkMTfIiK3qEm6JPYS9+UyRxCvE5XcSLWBTxkgkGKKPoFBUS3XRQcue9LpOkpA6nKIdOEoruuxZQctwpU2yLSTVnmBak1bcbDAInEUz1a+y67Uo54YupHM/J5LGqDb6qjfjkrrklARy1PLsjzzE36LD5H7BydzGUsVthleNfm73A2EukNvg3yqTX1qZADJb+dNFI/Fnm4qKw/dM5B3nX5AOLNvGqxzzKcjNndu7IPcm/xm8WVHkex3ehpMQqrP9fauUe3YoPH8d+cHFeM2hCD0LB586cv6g9L7vEYOk+cGM5emkJR5AjQZGYouAQfdkrHjFy4fdX2iZ2R/xiJpqG523PYwAONxnpMoYaeEgSyRJ2sKDAk0WuMPROq80zzGBMNX/+0ZUQoiAV4Dk9iBuH3aKsC9ASyYJmA4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7408.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(39860400002)(366004)(136003)(396003)(376002)(346002)(230922051799003)(451199024)(186009)(64100799003)(1800799012)(2906002)(66476007)(478600001)(38100700002)(66946007)(66556008)(4326008)(5660300002)(6916009)(8676002)(8936002)(82960400001)(41300700001)(6512007)(83380400001)(26005)(966005)(6666004)(86362001)(316002)(9686003)(6486002)(6506007)(33716001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V01ZTFRKb3VqVkJnSXdQS1Z4U0Y4eUptUlcydXJXQ2k5ZENEV2FKcVN5Zmgx?=
 =?utf-8?B?aVZrZEFiK245WkVuMHlsVm5ZcDAzOGN5ODNiSTJGaUlMYkdYelNrR21OU0U5?=
 =?utf-8?B?V3VLa1laV09HYm1HUHd5aHpXaUxPU05wWHZKSUhvcHRxWFUvejhkKzFIQTFQ?=
 =?utf-8?B?K0k2d3JsRmdaUVNHYUZ1ay9xU3o4bDZaeUxWVmI0RFB5V0s2SlhyS2M4ejN0?=
 =?utf-8?B?VUtDVHFET1piYUZsb3BqWkZBRGg3UHM5aTFHeDV2K0EvYUlXcW96c1QrNnI2?=
 =?utf-8?B?TWtjdWV5SGswNzBwV0RyZlFNYkpaM1owZVhsdUZDd3hIa1lCSXkrRHB6RkQv?=
 =?utf-8?B?TzV6UzNTeXYyZ3FmSnE4NTdpY2xGS0g4d2VJYlVMYmtoRHZXSVV3dlRZVVFY?=
 =?utf-8?B?TndTRXlUL3FTLzFUZkR6bHoxT3dyWlByalhxM0RDWUZTaUFVZS8wbzJHenpx?=
 =?utf-8?B?VHpIK2I0TzVHNHJSV09MdEVFdENXSXhFdjFFcFZhaVJ4RWdpM3FnWE81MjVX?=
 =?utf-8?B?YTVHaGZWZjNUL3NyZjQ4SFVqUW9tOFhVZC82b1paWTlwVTJ5ZENRNmkzZ3J2?=
 =?utf-8?B?NmpvdklqYmVISjJDTStIeFpUOEJLTWdNNUx6NkVuTUtLdnJEeHh6YXpjSWF4?=
 =?utf-8?B?MmIzOWtoWmJEc1VJbXhQdjhVWXozOTNpckxJTlBWK2RsTklqeVI5RlJSejRY?=
 =?utf-8?B?ZFNzUHNtSjFzc0lPZTg3TFVtSU8zSWpyR25aTEFpSjJ0dnFHRXptbTl6dlhp?=
 =?utf-8?B?Vm1CL2FyNzdXRFZBdjkwU0IyZ0ZNQkZiM1daQ21CTkUrREdYbVdkU1VJb2I2?=
 =?utf-8?B?LzQ5Z0RqOWpzTWR4dzJUMEZRU1lTajdWaWJraHBMUkllN0UvVUxiNnF5RGFE?=
 =?utf-8?B?ak5Bd1p4SS90dmplR3B6TE4wcWdIeXJNYnBMRGtFV2N6NFNtL1FEMXN3cVVU?=
 =?utf-8?B?cDRNbnc0UUJHZTR4di9YdWhqcmFFZFdWT2JJNGRrbldVREZlbm9nbUlvejcx?=
 =?utf-8?B?bGZqdk1FL3ZWWUtOY0kwSzB2NlFkTnEvSU1ER3NsWkFzdXBoNWF0eHJDK2RX?=
 =?utf-8?B?VHVmbzdNV2tDUzRqNEZCSmNpQlhBbGc1TGROQlE5U29pc2RWTHY3SGpXNDBH?=
 =?utf-8?B?SGowVWxDSFBOTGVmK3JjdmRaY21JQ1QvY2JGSVFNU3ZDcERPY2k1R3BCSzAx?=
 =?utf-8?B?N0gzeEZ3bDIwekRMYXZPYTlKckwzZUhQTk05NDAwQjZQa1U4VUdIRnBGZlRC?=
 =?utf-8?B?SWRYWWdKdmkwS3Q0UjNwTm5xVExWOUU1Y1hRR2QydldBT1JXRE91Y2dLcmFt?=
 =?utf-8?B?c25idkpXRWpXVUwxRUhselNWWWluaFR5QVppc1pENmhTU3pzakNMVzVEWm9k?=
 =?utf-8?B?ek1rcHVpSzRlNi9rT2UyUnprNndPdjJ6WmFpU0lpQmw4YWw4RmRMV3BpdElY?=
 =?utf-8?B?MXJ4clVYR0g0cEhwemhjN1lObHgwU2xFT2RhMTJGK1ZmVXZHelI5OHZzTlRq?=
 =?utf-8?B?WHFpeWxkazhDN28rSGp5c2dzc1lSN2lnMzVVYk1nVDdFaENoTUlLRDZLcW55?=
 =?utf-8?B?N2d3MVN1Y3B0Ujh3Q3BKQ2htMHVqR3JndWRXMFY4YUpmbktpVDJKUXNrVTVN?=
 =?utf-8?B?Z05Rb2ZlUkhMKzdHRDY5WVpsVzBkNnAwYkpHMXEvK3VkZCt1Z0dzWWV2K3Uz?=
 =?utf-8?B?ODRjdFE5M3ZrWGZlOTZkQzVMUXNYcVhJanRkanYxRUpobFZqdUlPc1FHMms0?=
 =?utf-8?B?bzhRbzlTNmZ0UWhOMlJGWDFTRU1odXRHenByaEZHZDJ0ZDhnNGNWUk1PMW9F?=
 =?utf-8?B?a3ZQQkhkWW9GdkR0VjlnOXovQWt5SlZuZktRNzlvUjQ1TFFIR0JQNC9SZTk5?=
 =?utf-8?B?T2dxdWJKYzBvTGJYMlJueXpJb0w0aExSYjdsTVNMS3Mzd1F3ZCsxWXBaRWdo?=
 =?utf-8?B?M2xWTnorb2xOb1BlMUVNOGZJcGZBZ2FaRjBTdHJPN2p6ZnovcS9LRGsxMjhD?=
 =?utf-8?B?aVFmY3ZkU2dkQkVVOWNxSUVBYWYraGNPemttTTBPTHdZcDhsYUc2YndxOWVt?=
 =?utf-8?B?U0ZiTUdSNmdoY093SW9LTkluYVZ0Zmt2NTkrQTNCbHlDcHI5bWhjYTJtZEtG?=
 =?utf-8?B?Q1RVVGZIM2VXS0F3Yit5bnc3OFdQQSt0NEwwRStmYW9jTVVlM0VxdWh6aXR5?=
 =?utf-8?Q?ZDelSkOjMutT7inwA8pgZsI=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b44827eb-d83b-4c53-8fa6-08dc2d917a2b
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7408.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Feb 2024 19:16:42.4578 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hFhj+wvP32+s252nBNUvb6djTc2cqZbHcXcw28o6qQQLD6xu6Bp5NYOXkiwrZa5ev7SssoMeYO3l2kwAMHSMbcwTWTey6udxfLwBIcksnpQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4826
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

On Wed, Feb 14, 2024 at 08:21:21AM +0000, Tvrtko Ursulin wrote:
>
>On 13/02/2024 18:03, Umesh Nerlige Ramappa wrote:
>>Once a user opens an fd for a perf event, if the driver undergoes a
>>function level reset (FLR), the resources are not cleaned up as
>>expected. For this discussion FLR is defined as a PCI unbind followed by
>>a bind. perf_pmu_unregister() would cleanup everything, but when the user
>>closes the perf fd, perf_release is executed and we encounter null
>>pointer dereferences and/or list corruption in that path which require a
>>reboot to recover.
>>
>>The only approach that worked to resolve this was to close the file
>>associated with the event such that the relevant cleanup happens w.r.t.
>>the open file. To do so, use the event->owner task and find the file
>>relevant to the event and close it. This relies on the
>>file->private_data matching the event object.
>>
>>Note:
>>- Closing the event file is a delayed work that gets queued to system_wq.
>>The close is seen to happen when kernel returns to user space following
>>the unbind.
>>
>>- perf framework will access the pmu object after the last event has
>>been destroyed. The drm device is refcounted in the init and destroy
>>hooks, so this causes a use after free if we are releasing the drm
>>device reference after unbind has been called. To work around this, we
>>take an extra reference in the unbind path and release it using a
>>delayed work in the destroy patch. The delayed work is queued to
>>system_wq.
>>
>>Ref: https://lore.kernel.org/lkml/20240115170120.662220-1-tvrtko.ursulin@linux.intel.com/T/#me72abfa2771e6fc94b167ce47efdbf391cc313ab
>>
>>Opens:
>>- Synchronization may be needed between i915_pmu_unregister and
>>i915_pmu_event_destroy to avoid any races.
>>
>>- If unbind and bind happen from the same process the event fd is closed
>>after bind completes. This means that the cleanup would not happen
>>until bind completes. In this case, i915 loads fine, but pmu
>>registration fails with an error that the sysfs entries are already
>>present. There is no solution feasible here. Since this is not a fatal
>>error (reloading i915 works fine) and the usual case is to have bind and
>>unbind in separate processes, there is no intention to solve this.
>>
>>Other solutions/aspects tried:
>>- Call perf_event_disable() followed by perf_event_release_kernel() in
>>the unbind path to clean up the events. This still causes issues when
>>user closes the fd since perf_event_release_kernel() is called again and
>>fails requiring reboot.
>>
>>- Close all event fds in unbind and wait for the close to complete by
>>checking if list is empty. This wait does not work since the files
>>are actually closed when unbind returns to user space.
>>
>>Testing:
>>- New IGT tests have been added for this and are run with KASAN and
>>   kmemleak enabled.
>>
>>Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>>---
>>  drivers/gpu/drm/i915/i915_pmu.c | 96 ++++++++++++++++++++++++++++++++-
>>  drivers/gpu/drm/i915/i915_pmu.h | 15 ++++++
>>  2 files changed, 110 insertions(+), 1 deletion(-)
>>
>>diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
>>index 4d2a289f848a..2f365c7f5db7 100644
>>--- a/drivers/gpu/drm/i915/i915_pmu.c
>>+++ b/drivers/gpu/drm/i915/i915_pmu.c
>>@@ -4,6 +4,8 @@
>>   * Copyright © 2017-2018 Intel Corporation
>>   */
>>+#include <linux/fdtable.h>
>>+#include <linux/fs.h>
>>  #include <linux/pm_runtime.h>
>>  #include "gt/intel_engine.h"
>>@@ -573,9 +575,21 @@ static void i915_pmu_event_destroy(struct perf_event *event)
>>  {
>>  	struct i915_pmu *pmu = event_to_pmu(event);
>>  	struct drm_i915_private *i915 = pmu_to_i915(pmu);
>>+	struct i915_event *e = event->pmu_private;
>>  	drm_WARN_ON(&i915->drm, event->parent);
>>+	if (e) {
>>+		event->pmu_private = NULL;
>>+		list_del(&e->link);
>>+		kfree(e);
>>+	}
>>+
>>+	if (i915->pmu.closed && list_empty(&i915->pmu.initialized_events)) {
>>+		pmu_teardown(&i915->pmu);
>>+		mod_delayed_work(system_wq, &i915->pmu.work, 50);
>>+	}
>>+
>>  	drm_dev_put(&i915->drm);
>>  }
>>@@ -684,6 +698,14 @@ static int i915_pmu_event_init(struct perf_event *event)
>>  		return ret;
>>  	if (!event->parent) {
>>+		struct i915_event *e = kzalloc(sizeof(*e), GFP_KERNEL);
>>+
>>+		if (!e)
>>+			return -ENOMEM;
>>+
>>+		e->event = event;
>>+		list_add(&e->link, &pmu->initialized_events);
>>+		event->pmu_private = e;
>>  		drm_dev_get(&i915->drm);
>>  		event->destroy = i915_pmu_event_destroy;
>>  	}
>>@@ -1256,6 +1278,14 @@ void i915_pmu_exit(void)
>>  		cpuhp_remove_multi_state(cpuhp_slot);
>>  }
>>+static void i915_pmu_release(struct work_struct *work)
>>+{
>>+	struct i915_pmu *pmu = container_of(work, typeof(*pmu), work.work);
>>+	struct drm_i915_private *i915 = container_of(pmu, typeof(*i915), pmu);
>>+
>>+	drm_dev_put(&i915->drm);
>>+}
>>+
>>  void i915_pmu_register(struct drm_i915_private *i915)
>>  {
>>  	struct i915_pmu *pmu = &i915->pmu;
>>@@ -1313,6 +1343,9 @@ void i915_pmu_register(struct drm_i915_private *i915)
>>  	pmu->base.read		= i915_pmu_event_read;
>>  	pmu->base.event_idx	= i915_pmu_event_event_idx;
>>+	INIT_LIST_HEAD(&pmu->initialized_events);
>>+	INIT_DELAYED_WORK(&pmu->work, i915_pmu_release);
>>+
>>  	ret = perf_pmu_register(&pmu->base, pmu->name, -1);
>>  	if (ret)
>>  		goto err_groups;
>>@@ -1337,6 +1370,64 @@ void i915_pmu_register(struct drm_i915_private *i915)
>>  	drm_notice(&i915->drm, "Failed to register PMU!\n");
>>  }
>>+/* Ref: close_fd() */
>>+static unsigned int __open_files(struct fdtable *fdt)
>>+{
>>+	unsigned int size = fdt->max_fds;
>>+	unsigned int i;
>>+
>>+	for (i = size / BITS_PER_LONG; i > 0; ) {
>>+		if (fdt->open_fds[--i])
>>+			break;
>>+	}
>>+	return (i + 1) * BITS_PER_LONG;
>>+}
>>+
>>+static void close_event_file(struct perf_event *event)
>>+{
>>+	unsigned int max_open_fds, fd;
>>+	struct files_struct *files;
>>+	struct task_struct *task;
>>+	struct fdtable *fdt;
>>+
>>+	task = event->owner;
>>+	if (!task)
>>+		return;
>>+
>>+	files = task->files;
>>+	if (!files)
>>+		return;
>>+
>>+	spin_lock(&files->file_lock);
>>+	fdt = files_fdtable(files);
>>+	max_open_fds = __open_files(fdt);
>>+	for (fd = 0; fd < max_open_fds; fd++) {
>>+		struct file *file = fdt->fd[fd];
>>+
>>+		if (!file || file->private_data != event)
>>+			continue;
>>+
>>+		rcu_assign_pointer(fdt->fd[fd], NULL);
>>+		__clear_bit(fd, fdt->open_fds);
>>+		__clear_bit(fd / BITS_PER_LONG, fdt->full_fds_bits);
>>+		if (fd < files->next_fd)
>>+			files->next_fd = fd;
>>+		filp_close(file, files);
>>+		break;
>>+	}
>>+	spin_unlock(&files->file_lock);
>>+}
>
>When we initially chatted about this I for some reason thought there 
>was a revoke fd system call (and so the matching low-level helpers) 
>but looks like I imagined that.

Right, there doesn't seem to be fd_revoke in Linux, just close_range 
system call, but that's only supposed to close fds for the calling 
process.

>
>I fear the approach in this patch is a no go because it is too much 
>touching of VFS internals and what we really need is feedback from 
>perf owners on how to solve this cooperatively (cross-component).

Fair enough, I am also not in favor of having this code copied over to 
i915.  Also it relies on specific perf core implementation (that the 
file private data is perf_event object).

The only other promising solution was calling perf_event_disable() 
followed by perf_event_release_kernel() did look promising, however, 
perf core still needs to handle the perf_release when the fd is closed.  
Maybe that code should just check if the event is already released and 
not do anything.

>
>One idea which I posted a month ago as a rough sketch was https://lore.kernel.org/lkml/20240115170120.662220-1-tvrtko.ursulin@linux.intel.com/.
>
>There it was basically a new late event destroy hook and making some 
>perf core objects reference counted. But it needs feedback and 
>guidance on the locking model which wasn't received so far.

The late event free does help with the drm reference, but closure of 
perf fd after unbind still needs to be additionally handled (as in, we 
cannot do a pmu_teardown() if the perf fds are still open). We must 
cleanup everything in unbind somehow before going to bind. Otherwise, we 
either run into some NPDs or pmu registration would fail on bind.

Thanks,
Umesh
>
>Regards,
>
>Tvrtko
>
>>+
>>+static void cleanup_events(struct i915_pmu *pmu)
>>+{
>>+	struct drm_i915_private *i915 = container_of(pmu, typeof(*i915), pmu);
>>+	struct i915_event *e, *tmp;
>>+
>>+	drm_dev_get(&i915->drm);
>>+	list_for_each_entry_safe(e, tmp, &pmu->initialized_events, link)
>>+		close_event_file(e->event);
>>+}
>>+
>>  void i915_pmu_unregister(struct drm_i915_private *i915)
>>  {
>>  	struct i915_pmu *pmu = &i915->pmu;
>>@@ -1354,5 +1445,8 @@ void i915_pmu_unregister(struct drm_i915_private *i915)
>>  	hrtimer_cancel(&pmu->timer);
>>-	pmu_teardown(pmu);
>>+	if (list_empty(&pmu->initialized_events))
>>+		pmu_teardown(pmu);
>>+	else
>>+		cleanup_events(pmu);
>>  }
>>diff --git a/drivers/gpu/drm/i915/i915_pmu.h b/drivers/gpu/drm/i915/i915_pmu.h
>>index 41af038c3738..6f62e820f34d 100644
>>--- a/drivers/gpu/drm/i915/i915_pmu.h
>>+++ b/drivers/gpu/drm/i915/i915_pmu.h
>>@@ -55,6 +55,11 @@ struct i915_pmu_sample {
>>  	u64 cur;
>>  };
>>+struct i915_event {
>>+	struct perf_event *event;
>>+	struct list_head link;
>>+};
>>+
>>  struct i915_pmu {
>>  	/**
>>  	 * @cpuhp: Struct used for CPU hotplug handling.
>>@@ -152,6 +157,16 @@ struct i915_pmu {
>>  	 * @pmu_attr: Memory block holding device attributes.
>>  	 */
>>  	void *pmu_attr;
>>+
>>+	/**
>>+	 * @initialized_events: List of initialized events
>>+	 */
>>+	struct list_head initialized_events;
>>+
>>+	/**
>>+	 * @work: worker to delay release of drm device reference
>>+	 */
>>+	struct delayed_work work;
>>  };
>>  #ifdef CONFIG_PERF_EVENTS
