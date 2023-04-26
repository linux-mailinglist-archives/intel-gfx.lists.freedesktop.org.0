Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 170BC6EED70
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Apr 2023 07:09:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEBB210E0DB;
	Wed, 26 Apr 2023 05:09:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CFA310E0DB
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Apr 2023 05:09:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682485779; x=1714021779;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=o1w+MoF1Qw8rvGMqUYmAYX4w4BOq8Hu+gMGTIXDi4cs=;
 b=b66u/8vmCPoqHLLxWy9iuHny/usYJKo6TMWnWuYPUnFJvAbj+fHOiovM
 IPMXS1xpbkQ3a8bM2s1zUYa2c8PZeWovGd7iB1me8+uQYK9VP6BvCvLl/
 v4uY/F38V+L3ecL8qLltRyBV7GM9UQK2/Li3Zj5UzgzOq0C59caFvoRhE
 fUiXpumBjvLZBNw7MBWA5UwYRmfp12Oa0Snw1norGarCG1jY9plQ+nUyq
 oR8mYUCCaQgyrJtUVeVPGfdC6uTqUJMSkPPNzLcbG7WqzyCNP/QaMNdgi
 a5bBgzt0vgPbfU7SloY3X2cAMt/Z+2esZoyLQj9LHm5VyQrQQKYaSPps5 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="374946303"
X-IronPort-AV: E=Sophos;i="5.99,227,1677571200"; d="scan'208";a="374946303"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 22:09:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="693808502"
X-IronPort-AV: E=Sophos;i="5.99,227,1677571200"; d="scan'208";a="693808502"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga002.jf.intel.com with ESMTP; 25 Apr 2023 22:09:38 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 25 Apr 2023 22:09:37 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 25 Apr 2023 22:09:37 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 25 Apr 2023 22:09:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TbkShPb1ZIufu2tEJ8XT9/YeWHDo9ClXirBUY6Fjxu4q9zVZ7ZPiFEzvdnfv/BnUU1uWyj8k5AlLPVz7Ea+pQoRmITZByQF2HJcUz4SV73b7ZCU5h0rJF3a8HO89HmStSg/JlY+4S3APvb0rgOiFV/vnAqmO8UMDXa8FclT9sR5B/J5qsb9MaiSWws12gx6tZjNt5ZwJs7jJkiGpc9pjpUOeXd1hCa7R6ESOoEukmXkiwjoghKlkPb677m2MxVcCgt8dhHo4J9eYhzXGXHW/YdCA4jD5zRunvRSVKg+fou8rejuA5o+mhf66pGysOGT882a3wxdYlVBfUN4CGfbU3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WOnqOlcrLP0JGkllzKYbEhqOMKJte06tGLgos1P/7/E=;
 b=Hd6alZKywOU7yB8RsDgDwQv+YxJ/1ZeVR5gawZ02IXbaUPkRPPjGVUsxGa1EEODtVsIkMfMtze/KB2fIZZaypJ7U9j1X6QddDvVYbSbWI3LdmPcu/fIc6TU1UCNoe7Sa5hpXswZr05cWlz9BCSBtzvy6LnWXfrd0MnU0Dj5xoCDnEjXYWmnI+nsNSJhDiey56Nrl9XR5ebwzn4lltOkX2bb7NcYaP/UgFrxkUl10bvdLYytMJPdW3OnRA7CMtlEJyU+bg9Y8YCt1rwShuVZvLhwqWzwoPLzry29s8FRo8YXEnhZPgrirHYi1b0AjFlxaWpl9FGvWtDRLAIUfjhC6pA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by BN0PR11MB5693.namprd11.prod.outlook.com (2603:10b6:408:164::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.34; Wed, 26 Apr
 2023 05:09:36 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b%9]) with mapi id 15.20.6340.021; Wed, 26 Apr 2023
 05:09:35 +0000
Message-ID: <88451963-b8c4-8114-cfc9-63292d26e459@intel.com>
Date: Wed, 26 Apr 2023 10:39:25 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20230331101613.936776-1-ankit.k.nautiyal@intel.com>
 <20230331101613.936776-6-ankit.k.nautiyal@intel.com>
 <ZEZ4CU0r4sKRR4wq@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ZEZ4CU0r4sKRR4wq@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0016.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:95::18) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|BN0PR11MB5693:EE_
