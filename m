Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E9162681888
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jan 2023 19:19:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F004910E0D9;
	Mon, 30 Jan 2023 18:19:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EB7910E0D9
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Jan 2023 18:19:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675102743; x=1706638743;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=+0ZvMwzqiruZxgAYIXmEELZKul3SHKGxMklJ+SzTEPo=;
 b=Y3MdQwOetqJKp0JTeEL7aDwfJ6blEAVY1a0RnBUZRXOuWSYblkpBzMTQ
 ejN91EpdcebU7fewUcikd2fCmvT8oAzbl+kxmXhgU2icwY1fBu3+d11XD
 zeDZ/0/20R5pLFJ81pBwKQY695qEY2kJ3NPjrsZUGngNlTIKUYHM/jYwb
 sjIumpLD/hoywdKqnwCfoQ1NErx+PKbozoG2sEpXwYV/P4ipmMx3kMyLW
 PaRpeWZXjYlY2TSapB49iY84/UCY6b2m+tvvgZz53qKOxsYEWL5PXFLKO
 +dWzPwS+vqJquMdXCpprGGbJS3g8cteFnpMcJNsKQz+sZ3m7us+MAf7+n A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="326297181"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; d="scan'208";a="326297181"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 10:19:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="641641610"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; d="scan'208";a="641641610"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 30 Jan 2023 10:19:00 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 30 Jan 2023 10:19:00 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 30 Jan 2023 10:18:59 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 30 Jan 2023 10:18:59 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.170)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 30 Jan 2023 10:18:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bJDZON871n991RFkBdDxDc44HYEWvW1SW77KJLwslbC7wzmVclGFqq7afSyanEq2vp09byWrXi/RDuN412MbjlcFEmNLQmEPoKd7p0jNpKOMMkkZ0JyE//qxFJ2zy/l8YO3FsO2uOxLU6Ivr4OZVOPoHxzKmMSxhRrlfRQuShYQ9KpxC+oMV8WRv4dyzd/CfVlizYjC3Zs1lzV8vIPjfyZDpyp5N3Sust6hZJzctJkjx/tCMRQlxGYAM179ITiU5TWAXD/c6D7bnJ1iqYzVKf5y86vmBz4/lMjikmfHa5RL6va1KZk2KQYNatmfELWEiA3Rbo6/N/K7Rm5FWMjwfUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0Pfgb73cewCdbBFPkPbCtsHpf5ssM5LhOnS87pRBUng=;
 b=RPdvGqGapBXRx4c5xzMaiceyw1c9s3qtQAIp9LTUwtNjygCmNmDVeeE1J/TeoZRvsOedYdEcMidUQVD0Nss2qyow9OD/u5qilDxXmsEV/2Cm2dyCVqRj+JeEnXPPhWZ4XS2f0tt9aZ5krG5JHNRZChC43bOx1OpknFgaClcmH2eJ/PbstEDj5HGdjsRc9gNOxQid7WfFrye1XfPzSKVJO41YptkFKKGIC0vkDfK7Jnfo64Zmej6xIvvzCacSNmR0Hsu6PKwo41qvO/TOf/ePUd+rgFZIkVgtITv442UNsPr+B4dWZ972p1V9SnumK3apqJGzudR0UblhSaDGQ5Am/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 IA0PR11MB7934.namprd11.prod.outlook.com (2603:10b6:208:40d::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.36; Mon, 30 Jan
 2023 18:18:55 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::68d0:f8e0:eaf3:982e]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::68d0:f8e0:eaf3:982e%5]) with mapi id 15.20.6043.036; Mon, 30 Jan 2023
 18:18:55 +0000
Date: Mon, 30 Jan 2023 10:18:52 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <Y9gKDLnam+tcBKas@mdroper-desk1.amr.corp.intel.com>
References: <20230127224313.4042331-1-matthew.d.roper@intel.com>
 <167488731583.4072.18151061989911541966@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <167488731583.4072.18151061989911541966@emeril.freedesktop.org>
X-ClientProxiedBy: BYAPR21CA0010.namprd21.prod.outlook.com
 (2603:10b6:a03:114::20) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|IA0PR11MB7934:EE_
