Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B65D140C74E
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Sep 2021 16:20:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE9466E943;
	Wed, 15 Sep 2021 14:20:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3402F6E943
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Sep 2021 14:20:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10107"; a="283331450"
X-IronPort-AV: E=Sophos;i="5.85,295,1624345200"; d="scan'208";a="283331450"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2021 07:20:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,295,1624345200"; d="scan'208";a="508790157"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 15 Sep 2021 07:20:27 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 15 Sep 2021 07:20:26 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 15 Sep 2021 07:20:26 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 15 Sep 2021 07:20:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iiEt+8zGm5apPyVwM3sMYQ2BHF+wc3pUlh1T7v9yTMnlu3/8SHyXh+YNhaz7ABqnmla0OfoWwkbRlNuPEghabv8m4n3Q6D8R+KR49xs71K/Zhu0NXLipWOY48TbIstGVgJi4AT1MdlManenpIeCtngrd3i386XpF/BZMbRByxIm/PQIUQh7QNIKqMnnjBzXf28Jxm+vEjniICQ4o/yad/JWN5J9RKCUsP69rtZ2JuwkIEwUkLNLZdQyp3ItTC+PaNpDWcLcO9g+HnsbLTE+ph0YUSWPtqLJe8er/ri+a8JB/Z67cseP5/mnsMn3lGPZRwugnN3eOlcFVcbonuTpQAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=QODG7WOGfG9cIwdOALmVs20F3sr0k93CL96HKKUDzBQ=;
 b=d4jKPF8ZCrKN8PtHyTNlpy5v/yQqiGWU7McYJxQlipxk2HIQuF8yH/MXnfiFzG4zg1czOK6g5DFnXQTnoM1a3JGnXBBIId3GJCk1fEC1o0ImDXMHU5ya0KD1jeEL/3NfGjEb7ZDCeLkzi1q+ncqA6ZPfDEwASaS3y8B4zcpzd7TMyhvqCrx0XuvPr+k+zKDWmHKGN6GM64IZMyElRbGscZVyGs5QEWRVLQ+ccooteb1N+JQbL4jIHl+m/yL13dlaZ7T1ltdZWITO9q1OYS3SD8KRKzidKttzWYl4gV0zLb7/vTTBxdrhCdefwHupcKHC49beu2ox/isMX6FWByIV4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QODG7WOGfG9cIwdOALmVs20F3sr0k93CL96HKKUDzBQ=;
 b=SwFtm8GtTgiTQGwT1gvZ5QjJnFUJEKpfKsMInMhH6dak2FPQDeJCnhTmrCWZnRcKJIawv6iWpgSifVQEIJWJWRiVkCEiCOEUCFd5Cb1tfQXhaszO1r8PGnQlyEE91D5oFzozpo4+1k7I3zimiFKKbUj9uxwlKKxvV1dfB2IdLl0=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5409.namprd11.prod.outlook.com (2603:10b6:610:d0::7)
 by CH0PR11MB5522.namprd11.prod.outlook.com (2603:10b6:610:d5::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.14; Wed, 15 Sep
 2021 14:20:24 +0000
Received: from CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::c3e:dff7:364c:ba7]) by CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::c3e:dff7:364c:ba7%2]) with mapi id 15.20.4523.014; Wed, 15 Sep 2021
 14:20:24 +0000
To: =?UTF-8?Q?Jos=c3=a9_Roberto_de_Souza?= <jose.souza@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20210914212507.177511-1-jose.souza@intel.com>
 <20210914212507.177511-5-jose.souza@intel.com>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <f9a7ddb3-db68-5aa9-c2ae-93ce6a6d36b5@intel.com>
Date: Wed, 15 Sep 2021 17:20:15 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
In-Reply-To: <20210914212507.177511-5-jose.souza@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DB9PR05CA0011.eurprd05.prod.outlook.com
 (2603:10a6:10:1da::16) To CH0PR11MB5409.namprd11.prod.outlook.com
 (2603:10b6:610:d0::7)
