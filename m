Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05B0756B6DE
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jul 2022 12:16:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACCD110E127;
	Fri,  8 Jul 2022 10:15:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB90310E11E
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jul 2022 10:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657275358; x=1688811358;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TKPz5DZn0EgMYAfZbJ3Vr8aLbfcYhOsSJk2CHxThC3U=;
 b=SR70tiS9bvdtykYdKr5JkoS6Fd6dqSEqgMOTc6OPr7+aLHJ4TPTkkPfJ
 cQ+ntiIogReH+0esByUko+VHwyLqDuIMl2lPFDwoOnLTXqkj9hmO/4SoB
 O/EBetXkvxm8vT/AN4yQ05OyhB7UtE9iv0Arq1NRycyh3ysDbc1IrkVBj
 woF/bSOX6y6YktkyvuAatqMF+vp5sixe7DwgZDVoFEwY1lsboXizz/pJm
 Slq4DynktEk9cUuoMwVJ8qCMtOTtXAj9ZysNzsMToM7nofqhhOOCwKqzu
 B2qaABg04IXi6Mj0cT4YSnk2m8RiFrE1tUr5TfUw4l1uZaeyv0uVuGdyq Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10401"; a="264662177"
X-IronPort-AV: E=Sophos;i="5.92,255,1650956400"; d="scan'208";a="264662177"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2022 03:15:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,255,1650956400"; d="scan'208";a="720840466"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP; 08 Jul 2022 03:15:57 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 8 Jul 2022 03:15:57 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 8 Jul 2022 03:15:56 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 8 Jul 2022 03:15:56 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 8 Jul 2022 03:15:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a56KrV4QP2W+cTCz7ar/WEyPZHS662hbLdbDhVVC4ZmRuP2pjtaW++qKNSe6ou2bH5bgJhEjd8EiaN5ZsLYfGcFp+RhXy6kdteWys9JoIZggZyQ54xjR0ABXLcsFWuQx/Z1Hkjq/PRk8mB5RGINeRC+SAeXb5IXX01TEKChQFloGCOW7PJuuRpP5RySfCJxVXjhZR1eJfvGmeM98PClp32gtCMQjojBPvb36Lt4QtZKiDAJYN1EJxRRM0ozS0y2Hns5gd7mnOf6ieDovEokM03Hcx7AM6i7qMt1RGvio7b+5gzB42ipmhHBi2d9Nc5LjB5i1+UCdG+LcBbk+eqvINw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=chgPvzPlfTCF86RcwGFLwKd0XFkFzvpnDw0NAB6wnbQ=;
 b=GQE/ofA3rxlkoyoLZmSUFjWjZ+ZTPQGVi1o3aWTG2EP51oQAnz2JLDo77X1LraBaFIivkTxMFUfg9/E4luiuF3rJOoi3YWeZibKcdT3PgiKt2QzIBpE46oyW69woV8WQLZ6C/lY5N+DZmpbyVNBsMP+YhoBPnuM44Za7aCAFOabClJ2RXUO8eu3rzFRqj1flrXho+hyX4107rG3IMuHSjc7xsx8aotm2Xj4/jt0x52OfB6Q8V+ZzyYZ/ECScGC5dic42bHOxE4Mmi3x5fMVJSkAH8IUKA2x3FEMez4aHLhRUP+8ygoUIvZvVlrHpZrDwoKe8z+VaSd3csB66zPsuFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB4243.namprd11.prod.outlook.com (2603:10b6:a03:1c8::16)
 by BYAPR11MB2904.namprd11.prod.outlook.com (2603:10b6:a03:87::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5395.18; Fri, 8 Jul
 2022 10:15:53 +0000
Received: from BY5PR11MB4243.namprd11.prod.outlook.com
 ([fe80::d5e6:605:6707:1e17]) by BY5PR11MB4243.namprd11.prod.outlook.com
 ([fe80::d5e6:605:6707:1e17%7]) with mapi id 15.20.5395.022; Fri, 8 Jul 2022
 10:15:53 +0000
Message-ID: <d2601b7a-247f-4638-1068-92fa8f35ef58@intel.com>
Date: Fri, 8 Jul 2022 12:15:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: Andi Shyti <andi.shyti@linux.intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
References: <cover.1656911806.git.karolina.drobnik@intel.com>
 <b0d575e51f795d0b19ca93fbf3e796a747c961ab.1656911806.git.karolina.drobnik@intel.com>
 <YsceoP5CYySLWjJk@intel.com> <YsdVJTU+kZzZS1wb@alfio.lan>
From: Karolina Drobnik <karolina.drobnik@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <YsdVJTU+kZzZS1wb@alfio.lan>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR3P281CA0085.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1f::22) To BY5PR11MB4243.namprd11.prod.outlook.com
 (2603:10b6:a03:1c8::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a95e4b2b-2b52-493d-9795-08da60cad6be
X-MS-TrafficTypeDiagnostic: BYAPR11MB2904:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VpvWS6YlXM4O3zKfAgoJuGJglXCzGY9op2/i5ZPMXwtxCwoG9ZSV6BabHJ0/+73KCimoKZDYMwQPBlKJMpFcECY2JCZZAklGv1Ca4GDbXfbFfqAMK6KrYETjELnL+DvzYFTeCb9CgLMGC/vOm4WKHzB+CqTdzBcrTse98XD4QQsJl9PYfKZniLV3Yr1P++WjMTTmnjhw5N0AOs9jE1HmiHf1Hh/UvhnUPu1u4gbjdu6fPntXpS0cEkDPPjnXq6IcW3bCVBja2SAQ3QaqsiR6BZ/RfKR5igT25/RQIfs5LKDqqDmyzhoWFX5Rs5hE92TC78JCBa6yZKPWHppxcoqt3K0iIvVHAC4h9d30vL9MCjqTLjHDjFDa6CuVi25QO3J9n10Aabll89ZC+d+ogQmu+1eeov7UxzbaXne2zcAjF8o0NLM+dKXYMIlBdhTo+wmT0WI0FLxpLmBL793Tuqbdpe46JoVqV2pFdYExEgEwn0Mt9ZiSca6QRNjeKEyIoZQi7/XJdX3tny0Vyl8r3F9ukKcvr5vosIQOw+chMaFFFmalaXkPhv7TFbiy1/L2IOmpo5sEZOMdtPxMSF3s4zD7zMIqdCUaBgEMD2xb1wXpQiQt+F+R3Ckp1key50QGon1Rm5r+na2bqLzw3VQN7lA/0Qrw2/My2PzKjCV2QUVjsDnc2Anqs0/ElALC3YAmAVX5Mxe143h3C2D1Ddy3jrvPA6SAw1Mc3xEnEGR1bOG+lX8e21t2YvyCFWm+0Yi5BdnDfpnT7C8/nHJC/SMAsnBk1sTmutCm68u0JhkidIA9NCw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4243.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(39860400002)(396003)(366004)(136003)(346002)(53546011)(31696002)(36916002)(66946007)(8676002)(4326008)(41300700001)(5660300002)(82960400001)(478600001)(8936002)(66476007)(83380400001)(86362001)(26005)(44832011)(2906002)(316002)(66556008)(6512007)(966005)(2616005)(6486002)(31686004)(186003)(36756003)(38100700002)(6636002)(54906003)(110136005)(6506007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bjRqM2plak9iL1I5bkU0V1pqNVlxdjRhOXlUSlZ1SlN5b1ZRcE93Z3d0dWxI?=
 =?utf-8?B?MzhobFB2UlZIRy96M1BPRVlHS0RDK2EvUVFQSE1TWXpZcHNFN0xrcXgzWHJ1?=
 =?utf-8?B?QThMZXd1ZXZmczlyNGhMYW8wVjJWUGg3S2hHaHFodG5TU01WL2g0ckpwWFZ5?=
 =?utf-8?B?TzIzOTh0VG1ObWFwS3k1VFY1aitCVlNyVllYTk9MN08zWkZ6MHVKQ3daNFZl?=
 =?utf-8?B?bDF2RjBRalJOdFFJUXI2b0JDaFExSlJYUGIrNWdLVmZSdHErSHFQZzJ6MHow?=
 =?utf-8?B?cXZkT21ldWRDVHh4SFQxaE8zbEJMUWVEdEF6eVhrSkZVVnhOUU1VOE9FVFhG?=
 =?utf-8?B?b3VtWnhJdUxBTTRyZ3JXM1RISHZuUmZVK0RsaFVnTGJJWUYzdHJXVmdlNzZN?=
 =?utf-8?B?eVBQTGRJeXNhdmlvL3JOVmxVbVFyQ2V2bHdDWFpBZEVmeE5SbzlNTVlqa2h4?=
 =?utf-8?B?T1Z4NXE1OEprSkc2bjFqOTRxbHl3cWMvWjY1VVU0bEw1eHRGeG1kcGtYNWFG?=
 =?utf-8?B?MFRta2RLVFZHNXZUM3RQcllIbGxDQ01wQVQrdVNFU1hNOTdNWWw0V0dBeWpO?=
 =?utf-8?B?K2NaR0VyK0dpN0xjaGtQTExqSzZwNisxekV6alBYeGFyaGxuQ3ZSS2RVUnBY?=
 =?utf-8?B?RUVHdkxwKzU5bStoMWJHbDNadUdSMlZrZS9HZEdoVVJ3TGZsUHhSem44blBZ?=
 =?utf-8?B?ZVV6ZG9Zdm5WaHF4TFlJL3hxOE84N1NQTDRhWlliNDFVTXFPSjQ1MUxwVVVF?=
 =?utf-8?B?KzBIZXp2L0MrRWN6djZ4OEpGekplaVZ2RjBKOFVxWCtoQlFFdVJIYXZPQWhk?=
 =?utf-8?B?ei9nbUxGTnY4andqNnZXdG9YaGZrY1hiTGUvY0x1SnZsV29OcUhrMEpQeUxj?=
 =?utf-8?B?NWdmWnVuREJyZ1YzOUwwZWMrUUwyNlFmTzlna0VlTFhST0Jwa1Z0N3czT2Rr?=
 =?utf-8?B?MW8rWnlrYTdqOFgzQkNXYkVreTJ0Y0FnM2g0VlN5VlpsMThlaUJ4cHBhSTgz?=
 =?utf-8?B?dkVuRDlNekR1ZzlTZEk0Y0t4TmxrZExMN3cyeXlDc0p5V1dscis4RlZwa0h3?=
 =?utf-8?B?TU4vdjlEUWtDYjFOSEQ4bVZ2QjhVc2JUeGt6VklnL28vR0x1cHZzTndUeXZR?=
 =?utf-8?B?TGtIbTBTR0xkVk9XVCtCNzJtaGpNMU5GL1pyc3ZxeDVqTDFXc3cyVFJTMWRq?=
 =?utf-8?B?dlk4cFJzWWpKVzc4QzRpZnVKeUlkVXp0bGtXUWVFQVZWTFFFTW4rK1VBNWFG?=
 =?utf-8?B?aHJ1L2VnUEtLelRnUUNWZVg1LytHWjJRK1p4Q01TWTVMMlZPcExtdGNwTzVS?=
 =?utf-8?B?YWl3MG1XUElyUFpZcFdDU2l6WldJQm1Wam1jNCt5TDFueGJNRGQ2Z3ZMcDdU?=
 =?utf-8?B?MjNQWEppNnFTQVQ3L0ZaUWtsRjgwWGpaOVBWb2RUc1MvZU5hQkJ0V3ExTzJ3?=
 =?utf-8?B?MlVrZkdGZENKb1pYYU9pZTZGa3kzWHNHa1BsRHRDMXNuaUV1Q2RMbzhrYlFz?=
 =?utf-8?B?T3I4TkNyTGNpNDJ5R3BnVmthUHcwQlh6ZFZoWWxQWThiRWVIVGo2eFlHMkVB?=
 =?utf-8?B?cE8vaDhsNy9PM2JWUFBuRVZIZG1HQzBLcnRnVjJ4RjZKNXVXdEFBTmQ3T01h?=
 =?utf-8?B?RGNYVWxOcnVIQ21adEhtUXdhZG9GN1hySGg2a1h3elFkMFZ2alZHdGFEQ0Zh?=
 =?utf-8?B?ZCsvKzY3OEMxY283M2p3V0h3TEk5WHFBZUhLVEt1NU52YlJCREtKRTh0RmE0?=
 =?utf-8?B?Zzh3R0FOVEZBYWJHOTFVa3IxNTNYVDhlS0g1c2JNTjlXQ0tpOStJSThJbXA5?=
 =?utf-8?B?dXJYeW9YVzV0d2pndFRXYXRnMjVUUitvN20ycXJYUjlDQi9lc0tVc0k3YnFN?=
 =?utf-8?B?QWZQdE5NenpzWU1KblNuOUQ4TUtyVVFkcU5CVk9GNkxKNTl0azlnZjBrY1NJ?=
 =?utf-8?B?UXZ4TDlTRnNOc1lyNFg4NlZaOStocHZoMGhoVE1OZmJqaGFNN2JMeVhIaUpW?=
 =?utf-8?B?WmZkenV5ODZNSVdBdExUYTdHTHRwL2lDbkRhWWdxdFRPeGdIOWdrRmpRUW5n?=
 =?utf-8?B?c0lqTGwzVDg5VmFnZmdNWGRkVktycU1EcmVzY0JxWFNxbEZpWTFQa2FoejJL?=
 =?utf-8?B?RmsyK2p2VllmRlB3UXcyQzVXTlYzZFIreG1rS0ZUaXQwUkg4V1M1cDNORFFF?=
 =?utf-8?B?QXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a95e4b2b-2b52-493d-9795-08da60cad6be
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4243.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jul 2022 10:15:53.1633 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oUjDP7u0jIWyc0NezQq6JQ0rX5TdHrR5MCikpMVXxtkPpdNxGbH9EM9HOF9MhjyKqsJVZmoDOSRk8lDXjfo7g/j5FxN7b9TNdZXI49F8Q2w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2904
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/gem: Look for waitboosting
 across the whole object prior to individual waits
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
Cc: Thomas Voegtle <tv@lio96.de>, intel-gfx@lists.freedesktop.org,
 chris.p.wilson@intel.com, Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Rodrigo and Andi,

Thank you very much for your reviews.

On 07.07.2022 23:50, Andi Shyti wrote:
> Hi Rodrigo, Chris and Karolina,
> 
> On Thu, Jul 07, 2022 at 01:57:52PM -0400, Rodrigo Vivi wrote:
>> On Tue, Jul 05, 2022 at 12:57:17PM +0200, Karolina Drobnik wrote:
>>> From: Chris Wilson <chris@chris-wilson.co.uk>
>>>
>>> We employ a "waitboost" heuristic to detect when userspace is stalled
>>> waiting for results from earlier execution. Under latency sensitive work
>>> mixed between the gpu/cpu, the GPU is typically under-utilised and so
>>> RPS sees that low utilisation as a reason to downclock the frequency,
>>> causing longer stalls and lower throughput. The user left waiting for
>>> the results is not impressed.
> 
> you can also write here "... is not impressed, was sad and cried"

:)

>>> On applying commit 047a1b877ed4 ("dma-buf & drm/amdgpu: remove dma_resv
>>> workaround") it was observed that deinterlacing h264 on Haswell
>>> performance dropped by 2-5x. The reason being that the natural workload
>>> was not intense enough to trigger RPS (using HW evaluation intervals) to
>>> upclock, and so it was depending on waitboosting for the throughput.
>>>
>>> Commit 047a1b877ed4 ("dma-buf & drm/amdgpu: remove dma_resv workaround")
>>> changes the composition of dma-resv from keeping a single write fence +
>>> multiple read fences, to a single array of multiple write and read
>>> fences (a maximum of one pair of write/read fences per context). The
>>> iteration order was also changed implicitly from all-read fences then
>>> the single write fence, to a mix of write fences followed by read
>>> fences. It is that ordering change that belied the fragility of
>>> waitboosting.
>>>
>>> Currently, a waitboost is inspected at the point of waiting on an
>>> outstanding fence. If the GPU is backlogged such that we haven't yet
>>> stated the request we need to wait on, we force the GPU to upclock until
>>> the completion of that request. By changing the order in which we waited
>>> upon requests, we ended up waiting on those requests in sequence and as
>>> such we saw that each request was already started and so not a suitable
>>> candidate for waitboosting.
>>>
>>> Instead of
>>
>> Okay, all the explanation makes sense. But this commit message and
>> the cover letter tells that we are doing X *Instead* *of* Y.
>> That would mean code for Y would be removed. But this patch just add X.

The boost we have right now is applied in i915_request_wait_timeout, 
which is at the lower level than i915_gem_object_wait, and works for all 
users, not just gem_object(s).

>> So it looks to me that we are adding extra boosts with the code below.

That's true - we'll have a redundant boost check for gem_object, but 
this is fine. In this case it wouldn't apply the boost again because 
either (1) the request already started execution, or (2) intel_rps_boost 
returns early because i915_request_has_waitboost(rq) is true.

>>
>> What am I missing?
> 
> I think the two things are unrelated and they are not mutually
> exclusive.

Exactly

> What this patch does is to scan the fences upfront and boost
> those requests that are not naturally boosted (that is what we
> currently do and as of now regressed) in order to not leave the
> sad user above crying for long.

That is correct (especially the crying part)

> Am I right? If so I would r-b this patch as it looks good to me.
> 
>> asking whether to boost each fence in turn, we can look at
>>> whether boosting is required for the dma-resv ensemble prior to waiting
>>> on any fence, making the heuristic more robust to the order in which
>>> fences are stored in the dma-resv.
>>>
>>> Reported-by: Thomas Voegtle <tv@lio96.de>
>>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6284
>>> Fixes: 047a1b877ed4 ("dma-buf & drm/amdgpu: remove dma_resv workaround")
>>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>>> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>> Signed-off-by: Karolina Drobnik <karolina.drobnik@intel.com>
>>> Tested-by: Thomas Voegtle <tv@lio96.de>
>>> ---
>>>   drivers/gpu/drm/i915/gem/i915_gem_wait.c | 35 ++++++++++++++++++++++++
>>>   1 file changed, 35 insertions(+)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_wait.c b/drivers/gpu/drm/i915/gem/i915_gem_wait.c
>>> index 319936f91ac5..3fbb464746e1 100644
>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_wait.c
>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_wait.c
>>> @@ -9,6 +9,7 @@
>>>   #include <linux/jiffies.h>
>>>   
>>>   #include "gt/intel_engine.h"
>>> +#include "gt/intel_rps.h"
>>>   
>>>   #include "i915_gem_ioctls.h"
>>>   #include "i915_gem_object.h"
>>> @@ -31,6 +32,38 @@ i915_gem_object_wait_fence(struct dma_fence *fence,
>>>   				      timeout);
>>>   }
>>>   
>>> +static void
>>> +i915_gem_object_boost(struct dma_resv *resv, unsigned int flags)
>>> +{
>>> +	struct dma_resv_iter cursor;
>>> +	struct dma_fence *fence;
>>> +
>>> +	/*
>>> +	 * Prescan all fences for potential boosting before we begin waiting.
>>> +	 *
>>> +	 * When we wait, we wait on outstanding fences serially. If the
>>> +	 * dma-resv contains a sequence such as 1:1, 1:2 instead of a reduced
>>> +	 * form 1:2, then as we look at each wait in turn we see that each
>>> +	 * request is currently executing and not worthy of boosting. But if
>>> +	 * we only happen to look at the final fence in the sequence (because
>>> +	 * of request coalescing or splitting between read/write arrays by
>>> +	 * the iterator), then we would boost. As such our decision to boost
>>> +	 * or not is delicately balanced on the order we wait on fences.
>>> +	 *
>>> +	 * So instead of looking for boosts sequentially, look for all boosts
>>> +	 * upfront and then wait on the outstanding fences.
>>> +	 */
>>> +
>>> +	dma_resv_iter_begin(&cursor, resv,
>>> +			    dma_resv_usage_rw(flags & I915_WAIT_ALL));
>>> +	dma_resv_for_each_fence_unlocked(&cursor, fence) {
>>> +		if (dma_fence_is_i915(fence) &&
>>> +		    !i915_request_started(to_request(fence)))
>>> +			intel_rps_boost(to_request(fence));
>>> +	}
> 
> you can remove the brackets here.
> 
> Andi

Would you like me to send v2 for it?


All the best,
Karolina

>>> +	dma_resv_iter_end(&cursor);
>>> +}
>>> +
>>>   static long
>>>   i915_gem_object_wait_reservation(struct dma_resv *resv,
>>>   				 unsigned int flags,
>>> @@ -40,6 +73,8 @@ i915_gem_object_wait_reservation(struct dma_resv *resv,
>>>   	struct dma_fence *fence;
>>>   	long ret = timeout ?: 1;
>>>   
>>> +	i915_gem_object_boost(resv, flags);
>>> +
>>>   	dma_resv_iter_begin(&cursor, resv,
>>>   			    dma_resv_usage_rw(flags & I915_WAIT_ALL));
>>>   	dma_resv_for_each_fence_unlocked(&cursor, fence) {
>>> -- 
>>> 2.25.1
>>>
