Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9FC088C2D1
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Mar 2024 13:59:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E01A10EF63;
	Tue, 26 Mar 2024 12:59:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jDVNGpiR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C26210EF63
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Mar 2024 12:59:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711457981; x=1742993981;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ytqx6uXBQbMlPUlyWrSA6CXvfoBVBzqpCyPealeIadQ=;
 b=jDVNGpiRGKmOOEI3Xyy8IzmjSlOTfnn31rkLrEBbri3ztaukk89QPQoP
 CG7tVvYdcdp+TbaYqz1LYSSblyw2kGqZgMhikOoERyBulL30IDQTsaSQw
 bbXDOMlSs9NOgzCI4uGQHnB6goDFir5nnL5AtCtHXKGRCKFF+G/A+J+p6
 3qbcb2hx4HcA9nmdV/X1YS2YrF7B8fkOC15g81VpCB2rMjKip1mB8VtTw
 tsfYW/ar34zPjOaXu4fPFi3dytDLpXdPjl5TUS9rcQ2FOEy/95Io8+Do0
 AdYC+mWn4JKdueY0KmqHyofBtSCMPV2jGv9k+t4imZMLR3CS8k7P2xvSF Q==;
X-CSE-ConnectionGUID: iAQQpKVWQ82nsJW3PqXonQ==
X-CSE-MsgGUID: DPib/wF1RPW74UxV0SMtJA==
X-IronPort-AV: E=McAfee;i="6600,9927,11024"; a="6371959"
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; 
   d="scan'208";a="6371959"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 05:59:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; d="scan'208";a="20608163"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Mar 2024 05:59:40 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 26 Mar 2024 05:59:40 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 26 Mar 2024 05:59:40 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 26 Mar 2024 05:59:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bV3MSyunumN6fd5hXk1GJdx2rJgvNk+sHi/84oNsZMyjUybXZSGZnytksouXbDYY8oWqIKkST3bYd5MPdDJfbeq4Oc3lbntLNPRegxztPvcAVf//maDlmyBjx+YF+hOnE2tkUjJd1/s/S2vcrlbJz5LJlLpQrND/f07hY8AxSOm6GYYSvxPwlPim17QFcH+H13FXC3Xqp3shCku9CpJzeXfotBL6Zb18hKC/Rmdjq3zv+yZFoTUQBDp2zX+BaKNFA/CwUV9oGoqRo5hn2kvc6YelOl6kgVlFLeKPI0homa38aO4pK4OxaULY1ExaCkSW86eeu5InXWQloCd2plebUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5Br/TGMrm4W+khrNKR0V1HmIQEFGPFqXVS3LpqsmW+o=;
 b=BAPDBXz6FRN9EUrVarBhPb3H17PJ1uQqskGupTgxyVyhmJXiC/8yMdzTDrzmAyEPuYGDOv3suIclP3lHTOkPF8Br6lMFjh9jU0Sh3Oc0PQwJe/97xFPmg2Vblu6AO59HoB/zs4vlrzUEOkrYbbrV44s87jfizIcdmW3QKpokvsSeqNIY3LeYFTaoISrHfY/p3YV4KUGIgtMu+mF+w6Rv7m7EerXpQi6t0dXKpfTL2MY/6SkA+KEnCSFCX0V7o+1KIa9IhB11NRkJ/mr9Xw9eeiEt9GZo6zpnSD5Ap5RvDbaQSWPtJMOw21aWdDnSuUtWffn+O88Z/6Ld7U6Ikn3zkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS0PR11MB6325.namprd11.prod.outlook.com (2603:10b6:8:cf::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.32; Tue, 26 Mar
 2024 12:59:37 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::31a1:93ed:8501:f2c9]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::31a1:93ed:8501:f2c9%3]) with mapi id 15.20.7409.031; Tue, 26 Mar 2024
 12:59:37 +0000
Message-ID: <9b4dc2d9-f110-4585-8968-87eb8d605af4@intel.com>
Date: Tue, 26 Mar 2024 18:29:31 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 05/11] drm/i915/dp_mst: Account with the DSC DPT bpp limit
 on MTL
