Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11BD03EB1BC
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Aug 2021 09:41:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 491EC6E54C;
	Fri, 13 Aug 2021 07:41:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3F0F6E54C
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Aug 2021 07:41:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10074"; a="195106737"
X-IronPort-AV: E=Sophos;i="5.84,318,1620716400"; d="scan'208";a="195106737"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2021 00:41:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,318,1620716400"; d="scan'208";a="485849829"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga008.fm.intel.com with ESMTP; 13 Aug 2021 00:41:38 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 13 Aug 2021 00:41:37 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Fri, 13 Aug 2021 00:41:37 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.104)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Fri, 13 Aug 2021 00:41:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ma6pfXrHgfNE/n7GM1oE8tBubuStiMwRCs5QDWZb1PDaCy42+D5xvZ+mtm/lwX8m+X5g7lPS4dySs0FdjFJeMpdWjECZRHzh6sGT9BDebr8/uCU5TpSOEtxPX05ZDbZlXAkc4KYaya2RLu2x7Acv/HzODr0LsTrcK+X483gth7gqMJP4nEGgsAwHl+51t94gKB9FOPLUvf21ZlUkkI4HKXv8vgW35xkvVpAT3Wk1WrKEm8t7C9+kmYd4XInawp+ot+xR/QljrotSOb9lBLmilnmjxkvpBc8zBPyfdhgoWKEU7wiaozgLZ30VtaC3cVOSyh32kLe2cru7EdBHhRV+lA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8yI3+Ezi5ufjXeRt4pgdI4dmsXHkAz4J1QGcYcx748E=;
 b=oMWYyiiDY4uoJNIgMBOt9yUnY4TmKE39fMAw8h65+j3ADODLxjDMITZWv8osdIyDpTHk2WWnBWOVHi71kJ7S8jKug87xSf/tEDAuovtCBOTwY/Xih/BJ6dKTZJ/hXvqUb6Hpd7sGaY9tHRuOBZ6qR7pIfVYi8hvW6G2gTC4oIuxwF8oH09FexVZ8f+KMsm00g6N0mThoHJgTo/vqUaGXkLp3/jIedu9YmUvDoQMljz4+nj/7lbn+UiSrGVH6kChQde71wdQO0ig/gJUWYacbRTsSp5DcXthh8r+b6ntNPcyU03PeBSZ0aSnl3LURXDr1gP1k9VSAQNbOlQLoEdiQQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8yI3+Ezi5ufjXeRt4pgdI4dmsXHkAz4J1QGcYcx748E=;
 b=sMdd5V3vnrla2rvnMbPP4RhMbO1iA3Hr0NLwT5RpCDGZoWDDcGR1ZsBumqHCqfaAffRbTUL9Iku1vEw99G/oaxrzX7Ri84Dd5bP8tTp4KPgorxtlJQtG86w2wI0X9yd9mygrFjw+h87+R0MlY+r19AeJnSgi8rm4G6MsjDxyylo=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5409.namprd11.prod.outlook.com (2603:10b6:610:d0::7)
 by CH2PR11MB4232.namprd11.prod.outlook.com (2603:10b6:610:39::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.19; Fri, 13 Aug
 2021 07:41:35 +0000
Received: from CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::93a:f79b:bd76:277a]) by CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::93a:f79b:bd76:277a%6]) with mapi id 15.20.4415.019; Fri, 13 Aug 2021
 07:41:35 +0000
To: "Souza, Jose" <jose.souza@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
References: <20210731001019.150373-1-jose.souza@intel.com>
 <20210731001019.150373-3-jose.souza@intel.com>
 <29fc7f2e-93e9-229b-0fd6-75e4b988edef@intel.com>
 <42fd8ffa5aab181c4e82e30b8c9d67e61c03ee66.camel@intel.com>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <9c93b754-c518-d8db-4889-d69eedde6e76@intel.com>
Date: Fri, 13 Aug 2021 10:41:24 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
In-Reply-To: <42fd8ffa5aab181c4e82e30b8c9d67e61c03ee66.camel@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DB3PR06CA0035.eurprd06.prod.outlook.com (2603:10a6:8:1::48)
 To CH0PR11MB5409.namprd11.prod.outlook.com
 (2603:10b6:610:d0::7)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [10.249.39.26] (134.134.137.88) by
 DB3PR06CA0035.eurprd06.prod.outlook.com (2603:10a6:8:1::48) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4415.15 via Frontend Transport; Fri, 13 Aug 2021 07:41:32 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ea955cc0-5726-4831-b87d-08d95e2dc67a
