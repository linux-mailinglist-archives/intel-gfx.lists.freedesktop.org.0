Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2132342C9F1
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Oct 2021 21:24:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A0846EA9F;
	Wed, 13 Oct 2021 19:24:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CE756EA9F
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Oct 2021 19:24:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10136"; a="250938717"
X-IronPort-AV: E=Sophos;i="5.85,371,1624345200"; d="scan'208";a="250938717"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2021 12:24:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,371,1624345200"; d="scan'208";a="570950490"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga002.fm.intel.com with ESMTP; 13 Oct 2021 12:24:12 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 13 Oct 2021 12:24:11 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 13 Oct 2021 12:24:11 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 13 Oct 2021 12:24:11 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 13 Oct 2021 12:24:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Hfq6ibABXVK2Lyc7RKWptzbzGBaMs6mQgPFi2zk8qKRfSdVq+E6/kLXhPeiUImEQrYXHkjhbgYV2gpKtlPRoURHsXcFDLl3C453/sG8Zvm/CwMHFU2NRKlGqlkXcCraMs736cdpA630wsYPf7sUj0NyA6Bu8X5rdAmiB9x4CwkzMSwAgvtWA6PAY8l1afkFNjIwm2ibzSdDj8mbs0zkj/GBZDbk67oKrH6ixFmQbDEJRNB1a2gEIYWL4Yn2VLWm6j1jbtFLIW9y/oC0yAIuHlreSNvmSuAc5x0u1JuGsmpZUsET25YQf9xmdVyYs7fQ8lsafizzJrdxMPyWAz65C3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bAbMGnqeFNNdwvyAI4HkilsLibWphZei7e7HQux2e34=;
 b=frvggdlcIsDLW6lLWOntiaGb5jlgLnTN6Pl08p/VYPyxgjS3rWKEjg3tPEiJ/yAuwTeJ8j3/3lWi6/Jzp+JrFQjfYYYCrrryhofT5hVa7OEY58sU5vUFIobaTxRf+bfUk6pjmebUXq0uV3oO9zzmBGo83bJt+sUzSaIrHtcfFcKqg8+TLt41yd8YuK+qxiaCf35/o3TLT/isd5vEWvAPdBaVlQBxOZ8HKe/aQszSWkdWC2mCP1wY5FatRTItHMTeiTEVctGX8opCrFq7DMwzBtPRbE1AYn+HbYObljy3ih7wnru/Z1mC/etEIYE/YOy3owA2CAR5+KM2eSIFXs3rvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bAbMGnqeFNNdwvyAI4HkilsLibWphZei7e7HQux2e34=;
 b=oYLg26pwWt1oF6yKC4bIWrAoTb0xqeb5mJo1KTJQNxbTVlhWmw2XERKXZ/bcaAfX6rkJ6Ybptc5Nz0FF+lyCloCIOJwHhxAaoL+LN1irBOyvpkBKOX1PJgdhwFylx2647LeGmeD0Qp/c2UiEdeyFL1U0nGsWT40Jupe1Yu+zAmo=
Authentication-Results: emeril.freedesktop.org; dkim=none (message not signed)
 header.d=none; emeril.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
