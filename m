Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CD5EF7C03E5
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 20:57:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DA8810E3BF;
	Tue, 10 Oct 2023 18:57:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B2FB10E3BF
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 18:57:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696964227; x=1728500227;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nx5CR2JQZ4mrlO6R106c4gr6UKV7/AvuI9x3sk7QYkA=;
 b=GXKS+Vagyar/WhJSXecUBhMt4THdHFJaRmVGD6h2PK3YlLJyso9iR798
 flFJIcMym/pyF7p8zUIgNkii4TQKdawsg5n12VzoSqUnA9ofHXA8czlR7
 greLAp6C1zboX6e3N6YzNXzrVr5RFgE2Vj/6qrejaShIIG1NUU0+TRaUy
 6Gw04GBTjqsp5l7exKSkUTY7zzOfWnsBUs6So7Qws1sof7UpdcFYIMQx6
 Otsjd6CLB54OX26EmY4pKt13/Q4Sc6oDENY1GpIT2tvlTaE6qDSLXTcts
 1XHE+TIvSoQqwY1Za3JRo5lHGAwnxFc7PveU2Ck7TmPJfWSiCfw075R4I w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="448685429"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="448685429"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 11:57:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="897314306"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="897314306"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Oct 2023 11:55:23 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 10 Oct 2023 11:57:05 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 10 Oct 2023 11:57:05 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 10 Oct 2023 11:57:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HirKyZVZeQ9Sekpe0qIEiCXLQ2WSLwihWqBf/QR5vpjwI8IGW6qvddgDE1jagOYyCHFJFn1xsmX+g9guzuOh3CAh4eAU8REvOeHIYe5mrqB2FldCR+IUJPFXVqhcXoJi7bXSIbTrPziY9cgMm3LkJ7AhmLNN93mRI+Pd08gAr+mefmTycCDEFuXaLHwZNFM36KMkEUpXgNnhBmog76rhCHupAsN6Z7Fmtkc9mJ4witY2rcpR9wQQp71kihDIB9CY0aUCJfWI4nss6Du4SZtEZ+15t3TSu5z9Wq+yPVGNzJ64X2iD9EcvHGljdrmYBxnfDDc6zflfK2vemOLtJsHb7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7UpiW0pQgEQpOwFrMSnXDgVHi3Ue+sWuWmXMEBxCNj8=;
 b=ZDt5NTk+PsLE3yygxwvrclnq0tT501kPhDBeFXTB7fOvGfIep6gOaMPLibNSM8emd3YLfdyFonrsGDyaPTTix424ljSmldx5fqY+APRiQL/5MwLbWanJRyd+bicfuVWospvNfd30Me1Dz4G/wGS8zQshe++NrtvR5uqFpInecaSeaDbOx97aUgri24WdGMvH3USof7lbqpcxtFMxAqSwKCu8WqRLcL67Taqwm/750Ah6+0iwh5/y7NwUG0zIRvvlbq1IrMC/aa/89SWnB4dEG3YsCe4W3/paaXjaQQBngH4qNStTyvySLJucLMVe2tQ4knHzrwrTcMbMI3KEtfw4rA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by CH3PR11MB8776.namprd11.prod.outlook.com (2603:10b6:610:1c1::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.38; Tue, 10 Oct
 2023 18:57:02 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::a782:6fec:8d96:27b5]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::a782:6fec:8d96:27b5%6]) with mapi id 15.20.6863.032; Tue, 10 Oct 2023
 18:57:02 +0000
Message-ID: <b552b161-94d6-4d70-be35-523d607d0b7e@intel.com>
Date: Tue, 10 Oct 2023 11:57:00 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: Matt Roper <matthew.d.roper@intel.com>, Tvrtko Ursulin
 <tvrtko.ursulin@linux.intel.com>
References: <20231009233856.1932887-1-jonathan.cavitt@intel.com>
 <20231010135827.GA21382@mdroper-desk1.amr.corp.intel.com>
 <ZSVpunHMTkvNoX77@ashyti-mobl2.lan>
 <20231010160150.GF5757@mdroper-desk1.amr.corp.intel.com>
 <ZSV5F4NHv/I8Q0PH@ashyti-mobl2.lan>
 <60c69174-05ab-0c7f-d960-a3d8605582b3@linux.intel.com>
 <20231010164400.GB21382@mdroper-desk1.amr.corp.intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20231010164400.GB21382@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0341.namprd03.prod.outlook.com
 (2603:10b6:303:dc::16) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|CH3PR11MB8776:EE_
