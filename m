Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A45756B4D4D
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Mar 2023 17:40:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00F6510E9B8;
	Fri, 10 Mar 2023 16:40:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B08910E2EA
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Mar 2023 16:40:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678466402; x=1710002402;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=sAUIOpixChxDxasYq7dSolwAI32AH5A5dKC9X2udi8M=;
 b=SCy8uii0qf/coqxyhzqJBlVcQAMgnJxeRPdg2bvENtqxo6qXIHq96smW
 rEwl4MGsnNz53hr4pvR6iXtIio82yFUyOIDJeRoICxwtEBWhh1cCjsNfT
 oV3/li96Kp3X2KP4yunXPfCfrCqiNQ0qtlUum5EgBRjfJ9RZS0yuwvjgh
 V+h96JJyOR761UtZL4GSk9Cb0l3Ax6dufzvtexYAABwNXL/DaPzCI8RGm
 vUkWy00XlR8HXBaZzoSjgOVgY/Fl/wDJomDx/C1JduBgMQ6UQIakHSGZv
 YqY2kzQc4ma1eQxO04u82DlsapY45/dtN+/3QCkB417CrfMES7R5iDQTk Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10645"; a="325121417"
X-IronPort-AV: E=Sophos;i="5.98,250,1673942400"; d="scan'208";a="325121417"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2023 08:39:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10645"; a="655241952"
X-IronPort-AV: E=Sophos;i="5.98,250,1673942400"; d="scan'208";a="655241952"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP; 10 Mar 2023 08:39:31 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 10 Mar 2023 08:39:31 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 10 Mar 2023 08:39:31 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.107)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 10 Mar 2023 08:39:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nGVTw8P/0h1N2sdDvWgYoxbNYJUK4NqWk/Z2D+gujg3vLZ+d41q5uOQqtXV/pmpvg/88VJtM2uxA+ZxEnZREHwnTSdMEwyHJIqq8Li23zUC2Ik3AlN4XsiGRqX1hPqZdF11Cr0OPhbFe1YJZRjdsOFVnn+3+KbJRAkC05mKr1LMz5qr6n+U0DaAXQLmgZQ5Ogh3mVWoZJwxDShQ7SGlRdk2gM7IQFYfZZAvCqn9jnPn0wWi39sh1iHpZtH82Rz4h6F2Mc12TrQM9kg7p1UC6r4lcJ7SJybrwnuBY8FySCpWASwLvtOz1vFy0qqbjbarxfCTqnH/o0uLtyvm/7guWaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cen183rSRR3OeAuElPRd1iRB/WKWt2Js+t+V/poaoGg=;
 b=GC6xE35ER4W+83xZjbZVSWTfdu0NTRPkvhlcjgzetB9CG2NhNyDHY3cQFggcxfoLtsj5Ghgn/oTW1WvLniZYkuyJqEyocIeV/nyBNNsepptCXKjTzMUxA7DRfX8zSpsKTFU4NePlOE7Y9Oso0eZzZUfqjw9lpNbOKmORQNkMFrfg3+DZejBaXKm1wReu73HL3EjsnCIZchbJlDrJ343XpMZV5MpN3q0QupbHb+KbuSwUAqwS5uvYZkXAfutRPWXH4re+cvV6dA9W+iAyWjbAZrHgsNkea/Xw3z/TJkqXZZTgFR5KBhpgAkYIhm/u5FUjV50ZWC2JI3LjzCHbnSsj3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 CY8PR11MB7800.namprd11.prod.outlook.com (2603:10b6:930:72::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6178.19; Fri, 10 Mar 2023 16:39:29 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9bf9:4252:3ddc:7ac2]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9bf9:4252:3ddc:7ac2%7]) with mapi id 15.20.6178.019; Fri, 10 Mar 2023
 16:39:29 +0000
Date: Fri, 10 Mar 2023 08:39:27 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <ZAtdP7KDE5zOdc0k@orsosgc001.jf.intel.com>
References: <20230307201611.773103-1-umesh.nerlige.ramappa@intel.com>
 <20230307201611.773103-10-umesh.nerlige.ramappa@intel.com>
 <87a60lmq9v.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <87a60lmq9v.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: SJ0PR13CA0109.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::24) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|CY8PR11MB7800:EE_
