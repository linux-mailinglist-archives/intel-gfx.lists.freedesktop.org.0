Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4EED6EED1A
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Apr 2023 06:54:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96D1910E004;
	Wed, 26 Apr 2023 04:54:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49EE210E004
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Apr 2023 04:54:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682484840; x=1714020840;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Q0k88q947UHAZ1jB8823N+ieLT/SNiJHReTSpn9U4fI=;
 b=Hc5D/kQqA0g0szj3UMaxpwmS0ghdltTF3xpZkWdp39Q2Y51pSJ5lkoPV
 +3AHno9ph+4kOLJc1hAlR9nPytVGulirSBxmehplE62E9ASMGNLUIpXLM
 hOp5sK3DfuPJVwZ6JTwXHTLq2ndFS+4VTFYshoU9T9rOtPijcSTCE5SAo
 wokQ3Qyg/Mibj/Ty9BNfY1YyoDX/kvYlL9g24lv1F7SZklWhbN5Sdcslt
 HeCzJGiK5byGQuofwVYhUAOgoNf6LLOHCwSGnrHldJBSgW60kZqD41aTn
 r1p744akKzo8IAXmGp55gNc9ctZXqLQc/9fIc+IOZgEdweuAUOWvkT6iC Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="327313058"
X-IronPort-AV: E=Sophos;i="5.99,227,1677571200"; d="scan'208";a="327313058"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 21:53:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="724276953"
X-IronPort-AV: E=Sophos;i="5.99,227,1677571200"; d="scan'208";a="724276953"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga008.jf.intel.com with ESMTP; 25 Apr 2023 21:53:59 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 25 Apr 2023 21:53:58 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 25 Apr 2023 21:53:58 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 25 Apr 2023 21:53:58 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.102)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 25 Apr 2023 21:53:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MjdRF7epCcverar1K0M1uacQb6q3g83pEUsZdu5mvzHuABzG4BLwgTV47obVpMnRdfKZJp4BkQwqwJ+qyH/RFSpXPNNq6HJ32iciFe7/62XpMKiw2SdfsSy/Sm0u4pNDvkAINgwUa3RmAFaJOwW7AOsKnrtrUAHjdphGgdyyy6kO+PC/YEwrNazE3roXEZoumzOXHwPSgFaKzSpTbOY6esD4K2MGCXjOJw5YygKtOajMa74qN7TFU3dTy66Y7bHBFgcuFBL88l2kN8L99IjTD/bPGXLjE1tIsgCZXkwnV8Hz0CXuytBO2PCepCAWKtXI8xCeSI0K1E+9RswikfZzsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/Q5ej0ylGVooV4SLmx2AHNyW3QwinMRTNq6OthIXtZM=;
 b=Y3WwbMUO0BfkQc/NYaTytumS8I9EYBsEJmLo6ueHhdpGu1IKVXCqRZDa+bxo9cJvjju2NJhL2AMSYqjTWG1vr1hr02coOgTVi/lxUQ24paE2JcQiXPoXakftgzQE1D328XD3fEwpB8mNJXq6yBSPjhRkzFpgdr0VkUFACcm61SrSYY1ETJLZQOrI3TMFVqUAhJ5tRuKJlIx7MIUMPKS/JdWkW28n/ZC7ejK+1029BS2rMzZ1ugGFdA1KC1ZezIK/HCT5fFJbdCpyZwmL5R88T+QbPglZhULXEygxP/LrmxauzpMJsxT+d+hhVyOYvqzdxx1Z7+w1nMkRHjQonIgf0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY8PR11MB7292.namprd11.prod.outlook.com (2603:10b6:930:9c::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.32; Wed, 26 Apr
 2023 04:53:56 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b%9]) with mapi id 15.20.6340.021; Wed, 26 Apr 2023
 04:53:56 +0000
Message-ID: <d2e02e3b-0413-6523-b1b5-1f9e0c83f171@intel.com>
Date: Wed, 26 Apr 2023 10:23:46 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20230331101613.936776-1-ankit.k.nautiyal@intel.com>
 <20230331101613.936776-3-ankit.k.nautiyal@intel.com>
 <ZEZ6Q6kLhJWByYCO@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ZEZ6Q6kLhJWByYCO@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0225.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:ea::20) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY8PR11MB7292:EE_
