Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C2CAD406CF6
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Sep 2021 15:38:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C540F6E9FA;
	Fri, 10 Sep 2021 13:38:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EB2C6E9FA
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Sep 2021 13:38:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10102"; a="221113501"
X-IronPort-AV: E=Sophos;i="5.85,283,1624345200"; d="scan'208";a="221113501"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2021 06:38:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,283,1624345200"; d="scan'208";a="697119838"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga005.fm.intel.com with ESMTP; 10 Sep 2021 06:38:16 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 10 Sep 2021 06:38:15 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 10 Sep 2021 06:38:15 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 10 Sep 2021 06:38:15 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Fri, 10 Sep 2021 06:38:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TMWtoMv0JLV/7BAy6EqVZSQ2PjzMGAjKevSjrXgU7jNle+H44rD5pfk/0MoHsfrG/T3o3k+EN8QWtar6AzvyLLtFagyDvsJaZ5y7wrjHtFUvMTYuIEQ5wZP2fWtpPjK3OzD8J4kZEJj0UNW4fWRjbpV8txyga3g3bUbXPks5H27N0Q46vjrTk/ZUv7/43SggI4ChbCzqaQENSQDHz3cCrvC4VmE5CI21atmMmvMAYV+29267Grzgcu2ac2Hj/JvdZhnKc3jW0Jw6RwaVghtEIf+ZM9K0l+51AYqOLc3Ypk1vrjDJOU7oH1dCSpSqUBFH+JmuOwV8g3cRSBdPaUv2cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=tmDIu6LmVCJYri6Rpgtb4cEnOZ8saRsQ7Bawoq6PQzI=;
 b=LaoI8fMSqIRQEYz8+bo4pwFMZ+BBF6L/4T2kz6kscHNyNetJBrOUXK9Q97/GwYn1AHEaaeQFSIaZfmBEnAHdBWAz0UEXCbMahWkt9wfauKuRwsvtWhD0JFOXxCID8jQuU1JNHe5xi8hF777coYFsFCbmDQKe5QH6PYgJqY0398Ag/HEmV5ohqJHWZmiyO1u+7atthFqeszuW3oLTcg0fEn11kULIEGENRQE2CaPhOhHpjula9H2WT9hHvo0CROdz0s4IBNK8RsUykmP9e2KFogQ3htD4xLQ1RqLxLHFi+BOBeZgJ7NQwAXLbAeDU+wWXF4OSVqYKRQJ6QABe7idbYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tmDIu6LmVCJYri6Rpgtb4cEnOZ8saRsQ7Bawoq6PQzI=;
 b=dYXgTev7SJan3vw6j4Pcn0WYw57R/a6lTHB10LWw+XXwLua+BID9jQByHPFId7krPlACGDEPkZScydzaVl84aTJap4943F6G1ztU3zlr3L5w3hw45K279ggXo0nr+mrPQcmMuYM3due7ZBIawhQDLqswyQp4Lg3HGq5vrW4T4jo=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5409.namprd11.prod.outlook.com (2603:10b6:610:d0::7)
 by CH0PR11MB5425.namprd11.prod.outlook.com (2603:10b6:610:d0::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14; Fri, 10 Sep
 2021 13:38:13 +0000
Received: from CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::c3e:dff7:364c:ba7]) by CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::c3e:dff7:364c:ba7%2]) with mapi id 15.20.4500.018; Fri, 10 Sep 2021
 13:38:13 +0000
To: =?UTF-8?Q?Jos=c3=a9_Roberto_de_Souza?= <jose.souza@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20210909230725.33735-1-jose.souza@intel.com>
 <20210909230725.33735-2-jose.souza@intel.com>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <4efdadcc-c8f5-cfdd-9b79-ce780920fb9b@intel.com>
Date: Fri, 10 Sep 2021 16:38:04 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
In-Reply-To: <20210909230725.33735-2-jose.souza@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DU2PR04CA0330.eurprd04.prod.outlook.com
 (2603:10a6:10:2b5::35) To CH0PR11MB5409.namprd11.prod.outlook.com
 (2603:10b6:610:d0::7)
MIME-Version: 1.0
Received: from [10.237.72.198] (134.134.137.85) by
 DU2PR04CA0330.eurprd04.prod.outlook.com (2603:10a6:10:2b5::35) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4500.14 via Frontend Transport; Fri, 10 Sep 2021 13:38:11 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ad976c3a-58ec-4798-a37f-08d974603c6a
