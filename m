Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC8A40ADFD
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Sep 2021 14:39:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D98E4891FB;
	Tue, 14 Sep 2021 12:39:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2332B891FB
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Sep 2021 12:39:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10106"; a="244313988"
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="244313988"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2021 05:39:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="507963673"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga008.fm.intel.com with ESMTP; 14 Sep 2021 05:39:54 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 14 Sep 2021 05:39:54 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 14 Sep 2021 05:39:54 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 14 Sep 2021 05:39:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Osi2WLqO3lQzxcPKGx2GVj3PeYIj1CYoxAdpErYjIMKHhfq7doyalWV9bBMOQLLq9Ilq5QaoL7wxZPKehCqnpnEmiRw7h8Volecpcnf2L17VVsEHp3CSVDvykTb9axj3rxu5ajzoiiC+iUVcqsW/+OfyPGgdjh+HSB0fn+U6IOADoPclbTh4Bd+90DQKrOv4EkT6kUGFiLXfhD6LGTPINfUoeIdSBh+jNFFVE10xylDKtm2UbewJWxSQ//QjbtgNY8yoeGzg5uJptNSqYFZRquihLEJ0PC7MNl+tYmQO545I4ZlmYRahlAAW+D/jIbNv6Rj4BYm1BmR8dRIzVKoa2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=m705XAb242fRRvPQxv3MHy8Oc382Dlj0owAEd+3Hh0E=;
 b=ndpZxJXPzJM0CrViPd6vAXs9MGDtT9G4O/pRDEdWHEwGcJk4KuiciR56GORrrGrcTlGdOoN/oTawkRavoFOABtgMjyGa7YRqtmkJswcwHxl0vx5ynSkJUnzr+vNeRxW5Tq/58uIbQTdJGlkxPgWCAEPHv5SEwyTscyLlHD40hYltXnwLJmjSYZhJxCmx8qtX/8BCwFawCCDEmOv89nJKF7wn7ctZ7B1fb3wvH+2P/i0GsbaIQ6YAjG7diQDHU62EEa+fDs9+nKfz0oAK403sTTK10uVL5PELG0VuwQ4HSOMwUztU5rkVbX1CDrFrj8woPLCjQRFAgz/zdxQs14gt+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m705XAb242fRRvPQxv3MHy8Oc382Dlj0owAEd+3Hh0E=;
 b=iYNOOCxhTT4RhwSK/yQXHNAG/aj1yhW05Jg077lkOiU/Z8KoWauGjIDKB9o71nNbgUJCTQ+sHPnhmRsN+sAq9rBAk4+bzPEFMTdq4F4l4bwP3b7Ouq9vQnsvz6D9pGKU5p4T9Euxv7wyKy5QuGBzsm13vKFZX3uT6tSq/5Hywrw=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5409.namprd11.prod.outlook.com (2603:10b6:610:d0::7)
 by CH0PR11MB5755.namprd11.prod.outlook.com (2603:10b6:610:103::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.14; Tue, 14 Sep
 2021 12:39:44 +0000
Received: from CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::c3e:dff7:364c:ba7]) by CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::c3e:dff7:364c:ba7%2]) with mapi id 15.20.4523.014; Tue, 14 Sep 2021
 12:39:44 +0000
To: "Souza, Jose" <jose.souza@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
References: <20210909230725.33735-1-jose.souza@intel.com>
 <20210909230725.33735-2-jose.souza@intel.com>
 <4efdadcc-c8f5-cfdd-9b79-ce780920fb9b@intel.com>
 <b130c867ca00cfeaedb7b8bcdd80b30d84f74958.camel@intel.com>
 <9d949ff3-9e78-ef10-501b-b68625cc10fa@intel.com>
 <b8fea6042bf07bb1dc9a45482ada74fc9f5d0f95.camel@intel.com>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <823c0648-272c-be59-95ff-6a41cf86cafc@intel.com>
Date: Tue, 14 Sep 2021 15:39:35 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
In-Reply-To: <b8fea6042bf07bb1dc9a45482ada74fc9f5d0f95.camel@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DB6PR0601CA0008.eurprd06.prod.outlook.com
 (2603:10a6:4:7b::18) To CH0PR11MB5409.namprd11.prod.outlook.com
 (2603:10b6:610:d0::7)
