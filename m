Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EDD2E6F5DF6
	for <lists+intel-gfx@lfdr.de>; Wed,  3 May 2023 20:30:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC2AE10E338;
	Wed,  3 May 2023 18:30:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 666E010E338
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 May 2023 18:30:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683138641; x=1714674641;
 h=message-id:date:subject:to:references:from:in-reply-to:
 mime-version; bh=k/flKsTcyt7zM3Bu592jIda21vNtartYUgp5YkYlGc0=;
 b=lDIOHcGlyYtlhMyBTwKjE2uY2TlLrlS1uTI+9D+XSxFH9U6fcyf4H+k3
 6TBiptJ68td3nhE/Q+74HQTzZgzFdhCZ0wCCAB3FZLJvJV2Coyp196Plq
 MAw44OQiZu6Ik82GLuQ1VkcbwBOOOvuxVXn0j0laFHfGLbf9CjzIexjXD
 LEfiwFyALObw+LszUbnc6cphBw/9+slXU7bz4tXnlPYBSDaVggoQoXLpA
 8XFLkksQ83FgdS9ljRupBa+zlL+cyRR7nGFrXplZYKR1zmzPHUQPk/df9
 1/wNkwhTptCh2QinE2eHu6rAtUIW/DGISCBTn1zx1MHRc9hNiAr8ldrtR Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10699"; a="376801512"
X-IronPort-AV: E=Sophos;i="5.99,248,1677571200"; 
 d="scan'208,217";a="376801512"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2023 11:25:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10699"; a="808371639"
X-IronPort-AV: E=Sophos;i="5.99,248,1677571200"; 
 d="scan'208,217";a="808371639"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 03 May 2023 11:25:52 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 3 May 2023 11:25:52 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 3 May 2023 11:25:52 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 3 May 2023 11:25:52 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 3 May 2023 11:25:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=firoqOepfnjcPISUd/hGG+aEvNgKmssuue9bDcbG8gK/QMQzIVw7EAVDG+lngADqAFnLyFz9P7/DZLsaYc4C+OpNUxjnttIiKxy26gtCmTTNzbGd7yc6g4V5pgLwXiamXuIdGi1h2BXNAN4HQBQTbcuYwW6fFxGcBsviKRmkAyoHg5rdtELoIQSuNnnBXtwG12S36LyEDbbCh8x4MRJ6INkprDJnGa9cBXT27BjFGrDbdcgonx71noVLkvDen/EMKA/LKGyhCNZFTkap2Y3cG6bDelN+iCGxA572aj9TUGUoIXqXk8jwyjGrp5gFIqOy/7MgNWcst+UdEZVxLJ7T7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OyXKMOKPFemIrEdS8NTkyvcMhpsgDQn1KSvZVzF7aKA=;
 b=g5y5bBNDR0yPDvvzsZf3Zbz5h6khi5fd2jHUuzch6hxKx2KcDyK1y1tFdRC7RXW4Sxq8nXrckaMQEdIb/+kLM1/BofyQRTucAQSHIoiaDheTARheHy4SQvTHSRwqjMwrdlbUiPGnG5aFhwKCaXEaXUlvH6N1p1GE/OB0TSaqynPQwrvxg7fK/eZSHK3ckjGQFD2hZpuuxB20wNtX/sSLY3FtE71+krw+EiKJW5KNLdMNaER4TlA8bUHGWOXRNNQCTaALYUtJ3TLHQ1Rpe6SN1kemmP7s74nOUu0UvpOry+/ibl0BO4bvtBiiCW/MUiUMDSm8THjfXSV29rG6jLtT0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by SJ0PR11MB6573.namprd11.prod.outlook.com (2603:10b6:a03:44d::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6340.30; Wed, 3 May
 2023 18:25:48 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::3f27:644b:a0bd:a9b]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::3f27:644b:a0bd:a9b%5]) with mapi id 15.20.6363.022; Wed, 3 May 2023
 18:25:47 +0000
Content-Type: multipart/alternative;
 boundary="------------si0QzgzwMqgvhMntNlM83a4p"