To: <imre.deak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
References: <20240320201152.3487892-1-imre.deak@intel.com>
 <20240320201152.3487892-6-imre.deak@intel.com>
 <32c89f1b-852b-4d49-8439-45fddc80c5db@intel.com>
 <ZgK7YZnmwJBGcKsF@ideak-desk.fi.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ZgK7YZnmwJBGcKsF@ideak-desk.fi.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0212.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:ea::11) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS0PR11MB6325:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: EbLT53JZsytIY7B3eISRf/NuWh7S1oaFJiDd62rI5VM9UYzR46QaoSzLNiIoS0FRtc1JSRKwYVi7HwThMrp+P1y4vh4HNYq1K5nVjuDzYbK9yCjyQzcXYwtzu2uELEN9reXQoAYgW/f/Sqdaw6j2spHWslExmhktrbzubd3CLUhicpN02Ptxgw9ZH9WM5jWFHrJn9xkARgrm+gpAhF4zX8dqHIdPQD1BeFXTEXSIqZlGJzDCirv25S9XL8xyDiFDT1wM8dYOIml16kXPV62PG7TSR+MhgzFIwH7n5z7cqJyoLwZQIcSXrdUmFNEbrKGstHfuJtVBSASvx/fA9BUCO9ZCyceqJpn8kL0WHsQ4ZLd8QLdqttMyE/MSN+r4ov9nE2dBfOkcHCKdxHzP7TdW5DsSYJJ2hMB3rOHgp/7wDOe1GsvqiY/9Fvo1kdIvlWEqpJquixxX8R1mmVo63cPrtH7i7WtIu4q9+kgnizsnNIR7esavwrTfJE1Pk2wr6bkT7V1f3gKbaCXOHp8ofuUkqBDXAayfcGKectbAP0/b9+/agu53MkFrGbTouXoxwghpeI/S11vK+MUlBHmRAnivKsJQNbJrMKK6YFgRRprJXJoKkjl6g+OKG1bydjzIB89tiq/JhiLFTRadgUItM9SYtw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K0xrdmU5T2E0dDR6VEV2T1BYWVV5ZXFrc2xUWW5mMzA3cXU3V0g0SDhRdzNq?=
 =?utf-8?B?TmtaYVNjOEtGMUdwQVI5TWNFdzdOTEFaUFdEaVdQaU5majF6L09JdkJyVENQ?=
 =?utf-8?B?RS9HMjFXdjNnZ2dPNlZPYmdEOEZqK0pRL0lUSm1sTHlDU2JZd0loUkYwelVn?=
 =?utf-8?B?VDc5S243NC9Sb3VFVmx2RXdlUCszY0MyL2xwUk1VTlRmamVSUEJxVnRZdFhD?=
 =?utf-8?B?VVMza0NXMTBsTnkyclVQUjZQdnp0N0F5cnNBamM0cTZUQStRVzQ4NGh6QTNS?=
 =?utf-8?B?Qm8xWlpKcUpHTld6NkNqYVdHTTRrUlBhNG1kYXlWaWNJOXlhOVBSbHZKaEZX?=
 =?utf-8?B?d09FNlc3clc0cWZmZUtGREpVSExXRXllWWZLVHJ2TEZxcUdjMzlyaG1wZVZX?=
 =?utf-8?B?b3hkQmdOaG1TVmRua3RmNzBoUGRINXN5NVJyNndXRE9ZdTJFalMveFU1UG1l?=
 =?utf-8?B?TlNWRmJscXptdUhXOUR1YnRUMVR0L0dWL2ViaC9zM0FnNzVqSUZKZ083VHdY?=
 =?utf-8?B?TFVMWVBYVVZlRVV4RXFiSHRRUFpCV0FyRXFLc00zc2VtTitZV1NhUW8wVmNH?=
 =?utf-8?B?ZWYyMHNPNHRyWUtQM0RNQklVWlozRmlFWlNZRnorSVlRc0llSkxmSTI3SUNH?=
 =?utf-8?B?dFB2cTFpNUlrNUJEREJCSzBCVWMwRDNZQmNOQjhkSWVLcFFFV2RtL0Rqdm9j?=
 =?utf-8?B?QXpMbTFHV1d0ZHlMeWVpd2JSZXBWbVZaZEFrUnVPSVc4Y01Gb1NCeUVHL0Vj?=
 =?utf-8?B?YjdmSmxTcHllZDNWVFdWQ3JVRjV0eE1Vd25HcGU5eDlNY2NRMS9UbUIxa20z?=
 =?utf-8?B?TnFRU0p3Uzg4VFluQ001T1QyL21WTFl6YUdvWkRNRGE3VzJhNXRLTGorS2tP?=
 =?utf-8?B?SW5iTjE0MWNpZnhzVTRRdHUvdlIrK2lZREM0dlBMM05UVFZTR25idmpEcTFY?=
 =?utf-8?B?MzNmWEdlY2tsMTBNZnoyM0J0K25FNjJJUmxCZFVManltSEpJSDRabnBzemZR?=
 =?utf-8?B?a29CQk10em1KcDZSSi9iWXUzeU52TzUyRk9qNlpOdVBGV3JEZVNQVkJaSWdk?=
 =?utf-8?B?QzJqMmxoenVoMGR2K0p3ckU0bHpBVDBVREJxc1J2N3F3OHBMR3hrOGtZQ3JX?=
 =?utf-8?B?Wk5vbm1LU1ZBT3lBdXJpdW85TCttZjMyUEJKSjZmM2JJNGR3M0lSRTNUSDBL?=
 =?utf-8?B?cGpiOFZkVE5ndSt6bDl3bSsxTjZVeGVNYVRzcVV4Rks5bHkwK2R4THB3Rmlw?=
 =?utf-8?B?Nm9lNEFNeU82b3E0NzArZ3FoeDJqTFZLUGdER2VFeW1jYy9YT0huN0pqNU5u?=
 =?utf-8?B?enE5U2FtdVFScTUvTEVqRFJPaytWTDhZSzlTYlpiWmtKUU42UTFBcXJCdWE1?=
 =?utf-8?B?dktXMGI5KzM4VFpJWXJuRkdlWGo5ZWt4QXhxN245a0Yzcm5SSEt4aGREWW5L?=
 =?utf-8?B?cHJJeCtEZXhHaFB5WW5PQVYzaGVYYzIxRk55QVpaL3g1UyttREtqRmFMYW4z?=
 =?utf-8?B?Ky9CcGVQQ1ZGVkFBYlRxT3NIOGJCd1N1ZmlQTzVWL080eHdFYXVxUHRuUGsy?=
 =?utf-8?B?Y0g0ZUxOQkRrb3ZSN3huUnFKUUV0Tm9YQU1rTG5Tam0yYm9XcEVyUFpEWHda?=
 =?utf-8?B?Qy85ZWJmNnlJdVNlWno0RFR1aEFVendjbnFPd0NQT1hTenhmaWtOQzgzRGlq?=
 =?utf-8?B?K2MzejJJaldNL3lVc2tEMkl2MGdQdi91YWE0UGdMWlNLWjJEdGlWQWpoVnEw?=
 =?utf-8?B?TmUrbUNPRFFhMFRwTHg5eWNsNjdFVVNZTXpYZVpSemlDcUZqUE5tRTlDZkdS?=
 =?utf-8?B?aVhzbFRkY0xrV3FVc3JnNE10V0kzUDVmUzJzN2lqWDZzM0Q4cGk5YnFZUkh2?=
 =?utf-8?B?UkZUWFlMSHd2VzhUcEM2NDhQb1I2WlRTZ0ZramV5YXh3ZkRzK0JqQk5zak41?=
 =?utf-8?B?bW1zSWRzc0QrTUVTaTc1dSs0TzdnVkpYS1Z1cVNzMThzNm1hbE92MkZBTFlu?=
 =?utf-8?B?NzBpT0ttNmdPNTJvNmdKTG1UbE1SbWdwalNtVERCalVvbHd1S2lwMVNpUGJp?=
 =?utf-8?B?U01BK2VtMFRHaVcxckZLa21TSTVuWkZjOEhGdTd3cDNmeCswREtyaFlyU2Fj?=
 =?utf-8?B?N204UUNYNXYrZUtheEI1TUdDNDZYL1QrSm9oRlZSc1Z2Vlp4NFlIQTArd1ZR?=
 =?utf-8?B?ZFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d7a9edb5-c2c5-4be0-d6f1-08dc4d9497a9
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Mar 2024 12:59:37.8160 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yUgEQVEdWGYY+PbM2R5EUVpnn4dJA1x/y19btedDCrEpJ7tRHWhIDL10MurBfHCJGNhWpLp576x0GvptdvJJialygAy1oz3vI0xg69L1Ofk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6325
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


