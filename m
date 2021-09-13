Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41378409870
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Sep 2021 18:10:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A893F6E1BD;
	Mon, 13 Sep 2021 16:10:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C01286E1BD
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Sep 2021 16:10:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10106"; a="218540822"
X-IronPort-AV: E=Sophos;i="5.85,290,1624345200"; d="scan'208";a="218540822"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2021 09:09:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,290,1624345200"; d="scan'208";a="433300027"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga003.jf.intel.com with ESMTP; 13 Sep 2021 09:09:31 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 13 Sep 2021 09:09:31 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 13 Sep 2021 09:09:31 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 13 Sep 2021 09:09:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ejjhMdneWOuS8eQ3BWORP6+t4Cp1zUEegEt/2TjIe3E/rlrYovqvAAQXl0kVQUdcKnTKbXmWJdanZjoRNOY5fbfFQolqUBszF6tw04GKFkZAZ6cCzNNGTFHoZZQXJ+83yLjUu5z2ciCuluOldeXqQ+nEbm6BFdtWt7KkzYe4jIXUzE/tP8ocNHw7W2Hv0Je3lwLbRiLj2Y4dLJL8okwu7YuiLTjsVJeg16xb413K1DLImHaTmRvRikL3HcaFm7tA1CDGXn8GiyHuSnFVHlH/lgG0xE8jeWOfesfOYOQRtAffunqTC3sKkUuBNqtTMBsNbr7hEv1JqdxIl9TTGAK5tA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=2+BskJOXjRoKtJUBEiwu5j5m/AZCwfXr8Ij7SikkELQ=;
 b=cMKwhs0bEeNHGd1qrR+LKQpOxhCT4t/Is5nZs+6TIANjFP9RiVlTypT3T1U3hIdqbF4BSCnA1B8q498IW8WsvjTJ77KfSmxOXhySnYBEX/3lpzujIz0XH/QjISlfFX14lpZEMuH1gSSGPhn4Xgn0asMprl+i746sH6wOYfIpWdDL3zRxndnW3mfIggtK1fnf/+LN2oIZjWKXgMt9rwYCvBX1nI/xRST0budwN4cx1/mG/eAxpNpLE6VvRI9OWQDqoWR1fuSMDVIaVwFI0YbyC63IE3A/ApacmVFIc6EKtXlYmUoT/IjOdRSYSZkEb6EmBxtiCkyKIm+lEXq38myuKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2+BskJOXjRoKtJUBEiwu5j5m/AZCwfXr8Ij7SikkELQ=;
 b=cAmNBSsj/TIsTMI+5Xr8zaI0ulBCezTiVY0bm4gKiHXZ5z9QM4K5asEAWxsVI23csdZBe+QSrsmreon+o9msCipKCfccrLr0Rb8LoCCGeoHuVM6EIY7zBrLfjnk8+JigsSD2hH8TJEIw8Rwz0CMqwnAOhBOTf//dF5sLY2s4SrI=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5409.namprd11.prod.outlook.com (2603:10b6:610:d0::7)
 by CH0PR11MB5379.namprd11.prod.outlook.com (2603:10b6:610:ba::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.15; Mon, 13 Sep
 2021 16:09:28 +0000
Received: from CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::c3e:dff7:364c:ba7]) by CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::c3e:dff7:364c:ba7%2]) with mapi id 15.20.4500.019; Mon, 13 Sep 2021
 16:09:28 +0000
To: "Souza, Jose" <jose.souza@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
References: <20210909230725.33735-1-jose.souza@intel.com>
 <20210909230725.33735-2-jose.souza@intel.com>
 <4efdadcc-c8f5-cfdd-9b79-ce780920fb9b@intel.com>
 <b130c867ca00cfeaedb7b8bcdd80b30d84f74958.camel@intel.com>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <9d949ff3-9e78-ef10-501b-b68625cc10fa@intel.com>