Received: from PH0PR11MB5642.namprd11.prod.outlook.com (2603:10b6:510:e5::13)
 by PH0PR11MB5626.namprd11.prod.outlook.com (2603:10b6:510:ee::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.15; Wed, 13 Oct
 2021 19:24:09 +0000
Received: from PH0PR11MB5642.namprd11.prod.outlook.com
 ([fe80::880d:1a54:ca07:738a]) by PH0PR11MB5642.namprd11.prod.outlook.com
 ([fe80::880d:1a54:ca07:738a%8]) with mapi id 15.20.4587.026; Wed, 13 Oct 2021
 19:24:09 +0000
To: Matthew Brost <matthew.brost@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Patchwork
 <patchwork@emeril.freedesktop.org>
References: <20211004220637.14746-1-matthew.brost@intel.com>
 <163338610450.1480.1050244388708372471@emeril.freedesktop.org>
 <9f423dd2-f083-ad8e-1f60-ceb5d53799fc@intel.com>
 <20211013001554.GB4739@jons-linux-dev-box>
From: John Harrison <john.c.harrison@intel.com>
Message-ID: <82776204-d188-0bc5-278b-2eeddb5c6588@intel.com>
Date: Wed, 13 Oct 2021 12:24:07 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.14.0
In-Reply-To: <20211013001554.GB4739@jons-linux-dev-box>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-GB
X-ClientProxiedBy: MWHPR1701CA0014.namprd17.prod.outlook.com
 (2603:10b6:301:14::24) To PH0PR11MB5642.namprd11.prod.outlook.com
 (2603:10b6:510:e5::13)
MIME-Version: 1.0
Received: from [192.168.1.106] (73.157.192.58) by
 MWHPR1701CA0014.namprd17.prod.outlook.com (2603:10b6:301:14::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.14 via Frontend
 Transport; Wed, 13 Oct 2021 19:24:09 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8f6a0140-4f6c-45ea-84ce-08d98e7f07dc
X-MS-TrafficTypeDiagnostic: PH0PR11MB5626:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <PH0PR11MB562657825C8AB81EBD53774FBDB79@PH0PR11MB5626.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5516;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IQZLw6FHnGX6vH8P2trxbn5zxnsQ0k50XPqowF3iCUS+aMINRslHDzKbVLC4mhZ5JTKsL/sK2uEeUTw/2OyvggTMeZm7AMPTVSN0iuLEJ7JKDsJd/nmcN1MlLeqk+kAz+rEqhOaXyIWc8GWfucYsZagXznxIwqYCoKmWY9K9AxLDQvHZ/gApjY8lfUaT3Q2SHrZOh6+TfQ9RuiLFm91VtRMIK/ii/W02MA60u8/RG9MX761Q6FUHlxTS0HuYfe94QH43FbKM6wElVwTubldYOaURBgeNbTzEvJvqWgHZwsx4cOhYXK0AKzIHaLtuantsE6kUWn1HUkixXaoGoL3ibgVkP3QVZ7G4Ou9b2vvGATLOV7OrPi+SKeb6GOvgczkDJ/i2B11WTPMcpi1EfZVLAUGsKQyyUAsrF6BN4mzTjfhsPDgR+jclfeJC/DJ76W1RtVpFFHNeeBWLpxIuvSLFk6bmdXXoTU2xVvuzPtgvco39xb5kvefdj8jVS56UzlEJAs8r1RK6xYnPTqUqx8zvQMlYOwSfjqEf/V3CXpSTRw7U5ijXQQOY4B5XQ0l9n1CfhL2cXdBenfVThQ6hZkWiocKjzE2Cu47EftPgkEMV0dryZFRAG8mVNE/H0dOOBDBJWl5nybXx7Jyqkn29MkDX7gysEcZA6nwhB6miKbPw1t18bokxg1A8waKRPyrBPCBIgm3Ko3xCMDobfJwZqYdar8TWI+dQk0oWuJjxHkq04qhl/ac+EsMNtDtkyrbzTnJ4
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5642.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(66476007)(37006003)(316002)(956004)(16576012)(2616005)(508600001)(6862004)(26005)(66946007)(6486002)(186003)(36756003)(31686004)(82960400001)(2906002)(5660300002)(38100700002)(66556008)(86362001)(8936002)(966005)(83380400001)(53546011)(4326008)(6636002)(31696002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OUpydnF2bFJReW1TbzZBdXZCL1VRczkxN1M2cHlJR3NldzF6Szg1VFNkdnY5?=
 =?utf-8?B?YS80MDMrRzNmaHBwSFR0N2czajloeFdyYnNhc1VTenYvMnBocnlFdk9yWWNp?=
 =?utf-8?B?M2I4MW1YSGZGRmFRTFQwVHZVUDJ6VEdhQVpZUU5CWHVZYTR5VHBBWTNzRFIv?=
 =?utf-8?B?Zmx5YXZLYUxxTklNRXkyZDZXMzlkYzZMZDVsaDhJeWYxcm1xSHB6ZXdOWVBW?=
 =?utf-8?B?aXRKNWM0ZlUwcGsxL2FSTlFFZXpCTFlrYU5VaVJjdWpIbjZPeE8xa3BaanZy?=
 =?utf-8?B?djFMalBDWVBoa3p2aGViWVFNMTZiRHZvcVlOLzJhc1F5TnhXa0NJU0djd2tX?=
 =?utf-8?B?eWNSRjE1NTkrVEgxai9Cck80M0V5M2w2R1VtcGNrRnNTeXhXa2N6UWNjVGRm?=
 =?utf-8?B?YThIaFd5aHVDZmE4VEd0U1lYSm9ZU0hackZPKzdtZFBuQUFlMFhLNEJ2a3gy?=
 =?utf-8?B?VlpNSDV5cW9Sc1FFTktWYWdzU0c4VExNem5uSFBkNjJpSXZsd3BwU0ZLb3dR?=
 =?utf-8?B?NzQxamlVUVFYOHdTOGQ5UVZtajVIb2Z0MmlOQ1oxQVVIUVFidVdMT2I0L1p2?=
 =?utf-8?B?YnYveEtNLzZab1Buc1lrcG9xNmhmMThRU0phK3hSMlRkOW1iZ2ZsdzltS3Av?=
 =?utf-8?B?ZkxxL05tQ1AzRkxHWGZ2elVTamlCWEd3VXZyaVJjQTJ3U2xyUG13c09YRkNO?=
 =?utf-8?B?QlNCZjNzS1N6VnJwRVBnRnh6VDNQYmFXdXJSUjBJYW5VRW9XbmxIWUk1Mnlw?=
 =?utf-8?B?UTJFSWwrb2dOQkhBWDZHR0phdnV3TDYyN2pxQUY4T3dIallQQXlCUlNTWFNL?=
 =?utf-8?B?b01ERDdyU3pVNXpoeEU1eGF0Z1dkQm9TYk9mc29TNjRRNFZVNmNSVEFHR0k3?=
 =?utf-8?B?TUFrNEJ4MmhyM0I2a0pOVVpsTm5yMDlYMTgrTnU5VExLTVhSanBnd2h0aDhW?=
 =?utf-8?B?R1hyaURLNDd0eGZieUMzWnAvcENmWExoVlNoWXFLMWxyOG9SbWhWSmJSVmpL?=
 =?utf-8?B?ZzNsZTA2ZjBoVWgyVEtxcFJZT203M2p3dHlOcDZyTmZXaUdraVJ5cEhSUURR?=
 =?utf-8?B?Vkp0SHNOOE52eHZjemxHZE9LTmFCUURKTWlUUHBIZHlZYUJzV01wUWdTcG5h?=
 =?utf-8?B?WVR3Y1hDU1l5cmVONjlpTGNkcitWWG96UTV0RkhDSXg1YVhJSW5ITElMUmJB?=
 =?utf-8?B?b2tHSXp4dkt6WmZtQldKemMrbVc2emhSQXg1TWU0ZUFrdWd3QXdSbXlWNzVQ?=
 =?utf-8?B?ZG9CZU03dFVod3dZRVBlMVpaMFN1ZDBzTythdHg2UVlUdVFyUExmS0xncWxV?=
 =?utf-8?B?bFNuU05DSjZNYk00Wkh0ZlBmczN3YUdlQXFwNEdBaTZYSW14RUVDVm1ZNjNh?=
 =?utf-8?B?ME9DN2ZxUjZsekx2VnJKMm10M2xsdDRuc1Z3Ky9oWGFRRktpUUhmVEZ3UUVq?=
 =?utf-8?B?N051anI3b2lGV3oydXJMM21UYms2NGhSamY1S3p5cE9LVk4xdmRCMU53ckx2?=
 =?utf-8?B?V0tKQ2xCV0N3YUdjZzFDOEg2Z1hHRHJGWlR6YVZvaHBmbmZXUk1qZm1aM04r?=
 =?utf-8?B?MnU3eVp0NXJOdy8wTGswaGsvc09JbUFMaXd3MWtFeWxCb1hMNzg1cUxzNTM0?=
 =?utf-8?B?djYyYUdpdTA0Q1kzbUxHZHFxUFpWckx2QThmU041V29rcnUzdEJnRVVUYXZR?=
 =?utf-8?B?cWQyVjQwd3lzQitPT2RoUjkvbnd1eG5DUkdjOFdRQlJqaG9BelFMNmN2N0gy?=
 =?utf-8?Q?ou8B6dru1madIh/mfOA9SSN50LOywtTCQL/pflA?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f6a0140-4f6c-45ea-84ce-08d98e7f07dc
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5642.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Oct 2021 19:24:09.6894 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1Tw+ZhaAmcXqx0ZQ9UGlt4b9TOAXyoJrccz1COhHBOtpjSNzmRfKzD+ZXo85aWORWFgNK4ghQQ4TvKH8Pfn2tTwyXq7Bi7d2ZayI5spckmk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5626
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Parallel_submission_aka_multi-bb_execbuf_=28rev4=29?=
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

On 10/12/2021 17:15, Matthew Brost wrote:
> On Tue, Oct 12, 2021 at 03:15:00PM -0700, John Harrison wrote:
>> On 10/4/2021 15:21, Patchwork wrote:
>>> == Series Details ==
>>>
>>> Series: Parallel submission aka multi-bb execbuf (rev4)
>>> URL   : https://patchwork.freedesktop.org/series/92789/
>>> State : warning
>>>
>>> == Summary ==
>>>
>>> $ dim checkpatch origin/drm-tip
>>> e2a47a99bf9d drm/i915/guc: Move GuC guc_id allocation under submission state sub-struct
>>> f83d8f1539fa drm/i915/guc: Take GT PM ref when deregistering context
>>> -:79: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'gt' - possible side-effects?
>>> #79: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm.h:44:
>>> +#define with_intel_gt_pm(gt, tmp) \
>>> +	for (tmp = 1, intel_gt_pm_get(gt); tmp; \
>>> +	     intel_gt_pm_put(gt), tmp = 0)
>>>
>>> -:79: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'tmp' - possible side-effects?
>>> #79: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm.h:44:
>>> +#define with_intel_gt_pm(gt, tmp) \
>>> +	for (tmp = 1, intel_gt_pm_get(gt); tmp; \
>>> +	     intel_gt_pm_put(gt), tmp = 0)
>> Not sure what these two are complaining about? But 'gt' and 'tmp' should be
>> wrapped with parentheses when used?
>>
> Not, sure but I think this one is fine.
>
>>> total: 0 errors, 0 warnings, 2 checks, 290 lines checked
>>> 93e5284929b3 drm/i915/guc: Take engine PM when a context is pinned with GuC submission
>>> 4dd6554d994d drm/i915/guc: Don't call switch_to_kernel_context with GuC submission
>>> 8629b55f536c drm/i915: Add logical engine mapping
>>> 8117ec0a1ca7 drm/i915: Expose logical engine instance to user
>>> aa8e1eb4dd4e drm/i915/guc: Introduce context parent-child relationship
>>> aaf50eacc2fd drm/i915/guc: Add multi-lrc context registration
>>> e5f6f50e66d1 drm/i915/guc: Ensure GuC schedule operations do not operate on child contexts
>>> adf21ba138f3 drm/i915/guc: Assign contexts in parent-child relationship consecutive guc_ids
>>> 40ef33318b81 drm/i915/guc: Implement parallel context pin / unpin functions
>>> 1ad560c70346 drm/i915/guc: Implement multi-lrc submission
>>> -:364: CHECK:SPACING: spaces preferred around that '*' (ctx:ExV)
>>> #364: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:771:
>>> +		*wqi++ = child->ring->tail / sizeof(u64);
>>>    		^
>> This seems like a bogus warning.
>>
> Agree.
>
>>> total: 0 errors, 0 warnings, 1 checks, 570 lines checked
>>> 466c01457dec drm/i915/guc: Insert submit fences between requests in parent-child relationship
>>> 2ece815c1f18 drm/i915/guc: Implement multi-lrc reset
>>> 7add5784199f drm/i915/guc: Update debugfs for GuC multi-lrc
>>> -:23: CHECK:LINE_SPACING: Please don't use multiple blank lines
>>> #23: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:3707:
>>> +
>> This should be fixed.
>>
> Done.
>   
>>> total: 0 errors, 0 warnings, 1 checks, 67 lines checked
>>> 966991d7bbed drm/i915: Fix bug in user proto-context creation that leaked contexts
>>> 0eb3d3bf0c84 drm/i915/guc: Connect UAPI to GuC multi-lrc interface
>>> 68c6596b649a drm/i915/doc: Update parallel submit doc to point to i915_drm.h
>>> -:13: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
>>> #13:
>>> deleted file mode 100644
>>>
>>> total: 0 errors, 1 warnings, 0 checks, 10 lines checked
>>> 8290f5d15ca2 drm/i915/guc: Add basic GuC multi-lrc selftest
>>> -:22: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
>>> #22:
>>> new file mode 100644
>> These two can be ignored.
> Agree.
>
>>> total: 0 errors, 1 warnings, 0 checks, 190 lines checked
>>> ade3768c42d5 drm/i915/guc: Implement no mid batch preemption for multi-lrc
>>> 57882939d788 drm/i915: Multi-BB execbuf
>>> -:369: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_i' - possible side-effects?
>>> #369: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1854:
>>> +#define for_each_batch_create_order(_eb, _i) \
>>> +	for (_i = 0; _i < (_eb)->num_batches; ++_i)
>> Again, not sure the 'reuse' comment means but should also use '(_i)'?
>>
> I haven't been able to figure out how to fix these ones. I think you
> only need () if you dref the variable.
The () is to prevent any kind of operator precedence confusion when 
passing in something more exciting than a simple variable. Doesn't have 
to be a deref, it could be any operator. Granted, extremely unlikely for 
this particular macro but generally good practice just in case. E.g. 
someone passes in weird things like 'a, func()' as '_i'.

John.

>   
>>> -:371: ERROR:MULTISTATEMENT_MACRO_USE_DO_WHILE: Macros with multiple statements should be enclosed in a do - while loop
>>> #371: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1856:
>>> +#define for_each_batch_add_order(_eb, _i) \
>>> +	BUILD_BUG_ON(!typecheck(int, _i)); \
>>> +	for (_i = (_eb)->num_batches - 1; _i >= 0; --_i)
>> This seems bogus. Wrapping it in a do/while will break the purpose!
>>
> Right. Added the BUILD_BUG_ON here because I did have a bug where I used
> an unsigned with this macro and that breaks the macro.
>
> Matt
>
>>> -:371: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_i' - possible side-effects?
>>> #371: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1856:
>>> +#define for_each_batch_add_order(_eb, _i) \
>>> +	BUILD_BUG_ON(!typecheck(int, _i)); \
>>> +	for (_i = (_eb)->num_batches - 1; _i >= 0; --_i)
>> As above.
>>
>>> total: 1 errors, 0 warnings, 2 checks, 1298 lines checked
>>> 28b699ece289 drm/i915/guc: Handle errors in multi-lrc requests
>>> 962e6b3dce59 drm/i915: Make request conflict tracking understand parallel submits
>>> 368ab12f5205 drm/i915: Update I915_GEM_BUSY IOCTL to understand composite fences
>>> b52570f01859 drm/i915: Enable multi-bb execbuf
>>> 8766155832d7 drm/i915/execlists: Weak parallel submission support for execlists
>>>
>>>

