Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 346C86DD1BC
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Apr 2023 07:35:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAAAF10E4AC;
	Tue, 11 Apr 2023 05:35:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2246C10E4AC
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Apr 2023 05:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681191334; x=1712727334;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=79AygTOvYBnKwa1ub1BJ4PqJYXlNCq4KiGnqJTFECmk=;
 b=nPIKjWTwG1sYXBgRLnDpuMWrBXmwSgimkco8sbtChJSrwM40QGs0ekLY
 loiT4ts00JwAkfvHMjgwDIUJg7O2kcXld5dlVD54lX3MVphVapu4yu50c
 SnMmUys9WeG4dnPrp+4QaPEeveF6FW8bbrm55S3KKId9xxewTad7BR1hC
 tdtR74vItqGPCvLMJEPswKOSlEs53ar2L3VqWzjsfoD4CwL8P9W08/Dr1
 ZNz8T9AHnHhnwRrc0sXLeoCMrs/FY+fvsraibTvvEZ8BPI4nZXHWZeTfC
 r+TQ4L61WGyrpnypAg4vuIR+Y59Qr0TbqWOJ3bdmcD1A39szCgS4DmJLI Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10676"; a="332210694"
X-IronPort-AV: E=Sophos;i="5.98,335,1673942400"; d="scan'208";a="332210694"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2023 22:35:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10676"; a="753011965"
X-IronPort-AV: E=Sophos;i="5.98,335,1673942400"; d="scan'208";a="753011965"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP; 10 Apr 2023 22:35:32 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 10 Apr 2023 22:35:32 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 10 Apr 2023 22:35:31 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 10 Apr 2023 22:35:31 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 10 Apr 2023 22:35:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Be8aql78udwtBfgZYlhMcHM3MoDKJPhmD1P3lplrV1tdeX0Fd2MrcofZkRXD4vmxrOkQdciC7fu3bfKiVhXfeXI+88gh2MlTmD8x7nTEa4MXUpxSlpc7Ho45Dhwp0p5tr23Ap1k3vDeGlqvcbqAV+V3YY4TezaLhc66EHFUGmJ3+x34b1uY6vlSv9ZbrGFwb6knLQbpKcvNRYO7A5shsPM31Rx0LK4ssawYpIqmwjx70Ffq+U0+nkVy5089wpqZAyHYIinYtPhGNRDoRTlI7ki9Yzuoe/WfDKA67CG59IW33yQo4KMvvPbAJEC2HxPgbgdueyrHWV3gvd4e9DpUZfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MN1ZKqmgxK3CshzON9RsMgXAGrU3Q2eiBNLRpIXQKes=;
 b=aUg3Pi6Q8AcSHos0g8MJPRP98kXsAwSI2+aqZTlh55kAhHD3oZ9EN6zosKetO2LY7yVGoSLS9A76c38g4DGGOWME6So9tJn3yLPV9M5IW7n+z4Qhkh8TxPsRapfn0O4WN29o8SHmEqc9Dm67+qo3p6K8fPyqbDPIqSrZP+2p+ij/IR4HGcdMnmX1UH8KvW7VxBAAPOESDYOgQwXRC8msIJdPrb+rOACfVJ183CqyuXohIaI0u/IDWTSnPS/mQvtYn8dzCx135+30IzA6vIKsdrp6ZESpMb/nMaP5zu7iRMFq5cfkwXt6nq980H2dXEhFmtGcVWgOjUKMJiIVutEsHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CH3PR11MB7819.namprd11.prod.outlook.com (2603:10b6:610:125::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.38; Tue, 11 Apr
 2023 05:35:30 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b%8]) with mapi id 15.20.6277.036; Tue, 11 Apr 2023
 05:35:29 +0000
Message-ID: <568cf456-1361-60f5-2c01-95e4c62ae09a@intel.com>
Date: Tue, 11 Apr 2023 11:05:19 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20230329135002.3096-1-ville.syrjala@linux.intel.com>
 <20230329135002.3096-3-ville.syrjala@linux.intel.com>
 <1e25f41e-9c6c-e6b5-e56f-fc49a441176e@intel.com> <ZDTrEg/fQR6PKUUn@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ZDTrEg/fQR6PKUUn@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0099.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:9b::19) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CH3PR11MB7819:EE_