X-MS-Office365-Filtering-Correlation-Id: 8a988d0e-3813-4c57-2f83-08dbc9c2b072
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GuLx7KWdHo+lR2PLQ7CxszdmwhRWRnNYmWROuXM9ih9SXzjX2cQU22bOy9/DL/5JwWnRBAQkEkn+xuZg8Mqir0eBvPeqKf+7ceYrIaPdRGcw8ddV9ygSG4NVlhWFGMi6O+MbUQebpjH3FW3U++5eTFh9z9Bji3Psit0ZolpYHpYyFLFBR2ftbVlagLALjxE23GWhrIz3abeaY+OKi8bIVLsOPSyXwwdnT+na8ObuWLj+KHpqSsCy4HAQGzqVeWKyUF9lK9Xmd+W9lZYVdZH0gVIR6Pv0uHtdQfeL4XKN1TMB7NP65BFxIaapwFT3JbMbXsTH6XshLzFx8gQG13vh/BUCq92dmNkhdPzR6XHyYFNcfOFNe8uaRxcsy5THEs5ROnX3UlbSOeJ+zbi1ElMlSUvYAp7N5ThiR8y+KVsiSqcvCpkk5Uob0OShH7enjrxu9oO+L4ft3J4x2fE1Twx0xg6S14jqh4fpN0Q2l21bteoDGGXT6+M00+SWlQGlcX7Ab/dN5y5gdMzoO8nezTjh2HDLv7VjDJhC3jETq0zrK+rRGzEUn6/TvvTgXfBygcaG4+rRDTNNFiP7dJK3tD9P3VZzPKePe2TkQg8k3TaijrO1iOQDzasAbrPlA+i5T4AKG3/U+BrZeXQK3Q/eLimCGOHG+cQ8/gkHt7JpAS4f7Bg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(376002)(396003)(136003)(366004)(39860400002)(230922051799003)(64100799003)(186009)(1800799009)(451199024)(53546011)(6512007)(478600001)(6506007)(2616005)(6486002)(966005)(26005)(83380400001)(2906002)(5660300002)(66476007)(66556008)(110136005)(66946007)(8676002)(8936002)(41300700001)(316002)(4326008)(82960400001)(36756003)(38100700002)(31696002)(86362001)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U1BnTlVVK3BVUVJFdFJnNDloWE85ZEdpVjVqR1VQL1RFbUpObmxRNWVzTGww?=
 =?utf-8?B?ZmkrR0lvVDBuNjhOY2VlYjdhdWJ1MWJDRU1yTmFsaFNKTm4vRVY5Wnl2K0FE?=
 =?utf-8?B?S0hYdjEvMWN5UmRQV0o3WG4xbjE3eEEvUDVmT2htWXpDTjRWaUxHd2JBblo4?=
 =?utf-8?B?dkljNWhmcUEwZUthbHRpYWdnOVdBc0JPUEE5OS9YRTIzQ3psbzVncWZ6M1dB?=
 =?utf-8?B?NTF0RTNscCsyTUdxWTUwM0ZTci9sQ0w4cXFaa0w4b2JaZGk0YzFJTitHMk1T?=
 =?utf-8?B?d1NXZHhBbUFHaDg4RE5UVDM4cmN6WXFSSW9kbmxZblRLNElKeHdrTVhNRGt5?=
 =?utf-8?B?bG90Qm11YlRzVGRoVkNSN3NMYmFXYXQyNlJPc09XdW0waUZkZDZDdjQ1K0s1?=
 =?utf-8?B?RVNWbDQwUjgwU083NWJmNThuaktrSzJhcUNlM0YyaVVwVGptR05RY29hQkFI?=
 =?utf-8?B?eCtNTHAvN3h4UVMybnE2ZjZnZlRzVmNJY1JzcG1UL2xCZjN4b0xCNjNxMTQz?=
 =?utf-8?B?SXp3L3pHdW5qbEhPUU5NNk83ZGJ2dU1YaFRBblZ2K0dWUTJrSlBnR1NUMVEw?=
 =?utf-8?B?WElleW5sS2RDRWJyWjVmS2Iza3FaT0M0VU9kdUJ0U0FxSXRSQVpLRStLOHhI?=
 =?utf-8?B?V25KNkRWV1hCTUFzY2luQitOeXFEMGpBOEJ6aDFXaGhIb0xUZU1mUURDdzg1?=
 =?utf-8?B?SGUySmlQTWhOYTFhYit1SWl1RDk4bngxN3hQM01PS2w1eGxnQVhqV2ROWEV3?=
 =?utf-8?B?SjlTZ3VOOWVsTW45Nk1pcWlGRGlkeExXeklnSnF4cUxBOU1nWXRJdHFpbWhS?=
 =?utf-8?B?MWlKMUMrZU83QVlzUytWSllqZTROcUxxNFoxNGJETStGMWYvNDZTbS9UQkJU?=
 =?utf-8?B?T09nMXRDWUlXT3lKczRTQ1lLM3cxZ0FSZFhTMCtUbEhMc3F5UGg3NERmN2Rh?=
 =?utf-8?B?ZEI2ais1Q3J4Z2FQZFk5RmROQjZ0Vy9OTW9XemN1bHNnVEZhVWhHUCtWaUlN?=
 =?utf-8?B?NlhIeU5oNnl5U1p5aWFMVlVrUmpaK3BieDNjcENmbTBnSUZCRjgyc05DV3Nj?=
 =?utf-8?B?dG45NithOTgrbGt0enlpakRLcTJRUFJoNTZUWUQ0RExHNER1akpyRUg2UDAv?=
 =?utf-8?B?TUlOR1ZPc0pjMHJCRWZISHpDVjh6cHJvb2pWZGdrSS80OW95a3VqWVVxcXIv?=
 =?utf-8?B?RlprUzN2Yk5GQ05ZUk1qZDMzMjBOODNyY1JzRkVSTUhWMWxQaXp3RkFIWmdw?=
 =?utf-8?B?L09YbEVYK3BPV1lNcHh2M2MzVnp4K1FwM3JTNjg2bllYNkNaUFFtaUZRbmVH?=
 =?utf-8?B?bzZyNU5sQngrcXRWSi85NldrQWtycllLQmZQQ3g3OXVkWlRtMWVtUzMxdWZr?=
 =?utf-8?B?OEpmYjExNEs0RkR2OFM0dHZSR282c2F4R3VBT1pWaS9kc0xZMXl1b1JYa1RY?=
 =?utf-8?B?MTUxaURaM09lTkgvaVVPMHRjWndBSU5LbVFweHNJdStLV0ZrOGIvQmZMNFIw?=
 =?utf-8?B?MFRpNXBZM2JxNk8rVnN0bmxkOENlUE5qdTBhV2lBendqWm1XeWpZTzluRlN3?=
 =?utf-8?B?U1JhbTlDOFJxSVpEakF6dWhCNzRXeEZPVFFidWlFL3VxTkZ4bm9Ra2FYWEt4?=
 =?utf-8?B?RllaU3ZOWVI1cElTdmJYYTV1MVBrK0VoNVAvUzVyR0RMTGV6UEIxWFJOMTQv?=
 =?utf-8?B?WDNqNTZ0ODVsV1ZFMWQwZmlzYkRJcWUzSzZ6L3JSTUgzd2VnUzU0eVdxYkla?=
 =?utf-8?B?Z2szWEpFN1hURFpsRGE1TER5QmppTHZHS2RRQk1ST2pjR3ppSjRtOXloNWlk?=
 =?utf-8?B?dmxMNEtieFZBZFNPU0VzTzZaT2JpaXhTaWdRd1VUQ3Vnd1o2MVZYb2VDcTgw?=
 =?utf-8?B?VmlqR0xXQmFoamZvSTBJTFgvdHNkSVd3V0MzUjNac05wMHZQbTZVMnl4c2dz?=
 =?utf-8?B?bUhDWlZTcy9xL3pSbVVUY25mZ3pJMFZuc3RyenRaRGVYK3FHWDZnSzFFRWNL?=
 =?utf-8?B?L0l5b0xYeE1YSHB1UU5MYng3TW92YzJ6M2VLK1lnMnVlNkdWdDRMRWRZOVFn?=
 =?utf-8?B?b3FzOGFZdDVUOUdFaks2bDFQUjVvYmlJRzdmN203bTZ6c2xKc2pQRVBLcW9D?=
 =?utf-8?B?bU1oczRNcTZqdFBjUSs3KzR2dUhSS2V4UkNFajN6cUQ0QWFvS25OOGN6M1Vs?=
 =?utf-8?B?WlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a988d0e-3813-4c57-2f83-08dbc9c2b072
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Oct 2023 18:57:02.5370 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TuBkYvNnfAqNuoPo/LUKX6sE9kq9XNs9KLPKemj6NOx9U4sBXgo3R5klK/miH82EFEmqKjTl+AJA1BAtqTh5PhK7hhSTINzJrOxbYPJVsjA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8776
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Temporarily force MTL into
 uncached mode
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
Cc: saurabhg.gupta@intel.com, intel-gfx@lists.freedesktop.org, Jonathan
 Cavitt <jonathan.cavitt@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 10/10/2023 09:44, Matt Roper wrote:
