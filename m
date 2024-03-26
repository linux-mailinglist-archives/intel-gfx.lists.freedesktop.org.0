Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE6A888BC65
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Mar 2024 09:30:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54B8B10E1E7;
	Tue, 26 Mar 2024 08:30:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MvClK677";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BACF10E1E7
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Mar 2024 08:30:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711441806; x=1742977806;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=lGDgIQXj26j2Y37LRVHjWISwz1P/cn3WTI6m08D0hL4=;
 b=MvClK677xTJMxpn+/EAnVsyxMfWHiGpN4LjTQQPjeK3alYvIge2F86kG
 487AagMopc02xeccvSejt4/ehQ+HxDENcefPt8wagdvR1n2xgmSpHeAih
 N0k1hgM7X4ZtJwm7SiKoo8yOBVxgjdWnZuK/gNdjZNyhkWAy1aCOmAhG1
 R9uLzyAE9HJkS3yRzgiqR+JlINlWtfe+AgsN/JsVSyoM5+X7YqYWW7dM1
 nYXIbBjlCrgXrLxfcY5XhlPUgecYlBMy8+/dJdzQFNB/L9vVn636NrW5b
 cuwLINnrWLF8zfZ4fDY9k935aWEYcntOSbDR/xncVQ8JfkP3hXCmAe+tn w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11024"; a="17026782"
X-IronPort-AV: E=Sophos;i="6.07,155,1708416000"; d="scan'208";a="17026782"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 01:29:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,155,1708416000"; d="scan'208";a="39009187"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Mar 2024 01:29:56 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 26 Mar 2024 01:29:56 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 26 Mar 2024 01:29:50 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 26 Mar 2024 01:29:50 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 26 Mar 2024 01:29:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ks5MzrFFoRDHPWdTbScu8tyjY6QmCnjgulkzILxvlVTlSPXanPxUDpOPhOaExv/HafjudR8dl+KsvgSu4Y7I75HBTTW7k7zRLYD5e8dofgncfHahHQKlm6lZl3AiGV7WVr9UZmnyykHqK5A8a5UQIROWVP4sPhONszswqDyUH2AdZrvD4zLqnjJGVVGcHHjTbeq4Ux2R6LLHdp2i+hDTAKO7Tgu/RI72zZ43o8P1aiOWbvkikekpaSeyRhdjN6WTfw5kG1MxB1ZcgJnMVJDA/5cJIAcYTrN26bqE+jH0YUEs0AHZbCT/uvlLyZcmXfZkPlsOy0fvfRn1RGd3POI9IA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ob3o9nPGDPtyEYZp/Kl1qURwhMPzFz5nt5wqlD0vAiw=;
 b=jJmQ6U0N/CPfNH3LDbSNgQGr9upArHvRlAO8eE+o+ubhGJt0+WUhJk16zb0oZCpnfYGiw3QLIZG0doHJ4+ar2KAqVIUUjwXgd+CG6q0o17tKZmfDY+d2aiivhrypt1MDM8+2flRwdCX4CArbsow44qfoeOPH0zIA5cnfjahnMmmFIOPp3RSE8TysHVuG7mYNrzdM+xc0iCd90Zf9WV8XsNEF8t2AWVBVVNQEka+gs6NkHF8yNWZ22M+MEZhiaypvDmUDZR6jkVxuX6Dx8Zk0dWzqma7q2fDYyys104TeD40LbmDxYQRfUTaDDj1Z1dTmZ2BzHCQ48QYiv7oSYaLtCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH0PR11MB7585.namprd11.prod.outlook.com (2603:10b6:510:28f::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.24; Tue, 26 Mar
 2024 08:29:34 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::31a1:93ed:8501:f2c9]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::31a1:93ed:8501:f2c9%3]) with mapi id 15.20.7409.031; Tue, 26 Mar 2024
 08:29:34 +0000
