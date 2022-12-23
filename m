Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 835E0655135
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Dec 2022 15:13:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E4EF10E656;
	Fri, 23 Dec 2022 14:12:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 734A410E656
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Dec 2022 14:12:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671804764; x=1703340764;
 h=message-id:date:subject:from:to:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=66onjlfRec9822T0P7exYILllZyAjUiIHW9Urf1+sjc=;
 b=FiNsvkWirJgrhJHwrqHv+gfjP34uT4bKnhurVZPLSuppb5YKWIbUm2qV
 3XYZRU+yie0w+B9lVKJlYu18YzekjQ/xOLch1kN8qJkg/sIIuecxtC3tp
 2y8i6wGdPXX/mrUIiDXkoEBEdx0Po9BbOGqd92zVs+wjqJ2GCwjyjOQdm
 Go4m0BbQSRMuDk0kIOOoJtEPCZA+710OUTcJifTvOO/ousbK/0podzFn8
 EKJIYDB583l3o/4S3mNrqmOCxT5IeKlaN034GPOeopYdwHCJ+nDQfZnYd
 TWLf8SHEtGbi1hI+lY+a5b2/Q2YzcpAslGQpAJAI+D0UustYQ8yFJfqDP A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10570"; a="384727519"
X-IronPort-AV: E=Sophos;i="5.96,268,1665471600"; d="scan'208";a="384727519"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2022 06:12:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10570"; a="682734188"
X-IronPort-AV: E=Sophos;i="5.96,268,1665471600"; d="scan'208";a="682734188"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga008.jf.intel.com with ESMTP; 23 Dec 2022 06:12:43 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 23 Dec 2022 06:12:43 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 23 Dec 2022 06:12:42 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 23 Dec 2022 06:12:42 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 23 Dec 2022 06:12:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FI463uB87VJ1ZwjR8n0XhQH2c1xlz+N9+fVhXqabhmRJUaeajbmUzN2DngzkNBUgJQVhyXl3H7kgZRoocvnTZ1TkO8+E3aCq+HAfxuglsCiXx4GFR4eUQy2PzPyqIVC23YJZtq3k3XDNDshK3gT9B6x2/AIgwrmVyDikR+Z7nX/qwqBYPRpf9xZ0+Fw4Ue8E4B0GUw5zPLL7SNFYk4PSgjtcUY7Aoi5hc5HKXQT+g0vI3ev/PinmJo7qtY0irNABK4C9zVlRMHMbps7T1/WeOlNTU3Z3uaH2AfkZC8yGfLPWvF0HwgOCZI5mlyQGLvqvFC85qy8RPO7KLgiQvuWInA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RmQvR/CEgUseGrDy15ti4Eg06KjQ8TDkMtqcezutDGw=;
 b=dPLr8zY+/0ZaSs7U5k2kPk4nGGzH43m1O8omS8b5DsWPhPUOGEIz4oq0dqUtRtDJLnB2TI1huVnW3toipnjIkL/gj3f/oRnTPVSN1UXhcOa3qWCbSZgivh2j0pS3ekAIn/qaCfSnl71wYdYgLMaSNCMQpNBJnfBAh9zeLdtNMWhK12Hmd5nR+/Z2fPSf9K2KculKuu0Kai31uTNetFsvvw5SEwwkD7ieGA6a5fexRlJ6dY6GdlA3UvYr50EsAz9BkDkldLZCptbnDEnvpDxYVWW6Z/L1Sl0p/a4V69cdLeZO3sfoPWK2YroaG+51iycHAwZLKyjBwOVmCuvFQ7bRuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH0PR11MB5110.namprd11.prod.outlook.com (2603:10b6:510:3f::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.13; Fri, 23 Dec
 2022 14:12:41 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::6591:f625:d30c:c35e]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::6591:f625:d30c:c35e%8]) with mapi id 15.20.5944.012; Fri, 23 Dec 2022
 14:12:41 +0000
Message-ID: <d01d9a88-648e-0edd-f867-305bf07337fb@intel.com>
Date: Fri, 23 Dec 2022 19:42:32 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
To: Luca Coelho <luciano.coelho@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20221223130509.43245-1-luciano.coelho@intel.com>
 <20221223130509.43245-3-luciano.coelho@intel.com>
 <7252418d-6631-b609-c67a-5ca65c460acb@intel.com>
In-Reply-To: <7252418d-6631-b609-c67a-5ca65c460acb@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SG2PR02CA0021.apcprd02.prod.outlook.com
 (2603:1096:3:17::33) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH0PR11MB5110:EE_
