Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3181569AC19
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Feb 2023 14:06:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 907A110EFC0;
	Fri, 17 Feb 2023 13:06:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21B7F10EFC0
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Feb 2023 13:06:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676639169; x=1708175169;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Q29jsDlAO0pE1bpmHW9qhI81lTIX3uANXVuGO7pYAiU=;
 b=k0D9e8lTk6Mj+aiFeI/4pThUmyiJ5EAr9uGrLqgAH3xVIac1iaplNdJL
 jk/olsCedpnavWAXoDD0Mp25OIty5BotzTMw4J0gg8CkgB6RfHwRqyIuk
 WBBr+m+5a7FxSVznlW7C7S3VKTVQaTFGPAdffwzh2KFRPVaCLVZYdSDbQ
 gSfHssTLUDBR2bSeporkQ4Cpl/bm49oAvL3uZA5OTwprMPUETxPylB8nM
 ZskadBWcLiDcgQeg716oUqb552DHNFgQfNacrvtqVXIcEr2vMVBAkA4jR
 GY7wCMyWBBy98Q75wgRjHw0izWnYYrgKk2Y8vuGZrmin+mlW3REzzQqDs A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="315697774"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="315697774"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2023 05:06:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="813366596"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="813366596"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga001.fm.intel.com with ESMTP; 17 Feb 2023 05:06:08 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 17 Feb 2023 05:06:08 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 17 Feb 2023 05:06:08 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 17 Feb 2023 05:06:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eTuljFkTLeDFYVYrbc3Z97ck0ubm953NTRpJ5vrf49BKBxHFvw+UFJbDnbhcFlZRXHweDfsnuPZ6uEu7F8KsmOYCqnZW7JkZM23OF/s9U8fiEAAYMYLWRcvVmuWJtcoLHa/q7o4s5GkJ6Zx8+98Fh6soD89xM5J5aTGVWhaezQKnMl+cMf5z0P+I9MhbUD02YfDVEdeNc+iMP2JW3iq6Bvk1pc0ISUemPRGxJ9dxcGVhrEgCgVtfKvaZUrAdrL7Zqlrbr0vJlJO6+CCCCtj741f0IxqgzMrAO6Gy/kHPjWBdultWWlqD1eZ4DY08h3qN0FOEH8uH/N3eJxm6UWcNGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uXBfLu+w1UlXrcQXY6sXUOM67/pBHMA+gECgtPAWIDw=;
 b=VJWoU93VF4AoNOlk2aYDW6Mk8/1xipcSPxEbnOEYbKf7EUC6SUY5VZG8+N8ZYWzVOzqugPcm5vF9mMsRc63eP8+dpWDlb0w3rXrPWTg+FjoWN4qyGDvkAQ5gneuCmIJgd9PS55jcq7lxUKVdcQU7wlbzcy2v5zUx08eyvo/pl8eY/oPn5Pnr3n0rxmpxlhHKvYlhkdrjdYsqtdf8/A0KtCIQ7fDif7IBxx18QbI0os74UUOJHRYKEM8Kvk+pnD9vo23svtoz/g5bCHLO9SVowivbIM+88yD3vDmpYJyY+G1tneErOy3NK/HFAyraQ7vqZ5320ex8JYO0Zh5yhNpXdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by BL1PR11MB5333.namprd11.prod.outlook.com (2603:10b6:208:309::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.15; Fri, 17 Feb
 2023 13:06:06 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::a4d:71cf:e6bb:6942]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::a4d:71cf:e6bb:6942%7]) with mapi id 15.20.6111.013; Fri, 17 Feb 2023
 13:06:06 +0000
Message-ID: <5fc93ec8-a51f-c28b-848d-825bed4d0b94@intel.com>
Date: Fri, 17 Feb 2023 18:35:51 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20230216231312.32664-1-ville.syrjala@linux.intel.com>
 <20230216231312.32664-3-ville.syrjala@linux.intel.com>
 <02f8d9ad-81bf-b176-4565-015dec53442e@intel.com> <Y+9s8+EuHTk5ZI0e@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Y+9s8+EuHTk5ZI0e@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0189.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:be::11) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|BL1PR11MB5333:EE_
