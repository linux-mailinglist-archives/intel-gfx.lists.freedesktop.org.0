Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D96876CBE3
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Aug 2023 13:39:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E868D10E06D;
	Wed,  2 Aug 2023 11:39:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BDA110E06D
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Aug 2023 11:39:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690976340; x=1722512340;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WyuonlBEb6LbDHD8qHcUH3vIc6jlWJU9W1T4cRUt0Dk=;
 b=FLlGEjuSD0qJUR1v+9NXLd2wIFYjAosgJmOzaBLAl1jasbOvRnbey+iX
 E3UO+/FypKqlnTwUletwp+uowkl+l4gg6d3dFqHf8qy0SkuZgZJTqyd1f
 bo4cSFnHuthLTYksjGj0+aHI1zjeZ2G2Tq373sKyBEX1HMcx6idp87ncK
 yRDrnCj64AUYQVqbTv7mrJZNanQ1zZCGigQsxJWU8PB0VB5qUcQLpEZdu
 Co7vxwBOkT3JAZzc3jCww+3d00CBO05MQvFL9AK+TqIZj5N1YIC87a6oL
 V+vgya4RGuTVQ+oX3QGfIWgQczeiYzPE3bw61jiFrflothuJwOvicIrOJ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="373200462"
X-IronPort-AV: E=Sophos;i="6.01,249,1684825200"; d="scan'208";a="373200462"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2023 04:38:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="902942977"
X-IronPort-AV: E=Sophos;i="6.01,249,1684825200"; d="scan'208";a="902942977"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 02 Aug 2023 04:38:59 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 2 Aug 2023 04:38:59 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 2 Aug 2023 04:38:58 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 2 Aug 2023 04:38:58 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 2 Aug 2023 04:38:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B08T2OUl0T0GeETwo4wNjxPylcS89W3oAR5Y4dC7FDr0rYL1Dvi/Nnymx1vmxKnQ1b5+4uZKBMNfud8GMNIQ7CxsRRvB5SeoTzYaE+7GX7gFEltpLraH5/jWJw/H7PxtULCXNtOQhiTeuqJFUo5G8ElufM1qeHl/YvwbvTR82BUqIZ8b3j35QQUo+NLNgWUXw9LSqTPaV/GLjGVDYg7WPRj6czUjod9uurpopOGCXcsv+4ZIuvt3WDQk7Ro6zoZfy9dEZLtvp7/AEpRK3Onc4ROBNWjQSLRxr6uwmbzogRdG6j2M9cWc2ZFzjS98ad924h92twUFqdV8+T9qozRC9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PRCyYfKzklmgIuYsJpMrv3qigm4Dv8onUUveRKFRqpY=;
 b=DrnqYPp/fHpVWYlDQw/DH0rcldqzb1EP3zkege9g/yjTD4PAMcXu4jNXOZ/14j2hAT5WsqCkmjm2H62wsZL1HPmHVAKnFd7X8AJZY4LDclNvGmF9jslN3AKiRtuU3rTxYACZYXir0fkRY17BfljvaQZfE93G3S+3UugFvu8RwsNldbU1cfU3cdYurRH1XEMixzhC/p3DtrZIFHdtldVF7SVA7auxaaYMp8u893ZAx0+VnsVmtILm1tB1kUF2MXfiezD5GAB8WOXhzmjiUT6yJH/WD4ekDL2nnWrZnNdaTkE7JgN1CmfALWX7zbvSez4h9zbenoKBv7ryEC1Z5989QA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CH0PR11MB8087.namprd11.prod.outlook.com (2603:10b6:610:187::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.45; Wed, 2 Aug
 2023 11:38:56 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::1e8d:5942:e23b:c08d]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::1e8d:5942:e23b:c08d%6]) with mapi id 15.20.6631.045; Wed, 2 Aug 2023
 11:38:56 +0000
Message-ID: <b376d7be-b1b6-e23a-aca9-22ea33f39e15@intel.com>
Date: Wed, 2 Aug 2023 17:08:46 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>, "Tseng, William"
 <william.tseng@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
