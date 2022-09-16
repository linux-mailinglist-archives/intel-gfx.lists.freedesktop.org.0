Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 526065BAFD4
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Sep 2022 17:04:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6838A10ED62;
	Fri, 16 Sep 2022 15:04:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 819AF10ED62
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Sep 2022 15:04:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663340676; x=1694876676;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=nSdaeZnpMhkIiUnca3BxbyBXUFePB4/IoStYKdbMjnk=;
 b=HJJ2qoMYoVhjYie+rjxlqMHb/XGCSZN6+RMEgx5YWtEG8eciWChrDwlT
 kHya+3h1oEyT1CaBdVsAG2reAFuYUO69OPXGAYFL9yUaJP0O6iG/Oad9U
 LOFRtdjK6ja9mU+b/OvOOwxffque5QoSbyDMrwK1+jfZSxJrjC04qTkwp
 ygbrCxFSCQkITT+KZdn6B8xEXBUdhrFvcscylssAe5w9R2QJJlFNerlI9
 xpKzZfWUqzEjD1eS69rSX6jlJL3bXwSnc8Ui/tv4GrWig4q/KpCh/krJh
 Ubl2eKioc9TdWwlFoPuen8kZJGm6t+7et7deCXbftz7BQa/VHyQScBzUT A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10472"; a="279391620"
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="279391620"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 08:04:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="613276672"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga007.jf.intel.com with ESMTP; 16 Sep 2022 08:04:35 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 16 Sep 2022 08:04:35 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 16 Sep 2022 08:04:35 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 16 Sep 2022 08:04:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hJzBoeP5uaL6qXmZCS27HCW49/knjF1xd9tdp/P2KF8KgxtSvFMFzBkmmLLeOdVD7D7hqYpZlCgZCBZWjR4JbDfEUztSJg5WGiq5oug11gPFbfVTF6p0smJYuGYagJBO6UhG3sz2dI+FIJiJgljb9sxCsfwuLaRft+VcHYxa4EGTiWe4U5Vae3A/qfv7pjSBBG7QoJlHQLrCdUY/G9T9Ywb4e6juBkWINMSH0tm6kBz/QeZo8ZO3XrafQIafUuNVTw0U4fZ6SZOLdg64PmGLtI/rvTbQOnlL6dOV4CBeWbhdn6fM79Rr0raYP5XuApqPYTDsLLxK51LyPP0X+9jSHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pszYj99iVECXI6XmJmMN1OZoUHJvezYScIABJY6hKoU=;
 b=TzAesvigPzvuxr33y+xgbmW1qQQSjnP5CXg7q9IlbLx+UzePcex2gswu89RAx1JU1s8djDjHRak7//ULPsVmP40M0AhcyWj64BWHYRXBYiu2mRN+Wd2FV0dnQcfoWcq9CAv2bTuwJb0SVB2oOau9kr1P4QCZV1DZ+VSNeoR4h8uWBUaJP1kCYd3LrVh3JORlbRyQv7iF8fz+BFWepD92I2tWB98d6UaUXW7g2edtxwt38OA76tW51X39n1Fqk+wIFFTEvh59DjZ+m0YIRrVxbsKC1ZiwhiaLLnzWoM5wrwOLOeaOV008FgS/qpNZMLktA80+CRP7mn4+caY9G5KUJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by CY8PR11MB7170.namprd11.prod.outlook.com (2603:10b6:930:91::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.15; Fri, 16 Sep
 2022 15:04:31 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::ecc9:50cb:5951:2514]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::ecc9:50cb:5951:2514%12]) with mapi id 15.20.5632.016; Fri, 16 Sep
 2022 15:04:31 +0000
Date: Fri, 16 Sep 2022 08:04:28 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <YySQfIXi3c6E1QGE@mdroper-desk1.amr.corp.intel.com>
References: <20220915232654.3283095-1-matthew.d.roper@intel.com>
 <166331030875.18049.2869597739316394245@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <166331030875.18049.2869597739316394245@emeril.freedesktop.org>
