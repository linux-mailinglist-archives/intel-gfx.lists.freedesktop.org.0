Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A87183B29C
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jan 2024 20:56:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D008810EF1B;
	Wed, 24 Jan 2024 19:56:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 623A510EF1B
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jan 2024 19:56:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706126178; x=1737662178;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fcLdk/0fr/1p+2MG7wgNl28Vzne+HEUonXjjF+XpRqs=;
 b=OB2t4VGmuKAoFDr8XuKs0gXVPuWwdADGwdDWMwfnuYpeZHX+/EmjpQzg
 yQUwtu705NX7nh2pd2CvBNzC46Vjva32T3PTIfcJb3nyRu6qY/9mE7biE
 qB08P5g0Xgf8U1ZsjmXmfwJIA53XbiHcTZBKPPngkA1rhUbKvOU6sBz/z
 pSGv4Py6O8KIm8mXWv1mjTkKR+Yp2LFqNivDxdGvlVbsUzW7fiy3keAYz
 HARWEKS9hGdyf2G03g0KTyGc83E1w2my+dqNR0xCAgYqEsimvP4rhVX4X
 ZWxOOZ5zlMlrkol06G4r0U0QkPToCBMT4w6P+QKIgYFhC8pXk9PjXs5um g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="8633919"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; 
   d="scan'208";a="8633919"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2024 11:56:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; 
   d="scan'208";a="2037463"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Jan 2024 11:56:09 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 24 Jan 2024 11:56:09 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 24 Jan 2024 11:56:09 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 24 Jan 2024 11:56:09 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 24 Jan 2024 11:56:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Dr/kYl5c/pPrQJ4aLYA4BbcTtFv+LJ9RnGMvZ0aW0jFr6rftx/pNVqBg2VnWG3zhwZhHXfRKnorxnFpvzljEr8U0SI3NAgNDwCuuH9WLeiCbfZqTX2Jp4ZZMsXGS0Qo2NRC751VDwAMMrZGYD9ZfgUd0G5oLznlzfip+jC0fRWWRHdYMODGow5HMChJmgTjlL3+nV8tieJLQ8B8FII/Px+MDnfiNzwlnUVe+mcuw4y7r9oGPPndH0YBLHZnDATmin+EHZlfPI6xSZgHbdu2OHo/S92UQjB608Jwzq3SHXTBJOnd8w7E9xMR+xDIJEewLFQXYHefXcUG+okgTceY5dQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G5fTmzNwNxt07LGX/Ts7gHu+AYP3t7ecgAqfsYAwhSE=;
 b=Wl2ZWF6cVbBqrxpAt9BXjIz3PjrovRMbuqQnXGO0pS35eswx1PEpsoc/J/6CPIJzk471OJFY3mfqJ+im+pmaK/jpvng6z9X7OrqN/njd69NS658XWhOz5Y3KlrRfN3EUWfxLttW0Eb+yPEBHZchIhjwd24muOvLMcTrzWn8Dk4+W3EsXqQPFQMAM0WMvfrSdXAZ3PKywbss0/SVTp+7DVuf52bN9sKjhKafo5Cag2p6y/Gb7zaC/6kUxcL/gpaMT3ovs1ym5VUP8TEGXteNZr1zM+/5rJIkFg1uEunr937rihae+0D400OmwrQ8nOiygOUt4zlhsPFN/o5Kc0aRxOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH3PR11MB8441.namprd11.prod.outlook.com (2603:10b6:610:1bc::12)
 by DM4PR11MB6168.namprd11.prod.outlook.com (2603:10b6:8:ab::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.37; Wed, 24 Jan
 2024 19:56:07 +0000
Received: from CH3PR11MB8441.namprd11.prod.outlook.com
 ([fe80::c590:37b4:ad48:cd0f]) by CH3PR11MB8441.namprd11.prod.outlook.com
 ([fe80::c590:37b4:ad48:cd0f%3]) with mapi id 15.20.7202.035; Wed, 24 Jan 2024
 19:56:07 +0000
Message-ID: <a8ab52ee-d80c-40e1-a6ac-1d23801378dc@intel.com>
Date: Wed, 24 Jan 2024 11:55:56 -0800
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH] drm/i915: Add GETPARAM for GuC submission version
Content-Language: en-GB
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, "Intel graphics driver community testing &
 development" <intel-gfx@lists.freedesktop.org>