X-MS-Office365-Filtering-Correlation-Id: c1d67f1f-bb00-42df-8d62-08db02ee7282
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OGCAPioeS3tkmwHSc/ZByR5m7OgrLCGkGBMPGwZREOli+VX9B/YYd0hOZj6tWy0pbpY/wbymZnC7Kv1rOSbch4WnZOkEACajxI/HCYN2KnWgv5V/ULXSN4SRx+y5DMeDRRQJN5G/AXSu1+m7mBwCYcoRPjnoAPYfuE/vqM1d+lLZhkN1J14U4wdv62+/4Deh/J6xPn/4NGS+SwahBSha2OFx33N5UzwR0gv8BVIkc02aJF77QHh3/0xrtv3xSmHe/dE9k9TdJqpivF5ryMVpywH+w1DoSPUSXoTI+jlM2jrhHiO+fnX3fGCJ7OLSg0inZDYkgzy3SIMUxqY1UpfWT+Wah3PRSd6iigqy5MUl5z97TTwhHCsDMmEizoOUpsxYlW9IvJS5IjerEm38f33RD/rQLK4Gybc+v24z9g6TzCrhVHorrPl2IrBnEsU87i7+1BBbl+LbzZxKqLAJbsZljESr1pDwVwDIvRCD45qp65tBy2SFqS07gSjsXUJgsp11EyTi0WvIwCMFS78v1Enc3FRM6cUY7GAWzgjolygYjcyrGslQRu0hdjHmViidVzEm2ppJAsl69ffNyaecv+r46JAy4LN02U6dllkqGg3ZsmlOeuAQLy3hS2ti9lBFxLAMUyqZ9EfWd/YdH/pMO60VrP/CvBo+9HAcjitpn9JNBZAn0NLE9W+JRpiUNM27sPVPtEhY8ICdFkvg+QpRO6Uy3V5TSQ65Bf2RWf/6wjZxFTnNqkKDF55WlckINXnp3LOE
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(136003)(39860400002)(366004)(376002)(396003)(451199018)(30864003)(5660300002)(8936002)(41300700001)(66476007)(66556008)(66946007)(478600001)(316002)(6916009)(2906002)(6486002)(82960400001)(966005)(38100700002)(86362001)(83380400001)(26005)(6512007)(186003)(6506007)(6666004)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Iraod317akl0oJ9iIJ5SI6zYO+yYfG8T94NFemuQoXFmWJ9srVnLBGWZ2knZ?=
 =?us-ascii?Q?KdssoLK/sUP2EqzXSwVPKtiUtrO7zCNxlriileMdbJKdAE9s4sIuoSEZpYry?=
 =?us-ascii?Q?HNh9oThzD3iKG99naby0CX2zGiPHCBPlFiyE9zW7e9NcgTapH7XHukltdJe3?=
 =?us-ascii?Q?2gTxXUaeRUSUv9j+NLuLHZBGBTnFyaBFFe0IHPsvh+jGnpchrzyzmCEilyqW?=
 =?us-ascii?Q?wBWEEy1BL0ZzMmTBggsTxU013HUdt/H/P5GBfQsiwAREPPsUGBbj8ee2gBUk?=
 =?us-ascii?Q?TqrGH64Y9Tny2gqTaDTLlEqX2Fz3DJqTLw4fD0ryMPW8xX94eQAhuFdzTxuT?=
 =?us-ascii?Q?Y98SM5YEnRgVGcmXCqIg2owo5/ufQtqAB6uvgD4+vLIwCY8yz7SiUKjM5azX?=
 =?us-ascii?Q?FPQBxCCTOK+YDaThfIUZH8wgX0QPl4xDtwQGrS/6i+R9O3s/yPhcNSUP6YNt?=
 =?us-ascii?Q?QTUXiNbSKq74+K20QB9VX4NIZq3uqMBCk4PoAck7z0Q0MGK4VDE2ic+6A4HE?=
 =?us-ascii?Q?7Tnn9/GL1ssUh4prvoBqAY/n283OHSrMvvJ/xW2u2GYPt7kCtldfel4h0Lu7?=
 =?us-ascii?Q?vTWQyecsxMtmK8NPUCpwhxh6zmg+lPcLKjnBYm3EPsZzyuKGv8MbHooMVTtl?=
 =?us-ascii?Q?RETgxfKVFBWu4YR43LwhUECEGmBS2SFrMY8uc4ITylRlg4jYM3+JwxxmJcwa?=
 =?us-ascii?Q?7wjTnBdT39Y2/tQF4e25INtwCF+KAQo1C21EPK8uTv6N8j/lBVQXD/CuYIwH?=
 =?us-ascii?Q?jq9ILwUI835cHDiygVMHabRv7Y3iP5Z4EGQu9DPYfGXH7qN9nRYbZqBqewsG?=
 =?us-ascii?Q?UwuaHUqCl+eh0mLDKYigTgt1GnHV9nMTSdJ96gDlRlyU+gUxz4vNI1Dh2lKz?=
 =?us-ascii?Q?9jAnL07vet0E6wKWZ2ncqulRtOYK/xMWs+bbAcUJWffwdjV44cMYMMI8UtS1?=
 =?us-ascii?Q?KoW8+8CJB4TBFOqebxQ1ViDJR7BgXKTa8Cq1rsjTOK6DZFuqDYYewLk4QDgA?=
 =?us-ascii?Q?8qDvkCdXUCT9TFnskXB1NorJmcVESNlEQSnoCtdiJzbdDOFWFeQykJ9mlt38?=
 =?us-ascii?Q?4IVxygr9OFd32cczpJu6h2WI/gL4D7VyndjBN0pZ5Vt7KDqXVeZxT3W5PLzo?=
 =?us-ascii?Q?lcWZQ85OcdZt8ghDzLDM1SLMqe09L65UptLzSG3zwVCq8gZDsuNCAKfk6m5P?=
 =?us-ascii?Q?sNgjC+jm9X5o1PXZPzpZzfQz0j37yKikV6MQP0srTkeDEszCt3XZ8ILsgf8B?=
 =?us-ascii?Q?F38Kbfnygdh9WxpwO3OBaMwbQUcCNtZzyeaN5l72IVEX7/qvDPqNFgxyMI+K?=
 =?us-ascii?Q?PIe1+vTORcQHj+/0z49zFR5PndFSbq7Wk/pJtJsgr5f7CWWAZTO7i0JH27RZ?=
 =?us-ascii?Q?F2/czBTVNsH152b8CeMCsg0FOyj04mbYw96b6ot3RbVQyWrGqeq6V0DVQpkd?=
 =?us-ascii?Q?GSTzgAk4tzHmSrWN5HyR6gvE886uKCAOYvMDM+prRwnBRc4kyAAbY22dbTyX?=
 =?us-ascii?Q?1eFs03QgBUk7nc1eCEineicUAnW9kA7pmcNjvcHBSscLRkDnvxXUDGd+z93h?=
 =?us-ascii?Q?EdEszXNeWWmRBpqVtUqkhz4rJFg2uS5rondTxoLoo189CucSCfURQztal3OK?=
 =?us-ascii?Q?hg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c1d67f1f-bb00-42df-8d62-08db02ee7282
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2023 18:18:55.2500 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7Iw2eFotiW39v1Em0WQWxkk7wPkf09Picbfg0Op5raP1Kz1Ccgo9O8UD2psO4OGxOSuz2inWGvy7sTkoYF9hM1nU3e9UVzgPKOgPG77aNx4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7934
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgRHJv?=
 =?utf-8?q?p_TGL/DG1_workarounds_for_pre-prod_steppings?=
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

