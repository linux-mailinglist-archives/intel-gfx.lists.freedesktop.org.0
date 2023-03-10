Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6C196B32E8
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Mar 2023 01:49:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA26E10E05F;
	Fri, 10 Mar 2023 00:49:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71A1B10E05F
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Mar 2023 00:49:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678409384; x=1709945384;
 h=message-id:date:subject:to:references:from:in-reply-to:
 mime-version; bh=NibWhL1U8BXfzhp1dLrXjl+0rdb5RufYDC4hnc3sbUk=;
 b=FWUyrJ9UZNXl2bYXFe92Raiif5y4uLLvp3Mgrapwz0sEjiue98ikc9eu
 o7Fpskmb1NpMbBoJG51OO3ZlpQCX4KHR8KvW3hOjyTQ6yOUSwdAo16r9o
 Jqwc5IosghAAH+MDCnhGaIu4S5DcTj8hYBkJP+vAnZQruMwGCkaT6Ptek
 qrmcYzQ+63/L3Go7Q3nj2TJ/quqhUWa/KhiolrbwVCxh++hPEJz9utB5+
 TwZXFMGnEj6ikB0A160ntmEqF9iJf4yy7G37QootWXqSctZaO0GTyEI44
 rm4wQgqdHueUgIpcZHH+o5d0us4ApyDqPesaiaWnA/gCn5h52l/vzY4TY A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="336629930"
X-IronPort-AV: E=Sophos;i="5.98,248,1673942400"; 
 d="scan'208,217";a="336629930"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 16:49:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="707833720"
X-IronPort-AV: E=Sophos;i="5.98,248,1673942400"; 
 d="scan'208,217";a="707833720"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 09 Mar 2023 16:49:43 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 9 Mar 2023 16:49:43 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 9 Mar 2023 16:49:42 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 9 Mar 2023 16:49:42 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.105)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 9 Mar 2023 16:49:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IO9eSw4T0zRDC0BvFj+jGRVZqpcJUgXFjFgcCCxicrReq5lEiEC4RIpxCliJsaMQKkO2MU2gzBmFR8A6dyYgTHy7WORahU/nLNflBIwubqqNesLzP77RboDVse7TFfDZk9jp2FSxZoWkPGoW9O+fsY6iozLkolqzVK96uq1GO9C1IHdv9hRtbZM9GDjeHK3zz2sGMX7yO5cbZq4t+/bBS9K0cqakG7OSMtlPiT94tZV9fPLT3+BCX4msOtMZFvTOftiGd0w8cozf5G5WA1RHyE7m/DfxafboFL9CPLSmbCdW6PuMM5tij8xB7BSrqukdk/d/gGCOa4bfT8upWlnyJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iejCb4RapmOvW9kz6gpoxE90HUcDzYPEgsb/0Pgvn84=;
 b=epSii6Mxr1ATay7iOFMs644dUDY/MTx5cFiUNeKjo1931CfBEDXow/JPx/3Y62WO4m6Obo/w5tdOuscA/PdDEKz3YH7KniwOXXE2pdnlauMyGuoKvBP99dzfNrMyFyN2xCORPbjW1XNZVD9tk3FRrsuQt8Zhf/ttIGGZyTXknDZ2tpyUvWqWfZU8OcIlieFVwu53Yps8o4wZVKaew1DNLswQ0jMErRU6dEgWwscbR/iiu9xccwSI/RV3ZILz++FdJjUBaQ8ftcxgDj9oseqMqHXqHMhHPutdBb9Y7BiRjk2NLEkhIwDIWBydEZK8yXWsEzoUahk6cq8NIdoKJyqd2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 CY5PR11MB6512.namprd11.prod.outlook.com (2603:10b6:930:40::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6178.17; Fri, 10 Mar 2023 00:49:31 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::218f:c449:80c8:7ad9]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::218f:c449:80c8:7ad9%6]) with mapi id 15.20.6156.028; Fri, 10 Mar 2023
 00:49:31 +0000
Content-Type: multipart/alternative;
 boundary="------------rslQXM2upN04JEatyskL9G0f"
Message-ID: <6e0c1a38-b30a-5d3b-4855-f9c718faa300@intel.com>
Date: Thu, 9 Mar 2023 16:49:29 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Content-Language: en-US
To: <intel-gfx@lists.freedesktop.org>
References: <20230223172120.3304293-1-daniele.ceraolospurio@intel.com>
 <167838316152.12423.7703367402846572479@emeril.freedesktop.org>