References: <20240124081915.68953-1-joonas.lahtinen@linux.intel.com>
 <f04e6301-c41e-4293-96a7-6d1fa8f8304d@linux.intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <f04e6301-c41e-4293-96a7-6d1fa8f8304d@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BYAPR01CA0039.prod.exchangelabs.com (2603:10b6:a03:94::16)
 To CH3PR11MB8441.namprd11.prod.outlook.com
 (2603:10b6:610:1bc::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB8441:EE_|DM4PR11MB6168:EE_
X-MS-Office365-Filtering-Correlation-Id: f9f2fbdb-7593-4d8e-010f-08dc1d1680e3
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xRBmBMg2vC/L6wsE4h1yccrj8HeXHOcCannLe/Ebz445JwL2VUAb4SYgVVE+a2qqTDE1VDT4++4sMv5WZgj1853oQg5PNIZ23v/8l1uC84mhUJWSndRXty3JgniFUIlsXEIeB5wlQi8y15dLRDhvJXaYHqgd3HnKeXJZFViMPgdFQ8Cerl0A18KOaKsgjtcsjkqUHaIVbznYQNupUQC8z4+WRMQaVqJ5gc/FHnuiSiKwdOy/+esCXL+5vntPSQPVk9H/1v/H1dKWTIhFbA3jlN5YBEBsHvuR8u468wdZijDQAnUsJNi/lyydt9r6NX3tdGb7EqWOikluiCUFF9wOO1JhzuhB3BISsGp+b9uM0M0LsdjaBHzbF3XWs2vDPYecXu5Fi/782dZA6fRI3qrAZkA2ZGPrsWBvI3BrC92TJ4OfJcC4DIs8SZlJ71BcbORrMaQGMXiyO+inDaJD02DToKTucdho0wJgkvv1Iz3S8FHXWCI9vrKPx1SNMkL/kgpglEMqz8MTM10BLwHqGEfZ4KZMtYYYF4zNCSBVoqy0MICJmKhn/LtgIL5vNlIlQUQ4QlxgH2wse6jQGD5boGFxZl3ub8ow8zStMPEbtFwWwQb5v8fNRV1HCAwfqNpfMS/c
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8441.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(376002)(346002)(136003)(396003)(230922051799003)(1800799012)(451199024)(64100799003)(186009)(83380400001)(31686004)(26005)(4326008)(478600001)(86362001)(966005)(8676002)(5660300002)(66946007)(82960400001)(316002)(54906003)(66476007)(31696002)(66556008)(38100700002)(6486002)(2906002)(8936002)(2616005)(6512007)(53546011)(36756003)(41300700001)(6506007)(6666004)(110136005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eDdRUkkxRUt2QWpjZTJVcjFROFF1bE5ITXVybEhKdjJma2s2c1AxSlE4RW1Q?=
 =?utf-8?B?Wm5MbHkxT2pkbXgxMnJMUnpjUTZaWFg0cTMzbzQ3NW4vUlZhWmw0MDQ5cUh1?=
 =?utf-8?B?QW40L1hUc0hXL20rUHA1cDRiVU93OGlpRC9jMjFvdnpKMVFtQ0Q4MWV5V0VW?=
 =?utf-8?B?SXFLWmpCeU83K0pPYXpVcFpSZ3ZqUGlUWUdJWkU4UCtXSlRtd0NhWFRxM0dR?=
 =?utf-8?B?M3l2QXRPVEpxelU1UzZPdmEwc3FvOWZ0S1FnQy9wWlhpOXN2NHk2Sm54bjh5?=
 =?utf-8?B?cjJyRjNTbFhGcm9PakxmL09hOUdlSGI3aUM0dmxVODVZWjZwQ1F4dStwWlRk?=
 =?utf-8?B?NzlQWk5hcWFtRjUvZVRkSitZYS9XeXh4Nkt1WFlVdFFxdlN6Z3FOU011empG?=
 =?utf-8?B?dUcwekVVcXJ6UmNWQkV6eDhDc3pXck9RSjd3U0owaFJrN1czOTZ0TkJBTk9R?=
 =?utf-8?B?eFFzN3p1ZU40QkROSjVwTytETDZDUzlsZVMyUEFoay9HaXJEMnZRaEduTUI4?=
 =?utf-8?B?blc4SmVsb0dmSXp3ZjNwOVE3SEE2ZVd4bUtlcG5KNTdXVDhvZnZ1TWRkOThL?=
 =?utf-8?B?UTlGRnhTUDBtZ2R5ZmpyUmQ4U0tJMGFURG9nemdaTEtadnV2dVJ6R1BubXJh?=
 =?utf-8?B?UEltSlpNcnhMVUU2eG5NWmRlbXVRKyswTWRtT2tibGVaV3FFbXE5MXJoaUg4?=
 =?utf-8?B?enVHTGVvdWpuZ09Pd1VuVS9YZU4wU0x0MnZDaHoxUmtqVyt2SDJOQ2VTZXZ1?=
 =?utf-8?B?U1kwZ3NqUjdMUXgwbllIRW0zUytmQnk5SW5qM1NqSml6UElJVjRpTG14NjVO?=
 =?utf-8?B?TmhUUzlramRBRUFrYXN2SXlhRk16b2VRK2hSeFE3MmFXelJnTFowMlZXWTdU?=
 =?utf-8?B?U1FnNDc3ZU1vZ1IvZHBVSlAxNWdObVQyNUp3SStMRE1zZFlBUVBMQ25LWm5Y?=
 =?utf-8?B?YkhIVkhBTWFmZmI4NUcwanZ5ZFlLZlFYa3RXeGFCUS91TVU5cWk1anZXZDAy?=
 =?utf-8?B?S0ViWjFzYzYwTDVHTDJBNW9QVWExdjNHUkpma295eGJraUQxYkh1d2FCbWlo?=
 =?utf-8?B?ZjVlQXQzWjY2YzFOb3hTcW95VjgvN29RS3BLL3Via3pXTUsyejNkTWlObmRJ?=
 =?utf-8?B?NmVzR0xhVktYVm1leVNJZ3Zmb1J3ZGRKbldNdmRWTFlHWXdJWVBqYm1OeFZZ?=
 =?utf-8?B?SXRxa2hhUGZmL0loT29KYWVhUkZmMkd0MEFhUWRZT2pSa1Z2NXVPd0gwbGFG?=
 =?utf-8?B?dkZPNC93WVNWenJlQk40TktDSWorSGZNcjlITGR3aGFQT1FiOStLZkIvSGtR?=
 =?utf-8?B?eGIrTythdUZMcmNVbXFTaFl2NmlHcVcvMnJiK1NFOUNGS1hIWnQ2eExNQ3dV?=
 =?utf-8?B?OWxsUzZGb3VydE5Sb1hubDE4YnVsQUFPWDFQaElZMDUreDRtWEgrZVBKelNz?=
 =?utf-8?B?UXdNY1dUTG1XcUxoZXViczNpKzdKNG0yZmxBLytZc3RlYjdFQWU0SzFhMHR3?=
 =?utf-8?B?OVZDbFlHL042THl1VEt2cFYxMm0zRXgrd3c2WVE0Vnd2MXNZN3licTFQMi9E?=
 =?utf-8?B?VlNQYjlWR3dzKzhhbEw4bFFPVUd6eEhmWGcyS3BRRzdibEpBWmlMOVgyNkFD?=
 =?utf-8?B?OG9KazV3SnVINm5lMUduU0psYmVCczFDK1V0STN0Z1ZGdEl3R2xFZ3Bza2p3?=
 =?utf-8?B?eDJuV0hwVlZIRHVVRklUZ29OdjJHWjYzbWZQN0tHVVoxWC81UWhRSDI4M25R?=
 =?utf-8?B?Tk44T0s1VndnZFBQcW1Da3FLWFlMODg3MTFzODVJNXNpeisrUFZ0SVprRmtZ?=
 =?utf-8?B?bEZKRzhiZFJ4aE1CMHpwZ2k4dnhhblVMN04vOWtURnEvREZTMDIrbG9ob2Z1?=
 =?utf-8?B?WWphQkVvNnNMWUpsWVZ5d0RBcEM4bnFkT0x3bWtnRTlWNjc5TVJ4NktVdVJk?=
 =?utf-8?B?d1MvTUJyUWVoZE1lL3NRbHlVamlKTndkZ0VseXlQTHBnVTM5NGxkTTFwdE8w?=
 =?utf-8?B?elVkV0J5dVBjZzI4M0ltcmhNUmpzV0dCeEtJY2orUkFiVHNyVUVlL25NTkdP?=
 =?utf-8?B?Z05sVmFRSlAxc1VQbEc0K25EVXhld3huZmdDOUNQd3RqNnZ5R3U5WE0xTDNz?=
 =?utf-8?B?emgzOExWVUc4UTUrZE9HMS9jRkduTTZ2VUxVWEU3ZXlybSszVC9pWVJBYW9V?=
 =?utf-8?B?UUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f9f2fbdb-7593-4d8e-010f-08dc1d1680e3
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8441.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jan 2024 19:56:07.0165 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4VWZsFX/Lt3vV4HixLSKDPS9Dv9icMiurVoevatxuIG/Kpla2MRq0eFyvlIfrvsdzeN9xDhEZmvwbHrHNHuesHaTPUf5qzd31XmMUX68YF4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6168
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
Cc: Paulo Zanoni <paulo.r.zanoni@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Jani Nikula <jani.nikula@intel.com>,
 Kenneth
 Graunke <kenneth@whitecape.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 1/24/2024 00:55, Tvrtko Ursulin wrote:
> On 24/01/2024 08:19, Joonas Lahtinen wrote:
>> Add reporting of the GuC submissio/VF interface version via GETPARAM
>> properties. Mesa intends to use this information to check for old
>> firmware versions with known bugs before enabling features like async
>> compute.
>
> There was 
> https://patchwork.freedesktop.org/patch/560704/?series=124592&rev=1 
> which does everything in one go so would be my preference.
I also think that the original version is a cleaner implementation.

>
> During the time of that patch there was discussion whether firmware 
> version or submission version was better. I vaguely remember someone 
> raised an issue with the latter. Adding John in case he remembers.
The file version number should not be exposed to UMDs, only the 
submission version. The whole purpose of the submission version is to 
track user facing changes. There was a very, very, very long discussion 
about that to which all parties did eventually agree on using the 
submission version.

The outstanding issues were simply a) whether UMDs should be tracking 
version numbers and all the complications that arise with branching and 
non-linear numbering, b) should it just be exposed as a feature flag 
instead and c) this will prevent hangs in certain specific situations 
but it won't prevent the system running slowly and not using the full 
capabilities of the hardware, for that we need to be making sure that 
distros actually update to a firmware release that is not ancient.