X-MS-Office365-Filtering-Correlation-Id: 747f628a-b9f4-46d2-0205-08db218604f1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: eVvA7pUPTCvaLI1Va/jBpp62hMPR7e9iJQZBNo9SyZMZmgZ3+nu83iNAVavpZsiebK51cOkmJ35YWLpv6BTKUKfGIbrVjvThcLtzB43sHxmexwZBiDxJvkR/osDYBMZRNJF8AOcUKq8d+OETyt3vqc5uCWl1Ep1s5PueRtphv9UpkIuR7LNuS0vnITsCh75HpKtSsvv/1CnbaGyPiSVkbOo7xPOvKHt31hOoRh3WfGHrAdQrlUdF9yC3qyHHZsFgT2rpvKawcIaO+DCf7UBymb1/2A73rXsR+0pF0sv4NbnYjYWwZCVmc87hRtfaPm7lPTGDGJSWiDrGPx/xWYpFsZAtbEgHjcEgqGodDmi+nRRJwudKypOA6drSFJW19DiZmgUOWvJZZVT9wPamowwfH0Xi0s949zD2JdzetWQFWWW4LpAQDKjUZoGKsnV6JSrsWSTXKTJLM7j/zUcpOfocPKne0ndXgBCREh3ulQWXgTvinhC0JqvHOVV2sDIxL8EKzNSoclwZIbBtZCqf8rHBR/QhsndEJd2/fmtBSwpovuZ1O0GeMcGFIrQ69ZcNfQ3WwKpllwwSdAe59zHJzd0QG3iWjZuALmLbOj3i5jBer4loRdbohZWb+H4A25bH0CiZlC6F0LpIAXTD5OYbuJtA3w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(366004)(136003)(346002)(39860400002)(396003)(451199018)(6636002)(6486002)(66476007)(5660300002)(6862004)(316002)(2906002)(8936002)(66946007)(66556008)(8676002)(41300700001)(4326008)(82960400001)(26005)(186003)(86362001)(478600001)(6512007)(83380400001)(6506007)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?THVvV2FYME1JNUk2R0tyci9LRStnTHZCNVN1bXBLdE9hNGxTVUxoejBveHlE?=
 =?utf-8?B?cG8wVnFCb0VvUlJzOEQzSk4wemk2S3h3ajFUb1hWV0lFa2FPQkNZQzhFK25y?=
 =?utf-8?B?cDVIclJDZWVXV2o0NmthSmsreWhuYUVRZ2lpc1p6ckcwdFo4NzVVTitGK1pD?=
 =?utf-8?B?by9wczMwQUFkS1VoNld4TVRIdkJQK2Q3MGljRTlmempoUEdLQ0VMYmliTEJC?=
 =?utf-8?B?eklCVTJpNGx6Nm1xNHNoYlN4Yldib0NHNy9GR0Jmb1JLaHpHd0lhSENpSGVo?=
 =?utf-8?B?Nms3TVNhemhoS2Q4S08zNGl5K2cxNElQVUJsT3JXaUFxL3IvWG8ycHhvTkx2?=
 =?utf-8?B?T2dmR2pPQzlmOCtvUENJbDl1a0J0VUpFcS94NWlCZUxpZldnOGhpZ1d2RnFO?=
 =?utf-8?B?OHlyNy9wUVZ6NGJ0Y1d6Q084ZUtnUlpGaENPcG9vMUU4eVJRaW5HWjlNU2J3?=
 =?utf-8?B?UW5lb3U4NVFtRUEyRXNhNkxvSEtaMzlYdWt1QVZQWkJubVcybEFvdWFiQnFx?=
 =?utf-8?B?OTRQL2dWNEZpbUNyUDAzRFVDaEk5ZGVTeGhYVlhORWRWKzNzZURKWE5BWTR4?=
 =?utf-8?B?NUQwT3BYdHVucHBPMkRxaEZveE1kRm4wOS9EUWRsQk1lWDhQK1ZmalBuUDFF?=
 =?utf-8?B?R2ZOSjNQRCsxdnJOTUdnNUZLYkRKUUFrRzFqNjd0Q29GNmNqb3RHcUJTRklj?=
 =?utf-8?B?OEp3K1p2UWlRMjdOQnJiOFFJZ2h1ZFB5NnNTVlpvbDcxcXZSMGhTMDR2WWdv?=
 =?utf-8?B?cTAwV3NsZXFIRVBNM0loSTAyTy82ZlN1cHFzaWdsTnVUS3JnWE1tVkJ4UGYr?=
 =?utf-8?B?aTlnUnVMZThUcHYzZXRieVlHeThEZDlEemZrZlBRTFB6LzJsTmFzNDJpM0xm?=
 =?utf-8?B?ckw5MHUxbkdjMkltNWpxdHI2WFpmcWFuMXFybkZLTy9HRktNQzRkbGdLeS9H?=
 =?utf-8?B?Z3NWdExjNURURG9WM29xR3dJU0lsYzg3YmNiT1FpY3ZxM2hHOHVxUXgwOVN5?=
 =?utf-8?B?WDRsbXg1emlJVEcxZ3c4L0hMRHQwM0FYa2lvdkxXK2tqZjI0R2tPN1dMMlls?=
 =?utf-8?B?RWlmUHRuWUpQU1lmOUJVOGVpMHVCQkRGbHdaVjRwZkNOZjlaZklCZVRpejA0?=
 =?utf-8?B?aU1LMndEanNXeTJpeERSeVluZ1VQQ1F5bnFMbi9Ib3hucjdaRE9aM3Bta3FN?=
 =?utf-8?B?NTRKUWdmK3BSczZ1aFpKVTBtclY5MnZsbFhTallLWW1VUGpHMTJmdGYzUmpw?=
 =?utf-8?B?anBQNVBaeStqMWVxMlhYeGFDWW02VW5oU2I5cmZFUkV6M0lUVitNalFyZm1T?=
 =?utf-8?B?aUh4ZEtWbmtjU2Z6Q1loaENURnA4ekprQXZpMHU5cFFIbk4rd3p3anQxcGtW?=
 =?utf-8?B?emFCWmZtTURPdkhpMlJJZzVvNlNEdjJiVmJYLzlkc25rMXpGdmRDQ0MwK0JC?=
 =?utf-8?B?Tjg2ZmppZUo2VnBFb0dLUkw3VkRmOW5wcWsrWitIR2dzK081QzdQckQ3WFhR?=
 =?utf-8?B?YzhYSWcyUUdOUjdrTi80L2k0d1NaVHlPTnlSS3Z0UXRSZ0JVRUg3OTNSYU0z?=
 =?utf-8?B?RmtOVzd3S0tDWG1GWGdMKytPUnRKNXc4Zk5ld2xzdTA4WnMrZ0tZQ1R1R2Zv?=
 =?utf-8?B?M2ZzRklvQmd2TktFeFlPT3M4dGtpYU1ocWVQME5xMktxTEZlaWJwSmlvT0lD?=
 =?utf-8?B?L2pHU0tNNGNMY3hUdHBESXFuMWFFMmNPd2NNT3ViQkZ3MFVxMmFUclZDNzJh?=
 =?utf-8?B?TFFWN29SN256VkttV3BjSGlJZ2NVQUZxdXlqRmJNSTNLVWx6UFcvdWlEdGJv?=
 =?utf-8?B?RFJhSkJWUXpIb3JLVmRkY3VLMmJKa0hQeWxDWVdJU1k5cnhlMFkwVjlJZ09G?=
 =?utf-8?B?NlJZSExFOWpFUUd2bU1yVUhZSlFGaGZwa1puZys5R0psaUFsQVpabEZxOFFl?=
 =?utf-8?B?WXkvemZaOGhCNzBCUDV6ZzJhekpTNWZ4bmtIWHZRcnFTYTIvNTgrWjhwbnAr?=
 =?utf-8?B?QnBwWWF0WWhPdE5pbDdCb1V4U0JWa0hJVkhXVW1ybUNwNWFWTXRCRkRTWGpU?=
 =?utf-8?B?L2VhUEttaHlidWZ5K3J5Rm10MjkyWmtFQkFuTzFrbVVOd1ZOQkVRc29MaC8r?=
 =?utf-8?B?OXhzUVM4TCt2ZE8xa0pLam82K28wcmhxY1BpVjFXbXNoU2J3MTFwekJxQk9l?=
 =?utf-8?Q?hwOgDUMq3tthWl7hQPf0/nY=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 747f628a-b9f4-46d2-0205-08db218604f1
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2023 16:39:29.7013 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DWv0tVBphSI26Om5ObktuRiHu2HqMCHh3nJiO5DxCE3tTf5SJDtMshnOZIvMiMr51KBN2lR0ZD80pi7iFWczn7E6GHk8MMTjrngzqmd8Rg8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7800
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 9/9] drm/i915/perf: Add support for OA
 media units
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

