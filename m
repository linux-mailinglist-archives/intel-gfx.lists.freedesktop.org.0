Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FBA57EB54F
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Nov 2023 18:04:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1234710E1F5;
	Tue, 14 Nov 2023 17:04:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 653A910E1F5
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Nov 2023 17:04:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699981489; x=1731517489;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mCIWw26X7lRbWa16WfyyKMmwYR2arnIfHx6ErOUcG8E=;
 b=OUm2lVclIbyTMo9Q/payJg96u7cgETIlq8UT0ZBkfgP1gAVCCHJfI6nD
 TWNGpQ3aJHYOSCYjfgFMHVpI+uCanatD4FJ8OzUMNH0iKZBvYICLJBQnd
 TMR9wT0fWg7h83yGUf4oM2JUsOdPSET2/jDYKLflh9w3kuWSCETbmX/m1
 VYTSlxGCqboercrS+inCnIyg9CIym1vdENnDjKNBd7czq6smRcKUCCTaR
 /buls2Uo2DS4ki7pUGfcPdxzUH2g22G5tlfndMwQe0U5/Iy14U567sctm
 DcdrTAdKwT1/KE/YQNqOeXsox6zOMMYWK51Dmn23HOtzw4AZ87nv8FWQV g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="454992143"
X-IronPort-AV: E=Sophos;i="6.03,302,1694761200"; d="scan'208";a="454992143"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2023 09:03:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="758227049"
X-IronPort-AV: E=Sophos;i="6.03,302,1694761200"; d="scan'208";a="758227049"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Nov 2023 09:03:17 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 14 Nov 2023 09:03:17 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 14 Nov 2023 09:03:16 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Tue, 14 Nov 2023 09:03:16 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Tue, 14 Nov 2023 09:03:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i2/pFpjkWDsSpK22NGRmqS/uI+6mAyWn3c77aPD98n9D+ia6P4cIrpd+X5R+N7DtUrsziBxYQdtJV+UZmXjjTr4Pg1QRns6pXjw8TpEwu6v/14mW9Nw7XLpZhtP3OswfygPL9xftIQLLGaMao70NWQ9U0JnR2VQ3SJpfjQXHJlxy0weNie+0JiOYQcc3c7rHPK+hAXoJ9H2bQJELx4INYX88YCrO3ShQ8gwgxMxN/NizmylVDbRn4dyrwcXwnB6s5jTWRQBDBkvbn81feOQXfF7/UlgLcGIRSVNo2tWE9TXM+/Z60egUjglSjGEpf5OXRdY8A8fc6T8PmkwQcp3K1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kXLbWJoMbutKAtY8vJH/jNHJ91t4PI00KUkA+GvNN64=;
 b=f5LqWV+Cn4WG2+TpbRYPeLA4qSBx4nabQcmqQM8ayHF9yFPy0fN2WG6j04WYPV011azl+fgMADswUb1zHLMrb98Gf0jbgG6gFETjWqQeBiuN9HJtf2LVX0/n5G9lgQ5MVKo8wJ+zL99AD/l8iquW9w/E50G6+vBH7xLGnoq/yaT0TJ7tkR4bdpFgvratYlR7vOJOVn+6JD0kSQF0vZowWJURV9WKKZYCHM7d2vr6bRvuPxlAqiFEzmGxacwo1z/Nao8E8Mw45RG+oDLrtGqTvdUn6KSjCBIQAxyNMkT+kAEUgnHCKqavUc5m382Il6mofv72Q4VUEI1YYFqyYo1Aag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB7605.namprd11.prod.outlook.com (2603:10b6:510:277::5)
 by IA0PR11MB7377.namprd11.prod.outlook.com (2603:10b6:208:433::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.17; Tue, 14 Nov
 2023 17:03:13 +0000
Received: from PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::588d:b37f:130c:9e86]) by PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::588d:b37f:130c:9e86%7]) with mapi id 15.20.6977.029; Tue, 14 Nov 2023
 17:03:13 +0000