X-MS-Office365-Filtering-Correlation-Id: 1e979e8a-32ca-4523-9e4d-08db46123da3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: A48Ehf17pdsP8iPvXVPK0FstevOndMHHXws9IY7TW/mG+GlLv4PIFvbGstsh/ezz2T88Bnt5jse2mAeS2g2/57djUTtARC+d6Jg6m2d5VFoleL4N8y72QQQpg9J392BFPAGYHTUIJSlBGezS7FuTrQkJSjBwAUaZKQJhKdZZUeqNOnSfpZUKVbQUbY3zDnx5WF32AGE4Rwn+tKaw0vcRAaN+XJINz9VePv05UIED4PSzrwu5NkKFp4DXUDWp8gew3H3SDfLRPPFS2WCj/oXm9SaXG/YjW/wEajp7bj3UG6OiJGTD9lmujDblvLf+nY/9ca7gMYsq2QjO7LnwQGsHPq6BI/jawYbpk+3Zs36ISrn36wWxYp5LHHl0mMjDIRQ+JRD4tnWkeSwCIf1jItWqzypH+sWhILKmYmRR5hoPg459kttesRAFiiWBAgeLG0NPhb3rgiFYGwOnobtOJ/2kaMinv6XCAzDxXjfbLA67esrhNyYvp4590X1CmHkbx8ikTS2vCW6GIGFnLlAyo3uKzZesOVQj6Krr3U/ST/CqXw7lYo+a1jhy8ncdwvwzp2HcbEr/EbTOALjUG9cPdzOXKVTP05XDa1wLCwRJXBcVX2QxLIZvuxiKI7mWIrnQmEJb/YDRKVK6A5rkCepE7uA3lw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(346002)(366004)(136003)(376002)(39860400002)(451199021)(2616005)(82960400001)(4744005)(2906002)(5660300002)(31686004)(8676002)(186003)(53546011)(26005)(55236004)(6512007)(8936002)(38100700002)(6506007)(41300700001)(66946007)(36756003)(6486002)(6666004)(478600001)(86362001)(4326008)(6916009)(66476007)(31696002)(66556008)(316002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WWs5L3A5L3NKaUhzcUsyOTJzNmZLWHF3M0J5VjNJN1k1c1poL3FWVGFON2lO?=
 =?utf-8?B?N3ZvbUhmQWIzK1B1WWEzVjMzVWd6Q1JWaS9iM0pPUzBxNTQveDVYaDBINnlW?=
 =?utf-8?B?N1Vjbk1WRDJpRlVHcEVhaERDMm01RUpoUzdBR3pDV1JPdnVHWHZKNWU5azcr?=
 =?utf-8?B?QjR2QlF2cE1pUGlzVmhiRGZSUWs0dzFCajJVc0J1M2drYmVRSWEvQWlpMy9x?=
 =?utf-8?B?QnZwR3ZkRjhWSFBVL3RqRkI2bnY5U2lhMFdvSG5zNW5VRjlpYnQ2N0hhWG90?=
 =?utf-8?B?RklMN3NSUlp5dm5FMC9IUXlPZUdkRjBpMy9DaytVWkcxb3RtRHpJQm90aFBN?=
 =?utf-8?B?S01TblBkZzRqcVo5eGdpM0ZOVGt2TE15SFN0ZnFnbW5VK0YyWkNCeGVLbzFO?=
 =?utf-8?B?SnYyVllxZVVhYWU3WDY3TDVJRnI0Y0RHa3grb1BsYk5zeG1OajN4aENmWU5r?=
 =?utf-8?B?OGp2dGppYS9vTG95THBiNG9yNlNZN2ZkSEJWTlRxM0h5U2YxZmp6Q2FvZVVR?=
 =?utf-8?B?ZlRiTFBFeDlVb0VkTUpzbUVBSTBQb0plM01NbTlkWmdRWTg0K0RLUTRZNWUy?=
 =?utf-8?B?OGFyTmNXaXlVa2hoZi96NTFJa3g0Y3l3SUhlRVVRMzQwYUZiSHNRVGkwVkYr?=
 =?utf-8?B?Q2dkbkxHTE1jLy9HM0s2Wm5KY1RkWU01RzZlanNCdi9pMEJ0dVpLU1gwczRv?=
 =?utf-8?B?ZXdRS0R2SE05dGJ2RXNBaWdzYkxHanVWNmFhUlBSVlE4ckR3TVBuT3NnZmNC?=
 =?utf-8?B?QVFrWU84LzY0WS9hQnJsbFFEeGJ2NkVvcHJpUWxlTzFFeDZCOVBwLytGWG1k?=
 =?utf-8?B?Yi9JTVJNMGRHTVJqZVlhU0pjQ2tFL3VjeVRJNHU3b2lPWWFtUnFkZk1XNURF?=
 =?utf-8?B?c3VDeVpENGQ3OFRGdFpnYTJuV2g2VWZDVE15OUZJTVd3UkJTbkliT3I1MXhY?=
 =?utf-8?B?SjdFTndBVGE5Q3g3dHB1Ly9IZXVGUFVNV0N6V0Z3Ry9FckoyMk5tNWJaeFV3?=
 =?utf-8?B?ZGc4TlBZMnVXOWFIZVV2ZU1xc24waStqUHlhelpRSVdvb0xqZHRiZE5HODc3?=
 =?utf-8?B?em55a1dlNWY1dk1mWkpLVlZUVXdwcEc1NGZlSnIwZVlCc29TS2Qxc1F2anhS?=
 =?utf-8?B?djZGYk00T2dUbC92dkZtYnI4ek52RFU2U2NmZVF4UzNSSUVXdmVUN3ZzZmtO?=
 =?utf-8?B?KzFzUU94VTEzR3pRdGNadW5hWDF4V3ZnaTFiYnJiNWVWaXVEbjYyclhkcHp6?=
 =?utf-8?B?OXdOdkl1dmtZYmdlcHBqN2NGakx3S3g2RVJNdzdIZ3lQMWlHcmUzQVdERWRO?=
 =?utf-8?B?c1ptb2FGVE1tdDdGZ2owZThOYkpzcEx1TytZMWlCUnlhZ0JVbk04N3kvSkQ4?=
 =?utf-8?B?S0M2ZW5XU25PY3FWbGEzZnlZMG42S2dRSjNtVlhzR01reWpndmtOVVU5djdv?=
 =?utf-8?B?OWNpZzRqdXVCZHBCRTZnMWZaSFlBR08wZVZhU2RzZHY1VXlIZ1JjZEx3QVd2?=
 =?utf-8?B?dTI1cnlKZHJ3VVpkaEZRdXpkY0lvVE96cFlieVU0S21tS05mN0NmcmZXb0ww?=
 =?utf-8?B?VDNEUjhFbEs4ZW8wVmlEb0l5OG5BNE5JWEl0SWl4VjlLWXE0L0t3Y2c4YVJo?=
 =?utf-8?B?SGR0d1hiaTNoNjZWVXBHdS9wbnN3L2NkVm5DQU9neFZQVTVBL3pXSy9lV25m?=
 =?utf-8?B?MXduZmFpMitmSGdoZWlib3BHRDJ1ZllyenRXaVJSeG9LTDN6N1RTR05OWUlq?=
 =?utf-8?B?eU9uc2ZVSUhBbTQ4a2t1SkhPVW1YbCt5dC9GeFZrMVBwSExKZm9YZGpWQnZn?=
 =?utf-8?B?aG00NGZGY2tIVWFJeGZKN1YzKzgyeVo1MWVqV2F6WUVOR0d4TjVnZzhTalc1?=
 =?utf-8?B?c0JZUFA0bTQ0UVhlRGxzOGwwT3RUWEVQR20wL2ZKODRIUXVER24rVTV6ak9y?=
 =?utf-8?B?cHM5RU45NFZkNzlXNk1NcXExYlFsdEZqUHUwZFVkdUhuUkNEQzUvaXZFVTM2?=
 =?utf-8?B?WG9raWwxYmlnekNHY29FelhYK0RuQ1FWRmVyWXZGRVVBbWJ0bGVBUFBuTmRY?=
 =?utf-8?B?VHJreVp6NkZQQmVPSnQrSVkrRnpydGNZcVgyVjhXTC9GazR3RWhqdFdjYlVl?=
 =?utf-8?B?N0FXTXZhQUcvTXN4Tm0xUTl3dm5EdWJ2djBmNW1WMWRsLzNkb0o0RFhOVlIw?=
 =?utf-8?B?ZUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e979e8a-32ca-4523-9e4d-08db46123da3
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2023 04:53:56.4618 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5xaKSlSnb2x1UPKw3PNFl4ouIDDbGJMqDEc9y3j9oubuc158Er6diu7ThHzRkzAcmhgIKgtzNP7PzFz5DZdzmK4cVYeCsl+fGkUAfrRPnQo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7292
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 02/13] drm/i915/display: Add new member in
 intel_dp to store ycbcr420 passthrough cap
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


On 4/24/2023 6:16 PM, Ville Syrjälä wrote:
> On Fri, Mar 31, 2023 at 03:46:02PM +0530, Ankit Nautiyal wrote:
>> New member to store the YCBCR20 Pass through capability of the DP sink.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display_types.h | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
>> index b1ade7e40f37..fd1eca5addaa 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -1742,6 +1742,7 @@ struct intel_dp {
>>   		int pcon_max_frl_bw;
>>   		u8 max_bpc;
>>   		bool ycbcr_444_to_420;
>> +		bool ycbcr420_passthrough;
>>   		bool rgb_to_ycbcr;
>>   	} dfp;
> I would just squash this into the next patch where it actually gets
> used.

Agreed. Will squash this into the next patch.


>>   
>> -- 
>> 2.25.1
