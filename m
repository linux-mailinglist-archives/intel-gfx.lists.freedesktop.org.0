Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C3205799298
	for <lists+intel-gfx@lfdr.de>; Sat,  9 Sep 2023 01:02:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2EA010E08A;
	Fri,  8 Sep 2023 23:02:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A978210E08A
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Sep 2023 23:02:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694214130; x=1725750130;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=7buL6CZPBk7WS39KuzSUeQLvXBUWLIlSaHnMfALYqX4=;
 b=UkV7HpFW0/WV1RXQ8HXg9K+iyFP/yqhMquF4k+TWAPN+jLZQyqrhYnqc
 cwNHPAk8+R+wKdfyyi6YT6rGBoLFvmn4C4sWcidySenckC6qI0uO8wDiM
 JpmNUTCDThB52lqfsjPI6quwZTeo9Msz+aw2SmsazJt00V3B8/AIqA8IL
 7D7tQPDkTV2EbOPzXKPAZuOUxQW7Wlg1iUSuT0fULbGDKjYndCUGvt9jg
 OyFeHGKKeiKx2/pLUWZZx0LAmi2DJYXU9YgFLDaVeVs04gD1ctsYnKS/h
 BWrTsFoY1xthrA7SDHN1UpzLNoHyifc82N+kIis7VeCnMp59wlvKTVqSP Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="358067945"