References: <20230802101541.10045-1-william.tseng@intel.com>
 <SN7PR11MB6750B10DB5BDBE772C71ADE8E30BA@SN7PR11MB6750.namprd11.prod.outlook.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <SN7PR11MB6750B10DB5BDBE772C71ADE8E30BA@SN7PR11MB6750.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0110.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:11d::7) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CH0PR11MB8087:EE_
X-MS-Office365-Filtering-Correlation-Id: bab6a107-6cf7-434b-80a4-08db934d0e46
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8B8neG3XIZX6ioSJSTm9SVY/XmfRod0QNh72nU2TznFvNslGA97CDZ66/oVyRDZ2vnYp0SQzsZ5AF1Ww4E+hPOM220o95OotxiBjCh5L8uI/6w7MOAL2hB7gR7KWdqRzxn5CjRcdNahgytA6ws7kJk4CkhBBs9gem4SOjw33OM4qXmED+w54OZb6oyOad7rb87ysxeeHwV2kjwPsIezpn2qOX10w4N2CzhmD0fPaDHLiur4YsGMEc4JzP56aakAKd8LYUJYH1P4HSR1ZfkbXdT9AVnYoWYk36r++EB5t+YmLI8FCcGjKtmo7MmBMphPPf/3OARXcnuey52gweLzeRK5JB43cQ6yULFIivNT7G2mnYeMZWHoAlANe0tJnyONHRw6lGrpSflnVvw6aVIlvl7ilKBaJyrpdk5oTiwFoZ4Gc2C7umPpF6JV0shxhz5W6z6PZMfwQX2PkmW1GQaFpGwC+8Q9N2dH7mGNjrQAtWP8xqik5Zg1nHt0rlYetJhyFxcNVnouNUzGIk4/DCbA98pOKlLPeVF1MPstPE0GQvdMzphU4ITJDv7QgOBs7Hp5JtZzDkwmxRlsuvvZj3slKpttPPBk8JJT7Kn/5Cg5vzoYVeOHJYkDEJbq1UTxknSsO2WyGpzQAOCxx1ciug9761w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(346002)(376002)(39860400002)(136003)(366004)(451199021)(36756003)(31696002)(86362001)(38100700002)(82960400001)(4326008)(316002)(66946007)(66556008)(66476007)(8936002)(8676002)(41300700001)(5660300002)(478600001)(110136005)(2906002)(2616005)(53546011)(55236004)(6506007)(107886003)(83380400001)(6666004)(6512007)(6486002)(186003)(26005)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NmtoS2phbkp3WUhxWjRwQTZmT2cvL20yQnE2K3NtV2pDWEJmV3l1TGl0aFU4?=
 =?utf-8?B?bFlINTd5LytveXlwaDJiNEM5WHIxRVMxNFUrenhDL2xyZldQUmFxVjlwSnJW?=
 =?utf-8?B?bUV3WGg4TjdDQjhWUVo2STdXejdEVWdGMnNkZnhkbjl3SnBCOCtiVDd1Z1ds?=
 =?utf-8?B?aTA2U09Yak5PVmpuY0hqZzl2QnlYOFc0RGUxQmhzWnBHS0dudUluODZLQ0Fk?=
 =?utf-8?B?MDl6Y0tlOCtaMEphanNyL0RueTNISHVuYjBQemlaNTViQzlxZEdndzVrWmpm?=
 =?utf-8?B?SkR3M3VtU29Zd05yUTdNend4U2ZwZUdtcDI2MWc5VXlVVEczK2VKWkNnUjJU?=
 =?utf-8?B?QnJoTE1BWWVaVkptTUJhZkZYV290QjlzQjlreUQ1bDhUZjVub1Z0bTYvU1ls?=
 =?utf-8?B?WU1JZXQrS3R5R0h2RGp0RzJQS2JKRmk5MzNrRGhXc0pvR1l0OFJSd2R4aG55?=
 =?utf-8?B?OWc0dEk0dGNWK1BaR0FUaDROakxpeDJTNkRCenhBUktnWFVSamx3NnFaa0k4?=
 =?utf-8?B?aFJSbjB4bysrUDM1OTl5ejNmZkwwQk1YcmNVaTZEcEZnOW8xbTUrd1dKdVMx?=
 =?utf-8?B?SlEyZVJnazcza1B3R0RJSjd5SGpNbytNM3FuMXhCRTlhbGY3Mm12WWNiSDg1?=
 =?utf-8?B?VEFrZVh1SnlIUmdjdUg1Ukd1UExHSW1BREJnOU9vRnVvZHhPYmlrdFA5LzRC?=
 =?utf-8?B?TjFWaDRmRFc2NTU5TWE1YWg5Z29uYzFVQ0M5WkhiK0U3TURWQmpvc0p5RUF3?=
 =?utf-8?B?MkRlQzhZN0YxM2ZiVVZrcmRSZGNBd3ZwaXo0U3l3MnZHWUt5L1ZJSWJjUjRW?=
 =?utf-8?B?TjdJN0QwU0tkUlpwaUhRaU1qazIxU2pIR3pEcW1oRU41M2dQcjQ1TlF1cnJO?=
 =?utf-8?B?OGVESGNiWjBSMFZSZlJybWczOHJuZi9oRHhmNFdPZzFaWVBuQ1dSbEdTQkc1?=
 =?utf-8?B?L0xrZTdURzRwYTJWemhlbnk1ajJucm9FbWhNeTUzdnVseEh3RUJnaHZhTmpC?=
 =?utf-8?B?NUJVZnZyOGJ2SlIvZDZMejBKV0phc016UnBtVS8xYkR2Q0RPRTZFb2FhMGkv?=
 =?utf-8?B?WmkxMVY5dzFhcHdGcGRYUDB4MVBVSjZTc2drSURKT2tDNDVZVStjeGE4cFhH?=
 =?utf-8?B?WkNGMmtmUnNiQWorbFJtQ3RxeW9CUmk4SVRMM1hvMnE2MUVKV0RjQ3ZaVjRI?=
 =?utf-8?B?dnVVQ3dBQ1o1dDFxVGxOZEhqK3U1eEpkVFhiNmZNcGxVUG1mU1F4dnA4cHdR?=
 =?utf-8?B?UlQvek50bXJQV2FEM1VUanlGZHgrMGh6YXEyZzZHbFpCTzhsTnBVeUIrYzU3?=
 =?utf-8?B?MzU3MG1Ybnc2VVB1SG96MVZSUjNkUExkbENIVUFwK1k5bnJNL1FyTXFPdE1n?=
 =?utf-8?B?VFpJME9CUnVVSCtZckVLcDlYemVoQXpoVjBBZktxcXdjdmJDcUtBSWl1UVhY?=
 =?utf-8?B?d29UUFgyQjJFQVBiY1cveW9IcjZuUWsrVWxwOVZiMW00c1VabTlBUVVheGVD?=
 =?utf-8?B?YTNhQVdIWHpFU1VtMEYrS0t0NUUxOXNoR2F1Wk8wUlJJWS9lMHFMT2I0aFRN?=
 =?utf-8?B?VFZPQnc4MEtDcFMwZk5MbUU2TVVlL0RUa2krMmtNY0NQdVVVNGk4eFB0WWIr?=
 =?utf-8?B?MWthZk1HWFkvSHRMOWxFTU8xd2MxN0tVcEpGNHJERWxwL2ZwTHJZdDg0RzhH?=
 =?utf-8?B?V0VzZXMyWVRwcEtodlB4dFBMSnQrUUswV1RQYitMcUtyUHRocEtNcEJibDJv?=
 =?utf-8?B?N1BJbFV1eC9uOEh1OWVmSWxoUmM2TG5GQmFjSTl1ajg4engvNmxXYlpYNUVN?=
 =?utf-8?B?VGlLczYzS3EySzRSYmNEaEt5OUE2Szkza1gxVlVGcW9kRVNLRDNLUTJ5MUNR?=
 =?utf-8?B?S2RWRHNkNlJ3ZnloV2FGNG1ZQkp5KzN3MHVtTU1GdnN0Qk12Tm9vYllqVFJJ?=
 =?utf-8?B?K3EwYTVjYUJaL0lHWUtGb2x2SFBUc2VvVktKZUtoZXNXSVZFQnJoaVkzV1p0?=
 =?utf-8?B?bHNzczg0MjFBeHVuMW80YUxmeWxYRVE1bWtkeDZ5TWhoNlFPcEE2dzRPRzdE?=
 =?utf-8?B?L0s4RWpmQ1BUS25PQTRjOGIzQlh0NGQ1OXJGK3VkMnFHOFRiTS9VdEtPUTgy?=
 =?utf-8?B?ZzM5N3RPRHpzT0pYcW9ES0U0a1d0TGw1ZHRqWkxMandZNCtHa3BWVTRHSmdP?=
 =?utf-8?B?OFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bab6a107-6cf7-434b-80a4-08db934d0e46
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Aug 2023 11:38:56.7941 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yQnqwchXw5jTThFM5t7gRnTipw3P/lky6RRUdQkZF+RtdBdLwH52vZCvTOuyByYO0JU0IuVIdQyxhM6aslbQI5pkwwSlX4fqblnLwcy7JVg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8087
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/xelpd: Calculate
 first_line_bpg_offset for DSC 1.1
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
Cc: "Heikkila, Juha-pekka" <juha-pekka.heikkila@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 8/2/2023 4:45 PM, Kandpal, Suraj wrote:
> 1.1
>> This change is required for DSC 1.1 because the current calculation is for DSC
>> 1.2 and may get a calculated value which is not recommended by DSC 1.1, for
>> example, the calculated value at 8bpp becomes 15, not the value of 12
>> recommened by DSC 1.1.
>>
>> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> Cc: Juha-Pekka Heikkil <juha-pekka.heikkila@intel.com>
>> Signed-off-by: William Tseng <william.tseng@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_vdsc.c | 17 ++++++++++++-----
>>   1 file changed, 12 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
>> b/drivers/gpu/drm/i915/display/intel_vdsc.c
>> index bd9116d2cd76..9b350f5f8ebb 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
>> @@ -72,11 +72,18 @@ calculate_rc_params(struct drm_dsc_config
>> *vdsc_cfg)
>>   	int qp_bpc_modifier = (bpc - 8) * 2;
>>   	u32 res, buf_i, bpp_i;
>>
>> -	if (vdsc_cfg->slice_height >= 8)
>> -		vdsc_cfg->first_line_bpg_offset =
>> -			12 + DIV_ROUND_UP((9 * min(34, vdsc_cfg-

This seem to be incorrect as per the spec this should have been 
first_line_bpg_offset = 12 + floor(0.09 * MIN (34, slice_height – 8))for 
slice_height ≥ 8

So instead of rounding up we should have just divided.


>>> slice_height - 8)), 100);
>> -	else
>> -		vdsc_cfg->first_line_bpg_offset = 2 * (vdsc_cfg-
>>> slice_height - 1);
>> +	if (vdsc_cfg->dsc_version_minor == 2) {
> I think the check here should be for minor version 1 and move the code in this block to
> the else block and vice versa as this 8 bpp corner case is applicable only to DSC 1.1
>   
>> +		if (vdsc_cfg->slice_height >= 8)
>> +			vdsc_cfg->first_line_bpg_offset =
>> +				12 + DIV_ROUND_UP((9 * min(34, vdsc_cfg-
>>> slice_height - 8)), 100);
>> +		else
>> +			vdsc_cfg->first_line_bpg_offset = 2 * (vdsc_cfg-
>>> slice_height - 1);
>> +	} else {
>> +		if (bpp == 8)
>> +			rc->first_line_bpg_offset = 12;
>> +		else
>> +			rc->first_line_bpg_offset = 15;
>> +	}
> Add the section in DSC spec/ Cmodel from where one can verify this in comments

I think this is coming from the recommended/ required value from DSC 1.1.


Regards,

Ankit

>
> Regards,
> Suraj Kandpal
>>   	/* Our hw supports only 444 modes as of today */
>>   	if (bpp >= 12)
>> --
>> 2.34.1