Message-ID: <80e03e57-fa37-4bf4-8db3-a0c6e4abf713@intel.com>
Date: Tue, 26 Mar 2024 13:59:28 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] drm/i915/lspcon: Separate lspcon probe and lspcon init
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20240322121832.4170061-1-ankit.k.nautiyal@intel.com>
 <20240322121832.4170061-3-ankit.k.nautiyal@intel.com>
 <878r26ibkw.fsf@intel.com> <92326ddd-a55e-4bc7-a869-3a09bb32c889@intel.com>
 <875xx9iirc.fsf@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <875xx9iirc.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0036.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:22::11) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH0PR11MB7585:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9TaOgexKpf4s2pIkX7gT2EHJcJsTc3fOH6liAVw7wx+wcuWNFa11G5OQiqAbwEOgQxfzeG51fMx/7rfe87SMUATkT72yql+FlARLFyeUg03eJ/0zrqluEodqxuWdk5PLVbKQRl7rgV3VK7wg8Jc8/DhFIx+Ui8ZAMpRQz9/OdSKNDcQkp58/Awaw0DaePApa7U9dUYbsZoAsp8xzJ1cZss/Jt46S7le1r85r+MFyJvbvz2u6KenwiuH27S+4FA8926fJXhuehruI37rUDNiJ9y4MIm9IIN9CKYx1Ob4V0AxPeUz/3JmIQpGmPAewPNfsU/PLY5nxFJ+vyVR/gDPbe3IGP0LqYXfOsceV1TPykBlPdCa3HsEpxye12rnnl7RU03e1ZYUlRyeeg46wirbMEWX/WBGtllRPwwrnmVwmyztPvGRjFzgtLf2JH2SevAA3NhaRFEjJaS5WPMJYJgeN1RaBKT8kQ3I6LLDT4r2xab+j2vqnfZYLP9gyy0mnPc4pbk9rAHrDYXcvViNQuCQxC1HdkerS4ii/D9CnnPHEEz8AveE9zkBNNRie8DWa74tRmawps7X2iSzJoCedN7nnjTeso1YbmMLp13xMLW6Q5onNFV8Zlk/KwamwOzjQ4XsN7eSufl7LryDq4VbJ75QTf0R1Z4/n4n9rCrmyxJJooSg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WFNMSHlkc2xodUJueFNrbUxzUHdEK1N2T1BsWEZCMk1wcGNJcFpkdlBvd3Jw?=
 =?utf-8?B?bDRsOGhnOXdOQVprSGUxQjFiTDRaODhjQjNMOUcwS0RmQS9OZ1dxcWhvL2lT?=
 =?utf-8?B?U1lySzZRVEp2YjY5dEpTM1d5K2ZZb3pmZkZYYzJweE5wZGVHU3JjUG9MT2Ey?=
 =?utf-8?B?UkFXbHFjd0xGOG1CTENubGJlS2Fwb0FBWEZuNjl3NU1pNFZtV2JqZ3ZhUFBI?=
 =?utf-8?B?My9SaGNwRG4rQi8reDJlWTk5dXVaaGg0Mm9ud0RxLzlwRlhtUExvSEsxVW01?=
 =?utf-8?B?M1dRMzN1NFQwZnRSUnBiUG9tKzFIdjdsR0hkRU0zWm9EVTBJaG1scXdGa1Zs?=
 =?utf-8?B?enRzOG1aYWtsKzQzRk5XL1U1VTJ0VldYN0NiYTlqSWlWU2k2bWluWHhHOUMv?=
 =?utf-8?B?Qmp6VHlVMWUrWDloaE1EVHVvQkdyQVlnVXc5ZnNJeTJYSmRaMTRkcDVodGRR?=
 =?utf-8?B?eE02OUVQQjk3Y0lEemZnRitLWmZ1d2JrTFU5VDZvTXdZSnZhSGFETGN6eWls?=
 =?utf-8?B?STZaL3JrclNxWWZpeXFsNXVLVStuMEJwRXNQZTBVT1pDWmhxNnFjRmIrWEQ4?=
 =?utf-8?B?T2hIMDB1clcrWGY3cW9EVDVWdm5QK3NGbkhVcXNDRHM4WDM2Z09lV1FYL0xr?=
 =?utf-8?B?bG00NzNtYlBIaUlTVGRkQkwvRzBtdEVhOXVPemlrVlkyMDJnN0Rwcmc4eStt?=
 =?utf-8?B?WkxxNFF3Q3FMcmdYZzBzQTNQMEVYL3kyTUtyWGNESTdMYVdjNGlPanprUzg3?=
 =?utf-8?B?M0tNUVpxai9uY2ZuSTZiOTRQZHFEVExhbndad05vU1hKVzhOaWw1OGlaTnNz?=
 =?utf-8?B?RmJLdXhIVXlDeDRLdGt0amt6a0NZRC9HUDN3aWtLaUMzY2xMODV6ajhUcXhm?=
 =?utf-8?B?bUM2M1hiMEJvNGFUZEdBVmUzWEVjYi9vbE9xaFVLM3dkYVpHT3dGYjNBTUN0?=
 =?utf-8?B?VFQwMThyTXkxcFE3eFNuejBUbE8yeG9Rak82S1E3WGk0YWVrK2hVenQ0SmNT?=
 =?utf-8?B?cC81eVZ2dTdJdS9GVm1wblhPZzRMVHNjODFYVDRIMlRwOEJiTTUya1dDNndT?=
 =?utf-8?B?cTlyTHdILy9xckdiWHV6OGtzMFp0cmdBMVpFS2JCSXR1K3VNYlVkN3ovMXMw?=
 =?utf-8?B?V0xsdWZDc1RVWlpQaHZsSUN0NUVLMzJXdTdsUjRUZXJmSGEyc044K1lyWStG?=
 =?utf-8?B?dzZnc2VHQy9VeTRJcW5FOGpwTitXMlJPbVVNUEN2K2ptSklmQzhVKzRsUG1h?=
 =?utf-8?B?VHUyK1REaVJOY054emtLQzY0L3dTRG1sTml6STVOc29obHpmaEd6K2d6N3Y2?=
 =?utf-8?B?Szd5RG9vdkZJeUJGcGlJUWNzeWEwODd5NnRDTXBNeDhHZEZaWDU0djVuR1NO?=
 =?utf-8?B?VlArZlJlektyR0owL2FVelhwd1NmaTYvTzNFOFRUakZ4UWdzcEZFSnlFSS9P?=
 =?utf-8?B?U1pFUlRpZFMySTZzUVZjR3hsVVZKVVNvdVdRUEIrcERteVMyMEEzaXZCbEw2?=
 =?utf-8?B?M09YVm5nNlVHeUZhd3A5MDVjbjFhK1ZZV21MckdxZXNqMnkvMVNBS1NLMnhH?=
 =?utf-8?B?cStSUHY5aHRHSHMvdmtkYlJySk84eEpFWng3clFyV1RvMjhockVWQ1JqY2pK?=
 =?utf-8?B?QWF6eXBCSVZXWTBEazZ4dC9JOUFPU3dwRFBYL256OWlSV1pNTVN4ZnJKQ0U0?=
 =?utf-8?B?QnllVjlLQ1RKUkx2aHRaR1IyWlUwdlZTczgxOW5NWW1FT29PWVpwVGxxc1VH?=
 =?utf-8?B?ZEZhRWl5SEREM2poeUE5bVRUYTA0V3pBMWJxWlRBdVdhalFhS1VJSHBPeGFC?=
 =?utf-8?B?R3ZYR2RrL2t0THlOdHZya0tJdWtRMlYxdjkzbURHMGRYWC93QjB5VVh2czBz?=
 =?utf-8?B?TVJTNUNFZGt0RlNkb0Q0TG9tUHppOFlISmE4WnlBR0RGb21RcUd3bFhRQ1Qv?=
 =?utf-8?B?WnhxYkpUYW1LMHFNYXlxWVdBcWVlNkFvZkplMnZkVjlmL0FJTngyMXFDbTBP?=
 =?utf-8?B?UFZsZit4cTFycHUxWTlZYzBBQVZUTjBVTm5xWlFWVWRteWpLNyt2TVhnRjdO?=
 =?utf-8?B?ZEJka3RmQ1BvcG9iYkhJNXVHYWNTeEROM21BN2NHRmRXeWR6cytjVCttWUVa?=
 =?utf-8?B?WXFNc2NRTWN4VkgwVjkzbm1sbDlBYmJWU0xnRzZoejJ3aHQ5WEQrd2lqQita?=
 =?utf-8?B?aWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b0e7ff9c-74f2-4c21-9bbd-08dc4d6eddee
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Mar 2024 08:29:34.8557 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xVtaP2HRMXMigrHVoVRzEyGLl2kpMJk5QjfKdAUJ/IJ5CaXHECph2BFJO7FlxQJgIGtPNN5oAnlJ4HKSMGHy5CxyY/HDm4oe8GsE9iKUafs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7585
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