X-MS-Office365-Filtering-Correlation-Id: dcaf3511-18dc-48af-4013-08db46146d92
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4RVUecIwSWml+FVKsVAAfDJV9VpVKafXxn16aPZJ3ZGXuqY4ewY15xe/vClHGLkWLlTSly8C16hkEc7dN/w5g7kHaViNaY98El3Nvb5jdUgzP3Rs4d3VMiiS6baIEKGatpi6W4O1mG7/S6IWrlukI1RsQ70hENOLJ2r/yv58/8w4yVTFlM54MRDo2Xe8QHNnGURbuA+ahG6RHrROqgjRPgbFTYP1ZNFukDcNFC5aeROAZimXC8q7J1aM4avxkB+X1CsMgdjp8hpMHKQSfGJ0Gn2g2FOFo6mGfrV4wdSdFYhYqga3/EX3HkM6il9hGk7evtQcGuilbjPBytXPVBy/sTeDCu8ORmdNMVHaCYsXodGfhK4rZjAe99sZ12MvqI4g2MGVPwutpBSNFCFURNmTesR/yrFGzu6i8qaIyDjibbi59WHxEyRSg9+uKRtLJMk9m8fa9Zr7GpMF7j39g6kqgt4IO3aeGYqnz3YTOD9IIlhC+2pf6QeiW+9Jpy+25129UVV9lF7j2C6T1Q7W7vXew/vmF7j6XqPfuAiPvmMN9SPt/4wKMiP/388LMpQosNkI/rsG1FQGMQgg1ZZlq5q8Kgmg47wQVtSeLnJjLM9EvY1O8BsWosSi39seuI0TRYYm3M8kwid7sCXmkyo7Q1gnHA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(346002)(366004)(396003)(376002)(136003)(451199021)(53546011)(55236004)(6506007)(186003)(6512007)(26005)(66476007)(316002)(66556008)(82960400001)(4326008)(6916009)(5660300002)(66946007)(6666004)(6486002)(31686004)(83380400001)(2616005)(31696002)(36756003)(8676002)(8936002)(30864003)(2906002)(478600001)(86362001)(38100700002)(41300700001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QU54ajlJaWRCN3dCNU5pMWVweGl0Y0p6WHpReXpDclNNbThiY1RMbE93WkRC?=
 =?utf-8?B?elUxUzE0WTVVSHlIN1RRb25xcXRHcGVQL1k1SHdyb3FuSVlESzlmMjJZeDB4?=
 =?utf-8?B?YnlreTlJRnlONGUyNVhwZGtySVdkNGFia0FpQWNlay9NL2VnMUlYWjhtY05n?=
 =?utf-8?B?T29jME01Qk45REd4VGR5REp3NmpyNGJ0Y1pqTi92ZjM1VTIxMEdTcUozV2sz?=
 =?utf-8?B?L2VYbnNRK1crQ09LVlBBZlRRV0M5Tmp3QkVaZmZwTFRrMTcyM3BnTjhRNkcz?=
 =?utf-8?B?VDMyNllIOFYxdGJWZXU3OW1DWVNxTWpaNXRwejI4cy9RaDc5eUZEbDVwbGJP?=
 =?utf-8?B?VWpxczhWTUwvenViWEVaT1NNZ25sQXNnbS9EZVFMWHhaeWNLMWNHeGRHS09k?=
 =?utf-8?B?YktoWmFVRU95MkJNRFFGZEg3L0VuUFBsdmwreitnV1VtSnhaU3RtTEZ4NzlL?=
 =?utf-8?B?WXVZc1YvNm16OE5FN2V5eDhzOVBWb0FjMUNqN0g0aXdCNXZPbm1WTU00OFp1?=
 =?utf-8?B?RlRwSEt6VG43NzVSN2RQTnVzZlB0VGFXeENIVlJWR2lua2hjVHFZZjVpdk4w?=
 =?utf-8?B?anhGeXJZT1ZrQmtZVHpPQjdseWp2UHJMcHhDWVMvSGpPRkx3c2YxdXVZWERu?=
 =?utf-8?B?U1dwVk5ibnlPWFdCMVF3WFV3bnlwUHlQZ0JHM3BMMEtmQzVBSVg4VlZpNGNw?=
 =?utf-8?B?TFU0dzNzeURFWVJMUHdIcW1lbGpvNTVybFBEOVA2VjVMNE9IUzlLdzczZThO?=
 =?utf-8?B?aHM3cnR3c3czYktPU09WejRpbXVweWZnM1AzNXcwckg5RWtaeE5vZmVJTE8r?=
 =?utf-8?B?cWRza09GZGNpUXNsTFh2S0tsVFdnVFA0QjltNnpNamNhaXlUcFhCMmtpVENy?=
 =?utf-8?B?Ukpmajc1M1VaTzVnZzBWek1oNGpTeCtHYTA2dFZaZmdNdlRoL29sVm50VEUr?=
 =?utf-8?B?L0tqZ2JvUlNZRk5XWGkzNndVeFErZ3JCRlBOaFNCMC9zckIwVzNLMmM1YmRw?=
 =?utf-8?B?ZGtRdDE4Y2RrRURKeUg1WEJVUXR0T1ZsMFlYbnYvZDh0bGxRYjF2NVhNUFB2?=
 =?utf-8?B?dkRxQXFBR1FFMkVxL0x6eWFneGtJbzR4V1o5U0JkRUJ2WkN0L2t5dGpVTW1P?=
 =?utf-8?B?Z1MzNk5BcDVsYnlZME1sVjFQWFVnbUYzMjhrRkFaNFJia0JoNURQYm9FNllp?=
 =?utf-8?B?OTZKWUlCb1d2clYyanBUanRSNHZtT1ZpV0ZSOU1rNWRLTDNVR216YVI3d28z?=
 =?utf-8?B?cVdJRFpxOEF2anJJUnozKzVXQlZ0TURzNjlSNFRmaHI2OXhtN25iRXowdHlC?=
 =?utf-8?B?NGJOU2NvQzZrNXVDT2I4bVRPUGI0dTAvMVpZeWJnWVl2b2FGMzlESGNrMVVr?=
 =?utf-8?B?aHhkQzR5ZXpYa0oyMXErd0N0a2VwN1pSN2wvRGw0RHU4QWpDYTA0U3prNWVr?=
 =?utf-8?B?QmdtUnYwcWkvWmFwWjBrY1YzOUc1TXpqYWM1OFducDErS0hkMXhGaEE4c0hv?=
 =?utf-8?B?NW9UdDBCdVhFZG5VNWY1OUVSL0g3TTVlSjB6N3pmSHhSRjVBMUVkSERGUXNh?=
 =?utf-8?B?K2QydDBtUlVSTlZvYWYzVmM3Q1dRcnpZV3ZRem1NSXh6a1ZYSGVoaDNnSWFo?=
 =?utf-8?B?cVd4NS9ZWjFwZHRFdnBQb2xQZm5Ed1VRdFcrS2FlcDRxWU13K0Q1K2gxVktp?=
 =?utf-8?B?MHFLVjN1ekRJajY5Y3E3VWVhcGRFbEpJYkppK1A3MFRIeTJSRnBDcmZRRnFN?=
 =?utf-8?B?N3RnVkRzUHBOS2x0b1drV0NOUW8wbzFGRFlyT1A0RXFSZ0dqTWVTZHIzTEFw?=
 =?utf-8?B?ZXhqajliazVHL2NYL1VqaGhiYXlWeDN3NkU1dGdOZ1hSL0RGa0QrRHNNNUFr?=
 =?utf-8?B?N2U5eDNTOGhyWmdCNkx2cm5aNTZCMUkzRGhYV0ZERlp3aUpzWlczL3pKd3JW?=
 =?utf-8?B?SGFERVJsRGM1SzhWR2RLdXplamdTZjRUS241Tnh0VlFhL3pVUE9hcklRYjlF?=
 =?utf-8?B?dkZQRDlNNElQY0FibzVnY0l4MVc4T0JXQmE4OG05WUxMT1N0YTdlcUlLNGx6?=
 =?utf-8?B?QklXempwM2l3NkNFNEY0amMvc01wdXdZdmNubXA3V3JvSU0yWmcxQUxnbEYr?=
 =?utf-8?B?N2dML0U2R0pUN1U2TmhoV09maVpua3dzVnZnNlk5Y0pGOWhSNzd6YWRNSUJt?=
 =?utf-8?B?Q3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dcaf3511-18dc-48af-4013-08db46146d92
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2023 05:09:35.6092 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MMiKDUY7cFOzjdMe6iMK+Kh++MtCNe7x3nstuAs3lVM0pac1oj/q0eqSFoNHjonHBvFVGUvYuUCH2XcubMmaLhWdGk3cpBAKtHRV19L80fQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0PR11MB5693
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 05/13] drm/i915/display: Use sink_format
 instead of ycbcr420_output flag
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


