Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE1CC6E83E0
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Apr 2023 23:40:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33E3110E1F4;
	Wed, 19 Apr 2023 21:40:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 675F810E1F4
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Apr 2023 21:40:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681940450; x=1713476450;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Ajs3SdG5AZV8dESc7FXYK/5Se7gW0CevDpGeL0Y5Dr4=;
 b=XqPYNsuArZgmEF/km/aoSFZRVPqp21blKSy3WKfJZJBhhyEFrDmoS7zN
 HavOlvijbPrYMbAZrdrx0jw+f05Clv8iy8c0yeTabEoklDPDkpp3/A/FP
 Y4r9urgMk/Z/gOOFbACrXYQ6w/JIb7CU9ldZdef1zM0ZJfW1yCIynCh8R
 LdBwtmgDWhxcfbXk/+v3yWVLsNdgkdHcp/kMw3tFUS2Zuca+UszQqGHBZ
 0oI+D8xn0x0F/Zw6Rha3uNtItYTXEjkpSBeMNzHCJGBInX//hpLQ2GXSU
 PGrleD+sqOcDnfDE3e/Evr7/AQFvPUBHWljKbGHqKWaDfvvqxDcc2Mrl8 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="329741158"
X-IronPort-AV: E=Sophos;i="5.99,210,1677571200"; d="scan'208";a="329741158"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 14:40:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="937818646"
X-IronPort-AV: E=Sophos;i="5.99,210,1677571200"; d="scan'208";a="937818646"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga006.fm.intel.com with ESMTP; 19 Apr 2023 14:40:49 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 19 Apr 2023 14:40:49 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 19 Apr 2023 14:40:49 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 19 Apr 2023 14:40:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eBU1RD9arW9cmqU6rkXhM+Xoif6+H23tcU95GPARCJWmEmIpLD2I/8UhWo8Zy6asMFNOQwvusaoeecLMs6BlAzC8kuzjEGyX3lqbqLC6/vRmBig/+wGCDjWEpVSbTY5B8rBPdbtljZTqz3q/yIZYUwcUpuGmh/wPEr20qDPor4Ix5/oELzUodvpxS/7v9mCdJJ6db3XPnXeMWW5QOVnLhEfC4ZeRMpjFWkgnrcP2scxKzsdiXQ0XbjCKa4muedxC0lFZeF+8WvO+XSYEOiduW6+mbBOn1+CtE1qcNT/vENfPCWU577z4VtYhhuWwWI1fpMkjG51qsGPWOsFC0TjzjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V9X+uWknCQx+Ely9lNeU/15Br5J9oR16W3FGLaioW4Q=;
 b=baP6qbpZpG76pQRIqDm9u2bcaeDbIy4snJ72h6x487wi7zfn8PP5z1OuwtEXerJvL3uh1lP1DHT+Ta3mUWNhXnP7+Nu0qcOpknG0USvHXghlFmM85NopRadYY+N+2big1u5ePMdbgNyXszVz2cskBNZJTZwoIH5rMbdkJkoBhiGwz6Am41AQ5CGerd0uaVARx8//7kq3HiKaXTpryor7NCYQqRLyblc2zOi9pUifIUA3cPPojqgibtRpcduxvSnY6IyV6OXyd2OxptZ9K8z4Eq7KgT8t1s9LC20YzseN/UPTE56g2nNGTBBhZDZ6Q78ksfUl/az8YUon+gZpP0lEIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN2PR11MB4239.namprd11.prod.outlook.com (2603:10b6:208:192::20)
 by PH8PR11MB7045.namprd11.prod.outlook.com (2603:10b6:510:217::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.28; Wed, 19 Apr
 2023 21:40:41 +0000
Received: from MN2PR11MB4239.namprd11.prod.outlook.com
 ([fe80::4c7:f160:a73c:86d7]) by MN2PR11MB4239.namprd11.prod.outlook.com
 ([fe80::4c7:f160:a73c:86d7%6]) with mapi id 15.20.6298.045; Wed, 19 Apr 2023
 21:40:41 +0000
Date: Wed, 19 Apr 2023 14:40:33 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Message-ID: <ZEBf0SWcSfDKolpl@msatwood-mobl>
References: <20230418220446.2205509-1-radhakrishna.sripada@intel.com>
 <20230418220446.2205509-4-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20230418220446.2205509-4-radhakrishna.sripada@intel.com>
X-ClientProxiedBy: MW4PR04CA0167.namprd04.prod.outlook.com
 (2603:10b6:303:85::22) To MN2PR11MB4239.namprd11.prod.outlook.com
 (2603:10b6:208:192::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN2PR11MB4239:EE_|PH8PR11MB7045:EE_
X-MS-Office365-Filtering-Correlation-Id: 4ccacd95-6d51-46cd-a4a7-08db411eb914
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Toa3Kaca9KTlivv9PRlV8rH+MHjOhrLjImkuBO/rvDxuifeF4VIFF9DtUFAQVbqBeJmj1TmOoWkLvftbFpV2EySfU797mmsOZZDHOj4goKGnV43ec9E4YSIxkQIxp1O0aJnGf6DeUY7J0dLV8K3hylAk0mPeSVd2iaJODuUfFAj1gHBY8kfWSX/cV0Wu73gHLQ3+u+1uSYyWhwFZK8qvV6P4WZRppCya8tPj489+u8v80uBj8UcvxdjoOZz9I/IChgHeUpD61zelOroZD081AI49+XTd2fC0bsiMo+3fAjdKLsyWnLRxlFlng007EFgIphwIeq3h28APoePQACXTWyoDNU5iMheFVZu9BZURyg5NdVutei4oueDtqBs7/D2H9yvmI/szZ8icDT/VeO5+HN9lRijorS8WQDfUEfkPDN7amX5gRnCpE33tvZyKKU9AnnxRiZZzvAnP5NPMhDz/LBaXABs73wDLYI9VAsc14w4sPFJ3BerxYMvczbTmrmqJw4R1NiTsXGE6LOJNdnxJ3jDaMnjNs3BUj1m5gO7vCInKJXw6hrV2acs9qXTsyGHa
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4239.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(346002)(136003)(366004)(396003)(376002)(39860400002)(451199021)(82960400001)(6506007)(6512007)(2906002)(9686003)(26005)(5660300002)(186003)(8676002)(8936002)(316002)(83380400001)(41300700001)(86362001)(33716001)(66946007)(6486002)(66476007)(4326008)(66556008)(478600001)(38100700002)(6666004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VmUwbDd0aGVpNktuMjJYeWE5R3djem93akQyQi9JZ3c2SnlRUUFTNlRuRDZ1?=
 =?utf-8?B?dTVJczEzY1ZtMzlFaEpCUnNDSnQxK1kzVm5JUkJTU1VETjBFNk1la3JvUkFL?=
 =?utf-8?B?UWlqeGN4a1d6UTZXbWlHN3U3SE52Tlo1TndyKzJ4ejA5OVRvVm4rVlpXRE9y?=
 =?utf-8?B?UzBGNUExaHJoem51RUlMY0w5dFZQMmlHMVBhRVVhVkhRRFZTRTdmQjdZVnF4?=
 =?utf-8?B?VjNib1FFVDQxdzByeWxlWEE1d25NRWpsTFc3bDVJT1lKTFBUVmF6V3o4M09k?=
 =?utf-8?B?bGovdm5Pd09keHBVUzNlTEtkS0crVzBHMGpIT3VvcGY3cWNGQnozZDJ6WTM5?=
 =?utf-8?B?dlJtKzB4UTUvTjJjUW9vVFZJMnpBL3pCbUR6T0Fma0hKaU1KSkQzQVp3Y0NG?=
 =?utf-8?B?cGxHQmwreVU4T1JYWVJSVEZKUG1BS0VQSlY0Mm0wTDBMYWtOTlVTQ0czSERm?=
 =?utf-8?B?VmlhS2IvNEVVRCtNM25SeGJ4bEdsVzMyWWV1RGsvVkhDZmI2WFcyU09lc01y?=
 =?utf-8?B?OWpackl4eDJmeEJVTi9tWllONG5UeUlqeGVOUkZxTlY5aUh6V2xEMEw4ZFVG?=
 =?utf-8?B?dktnazRHR3kvQnhWQldoL2o1RFd6cEZjSS96SFpQTWFlQ3RSb3FXc2RtOGpH?=
 =?utf-8?B?T3lFcU5ySE5GajNlTkFEL0E5Y0VXb1ZWUy90M292SzljUHZOV2hURHhSVUNQ?=
 =?utf-8?B?MkpFZERzdDh1MzZUR1UzT2N6MWVidW9JUjlFYnpnZVA0V3JacW9xU0NmN1Bn?=
 =?utf-8?B?bndQZ3l1T3IxWEdLWFlrdWlWTEVpRy9XNHlWbDYxRURISU5nTTVFbHZzY2Nw?=
 =?utf-8?B?M1FKQ0VZeXJpR2lrYWd5UzcxbzJReGREZHNtRGlYekdGZjMvRUJjRjJSZWdw?=
 =?utf-8?B?UEFVNXVxRTFwNGxLZWd6c0FzV3FLNmJhVC8rRmhubmtHSUhDeGtZOUl2U2hx?=
 =?utf-8?B?MjUrdW02TUl0UWNEWnE5REs1aTVUMW5UQXcxS2NrVUZtN3NnU1A5L0ZaZnpZ?=
 =?utf-8?B?elUrQktCMkxnZzRER3M5K1E5NUNaY1BGK1ZxbmlBV2ZobjJOck8rNTZnTmNv?=
 =?utf-8?B?RW9hUlAybnduaE40MzFzdkN4ZUFkREJlRVhYUTdIbU5icE5TSlQ3b3N4TGt1?=
 =?utf-8?B?blh3NnRFWkEwYitzL2dFWFZzUmcrWDVJRnRPMmhZQ1JtcUpKakwyQndtQmVI?=
 =?utf-8?B?MStIekE1bmxib20vUmlkMGszNytBMGVoWWRWc0JqN2kxMkI5anY0Q0twa1l5?=
 =?utf-8?B?cStzZ05LejJSejUvYnQrVzNyTEtpUXFrZ3VZZFhMOTNFZWdWbXoxU1hHMk1t?=
 =?utf-8?B?L0ZLdUw2ZHBFTFhRbjhEZ1o4czJBdUZGaHhGNlVHK0VaSkFvNjd0Q1lBaENi?=
 =?utf-8?B?Y1lUTDhRL2pVbCs3NVpNYUpMbHcyWFhtM09lSjlKV29PWjlmY1htNkhxYSs3?=
 =?utf-8?B?a3JOckxlN01qaVBMV3E3elVSZGd3aVBlNGI2b3dveUFXRUx0d3VPYjVwaWNW?=
 =?utf-8?B?YUMrRlBlMWFzUm1zYSswc1JXcDRXYVBQQSttQmdpT2VNK1lFc2MrMmVqSXE5?=
 =?utf-8?B?QmI2OXFvTXJITGoyWFZCQ3cyc05iVG13T3UyV3JPYVdNc002SW40eW1xdlk4?=
 =?utf-8?B?UnJITEFyVGJ2czIxS1A0YzlIMGdFTHFsTDhBcE5BVmZMMmpkTTdLcHV3Vk9j?=
 =?utf-8?B?NGd1KzMyU1A3dU4xa3NKQ01pTXNnMDhHTnhabDdXWmNzUklrcmRwdkgwMU8y?=
 =?utf-8?B?dEdRYi92M2hudUNKWlNvRTI5eUtmR3l3NWYxaXR4TFFWS1BLRjJuQmpyOVBN?=
 =?utf-8?B?dElsWm5qQ1BIUXA2Uys3RXBOTk5VU1dvRlZuOENSdDJ5bXZEbmVGdTVTMHBQ?=
 =?utf-8?B?R21JRFF0T3ZIVE9SWjF0T2pFN2VHOEw2NGF5azhsSG11bElFU0Z0V2U0MlBx?=
 =?utf-8?B?NlNPeFhaUVBiSWVBWXdUZFBWYkNINmlVdFJKS0lqeit1dWtWN1JSVTBxMy82?=
 =?utf-8?B?NlNhTUo5RmtGcUwreW41TFVXYVJObmI2U3BOVTBPZ3dnTVRIZGptMEVQUm9H?=
 =?utf-8?B?NHdZbjE5UE5Ia1ZmMHM4MTRYMlZjM29OemFQbFBndUVQazgxdkQ0OEFFQStP?=
 =?utf-8?B?RzVEcFJOa0RqRG5YbE5uQlMrcUpCQ2l2dlovUFNCanJKamM1VmRtNXdNcE5W?=
 =?utf-8?B?ckE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ccacd95-6d51-46cd-a4a7-08db411eb914
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4239.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Apr 2023 21:40:41.4891 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GuHG+XtjKLTZm8ibOSVSQnywUanW2XrxhITQTjBfxnDshLftbQeluaTvSEPTVK8F57i1WCuYqkhMgXXiTWuKtJWaC3QnuQ5J3LgIJeSEB4E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7045
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 3/4] drm/i915/mtl: Extend Wa_22011802037
 to MTL A-step
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

On Tue, Apr 18, 2023 at 03:04:45PM -0700, Radhakrishna Sripada wrote:
> From: Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli.pradeep@intel.com>
> 
> Wa_22011802037 was being applied to all graphics_ver 11 & 12. This patch
> updates the if statement to apply the W/A to right platforms and extends
> it to MTL-M:A step.
> 
Bspec: 53509 
> v1.1: Fix checkpatch warning.
> v2: Change the check to reflect the wa at other palces(Lucas)
s/palces/places.
> 
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
With that.
Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
> Signed-off-by: Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli.pradeep@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 88e881b100cf..ee3e8352637f 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -1629,16 +1629,16 @@ static void guc_reset_state(struct intel_context *ce, u32 head, bool scrub)
>  
>  static void guc_engine_reset_prepare(struct intel_engine_cs *engine)
>  {
> -	if (!IS_GRAPHICS_VER(engine->i915, 11, 12))
> -		return;
> -
> -	intel_engine_stop_cs(engine);
> -
>  	/*
>  	 * Wa_22011802037: In addition to stopping the cs, we need
>  	 * to wait for any pending mi force wakeups
>  	 */
> -	intel_engine_wait_for_pending_mi_fw(engine);
> +	if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
> +	    (GRAPHICS_VER(engine->i915) >= 11 &&
> +	     GRAPHICS_VER_FULL(engine->i915) < IP_VER(12, 70))) {
> +		intel_engine_stop_cs(engine);
> +		intel_engine_wait_for_pending_mi_fw(engine);
> +	}
>  }
>  
>  static void guc_reset_nop(struct intel_engine_cs *engine)
> -- 
> 2.34.1
> 