On Sat, Jan 28, 2023 at 06:28:35AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: Drop TGL/DG1 workarounds for pre-prod steppings
> URL   : https://patchwork.freedesktop.org/series/113453/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_12658_full -> Patchwork_113453v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.

Applied to di-next.  Thanks Rodrigo for the reviews.


Matt

> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113453v1/index.html
> 
> Participating hosts (10 -> 10)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_113453v1_full:
> 
> ### IGT changes ###
> 
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@gem_exec_suspend@basic-s3-devices@smem:
>     - {shard-rkl}:        [PASS][1] -> [FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12658/shard-rkl-6/igt@gem_exec_suspend@basic-s3-devices@smem.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113453v1/shard-rkl-4/igt@gem_exec_suspend@basic-s3-devices@smem.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_113453v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-glk:          [PASS][3] -> [FAIL][4] ([i915#2842])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12658/shard-glk3/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113453v1/shard-glk5/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@perf@stress-open-close:
>     - shard-glk:          [PASS][5] -> [ABORT][6] ([i915#5213])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12658/shard-glk5/igt@perf@stress-open-close.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113453v1/shard-glk9/igt@perf@stress-open-close.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@drm_fdinfo@idle@rcs0:
>     - {shard-rkl}:        [FAIL][7] ([i915#7742]) -> [PASS][8]
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12658/shard-rkl-4/igt@drm_fdinfo@idle@rcs0.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113453v1/shard-rkl-6/igt@drm_fdinfo@idle@rcs0.html
> 
>   * igt@drm_read@empty-block:
>     - {shard-rkl}:        [SKIP][9] ([i915#4098]) -> [PASS][10] +2 similar issues
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12658/shard-rkl-3/igt@drm_read@empty-block.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113453v1/shard-rkl-6/igt@drm_read@empty-block.html
> 
>   * igt@fbdev@unaligned-read:
>     - {shard-rkl}:        [SKIP][11] ([i915#2582]) -> [PASS][12]
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12658/shard-rkl-2/igt@fbdev@unaligned-read.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113453v1/shard-rkl-6/igt@fbdev@unaligned-read.html
> 
>   * igt@gem_eio@in-flight-suspend:
>     - {shard-rkl}:        [FAIL][13] ([fdo#103375]) -> [PASS][14]
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12658/shard-rkl-3/igt@gem_eio@in-flight-suspend.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113453v1/shard-rkl-6/igt@gem_eio@in-flight-suspend.html
> 
>   * igt@gem_exec_capture@pi@vcs0:
>     - {shard-rkl}:        [ABORT][15] -> [PASS][16]
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12658/shard-rkl-6/igt@gem_exec_capture@pi@vcs0.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113453v1/shard-rkl-5/igt@gem_exec_capture@pi@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - {shard-tglu}:       [FAIL][17] ([i915#2842]) -> [PASS][18]
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12658/shard-tglu-5/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113453v1/shard-tglu-7/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
>     - {shard-rkl}:        [SKIP][19] ([i915#3281]) -> [PASS][20] +4 similar issues
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12658/shard-rkl-3/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113453v1/shard-rkl-5/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
> 
>   * igt@gem_mmap_wc@set-cache-level:
>     - {shard-rkl}:        [SKIP][21] ([i915#1850]) -> [PASS][22]
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12658/shard-rkl-4/igt@gem_mmap_wc@set-cache-level.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113453v1/shard-rkl-6/igt@gem_mmap_wc@set-cache-level.html
> 
>   * igt@gem_pwrite@basic-self:
>     - {shard-rkl}:        [SKIP][23] ([i915#3282]) -> [PASS][24] +4 similar issues
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12658/shard-rkl-3/igt@gem_pwrite@basic-self.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113453v1/shard-rkl-5/igt@gem_pwrite@basic-self.html
> 
>   * igt@gem_sync@basic-all:
>     - shard-glk:          [DMESG-WARN][25] ([i915#118]) -> [PASS][26]
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12658/shard-glk4/igt@gem_sync@basic-all.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113453v1/shard-glk1/igt@gem_sync@basic-all.html
> 
>   * igt@gen9_exec_parse@batch-invalid-length:
>     - {shard-rkl}:        [SKIP][27] ([i915#2527]) -> [PASS][28]
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12658/shard-rkl-3/igt@gen9_exec_parse@batch-invalid-length.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113453v1/shard-rkl-5/igt@gen9_exec_parse@batch-invalid-length.html
> 
>   * igt@i915_pm_dc@dc9-dpms:
>     - {shard-rkl}:        [SKIP][29] ([i915#3361]) -> [PASS][30]
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12658/shard-rkl-5/igt@i915_pm_dc@dc9-dpms.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113453v1/shard-rkl-2/igt@i915_pm_dc@dc9-dpms.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
>     - {shard-rkl}:        [WARN][31] ([i915#2681]) -> [PASS][32]
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12658/shard-rkl-5/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113453v1/shard-rkl-2/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
> 
>   * igt@i915_pm_rpm@i2c:
>     - {shard-rkl}:        [SKIP][33] ([fdo#109308]) -> [PASS][34]
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12658/shard-rkl-3/igt@i915_pm_rpm@i2c.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113453v1/shard-rkl-6/igt@i915_pm_rpm@i2c.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - {shard-rkl}:        [SKIP][35] ([i915#1845] / [i915#4098]) -> [PASS][36] +28 similar issues
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12658/shard-rkl-3/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113453v1/shard-rkl-6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2:
>     - shard-glk:          [FAIL][37] ([i915#79]) -> [PASS][38]
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12658/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113453v1/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render:
>     - {shard-rkl}:        [SKIP][39] ([i915#1849] / [i915#4098]) -> [PASS][40] +21 similar issues
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12658/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113453v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render.html
> 
>   * igt@kms_plane@plane-position-hole@pipe-b-planes:
>     - {shard-rkl}:        [SKIP][41] ([i915#1849]) -> [PASS][42] +2 similar issues
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12658/shard-rkl-4/igt@kms_plane@plane-position-hole@pipe-b-planes.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113453v1/shard-rkl-6/igt@kms_plane@plane-position-hole@pipe-b-planes.html
> 
>   * igt@kms_psr@no_drrs:
>     - {shard-rkl}:        [SKIP][43] ([i915#1072]) -> [PASS][44] +1 similar issue
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12658/shard-rkl-4/igt@kms_psr@no_drrs.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113453v1/shard-rkl-6/igt@kms_psr@no_drrs.html
> 
>   * igt@kms_universal_plane@universal-plane-pipe-a-sanity:
>     - {shard-rkl}:        [SKIP][45] ([i915#1845] / [i915#4070] / [i915#4098]) -> [PASS][46]
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12658/shard-rkl-2/igt@kms_universal_plane@universal-plane-pipe-a-sanity.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113453v1/shard-rkl-6/igt@kms_universal_plane@universal-plane-pipe-a-sanity.html
> 
>   * igt@perf@mi-rpc:
>     - {shard-rkl}:        [SKIP][47] ([i915#2434]) -> [PASS][48]
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12658/shard-rkl-3/igt@perf@mi-rpc.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113453v1/shard-rkl-5/igt@perf@mi-rpc.html
> 
>   * igt@perf_pmu@most-busy-idle-check-all@rcs0:
>     - {shard-rkl}:        [FAIL][49] ([i915#4349]) -> [PASS][50]
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12658/shard-rkl-4/igt@perf_pmu@most-busy-idle-check-all@rcs0.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113453v1/shard-rkl-2/igt@perf_pmu@most-busy-idle-check-all@rcs0.html
> 
>   * igt@prime_vgem@basic-write:
>     - {shard-rkl}:        [SKIP][51] ([fdo#109295] / [i915#3291] / [i915#3708]) -> [PASS][52]
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12658/shard-rkl-3/igt@prime_vgem@basic-write.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113453v1/shard-rkl-5/igt@prime_vgem@basic-write.html
> 
>   * igt@prime_vgem@coherency-gtt:
>     - {shard-rkl}:        [SKIP][53] ([fdo#109295] / [fdo#111656] / [i915#3708]) -> [PASS][54]
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12658/shard-rkl-3/igt@prime_vgem@coherency-gtt.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113453v1/shard-rkl-5/igt@prime_vgem@coherency-gtt.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
>   [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
>   [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
>   [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
>   [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
>   [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
>   [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110542]: https://bugs.freedesktop.org/show_bug.cgi?id=110542
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
>   [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
>   [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1850]: https://gitlab.freedesktop.org/drm/intel/issues/1850
>   [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
>   [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
>   [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
>   [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
>   [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
>   [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
>   [i915#3528]: https://gitlab.freedesktop.org/drm/intel/issues/3528
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>   [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3952]: https://gitlab.freedesktop.org/drm/intel/issues/3952
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#3966]: https://gitlab.freedesktop.org/drm/intel/issues/3966
>   [i915#4036]: https://gitlab.freedesktop.org/drm/intel/issues/4036
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
>   [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
>   [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4859]: https://gitlab.freedesktop.org/drm/intel/issues/4859
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5213]: https://gitlab.freedesktop.org/drm/intel/issues/5213
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
>   [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
>   [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
>   [i915#6230]: https://gitlab.freedesktop.org/drm/intel/issues/6230
>   [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
>   [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>   [i915#6344]: https://gitlab.freedesktop.org/drm/intel/issues/6344
>   [i915#6355]: https://gitlab.freedesktop.org/drm/intel/issues/6355
>   [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
>   [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
>   [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6590]: https://gitlab.freedesktop.org/drm/intel/issues/6590
>   [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
>   [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
>   [i915#7037]: https://gitlab.freedesktop.org/drm/intel/issues/7037
>   [i915#7052]: https://gitlab.freedesktop.org/drm/intel/issues/7052
>   [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
>   [i915#7128]: https://gitlab.freedesktop.org/drm/intel/issues/7128
>   [i915#7178]: https://gitlab.freedesktop.org/drm/intel/issues/7178
>   [i915#7294]: https://gitlab.freedesktop.org/drm/intel/issues/7294
>   [i915#7456]: https://gitlab.freedesktop.org/drm/intel/issues/7456
>   [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
>   [i915#7582]: https://gitlab.freedesktop.org/drm/intel/issues/7582
>   [i915#7651]: https://gitlab.freedesktop.org/drm/intel/issues/7651
>   [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
>   [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
>   [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
>   [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>   [i915#7949]: https://gitlab.freedesktop.org/drm/intel/issues/7949
>   [i915#7957]: https://gitlab.freedesktop.org/drm/intel/issues/7957
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_12658 -> Patchwork_113453v1
> 
>   CI-20190529: 20190529
>   CI_DRM_12658: a9e72f4e0baf2e3e306da0063f98099044d85285 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7141: a978df7912acda18eada1b1d2ae4b438ed3e940b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_113453v1: a9e72f4e0baf2e3e306da0063f98099044d85285 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113453v1/index.html

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
