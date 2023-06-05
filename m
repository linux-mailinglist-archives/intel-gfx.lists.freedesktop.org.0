Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E982723381
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jun 2023 01:05:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95E3E10E0C3;
	Mon,  5 Jun 2023 23:05:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11E1310E0C3
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Jun 2023 23:05:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686006303; x=1717542303;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=LYXY3g395xeBYvJJsc/gp6oRV+KwF1mVB+dww+NnP/s=;
 b=gRSCa6p1kjR3mqChaKLkHJDlzN4Mq8fSMzoS4flUY25D1Ib+SJjyUtoF
 pLdLGgM2kjWJd6w2siywHbAGnTa7BglXJv8mrTm4Wi2oPe32PQlr+nS+u
 wXfUQGT9S1VkVC2KNSfSlwarZaSS+LONInfHe5GFjKzFW0gifiPBeBWyt
 fiGKwDWQo24zASvfyleKpbINUkZfo7tOsXWrYi/bSIiGTkhlOuqm1o10r
 HzwrRMzhYNC41/YI8nEHwqdc6GGFT8AD/fOv2uVEj32yK8/2+YKc3fhHd
 TznGVJZ/NGploGNbzU694bjY8OgR+NIfnq8t3Bl892/I/4ueWKLlPqY+b Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="359820616"
X-IronPort-AV: E=Sophos;i="6.00,218,1681196400"; d="scan'208";a="359820616"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 16:05:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="711974073"
X-IronPort-AV: E=Sophos;i="6.00,218,1681196400"; d="scan'208";a="711974073"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 05 Jun 2023 16:05:01 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 5 Jun 2023 16:05:00 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 5 Jun 2023 16:05:00 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 5 Jun 2023 16:05:00 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 5 Jun 2023 16:04:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZYnONgH8mQCorhR0Nwb0Q2uWQ833vGyEsmnO2D6xcOsNZixs1d0zvcqpPd1or161JadKT//ef5JMOh+wYTR1IGlZIm+9NSEWhpIdU+UIzHxoF5s9abLSwG+iuZYMZfwnH09/fj3IXyJ4FmkpKN8O1Jb204kzZwQvZZY/E2opzle+LmrKevh7Fqcz2lZ2w5bRPv3XA2WJmf+TTI3ACnBJJYtlDngMoGM4RI5Ax2I1fLQYid+DgsJDQTbK96pPxqCLk9++VzXypT//+6CVF3Q1kIAf8J6qHjpQMxbo/am3ywapccn2d1gX/w2wjg1CkNzJFUZJJK3G/PkyesL34DxYJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nUwMoKhq1dTflQl+8whQGBYIuw9uTbkmfcfOh9GSrXA=;
 b=BzUULzU6rVTdYnow0Vgpwi2trImCNFjjf/FE6rDPoex1ELBgYhEOjzEqjJof7R2zA5NrADp3qwigQFjr+DNXSmbr4180pJZ9WuwXx6+W4LX55Y/LD2Snu8J+NNw2LOcPMBT/ERdIaaDq+peod52rgHIiqz1FIf7udWQLItXBdzRr2uwoR7S/hNjm7NPK2d/2IrppMG+tquktCbmSB2AwgBDhnw2ZC4e7BrBh6Upvgmcmc6TsdplR6538+BbXl/tzd5sQsl/+/nOkxHbK8QEKSPQABuKJntU2W8a/0KXfL9uR9eq90yaaRmgabwkBZh0sqSyc8XmPXEKwDUHL6cUD8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 CY8PR11MB7340.namprd11.prod.outlook.com (2603:10b6:930:84::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6455.32; Mon, 5 Jun 2023 23:04:52 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::9f98:8f3c:a608:8396]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::9f98:8f3c:a608:8396%3]) with mapi id 15.20.6455.030; Mon, 5 Jun 2023
 23:04:52 +0000
Date: Mon, 5 Jun 2023 16:04:49 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <20230605230449.GU6953@mdroper-desk1.amr.corp.intel.com>
References: <20230602181450.1151368-1-matthew.d.roper@intel.com>
 <168595649800.24736.1369021283823065256@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <168595649800.24736.1369021283823065256@emeril.freedesktop.org>
X-ClientProxiedBy: BY5PR04CA0020.namprd04.prod.outlook.com
 (2603:10b6:a03:1d0::30) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|CY8PR11MB7340:EE_
