Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E465EAF7E
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Sep 2022 20:19:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9BCE10E746;
	Mon, 26 Sep 2022 18:19:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 057D810E589
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Sep 2022 18:19:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664216349; x=1695752349;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=NOrCkqQgPDREcsiDPjmGb1n1ZHpNNGNK/iDhpVHkdjU=;
 b=EYRauYAKf5EwjUlslNM7I/TwVCBD/qZGs6mxci37sQZ+pMRsCFX8Dyil
 RoOQIPLuuJtFFyWEc3rcsG6EqQmZaqMq4oskorDhFWtM4n1TLFcw79r1s
 5n6oLeJLjT25N+szHCk1og7kADb8zEcZxIHlTukaSl4fKKpkntiBOnZ5J
 rIUwTe1GowdXJ6cGoEzfRA4pNORikewT3Q3qqklhymRrnEid5q7qKTZ9l
 FpkWxORaUuDV5YlVC3AUaNiwNlX/82z/3bmwYGqeOYXZM/1xDwJX96WoS
 2k9p8HTDWDwo1ffYLjn0epPKX6Von9+uWy7Ku5XxqCN8aBryCxYqae5/P Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="365140117"
X-IronPort-AV: E=Sophos;i="5.93,346,1654585200"; d="scan'208";a="365140117"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 11:19:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="572318360"
X-IronPort-AV: E=Sophos;i="5.93,346,1654585200"; d="scan'208";a="572318360"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP; 26 Sep 2022 11:19:08 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 26 Sep 2022 11:19:07 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 26 Sep 2022 11:19:07 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 26 Sep 2022 11:19:07 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 26 Sep 2022 11:19:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TCuL9JapMQqWTmIUEB1p2YYWqRIzZyCql0H9XcV1ZJK5NyWdSht43YlVXpRrlfznSxxf7X5YGzQBoCqoeCFW0g2I1/IVHH0/1a47/Njt6UB/73qLbpadvuWyEaCiRhIxWdS2gZuniMUW4z9g5Av3eKoJSzU/kkE0bie0qUsQCQ2KgElpPsRdouz75qzGmQIch4KRi90ec/15elFdVbr9meULyAQyrdLTRKE6V7oQc1uWWiqLmHgXBbHWb1HnHygn0KWDUTgXUDXeTs06f+WmHLvzKjjLeDI1UZiw1tMYbVislHvTI0R2dmB9uErLEiD6VcGYMLffa3t7hJfuU4UfuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aGgzKjwpARxWqlMb/gTGj4TA81tjU+SWQhwBzruNYv4=;
 b=KUAjmhO/V53QTj1vClOVs0tINObuzSecsGE53DPWNnAvobsXkmjB1aSF8GYTWHLTcZ7byF+Yx6TCca+XoKLpXU3pVGgHYfP2FYS3mGgMMTugKg0Nih6/bSBDGKHb57PX2+O2yNBn8GUxQRN9b6q3yrGOqBz8nGDIiIRrVxKmT6IsJZmDFCfYLR+Xmq2UKh2x1vGDFTJOZ4z3md5sxs3t4o9JPDnwBkQ0mSL1tilbmjYcKI8sVbrK2LW02A/odHUVRlH2xGhyYdFbV1K48y1f1c33Hy4NoPCwZL/YBMUHH1QsUMgUQQP2cBpufrmlzwt49bqHWT83yMXvZfH7q4NGAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 DM6PR11MB4738.namprd11.prod.outlook.com (2603:10b6:5:2a3::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5654.26; Mon, 26 Sep 2022 18:19:05 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::e918:ab50:e851:612d]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::e918:ab50:e851:612d%7]) with mapi id 15.20.5654.025; Mon, 26 Sep 2022
 18:19:05 +0000
