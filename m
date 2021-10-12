Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 28DB942AF91
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Oct 2021 00:15:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19B016E9F3;
	Tue, 12 Oct 2021 22:15:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 383246E9F3
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Oct 2021 22:15:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10135"; a="214230220"
X-IronPort-AV: E=Sophos;i="5.85,368,1624345200"; d="scan'208";a="214230220"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2021 15:15:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,368,1624345200"; d="scan'208";a="591933871"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP; 12 Oct 2021 15:15:05 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 12 Oct 2021 15:15:04 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 12 Oct 2021 15:15:04 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 12 Oct 2021 15:15:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UBRt+aSA8qs+aErU0+UVmPxsEA1+9Mo5KzFWsWEeNs7er+qs3zKXf0jCi9Q/+59xYQA21axyqJZU12k1fIn9Gs54nGPWb580K49+0nuwo8/ZX4VaX/XoapziZxHTkpWVXdatiFjXM4V5VUmkD1KcAmHBLPyJQSy33LNwPe6iyOQB5Krwy+AmLV/kZTORmoWxrbSY2VUD5kqZnA/NfG0rXhma8dHBV3R2yS0d1zYwuxvatBB8S1LS9yudUqzzluPDY5vjtis9Z442NHpKkaC+S/HWrU3Dnk48QPLTYxRehP2P9B9tweB4q349vIDIIjBoLzzn6m+WOsCv14lWiXZbIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kSGMCMPriIGCgmh79fDSv6tvFQrrHL+CsZeTWICOjkI=;
 b=MV2M8WlKTCGkfJ98APsxaXO169wgapyqlbY6yQChPx80mzK2HctDMAX4PzRbWYbGb5MqAAiWNMGP5i6TeLTNrzcndprqpluP2m8CS1AWpu1xOkGIPDfaHEHJkW56Xce0nxmZXOCxemzINgrljntKZEWSSLkpR/A/Fl/5sh5L0Um7Ez3+wCRmTVaSedhRsoUHAAo/QtmzdBLJPCBD5pSRfjb3i0ci0x6ESl0JK3yI3yzwB4GEqaRATfaI42tzrtB08yXroXAfOIRu9S1Ey2Wh48jZ3+1LepmBe9suFTJ9Edi1UP211k4g2/otgOY9FhvWTv8PZ51gBXfaLjwsW0mPEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kSGMCMPriIGCgmh79fDSv6tvFQrrHL+CsZeTWICOjkI=;
 b=yYg1shE0yux5DIeLVomG1yap2HtGt0jNdfBJWToLb46Q9Ieh0LBWPG5IVWF20WwbxNsFd8JjtQf1jj3eFWOYmIGwj4hwILCZ0R5jLc24w+ql1wQwdbYgG/fDAJBQAnVrWmk06+Z3YvYwAxeM69c/F0wW+ymEPNtF4Qg5y6o74Js=