X-MS-Office365-Filtering-Correlation-Id: 1b17cad4-0b21-4f9e-b2c1-08db66194504
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5iQxX6x7m65+eYeEbwpj7xBG/e1+a7vccy4FwfSfaEdQo48lyUwhCLbhe3gRESgU8BkeqbEFvcUPJYgBRi6+B+lEvKWzn6vCFa92/yHrp8fv+MEduiFs6pk9BcK0YsT27mhS5oXvyPYkc+X1nfGtbtwtLLMZhh1Y8zti8XS3JVWx/LIFHjNGOubEAbGb89TX2RRysyZQUP5CsJoLmvVaElimr6qtVmIAgUBOq3tAi7HBiqa1BPIh2vrLfDX5U0zy5h9AkoXyPhuxwfm3PjRIN2gYM2hONZUVfml67flDh5hrwdaLPjWjhQitsJ57FCMHTXC+C60eENukbu19U6qpFMZB47cTyZzEjCGoPGSg/OiNwV2MhmdVlS3se+Sfpopb06Fq/w2S9wne0d4etSA5cD09CWxjGs+NuP2NCE4aNRzvpdiy1WJbOcRPdL+eb+LBxJRa0cEPzd5MfxT3FCUmlbx8BYfbxfKv6Y1+ud0WVPx/LaP4h/9sxaqjOfj3k23jeUCPyIn7eq1NRwR+aip3vIBtsODiyy5o/WpvApa4uAg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(346002)(376002)(39860400002)(396003)(366004)(451199021)(30864003)(2906002)(478600001)(33656002)(86362001)(38100700002)(41300700001)(8936002)(5660300002)(82960400001)(316002)(66556008)(6916009)(66476007)(83380400001)(6506007)(66946007)(1076003)(6512007)(26005)(186003)(966005)(6486002)(6666004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?JxktG5sutGvEoZl/luF71tzq0Mn3+ylUuKwbFqy7Csk00sGNj80NCdNgVgTv?=
 =?us-ascii?Q?VWxMrg6xPgf8aCs7CFoIwu5V+S3f4n77vT17hrQm+LMql+7377gIRoYk38D9?=
 =?us-ascii?Q?L6pAvNFBhazl8zD7YRml6d3m+ThHJf4fX6/r9x75CyJ/oQw1xZhv8jEGOVlr?=
 =?us-ascii?Q?rPn+y3CKHU44xjkT5c9XnkYeE7fk/uAf/zxX1Vib3U9092AdI+7u8j08bPNG?=
 =?us-ascii?Q?j4ukDDjLEMWHp9sMNor8pq1/tKuFDzQeWpVP4gCbKGkjOd5OI2XCQEr9GqW+?=
 =?us-ascii?Q?knuZFgYNPY7OE3XdXeBvaGXO36O88/zra8ZLhbEcJl3FD0isfdy1rbnK5PtI?=
 =?us-ascii?Q?Vw/jJQoc8XPSOQ0T6arzRBBv2dF8KNZjvAIqGRyVGtlhvbIMTyUKGgNQTTN4?=
 =?us-ascii?Q?wi4mnf2Ngzv45cgLEwFFltEv5XHX9hxg45yEWxxtlnzovc9gzZXlPksm3r+N?=
 =?us-ascii?Q?C/sXip1CRWxCIxi4PcVoY+t9lV9GIWMiA4S0U5vI6vochqPAfvRnWHa+5sAC?=
 =?us-ascii?Q?HOyubV/GA+wr1ON9xX/DF6zkXYTobmtpsVQn+1AWy/orwuw5YtFQxd968RB1?=
 =?us-ascii?Q?zY4VTyOYlxHHMk1m4N3lVVDriCfZamPF5KRkIKjanwCq2kewdQpTK3RYo4d4?=
 =?us-ascii?Q?y4QJkSJGoVNmzACO1Sv5CgLfG9xuh76Pd6ox95MPy+CBXZmx1Cl6//Lv3Plh?=
 =?us-ascii?Q?YlIrXW/c27s5KAPEtpXohcqnv/mWaCDdrPbqsBvhMNDMgHxCvfCRnh5/S9v4?=
 =?us-ascii?Q?RqC3emWVxsuuuJ9gZ4zpI1IRwgh/ltEeAlYLkISgLhFp5/60vEYlvC4ONFDl?=
 =?us-ascii?Q?GNBT0S/hbVMnNOfDpy0lbV3C8p1+9l12VbLU+JKVKZQAIlx0a4oXA0/aJeK/?=
 =?us-ascii?Q?qj7IOvDwnN98fvjP97oHW1C/q/OE40fiKuWc8VP/BP6dmABNWvfbLlXStlm7?=
 =?us-ascii?Q?AUXaT6CtmJkmTeJz8Q1BrRS0PVvGJONe7boLD23q9dbO7LhluvEqtGgl244+?=
 =?us-ascii?Q?eXFXX/EEgwDnRS8aLwS5aaD7q4f7Uj9a+rgWas7lJo1b17m31yZZqm3I0hUQ?=
 =?us-ascii?Q?mN9TIdzcRElbZhXWmMwbtmv0BpuaWKh67dPJbHkwjJN8GCvuxN56NUtMN/Qp?=
 =?us-ascii?Q?zCXWbMai4X9eMnIDIWTh3w3erHouVpsRpVfqn1/3ofgDE/jUZ9Z0Cbr68HXn?=
 =?us-ascii?Q?DXqmwMUGyx6IypOE40jgoF82JK9cJke2OGIXn3wcI758CWrppmusZWX7e6H5?=
 =?us-ascii?Q?gOxW4Ek2hGi9UoVZRtsBY5QnX7KDuruaMcPhUuYaDIdb77Xj7LyZbO8YYWZp?=
 =?us-ascii?Q?DIRZaWP3aFe521CYt5XPSRB0DLXxf2yE4OwZUc0GgvHBoJdn4zi3KSCekyhG?=
 =?us-ascii?Q?bDnZyr9TsnNf8pfmulcrZYMVOkXhRdbce6vT5orIfyUirEScI9EVNEy3AF3H?=
 =?us-ascii?Q?+ikDsXR/WISn0UBQaIMhXLM8dsDd7gjIF/fjO7ZugAtHzh4oRvXCkfC9A+nv?=
 =?us-ascii?Q?x/+AJ48xGhY7Bc7w6DYGtaDbLTZBNZxk+4BSK+EKi8P/ZjC88sL0bdCGA2fY?=
 =?us-ascii?Q?NYf0PZXzaHF5UEynI0LY1aJ0wD49X0vfyw2uUrD+GYSD89p7SXB1gwkvCKnY?=
 =?us-ascii?Q?zg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b17cad4-0b21-4f9e-b2c1-08db66194504
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jun 2023 23:04:52.3236 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XXQWMJhdTyWC9bxjvT7OjrF9NZTOZp602vOOvxSZ0UkhI0NYZknqE+RAGqheDaTRFVO6GXF6gBvh6cnWySOjBgFz5Qi8qsEv9LdKufuNnmo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7340
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_Extract_display_init_from_intel=5Fdevice=5Finf?=
 =?utf-8?b?b19ydW50aW1lX2luaXQgKHJldjIp?=
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

On Mon, Jun 05, 2023 at 09:14:58AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/display: Extract display init from intel_device_info_runtime_init (rev2)
> URL   : https://patchwork.freedesktop.org/series/118730/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_13222_full -> Patchwork_118730v2_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_118730v2_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_118730v2_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (7 -> 7)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_118730v2_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_busy@extended-modeset-hang-newfb-with-reset@pipe-b:
>     - shard-snb:          [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13222/shard-snb2/igt@kms_busy@extended-modeset-hang-newfb-with-reset@pipe-b.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118730v2/shard-snb2/igt@kms_busy@extended-modeset-hang-newfb-with-reset@pipe-b.html

Random incomplete; no reason in the logs.  Does not appear to be related
to this patch.

Applied to drm-intel-next.  Thanks Jani for the review.


Matt

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_118730v2_full that come from known issues:
> 
> ### CI changes ###
> 
> #### Possible fixes ####
> 
>   * boot:
>     - shard-glk:          ([PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [FAIL][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26]) ([i915#7849] / [i915#8293]) -> ([PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13222/shard-glk1/boot.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13222/shard-glk1/boot.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13222/shard-glk1/boot.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13222/shard-glk2/boot.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13222/shard-glk2/boot.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13222/shard-glk2/boot.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13222/shard-glk3/boot.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13222/shard-glk3/boot.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13222/shard-glk3/boot.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13222/shard-glk4/boot.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13222/shard-glk4/boot.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13222/shard-glk5/boot.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13222/shard-glk5/boot.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13222/shard-glk6/boot.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13222/shard-glk6/boot.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13222/shard-glk6/boot.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13222/shard-glk7/boot.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13222/shard-glk7/boot.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13222/shard-glk7/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13222/shard-glk8/boot.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13222/shard-glk8/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13222/shard-glk8/boot.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13222/shard-glk9/boot.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13222/shard-glk9/boot.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118730v2/shard-glk7/boot.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118730v2/shard-glk7/boot.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118730v2/shard-glk7/boot.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118730v2/shard-glk6/boot.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118730v2/shard-glk6/boot.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118730v2/shard-glk6/boot.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118730v2/shard-glk5/boot.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118730v2/shard-glk5/boot.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118730v2/shard-glk4/boot.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118730v2/shard-glk4/boot.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118730v2/shard-glk4/boot.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118730v2/shard-glk3/boot.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118730v2/shard-glk3/boot.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118730v2/shard-glk3/boot.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118730v2/shard-glk2/boot.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118730v2/shard-glk2/boot.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118730v2/shard-glk2/boot.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118730v2/shard-glk1/boot.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118730v2/shard-glk1/boot.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118730v2/shard-glk1/boot.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118730v2/shard-glk9/boot.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118730v2/shard-glk9/boot.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118730v2/shard-glk9/boot.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118730v2/shard-glk8/boot.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118730v2/shard-glk8/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_exec_capture@capture-invisible@smem0:
>     - shard-glk:          NOTRUN -> [SKIP][52] ([fdo#109271] / [i915#4579] / [i915#6334])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118730v2/shard-glk4/igt@gem_exec_capture@capture-invisible@smem0.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-apl:          [PASS][53] -> [FAIL][54] ([i915#2842])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13222/shard-apl3/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118730v2/shard-apl2/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-glk:          NOTRUN -> [FAIL][55] ([i915#2842]) +1 similar issue
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118730v2/shard-glk6/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_lmem_swapping@random:
>     - shard-glk:          NOTRUN -> [SKIP][56] ([fdo#109271] / [i915#4613]) +2 similar issues
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118730v2/shard-glk4/igt@gem_lmem_swapping@random.html
> 
>   * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:
>     - shard-glk:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#1937] / [i915#4579])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118730v2/shard-glk8/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - shard-apl:          NOTRUN -> [SKIP][58] ([fdo#109271]) +47 similar issues
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118730v2/shard-apl7/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
>     - shard-glk:          NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#3886]) +8 similar issues
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118730v2/shard-glk2/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#3886]) +2 similar issues
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118730v2/shard-apl7/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
>     - shard-apl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#4579]) +2 similar issues
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118730v2/shard-apl7/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:
>     - shard-apl:          [PASS][62] -> [ABORT][63] ([i915#180])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13222/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118730v2/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html
> 
>   * igt@kms_plane_scaling@plane-upscale-with-modifiers-20x20@pipe-b-hdmi-a-1:
>     - shard-snb:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#4579]) +11 similar issues
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118730v2/shard-snb1/igt@kms_plane_scaling@plane-upscale-with-modifiers-20x20@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-a-vga-1:
>     - shard-snb:          NOTRUN -> [SKIP][65] ([fdo#109271]) +19 similar issues
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118730v2/shard-snb2/igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-a-vga-1.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
>     - shard-glk:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#658]) +1 similar issue
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118730v2/shard-glk6/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
>     - shard-apl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#658])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118730v2/shard-apl7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
> 
>   * igt@kms_scaling_modes@scaling-mode-full:
>     - shard-glk:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#4579]) +7 similar issues
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118730v2/shard-glk2/igt@kms_scaling_modes@scaling-mode-full.html
> 
>   * igt@kms_setmode@basic@pipe-a-vga-1:
>     - shard-snb:          NOTRUN -> [FAIL][69] ([i915#5465]) +1 similar issue
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118730v2/shard-snb4/igt@kms_setmode@basic@pipe-a-vga-1.html
> 
>   * igt@kms_vblank@pipe-d-wait-busy-hang:
>     - shard-glk:          NOTRUN -> [SKIP][70] ([fdo#109271]) +117 similar issues
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118730v2/shard-glk4/igt@kms_vblank@pipe-d-wait-busy-hang.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-glk:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#2437])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118730v2/shard-glk4/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
>     - {shard-rkl}:        [FAIL][72] ([i915#7742]) -> [PASS][73]
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13222/shard-rkl-6/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118730v2/shard-rkl-6/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
> 
>   * igt@gem_eio@hibernate:
>     - {shard-dg1}:        [ABORT][74] ([i915#4391] / [i915#7975] / [i915#8213]) -> [PASS][75]
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13222/shard-dg1-14/igt@gem_eio@hibernate.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118730v2/shard-dg1-17/igt@gem_eio@hibernate.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - {shard-dg1}:        [FAIL][76] ([i915#5784]) -> [PASS][77]
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13222/shard-dg1-17/igt@gem_eio@unwedge-stress.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118730v2/shard-dg1-18/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [FAIL][78] ([i915#2842]) -> [PASS][79]
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13222/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118730v2/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_suspend@basic-s4-devices@lmem0:
>     - {shard-dg1}:        [ABORT][80] ([i915#7975] / [i915#8213]) -> [PASS][81]
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13222/shard-dg1-14/igt@gem_exec_suspend@basic-s4-devices@lmem0.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118730v2/shard-dg1-17/igt@gem_exec_suspend@basic-s4-devices@lmem0.html
> 
>   * igt@gem_exec_suspend@basic-s4-devices@smem:
>     - {shard-tglu}:       [ABORT][82] ([i915#7975] / [i915#8213]) -> [PASS][83]
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13222/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices@smem.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118730v2/shard-tglu-9/igt@gem_exec_suspend@basic-s4-devices@smem.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-apl:          [ABORT][84] ([i915#5566]) -> [PASS][85]
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13222/shard-apl3/igt@gen9_exec_parse@allowed-all.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118730v2/shard-apl7/igt@gen9_exec_parse@allowed-all.html
>     - shard-glk:          [ABORT][86] ([i915#5566]) -> [PASS][87]
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13222/shard-glk3/igt@gen9_exec_parse@allowed-all.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118730v2/shard-glk2/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@i915_pm_rpm@dpms-lpsp:
>     - {shard-rkl}:        [SKIP][88] ([i915#1397]) -> [PASS][89]
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13222/shard-rkl-4/igt@i915_pm_rpm@dpms-lpsp.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118730v2/shard-rkl-7/igt@i915_pm_rpm@dpms-lpsp.html
> 
>   * igt@kms_cursor_legacy@cursor-vs-flip-legacy:
>     - shard-glk:          [FAIL][90] -> [PASS][91]
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13222/shard-glk3/igt@kms_cursor_legacy@cursor-vs-flip-legacy.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118730v2/shard-glk7/igt@kms_cursor_legacy@cursor-vs-flip-legacy.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-glk:          [FAIL][92] ([i915#2346]) -> [PASS][93]
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13222/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118730v2/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_flip@flip-vs-suspend@b-dp1:
>     - shard-apl:          [ABORT][94] ([i915#180]) -> [PASS][95]
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13222/shard-apl6/igt@kms_flip@flip-vs-suspend@b-dp1.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118730v2/shard-apl1/igt@kms_flip@flip-vs-suspend@b-dp1.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_hdmi_inject@inject-audio:
>     - shard-snb:          [FAIL][96] ([IGT#3]) -> [SKIP][97] ([fdo#109271])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13222/shard-snb7/igt@kms_hdmi_inject@inject-audio.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118730v2/shard-snb5/igt@kms_hdmi_inject@inject-audio.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
>   [IGT#3]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3
>   [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
>   [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
>   [i915#5465]: https://gitlab.freedesktop.org/drm/intel/issues/5465
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
>   [i915#6493]: https://gitlab.freedesktop.org/drm/intel/issues/6493
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#7461]: https://gitlab.freedesktop.org/drm/intel/issues/7461
>   [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
>   [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
>   [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>   [i915#7849]: https://gitlab.freedesktop.org/drm/intel/issues/7849
>   [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
>   [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
>   [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
>   [i915#8398]: https://gitlab.freedesktop.org/drm/intel/issues/8398
>   [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
>   [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_13222 -> Patchwork_118730v2
> 
>   CI-20190529: 20190529
>   CI_DRM_13222: 9f99072561664a4b16520f460ddf583c1c0be7d4 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7318: c2d8ef8b9397d0976959f29dc1dd7c8a698d65fe @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_118730v2: 9f99072561664a4b16520f460ddf583c1c0be7d4 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118730v2/index.html

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
