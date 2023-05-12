Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00B9D700DDF
	for <lists+intel-gfx@lfdr.de>; Fri, 12 May 2023 19:30:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99C0010E183;
	Fri, 12 May 2023 17:30:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FD9210E183
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 May 2023 17:30:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683912630; x=1715448630;
 h=message-id:date:subject:to:references:from:in-reply-to:
 mime-version; bh=GK+AcV0yS0FAIU/c90RIrX68CTXLK4RSHIs1kT75JDQ=;
 b=SmLgeFzE+vi/ogT+SgTzrPnQDFoOCJNcktAJoSEeqoqPYfc43aRpv5vN
 F1kaq7oOSGJVnqcI+pT4Qz0tjI6kckaZZW2/pGOhuyqyCAK2uTjvDq+1a
 gnTHwZjf5dbAcEUjGYxzjsSa9L6au7EJzl2l4mB9bIXwdSSRXKieDCvvD
 dXDulwPJLlmDhC3CUwtvKgkU1IbMoic4KWxzXLuX6xbg8A+7vLbaq6XK0
 Ipi4ZDYpI76n4yWmnoCzCYGPziM5fQxHiw5PkXU7th/1pEb4FW9GU7JFz
 JFFGGFS6Io0W3BBgGwAA4GPT7e3ioZDMoEGtb795feAWr4WSOXCp8ZunG g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="349682614"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; 
 d="scan'208,217";a="349682614"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 10:30:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="874466818"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; 
 d="scan'208,217";a="874466818"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 12 May 2023 10:30:28 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 12 May 2023 10:30:27 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 12 May 2023 10:30:27 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 12 May 2023 10:30:27 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 12 May 2023 10:30:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ltkGjAPsXniongWmvHbImNPYiHICUcKdugSU0V6rORJjg0hxqUHuLMgNRGFefVDXZN3BCzFC2jpmoEpCuSz/KbDxp05jedZpnccV+H1nchnXu2K4KpKkmu240SPbiss9xj8V0axti7gjzT6ip+oxWVDjZwC3nCcyO5sZ2z9XENlfOiFVN/9hdhwqJA19waEhefxPbG3lHGqsOD1jEHcQvykYHgXRLfMDwYkDoM7IrsMhzVQlVLzPs+kE/m+DE3Xs6q/K/fM1C8kkKmlosucbq9Zlo9RCRcSIyCxehZB85xlzMJs6W49l63gmANkEmv++X3MNineL9i6w+1roZYdqTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2aWKnbxBldDQ0hPUVk+qhbJwV/keZ3gE4X35VqDm1uU=;
 b=FdsUaS7siteyMWWL+Av1eF339LyYVYoaYx3IsrITL7q24lqia9lqPzb0sqrTIGRyjxE0fWEPuc4s+MD596zuaP2dPjFi98Q82+9mJ4jUStweIx4OuwYFDq/3py9ZMsmI+1iGMzTDo9wvp+dU0SQiFri+8YjiD0+RxifK2JkOkAyt5B99dF0q2IJx8n079lUs6wH/mZo0bG2iCNlpmgkACuDzVOtFykc8D4VLAOcdGXP+1rWdi58yFNvTzqlOpnpubjhKBwFQScjX5EeevV8IIQr/axuCrLnlkqsnkeS1p/7gX7InVNJasqqBMBYTWiXN2CgWX0n6w/c20lSzIDa2cA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by DM4PR11MB6381.namprd11.prod.outlook.com (2603:10b6:8:bd::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.22; Fri, 12 May
 2023 17:30:21 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::871d:4695:ebdf:9df1]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::871d:4695:ebdf:9df1%4]) with mapi id 15.20.6387.022; Fri, 12 May 2023
 17:30:21 +0000
Content-Type: multipart/alternative;
 boundary="------------i8t5dVWaEd3fXS0Ic0F6HpxH"