>
>> Signed-off-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
>> Cc: Kenneth Graunke <kenneth@whitecape.org>
>> Cc: Jose Souza <jose.souza@intel.com>
>> Cc: Sagar Ghuge <sagar.ghuge@intel.com>
>> Cc: Paulo Zanoni <paulo.r.zanoni@intel.com>
>> Cc: John Harrison <John.C.Harrison@Intel.com>
>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>> Cc: Jani Nikula <jani.nikula@intel.com>
>> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> ---
>>   drivers/gpu/drm/i915/i915_getparam.c | 12 ++++++++++++
>>   include/uapi/drm/i915_drm.h          | 13 +++++++++++++
>>   2 files changed, 25 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_getparam.c 
>> b/drivers/gpu/drm/i915/i915_getparam.c
>> index 5c3fec63cb4c1..f176372debc54 100644
>> --- a/drivers/gpu/drm/i915/i915_getparam.c
>> +++ b/drivers/gpu/drm/i915/i915_getparam.c
>> @@ -113,6 +113,18 @@ int i915_getparam_ioctl(struct drm_device *dev, 
>> void *data,
>>           if (value < 0)
>>               return value;
>>           break;
>> +    case I915_PARAM_GUC_SUBMISSION_VERSION_MAJOR:
>> +    case I915_PARAM_GUC_SUBMISSION_VERSION_MINOR:
>> +    case I915_PARAM_GUC_SUBMISSION_VERSION_PATCH:
>> +        if (!intel_uc_uses_guc_submission(&to_gt(i915)->uc))
>> +            return -ENODEV;
>> +        if (param->param == I915_PARAM_GUC_SUBMISSION_VERSION_MAJOR)
>> +            value = to_gt(i915)->uc.guc.submission_version.major;
>> +        else if (param->param == 
>> I915_PARAM_GUC_SUBMISSION_VERSION_MINOR)
>> +            value = to_gt(i915)->uc.guc.submission_version.minor;
>> +        else
>> +            value = to_gt(i915)->uc.guc.submission_version.patch;
>> +        break;
>>       case I915_PARAM_MMAP_GTT_VERSION:
>>           /* Though we've started our numbering from 1, and so class all
>>            * earlier versions as 0, in effect their value is 
>> undefined as
>> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
>> index fd4f9574d177a..7d5a47f182542 100644
>> --- a/include/uapi/drm/i915_drm.h
>> +++ b/include/uapi/drm/i915_drm.h
>> @@ -806,6 +806,19 @@ typedef struct drm_i915_irq_wait {
>>    */
>>   #define I915_PARAM_PXP_STATUS         58
>>   +/*
>> + * Query for the GuC submission/VF interface version number
>
> What is this VF you speak of? :/
Agreed. There is no SRIOV support in i915 so i915 should not be 
mentioning SRIOV specific features.

John.

>
> Regards,
>
> Tvrtko
>
>> + *
>> + * -ENODEV is returned if GuC submission is not used
>> + *
>> + * On success, returns the respective GuC submission/VF interface 
>> major,
>> + * minor or patch version as per the requested parameter.
>> + *
>> + */
>> +#define I915_PARAM_GUC_SUBMISSION_VERSION_MAJOR 59
>> +#define I915_PARAM_GUC_SUBMISSION_VERSION_MINOR 60
>> +#define I915_PARAM_GUC_SUBMISSION_VERSION_PATCH 61
>> +
>>   /* Must be kept compact -- no holes and well documented */
>>     /**