Date: Mon, 26 Sep 2022 11:19:03 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <YzHtF8QESFmQOBhv@unerlige-ril>
References: <20220923201154.283784-1-umesh.nerlige.ramappa@intel.com>
 <20220923201154.283784-15-umesh.nerlige.ramappa@intel.com>
 <87y1u6uo32.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <87y1u6uo32.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: SJ0PR03CA0034.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::9) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|DM6PR11MB4738:EE_
X-MS-Office365-Filtering-Correlation-Id: ec47a0a1-9dee-4312-5ad0-08da9feb989e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qYKOqha8xhKFGNDpEcnjv5B9JaaZGj0cHzW3iKrJ2/b14G7I5tRNmfOgN4VfKiKyOsrHSyt+k78hhtBkZ2ds+1xa9rAKYv3Z9NnCmQGkByOdWO6v7e13XyThvcHG1UmKVhafAHIwd4KYCEqtrb6e4PYqENGa/jYaBYn5ezAJfVtCTiAZPDxqki4mYNg3ZCXQYea6fu7GLUzrliZBohkW/2o3nFiGzH5NCgLxTw8hxBwakSL4DvFOc/6MufZqh2qse+S3b+48oov3+Tg5wjRPoHBdyQ5dBwKFR1v3eIl11POoxhVdF6j/3jN9du0oHz+dLZh2bBY0LoAxC7pq4lWzCO4vBVYqHvd5w4h4peYdisgwaK+RLzsHNaAxRapOUAcwsVLJFaAXxp0hKjMgaobEZ70PCAlDS3zazuqNSzdjYiwXEsQmPrzGYkqMCeOxLlDNsrNZkoJ6zhFYLzOl37CF/qIIlwGLCc7Posy4BN7NtL0EVnVzJnblBqCeck+OgCmouoknUmV9UFINpPG72WJ11PA2/w44yWK8yxIVL0+s9xmAkHhQ1QBBg2+R64wy75B1Hxddl07IthNDwt1XlL+kLDYRnMJo6n1BGbhrPbilRY8PYBtBPkgH/1dDqyIO9TG275I5sUTkwnxDbeH4xYROrbFfwqYtGdFKoC3VdCYNCUHgmulME6HWjyl1Ixb9xKH4Z2aBpn+hedWNQ3k9jBnewQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(376002)(366004)(39860400002)(136003)(346002)(396003)(451199015)(33716001)(41300700001)(6512007)(66476007)(66556008)(9686003)(8676002)(4326008)(66946007)(26005)(2906002)(86362001)(186003)(8936002)(5660300002)(6862004)(478600001)(6486002)(38100700002)(82960400001)(316002)(54906003)(6636002)(6506007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b1J0dWduUHROQkk0UkgwMUxZRDVtdkc5MlFEK3BITWZCak1yZW9ES0ZnYU5C?=
 =?utf-8?B?MWlHT3VXWU50ODJvb2V5ZFJiNUxjT2dXaW1zemUxNlZudXVWbHcvVkFleFJQ?=
 =?utf-8?B?MFNGSE1IMXR4UjNnM0Y5K1BHZmF4cnVsRDJqNTR0ZzBhaEZ1SjNEY2VQMlBt?=
 =?utf-8?B?QTdUNVh1YkRna1UvMk1KRkQreVZKS3dlYmdQVEVERGFkYTFHeDR1L0pNK0Jt?=
 =?utf-8?B?RTQ2NFpIa2dzcHZKYjlVeENscndod1dZZnFEUVQ4dGVwenFHMGVVUE8yU2VH?=
 =?utf-8?B?ZStTRzJuUUlJVXlmbTFxaStMMXFXLzdhSDNEQmRFOUtFbGJOY3NVcGlKNFA5?=
 =?utf-8?B?ckFSOVJWQWRaOXVHWWxObk9LNS9KR0VmeWszcTNVZzgwbGNtSE5HMTVaYlA3?=
 =?utf-8?B?UUR2L284WVJPeUs1Tm9rUTJPZnhPaE9HWHRmWklmZTZLdW1STTFlWHpwMmhL?=
 =?utf-8?B?QStEQXNYVENNSXB6YnBuNVNZS29lcTdLZzRha2tnbXJZYnN6NDFnUHNtN2Nl?=
 =?utf-8?B?NnBFYkxJalJqaU0yNEpJU2hZTWUxZlJwMmdPQ2tlR0liVVJhYlF0R0tkTGpL?=
 =?utf-8?B?NXdGM0ZKTnI5VVBqMGVBbDB0VDdWZ0NkVHJ4R2U2SXRJLy8yaUcxZVg4QmRS?=
 =?utf-8?B?T3p1L1ROK1prNmtXRlBoRXZoNzNVaUgxVmx4dmxacC9pSEFmUU5WYWt2emZE?=
 =?utf-8?B?UDZQc3E0Q1V0a1NnOEF3cEttQWtzMm5WMVdnMk5yRktJb0JwYXlva2Y0cGlu?=
 =?utf-8?B?ZGxadk9aclY0dDBteEFoYm1velFpQWIzY0xMWFJDVGlrV2dMZElTZnJQN2cz?=
 =?utf-8?B?K1AzK1VXREFTelFSOHAwejQyRVc4bHZ1em5oUmhGdzB4QkpPTXNwWHBVZTJ3?=
 =?utf-8?B?RytuaTUvMzQ1SHA3NEZmZzVodWtYV1ZaUHlwNmJETUo3NDVLZ0N6Vi9vQXdz?=
 =?utf-8?B?QytjUHhTRittd2NIZ3VMV0Z6N0N4M3FabkR5TXErMlhpM09qSWhRbnM5NjRI?=
 =?utf-8?B?MGRwZnFDL0wrUER5Q25sYXI5aHFPZTBaOXpyRW9MYmVJL2VvZkZaUTlaSVRv?=
 =?utf-8?B?ZHVMQ3llbFlGV1RvM3JwT0ZKUzlSQnJTNXFyakFYNFlBVXA1S0V6TDFrM1ds?=
 =?utf-8?B?a1JrTEJ2eUpvZGt3NjlqRWlXcnBaN0plWU9rbXF0eC9Ud2ZkWWltNEN6TU9m?=
 =?utf-8?B?Yk55Rno1aHNxZEZZdUo2SGxBOElmSGx4UHh0WjN4dEZqOEp6eHdSU05Jc3Nz?=
 =?utf-8?B?MEhka1NJU3A2QWFFa2NMWkJoSkpIU1ZldjU1bkpWdUZ5bHI4T0txRFhEd1lq?=
 =?utf-8?B?ZnJxdERFY0JXMGJ5N0k1WWhYVkJNeW84WHhGWkJ3NlorSWpCMWZRRFRTSjRN?=
 =?utf-8?B?MER4NzRaUy9rNS8zem9oajB0enVuQ1hhZmdSODZveGJVRW1EamtTTmgwRmd3?=
 =?utf-8?B?NHc1MjFCb212OTlpaU9zTnlXU0tEWW5nMkV3aG1BWlZsVjc4bElhUGlXbHhP?=
 =?utf-8?B?dXNUVUd6T0ZXTkl3bVRnSUJ1L0pGQzlDYmxqeEtQdW5lOTc1dFFGbTYyVnBR?=
 =?utf-8?B?SkNkOXpnREJWR1FIc2xDQ1Fma1hiRGZuY3ZIYmhIWWhFUXZSdHFrSnA4bHlj?=
 =?utf-8?B?cjRiZ2dqTXZOL2hpSzJsODcrdHNLZm5IcHhubHUyMkZ0L2xxWWpuTzBsbDdY?=
 =?utf-8?B?YUI3S2hTQ0luK2RYcEx3L2FLTzFwcWJsU2J1S0E5MmRraGExcWtnWGtDNTZ4?=
 =?utf-8?B?YjM2MitXaHF0UXhtbXhlSGVHdGRudjZMS2NJWnk2SG5lRWpNTXBMRzh1OXl5?=
 =?utf-8?B?VlNEZDdQdzIxaEtsR2VsSlp5eE55MFpnYTVZMlJ2U0tBdE12cXd2Vytpa1pR?=
 =?utf-8?B?bCtucENmdXlCSGpCZjk5ZHFpNm5PdHVRNmVLc0FvR1dCRmVzdytRNFBKdlE1?=
 =?utf-8?B?K3Z6SVlXWkNXQjdOVFpNbmVqekpySVNnbWUzdm56cGNKc0huS3NISVdoQ0c1?=
 =?utf-8?B?QjBUMWpobEhVRlJ1SWZqMDBVWmdjcjZJYzJiK1hnYy9sTEdQUEpjNWZVMmI1?=
 =?utf-8?B?eWgxY2VCSjBORVBwSUp3TkpUV0ZaaDNwb0ZJQzZ4U3BKcnhsOGhYc3gxV1F6?=
 =?utf-8?B?RVBwYU1TZlFaVVBzZ0VWa2hLNDRPeVZBTmk2b1hud0lISnlEbTNJbjlxNStj?=
 =?utf-8?Q?e2fMXTaraM6D4k8nDOxVLdc=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ec47a0a1-9dee-4312-5ad0-08da9feb989e
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2022 18:19:05.4398 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eTi7w1vRPA0djLGtnyrnC20C5SQKX6pOwH+vUrPTMLB5KHksgROGwYI+aePUzEBWNao46LwCfFwpzsc+UZgWQHmn8T0Sp0L+ozUErca+9c8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4738
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 14/15] drm/i915/guc: Support OA when
 Wa_16011777198 is enabled
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