X-MS-TrafficTypeDiagnostic: CH2PR11MB4232:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CH2PR11MB42325966BED2ECFAEB0ACDEAB8FA9@CH2PR11MB4232.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3173;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GNoPkSXenTyG5tmvz1h9Uhm8j7i3JA8ALN4EbViFUKJe/Y4t8jP34VV+UBiLWr3e5jmr2SQm1hd9PBy9OoycJHKjkCO9GWlm+OIyxVDxvQiox49rJ+WOX1BRGMICRqwztWYrqkTtWPUj2HuaK6uO1k5eOxdDJmYkPr/77RlEE3ZftVO6dsyo1iv0ttr0PxINBi4YVzPh2FNX2mpcfOVmO2y79TPQVkd6sWhMcrsFsEDf5DG5/vpPYHnt3L/KgzoGdxX463FPJ7SBVhScvV1EWTSjFvBxJBXhUu30r+Fc771YcKZk+ctGa6GvhYv7rybLgSJoEf5qvGduw9YN02TAHPVS6wmIxA2D9G6gK3scNVssGTff6BEkdPi5D9UBqU/xmECn7uqCr0zDTrxdVTCHzh0ihi6f7tvRkDl052eTB/4/Gp+bDJRybmQna5Ol67XEfiZMzNJePhUmuBRDsnAFDkn7wIiRmDVJkfzZKGmuz8zcfD6FtvU0IxQxhSd/bUdiY6BJ7otSOEB7MeE7U2I49Gthds9AID0FodS3ZWISWhP0QnaZUc/GuF6KOjN9m/NE0dVB63iGLUhImnrIEaHIQuciqXVmC9Db5I/pN41OsZvW20PZz+4t7ikw0Pc6nus1rikKdZCfDUkbYa3epvuLBIw04Cjqu+K2nxUgwSoJ/M4uOesx/N0PSxFnkQH3mLDqiqnOKztg6VYcfK5G9AF2n8hq461Df0V8bHFgovBlmKg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(8676002)(86362001)(26005)(186003)(8936002)(36756003)(956004)(31686004)(38100700002)(2616005)(2906002)(5660300002)(110136005)(16576012)(508600001)(83380400001)(53546011)(31696002)(66556008)(66946007)(66476007)(316002)(6486002)(6666004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SHlmWXVHQ3JzR2FCZE5nZGkvWFhZTWU4dUdqRUdDcGNGYUhNK2RoNGJnVEFm?=
 =?utf-8?B?UVlTVVB3dlFqSHNSL2tOVmVPZlQ1R29ienFVdVQ0SmV0ekxZQXFnZEJyYitO?=
 =?utf-8?B?NGRvT25CSkNubVgrR200Z3dQZ3hsSWdtR3lqaDdYZjQvTlFqdGNURVZrYU1E?=
 =?utf-8?B?NVh5Wm84YmlXbHBEbGZScXVoL3Jmamo4RGhScjFkY1BCZFZlU2EwZUlJcnIv?=
 =?utf-8?B?ZWNuTVVyZGhJV0dDQVROaUF3czhPRE9tNDdSbVF6VjVkZXZPeC9nQkFjY1hR?=
 =?utf-8?B?V0NLRSszMzc4MDdZNzV1NE9LN2Q0N1IwZ2JyYlJCZTlmbU9hTXp2Qy84dE5X?=
 =?utf-8?B?Rjk0aHJWc3B6ZTlOVWlZajFnLzRxQmpVSTNRUTN3aFM2TEZkNnhnVlRvdCtE?=
 =?utf-8?B?RHBrbzc1cmdsYmQ4TmRpUVhRZ2ovTHhDL3JTVU1jaVkwZWtqMitDejVtdnNZ?=
 =?utf-8?B?cE5QV0RQejhkQnRVQlpxSkQ3TmJvNEt6clhjUGk1ZVpwQWN0R1pyT1NseHFG?=
 =?utf-8?B?ZWd1akE4SWlHVmxSUWhscTMyaGRVMWVHb2lFOGVtdjd0VXR0Mm9ldkJiNnBj?=
 =?utf-8?B?aDBOalc4eGY0VVJZa3lBeUhtbis3c3hrVWRCNWRqaTYvaTh3d0gvSGV6MnNW?=
 =?utf-8?B?czVSL3dsWXBjWDZTL0VORUdTOVJvTzZ4c0pFUDJJZmhlNmVOM29qdnNJeDNj?=
 =?utf-8?B?NFhXY2JBWitqT2JPUkhjSU1tcXRPM2MvWTVaMSsxbzh6cWQvcjlQcDNWQmR4?=
 =?utf-8?B?d0QrVUM2bkovY3hQTExhL3JKSGNnZzhqOXNabjBCTmtaOTBpVURjdC9HR1B4?=
 =?utf-8?B?NnhLbmlKU0gyV0VmYUFoN1N1NDN5R2tJSkhrdGdUd3NWWHpOczJ2azFIOWZZ?=
 =?utf-8?B?N1JLc3lMaitjNWFLdlB3YUF2Um92WmJtNEZ6WmdRelFNclRFL01IcmJOOTBB?=
 =?utf-8?B?TjFiRWFFSTV4TXYwYkxpUUtHZkdQVjFNMENxZjUrRjRjOTJSRXZueHhmcXht?=
 =?utf-8?B?UkdYUXdUYkJxV2xQV1Q4QW5XRGhPQ1RpajlZQXJpNEMrMU1KWVBIeTNXem1D?=
 =?utf-8?B?SVU2N0lDKyt6NG5pSnQvN3lUdzRYMTh0MTRBTmh1NnV5RXIyVTd5K0VlNnJO?=
 =?utf-8?B?M3orTWhwODhwL2N2M1cvM1dhTDFSNWpEcXgwY2NSeEFrUWwxR3pkL3hZYzdp?=
 =?utf-8?B?ZGhaNnFSWHhRbDZJUExLaEE2MFc4bG5sUDQvRmcwU3ZpUVU1N2xBOW5DNGUv?=
 =?utf-8?B?RGtzYWtJWGtBZU5EcTBQbXNEb01Fei9EamdINXBiamtpMWh0K0pmZUJmRTNK?=
 =?utf-8?B?b1oyYTZ2STVOM0VrMUV2YVJ0SDRBM295Z3E5V1FRQkIzcmZUTCtDNnVCMnFz?=
 =?utf-8?B?U1dhMDFUSG9KVkZUNlNjOTVQQUhTZWxyMkxoekkveXRkdUEzaGhtY1plMURR?=
 =?utf-8?B?NHB4QzdFbm40WnczNis4K0tyZUVGYUlEWG9VOThMNGU1aUM1S09JWGJXNWVk?=
 =?utf-8?B?QVQ3dnRnRTFhai9ReHZSZXFpdlQ1NDY3b3E4UVp5eDRLVy92c1BndHRTY1RZ?=
 =?utf-8?B?L2tFWkJZdnphbGpmL3lEMnVFQTc2cVRRR0Jpd0E4Zm9PQmpqTm1lVThvSW9r?=
 =?utf-8?B?clA1UW51WUpta1F0V3VUejJjYkc5aWhseW9kaTEzV2cyMDg5WlFka3BmTTlI?=
 =?utf-8?B?QTRXYmVIMXVjRFQyNDBFekZtcG5Pb0NwNXJ6R1dGZVVDSWtFZUF1QWIyeWsr?=
 =?utf-8?Q?HBSlf4EvevmQqqFHe//iKypLFYTIA0fj2ICeRAV?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ea955cc0-5726-4831-b87d-08d95e2dc67a
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Aug 2021 07:41:35.6515 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HgDtZ9+oL+1Fc7Mo5zX4bvLjnOsAu3I8YOmxBRTleH7xjxL/+QoerJhOLIPsmmX+eVyZ0sBUWd5QlxgZD5f5ldhgtPVJxnPKaar+pXk8RV8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB4232
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: Nuke ORIGIN_GTT
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

Reviewed-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>

On 8/3/21 8:19 PM, Souza, Jose wrote:
> On Tue, 2021-08-03 at 14:20 +0300, Gwan-gyeong Mun wrote:
>>
>> On 7/31/21 3:10 AM, José Roberto de Souza wrote:
>>> There is no users of it, so no need to keep handling for it.
>>>
>>> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
>>> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/display/intel_fbc.c         | 10 +---------
>>>    drivers/gpu/drm/i915/display/intel_frontbuffer.h |  3 +--
>>>    2 files changed, 2 insertions(+), 11 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
>>> index ddfc17e21668a..e4d412d395c34 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
>>> @@ -1129,7 +1129,7 @@ void intel_fbc_invalidate(struct drm_i915_private *dev_priv,
>>>    if (!HAS_FBC(dev_priv))
>>>    return;
>>>
>>> -if (origin == ORIGIN_GTT || origin == ORIGIN_FLIP)
>>> +if (origin == ORIGIN_FLIP)
>>>    return;
>>>
>>>    mutex_lock(&fbc->lock);
>>> @@ -1150,14 +1150,6 @@ void intel_fbc_flush(struct drm_i915_private *dev_priv,
>>>    if (!HAS_FBC(dev_priv))
>>>    return;
>>>
>>> -/*
>>> - * GTT tracking does not nuke the entire cfb
>>> - * so don't clear busy_bits set for some other
>>> - * reason.
>>> - */
>>> -if (origin == ORIGIN_GTT)
>>> -return;
>>> -
>>>    mutex_lock(&fbc->lock);
>>>
>>>    fbc->busy_bits &= ~frontbuffer_bits;
>>> diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.h b/drivers/gpu/drm/i915/display/intel_frontbuffer.h
>>> index 6d41f53944250..4b977c1e4d52b 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_frontbuffer.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.h
>>> @@ -33,8 +33,7 @@
>>>    struct drm_i915_private;
>>>
>>>    enum fb_op_origin {
>>> -ORIGIN_GTT,
>>> -ORIGIN_CPU,
>>> +ORIGIN_CPU = 0,
>>>    ORIGIN_CS,
>>>    ORIGIN_FLIP,
>>>    ORIGIN_DIRTYFB,
>>>
>> Is this patch absolutely necessary for this series?
> 
> Nope, just notice this unused ORIGIN_GTT while debugging.
> 
