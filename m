Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA6B3549981
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jun 2022 19:06:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAC7410E35E;
	Mon, 13 Jun 2022 17:06:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C402C10E35E
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jun 2022 17:06:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655140004; x=1686676004;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QP+UR3YzQqOQgESqJMYvmzGZpxN6sgXn/8MejNI3Oqc=;
 b=TYxOIV0p21oZ5kqAPA29udWXpsWZioGZwmnVTLPtHMbcGvQBeV5isGmA
 hGuNfrW7jrsrU2V219Y9eIquwOObmyfvj/gJFrYTi8CX2/BauPXMNsGtI
 2YBHp24NMHfdBtS8PL+ev7p9Ojp2Kgo1Ki5+EocLuXYYKk3p03ASg55Om
 6pLXF1aAMcUoYiLy3NLQToyJbTuf6nzZ4gIOmEkFmuWKC9L4pDtHrJpmB
 ONAbKXv6GFg6KjLtTxW2bXQosFkMPELLu360GBt8mpfKzSKMJCJOUIVt8
 l79IazMs8qBnHG75C2uKCxFJWNikQDbQYJToX4eB3c1II5F+SAljay+pF A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10377"; a="275879769"
X-IronPort-AV: E=Sophos;i="5.91,297,1647327600"; d="scan'208";a="275879769"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2022 10:06:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,297,1647327600"; d="scan'208";a="557743308"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 13 Jun 2022 10:06:42 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 13 Jun 2022 10:06:42 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 13 Jun 2022 10:06:41 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 13 Jun 2022 10:06:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ged/JXMgUOLcGfkmG1MgZWjcBkDPXuhYNnaGblPLhB85+Shz7VQ1b+ApbxswIUpdl2bxSFL46P1fM8vHejhVM0GZI81VfgQvJXdGSJrg9G9/GGRyD+S/rKimvbrZrJFTHhLTeAXh2lgAZ+W8AEQ0yDOkCrTBo5QN77LSaeCgLg+SjqFTRgKjUL85+SIAnoXFStT9+qT3pEbfU4hkkK1MhoD1bSepOU6tNcWxo2N06rnKa2H5X//AjCmkpQOPUlH44bYgpiIHbosEMEfQ+N3PGz6kcr6aEy4mLX70vi29e9MCsgVbEZY9od5nfN1GYyx1E/ycZaS3tzu8jvDuTrSh7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VDvYHKoyiidAxM+kWb4mCGmE3oxoi+Ddz+RVhHnqXn8=;
 b=OFt+hk4BxBNq6/e+X/WrHrNfIzvnyWJMRWne4PHDPjrivAWU34/uoNKY9o1QGS/AUd5HdsHOoIuqQc0Zn2YplLjPIayVeuvgaHzrbDPLzNsbk86FcKoWv6YRgEBSY/Vsc+b0mUQNwcXrj4KITs2EGzEnYaiI4a5e5y6Gvnr4sf/lHSq5CYwRiEq1TEfrW0e3ahfT3pi7+ShlWD3Sr4lRnSSl9Cyp6sQ6V+uNI1eJJjeANJloCjVwmkWICqHFzWHQuLOWhrm3mvGhUl7qAv87Xa6M/WC7m3RSB9R1UdtLY3lf9SQ6de+SqZNmkFYk8bjymB0y1/RDT9vToSpp+6XPPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 BN7PR11MB2820.namprd11.prod.outlook.com (2603:10b6:406:b5::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5332.19; Mon, 13 Jun 2022 17:06:36 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::b907:4e16:92da:b2cf]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::b907:4e16:92da:b2cf%2]) with mapi id 15.20.5332.020; Mon, 13 Jun 2022
 17:06:36 +0000
