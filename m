Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66B29709DA9
	for <lists+intel-gfx@lfdr.de>; Fri, 19 May 2023 19:14:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95C2710E5B6;
	Fri, 19 May 2023 17:14:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B194E10E478
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 May 2023 17:14:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684516452; x=1716052452;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=fNlHFLwgemPqTArBVWQj5cEuspODr2/4WOUEUhDOYJM=;
 b=T+9+aOX6C05B6aQ66qsXT9NqbMzHPQxzd+IjXnjUE0X7xCynNltxdaZl
 twsEacwG0uWFB/mIZx1xWNi6Mi7e4erWgbhqDSxKQV8C9Ji25jZw3SefO
 DPx0J/0C9FW3eS/E1ZPA8a7zfpmuyQ0yAuhRnv6ND6Pn7ge2Ml6VqJ6jy
 8IA3tMtXEH7XTS9LSqttgUdV7qsl8JPWGjtRBGh94BIEFH4wUtqM5tBaN
 4Z5nPyjIGnlR0KgBVloKoruWggPgTslrWdE62wAD0Hhso1GijZYs0oYKz
 x6jb6GlOxVM+58NyvaFnWRXYhAvKMSE+0O/QFZHYZZBNipCnKMBxvwsJF A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10715"; a="352447810"
X-IronPort-AV: E=Sophos;i="6.00,177,1681196400"; d="scan'208";a="352447810"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2023 10:14:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10715"; a="705693341"
X-IronPort-AV: E=Sophos;i="6.00,177,1681196400"; d="scan'208";a="705693341"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga007.fm.intel.com with ESMTP; 19 May 2023 10:14:11 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 19 May 2023 10:14:11 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 19 May 2023 10:14:11 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 19 May 2023 10:14:11 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 19 May 2023 10:14:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=deP9rq6om23YgtquIwuTkhMDZnpr8Hx0dhB0EZMGuF7qCqeLfY588BL1JPswQA1WrK+Ba5wqSOwIa8Lr5zZx75S8kHxsgSYyKxMqG8U1lZXJIm/dVeQgXnWdExgqhrJrmt596cH1bZnH7fycbIYJ9fbua3e2D8Ul2b6Wke+qgM6FFlKIBcLZghUtmqAXoS3ejCfyYB7whWu/YKHSdxTZTHnws533p4svesMwk2ZvdmcaGWi1hSwm6yYN+IiuPKjB4fQAjbOz+3yLPAqfBF6weTKcTw1bwBOj0qNIn3ytHl9PZRW1FeOLdCN67T9WoXI7ogNiIdIRvJvWVuF5Htuu9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fgP0YjQHaABfCZfjC6RgQSGPUR/W0ZDUMpa8IeiCn/w=;
 b=RJkRy4J4pZim3tLOBQy9dom+Wy3nOj1DYVTWoQaorvHibU8yUqBBIik0gb1q89CXu5Gt7Kc/+uK5azyYi6NFKFNSzhQAPWcANr55ZJ6v+oSZurlSdRM+aDh++ffLBuE8lRBL0ngkjtHItCdEDc+J9NwYPJks7/iV7AiECK+Kmwuqn21SXsNueyFXceUERtMQf59Ycj0L29XeSv5CPlTUDN0a0PwOzudOyfSRxBR2mfJEYVAZYtDonMpJj5Aw/Kr+VesdLtcBQ7L2iw4hSGu9JfIgvkoGzDHlOIO3OcuFuPDbJFMu2OjFa/FSPYyXKRozv0vQkyw00JbrHIz/xP1F7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 DS0PR11MB7578.namprd11.prod.outlook.com (2603:10b6:8:141::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6387.33; Fri, 19 May 2023 17:14:08 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::9f98:8f3c:a608:8396]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::9f98:8f3c:a608:8396%7]) with mapi id 15.20.6411.019; Fri, 19 May 2023
 17:14:08 +0000
Date: Fri, 19 May 2023 10:14:04 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: "Taylor, Clinton A" <clinton.a.taylor@intel.com>
Message-ID: <20230519171404.GE10045@mdroper-desk1.amr.corp.intel.com>
References: <20230515231725.3815199-1-clinton.a.taylor@intel.com>
 <168443831887.2372.5786124962463754360@emeril.freedesktop.org>
 <ad3ea8fd13d72ffd1e2b380bc465b2ad3c389f37.camel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <ad3ea8fd13d72ffd1e2b380bc465b2ad3c389f37.camel@intel.com>