X-MS-Office365-Filtering-Correlation-Id: f8295660-fa55-450a-7984-08dae4efc0c4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vA29eLYreIjWq58mluk4tElubEE1UxWfpkVdZM2CAeWDU3Qb+s+Glx8u2vS1QWKxlTld0VSfB995FBFclIwqnMxPx4Rpi6+lt1BSpxt2u7dLuxCRSlXfVxq+lq/4JiL05IaRaDK4iK/NwaXC4akyUL8eJXKnL7k9Cj6O8q2jyiokeqUrVqePhLgf6eOCdHLP0hmXQrRE4lfbOY5zYEiOy3bT19ybDLx5lYB7F/8wNKPC5DFjY34W5cYXIsPI0igNfao1NukkqmZP5sBVzA7bUix1+S8TbloVw8jUJOdelLJ1U8iQ1Rrm6ceJmge5I5P0eLpofPLn6QCzQJt/42NRn/GEdefcY7zHJoohk5Z1UVGbDhBY8AjwSI/bLI2yCKPyD/v99x7eu8a5yb8SZPEMTeKANAhu432p9nAOUW3wKaV2VUag7MwWHDaCvKyLUlvkNFhp3pQfypv5gUgU8cEMp9k62zVFSsm5B7W1KvvyE0/yUGIqUK1I950gbcPSQs9mtf8I64mqTrDfNSwxjyTPAhnpikezqwohKdVcGfexSuIimbYfKopdw/HHx+UMve3yRQclQw1D5RkQQQLXHqUIW1X21MF1LOHRzFaxOk85MBk/2e5uyZE1Q63UYqEM2U3LBzb8iG6tzs3FV9PqybyESAVhvywwwSjjIQ5M5Tbp8OwQXTkYuu5T+g6AnT15Q8wftMUWOqy/AkBQtfv93/XBBusN6xrLleirVY2sB79BSUA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(39860400002)(396003)(346002)(376002)(366004)(451199015)(31686004)(82960400001)(38100700002)(8936002)(66946007)(66476007)(66556008)(5660300002)(8676002)(41300700001)(83380400001)(478600001)(53546011)(6486002)(36756003)(316002)(15650500001)(2906002)(55236004)(186003)(26005)(6512007)(31696002)(86362001)(6506007)(2616005)(6666004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ajlEbzkwc0Q0blRucld4SnBFR3NzdVAwVjhkbFBFYXJoVmE5WW5QWTc4Q25w?=
 =?utf-8?B?ajdIVHQrKzZMelNRSjdkRTNRL01aejBPeGh6ZGdmcWEybDY2bHJ4ZGZ5ME9u?=
 =?utf-8?B?d1k4VVAzd1VlbTN4NGhqdDhJNFczbzRSQ3VhQmh1bjhGaGdKTVhWdUl5SEhC?=
 =?utf-8?B?OEdhWDRmVkY0V3prbGxjTlc0SFZXN3RyL3pKcUt5RUV6elJwV1h6TUx5TVc4?=
 =?utf-8?B?M2FPZHhGbElOQlp5bEMrVWlDc0pMRkdsRVVSVHZ1TDdiN3NoQ1J4S0ZwcHZu?=
 =?utf-8?B?QnJXTmpadEhWQjNaYXQrdGQwVGY4dzhTaG4vQ3dYU245WlRXR2tBb1ZmOXh3?=
 =?utf-8?B?VTh4WjhTdE1wZU5OQVpnL2hoOXprTUt3NmduMGxzNjE2N29Bck5SM3VKWkNk?=
 =?utf-8?B?N1FTbHFxbFJhWVQrRW4zNTJqWmh1eVdRMTQrQkdDREp1eWRmcjBzZ0tvV1Vj?=
 =?utf-8?B?NmFkancwOXp4bTF0ZVNyYWdRRkh3RjZLblV6bzhaVnBoL29iWTc5WHJ5UE56?=
 =?utf-8?B?L0YyM3JFTGlYeGlHWXh2ZmFSbGdVcFpEMHJGaEt1Mk0yQTZIUGhqS2FxYXdG?=
 =?utf-8?B?QWxad0dweHRqd1VJYWtBUGJtOCs3NmlPZzN6YWN3SjBVaG5VQmxEaENUalBB?=
 =?utf-8?B?d05reW9MS2ZKQWtyeWlQMFJPOVhFSENkUVpRa1o3SDdUWC8yL2ptZTJvTjYy?=
 =?utf-8?B?bEtKdmtBOFBrRVgxQ3hnRGxDcXNJMXhsUWROK1hLNTF2VlJNVUp2L2NNdDRH?=
 =?utf-8?B?cXl0TmRmNVE5aUFMeFRGSGI4VEFsY29MalloR0ZFdmkvdnovcmYrVjdWRmZN?=
 =?utf-8?B?cGdKdzdkYWFFZHAvREl0QmdyLzlXYXBiTWp6clZFMWtJQWpOVWc3dHZOaFV2?=
 =?utf-8?B?VkVpazdzRXFzcWE4Z2VDRzRaQURwekFRNSs4N29FakVPbVZVTHkxVnQ3TGIw?=
 =?utf-8?B?TUFFTkpvbTdTcnp3eVBXQWsyek9ldWpDR1JhUTBrNE50NVd3MlRsVktmQmM0?=
 =?utf-8?B?Z2NCUUQ3WERqZXFTNEQzVGJhU0cxNTdEdDdwRkxvYkFYTnZSYi96ZWpROXFU?=
 =?utf-8?B?NzJGTEtGcU4yUEZRSUplWkVxTDlrd3FaOXBRUUtlL0Q4UmlQc3Z2ZUZpUUgv?=
 =?utf-8?B?aDZQTFk2WnNPeHRJOXZUclUxbFkycWt5S0VIZ2Mzak5ueUkvYS9mUFk0RkJR?=
 =?utf-8?B?NytreU5kanFSZmxITURCV21KcmJZUjh6SFlvc2FnUlh3bGppZ2pGbWI0cXJo?=
 =?utf-8?B?Q1FmanVyUDBtUWQzaThPeTNGZVNidDZPT29CNkQ0VlBFS25CN2RjVXZRSVRj?=
 =?utf-8?B?QUx3Nkh4bEZ1aGJJZTNsT2YweThyRldncVJmTHk5c3lqS1BoelUwTkZURzgr?=
 =?utf-8?B?VVpuWC9LTjBNekhiS3pzV1hWTnZmd25hcldXR2RTOUtlVTAvUVRKb0N1WkFz?=
 =?utf-8?B?dXNITzVGcCtaazdPVTFPL0JORzRLY0Ntc3FoMGdsU0JEZVhIWGRZelg5MmdN?=
 =?utf-8?B?NUVCaXBZMHNBaGYrakh5ajB5Sm4rYzVFaVV0K2VoWXVMSXp5NHVLd0w2MjlD?=
 =?utf-8?B?aERFVFZXcHc3eUpNTlJ5RGJ6N0pIUlpSNVZJYmh5OHpabFV3cEprYmtzTWFm?=
 =?utf-8?B?MDVQbE5EWVpzMm8rU1VEVGZwOXhLWlAzb2FGVWNtME9QK0t3VDhJUHRMSzZL?=
 =?utf-8?B?K3lkWFBKQVpPRDUvQko0ZERSbEVuc3RudjFXY3lyY3BOSHJ1YjB4WFA1RVB5?=
 =?utf-8?B?THZ5eWo4YkV0KzdEK3dNNmlKc2JTbnNzMlNvd2ZDZlNaUlpvcjdaRStpRlRz?=
 =?utf-8?B?WDA4aDIxMWdyN2JiaGdkSGk0SkIrci93QVB3M2JDSzVhV1hwdGJXZXgxd3NK?=
 =?utf-8?B?aDI0L2svSFhrbDZoR24zUDRWaU5tYVdWWmhFbFU3aUNKVXowazF2VU1Lc0lG?=
 =?utf-8?B?eW56TkUzVTZtU1N2SWhzQnhIaDdMVTJkeWNYOEo0QnhhZG9WRVliUmJrMFFa?=
 =?utf-8?B?dmlkTG9xZm9jczN0M0xMeEk4aE5YWEFrTlY5NVd6VklqZHg1YjlKOVZRVFY3?=
 =?utf-8?B?RDJodWJUbkpBMkpvRjAwWWN1WW1RSENjbmNnM0VZaFZTSmduRU1MOEtBUUFV?=
 =?utf-8?B?WjFaM2FFc3cyd2JndnA1aGk0bG1relBLS05QSWNsVWlvOVpOM01vY0p2MHVv?=
 =?utf-8?B?dVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f8295660-fa55-450a-7984-08dae4efc0c4
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Dec 2022 14:12:40.9702 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rnfPmGLCG83fh9JWcI8pecznvPduBvnCMNKdERMJQFdFtM3hk9jEj8aCubeJjAJx1UeAD+sZdYaAHR64pqjvfp6jVSqCaM49+gGAQ8DLiKI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5110
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v7 2/2] drm/i915/mtl: update scaler source
 and destination limits for MTL
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