On Mon, Sep 26, 2022 at 08:56:01AM -0700, Dixit, Ashutosh wrote:
>On Fri, 23 Sep 2022 13:11:53 -0700, Umesh Nerlige Ramappa wrote:
>>
>> From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
>
>Hi Umesh/Vinay,
>
>> @@ -3254,6 +3265,24 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
>>	intel_engine_pm_get(stream->engine);
>>	intel_uncore_forcewake_get(stream->uncore, FORCEWAKE_ALL);
>>
>> +	/*
>> +	 * Wa_16011777198:dg2: GuC resets render as part of the Wa. This causes
>> +	 * OA to lose the configuration state. Prevent this by overriding GUCRC
>> +	 * mode.
>> +	 */
>> +	if (intel_guc_slpc_is_used(&gt->uc.guc) &&
>> +	    intel_uc_uses_guc_rc(&gt->uc) &&
>
>Is this condition above correct? E.g. what happens when:
>
>a. GuCRC is used but SLPC is not used?
>b. GuCRC is not used. Don't we need to disable RC6 in host based RC6
>   control?

When using host based rc6, existing OA code is using forcewake and a 
reference to engine_pm to prevent rc6. Other questions, directing to 
@Vinay.

Thanks,
Umesh

>
>Do we need to worry about these cases?
>
>Or if we always expect both GuCRC and SLPC to be used on DG2 then I think
>let's get rid of these from the if condition and add a drm_err() if we see
>these not being used and OA is being enabled on DG2?
>
>Thanks.
>--
>Ashutosh
>
>> +	    (IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_C0) ||
>> +	     IS_DG2_GRAPHICS_STEP(gt->i915, G11, STEP_A0, STEP_B0))) {
>> +		ret = intel_guc_slpc_override_gucrc_mode(&gt->uc.guc.slpc,
>> +							 SLPC_GUCRC_MODE_GUCRC_NO_RC6);
>> +		if (ret) {
>> +			drm_dbg(&stream->perf->i915->drm,
>> +				"Unable to override gucrc mode\n");
>> +			goto err_config;
>> +		}
>> +	}
>> +
>>	ret = alloc_oa_buffer(stream);
>>	if (ret)
>>		goto err_oa_buf_alloc;
>> --
>> 2.25.1
>>