X-MS-Office365-Filtering-Correlation-Id: 40a9f075-6e5e-4bce-1189-08db10e7baa8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GKtKWbCYH2SU9fzQAMnTPcD3I33EMO1LN9e8nV7lwPFKTuOJjEewrVBPUi+ju+nIxaNRzEUy6O02wPm5p6Iwv1i5d/3VGCTbBOONaP0RPlvcMYuV3pplxx3TVAYGbkEh5U4YHw5hrbn+sjyPcS+87u6mJOYB0E//pjD0B+eqh1kq8N3gNjzNnh9SxQ7ilB+i0g5UKtmTpr6/qyi6qefDCSo5ruhenIYZK/IZHigHdGzXZIKetRPeEQgxma0ic1u0b0Ap781Ke3HFZ9Wp/u/qbIYBarStRm7zgBiEyxQyJco3k83td35bd1EbuG08cw0Pfopa8fN+GG+uXNjZ38h+0Z0rEZnfUhVtlGEGLn7mVUHyvoQAbfdOCxF+DIjdwYkp0grxWQTwdEkESzMfC8GLpAfmlBn4BlFYqHWfeCJIYlfI4i5IrmcYHDbCbWOqhIw8zndZNPaf3xD4QFWHk8+StVdqGto3j6cvLpQSj/WrhCy4q6woVU0DCJbsg1XhrMjwP6yhHEXJ+fOJo0VeRX30aDZFzOGz6xhAC76okiljYVAsjyhGeHDAottYVtp6xxpqyqWjSERGaoG4ylxe3YYjvKXrso1+ZPRZ7nST/IaAtXvton5SWpwm2/lmo0reM4QOrWB+/rueMRbKDBOt1uj78GR48X8I07d8PcS8zO5U+EazdFUpg3C6ZgdeZ27+syTUUJh2biAc6tOdKiuZvlVNaohuvS3Ehtj0GziqlD32VaU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(39860400002)(346002)(376002)(396003)(366004)(451199018)(86362001)(31696002)(82960400001)(38100700002)(36756003)(5660300002)(8676002)(2906002)(4326008)(6916009)(66476007)(66946007)(66556008)(8936002)(41300700001)(26005)(186003)(2616005)(53546011)(55236004)(6512007)(83380400001)(66574015)(316002)(6506007)(6666004)(478600001)(6486002)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c1RpRnlSNVQrSVUwWjQvUHorOW1lcUNVR0ZIRlJNcUxhVnZOUHNQMCswWUYz?=
 =?utf-8?B?TDJMSXJFWndjdVZFZ0xsSTJya1BaZ2Q3N1d4TDBlZkFIQ2tsYXRDbFJOZk1X?=
 =?utf-8?B?YWdpQXByVjZmemFsY1ZvalBjMnFTZjJWNm5WS3VzVE15R1d4NGNOSUkvRk1h?=
 =?utf-8?B?bnpyaUlqOFRFZlRNWmJpaVhGSFpScExCTDg0dHY4L0J1cnVKcmxnYmptcXFi?=
 =?utf-8?B?c1Z5M3R2aWJERWtoNGhQVWZ2VjVSTFIyK1RwUjhObDJuZVdGTTBUNTRNdUFL?=
 =?utf-8?B?dnVjamtSakExc2hkdEllTzNEaHhkQm8reWEycGRaeGFLUUFLSjBvUExqT2Vl?=
 =?utf-8?B?SDVwblFvODBWbXp5VmhncXNkeU1Bb2lmSDViZm5oeVB3M3JlYXcvUXA4d1VD?=
 =?utf-8?B?Zm5vTHltVEF2dlkxNUU5RlVrMW9NNzlyVUhFOW5oTXpTeldDNnBHMGkxY051?=
 =?utf-8?B?bWh2czE1K3pGbFBWVnRPazhQc3RiOFBtMDFWc2xzK1pUNHFnN1NVQ0Z0TTZt?=
 =?utf-8?B?NXlFc1dIdW9oVk5RRFZpU01RVkEzb1FSdXNnUkpYSW9WWlhxcmY5Vk1ld1Vh?=
 =?utf-8?B?d05XNDhMdHA5SXh5S0lLRTl6NnIzSkhIVk04VUNSQjdUSTlWY1FmTGtzVVoy?=
 =?utf-8?B?Q1pGeSt3VnVoRThjUFlpZUJXOHhML0RNdmE3OXR6SVh2WnBDNFY2YzVPY1hU?=
 =?utf-8?B?ZU0rTlMwbXI5eDZpWXZZNzhEc2pkYUszR0p0WHVjSzVidkIyVm1BTnFORXlM?=
 =?utf-8?B?dW0rQ3RBWDBXeHdCaGRheXMvdVVHaFk3bmUvZkkzc3duSnRSZFFVTlpRYS9D?=
 =?utf-8?B?OGNqUUI2K2hNQWdWK2tsRDZjUmhoUlQxamdMY1dJRG5xVlMwSnkzam5teTFY?=
 =?utf-8?B?MWdDK3lMaVlmTzUrS2FkZXVubWxaNnMxdzdSUWF6eFlNbXRweUI0S0VHdEpp?=
 =?utf-8?B?Y3VVWFc5ODh4bU5iUHFkMkxYdVFJK0doMVlpYk9JKzd4UUVyb0F4M1o2YWQv?=
 =?utf-8?B?NXhURmFPdTNCQXFlazVIYjdvSnJMMW1HRWkvME9NSWx2QkNDdkE1OGlUOWJT?=
 =?utf-8?B?RzYwQUpOQ2d0bXR6S3J2ZDlSNUI2bFVoR0ZaTGRkUis2MFFYajNDMHhMQXF5?=
 =?utf-8?B?VTJCVkEzZVVKZ0ZNK3YwUHBxS3k5cFVCdHQwTU9UcWFIaWNNLzRYZFYwZWNU?=
 =?utf-8?B?YTVReVM3NWVmQ21mV2I1UFAyT2gzRzIrZmw3dHd5Y3Z0bTZJM0lvSW5FK0tT?=
 =?utf-8?B?QVlvK3BjLzF6cDJFa1poK2NGNU9vQWlIV3VrdnBKZGNnRGlid2VoTmU5aGFI?=
 =?utf-8?B?Y1A4N3RtRUdPOS9HUGxuZTRWRmxLOWZJTVRPclRaNFpaTElubTFSUFg5RzZH?=
 =?utf-8?B?Tnp1Tzl3NHcvZ2FKdHhnaXF1U29uNFBPTVBadDhQOGhrUWFGVXBmV0FGK2FE?=
 =?utf-8?B?ZzI2T0N4N0ZuYzI5UXpUR2dnOXVoYWtYeC9EWXN0OFBqZmZhN21mZ2xtYUVh?=
 =?utf-8?B?RUxvRTVvdGpKOHVsSVEzSkoyY3VqdFgxaHcyNnlyc05CVWVPVitXekt1VzFG?=
 =?utf-8?B?SU5adVdLbEJHdzlWRGR1a25tdjJ4ZDhlK001L2ZBMmE1Z0YxSkNxeGVRM3ha?=
 =?utf-8?B?cE9pNWNjUnlQV2dwaUlqMUppeW8yVjZ3L2ZZTjlOMk9hSzBxS24zdUNTaC9K?=
 =?utf-8?B?cW5uZW9FZmtYOHU4R1E5L0xPK08vNDhvN0wzUTdEcTJJU3lzWjZWelpkUFFU?=
 =?utf-8?B?Ui9YaGN6WWFuVDFFUjBrM2RVdTNLVnR6WEZnV1RLU21BOUdVOGMvc29vd2ox?=
 =?utf-8?B?Z3E0TDNFSldsSlFPMkd5UktQdVV3V09ONFBBL1prQnlBby9wcGkyOVhHSzZr?=
 =?utf-8?B?cDEwVVNVZlU2czQzRlFMNVpvSUpWVEpSQjlWNG0xbzRDKzBwQUJLNHRQVWlr?=
 =?utf-8?B?UElKT1hWWVRyNTJtUDFlZkIxdGR1YkQvcXVUdUN4L21pdmMxM2REYXI4ZHB5?=
 =?utf-8?B?bjVoNkl3Tkt1V0pxaFZOMWFseHNIcTVuNTdobTVRaSsvVTRzV1hHTmZybVJ6?=
 =?utf-8?B?bkFYV0d6cXl6TVZoa1plNzFyeGZQZXlTOEJjUm9YbUovOGc4dTRsekJXNVBn?=
 =?utf-8?B?cUo1dW92SHJiQVhpcktVVm9sbXN3V0JRUGc4TlBTdVFKMmc4eVZzV1oyU2kr?=
 =?utf-8?B?ZVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 40a9f075-6e5e-4bce-1189-08db10e7baa8
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2023 13:06:06.3122 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: G1sDAvZj4pIIjQh7Yam+Qb4YqnmyUkGLSG+FXMgIHSl0j/aSz0YDe2L7tjkN8XazaRRSSY4v6WGE2D76It0zyFVuG3DlMy6jDpaNtv1zNrg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5333
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: Fix platform default aux ch
 for skl
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