MIME-Version: 1.0
Received: from [10.237.72.198] (134.134.137.85) by
 DB6PR0601CA0008.eurprd06.prod.outlook.com (2603:10a6:4:7b::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4500.14 via Frontend Transport; Tue, 14 Sep 2021 12:39:42 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3e8a00b3-29b5-4b2b-cf33-08d9777cba79
X-MS-TrafficTypeDiagnostic: CH0PR11MB5755:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CH0PR11MB5755D3A115B8A98DD111479FB8DA9@CH0PR11MB5755.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0kywIVLlNq/YtHPR1lriYlRwwB7BnV9dGBtI/PkxwAjnuzubyVSW3/voZNcTUefibx+R7X3NYtwFAYk/mgxX7d0p0aydNCko4BtTOyRu5+e4AXFoiMecjKgE9JUkRqG9NbxKiTcnG7Dl/q3/8+mZPdGOzTP4SRrxqXbTIROcs0iNuQPWoj1kP4UEtkdpeDfnzIoss4MY5954Y6KyExVnqm3nxGQ225bFcplRNKj4BzECdBPFd8OwgGPCGlS7nho1H0zbVIy85iatpYnYjT/JsQm1zPmZQPlsBnByD2c+vJwvH9WqYiVYVDo77kfnaTcZXnKlkMxC+C7OglYZ116bccBEKvOrU0v3EbDPP5d422AZ5XY1fAeVFDt97RghJ9EsnGRLBuVe5DztfvEms2hc+yxjm+Pc0uSHI7J6+UlBOoUvpM5wZQtnH1QQG9lQejJkBGNCOBbapN/MszfUqa2WvULP7yBkRqJdkmSebADnA3Whpe8O2x6mv5tLDutushM9FFFzSP+K5fwomufFZHWA7+fwxX61BJTaqcRCpNsbOpT8L0DZBLC6JBB8PAKFM3rRK2Mr7r5rvY+ptP7mCo1DLk0g/58DXQdwwk0IXVNU5jDryQN+miMfwNvUI6kKQ0+1D173PQBZ13XaPZkfu4bt7ZOPzQH/K+V2YvVcosYJdgM97qQZ8ByUacsTJpA3zYjFzLDuruzi2nlwRh8pK+TV7DIGrXfu/AntDw0QZr3MTHQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(376002)(346002)(396003)(366004)(136003)(6666004)(26005)(186003)(38100700002)(53546011)(5660300002)(31686004)(36756003)(31696002)(86362001)(2906002)(2616005)(66556008)(66946007)(956004)(83380400001)(6486002)(478600001)(66476007)(16576012)(316002)(8936002)(110136005)(8676002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MUlNUkd1eW5UUEFPbHcxMHhNNW5RTjZ4Ym9yci9SZXNBVkVRaGFZWEl0TE5S?=
 =?utf-8?B?cHFsbDFSbmVFWTJEMWg4MlRRMDE0ZytnUU1GeWo5Y1hQSkVoUXJKbGdQNU5C?=
 =?utf-8?B?dnJnZVV6YXVtREppdkF6ODdOWXBpNFB4Q1R5cS9rRDhsUHg0cklFdUd2emhm?=
 =?utf-8?B?K3luTDU4ZGJpdXJtN3Q2Ylc0WHQ1YloyUHdUUnJqemszZFYwWkZyaVdVdVJ4?=
 =?utf-8?B?OWNMcitjM09uZEZJYVFHVFlQb1NNSlF6OWtuQ3ErVU1DQkdEWDVHUU5oMllI?=
 =?utf-8?B?M1VYVURSOXpYMWZjdmlRb2tDMVdTSlFVRUJtZWhMWFFFZXEramlTdFFiQmJL?=
 =?utf-8?B?Nm9yOEdNMVgrak9QTEc5MitpcyswWkxkODlUVmh2UUl4azl0ZGlrSjN1Mk1N?=
 =?utf-8?B?WHVIck1hb1RHc3VEckV4ZkUrUVZ6MU9qaWQvQTd3T1V3S3M3dzJkMGd4NmFj?=
 =?utf-8?B?bWxtdUgxYjZLaHlaejlVdlMwRDBKOWhOWDZrY3VhSkpnb2V6MXRteDFWWHBw?=
 =?utf-8?B?VzlZeVY2QUdFZEFsZWxtaXovenQ2M3RPeVdDdktONWgvRXBLTFMybU1EVC9k?=
 =?utf-8?B?YWkyTXJaTEs0dzNpWlRYUFdVOVdIUDc3Q01yL1YvTGcrYlROZkdTcE12S3pN?=
 =?utf-8?B?MCswbzY1Mm1ZMGw2VDhBMTd4VDVmb051YkdZaTZTNkdOVUxtdjI2UEwrb3kw?=
 =?utf-8?B?YmZ2Nnd5RmlKSFZFVlZ3Y1ZoSExzSGFxWXVPYUFBWmpBVVJhMUpxUEVaWlI2?=
 =?utf-8?B?MHlJYTBFZFdJYkZlNnFKa0Y1bU0xMDBkMmptVVVvRnUwbmRvaTUzcml4aDN5?=
 =?utf-8?B?RUlPNTRZcWNDbldSSHl5b3RWTzE1d1p6eTFCU3Mwdyt6WmticDFXQzI2aDBp?=
 =?utf-8?B?YjUycmgwdHJ3U0ZEOUNlOVZBNU9wZ0RyNWlKeHplelNUbU5keENoSm40WEwr?=
 =?utf-8?B?dzRZRUxvSWZTUGY5S1U2OUJybDBWbXlPYzVTRFhTVU5BWGdBK1k4TjZqSEhC?=
 =?utf-8?B?bGtwRkNQT3Uwazl4OUtwQmJaZTk1aStJek9zSVcxREdJV0lkWW53Rk0wU21n?=
 =?utf-8?B?VEYrblBVS2NjcFY1akVoSU8vRXNJZm9ka2tmOEUxRDlNRTZxcjVHM3F5MVpI?=
 =?utf-8?B?b1lZeGpPRms4Ykk2TXk4dTVuNXlnOExuNUZqY1YvSS9xdXJ2UCtSTlhmRHdh?=
 =?utf-8?B?QS9HWVp3ZytZaDBJZi9TZ1VlQ1AxczVJQUQ5VENuaFVVNW9wNUxRayt4WEI4?=
 =?utf-8?B?dmgwVWJCYnVLMnYzd2IySkF1aklTWWNFUHRxVlhzWHczWW9Kck1wb0EzTXRw?=
 =?utf-8?B?QkZQT0lqRUd6ZTd0amRsYUtybzdHcTgveGMrSHlzSXFlUmJEY295YTZNWTNH?=
 =?utf-8?B?NUJPM25GdFBjVXdPQ0Q0Q0sya05QVzlXK3UxMkpmRlljZCtNSVZoZEFMdXN6?=
 =?utf-8?B?THUzTHltLy9OSWUvT2VRMjFFTGpuTUI1dXdKWW8rWUhNOVV1RVd4UlVVRWhp?=
 =?utf-8?B?a2s2NElSS29RMVVGUFpwWDhLa3NDMXRNWXE3ajhBT1UyMWc1RkJNSEtDUHY5?=
 =?utf-8?B?a3E2RmJpZTI5RUNNWHB5S0ZwUHNmWVhsQWFjdTlMNFgzTm8wWWlOYkhrSS9v?=
 =?utf-8?B?UVJlOXhwS0x4ZFNNWktCTzVJb09pbTBGblJoZXB5bzFDMURxTitFT2ZWdTlD?=
 =?utf-8?B?Z2VBdVEwbmF1WWNRWWg0bHhodjFBbzFKTWtoemFyWjQrYVg1MlF2NE4wOE9u?=
 =?utf-8?Q?oIltiZukrwvKNXnP2I5WLFni/DS6e1WyLg83o9a?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e8a00b3-29b5-4b2b-cf33-08d9777cba79
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2021 12:39:43.9145 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: p2tRz1mJwk2JWObIF19klBDFf6ht51S0bRP40TmiEQ0cwagB4eby5MuHw/vribRRIWC7Uu+5iACnB44apjo8EVLFtnF5kx0RSQefyiImWDA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5755
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



On 9/13/21 8:00 PM, Souza, Jose wrote:
> On Mon, 2021-09-13 at 19:09 +0300, Gwan-gyeong Mun wrote:
>>
>> On 9/10/21 7:29 PM, Souza, Jose wrote:
>>> On Fri, 2021-09-10 at 16:38 +0300, Gwan-gyeong Mun wrote:
>>>>
>>>> On 9/10/21 2:07 AM, José Roberto de Souza wrote:
>>>>> Wa_16014451276 fixes the starting coordinate for PSR2 selective
>>>>> updates. CHICKEN_TRANS definition of the workaround bit has a wrong
>>>>> name based on workaround definition and HSD.
>>>>>
>>>>> Wa_14014971508 allows the screen to continue to be updated when
>>>>> coming back from DC5/DC6 and SF_SINGLE_FULL_FRAME bit is not kept
>>>>> set in PSR2_MAN_TRK_CTL.
>>>>>
>>>>> Wa_16012604467 fixes underruns when exiting PSR2 when it is in one
>>>>> of its internal states.
>>>>>
>>>>> Wa_14014971508 is still in pending status in BSpec but by
>>>>> the time this is reviewed and ready to be merged it will be finalized.
>>>>>
>>>>> BSpec: 54369
>>>>> BSpec: 50054
>>>>> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
>>>>> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
>>>>> ---
>>>>>     drivers/gpu/drm/i915/display/intel_psr.c | 23 ++++++++++++++++++++++-
>>>>>     drivers/gpu/drm/i915/i915_reg.h          |  4 ++++
>>>>>     2 files changed, 26 insertions(+), 1 deletion(-)
>>>>>
>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
>>>>> index 36816abb3bcc0..92c0b2159559f 100644
>>>>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>>>>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>>>>> @@ -1086,6 +1086,12 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp)
>>>>>     intel_de_write(dev_priv, reg, chicken);
>>>>>     }
>>>>>
>>>>> +/* Wa_16014451276:adlp */
>>>>> +if (IS_ALDERLAKE_P(dev_priv) &&
>>>>> +    intel_dp->psr.psr2_enabled)
>>>>> +intel_de_rmw(dev_priv, CHICKEN_TRANS(cpu_transcoder), 0,
>>>>> +     D13_1_BASED_X_GRANULARITY);
>>>> Depending on the capability of the PSR panel, the following setting may
>>>> not be necessary, could you add some comments such as "force enable
>>>> 1-based X granularity on PSR2 VSC SDP"?
>>>
>>> It was made sure that all alderlake-P BOM panels will have 1-based X granularity, I can add something like that.
>>>
>>>
>>>>> +
>>>>>     /*
>>>>>      * Per Spec: Avoid continuous PSR exit by masking MEMUP and HPD also
>>>>>      * mask LPSP to avoid dependency on other drivers that might block
>>>>> @@ -1131,6 +1137,11 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp)
>>>>>          TRANS_SET_CONTEXT_LATENCY(intel_dp->psr.transcoder),
>>>>>          TRANS_SET_CONTEXT_LATENCY_MASK,
>>>>>          TRANS_SET_CONTEXT_LATENCY_VALUE(1));
>>>>> +
>>>>> +/* Wa_16012604467:adlp */
>>>>> +if (IS_ALDERLAKE_P(dev_priv) && intel_dp->psr.psr2_enabled)
>>>>> +intel_de_rmw(dev_priv, CLKGATE_DIS_MISC, 0,
>>>>> +     CLKGATE_DIS_MISC_DMASC_GATING_DIS);
>>>>>     }
>>>>>
>>>>>     static bool psr_interrupt_error_check(struct intel_dp *intel_dp)
>>>>> @@ -1320,6 +1331,11 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
>>>>>          TRANS_SET_CONTEXT_LATENCY(intel_dp->psr.transcoder),
>>>>>          TRANS_SET_CONTEXT_LATENCY_MASK, 0);
>>>>>
>>>>> +/* Wa_16012604467:adlp */
>>>>> +if (IS_ALDERLAKE_P(dev_priv) && intel_dp->psr.psr2_enabled)
>>>>> +intel_de_rmw(dev_priv, CLKGATE_DIS_MISC,
>>>>> +     CLKGATE_DIS_MISC_DMASC_GATING_DIS, 0);
>>>>> +
>>>>>     intel_snps_phy_update_psr_power_state(dev_priv, phy, false);
>>>>>
>>>>>     /* Disable PSR on Sink */
>>>>> @@ -1488,8 +1504,13 @@ static void psr2_man_trk_ctl_calc(struct intel_crtc_state *crtc_state,
>>>>>     u32 val = PSR2_MAN_TRK_CTL_ENABLE;
>>>>>
>>>>>     if (full_update) {
>>>>> +/*
>>>>> + * Wa_14014971508:adlp
>>>>> + * SINGLE_FULL_FRAME bit is not hold in register so can not be
>>>>> + * restored by DMC, so using CONTINUOS_FULL_FRAME to mimic that
>>>>> + */
>>>>>     if (IS_ALDERLAKE_P(dev_priv))
>>>>> -val |= ADLP_PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME;
>>>>> +val |= ADLP_PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME;
>>>>>     else
>>>>>     val |= PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME;
>>>>>
>>>>> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
>>>>> index c2853cc005ee6..0de2f7541da6c 100644
>>>>> --- a/drivers/gpu/drm/i915/i915_reg.h
>>>>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>>>>> @@ -8235,6 +8235,7 @@ enum {
>>>>>     #define  VSC_DATA_SEL_SOFTWARE_CONTROLREG_BIT(25) /* GLK */
>>>>>     #define  FECSTALL_DIS_DPTSTREAM_DPTTGREG_BIT(23)
>>>>>     #define  DDI_TRAINING_OVERRIDE_ENABLEREG_BIT(19)
>>>>> +#define  D13_1_BASED_X_GRANULARITYREG_BIT(18)
>>>> The meaning of this macro is to set "force enable 1-based X granularity
>>>> on PSR2 VSC SDP" in Display 13.1 ADL, so the meaning of the macro may be
>>>> a little ambiguous.
>>>
>>> The name of registers are set to match specification name as close as possible not the use or meaning.
>> Yes, just looking at the macro, I thought that it could be interpreted
>> in two ways: D13 / 1_BASED_X_GRANULARITY or D13_1 / BASED_X_GRANULARITY.
>> If our macro naming convention is fine in this case, then I don't think
>> the code is the problem either.
> 
> Okay yes someone could interpret into those 2 ways but checking bspec makes it clears that it is the first one.
> I can rename to ADLP_1_BASED_X_GRANULARITY if you think it would make it better.
> 
the ADLP_1_BASED_X_GRANULARITY you suggested looks better.
>>>
>>>>>     #define  DDI_TRAINING_OVERRIDE_VALUEREG_BIT(18)
>>>>>     #define  DDIE_TRAINING_OVERRIDE_ENABLEREG_BIT(17) /* CHICKEN_TRANS_A only */
>>>>>     #define  DDIE_TRAINING_OVERRIDE_VALUEREG_BIT(16) /* CHICKEN_TRANS_A only */
>>>>> @@ -12789,4 +12790,7 @@ enum skl_power_gate {
>>>>>     #define CLKREQ_POLICY_MMIO(0x101038)
>>>>>     #define  CLKREQ_POLICY_MEM_UP_OVRDREG_BIT(1)
>>>>>
>>>>> +#define CLKGATE_DIS_MISC_MMIO(0x46534)
>>>>> +#define  CLKGATE_DIS_MISC_DMASC_GATING_DISREG_BIT(21)
>>>>> +
>>>>>     #endif /* _I915_REG_H_ */
>>>>>
>>>
> 