On 3/26/2024 12:26 PM, Jani Nikula wrote:
> On Tue, 26 Mar 2024, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com> wrote:
>> On 3/25/2024 8:48 PM, Jani Nikula wrote:
>>> On Fri, 22 Mar 2024, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>>>> Currently we probe for lspcon, inside lspcon init. Which does 2 things:
>>>> probe the lspcon and set the expected LS/PCON mode.
>>>>
>>>> If there is no lspcon connected, the probe expectedly fails and
>>>> results in error message. This inturn gets propogated to
>>>> lspcon init and we get again error message for lspcon init
>>>> failure.
>>>>
>>>> Separate the probe function and avoid displaying error if probe fails.
>>>> If probe succeeds, only then start lspcon init and set the expected
>>>> LS/PCON mode as first step.
>>>>
>>>> While at it move the drm_err message in lspcon init, instead of the
>>>> caller.
>>>>
>>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>> ---
>>>>    drivers/gpu/drm/i915/display/intel_dp.c     |  3 +++
>>>>    drivers/gpu/drm/i915/display/intel_lspcon.c | 27 +++++++++++----------
>>>>    drivers/gpu/drm/i915/display/intel_lspcon.h |  1 +
>>>>    3 files changed, 18 insertions(+), 13 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>>>> index 94fa34f77cf0..ea8d3e70127e 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>>> @@ -5882,6 +5882,9 @@ intel_dp_connector_register(struct drm_connector *connector)
>>>>    	 * ToDo: Clean this up to handle lspcon init and resume more
>>>>    	 * efficiently and streamlined.
>>>>    	 */
>>>> +	if (!lspcon_probe(lspcon))
>>>> +		return ret;
>>>> +
>>>>    	if (lspcon_init(dig_port)) {
>>>>    		lspcon_detect_hdr_capability(lspcon);
>>>>    		if (lspcon->hdr_supported)
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
>>>> index 62159d3ead56..570fde848d00 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
>>>> @@ -266,7 +266,7 @@ static bool lspcon_set_expected_mode(struct intel_lspcon *lspcon)
>>>>    	return true;
>>>>    }
>>>>    
>>>> -static bool lspcon_probe(struct intel_lspcon *lspcon)
>>>> +bool lspcon_probe(struct intel_lspcon *lspcon)
>>>>    {
>>>>    	int retry;
>>>>    	enum drm_dp_dual_mode_type adaptor_type;
>>>> @@ -676,30 +676,31 @@ bool lspcon_init(struct intel_digital_port *dig_port)
>>>>    	lspcon->active = false;
>>>>    	lspcon->mode = DRM_LSPCON_MODE_INVALID;
>>>>    
>>>> -	if (!lspcon_probe(lspcon)) {
>>>> -		drm_err(&i915->drm, "Failed to probe lspcon\n");
>>>> -		return false;
>>>> -	}
>>>> -
>>>>    	if (!lspcon_set_expected_mode(lspcon)) {
>>>>    		drm_err(&i915->drm, "LSPCON Set expected Mode failed\n");
>>>> -		return false;
>>>> +		goto lspcon_init_failed;
>>>>    	}
>>>>    
>>>>    	if (drm_dp_read_dpcd_caps(&intel_dp->aux, intel_dp->dpcd) != 0) {
>>>>    		drm_err(&i915->drm, "LSPCON DPCD read failed\n");
>>>> -		return false;
>>>> +		goto lspcon_init_failed;
>>>>    	}
>>>>    
>>>>    	if (!lspcon_detect_vendor(lspcon)) {
>>>>    		drm_err(&i915->drm, "LSPCON vendor detection failed\n");
>>>> -		return false;
>>>> +		goto lspcon_init_failed;
>>>>    	}
>>>>    
>>>>    	connector->ycbcr_420_allowed = true;
>>>>    	lspcon->active = true;
>>>>    	drm_dbg_kms(&i915->drm, "Success: LSPCON init\n");
>>>>    	return true;
>>>> +
>>>> +lspcon_init_failed:
>>>> +	drm_err(&i915->drm, "LSPCON init failed on port %c\n",
>>>> +		port_name(dig_port->base.port));
>>> I guess the idea is to reduce dmesg errors, but in this function the
>>> error messages are multiplied.
>> Earlier we used to get the drm_error for init failure, even if the
>> LSPCON was not detected, which is printed as a debug print.
>>
>> Now we'll get the dmesg errors only if we detect lspcon and lspcon init
>> indeed fails.
> I was referring to lspcon_probe() which now has drm_err() on each of the
> branches which goto lspcon_init_failed, which has another
> drm_err(). There's no need for the extra error message.

Ah ok, I got it, I can get rid of extra error message at the end.

Thanks & Regards,

Ankit

> BR,
> Jani.
>
>
>> Regards,
>>
>> Ankit
>>
>>
>>> BR,
>>> Jani.
>>>
>>>> +
>>>> +	return false;
>>>>    }
>>>>    
>>>>    u32 intel_lspcon_infoframes_enabled(struct intel_encoder *encoder,
>>>> @@ -721,11 +722,11 @@ void lspcon_resume(struct intel_digital_port *dig_port)
>>>>    		return;
>>>>    
>>>>    	if (!lspcon->active) {
>>>> -		if (!lspcon_init(dig_port)) {
>>>> -			drm_err(&i915->drm, "LSPCON init failed on port %c\n",
>>>> -				port_name(dig_port->base.port));
>>>> +		if (!lspcon_probe(lspcon))
>>>> +			return;
>>>> +
>>>> +		if (!lspcon_init(dig_port))
>>>>    			return;
>>>> -		}
>>>>    	}
>>>>    
>>>>    	if (lspcon_wake_native_aux_ch(lspcon)) {
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.h b/drivers/gpu/drm/i915/display/intel_lspcon.h
>>>> index e19e10492b05..b156cc6b3a23 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_lspcon.h
>>>> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.h
>>>> @@ -16,6 +16,7 @@ struct intel_encoder;
>>>>    struct intel_lspcon;
>>>>    
>>>>    bool lspcon_init(struct intel_digital_port *dig_port);
>>>> +bool lspcon_probe(struct intel_lspcon *lspcon);
>>>>    void lspcon_detect_hdr_capability(struct intel_lspcon *lspcon);
>>>>    void lspcon_resume(struct intel_digital_port *dig_port);
>>>>    void lspcon_wait_pcon_mode(struct intel_lspcon *lspcon);