X-MS-TrafficTypeDiagnostic: CH0PR11MB5425:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CH0PR11MB542509C3BC2C4C076CAA322BB8D69@CH0PR11MB5425.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: isNRWSqJpsEWjNAX6w3CnIhZcbc1DYYL6JVHoY0Wj0LGTD22TrOa5dINW99zW2twEUW4uOUyKdEZ+F1SSAPk+7GqWOUx9cgy8KUKd7Dj0ZB9w0tAZG5H+/PeSFY5srXyWncHP8Y4sQr9D0/tQcQMzlzQSBhqlyUM8gu5LJKD445g3kd6lhHyoERfQ1pNMm80N2rJv4Vjk89X/W/RGP2X5ZHz8xVQxpDsUNivJCWB8gFbz1ie+rn6TRc9DanCy8eK3iSL7UsUgxMS519A9jpNNrrshB7gBWTEOeReVIxPL4dowraBXaITKVRm2Xf3UfuNyltrP9OtG22CEleVz/RK09G/T+BMORpSNgaAf/PEmMiNVoShW4W1t9QXqvB+F37WQMFItfxOjUliod4Uu3Sy+0tRZemCqiOrPf4ERWi0Z47wjbisHpCP8ibTD0QfGEUZwrFaEtbUOBsy4c7Fv9UQmaWn08TdbLevdA2ls1RR4ZUQ4p7zqXnBn1hyYhXGRfucsc6lTK9Lb3X3GJHJktRyOG+iVV+1K8TgNf7Vz0DRqdtxjaqS6xiPvvwg4NnrorUOoX3Okt0IfiNwGiObl4LVGuqlTucq8+Q00Po27MhIsrF4Ak+6WAo270zCNN+GaGyl+CAd6NYWeRuNAc3N7l6Sk/pb6JX29FSNp5x7mhfRq4YdC7kJdbam3O+PRTGrBefO1X8VE5GxUH1j/Yp+hnNqrKVN8eLNP3Pj62zin36T12c=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(366004)(396003)(39860400002)(136003)(376002)(2906002)(186003)(956004)(2616005)(478600001)(38100700002)(31686004)(8676002)(6666004)(86362001)(66556008)(66476007)(66946007)(8936002)(53546011)(31696002)(316002)(16576012)(6486002)(83380400001)(36756003)(5660300002)(26005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bHlvSWt0QkNYOWoyT2lJQUd1KzJ2eGdhUlhReGg3eE9UNUlBNlY0TTJCN253?=
 =?utf-8?B?ZkJ1Mk9GcERCbzNaRVJEeklDOTY4aFZSbnRCNkFienpoaDNiWEliMWcrZS94?=
 =?utf-8?B?QnJaYThNcTU0SVFvYWdPTnowTFc3Z2lIdi9xakZxYUZ2N2FaVXlzVU5ST2J5?=
 =?utf-8?B?U29hOUpKSEVnR1J1NmczV1F5NitiaGlrMC94dHFnRkdxQS8xRTBEenJqM0Jj?=
 =?utf-8?B?dmtjY2J3bStlNlQyck1pUnFuV2pVUDdHZ2lYZFp4SUtWQjJrWS9SWDdaTEhM?=
 =?utf-8?B?cDh2Q3dtVW80U3ZWVVVBc25pR3EzdFZNT09QRDFQWVg2WEtOTm14SFdhTGc0?=
 =?utf-8?B?ZTA4UXhVc1k3NmxGbUxJMDM4V0FZeVRxeDN1bExnTkpsdXBqaGdJNS9lb3Vw?=
 =?utf-8?B?aG1rZDFpNUpMM1U5dVNUVVpPTGF1UjR1TGlUM0RDWENWVmt6YVZqL3V0Y1U3?=
 =?utf-8?B?T0F5ekxTdlRMMVRxSUhhUWoxTjhzV0QwQ3B1T0ZmbVJmYkxkeHhkbm9XWHhY?=
 =?utf-8?B?UGYwS3pCenZET1NVcXBZY0kvZVMwVjhzdGRIRldKNng0aUh0Tng5WkJCVjBq?=
 =?utf-8?B?WlNBNWM1RTFMcW9MZFR2QnFnZzF4eUlaZE9nb2FxNXEzdlpQNkZHd3UzTEhY?=
 =?utf-8?B?SEVIOUVydFU4akxhTGhzOVc3WEdZVmlYcjgxZWxDSWR1c1ZTMXhjYWRlbENS?=
 =?utf-8?B?OW1wcmdHYWhNQWhmOWtFQ1JKTlJFbHdEaDRXdjdVQUh4REJabC9VcEp3WVRF?=
 =?utf-8?B?Nm5EQjhmM0dPbDZKUU1kL01XSnhRa2hqZENwZ1BROFEzaUVmU0o1YkN1ZVd0?=
 =?utf-8?B?a2loajlwWVJsZXN2OFdtcENIaXJGYUNiMlRQOURrb2F0ZTRMOXhPM0RBMVd6?=
 =?utf-8?B?LzY0WW9SeG9EcSt0UU1zZUlHTU1NY0lndXkzUThtNE1NL0N6bnJCNnBMcHha?=
 =?utf-8?B?OE5vWEtvQmJhdklPQkxmbWxNQzEyK2c5ejF3djlUTnJtMjZOSHJsMWw0WXA2?=
 =?utf-8?B?T0M1aGZ2MENTZmk1T2JLNXBwZTZSY21DZFFRMnJXdTVoSFVGZncwdTVjRDF1?=
 =?utf-8?B?Rmw1VVlDRUpMYTVyKy9KQWNlc2g3enJXQVoyejhYdUZ2M1hyL3ZPU1k0KzV1?=
 =?utf-8?B?cEl5OXdlRDRBQXhNVHRuMzZvSW42YXRaZTBEaWEwcFIzYndWdXVmeXgwRnI1?=
 =?utf-8?B?QUllWSttcXhTK1d0NFRlOEJHbW1hVHFJTC94b0ZIczZTcWJRSXBub1A4QXNT?=
 =?utf-8?B?TlRrY0ZuSkdhNnpZQU1xbFJ0TXJGSzFwUU9vMGluaWpjYzVNcmdYdlZQazZI?=
 =?utf-8?B?QmMzOTJld2tQV1V4d1Q1NmlMeExpR0t6bVpyUyt5NWtlam9HM05tbFkrQkMy?=
 =?utf-8?B?MTlmNmoycG1vVlJaRGlpME13TFRPYnBOT0dQM3BrQmdnYytrL2ZnaGI5RHVl?=
 =?utf-8?B?N2taSEdqditDdWdnTURiMitvZ3BkUlR2aFV6enl0WFpEU3IyRWhvVDlGMXBV?=
 =?utf-8?B?VVJYcVBtZVZyOGNsTFBWaTNWRzlBOGpTSTViY2NRQ0FvOURvdFV6dmxCVlEz?=
 =?utf-8?B?Tk9tMHVYV3dPY0Q1Y1JBdlNhWkxYVW43QUlPY1JZQUtHZCt6VDNvTHBTSnAv?=
 =?utf-8?B?dEdwRmRvRWUxS3VtYkc4NVVpL1hWcUFBNnJGYWEyVHpRSCt3OWUvTlZkRTJm?=
 =?utf-8?B?UU8yWUplTUcvYm11YnduMlBWS1cwVU1RTnlIRTZKNjhLQnFPZ3lrUjRKQ2p4?=
 =?utf-8?Q?22uJSzJ5NUZjpcJdkAUFRyUcYRO8WjHD8jFiLXC?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ad976c3a-58ec-4798-a37f-08d974603c6a
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Sep 2021 13:38:13.0025 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: df8R7AgBLV7VQhbxmFR57ZHXz8Eqfa5bxD5cxswCXumshSYUpukYPLgDnvIxAa+w4LOp+PnipHkpMlwHwk3mHfp15TMjNBFoWc9Z4vVo5SY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5425
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915/display/adlp: Add new PSR2
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



On 9/10/21 2:07 AM, José Roberto de Souza wrote:
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
> BSpec: 54369
> BSpec: 50054
> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_psr.c | 23 ++++++++++++++++++++++-
>   drivers/gpu/drm/i915/i915_reg.h          |  4 ++++
>   2 files changed, 26 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 36816abb3bcc0..92c0b2159559f 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1086,6 +1086,12 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp)
>   		intel_de_write(dev_priv, reg, chicken);
>   	}
>   
> +	/* Wa_16014451276:adlp */
> +	if (IS_ALDERLAKE_P(dev_priv) &&
> +	    intel_dp->psr.psr2_enabled)
> +		intel_de_rmw(dev_priv, CHICKEN_TRANS(cpu_transcoder), 0,
> +			     D13_1_BASED_X_GRANULARITY);
Depending on the capability of the PSR panel, the following setting may 
not be necessary, could you add some comments such as "force enable 
1-based X granularity on PSR2 VSC SDP"?
> +
>   	/*
>   	 * Per Spec: Avoid continuous PSR exit by masking MEMUP and HPD also
>   	 * mask LPSP to avoid dependency on other drivers that might block
> @@ -1131,6 +1137,11 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp)
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
> @@ -1320,6 +1331,11 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
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
> @@ -1488,8 +1504,13 @@ static void psr2_man_trk_ctl_calc(struct intel_crtc_state *crtc_state,
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
> index c2853cc005ee6..0de2f7541da6c 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -8235,6 +8235,7 @@ enum {
>   #define  VSC_DATA_SEL_SOFTWARE_CONTROL	REG_BIT(25) /* GLK */
>   #define  FECSTALL_DIS_DPTSTREAM_DPTTG	REG_BIT(23)
>   #define  DDI_TRAINING_OVERRIDE_ENABLE	REG_BIT(19)
> +#define  D13_1_BASED_X_GRANULARITY	REG_BIT(18)
The meaning of this macro is to set "force enable 1-based X granularity 
on PSR2 VSC SDP" in Display 13.1 ADL, so the meaning of the macro may be 
a little ambiguous.
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