Message-ID: <d5bd8629-02bd-4743-a6a8-fca15e2c2cfc@intel.com>
Date: Tue, 14 Nov 2023 09:03:10 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20231109235332.2349844-1-daniele.ceraolospurio@intel.com>
 <2b774727-e901-4c17-b6b9-2e4b3348cae6@linux.intel.com>
 <ae06d191-bff4-4646-b5bb-bfaa0be4d5e2@intel.com>
 <b3833f42-2737-42f4-8e68-a5b3b96b308e@linux.intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
In-Reply-To: <b3833f42-2737-42f4-8e68-a5b3b96b308e@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR04CA0068.namprd04.prod.outlook.com
 (2603:10b6:303:6b::13) To PH7PR11MB7605.namprd11.prod.outlook.com
 (2603:10b6:510:277::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB7605:EE_|IA0PR11MB7377:EE_
X-MS-Office365-Filtering-Correlation-Id: acfd62a8-9673-4a72-bc43-08dbe5339636
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kx9b4KabgMbprU9PWP5YM0VC7B4ido/GKIgol9488LQniLIh7JmSKAuBVxdMcDZooauQeY/l3RITKRnRKxXfmMEZw8zRnAc/5iJjgYeeZ4Dr5SNWA8XV3HzlbaWinFvTx7dmou/AIq8yH8TRP7NWAlSGi7sAp5jmu5Qwik21r0TJNL+APnsvyKHHvIE4BZxyKfpmllJQ8HFZnKogm4pXsTtmECnJACg5gPOu10zkH4lB444FKnMYgN1osESyhdIHnD9rmndrcBC+d0ftXUbaWj6oeSZHD84dztiXPdOdzFxGiNWmrrqAesdnAw6sRaaL/5FMyhG9hjM1HH7agzDWRalPhLDhw3/0Z7wt0y/IxHg6f5WJtoP4Cz5LdIvbgF2vjvMnQvABJuV785n1bg0+A7D5y0FEm/4MnIc2V6szL3LSOvO8x66fW4ZSm4dkBba/llseM5qfjq+0nVg4N8087KSC4tcNLBZFsuY81TXneR0MgxpbgyQt5tI5kJ9P1GtQIxehUZ3Z0M0ADuVoBRUWlVG4LP1lBPlOXYENKqrenVB+KG24hJmTU9MMCzHvPZq6NpuPLjZzylBlmoXixoZrfAHHgw1lL2piLtDzgZNki84loGZ+yHPBTvpoXfAdkzcCrvWCWmCp51czZSrseaii6w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB7605.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(39860400002)(346002)(376002)(366004)(230922051799003)(451199024)(186009)(1800799009)(64100799003)(6506007)(6512007)(53546011)(36756003)(2906002)(26005)(38100700002)(82960400001)(83380400001)(41300700001)(31696002)(86362001)(2616005)(5660300002)(478600001)(316002)(66476007)(54906003)(66556008)(66946007)(6486002)(31686004)(8676002)(4326008)(8936002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NmIxdVZmNDFNc3FJTXdEaXdpMUJGWUFZM0xsMDRubElHMkNVbGpRSkMwT1R5?=
 =?utf-8?B?cmxORFZvbHIzN3p1M1ZiYjNXZ01QcDhuc3Btc282d012aW1uSXJpWnRRRVVw?=
 =?utf-8?B?dHVlUVhFZlgxaDQ4M2tXaEZhZGJLUFdpTUIvQThEVlVWZy9zRHViWHVxMHky?=
 =?utf-8?B?U0JKY1o4S1pMRmlVQk5ncVpnYUs2OUtrYzVLWE9Sc2JoalE0NWc5VVVQdWNr?=
 =?utf-8?B?Vi9iSlh0V1Rwbk52OU9aLzg2WlVVeElFcGRYYXNlWXlUemYxb0FEWTlHdzFF?=
 =?utf-8?B?ZkFiazFxdTlVS0hrWE04WGJlbTErRjVBUWdVeGErRnNPUDYzUEZyd3pXSFMy?=
 =?utf-8?B?bWQydmZoamdIb2R3LzIvMlNDZktjanl2c1FJSGRYc215MTRkVVZiVFNaMkV1?=
 =?utf-8?B?c0dWRXpNVXhsdEYwV3dsekx1am1sQnp5dlk0cHozQUZOUGJRRzNDVHE4WmR1?=
 =?utf-8?B?ZmFXbkRkVTFmdi9hMjZIQ25ndm9uTUFITjRtaDNqTURKckl1MkxBNzAyOTkx?=
 =?utf-8?B?OWVreGdPeExuMElGLzRJcE55K0JoRGVIR2ZJRXZvZ0ZhRDhXeW5LZXR6RlVo?=
 =?utf-8?B?bHUyVHcxU0t4eGhMSlNQSktLTVBUb0Z3T0NDcXZhSjlmZllaYVRDL1M0VFY1?=
 =?utf-8?B?bERsUHkyNkZpTWJiZTdZVWlsKy9vTjdMSkM4Y2E1cFhuR0xOMXBoRXVNZjBy?=
 =?utf-8?B?aDh6clFMZEdzZmhxRWVzelhpbkdQQnJOL1diOEw4bFYzOUdaZXJmeGlZOGR1?=
 =?utf-8?B?MnV1L21DRDBiZFR6bGUzMXRQcUdYSkMvNzlsZmltalZDV2N4NkZVWFN2UkhC?=
 =?utf-8?B?MTkyOUlnK1ZtRWhMYUhka0lZWjVPSXA0cnpOU2tNTmlBekdPWFpUcnpnL0Fv?=
 =?utf-8?B?dkFWMmRmSnl0LzRiNFpWdG5ZQUt2ZERkTTN3TncrUlhQNldLV1RsZDk2Zy9M?=
 =?utf-8?B?RnFVMjNtZktvaGVpVGYwL09MSmRwdk5BTTNFOHdwS1A1dkQrQlM0cTFBU25P?=
 =?utf-8?B?UldWV1N2ejB3UytMTlNsaWgxQnRQR2dJQ21nUXdwNHIrWlRxVXV0YS9ySEZh?=
 =?utf-8?B?L0Q0ajVRZmNDZ3lRVHZQZGFTUTQxYW9lNkE2RVB0azgrZHRiMy9FTW9wRnR1?=
 =?utf-8?B?eS9peXp2YkV2cUdVWUxmakpKOENmRlJjemFRK3IwdlZLbFNwazlhV3B1Y3pK?=
 =?utf-8?B?Q0QvNjBySHovTXJwblR3bzNqUHZRT3dXZXBVaUtjVVdOM0t5WStBQ2JNSnhs?=
 =?utf-8?B?dzA5NlVBa3BlcnF1NFFkazBuRUZBSnBjTGNjVitjUnFNdkRVb3dZR1JGWHJ3?=
 =?utf-8?B?OElJRU80RUcrVUNsQkJpd1d0SnZNMzZ0Q3pGckVNVEZtenRKUllpT3BneDRW?=
 =?utf-8?B?RjMrRktYUVNkY1MvMG0rcGdubWFTdnpiYWg2cml2NE50aVJQYWVaVVBVV0Z4?=
 =?utf-8?B?QzB4QzNpQStkN2l2ZzhsSWRFY1BRVG9mcmVUaTBlbkRPMndQWjR4MW5hTmhI?=
 =?utf-8?B?aWVBc2VIWXFHUHdCU3lkUCtKeklOU2RSMFVYaGljU2RPYytGTWExejRlODRl?=
 =?utf-8?B?MjN6dm5iR2FFVFZLRWFidENHUXNOM1A1RW1iSFpJbmx6SVdEOTFHcjMvYjU1?=
 =?utf-8?B?bWVIaUVoam12YXdNSHgrclprYTVGTmc5NVZrYm1Da1NzMmlVZW9CYkYzWEJs?=
 =?utf-8?B?Y2hRTkZPc0hOSk8wZllYYUxsajZOZjJKOEx1allCQWZ6SlRnb0JxNzUzWWtn?=
 =?utf-8?B?SHE3R1d6dFgwNDErWjRqZzdlMXNXTlpLVloxbCtqaHVsN3pSeHlXdFhmYXBE?=
 =?utf-8?B?cVQ2MVFvZXdYcldsMisrZlhlL1ZYM0xuMkdST3Q1MXIzbmgvN3ljNUhVOFdQ?=
 =?utf-8?B?V3JvelFITHpiNkJraHRwVm1QUTE3enVDSStjSjRDb3hscitsMUJGM2hjb0lj?=
 =?utf-8?B?Vis0dUFSSGNoYWZRdkx6RmJQWXlqUWVBMTRaLzFXTlVjM2dXL29xSWpNb0Zj?=
 =?utf-8?B?cEdTNkQrbVkrT3k1bFVqZ0hmcktQSUQvZ2FHQTZYWTZpT0U1RHlTVUNHMTlP?=
 =?utf-8?B?dHJ0eGdvNHR2d00wV0NiRHMrUHJyWTJjVTFUc1Y0NEVtQ1pKQjRXRDFOWk94?=
 =?utf-8?B?UE42djBpSGFVNWd3ekgxdmpGYW02MUd5QWUwZlJjeCtDNURybXl3aTE3NGRa?=
 =?utf-8?B?NlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: acfd62a8-9673-4a72-bc43-08dbe5339636
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB7605.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Nov 2023 17:03:13.0996 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lKniXzmQvpWbm3eHHGcqC1tY/SQNt9QmlpkJR55439VC/h0uEoKd6FBxnnaOvQnTy1/7y9wlLBn/UXOLnY+AVJ2Bn+xT/7MF12qVfEsLIQ0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7377
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gsc: Assign a uabi class number to
 the GSC CS
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
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 11/13/2023 8:46 AM, Tvrtko Ursulin wrote:
>
> On 13/11/2023 15:51, Daniele Ceraolo Spurio wrote:
>> On 11/10/2023 4:00 AM, Tvrtko Ursulin wrote:
>>>
>>> On 09/11/2023 23:53, Daniele Ceraolo Spurio wrote:
>>>> The GSC CS is not exposed to the user, so we skipped assigning a uabi
>>>> class number for it. However, the trace logs use the uabi class and
>>>> instance to identify the engine, so leaving uabi class unset makes the
>>>> GSC CS show up as the RCS in those logs.
>>>> Given that the engine is not exposed to the user, we can't add a new
>>>> case in the uabi enum, so we insted internally define a kernel
>>>> reserved class using the next free number.
>>>>
>>>> Fixes: 194babe26bdc ("drm/i915/mtl: don't expose GSC command 
>>>> streamer to the user")
>>>> Signed-off-by: Daniele Ceraolo Spurio 
>>>> <daniele.ceraolospurio@intel.com>
>>>> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
>>>> Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
>>>> Cc: Matt Roper <matthew.d.roper@intel.com>
>>>> ---
>>>>   drivers/gpu/drm/i915/gt/intel_engine_user.c | 17 ++++++++---------
>>>>   drivers/gpu/drm/i915/gt/intel_engine_user.h |  4 ++++
>>>>   drivers/gpu/drm/i915/i915_drm_client.h      |  2 +-
>>>>   drivers/gpu/drm/i915/i915_drv.h             |  2 +-
>>>>   4 files changed, 14 insertions(+), 11 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_user.c 
>>>> b/drivers/gpu/drm/i915/gt/intel_engine_user.c
>>>> index 118164ddbb2e..3fd32bedd6e7 100644
>>>> --- a/drivers/gpu/drm/i915/gt/intel_engine_user.c
>>>> +++ b/drivers/gpu/drm/i915/gt/intel_engine_user.c
>>>> @@ -47,6 +47,7 @@ static const u8 uabi_classes[] = {
>>>>       [VIDEO_DECODE_CLASS] = I915_ENGINE_CLASS_VIDEO,
>>>>       [VIDEO_ENHANCEMENT_CLASS] = I915_ENGINE_CLASS_VIDEO_ENHANCE,
>>>>       [COMPUTE_CLASS] = I915_ENGINE_CLASS_COMPUTE,
>>>> +    [OTHER_CLASS] = I915_KERNEL_RSVD_CLASS,
>>>
>>> Could we set it to -1 (aka no uabi class) to avoid needing to 
>>> maintain the new macros?
>>>
>>> And then just teach intel_engines_driver_register to skip -1. Would 
>>> also need teaching engine_rename to handle -1.
>>>
>>> Might end up a smaller and more maintainable patch - worth a try do 
>>> you think?
>>
>> That was my initial idea as well, but the issue with this approach is 
>> the engine_uabi_class_count[] array, which is sized based on the 
>> number of uabi classes, so having class -1 would needlessly increase 
>> its size a lot even when using a u8. I thought about limiting the 
>> class entry to 3 
>
> I was thinking the -1 entry wouldn't be in that array since -1 is not 
> uabi class by its very definition. It is not reachable from the 
> outside so no need to be there.

The issue there is that the array is used to assign uabi_instance, but I 
can hardcode that to 0 for now since we don't expect any new engines of 
that class. would that work for you?
Otherwise I'll try the 3-bits thing and see how that looks.

Daniele

>
>> bits so the array would max out at 8 entries, but that seemed to be 
>> getting a bit too convoluted. I can give it a go if you think it's be 
>> cleaner overall.
>
> I had a feeling it would be, but without trying it out I won't claim 
> 100%.
>
>> Note that this patch does not introduce any new macros that would 
>> need to be maintained. I915_LAST_UABI_ENGINE_CLASS already existed (I 
>> just moved it from one file to another) and is the only one that 
>> changes when a new "real" uabi class is added; the other defines are 
>> based on this one. This also implies that if a new uabi class is 
>> added then I915_KERNEL_RSVD_CLASS would be bumped to the next free 
>> number, which would cause the GSC to show as a different uabi class 
>> in newer logs; considering that i915 is on its way out, a new class 
>> seems very unlikely so I thought it'd be an acceptable compromise to 
>> keep things simple.
>>
>>>
>>>>   };
>>>>     static int engine_cmp(void *priv, const struct list_head *A,
>>>> @@ -138,7 +139,7 @@ const char *intel_engine_class_repr(u8 class)
>>>>           [COPY_ENGINE_CLASS] = "bcs",
>>>>           [VIDEO_DECODE_CLASS] = "vcs",
>>>>           [VIDEO_ENHANCEMENT_CLASS] = "vecs",
>>>> -        [OTHER_CLASS] = "other",
>>>> +        [OTHER_CLASS] = "gsc",
>>>
>>> Maybe unrelated?
>>
>> no. Before this patch, we hardcoded "gsc" below when calling 
>> engine_rename() for it. With this patch, we use the name from this 
>> array, so it needs to be updated. The GEM_WARN_ON below was added to 
>> make sure we don't get different engines in OTHER_CLASS that might 
>> not match the "gsc" naming.
>
> Ah okay, one special casing for another, a wash I guess.
>
> Regards,
>
> Tvrtko
>
>>>
>>> Regards,
>>>
>>> Tvrtko
>>>
>>>>           [COMPUTE_CLASS] = "ccs",
>>>>       };
>>>>   @@ -216,14 +217,8 @@ void intel_engines_driver_register(struct 
>>>> drm_i915_private *i915)
>>>>           if (intel_gt_has_unrecoverable_error(engine->gt))
>>>>               continue; /* ignore incomplete engines */
>>>>   -        /*
>>>> -         * We don't want to expose the GSC engine to the users, 
>>>> but we
>>>> -         * still rename it so it is easier to identify in the 
>>>> debug logs
>>>> -         */
>>>> -        if (engine->id == GSC0) {
>>>> -            engine_rename(engine, "gsc", 0);
>>>> -            continue;
>>>> -        }
>>>> +        /* The only engine we expect in OTHER_CLASS is GSC0 */
>>>> +        GEM_WARN_ON(engine->class == OTHER_CLASS && engine->id != 
>>>> GSC0);
>>>>             GEM_BUG_ON(engine->class >= ARRAY_SIZE(uabi_classes));
>>>>           engine->uabi_class = uabi_classes[engine->class];
>>>> @@ -238,6 +233,10 @@ void intel_engines_driver_register(struct 
>>>> drm_i915_private *i915)
>>>> intel_engine_class_repr(engine->class),
>>>>                     engine->uabi_instance);
>>>>   +        /* We don't want to expose the GSC engine to the users */
>>>> +        if (engine->id == GSC0)
>>>> +            continue;
>>>> +
>>>>           rb_link_node(&engine->uabi_node, prev, p);
>>>>           rb_insert_color(&engine->uabi_node, &i915->uabi_engines);
>>>>   diff --git a/drivers/gpu/drm/i915/gt/intel_engine_user.h 
>>>> b/drivers/gpu/drm/i915/gt/intel_engine_user.h
>>>> index 3dc7e8ab9fbc..dd31805b2a5a 100644
>>>> --- a/drivers/gpu/drm/i915/gt/intel_engine_user.h
>>>> +++ b/drivers/gpu/drm/i915/gt/intel_engine_user.h
>>>> @@ -11,6 +11,10 @@
>>>>   struct drm_i915_private;
>>>>   struct intel_engine_cs;
>>>>   +#define I915_LAST_UABI_ENGINE_CLASS I915_ENGINE_CLASS_COMPUTE
>>>> +#define I915_KERNEL_RSVD_CLASS (I915_LAST_UABI_ENGINE_CLASS + 1)
>>>> +#define I915_MAX_UABI_CLASSES (I915_KERNEL_RSVD_CLASS + 1)
>>>> +
>>>>   struct intel_engine_cs *
>>>>   intel_engine_lookup_user(struct drm_i915_private *i915, u8 class, 
>>>> u8 instance);
>>>>   diff --git a/drivers/gpu/drm/i915/i915_drm_client.h 
>>>> b/drivers/gpu/drm/i915/i915_drm_client.h
>>>> index 67816c912bca..c42cb2511348 100644
>>>> --- a/drivers/gpu/drm/i915/i915_drm_client.h
>>>> +++ b/drivers/gpu/drm/i915/i915_drm_client.h
>>>> @@ -12,7 +12,7 @@
>>>>     #include <uapi/drm/i915_drm.h>
>>>>   -#define I915_LAST_UABI_ENGINE_CLASS I915_ENGINE_CLASS_COMPUTE
>>>> +#include "gt/intel_engine_user.h"
>>>>     struct drm_file;
>>>>   struct drm_printer;
>>>> diff --git a/drivers/gpu/drm/i915/i915_drv.h 
>>>> b/drivers/gpu/drm/i915/i915_drv.h
>>>> index f3be9033a93f..a718b4cb5a2d 100644
>>>> --- a/drivers/gpu/drm/i915/i915_drv.h
>>>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>>>> @@ -238,7 +238,7 @@ struct drm_i915_private {
>>>>           struct list_head uabi_engines_list;
>>>>           struct rb_root uabi_engines;
>>>>       };
>>>> -    unsigned int 
>>>> engine_uabi_class_count[I915_LAST_UABI_ENGINE_CLASS + 1];
>>>> +    unsigned int engine_uabi_class_count[I915_MAX_UABI_CLASSES];
>>>>         /* protects the irq masks */
>>>>       spinlock_t irq_lock;
>>