X-ClientProxiedBy: SJ0PR03CA0268.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::33) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR11MB1632:EE_|CY8PR11MB7170:EE_
X-MS-Office365-Filtering-Correlation-Id: dcef75fc-7175-4f51-04e4-08da97f4c254
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RWHvYpO5WxpgiCHT0yGmSCbY5E3Y0JGhcSCMRSVLirm1EEsHKzJLFF/npDu4LfPrw5NqIHc55eBXL9E9Qi3JQFLa+oev5rYl7bdk4Bzh881X6CjGpuWVbK5MLvJ+4Pp4jC9nlFFCLIROFDKjBB3pX+aAuRaIovHxczt/aH+n/+NNtt6TdxTV9xnOJE6/DPtnErE21Akel8ZBm0xqMXh6qjwG1r0BiPYmxqpp1VsUeOCEUx0S6KM0scfs4TYk+wUKRrGes9TxQsQqkq92mJ8axPeb8/v0PZz/NrSijgd32Of5kTONSc4otfh2jpYdE2o+mPK0XIhIpRDqxbXGLJ0kg5H8zQQ6hsWKxyNf9Lr5FT3v33z40l+ic7RuXH4jaju92IJq7Q1s0LFU36jNqf9EEwK9yTGvg5SofsGthb/82o3sNfQDuE8LeBR2EArmp/eJ/DOyqs3ID7g+vsM9dLntEY86EurwSTj/v1F/SloBO3+hUrKkaE0EPIILVYfhkr7T9yqAvQRlRVrE+rlWEs2Wp52bYJDJ+ANdCh6zzT2GLROgG9b5LutBdPHF7IpEkMyHjAj/YUWq4a988p/Z7RD+1m3W+1+cLC7UZlkLqqCFwo6j01Tz0CxvebX8FTW8r5tARkOLlR6/E6iWH9wxLaTvnzpDRk1nE64V2zmNdrRWf+F68PZo+CWcfc5ln+hKF3DmgV5TueYOzPa4N5XNdLKMKza5nbVk5t5zToUJRl6KYVsrq1nlSj47z7wdQLqan6soRICk6mqqnWDEstrhLm/JCg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(136003)(39860400002)(376002)(366004)(396003)(451199015)(66946007)(66556008)(66476007)(6916009)(6506007)(2906002)(186003)(30864003)(8936002)(83380400001)(82960400001)(5660300002)(6512007)(38100700002)(41300700001)(6486002)(26005)(966005)(478600001)(316002)(86362001)(6666004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?tLYmvXqs3iqVYN8Wm841U2p/FEgw7H89C3UXQPt4XMaZK741QgG1FtN4AluV?=
 =?us-ascii?Q?UOcFf+m4bi2Ne0OnayGTYus1UsPzBp+YZJkr1fBFDAMWvzPvjunPkdnRvwJV?=
 =?us-ascii?Q?nIqfdqIaqOk2Ka2/tnFcAl1JXL02ketEEwzTyPBpq/KwX3733GffZJ9tGgor?=
 =?us-ascii?Q?Ild9TIZgFs0RIGUfbo2ChNsJ23/eaJRBZ3HpvwGedZq6pleH4RK3pBTbB6AA?=
 =?us-ascii?Q?lIqQ6NXYEzt5p9mr2sHmyZTjLDYJK9J6EYydCZKTrWfA/s59JYTGddJzi2Yl?=
 =?us-ascii?Q?zkD45cTCCcimiZQ6mMxF0ZyCO1zuitzoq5tzrrOuzI9wcDrig4mPOp8yw8On?=
 =?us-ascii?Q?TXOgb/vGREhp3qLU+FAZXfqVslJ0Oci3hHluuYzji46D+VHW0yDJY21qm4bF?=
 =?us-ascii?Q?Mo1SoA4oTiLnmRADTMJbl12tysOMctSUBWNO6QjvF/USnS5nu+G5QbfagRKq?=
 =?us-ascii?Q?54toDloHm96xf9avDpasUpEWMsGr/8sP3DSEWB/l4RDdnlH2VT3ML/WttZlm?=
 =?us-ascii?Q?Kjd1dRb9xVk5SNorZB7KXT3rxKRHTXm4SkdGBEO22cYakZelUyuV/GkYpt3H?=
 =?us-ascii?Q?Ewf39Q1ku5cADhLeT2AP3AXYi5YIWwK9PgZX7kRvClIfe6t8WVuPM84p8TtB?=
 =?us-ascii?Q?fw7ir0LCRgQ78FPK6eSxBjCV+GrQFLaVPrA0Q48DS3Byh16Iaca8INioPRF7?=
 =?us-ascii?Q?pORsP66lNb5hIjQkRPFrLFhZBcbkprORiryyJzaCINM+/bFgO08Mn5lUZHL4?=
 =?us-ascii?Q?8XBnRfCrMhPpshP0Ur3WfzlxXkVXCREHI1OTq2zO1fxMvXOBG+XfvNhvh4ZK?=
 =?us-ascii?Q?4p/CL1jbaxw/jl/h5exDKSxcoEN1ociehJrnAhidzLLjwtGrd5S6LKprNdC7?=
 =?us-ascii?Q?luJkoZS4ldVW4Ashcr8nFArldEqKk1HKkHG83zfUddNBADXdhyx0fJIRe+SM?=
 =?us-ascii?Q?i5exgaFe5MJ47jxFABZ34S191gYOl3fH5BTru+JoTyiE/uejQn0chdEzEf9S?=
 =?us-ascii?Q?T3QwQVAo3BU0auSTmW0y9AncxJgDDWbVhXH9HzZ0Pep3S+pflHWtCiUbWeLN?=
 =?us-ascii?Q?sMlR9KerZewBan2okkuuwxy9YSK6oEf8AKdYcjzmOcUC0xtdxfUqccpvm/Hk?=
 =?us-ascii?Q?w4buL96bhEXkW2Nn8/MUKw6XUwAH1zB+t3wunFBrB0nQSMdT1y+Iqz7zRvo8?=
 =?us-ascii?Q?KgwvdpfeT6LF36j1iop4hkXr0rMDoAGiEPSvHHj0a5dXt4uPlpb9HhuF7kwb?=
 =?us-ascii?Q?diDGSr1w1wQwtp4lqztIL7Kv6M5rlJrllfYNLsZK/wsi7D44PIOhQ6Ci/qj1?=
 =?us-ascii?Q?5tM+3HGoNGeiET64fhKDGQgQNZK+rpQTdfEw2KfitCRK0Ap8HuW/GKHvYWa1?=
 =?us-ascii?Q?gxNaUxq0zDwy4/C7L+Gd56YIxLvACX6nbJigVi0jSMElvmiC1ih2KBNp6AQP?=
 =?us-ascii?Q?laLw2wr854X5ptk1bSY4MyfpZgshGRMycqhZtqy47gJkwZc8DGmpCZHzweIE?=
 =?us-ascii?Q?ArSuxhQ9ucx6vv3YczkiNf81GP9K0XJnDatkITwn/T0/zpPxia4AHNwO5Nuq?=
 =?us-ascii?Q?8CvfFLh3sWZuDJRjoziZUu/qsJd8Z9oQYvmO/vA0WZmwjRyGEaVhUt4Ba6FD?=
 =?us-ascii?Q?6w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dcef75fc-7175-4f51-04e4-08da97f4c254
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Sep 2022 15:04:31.6165 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HKkQDvWjKZcd2u+KmT6Inxzrwqq7yNUgzptN1Lx3AjPE0brWjxSDsnS7ZFV7AHEAxdbcPqaQvlbOpPaSf/fX7td1+tPfEVWyr3ZbOkskKJg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7170
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgRnVy?=
 =?utf-8?q?ther_multi-gt_handling_=28rev2=29?=
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

On Fri, Sep 16, 2022 at 06:38:28AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: Further multi-gt handling (rev2)
> URL   : https://patchwork.freedesktop.org/series/108577/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_12143_full -> Patchwork_108577v2_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.
> 

Fixed up the issues reported by checkpatch (whitespace and an
author != sob mismatch) and applied to drm-intel-gt-next.  Thanks Andi,
Janusz, and Daniele for the reviews.


Matt

>   
> 
> Participating hosts (10 -> 11)
> ------------------------------
> 
>   Additional (1): shard-rkl 
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_108577v2_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-iclb:         [PASS][1] -> [TIMEOUT][2] ([i915#3070])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12143/shard-iclb3/igt@gem_eio@unwedge-stress.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v2/shard-iclb4/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_balancer@parallel-bb-first:
>     - shard-iclb:         [PASS][3] -> [SKIP][4] ([i915#4525]) +1 similar issue
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12143/shard-iclb2/igt@gem_exec_balancer@parallel-bb-first.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v2/shard-iclb6/igt@gem_exec_balancer@parallel-bb-first.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-tglb:         [PASS][5] -> [FAIL][6] ([i915#2842]) +1 similar issue
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12143/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v2/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-apl:          [PASS][7] -> [FAIL][8] ([i915#2842])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12143/shard-apl4/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v2/shard-apl3/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-glk:          [PASS][9] -> [FAIL][10] ([i915#2842]) +1 similar issue
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12143/shard-glk2/igt@gem_exec_fair@basic-none@vcs0.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v2/shard-glk3/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][11] ([i915#2842])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v2/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs1.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-iclb:         [PASS][12] -> [FAIL][13] ([i915#2842])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12143/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v2/shard-iclb3/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_lmem_swapping@verify-random-ccs:
>     - shard-apl:          NOTRUN -> [SKIP][14] ([fdo#109271] / [i915#4613])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v2/shard-apl7/igt@gem_lmem_swapping@verify-random-ccs.html
> 
>   * igt@gem_softpin@evict-single-offset:
>     - shard-apl:          NOTRUN -> [FAIL][15] ([i915#4171])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v2/shard-apl2/igt@gem_softpin@evict-single-offset.html
> 
>   * igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180:
>     - shard-iclb:         [PASS][16] -> [DMESG-WARN][17] ([i915#402])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12143/shard-iclb6/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v2/shard-iclb2/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180.html
> 
>   * igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][18] ([fdo#109271] / [i915#3886])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v2/shard-apl7/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_chamelium@dp-audio-edid:
>     - shard-apl:          NOTRUN -> [SKIP][19] ([fdo#109271] / [fdo#111827]) +1 similar issue
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v2/shard-apl7/igt@kms_chamelium@dp-audio-edid.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2:
>     - shard-glk:          [PASS][20] -> [FAIL][21] ([i915#79])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12143/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v2/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][22] ([i915#2587] / [i915#2672]) +1 similar issue
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v2/shard-iclb1/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][23] ([i915#2672]) +4 similar issues
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][24] ([i915#2672] / [i915#3555])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v2/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-cpu:
>     - shard-apl:          NOTRUN -> [SKIP][25] ([fdo#109271]) +41 similar issues
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v2/shard-apl7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
>     - shard-snb:          [PASS][26] -> [SKIP][27] ([fdo#109271])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12143/shard-snb7/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v2/shard-snb5/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
> 
>   * igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1:
>     - shard-iclb:         [PASS][28] -> [SKIP][29] ([i915#5176]) +2 similar issues
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12143/shard-iclb4/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v2/shard-iclb2/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1.html
> 
>   * igt@kms_psr@psr2_sprite_plane_onoff:
>     - shard-iclb:         [PASS][30] -> [SKIP][31] ([fdo#109441]) +1 similar issue
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12143/shard-iclb2/igt@kms_psr@psr2_sprite_plane_onoff.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v2/shard-iclb3/igt@kms_psr@psr2_sprite_plane_onoff.html
> 
>   * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>     - shard-iclb:         [PASS][32] -> [SKIP][33] ([i915#5519])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12143/shard-iclb3/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v2/shard-iclb4/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@feature_discovery@psr2:
>     - shard-iclb:         [SKIP][34] ([i915#658]) -> [PASS][35]
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12143/shard-iclb4/igt@feature_discovery@psr2.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v2/shard-iclb2/igt@feature_discovery@psr2.html
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - shard-tglb:         [FAIL][36] ([i915#6268]) -> [PASS][37]
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12143/shard-tglb8/igt@gem_ctx_exec@basic-nohangcheck.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v2/shard-tglb2/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@gem_exec_balancer@parallel-keep-in-fence:
>     - shard-iclb:         [SKIP][38] ([i915#4525]) -> [PASS][39]
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12143/shard-iclb6/igt@gem_exec_balancer@parallel-keep-in-fence.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v2/shard-iclb2/igt@gem_exec_balancer@parallel-keep-in-fence.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [FAIL][40] ([i915#2842]) -> [PASS][41]
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12143/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v2/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:
>     - {shard-tglu}:       [FAIL][42] ([i915#3825]) -> [PASS][43]
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12143/shard-tglu-4/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v2/shard-tglu-1/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html
> 
>   * igt@i915_pm_rps@engine-order:
>     - shard-apl:          [FAIL][44] ([i915#6537]) -> [PASS][45]
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12143/shard-apl8/igt@i915_pm_rps@engine-order.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v2/shard-apl8/igt@i915_pm_rps@engine-order.html
> 
>   * igt@i915_suspend@fence-restore-tiled2untiled:
>     - shard-apl:          [DMESG-WARN][46] ([i915#180]) -> [PASS][47] +2 similar issues
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12143/shard-apl1/igt@i915_suspend@fence-restore-tiled2untiled.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v2/shard-apl7/igt@i915_suspend@fence-restore-tiled2untiled.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels@pipe-a-dp-1:
>     - shard-apl:          [FAIL][48] -> [PASS][49]
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12143/shard-apl2/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels@pipe-a-dp-1.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v2/shard-apl3/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels@pipe-a-dp-1.html
> 
>   * igt@kms_cursor_edge_walk@right-edge@pipe-a-dp-1-256x256:
>     - shard-apl:          [DMESG-WARN][50] ([i915#62]) -> [PASS][51] +20 similar issues
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12143/shard-apl2/igt@kms_cursor_edge_walk@right-edge@pipe-a-dp-1-256x256.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v2/shard-apl3/igt@kms_cursor_edge_walk@right-edge@pipe-a-dp-1-256x256.html
> 
>   * igt@kms_flip@plain-flip-interruptible@a-dp1:
>     - shard-apl:          [DMESG-WARN][52] ([i915#1982] / [i915#62]) -> [PASS][53]
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12143/shard-apl2/igt@kms_flip@plain-flip-interruptible@a-dp1.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v2/shard-apl3/igt@kms_flip@plain-flip-interruptible@a-dp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render:
>     - shard-apl:          [DMESG-FAIL][54] ([i915#62]) -> [PASS][55]
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12143/shard-apl2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v2/shard-apl3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render.html
> 
>   * igt@kms_plane_lowres@tiling-y@pipe-c-hdmi-a-1:
>     - shard-glk:          [FAIL][56] ([i915#1888]) -> [PASS][57]
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12143/shard-glk3/igt@kms_plane_lowres@tiling-y@pipe-c-hdmi-a-1.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v2/shard-glk3/igt@kms_plane_lowres@tiling-y@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1:
>     - shard-iclb:         [SKIP][58] ([i915#5235]) -> [PASS][59] +2 similar issues
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12143/shard-iclb2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v2/shard-iclb6/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html
> 
>   * igt@kms_psr@psr2_cursor_blt:
>     - shard-iclb:         [SKIP][60] ([fdo#109441]) -> [PASS][61] +3 similar issues
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12143/shard-iclb4/igt@kms_psr@psr2_cursor_blt.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v2/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_balancer@parallel-ordering:
>     - shard-iclb:         [FAIL][62] ([i915#6117]) -> [SKIP][63] ([i915#4525])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12143/shard-iclb2/igt@gem_exec_balancer@parallel-ordering.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v2/shard-iclb3/igt@gem_exec_balancer@parallel-ordering.html
> 
>   * igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-2:
>     - shard-glk:          [DMESG-FAIL][64] ([i915#118] / [i915#1888]) -> [DMESG-WARN][65] ([i915#118] / [i915#1888])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12143/shard-glk3/igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-2.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v2/shard-glk3/igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:
>     - shard-iclb:         [SKIP][66] ([i915#658]) -> [SKIP][67] ([i915#2920])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12143/shard-iclb6/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v2/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
>     - shard-iclb:         [SKIP][68] ([i915#2920]) -> [SKIP][69] ([i915#658])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12143/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v2/shard-iclb3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-iclb:         [FAIL][70] ([i915#5939]) -> [SKIP][71] ([fdo#109642] / [fdo#111068] / [i915#658])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12143/shard-iclb2/igt@kms_psr2_su@page_flip-nv12.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v2/shard-iclb6/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@runner@aborted:
>     - shard-apl:          ([FAIL][72], [FAIL][73], [FAIL][74], [FAIL][75]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#6599]) -> ([FAIL][76], [FAIL][77]) ([i915#3002] / [i915#4312] / [i915#5257] / [i915#6599])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12143/shard-apl1/igt@runner@aborted.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12143/shard-apl8/igt@runner@aborted.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12143/shard-apl4/igt@runner@aborted.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12143/shard-apl1/igt@runner@aborted.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v2/shard-apl1/igt@runner@aborted.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v2/shard-apl4/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3070]: https://gitlab.freedesktop.org/drm/intel/issues/3070
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
>   [i915#3825]: https://gitlab.freedesktop.org/drm/intel/issues/3825
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4171]: https://gitlab.freedesktop.org/drm/intel/issues/4171
>   [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4877]: https://gitlab.freedesktop.org/drm/intel/issues/4877
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
>   [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
>   [i915#5939]: https://gitlab.freedesktop.org/drm/intel/issues/5939
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
>   [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
>   [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
>   [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>   [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>   [i915#6537]: https://gitlab.freedesktop.org/drm/intel/issues/6537
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6599]: https://gitlab.freedesktop.org/drm/intel/issues/6599
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_12143 -> Patchwork_108577v2
> 
>   CI-20190529: 20190529
>   CI_DRM_12143: bb4f6b2281b11b009210f62eecd291f7b75c1e85 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6656: 24100c4e181c50e3678aeca9c641b8a43555ad73 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_108577v2: bb4f6b2281b11b009210f62eecd291f7b75c1e85 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108577v2/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