Message-ID: <7b394930-e6fb-8dc6-ba63-352f7a623b97@intel.com>
Date: Mon, 13 Jun 2022 10:06:33 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220609231955.3632596-1-daniele.ceraolospurio@intel.com>
 <dbc2ad75-1248-8d53-281d-f0a308733972@linux.intel.com>
 <7ede8090-bfbf-17a7-31f6-24e844a70673@intel.com>
 <a0860c06-4aba-deff-9101-aecdd8c14a02@linux.intel.com>
 <d6bc42f5-86c1-3bc9-d731-2bd0a978ece5@intel.com>
 <f50ee482-ed77-a644-095f-b2a988306de2@linux.intel.com>
From: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
In-Reply-To: <f50ee482-ed77-a644-095f-b2a988306de2@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0046.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::21) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e611ff1a-bc33-46b9-d4b4-08da4d5f1320
X-MS-TrafficTypeDiagnostic: BN7PR11MB2820:EE_
X-Microsoft-Antispam-PRVS: <BN7PR11MB28203396C09C3A2F0E1B25CBF4AB9@BN7PR11MB2820.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MH014hpKoWuHwjdzdJjukA3sOPkH6aB/+HvrxhndLq9wnKLJT17xRV1LSVyhuhbE/1rXRXiOps8J4YNNbFWwR6F9PV/W7okN1GoGxQjVuRNhZvMQtlSLkenjW0Yp1BNDhXnWIQ/XGfxxHE6amyGrLa00561V/QVwfyl0RbL5whSOxoz0PXW8YrX1ZRGo3PTUGQmHtvWgjHmKbfc9Iol0dujWgKsGvMPRtIjfFLDxBXIp9LdJIBNqFV5MoBYYXEUq2X5ueEWv/joc0oezqN2opJXVRmg/qN/NmH50YDNeuEuZNixzIvWrTAmXrjuzFOb25UrKI3u+LvKNXH8jA+/PNH1KpCN05xGCb810wM9pttfCZJ6oqFBw9jAt7/n4Bz14kn/g1Wag0AJEk9LYGaHqB/zqntcF8u8+QVxUzKBtzZzN87g2iKBzYVq2QrK6jl+pfdN9OIxpng7ZkBoZ+xaI0bbXl5wdZaHIVQFz32JdrmvDh1TIa9e+7XzLMO3InxJGOs8gDows1oyhSB3j1Zzn2ZdVRqxwQ6fvToRodFiMNWNtPZnHOwxm36c9ga/BSQH5upA4I6qQ+imytV0+BAI0rV8go64UkqX4o2mgg3aNn+Hyw+ef5xj4dz16BptMMGyttuaK0KjRFN6Nv8EurrR/+hEKp6zPwooewaIpGKU1ph/+nDl6dm/GFMgDNiqVlqjiAX3+8ViPPg33etFJiOBFy5vxhU5VuZIiY43FzKX1trTGY3bWTPlPpaWLxN2U/U9m250hmnmAOLbff18/YQDVCQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(508600001)(6486002)(316002)(6512007)(53546011)(66556008)(4326008)(5660300002)(31686004)(26005)(8676002)(2616005)(66946007)(66476007)(2906002)(54906003)(8936002)(86362001)(31696002)(82960400001)(36756003)(186003)(83380400001)(38100700002)(6506007)(6666004)(60764002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UStjaDVPVHFFK0tYTWFUSXBPMzNheWdvbkttbjRTZkxsd01BcXAwZVhmcDRl?=
 =?utf-8?B?ZHV5WG5pOXB4aElVOCt3VFhTVXQydm9JZW9MbDBLYi9qZ3U0enorUzB1ZnZN?=
 =?utf-8?B?Ly9jYUlIU0ZtMGk2aVB4aWY5RHZFT3ZlZzRkNzFjdm5rUDgwK0JoUXZXWVRu?=
 =?utf-8?B?eTJMYXBNUXovb212d25qMEhwU3I0eXIyOXRUTk1mRVRqMldZTHNsWW9uK0p0?=
 =?utf-8?B?K3dMY0tDSnd1OVRTSDNxQU4zMnE0R0pjbnZKWnhWak9GcE4zdU90SDF0WEkx?=
 =?utf-8?B?VWo0SmdoRzBWdnJuNFM5bllGYkp1VkNFdVRxY0RQZ1pEOWM4YndKcEkzS1c0?=
 =?utf-8?B?NWpPZkxyVTBVeWVBQjh5SG9rN1VYU0MzeHU1N3B6OFlieWU0cVl5Q0wxOFlj?=
 =?utf-8?B?Z2xKMVd4c0YvYnFpL2dhVWxsNSttamF0NVBGL2RFdkRuTkxNdGZJZ09DQ3BS?=
 =?utf-8?B?WmJXU1lPZzdBT3FuL2FvYmVOelg5RU9rU2dzVlpDUUx3T201Q29lTGphMEM5?=
 =?utf-8?B?cWdlUDVYN05yY3BMd0RMV1RXZCtZaEFJMjc4MFVHT05ubkV1Y1VSV0YyMkRH?=
 =?utf-8?B?N09VQkJDQi9IdkF4VVVYZ1dHaU41Tkd2cUJ2dndKR0dtZnJmQWs1SVAxdnNZ?=
 =?utf-8?B?RXRVMEI4VlVIVUZuNGhRbTdkaDlheFY2RENpazhleWtSV2ZVNzRqK0FzTG1v?=
 =?utf-8?B?SEVaV3pja1JKT3B2OXVDRnIybmVYeUN0M3RsUktJYzF1V25pTEx2Y2srNUtG?=
 =?utf-8?B?Z0c1S0c5Y25GYTNQU2x3ODNJZFdrRDNHRkFDWXdTaVRjUUhHWEVTWW16bDBL?=
 =?utf-8?B?RHg0bnVwZkptNE1CaDR0YnZJQmRRTE1kS09sRG9RTk00K1l1WXd6NGI1NGNP?=
 =?utf-8?B?dFNhS1ZDL0ZFb2NPcG9qUzFLZVBGcVBVZ0tpbjZmc2dzYWd6bjZDbEV5aU5h?=
 =?utf-8?B?Wllqam1kejB1WGpWZmtqNndvdHNleGdudXRaVXZjVmtucytqdi8zK0ozMmpH?=
 =?utf-8?B?NllkMEwvQnZaWkZSRmVxSGV4d3FDK1F3WHFnWUJaN2VvSHV3dWMxL3VvTkpw?=
 =?utf-8?B?Rnl4UUVZc1Y2RVJUMFFNbldlWWFUTWhDdC9CejYreFBCeFNyY3FEMisvb3pW?=
 =?utf-8?B?N1BNb1NCZkpBajRpQUM4OXl5ZENCcVhZdytwdFZGZGJIdGx2cmZCa1pPRmpX?=
 =?utf-8?B?bktBeW1PQ1pRR2dRQ3FFQzI0NjBDdnA3Nmx4aThQdGhQUzB6YTJzbGRIc1BJ?=
 =?utf-8?B?UXJ2RVpURTVDeW9DaG1DNzlBalh4OHJjM3lPdHdwSmg5TzBuSGIreGMyek5N?=
 =?utf-8?B?Mmc3WFpDVHhYRjhPNVMvSThxd1dVckRXd0lpcmdUNCtuYmxYb3Zjand3TzNX?=
 =?utf-8?B?emM3V1hYaWp0SVRrZkpsOUpVNmNHMnNOMGF0QjJsM2Z5bHNkbUVJYmhOUGlE?=
 =?utf-8?B?THgwWnVoR05sd1phNGpmYmNYcWU2SUJRT3dEREt6UlpSWStnU2tDNXplbzll?=
 =?utf-8?B?SU9EVlN1dk55azN4aTQzU05UZEphOUFTM2hNRHpoQnhBcHp1elkwS2F3SGtN?=
 =?utf-8?B?TzdGUlIvRWRlNGVZY1NYS1NDYzlxRkZMYlZBNVAyMFcvMFBxb1k2aER2MFkx?=
 =?utf-8?B?RHFJNlE4Q1Q2QW5SN2dJRWVNRVVDYytIVVlHcDNuTnZzRWl3Z1llWU9xanZR?=
 =?utf-8?B?YWxRNzVPZHZVM2JhYUhOSVp5enV5ZFZKLzFnVS9SUjFRNHNXb2FSVDlVM2VS?=
 =?utf-8?B?MDlVUFhxN3E3UWY0TGVNMEZjbWdudENlVnFNUGpCek1pUzFud0tmQnhlOW1I?=
 =?utf-8?B?M1YwOTU4Y0xZME1lQ2dDNzhabWhBMTRQQ1M4YlRMbkhoTzJ1SldZclZOaTQ1?=
 =?utf-8?B?RERneXdrMEFpVEY2MC9IdERqelMvVFY3RVJLUHEySFdRNmpMNW85MERGWkNj?=
 =?utf-8?B?V3NIaWJqM0lpdmVTdzl5NUVkc01tOTlNclBWN1FnQVJxeXN1V0c2VzE4SC92?=
 =?utf-8?B?V0FRU0FrQmNkTTU3RVVYVUFFZmNoSjlvaGVLZmd3Z1RtZzJCcUtYQ0Nmb3d3?=
 =?utf-8?B?NDRJMVhhRm1icWFkVEcrdUdLZDZ1QlM3ZWpsKzk5UjVZZjFoNzB5YXhRSnEr?=
 =?utf-8?B?aStQNEZrVUI4alFNV1MweGZuNUQvcDJMUllBUVBOZnVOVnFwVC9uOXpSWlh4?=
 =?utf-8?B?Y0psOXNyazh4MEJ6Y0hZQlNmSzFvdi9BMzROZjZ2RHY1aUJseG1PQ3JQQ1lv?=
 =?utf-8?B?U0VhYWFJclBCWjFlbVFiZjNOcXN5VDFyZ1JqTGxvNUNlTEF3d2I1KzhTdjRH?=
 =?utf-8?B?TDRNeVd3NWJ4QjNvbWt3RmQ5Y1JsTTAxbXhqZFFnQjdOMXE3ajVKV2IyWjdh?=
 =?utf-8?Q?5wj0zqqVSPG6eZSEUaS6oS3NymHULJ1T7gsoT?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e611ff1a-bc33-46b9-d4b4-08da4d5f1320
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jun 2022 17:06:36.5746 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mzp60RIFNB5b43DTYT6bO+JuB1omYKEiCQCbCHttpxywhIFWV3I7HPppDFNjAsAJtI/KAolbO1mirWwcTRzokSRqouNVgCJpv6DdlDycBLI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR11MB2820
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 00/15] HuC loading for DG2
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
Cc: Alexander Usyskin <alexander.usyskin@intel.com>,
 alan.previn.teres.alexis@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 6/13/2022 9:56 AM, Tvrtko Ursulin wrote:
