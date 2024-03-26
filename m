Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1FA588B96D
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Mar 2024 05:27:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AB8610EA10;
	Tue, 26 Mar 2024 04:27:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RbCamvdi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EEA810EA10
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Mar 2024 04:27:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711427227; x=1742963227;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=yl886tTE9QINyCyGitcpkkmapqJoY1BGh1IH8B+gJfU=;
 b=RbCamvdiDaszSZOAmsbkfOBuzp6XB3OC79G0aZhyTcFaB+U1x4UE/0JC
 YyDzp46y7WCNm4PMfxrmtvXhXqrI5Gr5XAqbo2Kg+Ml6+uZgbG78bSK8M
 WPh+bXeXRF0dnkikgEe5BXwhJK9xm9BNhBHywKnAvePeXORPhE8O5oHF0
 AAQ4qaloJeuMOIQjsVf5RJSESOOsvsAsVag3Ma1Hs/zlImSstZHr8iRIH
 XF3pZhLp3AJLq9Jn7VrhRhCkJWnwdt8qsvy9E+e3Wnupsdrer4LCE1xTx
 l7QgBXNHsDi8x2ftm2Ahfmvz6rNBQpt9hD1jc83TJ3tuAUL3wr+PEE3Gm A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11024"; a="6324237"
X-IronPort-AV: E=Sophos;i="6.07,155,1708416000"; 
   d="scan'208";a="6324237"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2024 21:27:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,155,1708416000"; d="scan'208";a="15706286"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Mar 2024 21:27:05 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 25 Mar 2024 21:27:05 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 25 Mar 2024 21:27:05 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 25 Mar 2024 21:27:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AYcY52QH5SJAgVCi7dFTenK5ZSyyeImxS/5y0eWfh3A+ouPmOV8jjXRSgUqzGgQitLxeACbpxwrJ03bQuVkbPh0YrtewTxd0aBTx01hZaCQELaSeKsKE44KnKA1qFNqO+5pjp3zm5x3G/liYel04s5mpIKra3BQUW2Sdu6TNf8/cdaqYTdfOQ9FMqklY378zmH1DNsbzY0Hnxz/hfdKaXoblVcxHuSCgBuSaleJdK8KzteUZf/ySbegglfbpl3dQrfmpiUVDDmFBBtNkabxZR2KC1BWVcxZ44kWMTuidXLRoxwYiuXeHGFtr6i1BLWHsT/afDvnrMxmTX0s2W2s+dA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BJtQH7L+SyMQb9diL3+kx9tNQEczknjSrFjAEfJY4vs=;
 b=KgbQU/tdkVJ9JwmIe4a8WDz3L1Z05NsrNlBpm61tjzwc9tM9z1+RFz3/wj5xMNjftrqhdXVEzguK6k+gIzwG4L5fWeXxnOqGqSiKxDT21zpS4IKVrVRrZB6jWIQiJ4iNJrISgQQYGUMr22Bj4SJsEP61Dr5aF9Q8lOSM0Fuu6mdJ8Zjh/Q75aOxKn42Lc0u4BRLZFXGpuQHC1rPXRfvMzKTE/nQr4xeWijlxyL5alYyMl0ELSuZB1A1BCnCmUf4qSAOAbJYieIzxgOBU9yDJL5p9NiygEQzIszAnb8EuW5ETC3XOOlSmEhFDRMXeSHQbx31jHSwovY40coxe6uaAMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS0PR11MB7802.namprd11.prod.outlook.com (2603:10b6:8:de::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.31; Tue, 26 Mar
 2024 04:26:59 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::31a1:93ed:8501:f2c9]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::31a1:93ed:8501:f2c9%3]) with mapi id 15.20.7409.031; Tue, 26 Mar 2024
 04:26:59 +0000