On 3/26/2024 5:41 PM, Imre Deak wrote:
> On Tue, Mar 26, 2024 at 03:47:05PM +0530, Nautiyal, Ankit K wrote:
>> On 3/21/2024 1:41 AM, Imre Deak wrote:
>>> The DPT/DSC bpp limit should be accounted for on MTL platforms as well,
>>> do so.
>>>
>>> Bspec: 49259
>>>
>>> Signed-off-by: Imre Deak <imre.deak@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/display/intel_dp_mst.c | 2 +-
>>>    1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>>> index 79f34be5c89da..40660dc5edb45 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>>> @@ -56,7 +56,7 @@ static int intel_dp_mst_check_constraints(struct drm_i915_private *i915, int bpp
>>>    					  struct intel_crtc_state *crtc_state,
>>>    					  bool dsc)
>>>    {
>>> -	if (intel_dp_is_uhbr(crtc_state) && DISPLAY_VER(i915) < 14 && dsc) {
>> Should this be DISPLAY_VER() <= 14 to include MTL?
> The actual change is the DISPLAY_VER() < 20 below, which is the usual
> way in the driver (AFAIU) to check for an upper bound.

Makes sense.

>
>> For DISPLAY_VER 20, is there another check?
>>
>> in Bspec:68912 it mentions output bpp * pixel clock < DDICLK * 144 bits
> Yes LNL is different, but there this DPT limit should never be a
> bottleneck. Ville has an idea to abstract this more, but this patchset
> keeps things as-is, skipping the check on LNL+.

Agreed. Bspec indeed mentions the same thing, and its mentioned 
appropriately in the next patch.

Regards,

Ankit

>
>> Regards,
>>
>> Ankit
>>
>>> +	if (intel_dp_is_uhbr(crtc_state) && DISPLAY_VER(i915) < 20 && dsc) {
>>>    		int output_bpp = bpp;
>>>    		int symbol_clock = intel_dp_link_symbol_clock(crtc_state->port_clock);
>>>    		int available_bw = mul_u32_u32(symbol_clock * 72,