> On Tue, Oct 10, 2023 at 05:42:28PM +0100, Tvrtko Ursulin wrote:
>> On 10/10/2023 17:17, Andi Shyti wrote:
>>> Hi Matt,
>>>
>>>>>>> FIXME: CAT errors are cropping up on MTL.  This removes them,
>>>>>>> but the real root cause must still be diagnosed.
>>>>>> Do you have a link to specific IGT test(s) that illustrate the CAT
>>>>>> errors so that we can ensure that they now appear fixed in CI?
>>>>> this one:
>>>>>
>>>>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124599v1/bat-mtlp-8/igt@i915_selftest@live@hugepages.html
>>>>>
>>>>> Andi
>>>> Wait, now I'm confused.  That's a failure caused by a different patch
>>>> series (one that we won't be moving forward with).  The live@hugepages
>>>> test is always passing on drm-tip today:
>>>> https://intel-gfx-ci.01.org/tree/drm-tip/igt@i915_selftest@live@hugepages.html
>>> yes, true, but that patch allows us to move forward with the
>>> testing and hit the CAT error.
>>>
>>> (it was the most reachable link I found :))
>>>
>>>> Is there a test that's giving CAT errors on drm-tip itself (even
>>>> sporadically) that we can monitor to see the impact of Jonathan's patch
>>>> here?
>>> Otherwise this one:
>>>
>>> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13667/re-mtlp-3/igt@gem_exec_fence@parallel.html#dmesg-warnings11
>> Parachuting in on a tangent - please do not mix CAT and CT errors. CAT, for me at least, associates with CATastrophic faults reported over CT channel, like GuC page faulting IIRC.
>>
>> For CT errors maybe GuC folks can sched some light what they mean.
> 0x6000 is GUC_ACTION_GUC2HOST_NOTIFY_MEMORY_CAT_ERROR so this actually
> is a CAT error, delivered via the CT channel.
The history is that catastrophic memory errors (CAT is an abbreviation 
not an acronym) are never meant to happen in the upstream driver because 
we map all invalid addresses to a scratch page and silently hide such 
accesses. Hence there has been push back on adding support for an error 
channel which is officially impossible to hit. The problem is that we 
keep hitting it due to hardware and/or software bugs.

Because there is no official support for handling this notification, the 
CT layer reports it as an unexpected notification and barfs. As far as 
the CT layer is concerned, it is a corrupted packet from GuC. And thus 
the error reporting looks totally weird for what is just an illegal 
address access from some random part of the GPU. And note that it is 
very unlikely that GuC itself caused the page fault. It is much more 
plausible to be coming from an engine/EU/batch buffer instruction. 
Although as noted, the fundamental cause is believed to be broken page 
table updates due to cache coherency issues.

John.

>
>
> Matt
>
>> Regards,
>>
>> Tvrtko