Message-ID: <96eb81be-5cba-3448-47c6-ffff74a3ee53@intel.com>
Date: Fri, 12 May 2023 10:30:17 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.10.1
Content-Language: en-GB
To: <intel-gfx@lists.freedesktop.org>
References: <20230510205556.312999-1-John.C.Harrison@Intel.com>
 <168377994016.29008.9254462672181002811@emeril.freedesktop.org>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <168377994016.29008.9254462672181002811@emeril.freedesktop.org>
X-ClientProxiedBy: SJ0PR05CA0007.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::12) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|DM4PR11MB6381:EE_
X-MS-Office365-Filtering-Correlation-Id: 9570601f-6bfe-479b-6521-08db530e8fab
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 12SGmil/h1T7oOHEPHO4yjM9QHCuXWtlxDHxxwS2NeGeUIvD5NI2zdofXGclqtCrWn4LmSAxpNYdRG+mD+vYqYXCJQUIXOhfWdg9gRDc/Znkd9uxc9zkSog2+AGak3NdUJfECOuS7uzxGmxUODpmGoiF6FMNN41mpSK0Qikkb62Ih3OaLMARwDO3XJRIdQ28IYs0TkVkpF7qaxGc8ZN9SNtlx/WbMG+SJ7119fOZGafYPufAlg02qSrQT6KnzxxZ3iOztZJAJExo5PjkEr3YYdvOHBYoeQMEs66LL+ZpXqj0K457Pt+S8EU57eIdxrjmdbvnWrMN7N1twQ55MnIqQpSd/0ap2LU97GnngM9nLiuFhjgtRXphB8kqVuIJO3O2S/iS/owxTR380oUtXhNUJp1mOPWt5ziay3VmB95DezH2rDDN+nJ+68+Wl2EOnnxjnYwUnhXfUItaaBq3Cy0PeXcMzORil8KSs61Ue6pqqAGzMJyFtG/4f4LLxANl/AOyPVNWL6M5MozlbpEocQTkjQWeI1zcELTyGb4rPPpjacWFZEYgshf6MyN44nmFgRED7KUQi8RlacRP/0yGMIhjVBvI1E4q77WlGuFM+dZP1oY4SgfBqbiIPecJ4JusN6Ywju4kG2cpIAqxS3kWDJoFJJN25J3dSoLz6gsRi+eSUAs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(136003)(346002)(366004)(396003)(376002)(451199021)(8936002)(478600001)(21615005)(5660300002)(31696002)(36756003)(2906002)(86362001)(30864003)(66476007)(166002)(66556008)(6916009)(82960400001)(316002)(66946007)(41300700001)(186003)(38100700002)(40265005)(26005)(53546011)(6506007)(6512007)(6666004)(31686004)(2616005)(83380400001)(6486002)(33964004)(966005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bmliSXdxVFVQcTFDcVZOY3ZwbW55U0poTk1UcmtDelZOUWdHeVRBd0N3d0o4?=
 =?utf-8?B?Q1JFczFGZnk4WGd1bHpvSVp0YlA1dHJGbXBxay9KQ1d0OTdTUzhyQTRxdG1r?=
 =?utf-8?B?b1NLMWhxV2pmaE9RN0dWQUduUmhKOElFMWkydHpnVnBwdnVQUjRob3NOUEdz?=
 =?utf-8?B?NCtyRTZnR1pYY3lxWmIwT0dOYy8yNEdFTmdvb0JGYy9PWWtBNXVkd24wc0Nu?=
 =?utf-8?B?dzlHd1czK3pKdjQ1MUdIT2dSSTE1dDdTV0x2RWprOXdFbGZsM0Zrd1BZeXN1?=
 =?utf-8?B?WitCQjY5engxcTA2UmRNMFNuNVptRDljZWFGQWZITVJ6WGNFYmhzTXB5K0Zh?=
 =?utf-8?B?R3BtczhCejluRFdTUG1QbUlmMjBZR3YyZWwyVW5weGhlcC9kL2p4ZW85TXN3?=
 =?utf-8?B?ejNVUUlDcURORThpNkp2NjkrbHdNeEFRM2RtWERXMEhUWVl6eHJMWkJwMFBO?=
 =?utf-8?B?ZW1XMUd2QXdzQWRFNHBXak9iTjhtZWFOOWl3c29YRVBRcGZNR3pwS1VEZU1H?=
 =?utf-8?B?VENKSzFjcFRwZTFjTytqSDQyUTdGWVMyeXdMWnBiMlF5Sml6SmFBV1JEVG9j?=
 =?utf-8?B?V0YvVSs4bGRJVlJxNnhDcEpXaDhWWXg3REZwSjFzQmpKZ0FmNjhwMFRvOW1B?=
 =?utf-8?B?YUZXVEJQTllTR1JzbUpiVG1JZXA4OTFDZGNVZmY2UlhIRVdMRk1xV3BJYUJl?=
 =?utf-8?B?OWMvMDdDTTlybTYxdk9vdlY0cUZkemkzcW1BTDNwaFhPTEZMcGFXSkh4NU9i?=
 =?utf-8?B?Tk12SHFsMWxlUHFVRFBVYmlnZUVieE95WFhDN0dPODJIM1VBL21TQWoxUlh0?=
 =?utf-8?B?SnBJelNxV1VoMTIyU3RycGNtODlKQjdLcC9iSVZPcHRsK3N5YXpJUkM0RXRo?=
 =?utf-8?B?VWloSEhQWHZHTFBLSS80RlVLZ2Jaa0pUN3pYL2RiWXlLYVo0OFV0Q1djaS9P?=
 =?utf-8?B?WkRoMmFsRTNEUmJHdEFNeWVodGw3REZnMXVpVFdwOVh2NjltTitzNzFFcVcz?=
 =?utf-8?B?RE14UHhLZlhuS0dnYU9PMkhzUE9nZFZvT2JZa0t1aWZ1aGNWNXExUU5uQmQ3?=
 =?utf-8?B?TGxIeU16VmlUQXY3bElpRThXZnVZTGozMHd1a0VadUc5VmxZcC90UTRlcDBj?=
 =?utf-8?B?TmxyM3l3UGM2cjA2amlPQjRWTzlLSGtDN29FMlEwMVRIa29pNHZxOUtyT2sr?=
 =?utf-8?B?cHNISkpYSUsyaENPL24yYlNURHoreENHZjIxRFlIdU9uc1ZqbU45d28yakI2?=
 =?utf-8?B?aEtEOXQvaGZ4VFgwS05QMnMrRk1zSytlLzB1NlY4TGlqRGdZZ01CNDBCM1Vo?=
 =?utf-8?B?NFZkb3hBUVE5ejZCcU56Uk10M1kzZG9xUzBnMXhZWG1xb3hFeExLK0txMENx?=
 =?utf-8?B?Z2JuQnd1d24ycGUzczVxZ2g3bTVsQ0RwNDZsWmFDeDhWWW5GWW9aN1VrQ05o?=
 =?utf-8?B?ZU1YcndNcTUzMjgvemtraTNIM2NEYjEvOW5MWHRaVjU2eGJBUWswak1ZcG9G?=
 =?utf-8?B?Y0p6Yk9UUHNWOFZCejJYMzBSN0pBTFAwclphSzRLcjVWbEEvYWxmdFdOVzl0?=
 =?utf-8?B?R2lTNlVWSXRyWnpJTW1sU2E0NWNpRUFRb2liYys1d0FBTlBLVTNjSm83Zmwx?=
 =?utf-8?B?QWxVYzh3Nnl4YnV3eENvUW9qcU5nME8vSzIycTdYK2tRUXdNclZ6U0ViakZh?=
 =?utf-8?B?QnFXRVJPWGxHNkJqazEvb0FGV0RjdGVvNlJuVytPMkVXbWR4MllVWXpUMysw?=
 =?utf-8?B?ZGk2Uk5Vd0pJZFY1U3hLTGRHQU82Rm1sMTZ2T1FWYTFBRjN0Z1oyUFhuekNL?=
 =?utf-8?B?dmE3ZHFSMXI0WGx5SHR6TGhQanRtWU02ZzNXc0ZsS2psN3M3ZElJYmZJY1li?=
 =?utf-8?B?ZGN1WGVHS2w0UHRIYmZobDNGSGN4UDMrSDdnQndXcGVOUEJKcmlqWUJpR1ho?=
 =?utf-8?B?Mk5IRnBhYzRoc1dXd1hZdmhQMmVnRGw2T3I2MnJWUE9nbWtPaUNSVXF2Z0ta?=
 =?utf-8?B?M0sxMjZKeUFFa3dDOEhQaHdvWVVrOTRsTnV3VVRaV2tvWFYyUTY1SUVucmxV?=
 =?utf-8?B?OENUWEkwZ3JnOTRqdDRyU2hJcm83dGRsYlZYRk9NUFJiY0dhR0VOU0d4N05Z?=
 =?utf-8?B?RXZtMEhlSzNnb08xSW92eE91ZUVwRndLd09MdHkydyt1K1pWNzlUbHRaZkc5?=
 =?utf-8?B?bkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9570601f-6bfe-479b-6521-08db530e8fab
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 May 2023 17:30:20.9797 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nPzJpECcARAlIJ8isU4et0afnkGG0sx6a+Bl0tYhAEkobB0dP38R95fxXEKO0YwiHBoBV+RPVlg9vGL65Ik3O61LaxgKkfPCiISNOAhKYlc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6381
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i1915/guc=3A_Fix_probe_injection_CI_failures_after_recent_chan?=
 =?utf-8?q?ge?=
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

--------------i8t5dVWaEd3fXS0Ic0F6HpxH
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 5/10/2023 21:39, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	drm/i1915/guc: Fix probe injection CI failures after recent 
> change
> *URL:* 	https://patchwork.freedesktop.org/series/117600/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117600v1/index.html
>
>
>   CI Bug Log - changes from CI_DRM_13131_full -> Patchwork_117600v1_full
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_117600v1_full absolutely 
> need to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_117600v1_full, please notify your bug team to 
> allow them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
>
>     Participating hosts (7 -> 7)
>
> No changes in participating hosts
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_117600v1_full:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>   * igt@gem_ctx_isolation@preservation-s3@vecs0:
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13131/shard-apl1/igt@gem_ctx_isolation@preservation-s3@vecs0.html>
>         -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117600v1/shard-apl6/igt@gem_ctx_isolation@preservation-s3@vecs0.html>
>
Log shows a display failure. Not related to injection probe testing at all.

John.

>  *
>
>
>         Suppressed
>
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
>
>   * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
>       o {shard-dg1}: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13131/shard-dg1-17/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117600v1/shard-dg1-16/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html>
>         +1 similar issue
>
>
>     Known issues
>
> Here are the changes found in Patchwork_117600v1_full that come from 
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
>     igt@gem_exec_fair@basic-pace-solo@rcs0:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13131/shard-glk1/igt@gem_exec_fair@basic-pace-solo@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117600v1/shard-glk9/igt@gem_exec_fair@basic-pace-solo@rcs0.html>
>         (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
>  *
>
>     igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>
>      o
>
>         shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13131/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117600v1/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html>
>         (i915#2346 <https://gitlab.freedesktop.org/drm/intel/issues/2346>)
>
>      o
>
>         shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13131/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117600v1/shard-apl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html>
>         (i915#2346 <https://gitlab.freedesktop.org/drm/intel/issues/2346>)
>
>  *
>
>     igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13131/shard-glk1/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117600v1/shard-glk7/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html>
>         (i915#2122 <https://gitlab.freedesktop.org/drm/intel/issues/2122>)
>  *
>
>     igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1:
>
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13131/shard-apl7/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117600v1/shard-apl1/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html>
>         (i915#1188 <https://gitlab.freedesktop.org/drm/intel/issues/1188>)
>  *
>
>     igt@kms_plane@pixel-format-source-clamping@pipe-b-planes:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13131/shard-glk7/igt@kms_plane@pixel-format-source-clamping@pipe-b-planes.html>
>         -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117600v1/shard-glk2/igt@kms_plane@pixel-format-source-clamping@pipe-b-planes.html>
>         (i915#118 <https://gitlab.freedesktop.org/drm/intel/issues/118>)
>
>
>         Possible fixes
>
>  *
>
>     igt@gem_ctx_exec@basic-nohangcheck:
>
>       o {shard-rkl}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13131/shard-rkl-6/igt@gem_ctx_exec@basic-nohangcheck.html>
>         (i915#6268
>         <https://gitlab.freedesktop.org/drm/intel/issues/6268>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117600v1/shard-rkl-3/igt@gem_ctx_exec@basic-nohangcheck.html>
>  *
>
>     igt@gem_exec_fair@basic-throttle@rcs0:
>
>       o {shard-rkl}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13131/shard-rkl-2/igt@gem_exec_fair@basic-throttle@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117600v1/shard-rkl-6/igt@gem_exec_fair@basic-throttle@rcs0.html>
>  *
>
>     igt@gem_exec_suspend@basic-s4-devices@smem:
>
>       o {shard-tglu}: ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13131/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices@smem.html>
>         (i915#7953
>         <https://gitlab.freedesktop.org/drm/intel/issues/7953> /
>         i915#7975
>         <https://gitlab.freedesktop.org/drm/intel/issues/7975> /
>         i915#8213
>         <https://gitlab.freedesktop.org/drm/intel/issues/8213>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117600v1/shard-tglu-7/igt@gem_exec_suspend@basic-s4-devices@smem.html>
>  *
>
>     igt@i915_pm_rc6_residency@rc6-idle@vecs0:
>
>       o {shard-dg1}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13131/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html>
>         (i915#3591
>         <https://gitlab.freedesktop.org/drm/intel/issues/3591>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117600v1/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html>
>  *
>
>     igt@i915_pm_rpm@dpms-mode-unset-lpsp:
>
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13131/shard-rkl-6/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html>
>         (i915#1397
>         <https://gitlab.freedesktop.org/drm/intel/issues/1397>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117600v1/shard-rkl-7/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html>
>  *
>
>     igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
>
>       o {shard-rkl}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13131/shard-rkl-7/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html>
>         (i915#3743
>         <https://gitlab.freedesktop.org/drm/intel/issues/3743>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117600v1/shard-rkl-6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html>
>  *
>
>     igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2:
>
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13131/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html>
>         (i915#79 <https://gitlab.freedesktop.org/drm/intel/issues/79>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117600v1/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html>
>  *
>
>     {igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2}:
>
>       o {shard-rkl}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13131/shard-rkl-1/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html>
>         (i915#8292
>         <https://gitlab.freedesktop.org/drm/intel/issues/8292>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117600v1/shard-rkl-4/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html>
>  *
>
>     igt@perf_pmu@idle@rcs0:
>
>       o {shard-rkl}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13131/shard-rkl-6/igt@perf_pmu@idle@rcs0.html>
>         (i915#4349
>         <https://gitlab.freedesktop.org/drm/intel/issues/4349>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117600v1/shard-rkl-3/igt@perf_pmu@idle@rcs0.html>
>
> {name}: This element is suppressed. This means it is ignored when 
> computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>
>     Build changes
>
>   * Linux: CI_DRM_13131 -> Patchwork_117600v1
>
> CI-20190529: 20190529
> CI_DRM_13131: 92b7f1c42fc99ff1bad5e18d6b1aaa585f134d47 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7285: d1cbf2bad9c2664ab8bd3bd0946510a52800912f @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_117600v1: 92b7f1c42fc99ff1bad5e18d6b1aaa585f134d47 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ 
> git://anongit.freedesktop.org/piglit
>

--------------i8t5dVWaEd3fXS0Ic0F6HpxH
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    On 5/10/2023 21:39, Patchwork wrote:<br>
    <blockquote type="cite" cite="mid:168377994016.29008.9254462672181002811@emeril.freedesktop.org">
      
      <title>Project List - Patchwork</title>
      <style id="css-table-select" type="text/css">td { padding: 2pt; }</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>drm/i1915/guc: Fix probe injection CI failures after
              recent change</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a href="https://patchwork.freedesktop.org/series/117600/" moz-do-not-send="true" class="moz-txt-link-freetext">https://patchwork.freedesktop.org/series/117600/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117600v1/index.html" moz-do-not-send="true" class="moz-txt-link-freetext">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117600v1/index.html</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_13131_full -&gt;
        Patchwork_117600v1_full</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_117600v1_full
        absolutely need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_117600v1_full, please notify your bug
        team to allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <h2>Participating hosts (7 -&gt; 7)</h2>
      <p>No changes in participating hosts</p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_117600v1_full:</p>
      <h3>IGT changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>igt@gem_ctx_isolation@preservation-s3@vecs0:
          <ul>
            <li>shard-apl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13131/shard-apl1/igt@gem_ctx_isolation@preservation-s3@vecs0.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117600v1/shard-apl6/igt@gem_ctx_isolation@preservation-s3@vecs0.html" moz-do-not-send="true">ABORT</a></li>
          </ul>
        </li>
      </ul>
    </blockquote>
    Log shows a display failure. Not related to injection probe testing
    at all.<br>
    <br>
    John.<br>
    <br>
    <blockquote type="cite" cite="mid:168377994016.29008.9254462672181002811@emeril.freedesktop.org">
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
        <li>igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
          <ul>
            <li>{shard-dg1}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13131/shard-dg1-17/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117600v1/shard-dg1-16/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html" moz-do-not-send="true">DMESG-WARN</a> +1 similar issue</li>
          </ul>
        </li>
      </ul>
      <h2>Known issues</h2>
      <p>Here are the changes found in Patchwork_117600v1_full that come
        from known issues:</p>
      <h3>IGT changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>
          <p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
          <ul>
            <li>shard-glk: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13131/shard-glk1/igt@gem_exec_fair@basic-pace-solo@rcs0.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117600v1/shard-glk9/igt@gem_exec_fair@basic-pace-solo@rcs0.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842" moz-do-not-send="true">i915#2842</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
          <ul>
            <li>
              <p>shard-glk: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13131/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117600v1/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346" moz-do-not-send="true">i915#2346</a>)</p>
            </li>
            <li>
              <p>shard-apl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13131/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117600v1/shard-apl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346" moz-do-not-send="true">i915#2346</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2:</p>
          <ul>
            <li>shard-glk: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13131/shard-glk1/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117600v1/shard-glk7/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122" moz-do-not-send="true">i915#2122</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1:</p>
          <ul>
            <li>shard-apl: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13131/shard-apl7/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117600v1/shard-apl1/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188" moz-do-not-send="true">i915#1188</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane@pixel-format-source-clamping@pipe-b-planes:</p>
          <ul>
            <li>shard-glk: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13131/shard-glk7/igt@kms_plane@pixel-format-source-clamping@pipe-b-planes.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117600v1/shard-glk2/igt@kms_plane@pixel-format-source-clamping@pipe-b-planes.html" moz-do-not-send="true">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118" moz-do-not-send="true">i915#118</a>)</li>
          </ul>
        </li>
      </ul>
      <h4>Possible fixes</h4>
      <ul>
        <li>
          <p>igt@gem_ctx_exec@basic-nohangcheck:</p>
          <ul>
            <li>{shard-rkl}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13131/shard-rkl-6/igt@gem_ctx_exec@basic-nohangcheck.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6268" moz-do-not-send="true">i915#6268</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117600v1/shard-rkl-3/igt@gem_ctx_exec@basic-nohangcheck.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
          <ul>
            <li>{shard-rkl}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13131/shard-rkl-2/igt@gem_exec_fair@basic-throttle@rcs0.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842" moz-do-not-send="true">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117600v1/shard-rkl-6/igt@gem_exec_fair@basic-throttle@rcs0.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_suspend@basic-s4-devices@smem:</p>
          <ul>
            <li>{shard-tglu}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13131/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices@smem.html" moz-do-not-send="true">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7953" moz-do-not-send="true">i915#7953</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7975" moz-do-not-send="true">i915#7975</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8213" moz-do-not-send="true">i915#8213</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117600v1/shard-tglu-7/igt@gem_exec_suspend@basic-s4-devices@smem.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rc6_residency@rc6-idle@vecs0:</p>
          <ul>
            <li>{shard-dg1}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13131/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3591" moz-do-not-send="true">i915#3591</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117600v1/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rpm@dpms-mode-unset-lpsp:</p>
          <ul>
            <li>{shard-rkl}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13131/shard-rkl-6/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397" moz-do-not-send="true">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117600v1/shard-rkl-7/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:</p>
          <ul>
            <li>{shard-rkl}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13131/shard-rkl-7/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3743" moz-do-not-send="true">i915#3743</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117600v1/shard-rkl-6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2:</p>
          <ul>
            <li>shard-glk: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13131/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79" moz-do-not-send="true">i915#79</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117600v1/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>{igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2}:</p>
          <ul>
            <li>{shard-rkl}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13131/shard-rkl-1/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8292" moz-do-not-send="true">i915#8292</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117600v1/shard-rkl-4/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@perf_pmu@idle@rcs0:</p>
          <ul>
            <li>{shard-rkl}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13131/shard-rkl-6/igt@perf_pmu@idle@rcs0.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4349" moz-do-not-send="true">i915#4349</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117600v1/shard-rkl-3/igt@perf_pmu@idle@rcs0.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
      </ul>
      <p>{name}: This element is suppressed. This means it is ignored
        when computing<br>
        the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
      <h2>Build changes</h2>
      <ul>
        <li>Linux: CI_DRM_13131 -&gt; Patchwork_117600v1</li>
      </ul>
      <p>CI-20190529: 20190529<br>
        CI_DRM_13131: 92b7f1c42fc99ff1bad5e18d6b1aaa585f134d47 @
        <a class="moz-txt-link-freetext" href="git://anongit.freedesktop.org/gfx-ci/linux">git://anongit.freedesktop.org/gfx-ci/linux</a><br>
        IGT_7285: d1cbf2bad9c2664ab8bd3bd0946510a52800912f @
        <a class="moz-txt-link-freetext" href="https://gitlab.freedesktop.org/drm/igt-gpu-tools.git">https://gitlab.freedesktop.org/drm/igt-gpu-tools.git</a><br>
        Patchwork_117600v1: 92b7f1c42fc99ff1bad5e18d6b1aaa585f134d47 @
        <a class="moz-txt-link-freetext" href="git://anongit.freedesktop.org/gfx-ci/linux">git://anongit.freedesktop.org/gfx-ci/linux</a><br>
        piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @
        <a class="moz-txt-link-freetext" href="git://anongit.freedesktop.org/piglit">git://anongit.freedesktop.org/piglit</a></p>
    </blockquote>
    <br>
  </body>
</html>

--------------i8t5dVWaEd3fXS0Ic0F6HpxH--
