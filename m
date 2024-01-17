Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C93F3830C3E
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jan 2024 18:53:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52BB410E764;
	Wed, 17 Jan 2024 17:53:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 428 seconds by postgrey-1.36 at gabe;
 Wed, 17 Jan 2024 17:53:41 UTC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7164010E764
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jan 2024 17:53:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705514021; x=1737050021;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Bqoq70ZWectadOGFHdPAS1adYkQ3ASi+qDCltId+GqQ=;
 b=jpvvSeT5DjBxfAJHHbQX54e9Xjxs4ZCgZVX3IHY4+7w0UYtfRP8UJ94d
 uS6rjv4eKt+6QtLBGMO+VG/nk+rTOypymkFWNR7ZOwMoVyQIYiYrwDYNW
 Yo2XqgrIanVpcrgi+8nBqvZhbZg3wgqq9AgLIANOixJbDbFV3MKNlMz1Q
 O7oREYQf4/oMzgzMknI9K7OdpErV4VrVyJ1V2vsc2bPlYA3LnTHvnzhqG
 rC8S3ucjQPNwnM8pGjTs8xNr/8OZRxh7rHfTNT7qsyk/ACV8Cw7PGu36R
 KIiJmxMCs0r0rEjUwv6Qo2zE1eXnGg4FbmqJtiJ0tvLXD+aB+Vqb0TfHL A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="119283"
X-IronPort-AV: E=Sophos;i="6.05,200,1701158400"; 
   d="scan'208";a="119283"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2024 09:46:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,200,1701158400"; d="scan'208";a="26239981"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Jan 2024 09:46:33 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 17 Jan 2024 09:46:32 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 17 Jan 2024 09:46:31 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 17 Jan 2024 09:46:31 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 17 Jan 2024 09:46:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X8d+17xrrs1K2evIt6VRPC0qZZjuMzs20KYbSL11ZMXBCmpyN29eDS9UYppTwxeIFpjSGEP+88byPxq2VeBGcEHXfUObpxt1J9VB/gP3xlBj2Vwl1PkTGkmlnwdVfkH6YgEykbDWXGEKuDYOUOm+6XuOcZ3cKYn55pcZp3cBEgGadeGe4H/Cj96/f+P7K75bamEFza/OK/4/362VLgf36Wdyq6QHLfRtOnB1dcdsEpIFaAmDwAoSo8bqyptXdrJToF7O3LwTbbdXGmQFOwmP0UUZi9CCPT/PmejQ4HTVecSgb0tKbwIBk6nD5YHyn/IYCltQnaGfnU7XWLUdRxuh1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PaEzIPZxgvKQa855Z/kJghLKqGqLUVc/oQtOmPhNQWM=;
 b=dMu8EfOTNTBdMCUnqQ1s4Oip4G75H8WQWCH2tpKpf0AB0UjVdO1QMaejOV4fKaPu4i9GROd6fUrbD9O9XLKsNtpulWX3KaWqsRydvo5W9c5EHkyDrQvWQVCdqkVZxgiA3gaegvLQq29KYDzYFhrKzeZOYNO5I0YAa2P2aC8cwzIMskSahQWFL3+5yKIl88KcMIPlEgF64vD2C8+Z4fqgikFzDz9zJsozpaXKwXslWQ590NUZJQSl8YdsB0JXr5zkOHF3vLIjE8ONILYBso0/TSfuOtqE/am1CEOBMmrJiIonXU0eoq5GNb+yDDJnXpX/Y32Kqu+IHOS4rGspt/LuiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB6541.namprd11.prod.outlook.com (2603:10b6:8:d3::14) by
 SJ0PR11MB5087.namprd11.prod.outlook.com (2603:10b6:a03:2ad::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7181.26; Wed, 17 Jan
 2024 17:46:29 +0000
Received: from DS0PR11MB6541.namprd11.prod.outlook.com
 ([fe80::b651:485:1973:7554]) by DS0PR11MB6541.namprd11.prod.outlook.com
 ([fe80::b651:485:1973:7554%3]) with mapi id 15.20.7181.022; Wed, 17 Jan 2024
 17:46:29 +0000
Message-ID: <32646e92-e06b-45a4-8d25-185be9c1e4d4@intel.com>
Date: Wed, 17 Jan 2024 18:46:24 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 05/16] drm/i915: Disable the "binder"
Content-Language: en-US
To: =?UTF-8?Q?Micha=C5=82_Winiarski?= <michal.winiarski@intel.com>, "Ville
 Syrjala" <ville.syrjala@linux.intel.com>