>
> On 13/06/2022 17:41, Ceraolo Spurio, Daniele wrote:
>> On 6/13/2022 9:31 AM, Tvrtko Ursulin wrote:
>>>
>>> On 13/06/2022 16:39, Ceraolo Spurio, Daniele wrote:
>>>> On 6/13/2022 1:16 AM, Tvrtko Ursulin wrote:
>>>>>
>>>>> On 10/06/2022 00:19, Daniele Ceraolo Spurio wrote:
>>>>>> On DG2, HuC loading is performed by the GSC, via a PXP command. 
>>>>>> The load
>>>>>> operation itself is relatively simple (just send a message to the 
>>>>>> GSC
>>>>>> with the physical address of the HuC in LMEM), but there are timing
>>>>>> changes that requires special attention. In particular, to send a 
>>>>>> PXP
>>>>>> command we need to first export the GSC driver and then wait for the
>>>>>> mei-gsc and mei-pxp modules to start, which means that HuC load will
>>>>>> complete after i915 load is complete. This means that there is a 
>>>>>> small
>>>>>> window of time after i915 is registered and before HuC is loaded
>>>>>> during which userspace could submit and/or checking the HuC load 
>>>>>> status,
>>>>>> although this is quite unlikely to happen (HuC is usually loaded 
>>>>>> before
>>>>>> kernel init/resume completes).
>>>>>> We've consulted with the media team in regards to how to handle 
>>>>>> this and
>>>>>> they've asked us to do the following:
>>>>>>
>>>>>> 1) Report HuC as loaded in the getparam IOCTL even if load is 
>>>>>> still in
>>>>>> progress. The media driver uses the IOCTL as a way to check if 
>>>>>> HuC is
>>>>>> enabled and then includes a secondary check in the batches to get 
>>>>>> the
>>>>>> actual status, so doing it this way allows userspace to keep working
>>>>>> without changes.
>>>>>>
>>>>>> 2) Stall all userspace VCS submission until HuC is loaded. Stalls 
>>>>>> are
>>>>>> expected to be very rare (if any), due to the fact that HuC is 
>>>>>> usually
>>>>>> loaded before kernel init/resume is completed.
>>>>>
>>>>> Motivation to add these complications into i915 are not clear to 
>>>>> me here. I mean there is no HuC on DG2 _yet_ is the premise of the 
>>>>> series, right? So no backwards compatibility concerns. In this 
>>>>> case why jump through the hoops and not let userspace handle all 
>>>>> of this by just leaving the getparam return the true status?
>>>>
>>>> The main areas impacted by the fact that we can't guarantee that 
>>>> HuC load is complete when i915 starts accepting submissions are 
>>>> boot and suspend/resume, with the latter being the main problem; GT 
>>>> reset is not a concern because HuC now survives it. A 
>>>> suspend/resume can be transparent to userspace and therefore the 
>>>> HuC status can temporarily flip from loaded to not without 
>>>> userspace knowledge, especially if we start going into deeper 
>>>> suspend states and start causing HuC resets when we go into runtime 
>>>> suspend. Note that this is different from what happens during GT 
>>>> reset for older platforms, because in that scenario we guarantee 
>>>> that HuC reload is complete before we restart the submission 
>>>> back-end, so userspace doesn't notice that the HuC status change. 
>>>> We had an internal discussion about this problem with both media 
>>>> and i915 archs and the conclusion was that the best option is for 
>>>> i915 to stall media submission while HuC (re-)load is in progress.
>>>
>>> Resume is potentialy a good reason - I did not pick up on that from 
>>> the cover letter. I read the statement about the unlikely and small 
>>> window where HuC is not loaded during kernel init/resume and I guess 
>>> did not pick up on the resume part.
>>>
>>> Waiting for GSC to load HuC from i915 resume is not an option?
>>
>> GSC is an aux device exported by i915, so AFAIU GSC resume can't 
>> start until i915 resume completes.
>
> I'll dig into this in the next few days since I want to understand how 
> exactly it works. Or someone can help explain.
>
> If in the end conclusion will be that i915 resume indeed cannot wait 
> for GSC, then I think auto-blocking of queued up contexts on media 
> engines indeed sounds unavoidable. Otherwise, as you explained, user 
> experience post resume wouldn't be good.

Even if we could implement a wait, I'm not sure we should. GSC resume 
and HuC reload takes ~300ms in most cases, I don't think we want to 
block within the i915 resume path for that long.

>
> However, do we really need to lie in the getparam? How about extend or 
> add a new one to separate the loading vs loaded states? Since 
> userspace does not support DG2 HuC yet this should be doable.

I don't really have a preference here. The media team asked us to do it 
this way because they wouldn't have a use for the different "in 
progress" and "done" states. If they're ok with having separate flags 
that's fine by me.
Tony, any feedback here?

Thanks,
Daniele

>
>>> Will there be runtime suspend happening on the GSC device behind 
>>> i915's back, or i915 and GSC will always be able to transition the 
>>> states in tandem?
>>
>> They're always in sync. The GSC is part of the same HW PCI device as 
>> the rest of the GPU, so they change HW state together.
>
> Okay thanks, I wasn't sure if it is the same or separate device.
>
> Regards,
>
> Tvrtko