X-ClientProxiedBy: SJ0PR05CA0210.namprd05.prod.outlook.com
 (2603:10b6:a03:330::35) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|DS0PR11MB7578:EE_
X-MS-Office365-Filtering-Correlation-Id: b8235a8b-a9f1-4ddd-0507-08db588c7478
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kRrQ1WgFqSL/kzSrhIPQOf9E6BXlN4izXUDmxbPufNA4H8mWPqaoWuFK69XV2iL+ZHguM7t0DWZxxjSKNiLg4Lhg+p0oz4/NqtGLEAsjdjCeSsS9yxqLjboJ0cOV5+5Zn3mK6lnAEtColl2xhWFMf48RakRgp6j3874M46YUqvI6IR2dgoTeVcxjul9Z/H5p/fryRQAsfT9bLu1puS9FDBxnkqc/k7lAeoF/aCZl3C8eI5wTgqA+hSxUbHnkNoq6S7ZjdOwkUkiPW6bIqIkzy83/9ayBar5wWtNwd3MHXkIKe9F/W0J1KsANlsVg2o1dgXH1bZYmjaaNZu0OYBV/vpB+EbBAp4WeOGpYnDYmplw/gYLyw397baEEUdS+c9KG30aNrbhsLlxVPdO9n3Ex/mTip1VDca6T9vQSe6FWGxngSSY6dylN/UIM7cebFpazhQ6W4TruEr8aOPiDJbj3q0GgqWB38MZDRhFRfDeNsGohivY0Dc39yqnRlgaBOQd/Uj94A6o5XebfwBpg8lwBuPiwm0bTu0SoUliJ9KEpxnc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(346002)(366004)(376002)(136003)(396003)(451199021)(966005)(6666004)(33656002)(6636002)(6486002)(4326008)(66556008)(66476007)(478600001)(316002)(66946007)(86362001)(38100700002)(8936002)(41300700001)(5660300002)(6862004)(2906002)(82960400001)(26005)(186003)(6512007)(6506007)(83380400001)(1076003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?k0tSUlKyaywVRLq40N/9MjE5pVGGXWl3SNe5P0WL9u0+3CcuqdihDw6WMkNF?=
 =?us-ascii?Q?tm5KKIct4qZe9NTkMyIWDPaDKwOpZ/oWbs98YNnqoxng27uRSqJOSvtRwpTl?=
 =?us-ascii?Q?2oxzj/rfXL3gmlrIu6sYVbrRCaScZvznfMJZ3p0KEgOzTgYFLDgLK+ZJOG/q?=
 =?us-ascii?Q?Z6sFrXtGmgbxQbavGpM7lsnhaMlZHTV4SrY+Bg3jY8VrpBPrKbb165BJYS76?=
 =?us-ascii?Q?EzUZp/ssWMH2YsN1QwO2mptQKoYJ5/uGC1ykgyv6wjplMqqirhKgnfv5vtlN?=
 =?us-ascii?Q?6d8XZD7soPfIdcODehG+a5H+vjlZ2Tz28Zz97QL9XuI5ae2QD8MIV/+i8CmU?=
 =?us-ascii?Q?a7DNnJ+P8kBnALKu7tyV33rGcbvYhhxaCr0jKk5GiMHLj9WGXWCmHqXGG4F5?=
 =?us-ascii?Q?m5jwRYl429J+X2xI/pQiGVuu6F9xKlZeP93f7YbdOrH62QaKBPKSUzl8sWPa?=
 =?us-ascii?Q?cqivWtojv5nuSO8M+g1083i7OFFVFNeXiS5F6nEg0sO7RK0Tiq6PRfUEHrZ3?=
 =?us-ascii?Q?phg8bg4ksfwGXTPytZFSs2m1A2Fb8DnQerM1+QoAlLZnmD9Hk74s9927ED0i?=
 =?us-ascii?Q?xBcJ8dA6MLziUVWQbvOpLdjBPJZy2pUVOeAon8rULZyAfDU62pdBGVKAK67M?=
 =?us-ascii?Q?XrGExnBh+RggnKrVQjI9WxnCpeZsSGnEFZsRWvhT7V0H9OcT3x0wBuft+8Rw?=
 =?us-ascii?Q?83HHFPMooCADYa7dlaiEKgl/E48CK61QUy3ZMkRxXrOtWdBDBFODsl+ZDeTb?=
 =?us-ascii?Q?sqxkMW3VkUKhT6s94DDboY0fdbgJLjZZHisdeQYBPBSaDLFnSXRKV234AtRP?=
 =?us-ascii?Q?PczGdUwd9d39+eE7NAY11L7nO2l6XjE0xUf/bQoKxJjs/XFoUYpC8SoKxH7X?=
 =?us-ascii?Q?qJ76qdlvuxUZq446bVzcYQQckaPTyd1QoGIsG3SPJxe1+dZbpf8c4LHgU2st?=
 =?us-ascii?Q?xx/usLWByd24cawQrUl/y7UgsbhEvMveRSvWHOLrm+D0Mwgx5h7yRNL6oOZg?=
 =?us-ascii?Q?ogW7edSHBhayDCTu1mt+r1+tDl8jMa1ddTerhLrfjIeNh2zwUVIN736mOV8E?=
 =?us-ascii?Q?3XldHZXxhH+a+wzDoZJJlBQOqA6XJSNwrkzvcvq3M5yrgGhdYqQcLiJgzHWu?=
 =?us-ascii?Q?e5TIh9iDmHXVrsgR80ZjLqzwF77kdi1he/PaUdy1BrKZbOlnmWeRweFMdjMN?=
 =?us-ascii?Q?4fnhxhpizF7obLVYQGzKIimXCqZelgROs0bZuxX+hpv+JgL1ne6UQjf1G/+2?=
 =?us-ascii?Q?DcXLIpHqPxCfeBOiekMXKR26TV5cZXgKFIQncujlzbyFZH6G/UH4YIf3tqpE?=
 =?us-ascii?Q?kf9AocTiFscKGOJEyLEuZDVx+WdHWP5Omc21IzcjMHn++SMmasZ61YeB6WGf?=
 =?us-ascii?Q?mQEY7D9/K4DnL1KT0ZnstBpPL1z+8JsWOSujmIRdgMzAFdrIC/DBn4qbPqWO?=
 =?us-ascii?Q?Q88ZdYADaOgpsI94oaipuLEIumdei23AVhWEJZVFxiAVa7/Ketl08xQuh7Vf?=
 =?us-ascii?Q?1+zezQ/ERDAeKnphjzUU1NU1hthyBGm5rPNhl84y8exE3C936TVvY73gbd/Z?=
 =?us-ascii?Q?eJ7U1lr9olBkoOC3LP+//H/3uWBoGZKA4Lp+x/MTfkPWK9dzvatDXmhdLuDb?=
 =?us-ascii?Q?hw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b8235a8b-a9f1-4ddd-0507-08db588c7478
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 May 2023 17:14:07.8372 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: p2Ps7Zl9wwnju+4go6ScaA4EldrdfOk11yPklfyPR4dJ0BNf05nM2lWeY/NIg6Do7bqXNIhZE1jwCaxTQrB6mr8iVHzmJGEiIprDqaA8fhM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7578
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogIGZhaWx1cmUgZm9yIEMy?=
 =?utf-8?q?0_Computed_HDMI_TMDS_pixel_clocks_=28rev3=29?=
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, May 18, 2023 at 10:08:42PM +0000, Taylor, Clinton A wrote:
> On Thu, 2023-05-18 at 19:31 +0000, Patchwork wrote:
> > Patch Details
> > Series:	C20 Computed HDMI TMDS pixel clocks (rev3)
> > URL:	https://patchwork.freedesktop.org/series/117399/
> > State:	failure
> > Details:	https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117399v3/index.html
> > CI Bug Log - changes from CI_DRM_13164 -> Patchwork_117399v3
> > Summary
> > FAILURE
> > 
> > Serious unknown changes coming with Patchwork_117399v3 absolutely need to be
> > verified manually.
> > 
> > If you think the reported changes have nothing to do with the changes
> > introduced in Patchwork_117399v3, please notify your bug team to allow them
> > to document this new failure mode, which will reduce false positives in CI.
> > 
> > External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117399v3/index.html
> > 
> > Participating hosts (39 -> 36)
> > Missing (3): fi-kbl-soraka fi-snb-2520m fi-bsw-n3050
> > 
> > Possible new issues
> > Here are the unknown changes that may have been introduced in Patchwork_117399v3:
> > 
> > IGT changes
> > Possible regressions
> > igt@kms_pipe_crc_basic@read-crc@pipe-c-edp-1:
> > bat-adlp-6: PASS -> ABORT
> 
> Changes in this patch series not relevant to ADLP (v3) or ADLS (v2) platforms. Series can
> only cause regressions on MTL platform with C20 HDMI output. 

And we have no MTL machines in the shards pool yet, so that means these
patches can't impact shard results and we don't need to worry about the
fact we never got them.

Applied to drm-intel-next (with a small tweak to wrap one overly long
line).  Thanks for the patches and reviews.


Matt

> 
> -Clint
>   
> > Suppressed
> > The following results come from untrusted machines, tests, or statuses.
> > They do not affect the overall result.
> > 
> > igt@i915_selftest@live@migrate:
> > {bat-mtlp-8}: PASS -> DMESG-FAIL
> > Known issues
> > Here are the changes found in Patchwork_117399v3 that come from known issues:
> > 
> > IGT changes
> > Issues hit
> > igt@i915_selftest@live@gt_engines:
> > 
> > bat-atsm-1: PASS -> FAIL (i915#6268)
> > igt@i915_selftest@live@gt_pm:
> > 
> > bat-rpls-2: NOTRUN -> DMESG-FAIL (i915#4258 / i915#7913)
> > igt@i915_selftest@live@requests:
> > 
> > bat-rpls-2: NOTRUN -> ABORT (i915#7913 / i915#7982)
> > Possible fixes
> > igt@i915_selftest@live@gt_heartbeat:
> > 
> > fi-glk-j4005: DMESG-FAIL (i915#5334) -> PASS
> > igt@i915_selftest@live@gt_lrc:
> > 
> > bat-rpls-2: INCOMPLETE (i915#4983 / i915#7913) -> PASS
> > igt@i915_selftest@live@gt_mocs:
> > 
> > {bat-mtlp-8}: DMESG-FAIL -> PASS
> > igt@i915_suspend@basic-s3-without-i915:
> > 
> > bat-adls-5: FAIL (fdo#103375) -> PASS +3 similar issues
> > igt@kms_pipe_crc_basic@nonblocking-crc@pipe-c-dp-1:
> > 
> > bat-dg2-8: FAIL (i915#7932) -> PASS
> > igt@kms_pipe_crc_basic@read-crc@pipe-b-edp-1:
> > 
> > bat-adlp-6: ABORT -> PASS
> > Warnings
> > igt@i915_selftest@live@requests:
> > 
> > bat-rpls-1: ABORT (i915#7911 / i915#7920 / i915#7982) -> ABORT (i915#7911 / i915#7920)
> > igt@kms_setmode@basic-clone-single-crtc:
> > 
> > bat-rplp-1: SKIP (i915#3555 / i915#4579) -> ABORT (i915#4579 / i915#8260)
> > {name}: This element is suppressed. This means it is ignored when computing
> > the status of the difference (SUCCESS, WARNING, or FAILURE).
> > 
> > Build changes
> > Linux: CI_DRM_13164 -> Patchwork_117399v3
> > CI-20190529: 20190529
> > CI_DRM_13164: 30793067f161dfcbaca1b0249d919c9fc306754e @
> > git://anongit.freedesktop.org/gfx-ci/linux
> > IGT_7296: f58eaf30c30c1cc9f00c8b5c596ee5c94d054198 @ 
> > https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> > Patchwork_117399v3: 30793067f161dfcbaca1b0249d919c9fc306754e @
> > git://anongit.freedesktop.org/gfx-ci/linux
> > 
> > Linux commits
> > e2b63090a956 drm/i915/hdmi: C20 computed PLL frequencies
> > 273769d73c7b drm/i915: Add 16bit register/mask operators

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