On 4/24/2023 6:07 PM, Ville Syrjälä wrote:
> On Fri, Mar 31, 2023 at 03:46:05PM +0530, Ankit Nautiyal wrote:
>> Start passing the sink_format, to all functions that take a bool
>> ycbcr420_output as parameter. This will make the functions generic,
>> and will serve as a slight step towards 4:2:2 support later.
>>
>> v2: Rebased.
>>
>> v3: Correct the checks in places concerned with pipe output. (Ville)
>> Other minor styling and refactoring fixes, as suggested by Ville.
>>
>> Suggested-by: Ville Syrj_l_ <ville.syrjala@linux.intel.com>
> Name borked here.

Really sorry for this. I dont know how I messed this up while copying. :(

Will fix this while rebasing the series.

Thanks for the review.


Regards,

Ankit

>
> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c   | 32 ++++++++---------
>>   drivers/gpu/drm/i915/display/intel_hdmi.c | 44 ++++++++++++++---------
>>   drivers/gpu/drm/i915/display/intel_hdmi.h |  5 +--
>>   3 files changed, 45 insertions(+), 36 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index c3f3003c52ca..ce9384a0d153 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -987,7 +987,8 @@ static int intel_dp_max_tmds_clock(struct intel_dp *intel_dp)
>>   
>>   static enum drm_mode_status
>>   intel_dp_tmds_clock_valid(struct intel_dp *intel_dp,
>> -			  int clock, int bpc, bool ycbcr420_output,
>> +			  int clock, int bpc,
>> +			  enum intel_output_format sink_format,
>>   			  bool respect_downstream_limits)
>>   {
>>   	int tmds_clock, min_tmds_clock, max_tmds_clock;
>> @@ -995,7 +996,7 @@ intel_dp_tmds_clock_valid(struct intel_dp *intel_dp,
>>   	if (!respect_downstream_limits)
>>   		return MODE_OK;
>>   
>> -	tmds_clock = intel_hdmi_tmds_clock(clock, bpc, ycbcr420_output);
>> +	tmds_clock = intel_hdmi_tmds_clock(clock, bpc, sink_format);
>>   
>>   	min_tmds_clock = intel_dp->dfp.min_tmds_clock;
>>   	max_tmds_clock = intel_dp_max_tmds_clock(intel_dp);
>> @@ -1018,6 +1019,7 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
>>   	const struct drm_display_info *info = &connector->base.display_info;
>>   	enum drm_mode_status status;
>>   	bool ycbcr_420_only;
>> +	enum intel_output_format sink_format;
>>   
>>   	/* If PCON supports FRL MODE, check FRL bandwidth constraints */
>>   	if (intel_dp->dfp.pcon_max_frl_bw) {
>> @@ -1044,18 +1046,23 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
>>   
>>   	ycbcr_420_only = drm_mode_is_420_only(info, mode);
>>   
>> +	if (ycbcr_420_only)
>> +		sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
>> +	else
>> +		sink_format = INTEL_OUTPUT_FORMAT_RGB;
>> +
>>   	/* Assume 8bpc for the DP++/HDMI/DVI TMDS clock check */
>>   	status = intel_dp_tmds_clock_valid(intel_dp, target_clock,
>> -					   8, ycbcr_420_only, true);
>> +					   8, sink_format, true);
>>   
>>   	if (status != MODE_OK) {
>> -		if (ycbcr_420_only ||
>> +		if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
>>   		    !connector->base.ycbcr_420_allowed ||
>>   		    !drm_mode_is_420_also(info, mode))
>>   			return status;
>> -
>> +		sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
>>   		status = intel_dp_tmds_clock_valid(intel_dp, target_clock,
>> -						   8, true, true);
>> +						   8, sink_format, true);
>>   		if (status != MODE_OK)
>>   			return status;
>>   	}
>> @@ -1291,19 +1298,10 @@ static bool intel_dp_supports_dsc(struct intel_dp *intel_dp,
>>   		drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd);
>>   }
>>   
>> -static bool intel_dp_is_ycbcr420(struct intel_dp *intel_dp,
>> -				 const struct intel_crtc_state *crtc_state)
>> -{
>> -	return crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
>> -		(crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR444 &&
>> -		 intel_dp->dfp.ycbcr_444_to_420);
>> -}
>> -
>>   static int intel_dp_hdmi_compute_bpc(struct intel_dp *intel_dp,
>>   				     const struct intel_crtc_state *crtc_state,
>>   				     int bpc, bool respect_downstream_limits)
>>   {
>> -	bool ycbcr420_output = intel_dp_is_ycbcr420(intel_dp, crtc_state);
>>   	int clock = crtc_state->hw.adjusted_mode.crtc_clock;
>>   
>>   	/*
>> @@ -1323,8 +1321,8 @@ static int intel_dp_hdmi_compute_bpc(struct intel_dp *intel_dp,
>>   
>>   	for (; bpc >= 8; bpc -= 2) {
>>   		if (intel_hdmi_bpc_possible(crtc_state, bpc,
>> -					    intel_dp->has_hdmi_sink, ycbcr420_output) &&
>> -		    intel_dp_tmds_clock_valid(intel_dp, clock, bpc, ycbcr420_output,
>> +					    intel_dp->has_hdmi_sink) &&
>> +		    intel_dp_tmds_clock_valid(intel_dp, clock, bpc, crtc_state->sink_format,
>>   					      respect_downstream_limits) == MODE_OK)
>>   			return bpc;
>>   	}
>> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
>> index f3af5efd281b..22990841c1bf 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
>> @@ -1871,10 +1871,11 @@ hdmi_port_clock_valid(struct intel_hdmi *hdmi,
>>   	return MODE_OK;
>>   }
>>   
>> -int intel_hdmi_tmds_clock(int clock, int bpc, bool ycbcr420_output)
>> +int intel_hdmi_tmds_clock(int clock, int bpc,
>> +			  enum intel_output_format sink_format)
>>   {
>>   	/* YCBCR420 TMDS rate requirement is half the pixel clock */
>> -	if (ycbcr420_output)
>> +	if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR420)
>>   		clock /= 2;
>>   
>>   	/*
>> @@ -1901,7 +1902,8 @@ static bool intel_hdmi_source_bpc_possible(struct drm_i915_private *i915, int bp
>>   }
>>   
>>   static bool intel_hdmi_sink_bpc_possible(struct drm_connector *connector,
>> -					 int bpc, bool has_hdmi_sink, bool ycbcr420_output)
>> +					 int bpc, bool has_hdmi_sink,
>> +					 enum intel_output_format sink_format)
>>   {
>>   	const struct drm_display_info *info = &connector->display_info;
>>   	const struct drm_hdmi_info *hdmi = &info->hdmi;
>> @@ -1911,7 +1913,7 @@ static bool intel_hdmi_sink_bpc_possible(struct drm_connector *connector,
>>   		if (!has_hdmi_sink)
>>   			return false;
>>   
>> -		if (ycbcr420_output)
>> +		if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR420)
>>   			return hdmi->y420_dc_modes & DRM_EDID_YCBCR420_DC_36;
>>   		else
>>   			return info->edid_hdmi_rgb444_dc_modes & DRM_EDID_HDMI_DC_36;
>> @@ -1919,7 +1921,7 @@ static bool intel_hdmi_sink_bpc_possible(struct drm_connector *connector,
>>   		if (!has_hdmi_sink)
>>   			return false;
>>   
>> -		if (ycbcr420_output)
>> +		if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR420)
>>   			return hdmi->y420_dc_modes & DRM_EDID_YCBCR420_DC_30;
>>   		else
>>   			return info->edid_hdmi_rgb444_dc_modes & DRM_EDID_HDMI_DC_30;
>> @@ -1933,7 +1935,8 @@ static bool intel_hdmi_sink_bpc_possible(struct drm_connector *connector,
>>   
>>   static enum drm_mode_status
>>   intel_hdmi_mode_clock_valid(struct drm_connector *connector, int clock,
>> -			    bool has_hdmi_sink, bool ycbcr420_output)
>> +			    bool has_hdmi_sink,
>> +			    enum intel_output_format sink_format)
>>   {
>>   	struct drm_i915_private *i915 = to_i915(connector->dev);
>>   	struct intel_hdmi *hdmi = intel_attached_hdmi(to_intel_connector(connector));
>> @@ -1946,12 +1949,12 @@ intel_hdmi_mode_clock_valid(struct drm_connector *connector, int clock,
>>   	 * least one color depth is accepted.
>>   	 */
>>   	for (bpc = 12; bpc >= 8; bpc -= 2) {
>> -		int tmds_clock = intel_hdmi_tmds_clock(clock, bpc, ycbcr420_output);
>> +		int tmds_clock = intel_hdmi_tmds_clock(clock, bpc, sink_format);
>>   
>>   		if (!intel_hdmi_source_bpc_possible(i915, bpc))
>>   			continue;
>>   
>> -		if (!intel_hdmi_sink_bpc_possible(connector, bpc, has_hdmi_sink, ycbcr420_output))
>> +		if (!intel_hdmi_sink_bpc_possible(connector, bpc, has_hdmi_sink, sink_format))
>>   			continue;
>>   
>>   		status = hdmi_port_clock_valid(hdmi, tmds_clock, true, has_hdmi_sink);
>> @@ -1976,6 +1979,7 @@ intel_hdmi_mode_valid(struct drm_connector *connector,
>>   	int max_dotclk = to_i915(connector->dev)->max_dotclk_freq;
>>   	bool has_hdmi_sink = intel_has_hdmi_sink(hdmi, connector->state);
>>   	bool ycbcr_420_only;
>> +	enum intel_output_format sink_format;
>>   
>>   	if ((mode->flags & DRM_MODE_FLAG_3D_MASK) == DRM_MODE_FLAG_3D_FRAME_PACKING)
>>   		clock *= 2;
>> @@ -2000,14 +2004,20 @@ intel_hdmi_mode_valid(struct drm_connector *connector,
>>   
>>   	ycbcr_420_only = drm_mode_is_420_only(&connector->display_info, mode);
>>   
>> -	status = intel_hdmi_mode_clock_valid(connector, clock, has_hdmi_sink, ycbcr_420_only);
>> +	if (ycbcr_420_only)
>> +		sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
>> +	else
>> +		sink_format = INTEL_OUTPUT_FORMAT_RGB;
>> +
>> +	status = intel_hdmi_mode_clock_valid(connector, clock, has_hdmi_sink, sink_format);
>>   	if (status != MODE_OK) {
>>   		if (ycbcr_420_only ||
>>   		    !connector->ycbcr_420_allowed ||
>>   		    !drm_mode_is_420_also(&connector->display_info, mode))
>>   			return status;
>>   
>> -		status = intel_hdmi_mode_clock_valid(connector, clock, has_hdmi_sink, true);
>> +		sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
>> +		status = intel_hdmi_mode_clock_valid(connector, clock, has_hdmi_sink, sink_format);
>>   		if (status != MODE_OK)
>>   			return status;
>>   	}
>> @@ -2016,7 +2026,7 @@ intel_hdmi_mode_valid(struct drm_connector *connector,
>>   }
>>   
>>   bool intel_hdmi_bpc_possible(const struct intel_crtc_state *crtc_state,
>> -			     int bpc, bool has_hdmi_sink, bool ycbcr420_output)
>> +			     int bpc, bool has_hdmi_sink)
>>   {
>>   	struct drm_atomic_state *state = crtc_state->uapi.state;
>>   	struct drm_connector_state *connector_state;
>> @@ -2027,7 +2037,8 @@ bool intel_hdmi_bpc_possible(const struct intel_crtc_state *crtc_state,
>>   		if (connector_state->crtc != crtc_state->uapi.crtc)
>>   			continue;
>>   
>> -		if (!intel_hdmi_sink_bpc_possible(connector, bpc, has_hdmi_sink, ycbcr420_output))
>> +		if (!intel_hdmi_sink_bpc_possible(connector, bpc, has_hdmi_sink,
>> +						  crtc_state->sink_format))
>>   			return false;
>>   	}
>>   
>> @@ -2051,8 +2062,7 @@ static bool hdmi_bpc_possible(const struct intel_crtc_state *crtc_state, int bpc
>>   	     adjusted_mode->crtc_hblank_start) % 8 == 2)
>>   		return false;
>>   
>> -	return intel_hdmi_bpc_possible(crtc_state, bpc, crtc_state->has_hdmi_sink,
>> -				       intel_hdmi_is_ycbcr420(crtc_state));
>> +	return intel_hdmi_bpc_possible(crtc_state, bpc, crtc_state->has_hdmi_sink);
>>   }
>>   
>>   static int intel_hdmi_compute_bpc(struct intel_encoder *encoder,
>> @@ -2060,7 +2070,6 @@ static int intel_hdmi_compute_bpc(struct intel_encoder *encoder,
>>   				  int clock, bool respect_downstream_limits)
>>   {
>>   	struct intel_hdmi *intel_hdmi = enc_to_intel_hdmi(encoder);
>> -	bool ycbcr420_output = intel_hdmi_is_ycbcr420(crtc_state);
>>   	int bpc;
>>   
>>   	/*
>> @@ -2078,7 +2087,8 @@ static int intel_hdmi_compute_bpc(struct intel_encoder *encoder,
>>   		bpc = 8;
>>   
>>   	for (; bpc >= 8; bpc -= 2) {
>> -		int tmds_clock = intel_hdmi_tmds_clock(clock, bpc, ycbcr420_output);
>> +		int tmds_clock = intel_hdmi_tmds_clock(clock, bpc,
>> +						       crtc_state->sink_format);
>>   
>>   		if (hdmi_bpc_possible(crtc_state, bpc) &&
>>   		    hdmi_port_clock_valid(intel_hdmi, tmds_clock,
>> @@ -2108,7 +2118,7 @@ static int intel_hdmi_compute_clock(struct intel_encoder *encoder,
>>   		return bpc;
>>   
>>   	crtc_state->port_clock =
>> -		intel_hdmi_tmds_clock(clock, bpc, intel_hdmi_is_ycbcr420(crtc_state));
>> +		intel_hdmi_tmds_clock(clock, bpc, crtc_state->sink_format);
>>   
>>   	/*
>>   	 * pipe_bpp could already be below 8bpc due to
>> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.h b/drivers/gpu/drm/i915/display/intel_hdmi.h
>> index 774dda2376ed..d1e27247b657 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hdmi.h
>> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.h
>> @@ -9,6 +9,7 @@
>>   #include <linux/types.h>
>>   
>>   enum hdmi_infoframe_type;
>> +enum intel_output_format;
>>   enum port;
>>   struct drm_connector;
>>   struct drm_connector_state;
>> @@ -45,8 +46,8 @@ void intel_read_infoframe(struct intel_encoder *encoder,
>>   bool intel_hdmi_limited_color_range(const struct intel_crtc_state *crtc_state,
>>   				    const struct drm_connector_state *conn_state);
>>   bool intel_hdmi_bpc_possible(const struct intel_crtc_state *crtc_state,
>> -			     int bpc, bool has_hdmi_sink, bool ycbcr420_output);
>> -int intel_hdmi_tmds_clock(int clock, int bpc, bool ycbcr420_output);
>> +			     int bpc, bool has_hdmi_sink);
>> +int intel_hdmi_tmds_clock(int clock, int bpc, enum intel_output_format sink_format);
>>   int intel_hdmi_dsc_get_bpp(int src_fractional_bpp, int slice_width,
>>   			   int num_slices, int output_format, bool hdmi_all_bpp,
>>   			   int hdmi_max_chunk_bytes);
>> -- 
>> 2.25.1