On Thu, Mar 09, 2023 at 03:57:48PM -0800, Dixit, Ashutosh wrote:
>On Tue, 07 Mar 2023 12:16:11 -0800, Umesh Nerlige Ramappa wrote:
>>
>
>Hi Umesh,
>
>> -static int gen8_configure_context(struct i915_gem_context *ctx,
>> +static int gen8_configure_context(struct i915_perf_stream *stream,
>> +				  struct i915_gem_context *ctx,
>>				  struct flex *flex, unsigned int count)
>>  {
>>	struct i915_gem_engines_iter it;
>> @@ -2573,7 +2594,8 @@ static int gen8_configure_context(struct i915_gem_context *ctx,
>>	for_each_gem_engine(ce, i915_gem_context_lock_engines(ctx), it) {
>>		GEM_BUG_ON(ce == ce->engine->kernel_context);
>>
>> -		if (!engine_supports_oa(ce->engine))
>> +		if (!engine_supports_oa(ce->engine) ||
>> +		    ce->engine->class != stream->engine->class)
>>			continue;
>>
>>		/* Otherwise OA settings will be set upon first use */
>> @@ -2704,7 +2726,7 @@ oa_configure_all_contexts(struct i915_perf_stream *stream,
>>
>>		spin_unlock(&i915->gem.contexts.lock);
>>
>> -		err = gen8_configure_context(ctx, regs, num_regs);
>> +		err = gen8_configure_context(stream, ctx, regs, num_regs);
>>		if (err) {
>>			i915_gem_context_put(ctx);
>>			return err;
>> @@ -2724,7 +2746,8 @@ oa_configure_all_contexts(struct i915_perf_stream *stream,
>>	for_each_uabi_engine(engine, i915) {
>>		struct intel_context *ce = engine->kernel_context;
>>
>> -		if (!engine_supports_oa(ce->engine))
>> +		if (!engine_supports_oa(ce->engine) ||
>> +		    ce->engine->class != stream->engine->class)
>>			continue;
>>
>>		regs[0].value = intel_sseu_make_rpcs(engine->gt, &ce->sseu);
>> @@ -2749,6 +2772,9 @@ gen12_configure_all_contexts(struct i915_perf_stream *stream,
>>		},
>>	};
>>
>> +	if (stream->engine->class != RENDER_CLASS)
>> +		return 0;
>> +
>>	return oa_configure_all_contexts(stream,
>>					 regs, ARRAY_SIZE(regs),
>>					 active);
>
>Can you please explain the above changes? Why are we checking for
>engine->class above? Should we be checking for both class and instance? Or
>all engines connected to an OA unit (multiple classes can be connected to
>an OA unit and be different from stream->engine->class, e.g. VDBOX and
>VEBOX)? oa_configure_all_contexts is also called from
>lrc_configure_all_contexts.

Only render (and compute when we support it) have OA specific 
configuration in the context image. Media engines do not have any 
context specific configurations.

Thanks,
Umesh

>
>Thanks.
>--
>Ashutosh