On 2/17/2023 5:32 PM, Ville Syrjälä wrote:
> On Fri, Feb 17, 2023 at 03:15:59PM +0530, Nautiyal, Ankit K wrote:
>> On 2/17/2023 4:43 AM, Ville Syrjala wrote:
>>> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>>
>>> SKL/derivatives have DDI E but no AUX E, so we need to pick
>>> another aux ch as the platform default. DDI E is more or less
>>> the other half of DDI A, so we pick AUX A.
>>>
>>> In all other cases we should have a corresponding aux ch for
>>> each DDI.
>>>
>>> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/display/intel_dp_aux.c | 14 ++++++++++++--
>>>    1 file changed, 12 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
>>> index 57eb3ff187fa..96967e21c94c 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
>>> @@ -739,10 +739,20 @@ void intel_dp_aux_init(struct intel_dp *intel_dp)
>>>    	cpu_latency_qos_add_request(&intel_dp->pm_qos, PM_QOS_DEFAULT_VALUE);
>>>    }
>>>    
>>> +static enum aux_ch default_aux_ch(struct intel_encoder *encoder)
>>> +{
>>> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>>> +
>>> +	/* SKL has DDI E but no AUX E */
>>> +	if (DISPLAY_VER(i915) == 9 && encoder->port == PORT_E)
>>> +		return AUX_CH_A;
>>> +
>> I guess we might need to fix intel_dp_aux_init also. Wont we have
>> dig_port->aux_ch and intel_dp->aux_ch pointing to different things?
> There is no intel_dp->aux_ch.
>
>> For example for SKL and DDI E, intel_dp->aux.name will be derived from
>> dig_port->aux_ch i.e. AUX_CH_A but intel_dp->aux_ctl/data reg will still
>> point to DP_AUX_CH_CTL/DATA_E.
>>
>> Am I missing something?
> Everything is based on dig_port->aux_ch.

Yeah my bad. I think I misread and got confused. We indeed are using 
dig_port->aux_ch, for getting aux_ctl/data reg.

I couldnt get the exact bspec mention for SKL not having AUX E, but SKL 
Display connection Bspec:4217 throws some light, if I am not fully off.

Is this applicable to Canonlake too  (Bspec:14004) from Display 
connection it does seem to have DDI E but no DP_AUX E?


Regards,

Ankit

>
>> Regards,
>>
>> Ankit
>>
>>
>>> +	return (enum aux_ch)encoder->port;
>>> +}
>>> +
>>>    enum aux_ch intel_dp_aux_ch(struct intel_encoder *encoder)
>>>    {
>>>    	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>>> -	enum port port = encoder->port;
>>>    	enum aux_ch aux_ch;
>>>    
>>>    	aux_ch = intel_bios_dp_aux_ch(encoder->devdata);
>>> @@ -753,7 +763,7 @@ enum aux_ch intel_dp_aux_ch(struct intel_encoder *encoder)
>>>    		return aux_ch;
>>>    	}
>>>    
>>> -	aux_ch = (enum aux_ch)port;
>>> +	aux_ch = default_aux_ch(encoder);
>>>    
>>>    	drm_dbg_kms(&i915->drm,
>>>    		    "[ENCODER:%d:%s] using AUX %c (platform default)\n",