MIME-Version: 1.0
Received: from [10.237.72.198] (134.134.137.89) by
 DB9PR05CA0011.eurprd05.prod.outlook.com (2603:10a6:10:1da::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4500.14 via Frontend Transport; Wed, 15 Sep 2021 14:20:22 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c7ce201f-5ae9-4a34-c39d-08d97853f4f9
X-MS-TrafficTypeDiagnostic: CH0PR11MB5522:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CH0PR11MB5522D5F56B086D52A0378B17B8DB9@CH0PR11MB5522.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2uNSjR5rSfi5c99g502XhIw5JMogU+fhB7XcdOfb45BeKg1QSNu5OthAy1tky+0gerhRX4OY/MnTIMr+HkdqKQLgURXPg0Nh1CEA1LcV7k9DNI8wm7n+PBAc5aQTaIlAWEqOaXHkfmQxEDIy8BffCY+4e1ECE6vN1Q+JLcybJAS7bp5MD7JwcdrxhA+P25zmaMJZtgqLoCvCZPjKGMW6C3B4c6bi09nHTU86BOVNgQ1e8mZPtkWNWrpQ/Cit41nZsUk5OLAGtMQtAPfxXTpfAzCICnNXb1dPiDX8P+LNxfZLhkB1m0hfWIIFXgDgDoqdlQBsLU8OzdNqw96Y5a+9cvPEo0Rjnh8dop4dbdQV40QWMrDkqwyexJuB/cFbUHWEQVVv4xDyourNEOrLEeLDQZXK5CFASefA3KyLPEmpds+cwY37R2fcU9JKdi2+idoxHLbUgqRUz9CZMPjkN2AxQeq60LC+7sg82k1sbyVFEpO4AaYMs31JyRy7kXMCS0FPbpNtc5Dbpu8CU4pDjQAGG8kb/QpsZ0oHXM9/NU8PaqYts2jbmuKQwpbH4vUALCzUlhterGJ5A6XAdtbqaOZLXxlKZ61uXnUUxNH0iKFNhnCKfoSan28833lezJXO5KLmsmLNikEd+4bmo6u0BW85db+PnawiAW7hGgRA4FDuvXxwhc8v+kSPoU7SsXOvi2Kyde1u7/s9kzC2A7AepiisoiNjQlpH6pMl1DgRtuk2+aY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(376002)(346002)(136003)(39860400002)(366004)(66946007)(6486002)(478600001)(2616005)(956004)(83380400001)(8936002)(8676002)(66556008)(16576012)(316002)(86362001)(186003)(38100700002)(26005)(6666004)(66476007)(31696002)(31686004)(36756003)(2906002)(53546011)(5660300002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K2hRMmVLN0JrREt6aStkV2I2cFd0UjRKS2o0dVpUYWVpMnB3a0NRVjJoNTZP?=
 =?utf-8?B?OWpnSFBXY3hxYlhTYzN5WXE5RUExY01Dcm5wUWFOaEpxMzl6VWZoVnRnMUdT?=
 =?utf-8?B?QzRlZkNxbWRPQ3I4WU5HbzFhd0phTFpVWjNIK0lEQWxDbm95R1VkNnIzVXN3?=
 =?utf-8?B?K0tsdEhVNlU3TnlramhyaDJpVFFZY2F1d2xuUVBiU1BDbHViYmNrR3NiMS9F?=
 =?utf-8?B?UkkzOHJDSWxYd0V2bFNvV1hINitPT3BhQjBpK1J5SzhObk1rL1d6UDJIaVhO?=
 =?utf-8?B?aGRiTVVPKzRFaFZaV2hQMWpscm5Kb21yL0hlNEVQOTM0ZjAzYzErbDNqY1hS?=
 =?utf-8?B?Z2xLOFBCb0hremcrM2FsL25GWkMrUUFPZE9UcHppOHozMGdJaGloOGNEMWtO?=
 =?utf-8?B?SFpqYUJZcHBYcXUrRnNDQ3YyNEVaTHFRWW5WQkUwMkRXZlBSV0p1aGdZZWZH?=
 =?utf-8?B?akt5UTJGR2U1NkdkdjJRSFN2MXRVRENwemRCQ3dBNERqL2FuY2JqNU1xZE9q?=
 =?utf-8?B?UzFoekY0VVQ3M1ZPaHJnM3hibm9PZGM0OTM2cWozVURiakVRdUNpNWFYWHB6?=
 =?utf-8?B?VkpSL3RFc05PZFZNaVBXdG1IVmR0VnFQTjF0QzBUWjFEVzJKc2VpcGlsT2hH?=
 =?utf-8?B?MTRZbHVBSEx6MW9PM3hWK2p6aTNveDhGNUtBYW1qdTc4RktvYXlVRFpQb0NJ?=
 =?utf-8?B?NkVkV3JyNEd5bVJEUGo4bytuY3pMMGtEdmRIc05zaElpVXl2Z3pGUHpaVXJ0?=
 =?utf-8?B?Vi8xdDU1QlBvc3d6cE9NaWVaRmtLNHBEdW5Md1A1TEMzUFIxMVVOd09Wckcx?=
 =?utf-8?B?WDNFYnVBZTd0TElMQzEwS0JVZlptS2ZYa0tKOHRKb3RteU12Zm40WUN6TlB3?=
 =?utf-8?B?VHRWOVUyV3lZQ0VVaE12ZTNmUG16dEwydTV2R05nVFZNYVo4MVVNSTllWlZk?=
 =?utf-8?B?eHZHTWNsT0VWRktkV2svQjRjcXJ3ZHpoRmxtRFQwZG4xYWxnbThYZGx0Q0J6?=
 =?utf-8?B?S29vZmtCRFhzZHJhVFFzdWZ5bURqWWRrSkhQNDREU1pKdmJhVS83RWRSeGZN?=
 =?utf-8?B?K2RhblBicXpyUUYrZStXQitYSW5qR0RLcUltSEd3VmZBWEZjUndQTzA2a0RD?=
 =?utf-8?B?UmJSSEw1bnFDZEk4S2ZYSUxSOVBpTDBIN3hUR2t4bGxTTkZoY0dxcmJrdkFZ?=
 =?utf-8?B?NlZkR2pTU1pnT004SU1lb0pwMys2eDJsMVpSdDNSWEtBZCttTm1WN0xUZ09l?=
 =?utf-8?B?VytiQVQ4QXpwY1dnN0JjeExDdmhxdlBwYm1MOUczWFM4VXhQWWgvckNSYkZ4?=
 =?utf-8?B?bUM2NGtYcVo5UENxVmtsY3l2aDA0YlBSb2txWXF4QmhlSWpGL1Q4d0NRWDdV?=
 =?utf-8?B?VWdWeXdkTzJGWHhZRWZnUnVkd3JFcC9Ec3R2NU11SFU3eWFxUXRwMi9OZzFW?=
 =?utf-8?B?VGtRK3VUNjUrRnMwZGJhTmw2ZUFOUCtnN212a1B1VjBtbTExTHliajFIRG1N?=
 =?utf-8?B?VHZGS1hGSDlFa1NyU09sOXdWYWdVQzdBR1VwT3dBcFR6RHZYcXNFQmhkblJv?=
 =?utf-8?B?L3FWSGlWTUhsOTI1L1BFTXZsK0MzdVZtYVkwQlZPZjFJWkFheUJ6dExOQ1lo?=
 =?utf-8?B?Qm1CSUNSUTQ1Nk1qYVdYVDh0VUJCSm5zc0QySEJyc3EwY2pVYTB0WWhERnpv?=
 =?utf-8?B?TWw1c3VidUlBR0JiUVNJWDZnVUtnZE1hMFExbXBiWFM2VTladTk5RE5jQ3ND?=
 =?utf-8?Q?iCllXxjsBTDCTkfWNPquZeCWGeYG6/E87zTB6rb?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c7ce201f-5ae9-4a34-c39d-08d97853f4f9
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Sep 2021 14:20:23.9742 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XRJrU81OCmD8cmAOGc817ZKjnRNrSFZ/eEUjHyI3w3tbYKjRxkFmiCsA0hr82oKr9JUAr58QpBA0qoCxoznXnKE48BMcEcpH+dKCuIGtIx4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5522
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 5/5] drm/i915/display/adlp: Add new PSR2
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

Looks good to me.

Reviewed-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>

On 9/15/21 12:25 AM, José Roberto de Souza wrote:
> Wa_16014451276 fixes the starting coordinate for PSR2 selective
> updates. CHICKEN_TRANS definition of the workaround bit has a wrong
> name based on workaround definition and HSD.
> 
> Wa_14014971508 allows the screen to continue to be updated when
> coming back from DC5/DC6 and SF_SINGLE_FULL_FRAME bit is not kept
> set in PSR2_MAN_TRK_CTL.
> 
> Wa_16012604467 fixes underruns when exiting PSR2 when it is in one
> of its internal states.
> 
> Wa_14014971508 is still in pending status in BSpec but by
> the time this is reviewed and ready to be merged it will be finalized.
> 
> v2:
> - renamed register to ADLP_1_BASED_X_GRANULARITY
> - added comment about all ADL-P supported panels being 1 based X
> granularity
> 
> BSpec: 54369
> BSpec: 50054
> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_psr.c | 27 +++++++++++++++++++++++-
>   drivers/gpu/drm/i915/i915_reg.h          |  4 ++++
>   2 files changed, 30 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 5a1535e11e6bd..c1894b056d6c1 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1087,6 +1087,16 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp)
>   		intel_de_write(dev_priv, reg, chicken);
>   	}
>   
> +	/*
> +	 * Wa_16014451276:adlp
> +	 * All supported adlp panels have 1-based X granularity, this may
> +	 * cause issues if non-supported panels are used.
> +	 */
> +	if (IS_ALDERLAKE_P(dev_priv) &&
> +	    intel_dp->psr.psr2_enabled)
> +		intel_de_rmw(dev_priv, CHICKEN_TRANS(cpu_transcoder), 0,
> +			     ADLP_1_BASED_X_GRANULARITY);
> +
>   	/*
>   	 * Per Spec: Avoid continuous PSR exit by masking MEMUP and HPD also
>   	 * mask LPSP to avoid dependency on other drivers that might block
> @@ -1132,6 +1142,11 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp)
>   			     TRANS_SET_CONTEXT_LATENCY(intel_dp->psr.transcoder),
>   			     TRANS_SET_CONTEXT_LATENCY_MASK,
>   			     TRANS_SET_CONTEXT_LATENCY_VALUE(1));
> +
> +	/* Wa_16012604467:adlp */
> +	if (IS_ALDERLAKE_P(dev_priv) && intel_dp->psr.psr2_enabled)
> +		intel_de_rmw(dev_priv, CLKGATE_DIS_MISC, 0,
> +			     CLKGATE_DIS_MISC_DMASC_GATING_DIS);
>   }
>   
>   static bool psr_interrupt_error_check(struct intel_dp *intel_dp)
> @@ -1321,6 +1336,11 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
>   			     TRANS_SET_CONTEXT_LATENCY(intel_dp->psr.transcoder),
>   			     TRANS_SET_CONTEXT_LATENCY_MASK, 0);
>   
> +	/* Wa_16012604467:adlp */
> +	if (IS_ALDERLAKE_P(dev_priv) && intel_dp->psr.psr2_enabled)
> +		intel_de_rmw(dev_priv, CLKGATE_DIS_MISC,
> +			     CLKGATE_DIS_MISC_DMASC_GATING_DIS, 0);
> +
>   	intel_snps_phy_update_psr_power_state(dev_priv, phy, false);
>   
>   	/* Disable PSR on Sink */
> @@ -1489,8 +1509,13 @@ static void psr2_man_trk_ctl_calc(struct intel_crtc_state *crtc_state,
>   	u32 val = PSR2_MAN_TRK_CTL_ENABLE;
>   
>   	if (full_update) {
> +		/*
> +		 * Wa_14014971508:adlp
> +		 * SINGLE_FULL_FRAME bit is not hold in register so can not be
> +		 * restored by DMC, so using CONTINUOS_FULL_FRAME to mimic that
> +		 */
>   		if (IS_ALDERLAKE_P(dev_priv))
> -			val |= ADLP_PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME;
> +			val |= ADLP_PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME;
>   		else
>   			val |= PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME;
>   
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index c2853cc005ee6..c3a21f7c003de 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -8235,6 +8235,7 @@ enum {
>   #define  VSC_DATA_SEL_SOFTWARE_CONTROL	REG_BIT(25) /* GLK */
>   #define  FECSTALL_DIS_DPTSTREAM_DPTTG	REG_BIT(23)
>   #define  DDI_TRAINING_OVERRIDE_ENABLE	REG_BIT(19)
> +#define  ADLP_1_BASED_X_GRANULARITY	REG_BIT(18)
>   #define  DDI_TRAINING_OVERRIDE_VALUE	REG_BIT(18)
>   #define  DDIE_TRAINING_OVERRIDE_ENABLE	REG_BIT(17) /* CHICKEN_TRANS_A only */
>   #define  DDIE_TRAINING_OVERRIDE_VALUE	REG_BIT(16) /* CHICKEN_TRANS_A only */
> @@ -12789,4 +12790,7 @@ enum skl_power_gate {
>   #define CLKREQ_POLICY			_MMIO(0x101038)
>   #define  CLKREQ_POLICY_MEM_UP_OVRD	REG_BIT(1)
>   
> +#define CLKGATE_DIS_MISC			_MMIO(0x46534)
> +#define  CLKGATE_DIS_MISC_DMASC_GATING_DIS	REG_BIT(21)
> +
>   #endif /* _I915_REG_H_ */
> 