On 12/23/2022 7:37 PM, Nautiyal, Ankit K wrote:
>
> On 12/23/2022 6:35 PM, Luca Coelho wrote:
>> From: Animesh Manna <animesh.manna@intel.com>
>>
>> The max source and destination limits for scalers in MTL have changed.
>> Use the new values accordingly.
>>
>> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
>> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
>> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
>> ---
>>
>> In v2:
>>     * No changes;
>>
>> In v3:
>>     * Removed stray reviewed-by tag;
>>     * Added my s-o-b.
>>
>> In v4:
>>     * No changes.
>>
>> In v5:
>>     * Just resent with a cover letter.
>>
>> In v6:
>>     * Now the correct version again (same as v4).
>>
>> In v7:
>>     * Update to new MTL limits according to the bspec.
>>
>>
>>   drivers/gpu/drm/i915/display/skl_scaler.c | 40 ++++++++++++++++++-----
>>   1 file changed, 32 insertions(+), 8 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c 
>> b/drivers/gpu/drm/i915/display/skl_scaler.c
>> index d7390067b7d4..01e881293612 100644
>> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
>> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
>> @@ -87,6 +87,10 @@ static u16 skl_scaler_calc_phase(int sub, int 
>> scale, bool chroma_cosited)
>>   #define ICL_MAX_SRC_H 4096
>>   #define ICL_MAX_DST_W 5120
>>   #define ICL_MAX_DST_H 4096
>> +#define MTL_MAX_SRC_W 4096
>> +#define MTL_MAX_SRC_H 8192
>> +#define MTL_MAX_DST_W 8192
>> +#define MTL_MAX_DST_H 8192
>>   #define SKL_MIN_YUV_420_SRC_W 16
>>   #define SKL_MIN_YUV_420_SRC_H 16
>>   @@ -103,6 +107,8 @@ skl_update_scaler(struct intel_crtc_state 
>> *crtc_state, bool force_detach,
>>       struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>>       const struct drm_display_mode *adjusted_mode =
>>           &crtc_state->hw.adjusted_mode;
>> +    int min_src_w, min_src_h, min_dst_w, min_dst_h;
>> +    int max_src_w, max_src_h, max_dst_w, max_dst_h;
>>         /*
>>        * Src coordinates are already rotated by 270 degrees for
>> @@ -157,15 +163,33 @@ skl_update_scaler(struct intel_crtc_state 
>> *crtc_state, bool force_detach,
>>           return -EINVAL;
>>       }
>>   +    min_src_w = SKL_MIN_SRC_W;
>> +    min_src_h = SKL_MIN_SRC_H;
>> +    min_dst_w = SKL_MIN_DST_W;
>> +    min_dst_h = SKL_MIN_DST_H;
>> +
>> +    if (DISPLAY_VER(dev_priv) < 11) {
>> +        max_src_w = SKL_MAX_SRC_W;
>> +        max_src_h = SKL_MAX_SRC_H;
>> +        max_dst_w = SKL_MAX_DST_W;
>> +        max_dst_h = SKL_MAX_DST_H;
>> +    } else if (DISPLAY_VER(dev_priv) < 14) {
>> +        max_src_w = ICL_MAX_SRC_W;
>> +        max_src_h = ICL_MAX_SRC_H;
>> +        max_dst_w = ICL_MAX_DST_W;
>> +        max_dst_h = ICL_MAX_DST_H;
>
> Hi Luca,
>
> Recently there is a change in Bspec:50441 and now for Gen 12 scalers, 
> the MAX_SRC_W is 5120 pixels and MAX_SRC_H is 8192.


Slight correction : this is for both Gen12,and 13.

Regards,

Ankit


>
> MAX_DST_W, and MAX_DST_H are 8192.
>
> As we are refactoring this part, can we include a separate patch for 
> Gen 12 in this series?
>
> Thanks & Regards,
>
> Ankit
>
>
>> +    } else {
>> +        max_src_w = MTL_MAX_SRC_W;
>> +        max_src_h = MTL_MAX_SRC_H;
>> +        max_dst_w = MTL_MAX_DST_W;
>> +        max_dst_h = MTL_MAX_DST_H;
>> +    }
>> +
>>       /* range checks */
>> -    if (src_w < SKL_MIN_SRC_W || src_h < SKL_MIN_SRC_H ||
>> -        dst_w < SKL_MIN_DST_W || dst_h < SKL_MIN_DST_H ||
>> -        (DISPLAY_VER(dev_priv) >= 11 &&
>> -         (src_w > ICL_MAX_SRC_W || src_h > ICL_MAX_SRC_H ||
>> -          dst_w > ICL_MAX_DST_W || dst_h > ICL_MAX_DST_H)) ||
>> -        (DISPLAY_VER(dev_priv) < 11 &&
>> -         (src_w > SKL_MAX_SRC_W || src_h > SKL_MAX_SRC_H ||
>> -          dst_w > SKL_MAX_DST_W || dst_h > SKL_MAX_DST_H)))    {
>> +    if (src_w < min_src_w || src_h < min_src_h ||
>> +        dst_w < min_dst_w || dst_h < min_dst_h ||
>> +        src_w > max_src_w || src_h > max_src_h ||
>> +        dst_w > max_dst_w || dst_h > max_dst_h) {
>>           drm_dbg_kms(&dev_priv->drm,
>>                   "scaler_user index %u.%u: src %ux%u dst %ux%u "
>>                   "size is out of scaler range\n",