From: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
In-Reply-To: <167838316152.12423.7703367402846572479@emeril.freedesktop.org>
X-ClientProxiedBy: SJ0PR03CA0042.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::17) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5488:EE_|CY5PR11MB6512:EE_
X-MS-Office365-Filtering-Correlation-Id: 99ff783c-ba38-4b63-450e-08db21014f33
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GCNDhPmCk6hFCjLTrux9AHa39Sa26cpS3wV8kjawmfJacAobyYt8r3QlXChcs0PomFSzIsd1jnJDB0Sn33walL0clTB7bc4yGRBrq+CtDIalVyo/8IafngWrqXK18bTQ5hcNZZqsF/70ftCSw4kFecAiPy5D6gN5YxByvHkM3MyoBFa5/iVfvtP7UGZP0PtY1w0rHli398HvbvW6XqhaiYtYDHFguS2zsv5mirTnb4krhIt3YXGw96uYr4FY1I3e4+FXw/WjQPusO7/pxb/nEe1ttZ/OtdSSKPiXkEIpG1HB2jOH8WY3pKRnMRV274vNa6nUgI5vRRsiU3+b+8fusv6eShvLZGQMXfC7zHrCsMoWauvlfJnFYsihVFDq30oyiYluaOOelvgqgv/ghLC1sZMBjDpc2zBi4bqB8AvLeU6gTHnBFvOi+YocQ19nOyj3LNXcTAiKyAJE9IiTRLAN104RWnKmgUTV/646IIlgRZFltzX8aZGaFBlyAdaso89MHA7s+WGQ+7k9uyq9nfBRJUgcCHS7xUxKVA9t9PeDpxCC79xCm9quyAeuCOHafA2IM9u7eCwQLpfOV1bi9M0c/rSrHEu8v/n0MoFdn/78R2AZWe4dy8T3Tl6bGkXdTelEPA/8IfW1BymUrNKYuc/FUit9bizApRnpiwWgNwyKR31w3cltWdx9lsTj5R2xUyG3zEWgp7PIbJ6SPWiVAX2iowCHstUERkO+DMLyKDnWcRz5VWKemg0r+gBg6IJzXRaa
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(376002)(39860400002)(396003)(346002)(136003)(451199018)(38100700002)(31696002)(31686004)(316002)(86362001)(66556008)(82960400001)(6916009)(66476007)(66946007)(8936002)(166002)(21615005)(6486002)(36756003)(966005)(30864003)(5660300002)(2616005)(478600001)(41300700001)(83380400001)(2906002)(186003)(53546011)(40265005)(6512007)(33964004)(26005)(6506007)(45980500001)(43740500002)(559001)(579004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z3h5YUVDSXpFWUxtQmYrZUFYZGF1bytXdHVnUmFXckVjN2liT0pDV2RjM0hD?=
 =?utf-8?B?eWVFUWtJZzNtNjNvY3Bac0pEVGxYOG9XZjhPOEpQamdlRmxML0FRNmloazkv?=
 =?utf-8?B?YjJ6Y05IbVN0N3YvdCtsR3BNRVVCYXVvdUVvaVRyY3BHVzQvcjdYb09nbm1o?=
 =?utf-8?B?QmZ5enhFcTNkZkplTEozWHFtMmJwajJ5OE5rdHE1aGZpQVN4UWUxYmJ1dUJU?=
 =?utf-8?B?VHV1UzNXbk52LzZ6c3hlMWVnU1FtNlhCaUJpNDJ5dnRmTnFHWkhGcVRUZ2Ft?=
 =?utf-8?B?QnhRN051d1RWb01INVJGWGdnMVN0SUNsUWFnVS9qWTZDcWJ0eUNabDJvbWFR?=
 =?utf-8?B?dWFpYU5OdXBSdzFEbXNLZktjTVo3aFFBdGcycW8zM082Yk5sdDNlZWc0aVdk?=
 =?utf-8?B?Q0JHWlNtWmdpNnVqMWhTSi8wM0sxN2RSUUo5R2tlVzlIVUtZTFgycW5kMXNo?=
 =?utf-8?B?Q2UvUDNBZW1JTU1vSFVXMU8zVVloUW1oV1VvSkFYNlJJU1ZDTHRwRURSUDVU?=
 =?utf-8?B?b0VQQXhsVFEzQS9GTHNEdzRldWl1R3VzaVRVaStpRkI0MUZnNmQzVitnU09S?=
 =?utf-8?B?eno4UUR6UmdpcHVJOU14WmdTZ0FLaktwUkNDZE5MOEZGaDY3NUs5MFJFN0JO?=
 =?utf-8?B?NlJlTmRoQjBVVzJkYkEvUzdqU2xvdVZmVUZGN01weTFwZlpCWXdSUlBEZ1ow?=
 =?utf-8?B?L3RDSFBIbXIrYjZCdVhzczVyOC9Uelp3TzB1QnN0N1lKd2hTVjhzcjRRMkJx?=
 =?utf-8?B?NnRzWXpjYWs0UXlQeTRYQ3RhaUxLN2FubFBXdXZUSjdESWEwelNxblc4NzJC?=
 =?utf-8?B?NW9PTkcvUzZFUFEzQnAxcmdlMStFZ3NhU1UwVTdNODc0ZW81SVZXWklWN2VP?=
 =?utf-8?B?a2JuUXdBaDZFbE83WnVvNlFGaDQyTWhQL3BjRVRESHptb3BuL1BsS0VkdzlS?=
 =?utf-8?B?S0JHU1gzYmdoZlRBZWZrVUhucmcxK0czMnVwL0RrZEZCNStGMk1Ta2hKZWVC?=
 =?utf-8?B?RFJndktKdWZ6ZEUvMTNCc2tyWW0vcHJmUmxMdml6Q1pQalNOSllZK2xrRG03?=
 =?utf-8?B?K3BST0tWSnNGcURVay9wWHE4YTNqVzg5aHc0bnROYkwrSTkvZWFUZmJuMHdz?=
 =?utf-8?B?RTlFbHJMaHhPUFQvTTJXeHlTUEl6R1FuVWNmNVNQZVNWcFVyWlF4YjhmeXBw?=
 =?utf-8?B?TDNQWFhzUmR6S0Y2SG1YZE1KMml5QjA0TFdVdm50WXZTcjdnNGFxQzJGRXcr?=
 =?utf-8?B?MWJ3eC83M00wdHFhMnhFM0pCTyttemxPMmMxVktNb1JKb2xDWWt4dytoSzJq?=
 =?utf-8?B?VUZnaStpWWx4dXQ3S1VOVDRYV0NQYnQzSG9wU3RjZ3E5QVMxU3VXMVN1QW1Y?=
 =?utf-8?B?K3RVL1RsRVk1aHFPVkZzdnJHaWRQMndVb2ZMREVQS2E1dEErRGtPMmg3QU1S?=
 =?utf-8?B?Nk5tMGhWWFI3OGlFakMydkl2YlFqZkpTa1VQM3hnY3VWclQvRzRONEVqUWdp?=
 =?utf-8?B?bHNzamQ5RjRXdzdXdmMrZ3IxOTNZZGxIVm13TUdnZzFDVUtDTGFENFVib3k4?=
 =?utf-8?B?Z0hvSjgrWFpwRGFWQy9HbGpFZ29tall6RjNRY1V6M2pjcXkzT0greTJ6eHlH?=
 =?utf-8?B?dS96ODJ2cHdtUzFRaThwSE5RSmEwRGp6T0FxNUxYWjgrOFZ1S2hhajBYWjM2?=
 =?utf-8?B?TDhlSVJrL2EzWDZoeXB4TXl2TjluaDJ2Q1dla0FCbXdZTXdEVmpNZzVGOGEx?=
 =?utf-8?B?ZVh4d0EzaTE2dW1GM3M3KzA3ZlJ0MjFVOVQ5MGdBdnZxek5iaFNvSEs2eWFE?=
 =?utf-8?B?Q25wc3R3bTFiMGpZQmRnVXpwSldiSmtYQ2F3YndQMHJ3SHd0dTMvRi9RaXo1?=
 =?utf-8?B?R1I3SlhxNjRCekhRWmpDZFlyNWwzZFhrUGtVczRoQnhwWkx6ZE00RyswZHVw?=
 =?utf-8?B?MkF0aGtGVW9TWUlockl0WmVoYi9kZkI3WGp0RHV1MU1kSWRWWTRUWGM4dEFK?=
 =?utf-8?B?QUlzemE0cnFYdzd0UTUvUDR0bHB1UEZiZ0Vod3BGQUQ1ZlQxWjd5YnhyMjNN?=
 =?utf-8?B?ellrZkppeE15YUpkY1VJcytkUDJydTU2dDdRWDd5b3NRVU9DQzhZSlhZb0g4?=
 =?utf-8?B?c2hGcTVYMWI2LzRicy83NjJYYUtUZUhYYk13dUJvdnFGQjljYnZpVnFMLzR1?=
 =?utf-8?Q?nxCiAltB+/61lhCEx8Ejng0=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 99ff783c-ba38-4b63-450e-08db21014f33
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2023 00:49:31.4229 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HwX9ROuRzZsNETmpMPS0b+HwEyZ9+6LJVSCbtmu0fSZbiZEOWoARji3ILtcp34fvyHD/YlCLhhI7JstX//XO5RJ4/aVfFSH0x6JWaZqPXmA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6512
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgRml4?=
 =?utf-8?q?_a_couple_of_issues_with_the_GSC_worker_timing_=28rev2=29?=
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

--------------rslQXM2upN04JEatyskL9G0f
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit



On 3/9/2023 9:32 AM, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	Fix a couple of issues with the GSC worker timing (rev2)
> *URL:* 	https://patchwork.freedesktop.org/series/114306/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/index.html
>
>
>   CI Bug Log - changes from CI_DRM_12827_full -> Patchwork_114306v2_full
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_114306v2_full absolutely 
> need to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_114306v2_full, please notify your bug team to 
> allow them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
>
>     Participating hosts (8 -> 9)
>
> Additional (1): shard-tglu-9
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_114306v2_full:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>   * igt@kms_cursor_legacy@cursor-vs-flip-varying-size:
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-glk2/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-glk5/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html>
>
>
>         Suppressed
>
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
>
>   * igt@i915_suspend@basic-s3-without-i915:
>       o {shard-dg1}: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-dg1-15/igt@i915_suspend@basic-s3-without-i915.html>
>

Both failures are unrelated, as they're both display related and on 
machine where the modified code wouldn't run.
Patches pushed.

Daniele

>  *
>
>
>     Known issues
>
> Here are the changes found in Patchwork_114306v2_full that come from 
> known issues:
>
>
>       IGT changes
>
>
>         Issues hit
>
>  *
>
>     igt@debugfs_test@basic-hwmon:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@debugfs_test@basic-hwmon.html>
>         (i915#7456 <https://gitlab.freedesktop.org/drm/intel/issues/7456>)
>  *
>
>     igt@drm_buddy@all-tests:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@drm_buddy@all-tests.html>
>         (i915#6433 <https://gitlab.freedesktop.org/drm/intel/issues/6433>)
>  *
>
>     igt@feature_discovery@display-3x:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@feature_discovery@display-3x.html>
>         (i915#1839 <https://gitlab.freedesktop.org/drm/intel/issues/1839>)
>  *
>
>     igt@feature_discovery@psr1:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@feature_discovery@psr1.html>
>         (i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>) +2
>         similar issues
>  *
>
>     igt@feature_discovery@psr2:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@feature_discovery@psr2.html>
>         (i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>  *
>
>     igt@gem_ccs@block-multicopy-compressed:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@gem_ccs@block-multicopy-compressed.html>
>         (i915#5325 <https://gitlab.freedesktop.org/drm/intel/issues/5325>)
>  *
>
>     igt@gem_ccs@suspend-resume:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@gem_ccs@suspend-resume.html>
>         (i915#5325 <https://gitlab.freedesktop.org/drm/intel/issues/5325>)
>  *
>
>     igt@gem_create@create-ext-cpu-access-big:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@gem_create@create-ext-cpu-access-big.html>
>         (i915#6335 <https://gitlab.freedesktop.org/drm/intel/issues/6335>)
>  *
>
>     igt@gem_exec_fair@basic-none-solo@rcs0:
>
>       o shard-tglu-10: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@gem_exec_fair@basic-none-solo@rcs0.html>
>         (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
>  *
>
>     igt@gem_exec_fair@basic-none@bcs0:
>
>       o shard-tglu-9: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@gem_exec_fair@basic-none@bcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) +4
>         similar issues
>  *
>
>     igt@gem_exec_fair@basic-pace@rcs0:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-glk5/igt@gem_exec_fair@basic-pace@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-glk1/igt@gem_exec_fair@basic-pace@rcs0.html>
>         (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
>  *
>
>     igt@gem_exec_params@rsvd2-dirt:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@gem_exec_params@rsvd2-dirt.html>
>         (fdo#109283 <https://bugs.freedesktop.org/show_bug.cgi?id=109283>)
>  *
>
>     igt@gem_lmem_swapping@heavy-random:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@gem_lmem_swapping@heavy-random.html>
>         (i915#4613
>         <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +1
>         similar issue
>  *
>
>     igt@gem_lmem_swapping@massive:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@gem_lmem_swapping@massive.html>
>         (i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>)
>  *
>
>     igt@gem_pxp@protected-encrypted-src-copy-not-readible:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html>
>         (i915#4270
>         <https://gitlab.freedesktop.org/drm/intel/issues/4270>) +1
>         similar issue
>  *
>
>     igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html>
>         (i915#4270
>         <https://gitlab.freedesktop.org/drm/intel/issues/4270>) +2
>         similar issues
>  *
>
>     igt@gem_softpin@evict-snoop-interruptible:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@gem_softpin@evict-snoop-interruptible.html>
>         (fdo#109312 <https://bugs.freedesktop.org/show_bug.cgi?id=109312>)
>  *
>
>     igt@gem_userptr_blits@unsync-overlap:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@gem_userptr_blits@unsync-overlap.html>
>         (i915#3297 <https://gitlab.freedesktop.org/drm/intel/issues/3297>)
>  *
>
>     igt@gen7_exec_parse@load-register-reg:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@gen7_exec_parse@load-register-reg.html>
>         (fdo#109289 <https://bugs.freedesktop.org/show_bug.cgi?id=109289>)
>  *
>
>     igt@gen9_exec_parse@allowed-all:
>
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-apl3/igt@gen9_exec_parse@allowed-all.html>
>         -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-apl4/igt@gen9_exec_parse@allowed-all.html>
>         (i915#5566 <https://gitlab.freedesktop.org/drm/intel/issues/5566>)
>  *
>
>     igt@gen9_exec_parse@allowed-single:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-glk1/igt@gen9_exec_parse@allowed-single.html>
>         -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-glk4/igt@gen9_exec_parse@allowed-single.html>
>         (i915#5566 <https://gitlab.freedesktop.org/drm/intel/issues/5566>)
>  *
>
>     igt@gen9_exec_parse@bb-oversize:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@gen9_exec_parse@bb-oversize.html>
>         (i915#2527
>         <https://gitlab.freedesktop.org/drm/intel/issues/2527> /
>         i915#2856
>         <https://gitlab.freedesktop.org/drm/intel/issues/2856>) +1
>         similar issue
>  *
>
>     igt@gen9_exec_parse@secure-batches:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@gen9_exec_parse@secure-batches.html>
>         (i915#2527
>         <https://gitlab.freedesktop.org/drm/intel/issues/2527> /
>         i915#2856 <https://gitlab.freedesktop.org/drm/intel/issues/2856>)
>  *
>
>     igt@i915_hwmon@hwmon-write:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@i915_hwmon@hwmon-write.html>
>         (i915#7707 <https://gitlab.freedesktop.org/drm/intel/issues/7707>)
>  *
>
>     igt@i915_pm_backlight@fade:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@i915_pm_backlight@fade.html>
>         (i915#7561 <https://gitlab.freedesktop.org/drm/intel/issues/7561>)
>  *
>
>     igt@i915_pm_lpsp@screens-disabled:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@i915_pm_lpsp@screens-disabled.html>
>         (i915#1902 <https://gitlab.freedesktop.org/drm/intel/issues/1902>)
>  *
>
>     igt@i915_pm_rc6_residency@rc6-idle@rcs0:
>
>       o shard-tglu-9: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html>
>         (i915#2681
>         <https://gitlab.freedesktop.org/drm/intel/issues/2681> /
>         i915#3591 <https://gitlab.freedesktop.org/drm/intel/issues/3591>)
>  *
>
>     igt@i915_pm_rc6_residency@rc6-idle@vecs0:
>
>       o shard-tglu-9: NOTRUN -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html>
>         (i915#2681
>         <https://gitlab.freedesktop.org/drm/intel/issues/2681>) +2
>         similar issues
>  *
>
>     igt@i915_pm_rpm@modeset-lpsp-stress:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@i915_pm_rpm@modeset-lpsp-stress.html>
>         (i915#1397 <https://gitlab.freedesktop.org/drm/intel/issues/1397>)
>  *
>
>     igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html>
>         (fdo#111644
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111644> /
>         i915#1397 <https://gitlab.freedesktop.org/drm/intel/issues/1397>)
>  *
>
>     igt@i915_pm_rpm@pc8-residency:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@i915_pm_rpm@pc8-residency.html>
>         (fdo#109506 <https://bugs.freedesktop.org/show_bug.cgi?id=109506>)
>  *
>
>     igt@i915_query@hwconfig_table:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@i915_query@hwconfig_table.html>
>         (i915#6245 <https://gitlab.freedesktop.org/drm/intel/issues/6245>)
>  *
>
>     igt@i915_query@query-topology-unsupported:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@i915_query@query-topology-unsupported.html>
>         (fdo#109302 <https://bugs.freedesktop.org/show_bug.cgi?id=109302>)
>  *
>
>     igt@i915_query@test-query-geometry-subslices:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@i915_query@test-query-geometry-subslices.html>
>         (i915#5723 <https://gitlab.freedesktop.org/drm/intel/issues/5723>)
>  *
>
>     igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html>
>         (i915#5286
>         <https://gitlab.freedesktop.org/drm/intel/issues/5286>) +1
>         similar issue
>  *
>
>     igt@kms_big_fb@linear-16bpp-rotate-180:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@kms_big_fb@linear-16bpp-rotate-180.html>
>         (i915#1845
>         <https://gitlab.freedesktop.org/drm/intel/issues/1845> /
>         i915#7651
>         <https://gitlab.freedesktop.org/drm/intel/issues/7651>) +70
>         similar issues
>  *
>
>     igt@kms_big_fb@x-tiled-8bpp-rotate-90:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html>
>         (fdo#111614
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111614>) +1
>         similar issue
>  *
>
>     igt@kms_big_fb@yf-tiled-16bpp-rotate-180:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html>
>         (fdo#111615
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111615> /
>         i915#1845
>         <https://gitlab.freedesktop.org/drm/intel/issues/1845> /
>         i915#7651
>         <https://gitlab.freedesktop.org/drm/intel/issues/7651>) +6
>         similar issues
>  *
>
>     igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html>
>         (fdo#111615
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111615>) +3
>         similar issues
>  *
>
>     igt@kms_big_joiner@2x-modeset:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@kms_big_joiner@2x-modeset.html>
>         (i915#2705 <https://gitlab.freedesktop.org/drm/intel/issues/2705>)
>  *
>
>     igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html>
>         (i915#3689
>         <https://gitlab.freedesktop.org/drm/intel/issues/3689> /
>         i915#3886
>         <https://gitlab.freedesktop.org/drm/intel/issues/3886>) +2
>         similar issues
>  *
>
>     igt@kms_ccs@pipe-c-bad-pixel-format-4_tiled_dg2_mc_ccs:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@kms_ccs@pipe-c-bad-pixel-format-4_tiled_dg2_mc_ccs.html>
>         (i915#3689
>         <https://gitlab.freedesktop.org/drm/intel/issues/3689> /
>         i915#6095 <https://gitlab.freedesktop.org/drm/intel/issues/6095>)
>  *
>
>     igt@kms_ccs@pipe-c-bad-rotation-90-4_tiled_dg2_mc_ccs:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@kms_ccs@pipe-c-bad-rotation-90-4_tiled_dg2_mc_ccs.html>
>         (i915#6095
>         <https://gitlab.freedesktop.org/drm/intel/issues/6095>) +1
>         similar issue
>  *
>
>     igt@kms_ccs@pipe-d-bad-pixel-format-4_tiled_dg2_rc_ccs_cc:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@kms_ccs@pipe-d-bad-pixel-format-4_tiled_dg2_rc_ccs_cc.html>
>         (i915#3689
>         <https://gitlab.freedesktop.org/drm/intel/issues/3689>) +3
>         similar issues
>  *
>
>     igt@kms_ccs@pipe-d-bad-pixel-format-yf_tiled_ccs:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@kms_ccs@pipe-d-bad-pixel-format-yf_tiled_ccs.html>
>         (fdo#111615
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111615> /
>         i915#3689
>         <https://gitlab.freedesktop.org/drm/intel/issues/3689>) +2
>         similar issues
>  *
>
>     igt@kms_cdclk@mode-transition-all-outputs:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@kms_cdclk@mode-transition-all-outputs.html>
>         (i915#3742
>         <https://gitlab.freedesktop.org/drm/intel/issues/3742>) +1
>         similar issue
>  *
>
>     igt@kms_chamelium_color@degamma:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@kms_chamelium_color@degamma.html>
>         (fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>)
>  *
>
>     igt@kms_chamelium_frames@dp-crc-single:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@kms_chamelium_frames@dp-crc-single.html>
>         (i915#7828
>         <https://gitlab.freedesktop.org/drm/intel/issues/7828>) +6
>         similar issues
>  *
>
>     igt@kms_chamelium_hpd@hdmi-hpd-storm-disable:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@kms_chamelium_hpd@hdmi-hpd-storm-disable.html>
>         (i915#7828
>         <https://gitlab.freedesktop.org/drm/intel/issues/7828>) +3
>         similar issues
>  *
>
>     igt@kms_color@ctm-green-to-red:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@kms_color@ctm-green-to-red.html>
>         (i915#3546
>         <https://gitlab.freedesktop.org/drm/intel/issues/3546>) +1
>         similar issue
>  *
>
>     igt@kms_content_protection@dp-mst-lic-type-0:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@kms_content_protection@dp-mst-lic-type-0.html>
>         (i915#3116
>         <https://gitlab.freedesktop.org/drm/intel/issues/3116> /
>         i915#3299
>         <https://gitlab.freedesktop.org/drm/intel/issues/3299>) +1
>         similar issue
>  *
>
>     igt@kms_content_protection@srm:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@kms_content_protection@srm.html>
>         (i915#6944
>         <https://gitlab.freedesktop.org/drm/intel/issues/6944> /
>         i915#7116
>         <https://gitlab.freedesktop.org/drm/intel/issues/7116> /
>         i915#7118 <https://gitlab.freedesktop.org/drm/intel/issues/7118>)
>  *
>
>     igt@kms_cursor_crc@cursor-offscreen-max-size:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@kms_cursor_crc@cursor-offscreen-max-size.html>
>         (i915#1845
>         <https://gitlab.freedesktop.org/drm/intel/issues/1845>) +19
>         similar issues
>  *
>
>     igt@kms_cursor_crc@cursor-random-max-size:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@kms_cursor_crc@cursor-random-max-size.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/intel/issues/3555>) +1
>         similar issue
>  *
>
>     igt@kms_cursor_crc@cursor-suspend@pipe-c-dp-1:
>
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-apl1/igt@kms_cursor_crc@cursor-suspend@pipe-c-dp-1.html>
>         -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-apl6/igt@kms_cursor_crc@cursor-suspend@pipe-c-dp-1.html>
>         (i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180>) +2
>         similar issues
>  *
>
>     igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html>
>         (fdo#109274
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109274>) +2
>         similar issues
>  *
>
>     igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>
>      o
>
>         shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-apl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-apl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html>
>         (i915#2346
>         <https://gitlab.freedesktop.org/drm/intel/issues/2346>) +1
>         similar issue
>
>      o
>
>         shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html>
>         (i915#2346 <https://gitlab.freedesktop.org/drm/intel/issues/2346>)
>
>  *
>
>     igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html>
>         (i915#4103
>         <https://gitlab.freedesktop.org/drm/intel/issues/4103>) +1
>         similar issue
>  *
>
>     igt@kms_fbcon_fbt@fbc-suspend:
>
>       o shard-glk: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-glk4/igt@kms_fbcon_fbt@fbc-suspend.html>
>         (i915#4767 <https://gitlab.freedesktop.org/drm/intel/issues/4767>)
>  *
>
>     igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ac-hdmi-a1-hdmi-a2:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-glk3/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ac-hdmi-a1-hdmi-a2.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-glk8/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ac-hdmi-a1-hdmi-a2.html>
>         (i915#2122 <https://gitlab.freedesktop.org/drm/intel/issues/2122>)
>  *
>
>     igt@kms_flip@2x-nonexisting-fb-interruptible:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@kms_flip@2x-nonexisting-fb-interruptible.html>
>         (fdo#109274
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109274> /
>         i915#3637
>         <https://gitlab.freedesktop.org/drm/intel/issues/3637>) +5
>         similar issues
>  *
>
>     igt@kms_flip@2x-plain-flip:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@kms_flip@2x-plain-flip.html>
>         (fdo#109274
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109274> /
>         i915#3637
>         <https://gitlab.freedesktop.org/drm/intel/issues/3637>) +2
>         similar issues
>  *
>
>     igt@kms_flip@flip-vs-expired-vblank-interruptible:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@kms_flip@flip-vs-expired-vblank-interruptible.html>
>         (i915#3637
>         <https://gitlab.freedesktop.org/drm/intel/issues/3637>) +2
>         similar issues
>  *
>
>     igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html>
>         (i915#2587
>         <https://gitlab.freedesktop.org/drm/intel/issues/2587> /
>         i915#2672
>         <https://gitlab.freedesktop.org/drm/intel/issues/2672>) +2
>         similar issues
>  *
>
>     igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/intel/issues/3555>) +10
>         similar issues
>  *
>
>     igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html>
>         (i915#1849
>         <https://gitlab.freedesktop.org/drm/intel/issues/1849>) +53
>         similar issues
>  *
>
>     igt@kms_frontbuffer_tracking@fbc-tiling-4:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@kms_frontbuffer_tracking@fbc-tiling-4.html>
>         (i915#5439 <https://gitlab.freedesktop.org/drm/intel/issues/5439>)
>  *
>
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-blt:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-blt.html>
>         (fdo#110189
>         <https://bugs.freedesktop.org/show_bug.cgi?id=110189>) +16
>         similar issues
>  *
>
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc:
>
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-glk4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +4
>         similar issues
>  *
>
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-cpu:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-cpu.html>
>         (fdo#109280
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109280>) +15
>         similar issues
>  *
>
>     igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html>
>         (i915#1849
>         <https://gitlab.freedesktop.org/drm/intel/issues/1849> /
>         i915#3558
>         <https://gitlab.freedesktop.org/drm/intel/issues/3558>) +3
>         similar issues
>  *
>
>     igt@kms_plane_alpha_blend@alpha-transparent-fb:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@kms_plane_alpha_blend@alpha-transparent-fb.html>
>         (i915#7128
>         <https://gitlab.freedesktop.org/drm/intel/issues/7128> /
>         i915#7294 <https://gitlab.freedesktop.org/drm/intel/issues/7294>)
>  *
>
>     igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-1:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-1.html>
>         (i915#5235
>         <https://gitlab.freedesktop.org/drm/intel/issues/5235>) +7
>         similar issues
>  *
>
>     igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html>
>         (i915#6953
>         <https://gitlab.freedesktop.org/drm/intel/issues/6953> /
>         i915#8152
>         <https://gitlab.freedesktop.org/drm/intel/issues/8152>) +1
>         similar issue
>  *
>
>     igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html>
>         (fdo#111068
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111068> /
>         i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>  *
>
>     igt@kms_psr2_su@frontbuffer-xrgb8888:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@kms_psr2_su@frontbuffer-xrgb8888.html>
>         (fdo#109642
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109642> /
>         fdo#111068
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111068> /
>         i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>  *
>
>     igt@kms_psr@cursor_blt:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@kms_psr@cursor_blt.html>
>         (fdo#110189
>         <https://bugs.freedesktop.org/show_bug.cgi?id=110189>) +4
>         similar issues
>  *
>
>     igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html>
>         (fdo#111615
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111615> /
>         i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845>)
>  *
>
>     igt@kms_universal_plane@disable-primary-vs-flip-pipe-d:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@kms_universal_plane@disable-primary-vs-flip-pipe-d.html>
>         (fdo#109274
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109274>) +2
>         similar issues
>  *
>
>     igt@kms_writeback@writeback-check-output:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@kms_writeback@writeback-check-output.html>
>         (i915#2437 <https://gitlab.freedesktop.org/drm/intel/issues/2437>)
>  *
>
>     igt@kms_writeback@writeback-fb-id:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@kms_writeback@writeback-fb-id.html>
>         (i915#2437 <https://gitlab.freedesktop.org/drm/intel/issues/2437>)
>  *
>
>     igt@perf@mi-rpc:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@perf@mi-rpc.html>
>         (fdo#109289 <https://bugs.freedesktop.org/show_bug.cgi?id=109289>)
>  *
>
>     igt@perf@stress-open-close:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-glk7/igt@perf@stress-open-close.html>
>         -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-glk8/igt@perf@stress-open-close.html>
>         (i915#5213 <https://gitlab.freedesktop.org/drm/intel/issues/5213>)
>  *
>
>     igt@perf_pmu@event-wait@rcs0:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@perf_pmu@event-wait@rcs0.html>
>         (fdo#112283 <https://bugs.freedesktop.org/show_bug.cgi?id=112283>)
>  *
>
>     igt@prime_vgem@basic-userptr:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@prime_vgem@basic-userptr.html>
>         (fdo#109295
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109295> /
>         i915#3301 <https://gitlab.freedesktop.org/drm/intel/issues/3301>)
>  *
>
>     igt@prime_vgem@fence-read-hang:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@prime_vgem@fence-read-hang.html>
>         (fdo#109295 <https://bugs.freedesktop.org/show_bug.cgi?id=109295>)
>  *
>
>     igt@v3d/v3d_perfmon@get-values-invalid-pad:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@v3d/v3d_perfmon@get-values-invalid-pad.html>
>         (fdo#109315
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109315> /
>         i915#2575
>         <https://gitlab.freedesktop.org/drm/intel/issues/2575>) +3
>         similar issues
>  *
>
>     igt@vc4/vc4_label_bo@set-bad-name:
>
>       o shard-tglu-10: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@vc4/vc4_label_bo@set-bad-name.html>
>         (i915#2575
>         <https://gitlab.freedesktop.org/drm/intel/issues/2575>) +2
>         similar issues
>  *
>
>     igt@vc4/vc4_purgeable_bo@mark-unpurgeable-purged:
>
>       o shard-tglu-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@vc4/vc4_purgeable_bo@mark-unpurgeable-purged.html>
>         (i915#2575
>         <https://gitlab.freedesktop.org/drm/intel/issues/2575>) +4
>         similar issues
>
>
>         Possible fixes
>
>  *
>
>     igt@drm_fdinfo@virtual-idle:
>
>       o {shard-rkl}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-rkl-4/igt@drm_fdinfo@virtual-idle.html>
>         (i915#7742
>         <https://gitlab.freedesktop.org/drm/intel/issues/7742>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-rkl-3/igt@drm_fdinfo@virtual-idle.html>
>         +2 similar issues
>  *
>
>     igt@gem_ctx_persistence@legacy-engines-hang@blt:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-rkl-5/igt@gem_ctx_persistence@legacy-engines-hang@blt.html>
>         (i915#6252
>         <https://gitlab.freedesktop.org/drm/intel/issues/6252>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-rkl-6/igt@gem_ctx_persistence@legacy-engines-hang@blt.html>
>  *
>
>     igt@gem_exec_balancer@fairslice:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-rkl-5/igt@gem_exec_balancer@fairslice.html>
>         (i915#6259
>         <https://gitlab.freedesktop.org/drm/intel/issues/6259>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-rkl-6/igt@gem_exec_balancer@fairslice.html>
>  *
>
>     igt@gem_exec_fair@basic-pace@rcs0:
>
>       o {shard-rkl}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-rkl-3/igt@gem_exec_fair@basic-pace@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-rkl-5/igt@gem_exec_fair@basic-pace@rcs0.html>
>         +3 similar issues
>  *
>
>     igt@gem_exec_flush@basic-batch-kernel-default-cmd:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-rkl-6/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html>
>         (fdo#109313
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109313>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-rkl-5/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html>
>  *
>
>     igt@gem_exec_reloc@basic-gtt-read-noreloc:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-read-noreloc.html>
>         (i915#3281
>         <https://gitlab.freedesktop.org/drm/intel/issues/3281>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-read-noreloc.html>
>         +8 similar issues
>  *
>
>     igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-rkl-2/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html>
>         (i915#3282
>         <https://gitlab.freedesktop.org/drm/intel/issues/3282>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html>
>         +4 similar issues
>  *
>
>     igt@gen9_exec_parse@batch-without-end:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-rkl-3/igt@gen9_exec_parse@batch-without-end.html>
>         (i915#2527
>         <https://gitlab.freedesktop.org/drm/intel/issues/2527>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-rkl-5/igt@gen9_exec_parse@batch-without-end.html>
>         +1 similar issue
>  *
>
>     igt@i915_pm_rpm@cursor-dpms:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-rkl-5/igt@i915_pm_rpm@cursor-dpms.html>
>         (i915#1849
>         <https://gitlab.freedesktop.org/drm/intel/issues/1849>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-rkl-6/igt@i915_pm_rpm@cursor-dpms.html>
>         +2 similar issues
>  *
>
>     igt@i915_pm_rpm@modeset-non-lpsp:
>
>       o {shard-dg1}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-dg1-14/igt@i915_pm_rpm@modeset-non-lpsp.html>
>         (i915#1397
>         <https://gitlab.freedesktop.org/drm/intel/issues/1397>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-dg1-18/igt@i915_pm_rpm@modeset-non-lpsp.html>
>         +1 similar issue
>  *
>
>     igt@kms_big_fb@linear-32bpp-rotate-0:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-rkl-5/igt@kms_big_fb@linear-32bpp-rotate-0.html>
>         (i915#1845
>         <https://gitlab.freedesktop.org/drm/intel/issues/1845> /
>         i915#4098
>         <https://gitlab.freedesktop.org/drm/intel/issues/4098>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-rkl-6/igt@kms_big_fb@linear-32bpp-rotate-0.html>
>         +18 similar issues
>  *
>
>     igt@kms_frontbuffer_tracking@psr-suspend:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-suspend.html>
>         (i915#1849
>         <https://gitlab.freedesktop.org/drm/intel/issues/1849> /
>         i915#4098
>         <https://gitlab.freedesktop.org/drm/intel/issues/4098>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-suspend.html>
>         +10 similar issues
>  *
>
>     igt@kms_psr@sprite_mmap_gtt:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-rkl-5/igt@kms_psr@sprite_mmap_gtt.html>
>         (i915#1072
>         <https://gitlab.freedesktop.org/drm/intel/issues/1072>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-rkl-6/igt@kms_psr@sprite_mmap_gtt.html>
>         +1 similar issue
>  *
>
>     igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-rkl-5/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html>
>         (i915#5461
>         <https://gitlab.freedesktop.org/drm/intel/issues/5461>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-rkl-6/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html>
>  *
>
>     igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-a:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-rkl-5/igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-a.html>
>         (i915#4098
>         <https://gitlab.freedesktop.org/drm/intel/issues/4098>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-rkl-6/igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-a.html>
>  *
>
>     igt@perf@gen12-oa-tlb-invalidate:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-rkl-5/igt@perf@gen12-oa-tlb-invalidate.html>
>         (fdo#109289
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109289>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-rkl-6/igt@perf@gen12-oa-tlb-invalidate.html>
>  *
>
>     igt@perf@gen8-unprivileged-single-ctx-counters:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-rkl-3/igt@perf@gen8-unprivileged-single-ctx-counters.html>
>         (i915#2436
>         <https://gitlab.freedesktop.org/drm/intel/issues/2436>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-rkl-5/igt@perf@gen8-unprivileged-single-ctx-counters.html>
>  *
>
>     igt@perf@oa-exponents:
>
>       o shard-glk: ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-glk2/igt@perf@oa-exponents.html>
>         (i915#5213
>         <https://gitlab.freedesktop.org/drm/intel/issues/5213>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-glk4/igt@perf@oa-exponents.html>
>
> {name}: This element is suppressed. This means it is ignored when 
> computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>
>     Build changes
>
>   * Linux: CI_DRM_12827 -> Patchwork_114306v2
>
> CI-20190529: 20190529
> CI_DRM_12827: b794b8d84dc0470ee58467386f41870e81a86580 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7183: 3434cef8be4e487644a740039ad15123cd094526 @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_114306v2: b794b8d84dc0470ee58467386f41870e81a86580 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ 
> git://anongit.freedesktop.org/piglit
>

--------------rslQXM2upN04JEatyskL9G0f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <br>
    <br>
    <div class="moz-cite-prefix">On 3/9/2023 9:32 AM, Patchwork wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:167838316152.12423.7703367402846572479@emeril.freedesktop.org">
      
      <title>Project List - Patchwork</title>
      <style id="css-table-select" type="text/css">td { padding: 2pt; }</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>Fix a couple of issues with the GSC worker timing (rev2)</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a href="https://patchwork.freedesktop.org/series/114306/" moz-do-not-send="true" class="moz-txt-link-freetext">https://patchwork.freedesktop.org/series/114306/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/index.html" moz-do-not-send="true" class="moz-txt-link-freetext">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/index.html</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_12827_full -&gt;
        Patchwork_114306v2_full</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_114306v2_full
        absolutely need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_114306v2_full, please notify your bug
        team to allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <h2>Participating hosts (8 -&gt; 9)</h2>
      <p>Additional (1): shard-tglu-9 </p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_114306v2_full:</p>
      <h3>IGT changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>igt@kms_cursor_legacy@cursor-vs-flip-varying-size:
          <ul>
            <li>shard-glk: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-glk2/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-glk5/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html" moz-do-not-send="true">FAIL</a></li>
          </ul>
        </li>
      </ul>
      <h4>Suppressed</h4>
      <p>The following results come from untrusted machines, tests, or
        statuses.<br>
        They do not affect the overall result.</p>
      <ul>
        <li>igt@i915_suspend@basic-s3-without-i915:
          <ul>
            <li>{shard-dg1}: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-dg1-15/igt@i915_suspend@basic-s3-without-i915.html" moz-do-not-send="true">DMESG-WARN</a></li>
          </ul>
        </li>
      </ul>
    </blockquote>
    <br>
    Both failures are unrelated, as they're both display related and on
    machine where the modified code wouldn't run.<br>
    Patches pushed.<br>
    <br>
    Daniele<br>
    <br>
    <blockquote type="cite" cite="mid:167838316152.12423.7703367402846572479@emeril.freedesktop.org">
      <ul>
        <li>
          <ul>
          </ul>
        </li>
      </ul>
      <h2>Known issues</h2>
      <p>Here are the changes found in Patchwork_114306v2_full that come
        from known issues:</p>
      <h3>IGT changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>
          <p>igt@debugfs_test@basic-hwmon:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@debugfs_test@basic-hwmon.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7456" moz-do-not-send="true">i915#7456</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@drm_buddy@all-tests:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@drm_buddy@all-tests.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6433" moz-do-not-send="true">i915#6433</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@feature_discovery@display-3x:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@feature_discovery@display-3x.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1839" moz-do-not-send="true">i915#1839</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@feature_discovery@psr1:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@feature_discovery@psr1.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/658" moz-do-not-send="true">i915#658</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@feature_discovery@psr2:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@feature_discovery@psr2.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/658" moz-do-not-send="true">i915#658</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_ccs@block-multicopy-compressed:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@gem_ccs@block-multicopy-compressed.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5325" moz-do-not-send="true">i915#5325</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_ccs@suspend-resume:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@gem_ccs@suspend-resume.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5325" moz-do-not-send="true">i915#5325</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_create@create-ext-cpu-access-big:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@gem_create@create-ext-cpu-access-big.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6335" moz-do-not-send="true">i915#6335</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@gem_exec_fair@basic-none-solo@rcs0.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842" moz-do-not-send="true">i915#2842</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-none@bcs0:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@gem_exec_fair@basic-none@bcs0.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842" moz-do-not-send="true">i915#2842</a>) +4 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-pace@rcs0:</p>
          <ul>
            <li>shard-glk: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-glk5/igt@gem_exec_fair@basic-pace@rcs0.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-glk1/igt@gem_exec_fair@basic-pace@rcs0.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842" moz-do-not-send="true">i915#2842</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_params@rsvd2-dirt:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@gem_exec_params@rsvd2-dirt.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109283" moz-do-not-send="true">fdo#109283</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@heavy-random:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@gem_lmem_swapping@heavy-random.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613" moz-do-not-send="true">i915#4613</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@massive:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@gem_lmem_swapping@massive.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613" moz-do-not-send="true">i915#4613</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_pxp@protected-encrypted-src-copy-not-readible:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4270" moz-do-not-send="true">i915#4270</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4270" moz-do-not-send="true">i915#4270</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_softpin@evict-snoop-interruptible:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@gem_softpin@evict-snoop-interruptible.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109312" moz-do-not-send="true">fdo#109312</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_userptr_blits@unsync-overlap:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@gem_userptr_blits@unsync-overlap.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3297" moz-do-not-send="true">i915#3297</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gen7_exec_parse@load-register-reg:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@gen7_exec_parse@load-register-reg.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109289" moz-do-not-send="true">fdo#109289</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gen9_exec_parse@allowed-all:</p>
          <ul>
            <li>shard-apl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-apl3/igt@gen9_exec_parse@allowed-all.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-apl4/igt@gen9_exec_parse@allowed-all.html" moz-do-not-send="true">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5566" moz-do-not-send="true">i915#5566</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gen9_exec_parse@allowed-single:</p>
          <ul>
            <li>shard-glk: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-glk1/igt@gen9_exec_parse@allowed-single.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-glk4/igt@gen9_exec_parse@allowed-single.html" moz-do-not-send="true">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5566" moz-do-not-send="true">i915#5566</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gen9_exec_parse@bb-oversize:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@gen9_exec_parse@bb-oversize.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2527" moz-do-not-send="true">i915#2527</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2856" moz-do-not-send="true">i915#2856</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@gen9_exec_parse@secure-batches:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@gen9_exec_parse@secure-batches.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2527" moz-do-not-send="true">i915#2527</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2856" moz-do-not-send="true">i915#2856</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_hwmon@hwmon-write:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@i915_hwmon@hwmon-write.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7707" moz-do-not-send="true">i915#7707</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_backlight@fade:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@i915_pm_backlight@fade.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7561" moz-do-not-send="true">i915#7561</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_lpsp@screens-disabled:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@i915_pm_lpsp@screens-disabled.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1902" moz-do-not-send="true">i915#1902</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rc6_residency@rc6-idle@rcs0:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2681" moz-do-not-send="true">i915#2681</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3591" moz-do-not-send="true">i915#3591</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rc6_residency@rc6-idle@vecs0:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html" moz-do-not-send="true">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2681" moz-do-not-send="true">i915#2681</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rpm@modeset-lpsp-stress:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@i915_pm_rpm@modeset-lpsp-stress.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397" moz-do-not-send="true">i915#1397</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111644" moz-do-not-send="true">fdo#111644</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1397" moz-do-not-send="true">i915#1397</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rpm@pc8-residency:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@i915_pm_rpm@pc8-residency.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109506" moz-do-not-send="true">fdo#109506</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_query@hwconfig_table:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@i915_query@hwconfig_table.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6245" moz-do-not-send="true">i915#6245</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_query@query-topology-unsupported:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@i915_query@query-topology-unsupported.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109302" moz-do-not-send="true">fdo#109302</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_query@test-query-geometry-subslices:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@i915_query@test-query-geometry-subslices.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5723" moz-do-not-send="true">i915#5723</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5286" moz-do-not-send="true">i915#5286</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@linear-16bpp-rotate-180:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@kms_big_fb@linear-16bpp-rotate-180.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845" moz-do-not-send="true">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7651" moz-do-not-send="true">i915#7651</a>) +70 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@x-tiled-8bpp-rotate-90:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111614" moz-do-not-send="true">fdo#111614</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@yf-tiled-16bpp-rotate-180:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111615" moz-do-not-send="true">fdo#111615</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1845" moz-do-not-send="true">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7651" moz-do-not-send="true">i915#7651</a>) +6 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111615" moz-do-not-send="true">fdo#111615</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_joiner@2x-modeset:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@kms_big_joiner@2x-modeset.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2705" moz-do-not-send="true">i915#2705</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3689" moz-do-not-send="true">i915#3689</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3886" moz-do-not-send="true">i915#3886</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-c-bad-pixel-format-4_tiled_dg2_mc_ccs:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@kms_ccs@pipe-c-bad-pixel-format-4_tiled_dg2_mc_ccs.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3689" moz-do-not-send="true">i915#3689</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6095" moz-do-not-send="true">i915#6095</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-c-bad-rotation-90-4_tiled_dg2_mc_ccs:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@kms_ccs@pipe-c-bad-rotation-90-4_tiled_dg2_mc_ccs.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6095" moz-do-not-send="true">i915#6095</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-d-bad-pixel-format-4_tiled_dg2_rc_ccs_cc:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@kms_ccs@pipe-d-bad-pixel-format-4_tiled_dg2_rc_ccs_cc.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3689" moz-do-not-send="true">i915#3689</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-d-bad-pixel-format-yf_tiled_ccs:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@kms_ccs@pipe-d-bad-pixel-format-yf_tiled_ccs.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111615" moz-do-not-send="true">fdo#111615</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3689" moz-do-not-send="true">i915#3689</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cdclk@mode-transition-all-outputs:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@kms_cdclk@mode-transition-all-outputs.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3742" moz-do-not-send="true">i915#3742</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium_color@degamma:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@kms_chamelium_color@degamma.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827" moz-do-not-send="true">fdo#111827</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium_frames@dp-crc-single:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@kms_chamelium_frames@dp-crc-single.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828" moz-do-not-send="true">i915#7828</a>) +6 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium_hpd@hdmi-hpd-storm-disable:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@kms_chamelium_hpd@hdmi-hpd-storm-disable.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828" moz-do-not-send="true">i915#7828</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_color@ctm-green-to-red:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@kms_color@ctm-green-to-red.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3546" moz-do-not-send="true">i915#3546</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@kms_content_protection@dp-mst-lic-type-0.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3116" moz-do-not-send="true">i915#3116</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3299" moz-do-not-send="true">i915#3299</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_content_protection@srm:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@kms_content_protection@srm.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6944" moz-do-not-send="true">i915#6944</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7116" moz-do-not-send="true">i915#7116</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7118" moz-do-not-send="true">i915#7118</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@cursor-offscreen-max-size:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@kms_cursor_crc@cursor-offscreen-max-size.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845" moz-do-not-send="true">i915#1845</a>) +19 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@cursor-random-max-size:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@kms_cursor_crc@cursor-random-max-size.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555" moz-do-not-send="true">i915#3555</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@cursor-suspend@pipe-c-dp-1:</p>
          <ul>
            <li>shard-apl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-apl1/igt@kms_cursor_crc@cursor-suspend@pipe-c-dp-1.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-apl6/igt@kms_cursor_crc@cursor-suspend@pipe-c-dp-1.html" moz-do-not-send="true">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180" moz-do-not-send="true">i915#180</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274" moz-do-not-send="true">fdo#109274</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
          <ul>
            <li>
              <p>shard-apl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-apl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-apl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346" moz-do-not-send="true">i915#2346</a>) +1 similar issue</p>
            </li>
            <li>
              <p>shard-glk: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346" moz-do-not-send="true">i915#2346</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103" moz-do-not-send="true">i915#4103</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_fbcon_fbt@fbc-suspend:</p>
          <ul>
            <li>shard-glk: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-glk4/igt@kms_fbcon_fbt@fbc-suspend.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4767" moz-do-not-send="true">i915#4767</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ac-hdmi-a1-hdmi-a2:</p>
          <ul>
            <li>shard-glk: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-glk3/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ac-hdmi-a1-hdmi-a2.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-glk8/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ac-hdmi-a1-hdmi-a2.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122" moz-do-not-send="true">i915#2122</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@2x-nonexisting-fb-interruptible:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@kms_flip@2x-nonexisting-fb-interruptible.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274" moz-do-not-send="true">fdo#109274</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3637" moz-do-not-send="true">i915#3637</a>) +5 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@2x-plain-flip:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@kms_flip@2x-plain-flip.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274" moz-do-not-send="true">fdo#109274</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3637" moz-do-not-send="true">i915#3637</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-expired-vblank-interruptible:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@kms_flip@flip-vs-expired-vblank-interruptible.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3637" moz-do-not-send="true">i915#3637</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2587" moz-do-not-send="true">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2672" moz-do-not-send="true">i915#2672</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555" moz-do-not-send="true">i915#3555</a>) +10 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849" moz-do-not-send="true">i915#1849</a>) +53 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbc-tiling-4:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@kms_frontbuffer_tracking@fbc-tiling-4.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5439" moz-do-not-send="true">i915#5439</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-blt:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-blt.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110189" moz-do-not-send="true">fdo#110189</a>) +16 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc:</p>
          <ul>
            <li>shard-glk: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-glk4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a>) +4 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-cpu:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-cpu.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109280" moz-do-not-send="true">fdo#109280</a>) +15 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849" moz-do-not-send="true">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3558" moz-do-not-send="true">i915#3558</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_alpha_blend@alpha-transparent-fb:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@kms_plane_alpha_blend@alpha-transparent-fb.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7128" moz-do-not-send="true">i915#7128</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7294" moz-do-not-send="true">i915#7294</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-1:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-1.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235" moz-do-not-send="true">i915#5235</a>) +7 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6953" moz-do-not-send="true">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8152" moz-do-not-send="true">i915#8152</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@overlay-plane-update-continuous-sf:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111068" moz-do-not-send="true">fdo#111068</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/658" moz-do-not-send="true">i915#658</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@kms_psr2_su@frontbuffer-xrgb8888.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109642" moz-do-not-send="true">fdo#109642</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111068" moz-do-not-send="true">fdo#111068</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/658" moz-do-not-send="true">i915#658</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@cursor_blt:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@kms_psr@cursor_blt.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110189" moz-do-not-send="true">fdo#110189</a>) +4 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111615" moz-do-not-send="true">fdo#111615</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1845" moz-do-not-send="true">i915#1845</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_universal_plane@disable-primary-vs-flip-pipe-d:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@kms_universal_plane@disable-primary-vs-flip-pipe-d.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274" moz-do-not-send="true">fdo#109274</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_writeback@writeback-check-output:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@kms_writeback@writeback-check-output.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2437" moz-do-not-send="true">i915#2437</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_writeback@writeback-fb-id:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@kms_writeback@writeback-fb-id.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2437" moz-do-not-send="true">i915#2437</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@perf@mi-rpc:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@perf@mi-rpc.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109289" moz-do-not-send="true">fdo#109289</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@perf@stress-open-close:</p>
          <ul>
            <li>shard-glk: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-glk7/igt@perf@stress-open-close.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-glk8/igt@perf@stress-open-close.html" moz-do-not-send="true">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5213" moz-do-not-send="true">i915#5213</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@perf_pmu@event-wait@rcs0:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@perf_pmu@event-wait@rcs0.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=112283" moz-do-not-send="true">fdo#112283</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@prime_vgem@basic-userptr:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@prime_vgem@basic-userptr.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295" moz-do-not-send="true">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3301" moz-do-not-send="true">i915#3301</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@prime_vgem@fence-read-hang:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@prime_vgem@fence-read-hang.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295" moz-do-not-send="true">fdo#109295</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@v3d/v3d_perfmon@get-values-invalid-pad:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@v3d/v3d_perfmon@get-values-invalid-pad.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315" moz-do-not-send="true">fdo#109315</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2575" moz-do-not-send="true">i915#2575</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@vc4/vc4_label_bo@set-bad-name:</p>
          <ul>
            <li>shard-tglu-10: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-10/igt@vc4/vc4_label_bo@set-bad-name.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575" moz-do-not-send="true">i915#2575</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@vc4/vc4_purgeable_bo@mark-unpurgeable-purged:</p>
          <ul>
            <li>shard-tglu-9: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-tglu-9/igt@vc4/vc4_purgeable_bo@mark-unpurgeable-purged.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575" moz-do-not-send="true">i915#2575</a>) +4 similar issues</li>
          </ul>
        </li>
      </ul>
      <h4>Possible fixes</h4>
      <ul>
        <li>
          <p>igt@drm_fdinfo@virtual-idle:</p>
          <ul>
            <li>{shard-rkl}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-rkl-4/igt@drm_fdinfo@virtual-idle.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7742" moz-do-not-send="true">i915#7742</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-rkl-3/igt@drm_fdinfo@virtual-idle.html" moz-do-not-send="true">PASS</a> +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_ctx_persistence@legacy-engines-hang@blt:</p>
          <ul>
            <li>{shard-rkl}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-rkl-5/igt@gem_ctx_persistence@legacy-engines-hang@blt.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6252" moz-do-not-send="true">i915#6252</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-rkl-6/igt@gem_ctx_persistence@legacy-engines-hang@blt.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_balancer@fairslice:</p>
          <ul>
            <li>{shard-rkl}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-rkl-5/igt@gem_exec_balancer@fairslice.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6259" moz-do-not-send="true">i915#6259</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-rkl-6/igt@gem_exec_balancer@fairslice.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-pace@rcs0:</p>
          <ul>
            <li>{shard-rkl}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-rkl-3/igt@gem_exec_fair@basic-pace@rcs0.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842" moz-do-not-send="true">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-rkl-5/igt@gem_exec_fair@basic-pace@rcs0.html" moz-do-not-send="true">PASS</a> +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
          <ul>
            <li>{shard-rkl}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-rkl-6/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109313" moz-do-not-send="true">fdo#109313</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-rkl-5/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_reloc@basic-gtt-read-noreloc:</p>
          <ul>
            <li>{shard-rkl}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-read-noreloc.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281" moz-do-not-send="true">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-read-noreloc.html" moz-do-not-send="true">PASS</a> +8 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_partial_pwrite_pread@writes-after-reads-uncached:</p>
          <ul>
            <li>{shard-rkl}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-rkl-2/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282" moz-do-not-send="true">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html" moz-do-not-send="true">PASS</a> +4 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gen9_exec_parse@batch-without-end:</p>
          <ul>
            <li>{shard-rkl}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-rkl-3/igt@gen9_exec_parse@batch-without-end.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2527" moz-do-not-send="true">i915#2527</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-rkl-5/igt@gen9_exec_parse@batch-without-end.html" moz-do-not-send="true">PASS</a> +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rpm@cursor-dpms:</p>
          <ul>
            <li>{shard-rkl}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-rkl-5/igt@i915_pm_rpm@cursor-dpms.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849" moz-do-not-send="true">i915#1849</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-rkl-6/igt@i915_pm_rpm@cursor-dpms.html" moz-do-not-send="true">PASS</a> +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rpm@modeset-non-lpsp:</p>
          <ul>
            <li>{shard-dg1}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-dg1-14/igt@i915_pm_rpm@modeset-non-lpsp.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397" moz-do-not-send="true">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-dg1-18/igt@i915_pm_rpm@modeset-non-lpsp.html" moz-do-not-send="true">PASS</a> +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@linear-32bpp-rotate-0:</p>
          <ul>
            <li>{shard-rkl}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-rkl-5/igt@kms_big_fb@linear-32bpp-rotate-0.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845" moz-do-not-send="true">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098" moz-do-not-send="true">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-rkl-6/igt@kms_big_fb@linear-32bpp-rotate-0.html" moz-do-not-send="true">PASS</a> +18 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@psr-suspend:</p>
          <ul>
            <li>{shard-rkl}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-suspend.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849" moz-do-not-send="true">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098" moz-do-not-send="true">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-suspend.html" moz-do-not-send="true">PASS</a> +10 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@sprite_mmap_gtt:</p>
          <ul>
            <li>{shard-rkl}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-rkl-5/igt@kms_psr@sprite_mmap_gtt.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072" moz-do-not-send="true">i915#1072</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-rkl-6/igt@kms_psr@sprite_mmap_gtt.html" moz-do-not-send="true">PASS</a> +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
          <ul>
            <li>{shard-rkl}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-rkl-5/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5461" moz-do-not-send="true">i915#5461</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-rkl-6/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-a:</p>
          <ul>
            <li>{shard-rkl}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-rkl-5/igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-a.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4098" moz-do-not-send="true">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-rkl-6/igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-a.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@perf@gen12-oa-tlb-invalidate:</p>
          <ul>
            <li>{shard-rkl}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-rkl-5/igt@perf@gen12-oa-tlb-invalidate.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109289" moz-do-not-send="true">fdo#109289</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-rkl-6/igt@perf@gen12-oa-tlb-invalidate.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
          <ul>
            <li>{shard-rkl}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-rkl-3/igt@perf@gen8-unprivileged-single-ctx-counters.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2436" moz-do-not-send="true">i915#2436</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-rkl-5/igt@perf@gen8-unprivileged-single-ctx-counters.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@perf@oa-exponents:</p>
          <ul>
            <li>shard-glk: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12827/shard-glk2/igt@perf@oa-exponents.html" moz-do-not-send="true">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5213" moz-do-not-send="true">i915#5213</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114306v2/shard-glk4/igt@perf@oa-exponents.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
      </ul>
      <p>{name}: This element is suppressed. This means it is ignored
        when computing<br>
        the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
      <h2>Build changes</h2>
      <ul>
        <li>Linux: CI_DRM_12827 -&gt; Patchwork_114306v2</li>
      </ul>
      <p>CI-20190529: 20190529<br>
        CI_DRM_12827: b794b8d84dc0470ee58467386f41870e81a86580 @
        git://anongit.freedesktop.org/gfx-ci/linux<br>
        IGT_7183: 3434cef8be4e487644a740039ad15123cd094526 @
        <a class="moz-txt-link-freetext" href="https://gitlab.freedesktop.org/drm/igt-gpu-tools.git">https://gitlab.freedesktop.org/drm/igt-gpu-tools.git</a><br>
        Patchwork_114306v2: b794b8d84dc0470ee58467386f41870e81a86580 @
        git://anongit.freedesktop.org/gfx-ci/linux<br>
        piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @
        git://anongit.freedesktop.org/piglit</p>
    </blockquote>
    <br>
  </body>
</html>

--------------rslQXM2upN04JEatyskL9G0f--