Message-ID: <4c0ef79b-31bd-797c-47e2-aadb05f758f4@intel.com>
Date: Wed, 3 May 2023 11:25:45 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.10.1
Content-Language: en-GB
To: <intel-gfx@lists.freedesktop.org>
References: <20230428185636.457407-1-John.C.Harrison@Intel.com>
 <168275094084.25333.10050871235614342611@emeril.freedesktop.org>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <168275094084.25333.10050871235614342611@emeril.freedesktop.org>
X-ClientProxiedBy: BYAPR07CA0045.namprd07.prod.outlook.com
 (2603:10b6:a03:60::22) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|SJ0PR11MB6573:EE_
X-MS-Office365-Filtering-Correlation-Id: e00e6ee2-c578-4a95-2cf7-08db4c03d05a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: d5nODTyQVZvfV/kzUWPqIvuaYQjZu8O1KZGjG/0HQwGB7BXe2YNiKOSujtd/AQmchb2Tn+laIYK+ZoSB9yYO+tXS7CLK32Zt4PvslWTT2W9mtcGZggAo1Z1LjOYBwgCV3IYxv6uhMZ+hKvUFts8rgmKXHbN06uYuGAsQAvX9hDqgN28nTAAKkBLT7QBm0OvhAK0IEDTMsiOYU0Twi90aHoA+6hP+R1y1sbxlJ7xKqK/PkPGk7ZoRoLcx245tr/MfSYeJM/7vq23yZK3bhdcO5JEadtf4siKTy7OxoqO7r/mxSXI4oLj9VvftPyHE2oL4NmBbxBcihYZJ8fWqeLiBE5Ly+fv1wnsMMDhR3FUJM+EdqS4/ZuFhbEu0SAUkI99UVeQC+Gyf49XRT9eFr/zkn04Aa/K92k7CPnUzFPOOSp7h6E/v/vhlQF8Kow7gQYSRC92g3q3zdZ12eS0sROHoPZhaGLqfDkmuSFZ/GcG8MW7kROr15RSc6yFw88I1Yn+0dxZ0wY3OsbLDV3ieCGNtxTLvQft27n2/aclqYB4oCnnEwvTRDaR9ZcPZlN4R+CjzaAF1lbJrEUZYwjDMhKzV9Z4265QJ02PBqBsNeY8qTNGRssyoYxYnKShVPZI79U+PBVypTRM9BkCfliSTDt68IA9Mb2XeNcBxZxzwZCagkrs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(396003)(366004)(136003)(376002)(346002)(451199021)(30864003)(6486002)(966005)(5660300002)(2906002)(66946007)(36756003)(6916009)(66556008)(41300700001)(38100700002)(21615005)(82960400001)(33964004)(8936002)(66476007)(316002)(478600001)(6512007)(26005)(31696002)(6506007)(53546011)(166002)(83380400001)(86362001)(40265005)(31686004)(186003)(2616005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U0FoKy9wTVR4c2lkbmhZNFBpWDluZlhTMUE4TzkzOVNaZUdYSDJhQ1V5bmtC?=
 =?utf-8?B?WG4wUENGVUErOCtPdnh2REZKNXNTUUZPdjloanlUZGVrZmJCeEJoWUZZaS8v?=
 =?utf-8?B?RXJ6NHBXRnFZV3FQekdBTWJ0LysrUGExc29LekhUUVFVUU9PSnFXQWNFQ1pq?=
 =?utf-8?B?SGZ4UjRjQm5MOHhkeEtSNTJwTHU1alkyQnJDWW0ySlcyK0xKN21zTldOc3lJ?=
 =?utf-8?B?TW1oTkN4M3FPd0ROZXA0SFJnRGN5UnR3SnJqK1pCVEFBUXBWNXM5aHZvV2RR?=
 =?utf-8?B?aDFLd1BTUmNDcS9YVy8vdzUwSVV1bHBrMktNTno2bWxhajFLMldxcWZLQm5a?=
 =?utf-8?B?N3RrTWs0eU9xMkRWYjVacnY3R28yc0ozUEJFOS9BWmY2bkxXcFZLVHNLZVE4?=
 =?utf-8?B?R3lJdXRBQmUyZnM4Z2ZiR0FQY3NCSlRIUXNOK3pzbmpnVjlCcmVSMmJ3RDZr?=
 =?utf-8?B?VlliOXp5dnA3TzloWU85UVNFb094NHlTL0dmUy8vWkhnQjhBWHNCZGFKdE8x?=
 =?utf-8?B?cjhOWUhXRXVpamFGc3VFKzVKRjlSNnlzcGZDQmd2UE04SjArNDk0eEN2K0I0?=
 =?utf-8?B?TmthaXBmRDJNQ0J3T2UwZENCcnVxM3d2djNmZ0VMZVVVV0lxSzhzemdsS2s0?=
 =?utf-8?B?WXNxYnp5bzNhOUF1ZlYvait6NFZlb3JFZ2t1V21wMTJwYmt0bXlYbWowSGFM?=
 =?utf-8?B?M0ZkWE1nL0JkZDUxNktES3gxVzhGaGdMYmZoS29tZXVCbHFtMHlBNWJCa05B?=
 =?utf-8?B?Y051M0ZCemNLWTFTeVdQcEs4VVJwWU05eUdJRTcvcmRvUEppR3AwSU9DOUpw?=
 =?utf-8?B?MXpJWUtNS0tSM3ZUQkNyNUJrWjdlTTFTSnR1WDdDWHlrRGxseTNJZjYrZ3lE?=
 =?utf-8?B?Y2hYcGhrYW9YUzBLTmkzaG1TczFwWUNTTHR6VzRhdHlMNVNrWkEwdmZmZzF4?=
 =?utf-8?B?Mmx4WkFPS0dPQnExZEZIRVJRNS9sV000Vy9TTTUvWGdHZ3phRjVnMlRHMHY5?=
 =?utf-8?B?eVlMM0NGRXJ2cmt6K0hJdTJHanE1eGwvSmdmTEZVVHQ3cFRubXB3UVFzcmR4?=
 =?utf-8?B?L1doQzEycWdYTUI5aXpuZXJyZi9oT2VhS0tXVS9wQmdiY3l3ODBVNlV0dXhG?=
 =?utf-8?B?a21jZ0V5cld4NXVveFRXc3Q1TDF0Qjluc0xCWDNWMG1UVm16WDJSb0UrRHJv?=
 =?utf-8?B?cnB2ZWxPK0s0akJENERhaE5IOXZ3OU9XcHB6dTU1eTA5VFVZc2lGdHp6WlRj?=
 =?utf-8?B?K1RiNmQ0Y2wzL3A5clFxQW1NLzJSUTJ2amlWOFBGSXRVa3Q5cGxvbTBTYkZN?=
 =?utf-8?B?WW9uV3lESExHWS85Rnh6NHRQbUxEY3N0Q0x6ajNGbFNkSXdDOUUxRnR3bUgv?=
 =?utf-8?B?S2tiS1NseGRxVkU1c2EyR0hSRkJhd3Rvdi9sUXJmRldhYm9JTjBwVFFoRGl3?=
 =?utf-8?B?a3ZKbHlMRk05MSsvNWI1UERBdEIyR01uS1B5N0NsTEJRNkVnYURnNm5SaEVi?=
 =?utf-8?B?KzkvUmhsWTV5QVVuM1JhVUduQStOWlA5WmE2LzhQQW5lbzh3em9PMFN2bzAw?=
 =?utf-8?B?UDJGTnpLNHN5L2k5bmhPeWNxZStQM0hoSlZ6TW5Yc2NFTEFsVHM2NkZoQm00?=
 =?utf-8?B?TGFaOGp0QWZjUUZoY0wvN3NGT3I2RG9GU1ViTlVpaWo3cFRWMjJpcWRNbnQr?=
 =?utf-8?B?NWhEeU4zZU5KNXU2S0U3SU1GQnA4WnhXWEtnVVB5NTlmc3JpdHMxSFZEWERh?=
 =?utf-8?B?MElsbkVYeWFZM2VQNWpwOVpQd0ptOGZlaTMvYjRXR01pQXh6MVBOUy9XK1VM?=
 =?utf-8?B?SlFNVlB6bjV4Mm83cyt4djR0SUpTV25uNzBJNm16R1lkdHVxTGR0bVhjRE92?=
 =?utf-8?B?QWsrbSs5a0ZiMVJiSGpzcE1RLzBPNE5HTGVLUk1zWi91YW1HVTFEQ0RHTzRF?=
 =?utf-8?B?SG4wcWg5YTJONUFtNjM2dnc3bmdIWk1TNHhKZ1Q1d0t5NGhDYkNGNVRrc09Q?=
 =?utf-8?B?SmthdjB6amxGR1ZaemhkQkU2WHJDMUsvdzRlN1RwMGNVT3hCRVBjdjdZbEdT?=
 =?utf-8?B?Nmwwa0FtVXJEdStkNmR6OVFJS3ZrTkFidTZrZXFVckZZRnJ3YlFiczFIMG1R?=
 =?utf-8?B?L2dzbnBlVDk3enBOMXp1TFhjSVVMbzhnSTFZelh0ZmtBd3dSOUpmUE9MYW1G?=
 =?utf-8?B?U0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e00e6ee2-c578-4a95-2cf7-08db4c03d05a
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 May 2023 18:25:46.9222 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vt6yFbnlLVE4gKc4GAxLzku+MRwg75pNCzJ3oRETDiGz4KjTWzLoDM+S2ZJa8ltMGzx9YpAgIcPsIwSLKhfOJO4/DGGp5tFlGl1lBJ534qg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6573
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgSW1w?=
 =?utf-8?q?rovements_to_GuC_error_capture?=
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

--------------si0QzgzwMqgvhMntNlM83a4p
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 4/28/2023 23:49, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	Improvements to GuC error capture
> *URL:* 	https://patchwork.freedesktop.org/series/117120/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117120v1/index.html
>
>
>   CI Bug Log - changes from CI_DRM_13074_full -> Patchwork_117120v1_full
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_117120v1_full absolutely 
> need to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_117120v1_full, please notify your bug team to 
> allow them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
>
>     Participating hosts (7 -> 8)
>
> Additional (1): shard-rkl0
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_117120v1_full:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13074/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html>
>         -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117120v1/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html>
>
Display code went boom. Not related to error capture with GuC submission.

John.

>  *
>
>
>         Suppressed
>
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
>
>  *
>
>     igt@gem_ctx_freq@sysfs:
>
>       o {shard-dg1}: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13074/shard-dg1-13/igt@gem_ctx_freq@sysfs.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117120v1/shard-dg1-15/igt@gem_ctx_freq@sysfs.html>
>  *
>
>     igt@gem_exec_schedule@wide@vcs1:
>
>       o {shard-tglu}: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13074/shard-tglu-10/igt@gem_exec_schedule@wide@vcs1.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117120v1/shard-tglu-2/igt@gem_exec_schedule@wide@vcs1.html>
>
>
>     Known issues
>
> Here are the changes found in Patchwork_117120v1_full that come from 
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
>     igt@i915_selftest@live@dmabuf:
>
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13074/shard-apl4/igt@i915_selftest@live@dmabuf.html>
>         -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117120v1/shard-apl4/igt@i915_selftest@live@dmabuf.html>
>         (i915#7562 <https://gitlab.freedesktop.org/drm/intel/issues/7562>)
>  *
>
>     igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13074/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117120v1/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html>
>         (i915#2346 <https://gitlab.freedesktop.org/drm/intel/issues/2346>)
>  *
>
>     igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13074/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117120v1/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html>
>         (i915#2346 <https://gitlab.freedesktop.org/drm/intel/issues/2346>)
>  *
>
>     igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13074/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117120v1/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html>
>         (i915#79 <https://gitlab.freedesktop.org/drm/intel/issues/79>)
>  *
>
>     igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1:
>
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13074/shard-apl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117120v1/shard-apl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1.html>
>         (i915#79 <https://gitlab.freedesktop.org/drm/intel/issues/79>)
>         +2 similar issues
>  *
>
>     igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-0-25@pipe-a-hdmi-a-1:
>
>       o shard-snb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117120v1/shard-snb1/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-0-25@pipe-a-hdmi-a-1.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +33
>         similar issues
>  *
>
>     igt@kms_setmode@basic@pipe-a-vga-1:
>
>       o shard-snb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117120v1/shard-snb4/igt@kms_setmode@basic@pipe-a-vga-1.html>
>         (i915#5465
>         <https://gitlab.freedesktop.org/drm/intel/issues/5465>) +1
>         similar issue
>
>
>         Possible fixes
>
>  *
>
>     igt@gem_exec_balancer@hang:
>
>       o {shard-dg1}: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13074/shard-dg1-17/igt@gem_exec_balancer@hang.html>
>         (i915#8150
>         <https://gitlab.freedesktop.org/drm/intel/issues/8150>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117120v1/shard-dg1-12/igt@gem_exec_balancer@hang.html>
>  *
>
>     igt@gem_exec_fair@basic-pace-solo@rcs0:
>
>       o shard-apl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13074/shard-apl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117120v1/shard-apl3/igt@gem_exec_fair@basic-pace-solo@rcs0.html>
>  *
>
>     igt@gem_exec_suspend@basic-s4-devices@lmem0:
>
>       o {shard-dg1}: ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13074/shard-dg1-14/igt@gem_exec_suspend@basic-s4-devices@lmem0.html>
>         (i915#7975
>         <https://gitlab.freedesktop.org/drm/intel/issues/7975> /
>         i915#8213
>         <https://gitlab.freedesktop.org/drm/intel/issues/8213>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117120v1/shard-dg1-17/igt@gem_exec_suspend@basic-s4-devices@lmem0.html>
>  *
>
>     igt@gem_ppgtt@blt-vs-render-ctx0:
>
>       o shard-snb: DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13074/shard-snb6/igt@gem_ppgtt@blt-vs-render-ctx0.html>
>         (i915#8295
>         <https://gitlab.freedesktop.org/drm/intel/issues/8295>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117120v1/shard-snb1/igt@gem_ppgtt@blt-vs-render-ctx0.html>
>  *
>
>     igt@i915_pm_rpm@modeset-non-lpsp-stress:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13074/shard-rkl-7/igt@i915_pm_rpm@modeset-non-lpsp-stress.html>
>         (i915#1397
>         <https://gitlab.freedesktop.org/drm/intel/issues/1397>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117120v1/shard-rkl-1/igt@i915_pm_rpm@modeset-non-lpsp-stress.html>
>  *
>
>     igt@kms_cursor_legacy@forked-bo@pipe-b:
>
>       o {shard-rkl}: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13074/shard-rkl-7/igt@kms_cursor_legacy@forked-bo@pipe-b.html>
>         (i915#8011
>         <https://gitlab.freedesktop.org/drm/intel/issues/8011>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117120v1/shard-rkl-1/igt@kms_cursor_legacy@forked-bo@pipe-b.html>
>  *
>
>     igt@kms_plane_scaling@plane-upscale-with-modifiers-factor-0-25@pipe-b-hdmi-a-2:
>
>       o {shard-rkl}: ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13074/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-with-modifiers-factor-0-25@pipe-b-hdmi-a-2.html>
>         (i915#8311
>         <https://gitlab.freedesktop.org/drm/intel/issues/8311>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117120v1/shard-rkl-2/igt@kms_plane_scaling@plane-upscale-with-modifiers-factor-0-25@pipe-b-hdmi-a-2.html>
>  *
>
>     igt@perf_pmu@idle@rcs0:
>
>       o {shard-rkl}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13074/shard-rkl-7/igt@perf_pmu@idle@rcs0.html>
>         (i915#4349
>         <https://gitlab.freedesktop.org/drm/intel/issues/4349>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117120v1/shard-rkl-1/igt@perf_pmu@idle@rcs0.html>
>
> {name}: This element is suppressed. This means it is ignored when 
> computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>
>     Build changes
>
>   * Linux: CI_DRM_13074 -> Patchwork_117120v1
>
> CI-20190529: 20190529
> CI_DRM_13074: 29e53d3ca48aa5fcb6bcf8d1624c829b7838e242 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7277: 1cb3507f3ff28d11bd5cfabcde576fe78ddab571 @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_117120v1: 29e53d3ca48aa5fcb6bcf8d1624c829b7838e242 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ 
> git://anongit.freedesktop.org/piglit
>

--------------si0QzgzwMqgvhMntNlM83a4p
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    On 4/28/2023 23:49, Patchwork wrote:<br>
    <blockquote type="cite" cite="mid:168275094084.25333.10050871235614342611@emeril.freedesktop.org">
      
      <title>Project List - Patchwork</title>
      <style id="css-table-select" type="text/css">td { padding: 2pt; }</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>Improvements to GuC error capture</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a href="https://patchwork.freedesktop.org/series/117120/" moz-do-not-send="true" class="moz-txt-link-freetext">https://patchwork.freedesktop.org/series/117120/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117120v1/index.html" moz-do-not-send="true" class="moz-txt-link-freetext">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117120v1/index.html</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_13074_full -&gt;
        Patchwork_117120v1_full</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_117120v1_full
        absolutely need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_117120v1_full, please notify your bug
        team to allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <h2>Participating hosts (7 -&gt; 8)</h2>
      <p>Additional (1): shard-rkl0 </p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_117120v1_full:</p>
      <h3>IGT changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
          <ul>
            <li>shard-apl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13074/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117120v1/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html" moz-do-not-send="true">ABORT</a></li>
          </ul>
        </li>
      </ul>
    </blockquote>
    Display code went boom. Not related to error capture with GuC
    submission.<br>
    <br>
    John.<br>
    <br>
    <blockquote type="cite" cite="mid:168275094084.25333.10050871235614342611@emeril.freedesktop.org">
      <ul>
        <li>
          <ul>
          </ul>
        </li>
      </ul>
      <h4>Suppressed</h4>
      <p>The following results come from untrusted machines, tests, or
        statuses.<br>
        They do not affect the overall result.</p>
      <ul>
        <li>
          <p>igt@gem_ctx_freq@sysfs:</p>
          <ul>
            <li>{shard-dg1}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13074/shard-dg1-13/igt@gem_ctx_freq@sysfs.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117120v1/shard-dg1-15/igt@gem_ctx_freq@sysfs.html" moz-do-not-send="true">FAIL</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_schedule@wide@vcs1:</p>
          <ul>
            <li>{shard-tglu}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13074/shard-tglu-10/igt@gem_exec_schedule@wide@vcs1.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117120v1/shard-tglu-2/igt@gem_exec_schedule@wide@vcs1.html" moz-do-not-send="true">INCOMPLETE</a></li>
          </ul>
        </li>
      </ul>
      <h2>Known issues</h2>
      <p>Here are the changes found in Patchwork_117120v1_full that come
        from known issues:</p>
      <h3>IGT changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>
          <p>igt@i915_selftest@live@dmabuf:</p>
          <ul>
            <li>shard-apl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13074/shard-apl4/igt@i915_selftest@live@dmabuf.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117120v1/shard-apl4/igt@i915_selftest@live@dmabuf.html" moz-do-not-send="true">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7562" moz-do-not-send="true">i915#7562</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
          <ul>
            <li>shard-glk: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13074/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117120v1/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346" moz-do-not-send="true">i915#2346</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
          <ul>
            <li>shard-apl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13074/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117120v1/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346" moz-do-not-send="true">i915#2346</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2:</p>
          <ul>
            <li>shard-glk: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13074/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117120v1/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79" moz-do-not-send="true">i915#79</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1:</p>
          <ul>
            <li>shard-apl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13074/shard-apl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117120v1/shard-apl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79" moz-do-not-send="true">i915#79</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-0-25@pipe-a-hdmi-a-1:</p>
          <ul>
            <li>shard-snb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117120v1/shard-snb1/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-0-25@pipe-a-hdmi-a-1.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a>) +33 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_setmode@basic@pipe-a-vga-1:</p>
          <ul>
            <li>shard-snb: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117120v1/shard-snb4/igt@kms_setmode@basic@pipe-a-vga-1.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5465" moz-do-not-send="true">i915#5465</a>) +1 similar issue</li>
          </ul>
        </li>
      </ul>
      <h4>Possible fixes</h4>
      <ul>
        <li>
          <p>igt@gem_exec_balancer@hang:</p>
          <ul>
            <li>{shard-dg1}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13074/shard-dg1-17/igt@gem_exec_balancer@hang.html" moz-do-not-send="true">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8150" moz-do-not-send="true">i915#8150</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117120v1/shard-dg1-12/igt@gem_exec_balancer@hang.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
          <ul>
            <li>shard-apl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13074/shard-apl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842" moz-do-not-send="true">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117120v1/shard-apl3/igt@gem_exec_fair@basic-pace-solo@rcs0.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_suspend@basic-s4-devices@lmem0:</p>
          <ul>
            <li>{shard-dg1}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13074/shard-dg1-14/igt@gem_exec_suspend@basic-s4-devices@lmem0.html" moz-do-not-send="true">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7975" moz-do-not-send="true">i915#7975</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8213" moz-do-not-send="true">i915#8213</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117120v1/shard-dg1-17/igt@gem_exec_suspend@basic-s4-devices@lmem0.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_ppgtt@blt-vs-render-ctx0:</p>
          <ul>
            <li>shard-snb: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13074/shard-snb6/igt@gem_ppgtt@blt-vs-render-ctx0.html" moz-do-not-send="true">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8295" moz-do-not-send="true">i915#8295</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117120v1/shard-snb1/igt@gem_ppgtt@blt-vs-render-ctx0.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rpm@modeset-non-lpsp-stress:</p>
          <ul>
            <li>{shard-rkl}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13074/shard-rkl-7/igt@i915_pm_rpm@modeset-non-lpsp-stress.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397" moz-do-not-send="true">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117120v1/shard-rkl-1/igt@i915_pm_rpm@modeset-non-lpsp-stress.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@forked-bo@pipe-b:</p>
          <ul>
            <li>{shard-rkl}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13074/shard-rkl-7/igt@kms_cursor_legacy@forked-bo@pipe-b.html" moz-do-not-send="true">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8011" moz-do-not-send="true">i915#8011</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117120v1/shard-rkl-1/igt@kms_cursor_legacy@forked-bo@pipe-b.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@plane-upscale-with-modifiers-factor-0-25@pipe-b-hdmi-a-2:</p>
          <ul>
            <li>{shard-rkl}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13074/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-with-modifiers-factor-0-25@pipe-b-hdmi-a-2.html" moz-do-not-send="true">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8311" moz-do-not-send="true">i915#8311</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117120v1/shard-rkl-2/igt@kms_plane_scaling@plane-upscale-with-modifiers-factor-0-25@pipe-b-hdmi-a-2.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@perf_pmu@idle@rcs0:</p>
          <ul>
            <li>{shard-rkl}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13074/shard-rkl-7/igt@perf_pmu@idle@rcs0.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4349" moz-do-not-send="true">i915#4349</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117120v1/shard-rkl-1/igt@perf_pmu@idle@rcs0.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
      </ul>
      <p>{name}: This element is suppressed. This means it is ignored
        when computing<br>
        the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
      <h2>Build changes</h2>
      <ul>
        <li>Linux: CI_DRM_13074 -&gt; Patchwork_117120v1</li>
      </ul>
      <p>CI-20190529: 20190529<br>
        CI_DRM_13074: 29e53d3ca48aa5fcb6bcf8d1624c829b7838e242 @
        <a class="moz-txt-link-freetext" href="git://anongit.freedesktop.org/gfx-ci/linux">git://anongit.freedesktop.org/gfx-ci/linux</a><br>
        IGT_7277: 1cb3507f3ff28d11bd5cfabcde576fe78ddab571 @
        <a class="moz-txt-link-freetext" href="https://gitlab.freedesktop.org/drm/igt-gpu-tools.git">https://gitlab.freedesktop.org/drm/igt-gpu-tools.git</a><br>
        Patchwork_117120v1: 29e53d3ca48aa5fcb6bcf8d1624c829b7838e242 @
        <a class="moz-txt-link-freetext" href="git://anongit.freedesktop.org/gfx-ci/linux">git://anongit.freedesktop.org/gfx-ci/linux</a><br>
        piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @
        <a class="moz-txt-link-freetext" href="git://anongit.freedesktop.org/piglit">git://anongit.freedesktop.org/piglit</a></p>
    </blockquote>
    <br>
  </body>
</html>

--------------si0QzgzwMqgvhMntNlM83a4p--