Date: Mon, 13 Sep 2021 19:09:19 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
In-Reply-To: <b130c867ca00cfeaedb7b8bcdd80b30d84f74958.camel@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DB8PR09CA0002.eurprd09.prod.outlook.com
 (2603:10a6:10:a0::15) To CH0PR11MB5409.namprd11.prod.outlook.com
 (2603:10b6:610:d0::7)
MIME-Version: 1.0
Received: from [10.237.72.198] (134.134.139.71) by
 DB8PR09CA0002.eurprd09.prod.outlook.com (2603:10a6:10:a0::15) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4500.14 via Frontend Transport; Mon, 13 Sep 2021 16:09:26 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d0f1d5b5-c320-4ac6-ae7c-08d976d0dcee
X-MS-TrafficTypeDiagnostic: CH0PR11MB5379:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CH0PR11MB5379EB97739B321B5A11C29DB8D99@CH0PR11MB5379.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: B6XJkxe1lmRan/yz9S0bQvSydGl53ths88h50KjBPD710g595ONmOs6TDe+VT7+3DOsuwuRE9HxNa5SjfCD/rIZ8vVWxAqPq+eV3h1ELVg9nucy/TrN9oLMzjMiojJr6eAfSl1DKvROErb3e7Q27TCw/XMkkJytRphVd0wmY4BOZnaX/AiaDnH+I1iNszjpSKohKbqaRdsk6kdSE7tqkNrwaBJH+UtDP0f0R9n0uOap66WKyJ/TM5fHIrNzxKokv4cSRl/O9Y39NlmvtB8n6sfQ3jQqwOP1GaWH5nABeubcnf0w/SsPzab4HS6AdHfrCdlNvaqRQBjQyV6SGOD9reJ2nOh6FgBvd2MGuCFXRxVt+h5fxcthq2p5YW/Wvqs38TPX/gea9vJE5RIM/GiFlRaOuyA0Q1IAtrJs6CZwiH+9lYn8daxyIVuS1Ljvy7BFwI/z4aaAZYDYDPGXJ+xB3yro02CxzpYBrgjWonBtMUqaW3KQPLweIF3RPXzev6gzx+Ule2ZCjkXnrCe2I7U68g9uklfJWFPeBMCX6S5jx4AzB6CIvWmluVfOaddWSBLGtAa8Zelz7r+cA4C+RA/eeqJKeyGCA5KiPRidUss4QbmRFzuQu8P1kl0Cn7lVfwkkp2U92BBlQuI6cPlpBSlU8m2YPFZZ0lzDw9aOieikcCvE/jWd4fUb9/W2xNDWSHEt79BKn69LPCbNgIz7/z1GM4CHVKlQX3Ja0ExBlRJJYfYY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(39860400002)(136003)(346002)(366004)(376002)(38100700002)(66476007)(5660300002)(186003)(26005)(6486002)(8936002)(31696002)(8676002)(66946007)(66556008)(53546011)(2906002)(86362001)(478600001)(316002)(31686004)(6666004)(110136005)(16576012)(83380400001)(956004)(36756003)(2616005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dWtSQWxCRU9ndGxTWUdReVJXSEZPbGNsc0hpVHN3QU9xNHJuNmFFQTRhc1Bh?=
 =?utf-8?B?M3VRRWhZQWlmYWszaU4yeDhoTTNZMnp1SlBNVVdRVXRzZkZmdVpwUGo5OTBr?=
 =?utf-8?B?Y2V3Z3BOVU0wdWhzTllkdnlZUE9yYW9jU0Nsa3pUUi8rOElYY2h4eGplRHRH?=
 =?utf-8?B?VHpPNjJNRlJxendaWW4vK1ZVaStIMzg2RE9BWUNUOXIwaExtUjVlVVNEMFNy?=
 =?utf-8?B?SnlZV2VBQTRTRTcwTWtpVXgvZjRoSEpUK3lkd3VRN1BMZG9HbytEcXpnUkFn?=
 =?utf-8?B?UmU1eTBQRjdibDhyOEtLZ0RXOG5iU00xS3ZPc0QrQXRxbmR2Q0d3Ym1CaHBp?=
 =?utf-8?B?cTdwWXo1VnNoNWI0RVovUHpwdXNBOUhRcU5oUnArRDNPMjNVUEpleVhpQ2Vs?=
 =?utf-8?B?WWJDNEhhS0VOVXNYSkN1OUR6cC9sRE1EOEMzL0hOY0g2ZUt2VlF1eCtSRXQ1?=
 =?utf-8?B?MEhieUZvMk02dWNLSnFVZ1FDUnVxeUFpanV0YTgyY09MOEJ4VHRvWkc2Ukw4?=
 =?utf-8?B?cjE2REtuQ28rZ2U3OHBrSU5saGlBNnhSZGJOalZuSy95SElBT3F1K2s4MFdl?=
 =?utf-8?B?djdtTmJYN25qTG1NL09SR2taMWJKd3Vva2cyeFJEY1BLS09ucmRMYi9YQVBh?=
 =?utf-8?B?OVhuUHJiRStyYzE2bTZxQ21MMCtoemJnem10MXh1NkRMZnkyaTIzeElQaFBo?=
 =?utf-8?B?emY3TnQ2OFRzVmRCSGpuTE5zQTloZ3cyUVdaeEZ0Y1A3T1VaYXFhL1M5alow?=
 =?utf-8?B?dVNqb3RiMi9IZTB0cWt1ZUZKT3FlN0JYUW5tM2R6LzZ4Wmtvc3JkMmNhQ05C?=
 =?utf-8?B?QW5EMnFZQVNRUjlhSWtqVHZQU04xMTdZMWhvM0ZLOXlwZmlXaDdTOEdEczE4?=
 =?utf-8?B?UU4rd1doZjFnTVZaRXM1dkluVFNtdTRLOXJuNWhYdlVGbEFzZHYybVIwU3hv?=
 =?utf-8?B?OTQrZXFXT1hFRUhzVEwxdldLZXREWGYrVXRKMlN0QUNzemIzVitxZVMrN0Ev?=
 =?utf-8?B?NlJEVkFkVHZ4TFUwMVN4TWp4bndZdWRvU3FncVczQnQvR01RVCt6enZ5Nnlw?=
 =?utf-8?B?dFNrN3M3dHVuMnVuUGt4RlF6dDQwZ0pBZTdIMUJZaG1oTkNybStBRjB4QzdB?=
 =?utf-8?B?UU1tUWNjR0VPS2pOOVgrVTVPR1BjQXZFQ1ZScThOV0ZTRnNPUFRyQ1Rxa1NY?=
 =?utf-8?B?dFZLYmU0MU1oSnpWSUlwV1JsYnkwMlNrY1NPN00rYlZLdEtaWFhYWExrL2ky?=
 =?utf-8?B?MnR3Mms4MytUbkcwUTlZU0lZMHNGTlptR0FVRzdqSUQ3cEZleFUxN1VWamhF?=
 =?utf-8?B?dDhhZXhZZnFZTnFlTnQ1VUpvU0djb1E3UmE5S3NKQW5KWVlyNFZjNTJGeHJQ?=
 =?utf-8?B?eTR0NTVLM0tiVUIrVGV6N1RaVDFyUlhUeWRpZVJCR1NTVDRIeXorSjA5dVhX?=
 =?utf-8?B?amVkVStIT3k4UUYrQ3RhcHZpc0YzWWpLczFGRFRuQkZSSklLNmJpVm5lYVpU?=
 =?utf-8?B?NTd3VDh1MGRnZU9qUGFVc1BINEplcXZ2ZkxCREFZbzlBMnIvYzdMSTZzdStM?=
 =?utf-8?B?SXJONmtHMFNwbmx5R0g4THVvYzBKc3U3ck45TE1EU2daRXlUVFVEeUxRQUZ4?=
 =?utf-8?B?dGFnOUNGTDM2NHExcDFZRVNDa0xKcmF5MDZsMDlxK0F5VDVHM1hEYTZqQ3Bi?=
 =?utf-8?B?ZTMwanlRUjUxR3FOREZ5L1Zac0V5YXF5SjhKWk91RGsyV3pDZ0NNWlEvNWd3?=
 =?utf-8?Q?vI5o0YF7hbSGg+ZPsurK07QpMBDjqaGeglO9XUH?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d0f1d5b5-c320-4ac6-ae7c-08d976d0dcee
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Sep 2021 16:09:28.2715 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: c5eaTWf9wEAJ4kaMNrnOw6tWjSus/VqXxqYkz0oO6BoG1HC1ts354uZNRZxrnOeOlYHN8+pl+NOw8Xj1d+sD3mJiiARe5RulK3X4Dm6eoWE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5379
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915/display/adlp: Add new PSR2
 workarounds
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



On 9/10/21 7:29 PM, Souza, Jose wrote:
> On Fri, 2021-09-10 at 16:38 +0300, Gwan-gyeong Mun wrote:
>>
>> On 9/10/21 2:07 AM, José Roberto de Souza wrote:
>>> Wa_16014451276 fixes the starting coordinate for PSR2 selective
>>> updates. CHICKEN_TRANS definition of the workaround bit has a wrong
>>> name based on workaround definition and HSD.
>>>
>>> Wa_14014971508 allows the screen to continue to be updated when
>>> coming back from DC5/DC6 and SF_SINGLE_FULL_FRAME bit is not kept
>>> set in PSR2_MAN_TRK_CTL.
>>>
>>> Wa_16012604467 fixes underruns when exiting PSR2 when it is in one
>>> of its internal states.
>>>
>>> Wa_14014971508 is still in pending status in BSpec but by
>>> the time this is reviewed and ready to be merged it will be finalized.
>>>
>>> BSpec: 54369
>>> BSpec: 50054
>>> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
>>> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/display/intel_psr.c | 23 ++++++++++++++++++++++-
>>>    drivers/gpu/drm/i915/i915_reg.h          |  4 ++++
>>>    2 files changed, 26 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
>>> index 36816abb3bcc0..92c0b2159559f 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>>> @@ -1086,6 +1086,12 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp)
>>>    intel_de_write(dev_priv, reg, chicken);
>>>    }
>>>
>>> +/* Wa_16014451276:adlp */
>>> +if (IS_ALDERLAKE_P(dev_priv) &&
>>> +    intel_dp->psr.psr2_enabled)
>>> +intel_de_rmw(dev_priv, CHICKEN_TRANS(cpu_transcoder), 0,
>>> +     D13_1_BASED_X_GRANULARITY);
>> Depending on the capability of the PSR panel, the following setting may
>> not be necessary, could you add some comments such as "force enable
>> 1-based X granularity on PSR2 VSC SDP"?
> 
> It was made sure that all alderlake-P BOM panels will have 1-based X granularity, I can add something like that.
> 
> 
>>> +
>>>    /*
>>>     * Per Spec: Avoid continuous PSR exit by masking MEMUP and HPD also
>>>     * mask LPSP to avoid dependency on other drivers that might block
>>> @@ -1131,6 +1137,11 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp)
>>>         TRANS_SET_CONTEXT_LATENCY(intel_dp->psr.transcoder),
>>>         TRANS_SET_CONTEXT_LATENCY_MASK,
>>>         TRANS_SET_CONTEXT_LATENCY_VALUE(1));
>>> +
>>> +/* Wa_16012604467:adlp */
>>> +if (IS_ALDERLAKE_P(dev_priv) && intel_dp->psr.psr2_enabled)
>>> +intel_de_rmw(dev_priv, CLKGATE_DIS_MISC, 0,
>>> +     CLKGATE_DIS_MISC_DMASC_GATING_DIS);
>>>    }
>>>
>>>    static bool psr_interrupt_error_check(struct intel_dp *intel_dp)
>>> @@ -1320,6 +1331,11 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
>>>         TRANS_SET_CONTEXT_LATENCY(intel_dp->psr.transcoder),
>>>         TRANS_SET_CONTEXT_LATENCY_MASK, 0);
>>>
>>> +/* Wa_16012604467:adlp */
>>> +if (IS_ALDERLAKE_P(dev_priv) && intel_dp->psr.psr2_enabled)
>>> +intel_de_rmw(dev_priv, CLKGATE_DIS_MISC,
>>> +     CLKGATE_DIS_MISC_DMASC_GATING_DIS, 0);
>>> +
>>>    intel_snps_phy_update_psr_power_state(dev_priv, phy, false);
>>>
>>>    /* Disable PSR on Sink */
>>> @@ -1488,8 +1504,13 @@ static void psr2_man_trk_ctl_calc(struct intel_crtc_state *crtc_state,
>>>    u32 val = PSR2_MAN_TRK_CTL_ENABLE;
>>>
>>>    if (full_update) {
>>> +/*
>>> + * Wa_14014971508:adlp
>>> + * SINGLE_FULL_FRAME bit is not hold in register so can not be
>>> + * restored by DMC, so using CONTINUOS_FULL_FRAME to mimic that
>>> + */
>>>    if (IS_ALDERLAKE_P(dev_priv))
>>> -val |= ADLP_PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME;
>>> +val |= ADLP_PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME;
>>>    else
>>>    val |= PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME;
>>>
>>> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
>>> index c2853cc005ee6..0de2f7541da6c 100644
>>> --- a/drivers/gpu/drm/i915/i915_reg.h
>>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>>> @@ -8235,6 +8235,7 @@ enum {
>>>    #define  VSC_DATA_SEL_SOFTWARE_CONTROLREG_BIT(25) /* GLK */
>>>    #define  FECSTALL_DIS_DPTSTREAM_DPTTGREG_BIT(23)
>>>    #define  DDI_TRAINING_OVERRIDE_ENABLEREG_BIT(19)
>>> +#define  D13_1_BASED_X_GRANULARITYREG_BIT(18)
>> The meaning of this macro is to set "force enable 1-based X granularity
>> on PSR2 VSC SDP" in Display 13.1 ADL, so the meaning of the macro may be
>> a little ambiguous.
> 
> The name of registers are set to match specification name as close as possible not the use or meaning.
Yes, just looking at the macro, I thought that it could be interpreted 
in two ways: D13 / 1_BASED_X_GRANULARITY or D13_1 / BASED_X_GRANULARITY.
If our macro naming convention is fine in this case, then I don't think 
the code is the problem either.
> 
>>>    #define  DDI_TRAINING_OVERRIDE_VALUEREG_BIT(18)
>>>    #define  DDIE_TRAINING_OVERRIDE_ENABLEREG_BIT(17) /* CHICKEN_TRANS_A only */
>>>    #define  DDIE_TRAINING_OVERRIDE_VALUEREG_BIT(16) /* CHICKEN_TRANS_A only */
>>> @@ -12789,4 +12790,7 @@ enum skl_power_gate {
>>>    #define CLKREQ_POLICY_MMIO(0x101038)
>>>    #define  CLKREQ_POLICY_MEM_UP_OVRDREG_BIT(1)
>>>
>>> +#define CLKGATE_DIS_MISC_MMIO(0x46534)
>>> +#define  CLKGATE_DIS_MISC_DMASC_GATING_DISREG_BIT(21)
>>> +
>>>    #endif /* _I915_REG_H_ */
>>>
> 