References: <20240116075636.6121-1-ville.syrjala@linux.intel.com>
 <20240116075636.6121-6-ville.syrjala@linux.intel.com>
 <ux7q2bmbk47rnke6n2qo3dabdx7lxkuwcy5rrauwsyz7v2bthc@p7jgbcz6vs7d>
From: Nirmoy Das <nirmoy.das@intel.com>
In-Reply-To: <ux7q2bmbk47rnke6n2qo3dabdx7lxkuwcy5rrauwsyz7v2bthc@p7jgbcz6vs7d>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FR3P281CA0195.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a4::7) To DS0PR11MB6541.namprd11.prod.outlook.com
 (2603:10b6:8:d3::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB6541:EE_|SJ0PR11MB5087:EE_
X-MS-Office365-Filtering-Correlation-Id: b1f79359-1c14-4c46-ade9-08dc17843bed
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 56+qHvKgmFZhIJM7C1gKSNnqnrrwtkLEg0/yEmJj1W83HoFy6qXrN1gZ/grSPP/AfiZH7My1Y6ErvZ1CuAe+XqyIoAHJlcKfsEoacA9CpU4Em/TUsjbdwjhgacF2q4R2DrerRCNubVJuLHNpyETIgRTYz4dFrBDb6P/iid58ss4Rzo2qxuMyd/IK0LWYHrl/L0zdJ6wcqLrHnNoLxARS8y2ZE6PF9ByAZNN6jGMTEU6Yvsx0Oxy7izg2kbJrKpJr4hJN65E53TK5ehJoau9vdTU9IRaoy3lSiwRmffPSQ0kjZuIQacG/aZxS8pa6FspsoGv6Z3ULJB5+dTW4fR66B8W4n+6K7wCvL/P6lzgNT8eqUpYz5UfES3KKUaxYHfwErePVCx6GpyXG7zINP7NcHEcYHjbjFVvL5V7X7+RXZ2aC00QzTYTc0ZUnCgq6rCMnXXBmHeQsbE7QFBF/6NEVEf1S1gYAPJQ9mGjUrDj5EnGEP+5vqjK++RXmxuJ1fUbSiieMSb7d8mNN+tiSWyKsVvIY4TVF3oG74y1v5Tu1OyjtxkkviImKu8mQ29EbB35BJ1zF3jQHAVn2WTAfzOLBywPJFtmjZslFbbg1oB2xDrNqz276e4/qQhh42zVhDMFMu3FYzeEp0gkO3P8G4V0nrg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB6541.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(346002)(396003)(376002)(366004)(230922051799003)(186009)(1800799012)(64100799003)(451199024)(110136005)(6486002)(31696002)(86362001)(82960400001)(66556008)(478600001)(66476007)(66946007)(6666004)(31686004)(38100700002)(2616005)(26005)(6506007)(6512007)(4326008)(44832011)(316002)(8936002)(53546011)(83380400001)(66574015)(36756003)(5660300002)(2906002)(41300700001)(8676002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Vmw2SzRpeGU4QjlzQ2QvZXJmUlhNK2QwT3ZMNXZreDRQd2czc3praHZkZEhO?=
 =?utf-8?B?Qk0xWmY3T3pCcWVVNFJqUE1neHNLM0dRVzNRYy9kL1kxUmdEYXY0UEZFaFZl?=
 =?utf-8?B?cnF4cDhCTDZMV1hpTzZQckxpSVF4emR2bWE2ei90RGk0cG5JNkhsNjVsekdL?=
 =?utf-8?B?LzJpMDczSmcwc3JpSm5EL1pPRVZFbkltUnVpNmxZa0pzN0k2SjdTbkdUajll?=
 =?utf-8?B?WUVSMEZHdE5nVEdLcnV1V0NLTm42bzNta1RKSnViOHNDNFVRYjMwL2srcnZO?=
 =?utf-8?B?UGZERStidWMxSlc4SDVHbUdvZnRFVWJRVGlSekZFblBOdWZUbnV5bnZHRm9z?=
 =?utf-8?B?MmVYQkNMRXIvamtWaS9OUW1yMFgxTWQwUTl5eHVUMjdVR1QxdlBJSy9MbmZ0?=
 =?utf-8?B?UU10Y2JZQmZ5UHpFeVBuOXpRZzVyalE5M2RGc2RMazduZk83M0ZxWG5hOFhC?=
 =?utf-8?B?L08zMFgrTnJXUGZLNDJZdWZwNnhGSHg3MGtKNGtxY3JSRWtpZmtCYWxUNnhs?=
 =?utf-8?B?UTNUTWp0SERHZjFTVEk1TlBaQ0h5L05rMkRLUVp2V0JvcDFxKzNGUVZWYlBU?=
 =?utf-8?B?TWNtRlI0NVQvNUtHeFc3dEFVdTNsdUxveWsvNGlFZzhKd0EzRHVqL1pmL2E3?=
 =?utf-8?B?VmpQUkFQQ3hzdGsvam5rZnhiL0xGWEFEMjdUbTFQM01KSEhEamtUWlJ6c0ww?=
 =?utf-8?B?ZlNORUJPaGI0dHFlb3MrZTBmdnBkMmpxaDZyVXpJeWRWYmpEU0xveUtjS245?=
 =?utf-8?B?YjRuV0N1OE5YOGlFaHJnMUNpS2c2TnFwS0ZhbGF4TExrQTdXNS90U2loaHhl?=
 =?utf-8?B?eWdySjlvWGpPbi9tVkpkRjBPeVRrZERSNkFpK3JXYlkyK0I5RjFETW1ZT1k4?=
 =?utf-8?B?UlZkL00wSFYxQ3VERmhMTjlhV0xpTEk0dU1MeGhxSTRwUGdpd1JCTzFkenlL?=
 =?utf-8?B?eFIwWCtpbXRMdmtYSjNzRnd6ZHdrYTVndVBwaDEzUHBVQ0FOQ21BOW5TTVBh?=
 =?utf-8?B?OWd1emhTTzFsbVRaUkxTT254bnUrSS9pSGhvcE44TUpFbUkveWRvSDdMVHJi?=
 =?utf-8?B?amJBYWVKWjNDQVZWZ3lyY2M3NzBGYzJLSmlwQWpNSzJkZWpIVVhNRXppT0N6?=
 =?utf-8?B?RkI4Ti9GM3RRT29kZkVCUDFJcFJBSDRRWWxocFVobVdjckJHN0labkJTNkVD?=
 =?utf-8?B?TnJNNEhMK0dKV2xpUDMyazBUMjNWcEIzK1hMOHE5S3laMWpMdzQreXNEVlJu?=
 =?utf-8?B?eUVIek03TG5SMGc1TWF5VTJ6L0VsSlU3K3NzeWtsQ2ViVUtEdU5PemxzaWI1?=
 =?utf-8?B?WExWanF0Rk5DRGYweFltaTRaTFRPT3hMYklLd0I4L3JXdExNYlBIMmd4bWF5?=
 =?utf-8?B?cHBvZUNhZWF4MHhobHJTZUx0SFlOQnhxaVhGSk8xVmRQMlZBanV3MDkwMlR1?=
 =?utf-8?B?bFIrNHQ4OTJTeVB0dEFYa0JvS0cwQTZxcEE2MWJPSzZhWW1oU045K2dzRzhj?=
 =?utf-8?B?WTI4Q1BZKytHekltT0lWNDRqRHRxMTlDSGRwWllzczhoaTFLcm1jeXo3djhz?=
 =?utf-8?B?V2FweThiSnBqZEIwdzZvemx5K3lSQ1BoUzFxaXNweXhDbjIvQ0oxdzZGUGJT?=
 =?utf-8?B?dDY3eFJzSTFERlZqcVJJMG9BYmZoSVJwOVp6MXBCN3ZpbGpsbWZtNVRQelpC?=
 =?utf-8?B?bENGM0pYVXlIQVdiYUlFR1dzVk96WnpTMzlNZmU2NElVWUtiNVFKbzdSUDhm?=
 =?utf-8?B?L3p4ZnNSVDMrTDRPWEZUUHByR2k2WEM1QTdkQXN3eGxvZXNEa0U1MUJ0YUZG?=
 =?utf-8?B?bFk2eUVvWmUrR1hmbmp6bTJXWksxb3dkd0l5cmZkNXVGTnpvbFdpQ0FNa0NN?=
 =?utf-8?B?L05KR2lZYzRmblAzTEZBS1lEOXB5dERnQVByZEFrcnBncm1wSEtuYUtRdy9M?=
 =?utf-8?B?aC9BMFZCb2VBbXF5N2k0WlpobzNhMmVHMDNiS1lUb21qS0prcWk4MlNwUjV6?=
 =?utf-8?B?Z0puaDY0bUZPVnUyV09ROEJ1Z05hN0ZudG9NakZRQTRmc2IreE9pMUZHZVFI?=
 =?utf-8?B?bXZURWhYV3JKbmdEQUhJN2xBc3RTeFdaVTBXd2o0aTRlRWRkMmphRWllWndO?=
 =?utf-8?Q?O6lLtZfBzJT0cqar4FyLek7xQ?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b1f79359-1c14-4c46-ade9-08dc17843bed
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB6541.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jan 2024 17:46:29.0523 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: i3G2Ktrj+GCvWsgQ8/pA5pAHdCbDAUT1CFyXKJEWCrp9gsItaFjUaotxZGhJfP7JO3Qi+lV9f4pp2v/wh/pIDA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5087
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 1/17/2024 3:13 PM, Michał Winiarski wrote:
> On Tue, Jan 16, 2024 at 09:56:25AM +0200, Ville Syrjala wrote:
>> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>
>> Now that the GGTT PTE updates go straight to GSMBASE (bypassing
>> GTTMMADR) there should be no more risk of system hangs? So the
>> "binder" (ie. update the PTEs via MI_UPDATE_GTT) is no longer
>> necessary, disable it.
>>
>> My main worry with the MI_UPDATE_GTT are:
>> - only used on this one platform so very limited testing coverage
>> - async so more opprtunities to screw things up
>> - what happens if the engine hangs while we're waiting for MI_UPDATE_GTT
>>    to finish?
>> - requires working command submission, so even getting a working
>>    display now depends on a lot more extra components working correctly
>>
>> TODO: MI_UPDATE_GTT might be interesting as an optimization
>> though, so perhaps someone should look into always using it
>> (assuming the GPU is alive and well)?
>>
>> v2: Keep using MI_UPDATE_GTT on VM guests
>>
>> Cc: Paz Zcharya <pazz@chromium.org>
>> Cc: Nirmoy Das <nirmoy.das@intel.com>
>> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/intel_gtt.c | 3 ++-
>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
>> index 86f73fe558ca..e83dabc56a14 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gtt.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
>> @@ -24,7 +24,8 @@
>>   bool i915_ggtt_require_binder(struct drm_i915_private *i915)
>>   {
>>   	/* Wa_13010847436 & Wa_14019519902 */
>> -	return MEDIA_VER_FULL(i915) == IP_VER(13, 0);
>> +	return i915_run_as_guest() &&
>> +		MEDIA_VER_FULL(i915) == IP_VER(13, 0);
> Note that i915_run_as_guest() is not the most reliable way to decide
> whether to use MI_UPDATE_GTT or straight to GSMBASE, as it requires the
> hypervisor to "opt-in" and set the X86_FEATURE_HYPERVISOR.
> If it's not set - the driver will go into GSMBASE, which is not mapped
> inside the guest.
> Does the system firmware advertise whether GSMBASE is "open" or "closed"
> to CPU access in any way?

Had a chat with David from IVE team, David suggested to read 0x138914 to 
determine that.  "GOP needs to qualify the WA by reading GFX MMIO offset 
0x138914 and verify the value there is 0x1." -> as per the HSD-22018444074



Regards,

Nirmoy

>
> -Michał
>
>>   }
>>   
>>   static bool intel_ggtt_update_needs_vtd_wa(struct drm_i915_private *i915)
>> -- 
>> 2.41.0
>>