X-IronPort-AV: E=Sophos;i="6.02,238,1688454000"; d="scan'208";a="358067945"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 16:01:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="742669650"
X-IronPort-AV: E=Sophos;i="6.02,238,1688454000"; d="scan'208";a="742669650"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Sep 2023 16:01:54 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 8 Sep 2023 16:01:53 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 8 Sep 2023 16:01:53 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 8 Sep 2023 16:01:53 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.44) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 8 Sep 2023 16:01:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Eun1v59WvUNTQ5knPkk5v6LNkaUZeY/RSdY/oRY5LFvxc6yNtJEuy01ggdwVTUt1+jIR6uWXVbLJCNw2MAgX1R9Pm8kDBCkA3q3bQblqbrSEHDDnsI86yDMGnfsRIAg9i5eXvxSYKwZnGUsWrfv9xHchHSmOyoMuI8/NKLfiDAIqJYAL6CEo4dMc+1253LMmi7uodHDUxiaPSqamlYEYbqvB7Ocz+qP0zHf5rX+HEigsm2sUUQtvNghI04VEVEHrIWLkgy4V9BYXOE8VKGtBRJ0hkyiZjmZjXaLy78ElbcLzOHCDzTeWNJ8bwN3ieNBgbRE7rELOAnw1y6UgnSYwcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0f3/6djeMKab0m2zd5BUbZ3DRPpDaYx0ySXcukgxc34=;
 b=XgnVs2f3qTTOHzoydEHyZQ3ehftsoEKBf1xWiPcO1ErmEgNJ/qn4ovDBGXk6fGzROWXaIdttSAhEZIspwR8R9OyomJ1BBxNDoYR72bkCiandKrHRF7Btl1vvrxbTgcjvjY/hU23aEcLHp5IRyBM/AAMtSfJIZuCeUEO7ffTUCb/JOytOpvl6D30hsNv0IneAaonufzlR/Ut6WRHDbSSc8EI5TStQDN9GD0pT/brD4xnr9mL+dhBgh4g+uQFklJ/fSI9tIALMwBd1uaA3Mbm+SFpkrSRxqHP+6LYCrqfBmIhr6fulzzl2bEKG1w5REEVPTmYntBbeE/iGeOCqezFKaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 DS7PR11MB6104.namprd11.prod.outlook.com (2603:10b6:8:9f::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6768.30; Fri, 8 Sep 2023 23:01:25 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6745.035; Fri, 8 Sep 2023
 23:01:24 +0000
Date: Fri, 8 Sep 2023 16:01:21 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <20230908230121.GY2706891@mdroper-desk1.amr.corp.intel.com>
References: <20230906234732.3728630-6-matthew.d.roper@intel.com>
 <169415476608.14897.6529883326785951018@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <169415476608.14897.6529883326785951018@emeril.freedesktop.org>
X-ClientProxiedBy: BY5PR03CA0022.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0::32) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|DS7PR11MB6104:EE_
X-MS-Office365-Filtering-Correlation-Id: 075eafcc-7c2b-445e-b246-08dbb0bf865a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KChc9rpHJaPH7NC3nkJDQmAAD8S6GoS7QjqlouLLAAQ/AvbixPSUxcwh5Lif0mUaUmLacilmxkXq+GpnuCd5mQIBOLj4sUIWBz1xVVRnVyCstBju2Z83FgiO0tf1HIMAjzbz2WQrW6MRF7A4o4sS4JXUFQTNsHha0jsrLVqf9QKt/c6KGC7EG9Kt3cVQwfTS3+LC2Jz+89t95IUKdwnCzcMG9Fue83jlcVaelKMZxc1MMahJep5v+Ng1ZEGJ8/CN7WyxwvWIhRNAdHt7casZ2vZdNLYtVIyZq19DQlrbmnp9+uH6mVPVoAJy+TnzRo/KKEBsiTpuRwjPiAIQLYh7XXXhJK+NbPIlqfnleeM3FQM3t7sFOqdSrAlQTFq+WV+Rn67zYLGELh7EwmtBo9PBbub6CYpJW8S0UCQ0XHXEKlS8HSm6uLetFp0slpYEp01AZrjfLEeuBmbNSF/0h8fl4K8GJNm+/9PlXI98Sr2IJL5VWMIR5SwkcFoD9V/KMIYza1g4OnNJtCr3qHmnMJH3pAxTdmEqrf93QA91EQQsDGDb9pu3LabnnhICr4D54QgX
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(396003)(366004)(39860400002)(376002)(186009)(451199024)(1800799009)(2906002)(86362001)(1076003)(26005)(966005)(6506007)(6666004)(478600001)(6486002)(33656002)(6512007)(82960400001)(83380400001)(38100700002)(8936002)(41300700001)(6916009)(30864003)(66556008)(66476007)(5660300002)(66946007)(316002)(579004)(559001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?9/TbI8R9tZ/KOa8++VHWA3uRqBxq1RQtSMpMMX3/k5RRjuHcLK3o0WBYbIFq?=
 =?us-ascii?Q?zYc9CAHtM2sMsrwhVk3Y+nk9pTPzmFpczdTrNO9DAHlwo3U7l5inBDtoRtAu?=
 =?us-ascii?Q?NAlj/2vkq+Mce3SH1I3Xy7kFQgfLIlAwM2d3davURd5rQll5GcEYG6CFrnxR?=
 =?us-ascii?Q?vX5PF97u/EodJ6meWB7j4OTSqQSSDktL5j7dkQUxZhQ0efKb0YHvB1JusrvH?=
 =?us-ascii?Q?rIffdXmqfrE8spT6rnbQMXk70OaKNdXjHbW5UckE0QkXEZ08eu+PRZOCoBxN?=
 =?us-ascii?Q?tHY2LDRJ8AJf7O+B+ppCPwFQymGicUhmTkUwuqI0ceAUia8k9bNpeqDDCU2M?=
 =?us-ascii?Q?bNIHZzQ1weAobrvo2NCBwcKpF0AdVyXiIyCD07DjQRXvIxHUfQvjJJB4Lvk9?=
 =?us-ascii?Q?Ef68grXS81QfRdbooVCblEn8sZYmjxv04joVz1ZvxdO8A3ocKUnd6C3NJOKD?=
 =?us-ascii?Q?b6i5G9O8yUHun1N7PmWtJSFhlk/6vIFS687TEIx2qsEre1PxwcUI4sEgeZCl?=
 =?us-ascii?Q?FlkqkGsJICs8BFCwx4UemT+b6t4AUPciqjRK5pg3rGqQ+G2tv9mcwt0/t2oi?=
 =?us-ascii?Q?D1l7W/Igfuc3hQdzPIj78qVeSbXVt+AGpKqWL0jlbUUuvWD1H4ZaB+LR/m83?=
 =?us-ascii?Q?lbdZKtgUD713y9xjcYurNU6u1lO+tITtf4pGGmaMXIPu4LTm48w10iFDpyOa?=
 =?us-ascii?Q?IfAB8FkOTeti4zAV0wdmxopzXj8OC5te0AnYZrfe+FnwKhx9YQ5DIEOpnGu2?=
 =?us-ascii?Q?+W10G8Uq2oPt4fdOTRRx31+MeAz1K7Jj4JW8DdY/Jnp6nEtgD+Q8iW0HadjV?=
 =?us-ascii?Q?2Jqnz/1BJ0jLTRz+C3U8oNru8s7zxM3uNu3DE27/DD05x/A8TZglqGr+YZG0?=
 =?us-ascii?Q?X40C6QEX9S1sgGFwN7QCK4ch9K3StA4gTb4N0hvy1yrjGF7qZPrAnQewQKsy?=
 =?us-ascii?Q?akAkvqs926smmvDief/trQeF+ufsqomIn9fIikfNkCYjXsoRXSFD9bHsbmL/?=
 =?us-ascii?Q?ASZKI0VcJwPbKLk+sw02X5tPjPqTcicI58hO4euCbK3Hgzh/Mvh+ncQpuGQI?=
 =?us-ascii?Q?48oLf2AIbzgV7+NH2hvzyJc02n898MKW/tkmwoDMssnVTezv9q5eoMzGsAeL?=
 =?us-ascii?Q?O8zsZs8GM6iATxHl6Eq4qZZxlTGFbaY/ynu5W090PKzft+klND9erJELINwR?=
 =?us-ascii?Q?BxwvwAFwqhYyaZBrKxU7fGBa/OXqhodm+EfA37NwLqG4V8W/ZnBQ7vSeRVgY?=
 =?us-ascii?Q?Bd1qz2uusz3ZfD3RPGPaE1yM67FlUP4V19Xa+S/9VVzNqR0W48A94JByvnU0?=
 =?us-ascii?Q?b2oYdOUhHuc7GaCL4cmDd1XeVqhvgHTNoANT6szG3HMa6TudiP9u+4HeoUwD?=
 =?us-ascii?Q?eCqzCRmMYXLEc/+V2gvzHEQCWjCnTeWKS1VB0iGMWiHnMhGlzgNGGcKsv8eM?=
 =?us-ascii?Q?IJy6OZYUNxxGYtuu+d825dxNN0FMZM2yKUXsqadqM1/KLILijYMO1xN4Rhim?=
 =?us-ascii?Q?TWYTyA7OP5FR+ebrNl47o3kcUV+dwBhctyJTFjWq+8z88j7oU0crF3Ju6ia+?=
 =?us-ascii?Q?GJN3taM4+omvsoD8/djlmXRCMrjNdI0Mo8jWOnRqme0APA5IzTCmChEs/xY4?=
 =?us-ascii?Q?5g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 075eafcc-7c2b-445e-b246-08dbb0bf865a
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2023 23:01:24.6704 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gzUdZMDjDLXUwbTv651Cis0DMwVp9AKHhzVLaQKd6BD0OzIUf2+q7cxy++K8N61lDRbTUNl4JrR1CHiPA4wTiU/nGd9DYYTLk/pzA/bfxRQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6104
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgU2Vw?=
 =?utf-8?q?arate_display_workarounds_from_clock_gating_=28rev4=29?=
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

On Fri, Sep 08, 2023 at 06:32:46AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: Separate display workarounds from clock gating (rev4)
> URL   : https://patchwork.freedesktop.org/series/123363/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_13612_full -> Patchwork_123363v4_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_123363v4_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_123363v4_full, please notify your bug team (lgci.bug.filing@intel.com) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (9 -> 10)
> ------------------------------
> 
>   Additional (1): shard-tglu0 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_123363v4_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_ctx_isolation@preservation-s3@ccs2:
>     - shard-dg2:          NOTRUN -> [INCOMPLETE][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-1/igt@gem_ctx_isolation@preservation-s3@ccs2.html

https://gitlab.freedesktop.org/drm/intel/-/issues/9162

> 
>   * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
>     - shard-apl:          [PASS][2] -> [INCOMPLETE][3]
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/shard-apl2/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-apl6/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html

<3>[  275.640293] i915 0000:00:02.0: [drm] *ERROR* DPCD read failed, address 0x5df
<3>[  275.640429] i915 0000:00:02.0: [drm] *ERROR* Failed to write infoframes
...
<7>[  275.678015] i915 0000:00:02.0: [drm:intel_read_infoframe [i915]] Failed to unpack infoframe type 0x82
<3>[  275.678569] i915 0000:00:02.0: [drm] *ERROR* [CRTC:88:pipe B] mismatch in infoframes.enable (expected 0x00000000, found 0x00000008)

after coming out of suspend.  Doesn't appear to be related to this
series; this series didn't make any changes to APL (gen9).

> 
>   * igt@perf@i915-ref-count:
>     - shard-apl:          [PASS][4] -> [FAIL][5]
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/shard-apl4/igt@perf@i915-ref-count.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-apl2/igt@perf@i915-ref-count.html
>     - shard-dg2:          NOTRUN -> [FAIL][6]
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-11/igt@perf@i915-ref-count.html

https://gitlab.freedesktop.org/drm/intel/-/issues/9285

> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_schedule@noreorder@ccs0:
>     - shard-mtlp:         [DMESG-WARN][7] ([i915#9121]) -> [INCOMPLETE][8]
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/shard-mtlp-4/igt@gem_exec_schedule@noreorder@ccs0.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-mtlp-4/igt@gem_exec_schedule@noreorder@ccs0.html

https://gitlab.freedesktop.org/drm/intel/-/issues/9121
  and
https://gitlab.freedesktop.org/drm/intel/-/issues/8962


None of the problems reported here were caused by this series; applied
to drm-intel-next.  Thanks Lucas for the review.


Matt

> 
>   
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_13612_full and Patchwork_123363v4_full:
> 
> ### New IGT tests (4) ###
> 
>   * igt@kms_atomic_transition@plane-all-transition-nonblocking@pipe-a-vga-1:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_atomic_transition@plane-all-transition-nonblocking@pipe-b-vga-1:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_atomic_transition@plane-all-transition@pipe-a-vga-1:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_atomic_transition@plane-all-transition@pipe-b-vga-1:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.0] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_123363v4_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@drm_fdinfo@busy-idle@bcs0:
>     - shard-dg2:          NOTRUN -> [SKIP][9] ([i915#8414]) +20 other tests skip
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-7/igt@drm_fdinfo@busy-idle@bcs0.html
> 
>   * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
>     - shard-rkl:          [PASS][10] -> [FAIL][11] ([i915#7742])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/shard-rkl-7/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
> 
>   * igt@feature_discovery@chamelium:
>     - shard-dg2:          NOTRUN -> [SKIP][12] ([i915#4854])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-7/igt@feature_discovery@chamelium.html
> 
>   * igt@gem_basic@multigpu-create-close:
>     - shard-mtlp:         NOTRUN -> [SKIP][13] ([i915#7697])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-mtlp-5/igt@gem_basic@multigpu-create-close.html
> 
>   * igt@gem_busy@semaphore:
>     - shard-dg2:          NOTRUN -> [SKIP][14] ([i915#3936])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-11/igt@gem_busy@semaphore.html
> 
>   * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0:
>     - shard-dg2:          NOTRUN -> [INCOMPLETE][15] ([i915#7297])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-10/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0.html
> 
>   * igt@gem_close_race@multigpu-basic-process:
>     - shard-dg2:          NOTRUN -> [SKIP][16] ([i915#7697])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-7/igt@gem_close_race@multigpu-basic-process.html
> 
>   * igt@gem_ctx_isolation@preservation-s3@rcs0:
>     - shard-dg2:          NOTRUN -> [FAIL][17] ([fdo#103375])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-1/igt@gem_ctx_isolation@preservation-s3@rcs0.html
> 
>   * igt@gem_ctx_persistence@legacy-engines-cleanup:
>     - shard-snb:          NOTRUN -> [SKIP][18] ([fdo#109271] / [i915#1099]) +1 other test skip
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-snb2/igt@gem_ctx_persistence@legacy-engines-cleanup.html
> 
>   * igt@gem_exec_capture@capture-invisible@lmem0:
>     - shard-dg2:          NOTRUN -> [SKIP][19] ([i915#6334]) +1 other test skip
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-2/igt@gem_exec_capture@capture-invisible@lmem0.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-tglu:         [PASS][20] -> [FAIL][21] ([i915#2842])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/shard-tglu-3/igt@gem_exec_fair@basic-flow@rcs0.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-tglu-4/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace:
>     - shard-dg2:          NOTRUN -> [SKIP][22] ([i915#3539])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-7/igt@gem_exec_fair@basic-pace.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-rkl:          [PASS][23] -> [FAIL][24] ([i915#2842])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/shard-rkl-7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-rkl-6/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_fence@submit67:
>     - shard-dg2:          NOTRUN -> [SKIP][25] ([i915#4812])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-11/igt@gem_exec_fence@submit67.html
> 
>   * igt@gem_exec_flush@basic-uc-ro-default:
>     - shard-dg2:          NOTRUN -> [SKIP][26] ([i915#3539] / [i915#4852]) +3 other tests skip
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-2/igt@gem_exec_flush@basic-uc-ro-default.html
> 
>   * igt@gem_exec_params@secure-non-master:
>     - shard-dg2:          NOTRUN -> [SKIP][27] ([fdo#112283])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-7/igt@gem_exec_params@secure-non-master.html
> 
>   * igt@gem_exec_reloc@basic-active:
>     - shard-dg1:          NOTRUN -> [SKIP][28] ([i915#3281]) +1 other test skip
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg1-14/igt@gem_exec_reloc@basic-active.html
> 
>   * igt@gem_exec_reloc@basic-concurrent16:
>     - shard-mtlp:         NOTRUN -> [SKIP][29] ([i915#3281])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-mtlp-5/igt@gem_exec_reloc@basic-concurrent16.html
> 
>   * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
>     - shard-dg2:          NOTRUN -> [SKIP][30] ([i915#3281]) +7 other tests skip
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-2/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
> 
>   * igt@gem_exec_schedule@noreorder@vcs0:
>     - shard-mtlp:         [PASS][31] -> [ABORT][32] ([i915#9262])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/shard-mtlp-4/igt@gem_exec_schedule@noreorder@vcs0.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-mtlp-4/igt@gem_exec_schedule@noreorder@vcs0.html
> 
>   * igt@gem_exec_schedule@preempt-queue:
>     - shard-dg1:          NOTRUN -> [SKIP][33] ([i915#4812]) +1 other test skip
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg1-14/igt@gem_exec_schedule@preempt-queue.html
> 
>   * igt@gem_lmem_evict@dontneed-evict-race:
>     - shard-apl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [i915#4613])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-apl3/igt@gem_lmem_evict@dontneed-evict-race.html
> 
>   * igt@gem_lmem_swapping@random-engines:
>     - shard-mtlp:         NOTRUN -> [SKIP][35] ([i915#4613])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-mtlp-5/igt@gem_lmem_swapping@random-engines.html
> 
>   * igt@gem_mmap@pf-nonblock:
>     - shard-dg1:          NOTRUN -> [SKIP][36] ([i915#4083])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg1-14/igt@gem_mmap@pf-nonblock.html
> 
>   * igt@gem_mmap_gtt@zero-extend:
>     - shard-dg2:          NOTRUN -> [SKIP][37] ([i915#4077]) +7 other tests skip
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-7/igt@gem_mmap_gtt@zero-extend.html
> 
>   * igt@gem_mmap_wc@copy:
>     - shard-mtlp:         NOTRUN -> [SKIP][38] ([i915#4083])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-mtlp-5/igt@gem_mmap_wc@copy.html
> 
>   * igt@gem_mmap_wc@write-cpu-read-wc-unflushed:
>     - shard-dg2:          NOTRUN -> [SKIP][39] ([i915#4083]) +1 other test skip
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-2/igt@gem_mmap_wc@write-cpu-read-wc-unflushed.html
> 
>   * igt@gem_pread@snoop:
>     - shard-dg2:          NOTRUN -> [SKIP][40] ([i915#3282]) +5 other tests skip
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-7/igt@gem_pread@snoop.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-apl:          NOTRUN -> [WARN][41] ([i915#2658])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-apl3/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
>     - shard-mtlp:         NOTRUN -> [SKIP][42] ([i915#4270])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-mtlp-5/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html
> 
>   * igt@gem_pxp@protected-raw-src-copy-not-readible:
>     - shard-dg2:          NOTRUN -> [SKIP][43] ([i915#4270]) +1 other test skip
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-2/igt@gem_pxp@protected-raw-src-copy-not-readible.html
> 
>   * igt@gem_softpin@evict-snoop:
>     - shard-dg2:          NOTRUN -> [SKIP][44] ([i915#4885])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-7/igt@gem_softpin@evict-snoop.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-dg2:          NOTRUN -> [SKIP][45] ([i915#3297])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-2/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-apl:          [PASS][46] -> [ABORT][47] ([i915#5566])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/shard-apl7/igt@gen9_exec_parse@allowed-single.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-apl7/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@bb-start-far:
>     - shard-mtlp:         NOTRUN -> [SKIP][48] ([i915#2856])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-mtlp-5/igt@gen9_exec_parse@bb-start-far.html
> 
>   * igt@gen9_exec_parse@shadow-peek:
>     - shard-dg2:          NOTRUN -> [SKIP][49] ([i915#2856]) +1 other test skip
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-7/igt@gen9_exec_parse@shadow-peek.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-tglu:         [PASS][50] -> [FAIL][51] ([i915#3989] / [i915#454])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/shard-tglu-4/igt@i915_pm_dc@dc6-dpms.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-tglu-5/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@i915_pm_rpm@dpms-non-lpsp:
>     - shard-dg1:          [PASS][52] -> [SKIP][53] ([i915#1397]) +2 other tests skip
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/shard-dg1-18/igt@i915_pm_rpm@dpms-non-lpsp.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg1-19/igt@i915_pm_rpm@dpms-non-lpsp.html
> 
>   * igt@i915_pm_rps@min-max-config-loaded:
>     - shard-mtlp:         NOTRUN -> [SKIP][54] ([i915#6621])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-mtlp-5/igt@i915_pm_rps@min-max-config-loaded.html
> 
>   * igt@i915_pm_rps@thresholds@gt0:
>     - shard-dg2:          NOTRUN -> [SKIP][55] ([i915#8925])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-7/igt@i915_pm_rps@thresholds@gt0.html
> 
>   * igt@i915_query@hwconfig_table:
>     - shard-dg1:          NOTRUN -> [SKIP][56] ([i915#6245])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg1-14/igt@i915_query@hwconfig_table.html
> 
>   * igt@i915_suspend@debugfs-reader:
>     - shard-dg2:          [PASS][57] -> [INCOMPLETE][58] ([i915#4817] / [i915#9136])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/shard-dg2-1/igt@i915_suspend@debugfs-reader.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-5/igt@i915_suspend@debugfs-reader.html
>     - shard-mtlp:         [PASS][59] -> [ABORT][60] ([i915#7461] / [i915#9262])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/shard-mtlp-5/igt@i915_suspend@debugfs-reader.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-mtlp-1/igt@i915_suspend@debugfs-reader.html
> 
>   * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
>     - shard-dg2:          NOTRUN -> [SKIP][61] ([i915#4212])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-7/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
> 
>   * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
>     - shard-mtlp:         NOTRUN -> [SKIP][62] ([i915#3826])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-mtlp-5/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-4-y-rc_ccs:
>     - shard-dg1:          NOTRUN -> [SKIP][63] ([i915#8502]) +7 other tests skip
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg1-16/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-4-y-rc_ccs.html
> 
>   * igt@kms_async_flips@crc@pipe-b-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [FAIL][64] ([i915#8247]) +3 other tests fail
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg1-12/igt@kms_async_flips@crc@pipe-b-hdmi-a-3.html
> 
>   * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
>     - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#404])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-11/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
> 
>   * igt@kms_big_fb@x-tiled-16bpp-rotate-270:
>     - shard-dg2:          NOTRUN -> [SKIP][66] ([fdo#111614]) +2 other tests skip
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-11/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
>     - shard-dg2:          NOTRUN -> [SKIP][67] ([i915#5190]) +8 other tests skip
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-2/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>     - shard-tglu:         [PASS][68] -> [FAIL][69] ([i915#3743])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/shard-tglu-4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-tglu-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>     - shard-mtlp:         NOTRUN -> [SKIP][70] ([fdo#111615]) +1 other test skip
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-mtlp-5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-dg2:          NOTRUN -> [SKIP][71] ([i915#4538] / [i915#5190]) +1 other test skip
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-2/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-4_tiled_dg2_mc_ccs:
>     - shard-mtlp:         NOTRUN -> [SKIP][72] ([i915#6095]) +2 other tests skip
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-mtlp-5/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-4_tiled_dg2_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#3886]) +1 other test skip
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-apl7/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
>     - shard-dg2:          NOTRUN -> [SKIP][74] ([i915#3689] / [i915#3886] / [i915#5354]) +10 other tests skip
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-2/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-d-bad-rotation-90-4_tiled_dg2_mc_ccs:
>     - shard-dg1:          NOTRUN -> [SKIP][75] ([i915#3689] / [i915#5354] / [i915#6095]) +1 other test skip
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg1-14/igt@kms_ccs@pipe-d-bad-rotation-90-4_tiled_dg2_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
>     - shard-dg2:          NOTRUN -> [SKIP][76] ([i915#3689] / [i915#5354]) +12 other tests skip
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-11/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_chamelium_color@ctm-negative:
>     - shard-mtlp:         NOTRUN -> [SKIP][77] ([fdo#111827])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-mtlp-5/igt@kms_chamelium_color@ctm-negative.html
> 
>   * igt@kms_chamelium_frames@hdmi-crc-multiple:
>     - shard-dg2:          NOTRUN -> [SKIP][78] ([i915#7828]) +6 other tests skip
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-11/igt@kms_chamelium_frames@hdmi-crc-multiple.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][79] ([i915#7118])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-2/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
>     - shard-dg2:          NOTRUN -> [SKIP][80] ([i915#3359]) +2 other tests skip
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-2/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
> 
>   * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
>     - shard-dg1:          [PASS][81] -> [DMESG-WARN][82] ([i915#4423])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/shard-dg1-14/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg1-18/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][83] ([fdo#109274] / [i915#5354]) +3 other tests skip
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-7/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
>     - shard-mtlp:         NOTRUN -> [SKIP][84] ([i915#4213])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-mtlp-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html
> 
>   * igt@kms_dirtyfb@dirtyfb-ioctl@drrs-hdmi-a-2:
>     - shard-dg2:          NOTRUN -> [SKIP][85] ([i915#9226] / [i915#9261]) +1 other test skip
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-2/igt@kms_dirtyfb@dirtyfb-ioctl@drrs-hdmi-a-2.html
> 
>   * igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-2:
>     - shard-dg2:          NOTRUN -> [SKIP][86] ([i915#9227])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-2/igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-2.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-8bpc:
>     - shard-dg2:          NOTRUN -> [SKIP][87] ([i915#3555]) +3 other tests skip
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-7/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html
> 
>   * igt@kms_dsc@dsc-with-output-formats:
>     - shard-dg2:          NOTRUN -> [SKIP][88] ([i915#3555] / [i915#3840])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-2/igt@kms_dsc@dsc-with-output-formats.html
> 
>   * igt@kms_fence_pin_leak:
>     - shard-dg1:          NOTRUN -> [SKIP][89] ([i915#4881])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg1-14/igt@kms_fence_pin_leak.html
> 
>   * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
>     - shard-snb:          NOTRUN -> [SKIP][90] ([fdo#109271] / [fdo#111767])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-snb2/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2:
>     - shard-glk:          [PASS][91] -> [FAIL][92] ([i915#79])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@2x-flip-vs-fences:
>     - shard-dg1:          NOTRUN -> [SKIP][93] ([i915#8381])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg1-14/igt@kms_flip@2x-flip-vs-fences.html
> 
>   * igt@kms_flip@2x-flip-vs-panning-vs-hang:
>     - shard-mtlp:         NOTRUN -> [SKIP][94] ([i915#3637])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-mtlp-5/igt@kms_flip@2x-flip-vs-panning-vs-hang.html
> 
>   * igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:
>     - shard-dg2:          NOTRUN -> [SKIP][95] ([fdo#109274]) +3 other tests skip
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-11/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:
>     - shard-mtlp:         NOTRUN -> [ABORT][96] ([i915#9262])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-mtlp-5/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
>     - shard-dg1:          NOTRUN -> [SKIP][97] ([i915#2587] / [i915#2672])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg1-14/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][98] ([i915#2672])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][99] ([i915#8810])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite:
>     - shard-dg2:          [PASS][100] -> [FAIL][101] ([i915#6880])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move:
>     - shard-mtlp:         NOTRUN -> [SKIP][102] ([i915#1825]) +4 other tests skip
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][103] ([i915#5354]) +23 other tests skip
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-tiling-linear:
>     - shard-dg2:          NOTRUN -> [FAIL][104] ([i915#6880])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-tiling-linear.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-wc:
>     - shard-dg1:          NOTRUN -> [SKIP][105] ([i915#8708]) +1 other test skip
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][106] ([i915#8708]) +11 other tests skip
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][107] ([i915#8708])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
>     - shard-dg2:          NOTRUN -> [SKIP][108] ([i915#3458]) +14 other tests skip
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:
>     - shard-dg1:          NOTRUN -> [SKIP][109] ([i915#3458]) +1 other test skip
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg1-14/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-pgflip-blt:
>     - shard-dg1:          NOTRUN -> [SKIP][110] ([fdo#111825]) +2 other tests skip
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg1-14/igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-pgflip-blt.html
> 
>   * igt@kms_hdr@bpc-switch:
>     - shard-rkl:          NOTRUN -> [SKIP][111] ([i915#3555] / [i915#8228])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-rkl-1/igt@kms_hdr@bpc-switch.html
> 
>   * igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes:
>     - shard-dg2:          NOTRUN -> [SKIP][112] ([fdo#109289])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-7/igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-1:
>     - shard-apl:          [PASS][113] -> [INCOMPLETE][114] ([i915#180])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/shard-apl2/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-1.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-apl6/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-1.html
> 
>   * igt@kms_plane@pixel-format@pipe-a-planes:
>     - shard-mtlp:         NOTRUN -> [FAIL][115] ([i915#1623]) +1 other test fail
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-mtlp-5/igt@kms_plane@pixel-format@pipe-a-planes.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1:
>     - shard-dg1:          NOTRUN -> [FAIL][116] ([i915#8292])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg1-19/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-b-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][117] ([i915#5176]) +13 other tests skip
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-rkl-7/igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-d-hdmi-a-2:
>     - shard-dg2:          NOTRUN -> [SKIP][118] ([i915#5176]) +7 other tests skip
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-d-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-b-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][119] ([i915#5176]) +19 other tests skip
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg1-17/igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-b-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-1:
>     - shard-dg1:          NOTRUN -> [SKIP][120] ([i915#5235]) +11 other tests skip
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg1-19/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][121] ([i915#5235]) +7 other tests skip
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-2:
>     - shard-dg2:          NOTRUN -> [SKIP][122] ([i915#5235]) +23 other tests skip
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][123] ([i915#5235]) +3 other tests skip
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-mtlp-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d-edp-1.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
>     - shard-apl:          NOTRUN -> [SKIP][124] ([fdo#109271] / [i915#658])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-apl7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-dg2:          NOTRUN -> [SKIP][125] ([i915#658]) +1 other test skip
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-2/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-mtlp:         NOTRUN -> [SKIP][126] ([i915#4348])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-mtlp-5/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@no_drrs:
>     - shard-dg2:          NOTRUN -> [SKIP][127] ([i915#1072]) +4 other tests skip
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-2/igt@kms_psr@no_drrs.html
> 
>   * igt@kms_psr@psr2_sprite_mmap_cpu:
>     - shard-dg1:          NOTRUN -> [SKIP][128] ([i915#1072]) +1 other test skip
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg1-14/igt@kms_psr@psr2_sprite_mmap_cpu.html
> 
>   * igt@kms_psr@psr2_sprite_mmap_gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][129] ([i915#4077]) +3 other tests skip
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-mtlp-5/igt@kms_psr@psr2_sprite_mmap_gtt.html
> 
>   * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>     - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#5461] / [i915#658])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-7/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
> 
>   * igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:
>     - shard-dg2:          NOTRUN -> [SKIP][131] ([i915#4235] / [i915#5190])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-7/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html
> 
>   * igt@kms_selftest@drm_damage:
>     - shard-dg2:          NOTRUN -> [SKIP][132] ([i915#8661])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-2/igt@kms_selftest@drm_damage.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-mtlp:         NOTRUN -> [SKIP][133] ([i915#2437])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-mtlp-5/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@perf@blocking@1-vecs0:
>     - shard-mtlp:         NOTRUN -> [FAIL][134] ([i915#9259])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-mtlp-3/igt@perf@blocking@1-vecs0.html
> 
>   * igt@perf_pmu@rc6-all-gts:
>     - shard-dg2:          NOTRUN -> [SKIP][135] ([i915#8516])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-7/igt@perf_pmu@rc6-all-gts.html
> 
>   * igt@perf_pmu@rc6-suspend:
>     - shard-snb:          NOTRUN -> [DMESG-WARN][136] ([i915#8841]) +9 other tests dmesg-warn
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-snb2/igt@perf_pmu@rc6-suspend.html
> 
>   * igt@perf_pmu@rc6@other-idle-gt0:
>     - shard-dg1:          NOTRUN -> [SKIP][137] ([i915#8516])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg1-14/igt@perf_pmu@rc6@other-idle-gt0.html
> 
>   * igt@prime_vgem@basic-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][138] ([i915#3708] / [i915#4077])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-mtlp-5/igt@prime_vgem@basic-gtt.html
> 
>   * igt@sysfs_preempt_timeout@timeout@vecs0:
>     - shard-mtlp:         NOTRUN -> [TIMEOUT][139] ([i915#8521])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-mtlp-5/igt@sysfs_preempt_timeout@timeout@vecs0.html
> 
>   * igt@v3d/v3d_create_bo@create-bo-4096:
>     - shard-dg1:          NOTRUN -> [SKIP][140] ([i915#2575]) +1 other test skip
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg1-14/igt@v3d/v3d_create_bo@create-bo-4096.html
> 
>   * igt@v3d/v3d_get_param@get-bad-flags:
>     - shard-dg2:          NOTRUN -> [SKIP][141] ([i915#2575]) +4 other tests skip
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-7/igt@v3d/v3d_get_param@get-bad-flags.html
> 
>   * igt@v3d/v3d_perfmon@destroy-valid-perfmon:
>     - shard-snb:          NOTRUN -> [SKIP][142] ([fdo#109271]) +218 other tests skip
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-snb2/igt@v3d/v3d_perfmon@destroy-valid-perfmon.html
> 
>   * igt@v3d/v3d_submit_cl@multiple-job-submission:
>     - shard-apl:          NOTRUN -> [SKIP][143] ([fdo#109271]) +29 other tests skip
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-apl3/igt@v3d/v3d_submit_cl@multiple-job-submission.html
> 
>   * igt@v3d/v3d_submit_csd@multi-and-single-sync:
>     - shard-mtlp:         NOTRUN -> [SKIP][144] ([i915#2575]) +1 other test skip
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-mtlp-5/igt@v3d/v3d_submit_csd@multi-and-single-sync.html
> 
>   * igt@vc4/vc4_mmap@mmap-bo:
>     - shard-dg1:          NOTRUN -> [SKIP][145] ([i915#7711])
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg1-14/igt@vc4/vc4_mmap@mmap-bo.html
> 
>   * igt@vc4/vc4_perfmon@get-values-valid-perfmon:
>     - shard-mtlp:         NOTRUN -> [SKIP][146] ([i915#7711])
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-mtlp-5/igt@vc4/vc4_perfmon@get-values-valid-perfmon.html
> 
>   * igt@vc4/vc4_wait_bo@unused-bo-1ns:
>     - shard-dg2:          NOTRUN -> [SKIP][147] ([i915#7711]) +6 other tests skip
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-2/igt@vc4/vc4_wait_bo@unused-bo-1ns.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:
>     - shard-dg2:          [INCOMPLETE][148] ([i915#7297]) -> [PASS][149]
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/shard-dg2-7/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-10/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
> 
>   * igt@gem_eio@hibernate:
>     - shard-dg2:          [ABORT][150] ([i915#7975] / [i915#8213]) -> [PASS][151]
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/shard-dg2-6/igt@gem_eio@hibernate.html
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-11/igt@gem_eio@hibernate.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-rkl:          [FAIL][152] ([i915#2842]) -> [PASS][153]
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/shard-rkl-7/igt@gem_exec_fair@basic-pace@rcs0.html
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-rkl-6/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_linear_blits@normal:
>     - shard-dg1:          [ABORT][154] -> [PASS][155]
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/shard-dg1-14/igt@gem_linear_blits@normal.html
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg1-14/igt@gem_linear_blits@normal.html
> 
>   * igt@gem_lmem_swapping@smem-oom@lmem0:
>     - shard-dg1:          [TIMEOUT][156] ([i915#5493]) -> [PASS][157]
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/shard-dg1-14/igt@gem_lmem_swapping@smem-oom@lmem0.html
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg1-14/igt@gem_lmem_swapping@smem-oom@lmem0.html
> 
>   * igt@gem_workarounds@suspend-resume:
>     - shard-mtlp:         [ABORT][158] ([i915#9262]) -> [PASS][159]
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/shard-mtlp-8/igt@gem_workarounds@suspend-resume.html
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-mtlp-5/igt@gem_workarounds@suspend-resume.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-apl:          [ABORT][160] ([i915#5566]) -> [PASS][161]
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/shard-apl7/igt@gen9_exec_parse@allowed-all.html
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-apl7/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:
>     - shard-dg1:          [SKIP][162] ([i915#1937]) -> [PASS][163]
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/shard-dg1-15/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg1-19/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@bcs0:
>     - shard-mtlp:         [FAIL][164] ([i915#3591]) -> [PASS][165]
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/shard-mtlp-3/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-mtlp-6/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@vecs0:
>     - shard-dg1:          [FAIL][166] ([i915#3591]) -> [PASS][167]
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html
> 
>   * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
>     - shard-rkl:          [SKIP][168] ([i915#1397]) -> [PASS][169]
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/shard-rkl-7/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-rkl-6/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@i915_power@sanity:
>     - shard-mtlp:         [SKIP][170] ([i915#7984]) -> [PASS][171]
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/shard-mtlp-5/igt@i915_power@sanity.html
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-mtlp-8/igt@i915_power@sanity.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-glk:          [FAIL][172] ([i915#2346]) -> [PASS][173]
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>     - shard-apl:          [FAIL][174] ([i915#2346]) -> [PASS][175]
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-apl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt:
>     - shard-dg2:          [FAIL][176] ([i915#6880]) -> [PASS][177]
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt.html
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt.html
> 
>   * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
>     - shard-apl:          [INCOMPLETE][178] ([i915#180]) -> [PASS][179]
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/shard-apl3/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-apl3/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
> 
>   * igt@perf@enable-disable@0-rcs0:
>     - shard-dg2:          [FAIL][180] ([i915#8724]) -> [PASS][181]
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/shard-dg2-11/igt@perf@enable-disable@0-rcs0.html
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-6/igt@perf@enable-disable@0-rcs0.html
> 
>   * igt@perf_pmu@render-node-busy-idle@rcs0:
>     - shard-mtlp:         [FAIL][182] ([i915#4349]) -> [PASS][183] +1 other test pass
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/shard-mtlp-5/igt@perf_pmu@render-node-busy-idle@rcs0.html
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-mtlp-4/igt@perf_pmu@render-node-busy-idle@rcs0.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_create@create-ext-cpu-access-big:
>     - shard-dg2:          [INCOMPLETE][184] ([i915#9283]) -> [ABORT][185] ([i915#7461])
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/shard-dg2-6/igt@gem_create@create-ext-cpu-access-big.html
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-3/igt@gem_create@create-ext-cpu-access-big.html
> 
>   * igt@gem_exec_schedule@noreorder@bcs0:
>     - shard-mtlp:         [ABORT][186] ([i915#9262]) -> [DMESG-WARN][187] ([i915#9121])
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/shard-mtlp-4/igt@gem_exec_schedule@noreorder@bcs0.html
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-mtlp-4/igt@gem_exec_schedule@noreorder@bcs0.html
> 
>   * igt@kms_content_protection@type1:
>     - shard-dg2:          [SKIP][188] ([i915#7118] / [i915#7162]) -> [SKIP][189] ([i915#7118]) +1 other test skip
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/shard-dg2-11/igt@kms_content_protection@type1.html
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg2-10/igt@kms_content_protection@type1.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-rkl:          [SKIP][190] ([i915#3955]) -> [SKIP][191] ([fdo#110189] / [i915#3955])
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-rkl-1/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@b-vga1:
>     - shard-snb:          [DMESG-WARN][192] ([i915#8841]) -> [DMESG-WARN][193] ([i915#5090] / [i915#8841])
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/shard-snb4/igt@kms_flip@flip-vs-suspend-interruptible@b-vga1.html
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-snb1/igt@kms_flip@flip-vs-suspend-interruptible@b-vga1.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-render:
>     - shard-dg1:          [SKIP][194] ([fdo#111825]) -> [SKIP][195] ([fdo#111825] / [i915#4423])
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-render.html
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-render.html
> 
>   * igt@kms_psr@primary_mmap_gtt:
>     - shard-dg1:          [SKIP][196] ([i915#1072]) -> [SKIP][197] ([i915#1072] / [i915#4078])
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/shard-dg1-17/igt@kms_psr@primary_mmap_gtt.html
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg1-18/igt@kms_psr@primary_mmap_gtt.html
> 
>   * igt@kms_psr@sprite_plane_onoff:
>     - shard-dg1:          [SKIP][198] ([i915#1072] / [i915#4078]) -> [SKIP][199] ([i915#1072])
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13612/shard-dg1-16/igt@kms_psr@sprite_plane_onoff.html
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/shard-dg1-15/igt@kms_psr@sprite_plane_onoff.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1623]: https://gitlab.freedesktop.org/drm/intel/issues/1623
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3826]: https://gitlab.freedesktop.org/drm/intel/issues/3826
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3936]: https://gitlab.freedesktop.org/drm/intel/issues/3936
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
>   [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4348]: https://gitlab.freedesktop.org/drm/intel/issues/4348
>   [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
>   [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4817]: https://gitlab.freedesktop.org/drm/intel/issues/4817
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4854]: https://gitlab.freedesktop.org/drm/intel/issues/4854
>   [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
>   [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
>   [i915#5090]: https://gitlab.freedesktop.org/drm/intel/issues/5090
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
>   [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
>   [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6245]: https://gitlab.freedesktop.org/drm/intel/issues/6245
>   [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
>   [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
>   [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
>   [i915#7162]: https://gitlab.freedesktop.org/drm/intel/issues/7162
>   [i915#7297]: https://gitlab.freedesktop.org/drm/intel/issues/7297
>   [i915#7461]: https://gitlab.freedesktop.org/drm/intel/issues/7461
>   [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
>   [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
>   [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>   [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
>   [i915#7984]: https://gitlab.freedesktop.org/drm/intel/issues/7984
>   [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
>   [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
>   [i915#8247]: https://gitlab.freedesktop.org/drm/intel/issues/8247
>   [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
>   [i915#8381]: https://gitlab.freedesktop.org/drm/intel/issues/8381
>   [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
>   [i915#8502]: https://gitlab.freedesktop.org/drm/intel/issues/8502
>   [i915#8516]: https://gitlab.freedesktop.org/drm/intel/issues/8516
>   [i915#8521]: https://gitlab.freedesktop.org/drm/intel/issues/8521
>   [i915#8661]: https://gitlab.freedesktop.org/drm/intel/issues/8661
>   [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
>   [i915#8724]: https://gitlab.freedesktop.org/drm/intel/issues/8724
>   [i915#8810]: https://gitlab.freedesktop.org/drm/intel/issues/8810
>   [i915#8841]: https://gitlab.freedesktop.org/drm/intel/issues/8841
>   [i915#8925]: https://gitlab.freedesktop.org/drm/intel/issues/8925
>   [i915#9121]: https://gitlab.freedesktop.org/drm/intel/issues/9121
>   [i915#9136]: https://gitlab.freedesktop.org/drm/intel/issues/9136
>   [i915#9226]: https://gitlab.freedesktop.org/drm/intel/issues/9226
>   [i915#9227]: https://gitlab.freedesktop.org/drm/intel/issues/9227
>   [i915#9259]: https://gitlab.freedesktop.org/drm/intel/issues/9259
>   [i915#9261]: https://gitlab.freedesktop.org/drm/intel/issues/9261
>   [i915#9262]: https://gitlab.freedesktop.org/drm/intel/issues/9262
>   [i915#9283]: https://gitlab.freedesktop.org/drm/intel/issues/9283
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_13612 -> Patchwork_123363v4
> 
>   CI-20190529: 20190529
>   CI_DRM_13612: 96fa6997c7d6fc80d5137c02f3e4e6fc69534d9f @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7474: 9d91cf2c6e7bb64d60c2030d1535e40ca0ad53ee @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_123363v4: 96fa6997c7d6fc80d5137c02f3e4e6fc69534d9f @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123363v4/index.html

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