Message-ID: <92326ddd-a55e-4bc7-a869-3a09bb32c889@intel.com>
Date: Tue, 26 Mar 2024 09:56:52 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] drm/i915/lspcon: Separate lspcon probe and lspcon init
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20240322121832.4170061-1-ankit.k.nautiyal@intel.com>
 <20240322121832.4170061-3-ankit.k.nautiyal@intel.com>
 <878r26ibkw.fsf@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <878r26ibkw.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BMXP287CA0024.INDP287.PROD.OUTLOOK.COM
 (2603:1096:b00:2c::30) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS0PR11MB7802:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tj6mBZbijwi4Lptnx1UXc3qmQQVzOycyHg8qK/NOBR/M7IhAcACKfnclSBEq0mQ66wj+X2SktveYlsCpI7bYAck9t4mZbsvCy/KFGQvS4IpsgvIMhdFFG0QURngv6Dp7QLaVsfLgh1aIFU/SxsapRSj9Qi+tT3AC77qbS4/Mb6em2tzNsgJ+bvF6eW3qWr6YSP9ldDUzfj++2BVjm/BFjqT1xBerHAWZTj4bvpgaKUiPJX3HqybV4Oe8v2VrKI+Vz4gq8gMRqHiWbYWLP0b7bLLsuvfOMsRJwSLuhtD+lGdHHCGQCE4/bI08AginLpcRniuNMaVplle4ZFeydGnbDgUnWd3MvRJVqsUdwQtHgQJl1E4rGrYInM1P/ymEj3/a8ts+0RwNPw9LO+v8W1ZLjP8Y0Ny9Bx3iXinTuVenQK0t5ty8dUH959rEm51WsNbw0VpMKvFitikZ5abwzTlBYtEpR/Xzl62EqE0lYNjmxqiq3BFIINdwAoPyciWu8CpO46a/z2uWf+um8bvBLQqx2YH587ADyZ5soYX5eHvRqQGtjkkXhPGCEqnVG+EKKm/9MXogAoSxxdCGk4qRVt7cKrKK5h5+SC1u4s0gpdQrZkRBxPHiYejBrSTQ2o2UxeCulU/gh96eUZAnvMJ//w9BBN1fM8EbvW0eBcz+sl/QeF4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dzV5U0JVeHJRNHFEWE04dWNjTnV0WDZKWVV1azBDcjdWWml3QktON0FyRDJN?=
 =?utf-8?B?SFJMaW0rMzkwUXBHMm0rdERXM0wydHRTMVlzTWZzcWFCR3JvZnBiNWtDYlN2?=
 =?utf-8?B?SWovY280MHJtWlVvcUNydUVxRVRiS1dhL0VSbkhWZWNVcjZtZzJjdnZ2TmZk?=
 =?utf-8?B?MStNa3k3RFAwalYyYmlhTG9GOWNFbHdvZnI3ajlQVU0reVFZb0ZIYzhrNGpB?=
 =?utf-8?B?YzB3RkdXKzZoTWpmbzM1SzhsR1NFRTNyNytxcmpkRWkvOHltK1R3MEZzdUhG?=
 =?utf-8?B?aEg0dHNtZlFrYWRtRDkwN1BWTGNjNWx2UVI5RnBZNGxtQ2hka2tXTndWemZ4?=
 =?utf-8?B?QjB0OGVQUUdZRG04WlhUZ0YrQW1rM2NLMnliVElaYnNLMlljV1VzaGRrbHky?=
 =?utf-8?B?U3BxRUxCR3dhSm04UVRxMVZaTmRKdUZtU2lzR2NSdHZGQTROZjY1eGUrSHJZ?=
 =?utf-8?B?Z2ZWZ1p4UEMwYlAwU3FSWXZLcG4ybUgvbzltdTJ2WHJ4azhvRGhXU1k0bmNa?=
 =?utf-8?B?cmZxOFltQkVpZkxxRmN6OUc0S0RLcmZmZlBNcDdJTm1pR1ppajIrYlY1RUV6?=
 =?utf-8?B?bWxYaGROS01LV3JWRHNYWUtGVUVpc3RPY2FEcUViN0xJalc1Y25YME82M0E3?=
 =?utf-8?B?UGlGUHdkSGdBczBXVHZDUkY4VVFrK292WmtENUpMTUlhQ2FTNWJZeHdrK3Bn?=
 =?utf-8?B?eFc1bFZOenR1YW1iR0pKQ29HMDhUNUhlenNBc0lJc2tCNFFRWHErNHJNUWJB?=
 =?utf-8?B?YXp4WGI1Z2JMZUNEV3FQY0JydHNyUkh3elk4bnZvMlVFOU1FRm5nQ2Jza0Nm?=
 =?utf-8?B?YmN1c2d0ZDVVU0lySUEwRlRXeEVPc0R0dHo2ZFF2QkNmWFRjU0thMmNyNFlo?=
 =?utf-8?B?UlFpVFh4RFMzZ3lFNjF0R2FFZXI2bFF0ZHZhVzBqcmswYlJ4SHVHMUY3Z2Nx?=
 =?utf-8?B?VmZ1OU93QmdGRnNSdmRWTmhsMHFITjI2ZG1ZR1BxeVRxdExONjk1cVlveU12?=
 =?utf-8?B?YVA5bnlqdFJHMGRBbDd3eHNGNlpFaWYvd2llcDhaT0tuUy82UUZJYndPMlo1?=
 =?utf-8?B?UnNyNmpDWHdSR0Q3RlJ3MkZhYTNsQ2t3NW5qOGl2OWhhZ2lKM2NETEVMc0E3?=
 =?utf-8?B?NC9MeG5RY2h2bVpRdlptSVNmcEdrTTFxUEJQeEhVTDBzb2YvV0JjUzNESDZR?=
 =?utf-8?B?dTBOaDlkL00xT3QyUWIvU01XY3pzc3Y4SCtpVVZKZFNYT21NcGxWNHpNWjgv?=
 =?utf-8?B?elpSN0huSDN6d1J3YUg5enc1aWphUHF1MlJ4RzFTblBVRjJhVWlwK3RJaG52?=
 =?utf-8?B?SVRPYnVnSzJqRkZkR3pteVlWMnZkZkZ0RGU2YmxMY3NHR3AxcEJDSlJNTnBt?=
 =?utf-8?B?TXVOUVk5RlhlcW5Yb3hXdWs0Wm9IdjN0ckhMOVhiS1licGhlSnJPaGVHNkZu?=
 =?utf-8?B?a2wybHBlbmYvcXd4NjRjeVhHWUE5amptYm0vMHgwY2ZqVGtZalk1eHJGNGJi?=
 =?utf-8?B?MWYvZG1oa05hNjNUaDhXVnZoemNhOUJoRnRFRFpkbmd2YkdPYmlMK2UwUHRH?=
 =?utf-8?B?cXZ1WmZPWmNYTFU1TnBhUlhWUm9IRzRqOXlGemU2UkdPT1ZSZ09ib2lTZ2k4?=
 =?utf-8?B?TnF0N0lqdVZORGp6UmMyNyt1ZXlSOEIrTzlYZ3h4OWhvMVpJaDFnTnR6b3cz?=
 =?utf-8?B?T1FoeEJHNEhxb0VpZUxOQTlSUTVzbndnclNNcUtGMkozR1liWkxzejdBNVpi?=
 =?utf-8?B?Z2ViTlJRbGp0aHQ4YkUwa1dHZWxRcWl1dDllN0JwM3hGYm1EU0x5WWNVZk1M?=
 =?utf-8?B?U0xTamdhN29Ec1BadnR1TEh5WUVZOFAvN2FhM3grTmJGMWVISC9UTWJKN1RJ?=
 =?utf-8?B?SmpCQnFUdWhNcDFuVkdpU1dwZStsY3ZWMnhUamttRzJKTFBuKzNMS29ZUUdn?=
 =?utf-8?B?WVFlaWZieGtkMXE5ZmYweFdGNHVNQnNhVU9VUHFTRm9GT2dZMEpzZFR2ZU9t?=
 =?utf-8?B?Z0UzZmlsVmJiTzE5dXFKVUMzRUxyY0FlNGR4STlDYVdCditWVVpDRm5EdlRp?=
 =?utf-8?B?ZFY0RHZZLy9jcjIxMGsyUml2cGl4SElXMnU1NERMZzFHejlYK3NjY0tBaWdL?=
 =?utf-8?B?OUR5cGJ5bDY5cDFnTWxjdWdscEpxYUlSWTNoM3c2UGN0RVEvVlI1Y3ZZc3hn?=
 =?utf-8?B?RXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f12de4d-1221-485c-044a-08dc4d4cf9f7
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Mar 2024 04:26:58.9727 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LF66db87ELl2rVA95cixD/b28lRhwkASB37IQkaEKHsw/nZY/rYwDj4gGWQjq8JBpQqT7UvqWszBWI+ChSbErjk7LNqSUKUUgYjoPYNKuds=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7802
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 3/25/2024 8:48 PM, Jani Nikula wrote:
> On Fri, 22 Mar 2024, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>> Currently we probe for lspcon, inside lspcon init. Which does 2 things:
>> probe the lspcon and set the expected LS/PCON mode.
>>
>> If there is no lspcon connected, the probe expectedly fails and
>> results in error message. This inturn gets propogated to
>> lspcon init and we get again error message for lspcon init
>> failure.
>>
>> Separate the probe function and avoid displaying error if probe fails.
>> If probe succeeds, only then start lspcon init and set the expected
>> LS/PCON mode as first step.
>>
>> While at it move the drm_err message in lspcon init, instead of the
>> caller.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c     |  3 +++
>>   drivers/gpu/drm/i915/display/intel_lspcon.c | 27 +++++++++++----------
>>   drivers/gpu/drm/i915/display/intel_lspcon.h |  1 +
>>   3 files changed, 18 insertions(+), 13 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 94fa34f77cf0..ea8d3e70127e 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -5882,6 +5882,9 @@ intel_dp_connector_register(struct drm_connector *connector)
>>   	 * ToDo: Clean this up to handle lspcon init and resume more
>>   	 * efficiently and streamlined.
>>   	 */
>> +	if (!lspcon_probe(lspcon))
>> +		return ret;
>> +
>>   	if (lspcon_init(dig_port)) {
>>   		lspcon_detect_hdr_capability(lspcon);
>>   		if (lspcon->hdr_supported)
>> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
>> index 62159d3ead56..570fde848d00 100644
>> --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
>> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
>> @@ -266,7 +266,7 @@ static bool lspcon_set_expected_mode(struct intel_lspcon *lspcon)
>>   	return true;
>>   }
>>   
>> -static bool lspcon_probe(struct intel_lspcon *lspcon)
>> +bool lspcon_probe(struct intel_lspcon *lspcon)
>>   {
>>   	int retry;
>>   	enum drm_dp_dual_mode_type adaptor_type;
>> @@ -676,30 +676,31 @@ bool lspcon_init(struct intel_digital_port *dig_port)
>>   	lspcon->active = false;
>>   	lspcon->mode = DRM_LSPCON_MODE_INVALID;
>>   
>> -	if (!lspcon_probe(lspcon)) {
>> -		drm_err(&i915->drm, "Failed to probe lspcon\n");
>> -		return false;
>> -	}
>> -
>>   	if (!lspcon_set_expected_mode(lspcon)) {
>>   		drm_err(&i915->drm, "LSPCON Set expected Mode failed\n");
>> -		return false;
>> +		goto lspcon_init_failed;
>>   	}
>>   
>>   	if (drm_dp_read_dpcd_caps(&intel_dp->aux, intel_dp->dpcd) != 0) {
>>   		drm_err(&i915->drm, "LSPCON DPCD read failed\n");
>> -		return false;
>> +		goto lspcon_init_failed;
>>   	}
>>   
>>   	if (!lspcon_detect_vendor(lspcon)) {
>>   		drm_err(&i915->drm, "LSPCON vendor detection failed\n");
>> -		return false;
>> +		goto lspcon_init_failed;
>>   	}
>>   
>>   	connector->ycbcr_420_allowed = true;
>>   	lspcon->active = true;
>>   	drm_dbg_kms(&i915->drm, "Success: LSPCON init\n");
>>   	return true;
>> +
>> +lspcon_init_failed:
>> +	drm_err(&i915->drm, "LSPCON init failed on port %c\n",
>> +		port_name(dig_port->base.port));
> I guess the idea is to reduce dmesg errors, but in this function the
> error messages are multiplied.

Earlier we used to get the drm_error for init failure, even if the 
LSPCON was not detected, which is printed as a debug print.

Now we'll get the dmesg errors only if we detect lspcon and lspcon init 
indeed fails.

Regards,

Ankit


>
> BR,
> Jani.
>
>> +
>> +	return false;
>>   }
>>   
>>   u32 intel_lspcon_infoframes_enabled(struct intel_encoder *encoder,
>> @@ -721,11 +722,11 @@ void lspcon_resume(struct intel_digital_port *dig_port)
>>   		return;
>>   
>>   	if (!lspcon->active) {
>> -		if (!lspcon_init(dig_port)) {
>> -			drm_err(&i915->drm, "LSPCON init failed on port %c\n",
>> -				port_name(dig_port->base.port));
>> +		if (!lspcon_probe(lspcon))
>> +			return;
>> +
>> +		if (!lspcon_init(dig_port))
>>   			return;
>> -		}
>>   	}
>>   
>>   	if (lspcon_wake_native_aux_ch(lspcon)) {
>> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.h b/drivers/gpu/drm/i915/display/intel_lspcon.h
>> index e19e10492b05..b156cc6b3a23 100644
>> --- a/drivers/gpu/drm/i915/display/intel_lspcon.h
>> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.h
>> @@ -16,6 +16,7 @@ struct intel_encoder;
>>   struct intel_lspcon;
>>   
>>   bool lspcon_init(struct intel_digital_port *dig_port);
>> +bool lspcon_probe(struct intel_lspcon *lspcon);
>>   void lspcon_detect_hdr_capability(struct intel_lspcon *lspcon);
>>   void lspcon_resume(struct intel_digital_port *dig_port);
>>   void lspcon_wait_pcon_mode(struct intel_lspcon *lspcon);