Authentication-Results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
Received: from PH0PR11MB5642.namprd11.prod.outlook.com (2603:10b6:510:e5::13)
 by PH0PR11MB5658.namprd11.prod.outlook.com (2603:10b6:510:e2::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4587.20; Tue, 12 Oct
 2021 22:15:02 +0000
Received: from PH0PR11MB5642.namprd11.prod.outlook.com
 ([fe80::880d:1a54:ca07:738a]) by PH0PR11MB5642.namprd11.prod.outlook.com
 ([fe80::880d:1a54:ca07:738a%8]) with mapi id 15.20.4587.026; Tue, 12 Oct 2021
 22:15:02 +0000
To: <intel-gfx@lists.freedesktop.org>, Patchwork
 <patchwork@emeril.freedesktop.org>, Matthew Brost <matthew.brost@intel.com>
References: <20211004220637.14746-1-matthew.brost@intel.com>
 <163338610450.1480.1050244388708372471@emeril.freedesktop.org>
From: John Harrison <john.c.harrison@intel.com>
Message-ID: <9f423dd2-f083-ad8e-1f60-ceb5d53799fc@intel.com>
Date: Tue, 12 Oct 2021 15:15:00 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.14.0
In-Reply-To: <163338610450.1480.1050244388708372471@emeril.freedesktop.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-GB
X-ClientProxiedBy: CO2PR05CA0081.namprd05.prod.outlook.com
 (2603:10b6:102:2::49) To PH0PR11MB5642.namprd11.prod.outlook.com
 (2603:10b6:510:e5::13)
MIME-Version: 1.0
Received: from [192.168.1.106] (73.157.192.58) by
 CO2PR05CA0081.namprd05.prod.outlook.com (2603:10b6:102:2::49) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4608.4 via Frontend Transport; Tue, 12 Oct 2021 22:15:02 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 25e4749f-0d97-4f78-b9e2-08d98dcdbcbf
X-MS-TrafficTypeDiagnostic: PH0PR11MB5658:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <PH0PR11MB565865F72BE0701EA33CA34ABDB69@PH0PR11MB5658.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4125;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GaDIbfXCFsnga0CmQWPGotayQoT40SkVO/3Lij6G/tVgu2yS+WgHdKLQyZmHPOAwojFvacLQd7Vk/AOIavIunRdKOzf3xZ0899oneB1AlfcgCKYinU+grww4hxt5hfAj3TrPPQuExw+6n765w5HmQjjsxw/xERLN7gmi1yzkb5NeKiO8p9Hax2PYpVlg2kF2mpBl+hTr4af6a9t3ei6mbrqYwTvewrTZDwTKLo0AAigEjUJq9vWeq4u2AL9OUadusaQad8R1EjQjtJkgOlVlH8LQAdLsHfPKSWk5UOeULTUZcdsEY71b8iMrdCl8V06mUp9HKOUSZv7wLriLBupG4ZUofPpaihZdLLQJzRxhLjaSKgc7+2AklKNLVamfLIT04AnyYd3gjAj+LWPB9SvPrkVyUm7M713APp49hW86GjIROc+IcUIcSDpKpwKJDutr7eTD47FMHPjXrHGPEvi9rCC1+LK4k4ia+z5NDhMBByEQGRxj6r7u5Z9Afb3NdzA2NwZDFPDvKQvNEz3yuDUU6WMZu2wdJZ3F2LjM4tKhsdWOXg4Lbn1woYJpy00MMEu05M/C7EzZtEjXZo+nZqnziJJOAPCVf8DByq+2M65W40GZ5XdsIlyXLzDelvXn1g+cRDYoM2rNxb/9Zoap4KiHbJX7vsAAD9Sjz/tQvspA236GghFnKhbeyHo2U2PbM/9F4ug9zmCfbTBYjFQQEmNUzwzXEAP0uQ/MqKEZOvHouNRmiYakjH6IQL+mE0oxo2jI
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5642.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(86362001)(66476007)(82960400001)(66946007)(53546011)(5660300002)(31696002)(508600001)(2906002)(66556008)(316002)(6486002)(31686004)(8936002)(16576012)(186003)(36756003)(83380400001)(110136005)(956004)(6636002)(26005)(2616005)(966005)(38100700002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a2VkT3lTa3ZSdU1wNDZINlF5OHMzekpHRWhId0t1WkQvTTkxcDN5Nm05dzVy?=
 =?utf-8?B?c0tTYVFBZG52bm1rV056SGpTeDdmL0QrSGpuRzJPSE5oREtyczBVWVVVblN2?=
 =?utf-8?B?bGtIZmd4UUxJWXpPaHoyUk1pZ0dsRmhjTzNoNlFUdm9pOG4vQnNDWFVHS2U0?=
 =?utf-8?B?N0VCVE1aSUdSZkFkQ2l0aFQ3UkpibFNoY2NPQmNZUHRIaGFWbVlFVjgvb2ll?=
 =?utf-8?B?MnVaTFQ1SWtDdkVaVTNHbzBjSll6eFJsbFZtVWVQU3JqOW84YkdlYjAvWDVJ?=
 =?utf-8?B?TzVnOXZJNDdCRVg0VEp5bWEyUC95NzlvTk5EeGUyU0RhWWtBWk1OTTJPMUU4?=
 =?utf-8?B?MDBVcW9YTnkzWFJ2ZU9YVWJMbDNCWEFZeXU0UnkwWUpSeW1XS1JDVnhGQWlI?=
 =?utf-8?B?N0YwV2ZTaUx4c1FGZVJXaFhnS1k1c2E2TU1JaURsY0hrd0FPcTUyVXJvUFps?=
 =?utf-8?B?SmZaOEg5ZWZmTjRGK0NTQlc0cjRMRWJkOERuWVgwdHJ4alh0VnMzV20waGQ4?=
 =?utf-8?B?VVg0OXNTQ1hpTVJqSG4rd3lxeTF1a0FHckJSeVF6Y0tCemYrMEVsYkhTTVNv?=
 =?utf-8?B?TktTWWd0bzE2K2h6TW1UU3VXYlNiRzdrc1hyUGZyMzV1ZnNyNStxZ0I5RSt4?=
 =?utf-8?B?Y1FPRkRGWFk4Myt2dUpyUG9jQ0hLREkxS0M2VGZUNi9zWlNnU3puRlF1QmtD?=
 =?utf-8?B?VXdvdUxaUzhxSjhaRWNMVm43OUM3Nm9hYlRyL2VJUkhlWjZGNU03OENZWWM3?=
 =?utf-8?B?K0tLSVNjcC85dlFkbXNrUlNaSGZKcjdoRjQ5OXN4eVVuZEJxdUNUZk4wdHU0?=
 =?utf-8?B?YS9oL2Z6Sm1wc2l5akZLZjJpSHRmbC82d2ROWkJ6emtXWmdmK3g4Wm1JV2tk?=
 =?utf-8?B?WHhtV0lDbU5lY2dWa2FCTGl1YktPQXk1TGJnb2pZT3MyanFmc0lld2JKblVx?=
 =?utf-8?B?RGlzRmpYSXlFV3Vjc2s1OWhSRDVudWhsT0JwaVYrWTE0Q0FCR2pIVmRSRnJL?=
 =?utf-8?B?bk4vcnpUY0tucUxXaHdUTWU5OFZkOERmWmhGZ3dzWlJRTE5ycWYra0t2QWRw?=
 =?utf-8?B?T3FvR0lZUEhYc2pJRThhWlIvMEFPbzE1WlI1bVc0OXJNSmx5d3hraGozTmZY?=
 =?utf-8?B?Nm1YQ2N4bDUyMmdVRmFVY1hmZWJZMkJPR2RvQTdsbHp5QTZQNDgyUmpMVUVn?=
 =?utf-8?B?MFM2ejNjWjhLblh3RGFWZi9jZDBuemR2aE5HSlJFNVdhRjBMckUxQStnL3Zu?=
 =?utf-8?B?WW4xNFUwWm1RSFJQeWFuT3FGVXNMV0dzaFhvZWkrQVZkaHVncjFPbWkyUEVB?=
 =?utf-8?B?endENFFPd3ZJMEJxSmNmZUp1d1M4U0JMZXRlVkVTQUJ5dDBjdTNWTmdkR2FY?=
 =?utf-8?B?cG85YnNpRUh6NE1TOXllTWV0bnl2dXFOMUpESFM5RVgrNDBRc3dXak4zZFQ1?=
 =?utf-8?B?T1N0V08vaElJMjdUbHBYMmthTU1zL1R3b0RRWjV1am5LdWZVcEFZbnVMQ0lC?=
 =?utf-8?B?dm5tcHdtd3htV3oxc3V3UGd1SVZncm5SSkRzeGVPR2d4TERpNDZYRVpLd29H?=
 =?utf-8?B?Yyt5VDJoaGs3T0x5OUZDZmNoMTNNWHhlSVBpZG1hRkhITkJtWnNaeWlOczla?=
 =?utf-8?B?emdsNm83UXQyK2ErYkFqYzFWa0ZDaS8wWmk0djdkM2R1elNvTXVlMURXcDd5?=
 =?utf-8?B?RmhzUSsyNTlkaFd5NEpNTmNtUXJWZzVValdEbDIzODRhV3JkU0tXVStJczhl?=
 =?utf-8?Q?f+xJng3+h9tHF2RATShAM3BRccynzdDPYzPKcCS?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 25e4749f-0d97-4f78-b9e2-08d98dcdbcbf
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5642.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Oct 2021 22:15:02.7504 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SYU5LjACDKTflbc0V7vu7nMd9S7LHSnxG06mxLdU+MsXl59PUKxn6wJSl6eqalXL0uC9wsGH7zbRw1IUp+1x81Ap5nfI/N/A1XTwEKySNbU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5658
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

On 10/4/2021 15:21, Patchwork wrote:
> == Series Details ==
>
> Series: Parallel submission aka multi-bb execbuf (rev4)
> URL   : https://patchwork.freedesktop.org/series/92789/
> State : warning
>
> == Summary ==
>
> $ dim checkpatch origin/drm-tip
> e2a47a99bf9d drm/i915/guc: Move GuC guc_id allocation under submission state sub-struct
> f83d8f1539fa drm/i915/guc: Take GT PM ref when deregistering context
> -:79: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'gt' - possible side-effects?
> #79: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm.h:44:
> +#define with_intel_gt_pm(gt, tmp) \
> +	for (tmp = 1, intel_gt_pm_get(gt); tmp; \
> +	     intel_gt_pm_put(gt), tmp = 0)
>
> -:79: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'tmp' - possible side-effects?
> #79: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm.h:44:
> +#define with_intel_gt_pm(gt, tmp) \
> +	for (tmp = 1, intel_gt_pm_get(gt); tmp; \
> +	     intel_gt_pm_put(gt), tmp = 0)
Not sure what these two are complaining about? But 'gt' and 'tmp' should 
be wrapped with parentheses when used?

>
> total: 0 errors, 0 warnings, 2 checks, 290 lines checked
> 93e5284929b3 drm/i915/guc: Take engine PM when a context is pinned with GuC submission
> 4dd6554d994d drm/i915/guc: Don't call switch_to_kernel_context with GuC submission
> 8629b55f536c drm/i915: Add logical engine mapping
> 8117ec0a1ca7 drm/i915: Expose logical engine instance to user
> aa8e1eb4dd4e drm/i915/guc: Introduce context parent-child relationship
> aaf50eacc2fd drm/i915/guc: Add multi-lrc context registration
> e5f6f50e66d1 drm/i915/guc: Ensure GuC schedule operations do not operate on child contexts
> adf21ba138f3 drm/i915/guc: Assign contexts in parent-child relationship consecutive guc_ids
> 40ef33318b81 drm/i915/guc: Implement parallel context pin / unpin functions
> 1ad560c70346 drm/i915/guc: Implement multi-lrc submission
> -:364: CHECK:SPACING: spaces preferred around that '*' (ctx:ExV)
> #364: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:771:
> +		*wqi++ = child->ring->tail / sizeof(u64);
>   		^
This seems like a bogus warning.

>
> total: 0 errors, 0 warnings, 1 checks, 570 lines checked
> 466c01457dec drm/i915/guc: Insert submit fences between requests in parent-child relationship
> 2ece815c1f18 drm/i915/guc: Implement multi-lrc reset
> 7add5784199f drm/i915/guc: Update debugfs for GuC multi-lrc
> -:23: CHECK:LINE_SPACING: Please don't use multiple blank lines
> #23: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:3707:
>   
> +
This should be fixed.

>
> total: 0 errors, 0 warnings, 1 checks, 67 lines checked
> 966991d7bbed drm/i915: Fix bug in user proto-context creation that leaked contexts
> 0eb3d3bf0c84 drm/i915/guc: Connect UAPI to GuC multi-lrc interface
> 68c6596b649a drm/i915/doc: Update parallel submit doc to point to i915_drm.h
> -:13: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
> #13:
> deleted file mode 100644
>
> total: 0 errors, 1 warnings, 0 checks, 10 lines checked
> 8290f5d15ca2 drm/i915/guc: Add basic GuC multi-lrc selftest
> -:22: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
> #22:
> new file mode 100644
These two can be ignored.

> total: 0 errors, 1 warnings, 0 checks, 190 lines checked
> ade3768c42d5 drm/i915/guc: Implement no mid batch preemption for multi-lrc
> 57882939d788 drm/i915: Multi-BB execbuf
> -:369: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_i' - possible side-effects?
> #369: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1854:
> +#define for_each_batch_create_order(_eb, _i) \
> +	for (_i = 0; _i < (_eb)->num_batches; ++_i)
Again, not sure the 'reuse' comment means but should also use '(_i)'?

>
> -:371: ERROR:MULTISTATEMENT_MACRO_USE_DO_WHILE: Macros with multiple statements should be enclosed in a do - while loop
> #371: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1856:
> +#define for_each_batch_add_order(_eb, _i) \
> +	BUILD_BUG_ON(!typecheck(int, _i)); \
> +	for (_i = (_eb)->num_batches - 1; _i >= 0; --_i)
This seems bogus. Wrapping it in a do/while will break the purpose!

>
> -:371: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_i' - possible side-effects?
> #371: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1856:
> +#define for_each_batch_add_order(_eb, _i) \
> +	BUILD_BUG_ON(!typecheck(int, _i)); \
> +	for (_i = (_eb)->num_batches - 1; _i >= 0; --_i)
As above.

>
> total: 1 errors, 0 warnings, 2 checks, 1298 lines checked
> 28b699ece289 drm/i915/guc: Handle errors in multi-lrc requests
> 962e6b3dce59 drm/i915: Make request conflict tracking understand parallel submits
> 368ab12f5205 drm/i915: Update I915_GEM_BUSY IOCTL to understand composite fences
> b52570f01859 drm/i915: Enable multi-bb execbuf
> 8766155832d7 drm/i915/execlists: Weak parallel submission support for execlists
>
>