X-MS-Office365-Filtering-Correlation-Id: ab8e7319-6bc4-41ec-d270-08db3a4e8f79
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uDqdvbHhsAybIPK9ZXdVpQpy4EQstkCFkzE2T78QJbOTB8dnxDW1gFxzI40VeXcZbu/sTVrqVL2OQJnweHqoRnoxLPtaBv5sQJvw78klg9wlpF/TdWW5LUNZZMWei2O0ZGueiSacVthtPwOIByRk/9Y1ksBVHgzs7KGkep/NAWWhDJRwJm89MaW7o+Btz+Fa/NU52XWgTZ77JHIg/8GPM8AnyiaOGa2ZjmJfqicXxs1j4SwVbDCYWTZ5MVRifqWpaTHWco2KptXo6pCLOiMez0ZRG6zWnl+LGM/k5wnrZFm9TiKArJWQrY92XCIh3kwDnDrreNK55XXvLMrEGY5adyl2vpsbeC5MwVOeVg9yXPE+9uBPnDmoNcQNJbyqT2oVBnD/bLkt7pToefW/pAIgsBzIaNPf1p1npHXzwEZwOHw1IUzEb2YXDKiF73Aw7LwOJS00K93N/EB3oDGCZyGbnyX4TS7YqQUzkLXl/UTTYozwgtL/EFBKYXfsTz3AM9+BSlHPS4jpRLjpv8lRNpFAOlavkXg5vIHvjB08m//IA1H3M4ZRIuxR3CDc/GW38Q/B1YmiYwzI6c4TzOtnF50MqM+mCdB8bQC9i2mbA8HzlheOS33AINa6b/9B4LB0XHM3PhpeHGBWPcqEOGphJ9p8Uw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(376002)(346002)(396003)(39860400002)(366004)(451199021)(82960400001)(2906002)(186003)(26005)(6506007)(6512007)(31686004)(53546011)(4744005)(55236004)(2616005)(38100700002)(66899021)(6666004)(8936002)(66556008)(66946007)(31696002)(66476007)(6916009)(4326008)(8676002)(316002)(36756003)(6486002)(83380400001)(41300700001)(5660300002)(86362001)(478600001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RzNQSDcrQVNwVU5ZUTl1aExDV1A0SGJIZHlDaFRSSDRKN2dyR25Oby9ZWXVk?=
 =?utf-8?B?N1RFS1U2MHhJQzNCRElvYnJpYzQzSU9LcWpkK1cxTU5ubW9uU2EvNWxoUlZp?=
 =?utf-8?B?OGgvY1BmVnlkdHEwQmh1aW9NS1lrVzBSdnozcThsaTdYQ1NFaHpYMkVWdDYy?=
 =?utf-8?B?WTBvQ2VZYVJrTXQ4czFrazVZQUJTZVdzQVFGTUU3blZsU2M4UERhbWRxb3M4?=
 =?utf-8?B?K2lKdmt0YzdMRmZCQkJvUk1Qazl6aFdYQitjdi9FU0g1ZDFNcTYzRlpSWWVJ?=
 =?utf-8?B?eVVMWHd1T1BTZWtuL2gwTS9ycGNmalZJWm83eHMzN1l4UWRJMlQvL0pYNFB5?=
 =?utf-8?B?SW9wZ0hTbmZXdDJMY1QydlVWY1o5TGdyaVl1OHlpSXkydno1dkNIeW5DRS9T?=
 =?utf-8?B?ZjUrRU1YMTNQTHZKNnhXd0s0ZVJETlVQQ09Bc0tUOEs2dC81VGIwZUcyNFJG?=
 =?utf-8?B?WWVxWEM1eTV6VU1IeXlOZVZhTmhtZ0FoRE5YKytIYzhLSGpkeHpLelVuakVl?=
 =?utf-8?B?RTVtRmg0cjNILzFTbVVyY0plUFIwaHhROS9HMWRRNlNDNjNmNFdUTUhIKzB4?=
 =?utf-8?B?T05BTDZtN1J1UmlEekNjYnhFV09WYXZQQzIrUzVLZ2h1UGs1d1NKZ2F1bHdO?=
 =?utf-8?B?d210N3psY1ZXMm0rR0pKekdZYU91dnppekY4czF0UEt2MENkKy82WUQ4QW83?=
 =?utf-8?B?cVZEOUlhaExYclF3NTlsa0F5eHdwQTlsbEREcmN4RmJYM1cxVzcvcEFSaFJp?=
 =?utf-8?B?UExQVC8yekNnNXFqNkhBU2R5ZGRjMnlyNTY1SlVOMFErYXduWGxVRjlPejRL?=
 =?utf-8?B?d01lczFhcm14YzV5UDZzTjE5cGxiKy82c1daU3hWQldxRFlUQnVaa0pMVm1i?=
 =?utf-8?B?QkE4alRyMDFNSVAzOWprT3duZEo1a1hmemc4eFlXTGZYL1hMM05qK3Ivb2o0?=
 =?utf-8?B?MHEvSEY2cVg4dlpDQU1nZXFxYkZ1TjJ5QisvWVFWeWE0NlZXOW4xcEdEdjhB?=
 =?utf-8?B?VFE1aThuL0lPeSsvdTN5VVhva2xLbXJLZ3UwSVl6eUI1RXJRREVmSHJJZVlj?=
 =?utf-8?B?dmFIQlJYeDJLQk5tUFNiWGpZMDdhTExpUGhMS3dycmRrMzdqMHVSUmVqNE5E?=
 =?utf-8?B?anMwNnd2aEtBa2lNakRjZmN0MGROSWs2b1VQUlcyMnVlUVlnZXZteUdnRjIy?=
 =?utf-8?B?MVJlRFdiR1VEc3p6YjZyclRZaW9VTW44YXdCU1JPRW8vak5FQm0xT2tDMlJ1?=
 =?utf-8?B?V0RwWHhVaHpUeTJiUnA1OWlYY0dPeTk3cWdjdXU2TlRCaGhOMDhZNkRyaDh2?=
 =?utf-8?B?ZExNU205b21LWnNIUkpaWmZrcjU3MFlqZDJSRmhsOUN6d0hkcFBBeVVYYk1C?=
 =?utf-8?B?eFhkY3c5Q0RrYnlIVXZ6RUFtR0gxZWNNK3VLZ3R0MFlVNGR2TjZDTDA5Tmx6?=
 =?utf-8?B?REZkdmJ4U1J6czI1Zi9Hc0ZZNWZLRngyT3h3SENYRVFxRGV3R2VwMzNUNTcx?=
 =?utf-8?B?NlgzaTRzbXJJbG9HKzY5a2c5aWZBWTFZdnY3dzlGcVg3TGUwb2psQ2E0NWNL?=
 =?utf-8?B?eUQ2V3FnTWdsQWFzR3NtME5sRkcvQ2NQN3BpS2ZucTZpalRKMlBYbjZEVUMw?=
 =?utf-8?B?dFVmN2Rvcy9wZnhXNDEyeXgzRlA5U1ZWcVI1VTQ1WlBpUldjNDBXMDBVSTZ1?=
 =?utf-8?B?S0VjRVYyajBIa2dhY0FQcW1wbG5TejdxbzJpL3g0RkdUS1MxMFR0TmRpL0p1?=
 =?utf-8?B?dFlwOEtmVkZGQlBSUjRBRzc0WFpsUS9Cdm15d0tIbCt2NmcxK2tqVUE2b0ZL?=
 =?utf-8?B?UXIvNjdyZHRydnd2QUltK3c3NTUxUUJPYkhBRGlld1duclRaMi9FM1JlZDh4?=
 =?utf-8?B?Y3lDQjFNQ0E1Vi9HdnJVV0dOV2FUUFZDS0VzaGFBdnpLK2Z5cllJTlVSVzBj?=
 =?utf-8?B?V3pKMkJ5WTdYcWs0dUpTTmNUVHkrQ2NUK2RwUkY1NWlpZlVjb0IxT0NNT2I0?=
 =?utf-8?B?SWViUDE2TDUwZzhFM1dseDU5cWFSZEZHOHgwbHIrWnZobU1WZ2tDdFNKRkg1?=
 =?utf-8?B?WlgwMlpYb0dEZUpDZDd6c1dDczgzcWVzQzZReGhNOGpxWjVQbTFYWUttcGZu?=
 =?utf-8?B?ckQvQ1hvTkNVc1RxTWNOeWZsRXVjalBDL01CSEx6RDNFYmVSaGVPZmFNL3R6?=
 =?utf-8?B?c0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ab8e7319-6bc4-41ec-d270-08db3a4e8f79
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Apr 2023 05:35:29.6347 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MJczO1zdLDS1HZL9V4vSJ27w9IVegK5OZ5XwH4UOVkXYdcnck2KtHssAmOc2W3o8OzZZlSBcTF1XRGPbzc8eq0uvy0WeVNJvkDVv9n5EhIw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7819
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 02/12] drm/i915: Introduce intel_csc_matrix
 struct
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


On 4/11/2023 10:37 AM, Ville Syrjälä wrote:
>>> @@ -294,13 +293,20 @@ static bool ilk_csc_limited_range(const struct intel_crtc_state *crtc_state)
>>>    }
>>>    
>>>    static void ilk_csc_convert_ctm(const struct intel_crtc_state *crtc_state,
>>> -				u16 coeffs[9], bool limited_color_range)
>>> +				struct intel_csc_matrix *csc,
>>> +				bool limited_color_range)
>>>    {
>>>    	const struct drm_color_ctm *ctm = crtc_state->hw.ctm->data;
>>>    	const u64 *input;
>>>    	u64 temp[9];
>>>    	int i;
>>>    
>>> +	/* for preoff/postoff */
>>> +	if (limited_color_range)
>>> +		*csc = ilk_csc_matrix_limited_range;
>>> +	else
>>> +		*csc = ilk_csc_matrix_identity;
>>
>> Lets merge this if block with the below if block, as we are again
>> checking limited_color_range.
> I considered that, but didn't really like it. Seemed clearner to
> first setup the pre/post offsets, and only then deal with the
> input matrix.

Hmm yeah clubbing the limited range stuff, does jumble up the steps. So 
this seem to be good as is.

Regards,

Ankit

>
