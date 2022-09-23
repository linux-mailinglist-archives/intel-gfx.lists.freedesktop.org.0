Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 496935E811E
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Sep 2022 19:51:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01A6F10E4A5;
	Fri, 23 Sep 2022 17:51:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FE6310E4A5
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Sep 2022 17:51:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663955466; x=1695491466;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=IEVuNHYmZ0mSjIjdD1D1DW8suFDTBC10BHWg5XkTrVI=;
 b=PMIbnNMF0hw//nLGCHSzK4TSTN7SRCzN+drjYyxZJbDBvuu9Fz8hSITM
 OHQHsv606It+yb2giJhy6zwUaKCFWbefrz4LVJabvWrXOSUOufRjSyhA7
 RWdeAFKtFQ8lJJ7+YRJ/EgqSP+7jimREarSTAlgH39PWHghHBY9c2tT97
 2Vj9iJK1UFDSXv9+hx1KVra7qz7VYxJ+5NBwMtcTo6/UZ45ggrL7JCXy8
 1yFTIfuPvFjpgOU0XFUhI76UjSv7a/FQsFrfWAptEhxvGpqIUvyQND+MT
 1DFHp/kqidVPzpygCAY/NG7/+I/K6xrM/a/tn/C2PxGzF1GNfRhwfNMZZ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10479"; a="298248929"
X-IronPort-AV: E=Sophos;i="5.93,339,1654585200"; d="scan'208";a="298248929"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2022 10:51:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,339,1654585200"; d="scan'208";a="571455138"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga003.jf.intel.com with ESMTP; 23 Sep 2022 10:51:05 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 23 Sep 2022 10:51:05 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 23 Sep 2022 10:51:05 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 23 Sep 2022 10:51:05 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 23 Sep 2022 10:51:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cWDfJHSWZxsH4qt9ACueEefPuvxxUnOU1WY0L6BboF84J+5I9jAqYUnwNIQlWEEO8RSrOOyNKjck1wEqYGDu9LaL6KV8VZ20S8DE3uhVMYIWzB7HuutS1iL79rjEge6DLlYhf59sLCB5YERcswU+/GBgp0kNU8+tDSAeQVxjLcGM9wuFPWWkWDb1MeQzukY33bFlglfDRCg+mNOE3mViTqR6P4+wlusbrBvf0jg/dnoYdfhAOo/E6WWdZic+E06uC/D1nNebtXul0qXhSLDVCl4if3fYG+mIC8DF5ckfBIJjTKAYPpew3tNSCNzFa0dTUCMlw09Vc8G/Rr2Ihpz+Eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CFsxRmq9TlV7T0nj6F5Epjfn4DuZlR9ISwLKNS/ro98=;
 b=IqCMqDFlOxy+fqHwpLJmVkyvJ+YB/EiDFWvoZ3ijVmqt/MNkYCjUlb2Wy6MKWMoBlRuM9490U9kQSvYa93bNn3zaoWli5NMyR6/Z4tZAmtIKluW+ElIFf62sm3uqLYvT/cxfaNheYg18y+MniwuWrBnOIn++vfUA6YlAiq+C6k/kiPXOYXK7Gh5v4fGwCBX9IUKCz2ZSDCEOSzHjciprLBHQcuU0krSeV4SX8Y/akeZ0uGMhIR4SyNrzAsD3v92U/8v/SAWZ1sWHOOPgqXbMnDJALfBBca98NVFAHcnhMuSWa8zDIQKp1ZSRPvKFNNKwwGIcuRjfyp9V1cmWVh+HbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by CY5PR11MB6485.namprd11.prod.outlook.com (2603:10b6:930:33::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.20; Fri, 23 Sep
 2022 17:51:01 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::ecc9:50cb:5951:2514]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::ecc9:50cb:5951:2514%12]) with mapi id 15.20.5654.020; Fri, 23 Sep
 2022 17:51:01 +0000
Date: Fri, 23 Sep 2022 10:50:58 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <Yy3yAokPhHP/JBHY@mdroper-desk1.amr.corp.intel.com>
References: <20220920204359.103370-1-matthew.s.atwood@intel.com>
 <166371954577.11599.8234092171447891907@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <166371954577.11599.8234092171447891907@emeril.freedesktop.org>
X-ClientProxiedBy: BYAPR06CA0036.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::49) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR11MB1632:EE_|CY5PR11MB6485:EE_
X-MS-Office365-Filtering-Correlation-Id: 45f0037d-7cd6-4c19-17f5-08da9d8c2d79
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +WeSVuqbwc8XwcPurZjpgmhXgONb0oymtSf3Vj9yEL0MEyj2rrBC4e+r2kd/IOt+Zbkfk+xsYBxwykKGo+VSssBAHkfwgB7e1yyYq0vHuPlRZqPrgfoqCwMqG25zgRLNYW9D3Z2WjT6173RuXbrazCg6eelBkei89CSXZ7JHe8K4mr/u/+11NhluCRPnroH+vEy/b7ppBGcIDE1AK+7yqyKEL121V36LSBp62s+Zu+05dQU/cM6mUBa1XoJ8iY7xswUW1ipYJ+up4ekZgfhU/3Z323DjTi9D/pZJqglCSLkfbUphcplkVHjI+349jilyODwWo1Ej6Z3fW4wM5C0n19+mCGUwR15Io5/UgLL+8qlMHENml0VzVjDpYATI1qNJp9QPvt9mDDSr3STg9wbJliPyDv4z4DMIctAd6sze1d8Zpx4fBQfUHFblu4xk6dLRlLPQbzx6gVD751vJRlKhysKM8glavM8wjv2tEDmULL5vVcGFUOIwDKoUEZbNFSHWceZaiobUxE+0kOfyK7/nkvO3TSYGvNZ6zpCQsQZ/VD7jQ9p9XDRP1QJi5L+C/rpqtCTpAmm0zgV3CBwDcY2bpz5HGIGcPl+HNh4wuTOOrE74LaEw71NXLuPRcO6Jg4FzG/oDwHIXsx8InsUxfcRz3szcF6hIQGcIt6xy/f0wC08RutBaGkW/UTOY8JCJfdDoxtxmbzVplM0CyE2phmawSxr8C5+WMW1j6kbQ7wEFRZWpuEnJPViLUVNtTBJUAxwV1aEU3LpAW9Zd9hxDCfqcMA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(39860400002)(346002)(136003)(366004)(396003)(451199015)(66556008)(86362001)(66946007)(4326008)(66476007)(316002)(54906003)(6916009)(8936002)(30864003)(2906002)(5660300002)(38100700002)(41300700001)(186003)(83380400001)(107886003)(6666004)(6486002)(966005)(478600001)(82960400001)(6512007)(26005)(6506007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?OAEowHfpHFQC1s222/7lXQP1AYdl+UQ5bM8285iToXjY2TCik3Da3EspGanX?=
 =?us-ascii?Q?BWk96dAYgaqViILR/QRiqgD9JUYe8e1MTlaRPkYRiURQvSxWy6+PB9Iq6v3K?=
 =?us-ascii?Q?J8DsDkTJknUcQwCGxLxiflqRB/GfQL68ApunG0/L3/BsrmHd/FCdFVLsd0hg?=
 =?us-ascii?Q?QtRxOl+m5rz4cu0t00/0rLHOoE56ozwjBamdueI1974DO7iMxTyBrsJHrSGt?=
 =?us-ascii?Q?1HlxeNpYWSzUwJ0Vk64L2zJJTpb6bLjo80ZNxOzrYvzwJpwnA/OXb9erNmWR?=
 =?us-ascii?Q?PdIayINjgCC+kHhNpQXY1ZhljixSwtVSojQrrPsbn2y1zaM3QXeOzSfK7eM8?=
 =?us-ascii?Q?WYm24jfiEa082F25FIu6YgzJwNO8HHRF1MFtxL9GYWbrNYkCvFs1uaLh04a7?=
 =?us-ascii?Q?iA83HJyushxb+VxDlxQXK3F0M+j7Ftb1jqoqjSgjVSisgaRTX04K4ic6syg2?=
 =?us-ascii?Q?Msaf09SRZk8MGGDe0r4OfbXMu+dyR4v0d6QSnI6RtO9hu31SMxI9Nu4GIvoX?=
 =?us-ascii?Q?tnT7TzQefkU/Y88Vtni6zxi2Nui16bMUkbwS9vvoiUX0S3NVrLcfxiFT8S3K?=
 =?us-ascii?Q?kxx3ncr730upgKfXuwfuFDUdwdFEl+C77dKb9kpmjWOpII3R0zJoo8a4ko24?=
 =?us-ascii?Q?IckGps/QPOZxLyLbmgoCm5RcsXSfmEuuMZn7PVX1omt+fy18YLXqBdb9G2Rb?=
 =?us-ascii?Q?keAQJg27smZE8DzFba3YYak0OnquiIKxccfuhNlMSiC+tkmlpG7xkM7ZmSA4?=
 =?us-ascii?Q?DUvaGASn6krLcoW6b3Mi4o7L5sT+0VaP3XHkSIIIcsJpw0gsilH44HWly6m2?=
 =?us-ascii?Q?ycnMzbHeMKxk9Z4SgnV/Y2WDi31yk14QHRHGFzwhnk82BIoBeN3mA1zWGssE?=
 =?us-ascii?Q?MxzC7yA1LQKMeh2srQEvtNWQ/yznRngC0BeVAtl0JlpTu1PA/I8UM2tpK6KQ?=
 =?us-ascii?Q?L7rhTbSj2u4XyJPIjcgM8ezAXrHckD3CbQUQy1MnV+AYRbkHJW0FXnvqZ+ND?=
 =?us-ascii?Q?r6125E+7lfHu0XI3opFUcBfz1hZ7LL38IDnVbXdIxEE00TvHSreZ8OMwON9y?=
 =?us-ascii?Q?rLaRRkQqKEIZQUfKzpkDQAhS7UmWQnNZv1/4nVL3yiHEx7kbL62wtOwcgwRo?=
 =?us-ascii?Q?kbVBOz0ka9O+hD9SbCM51+0crtIxEcKezWTmP1X9Lf/465LkJJgoWUSoApoV?=
 =?us-ascii?Q?PL6IcRax21Q1Uvkyrm0fnubjdcMURp/uhbBOWKy/+BGfwtZF7TvH/5y1ATHV?=
 =?us-ascii?Q?UN76scIs2d5iXqxoiJccVVJvKptJF3zepkrxZKwmVV9vYwSCrerJUOXntSiO?=
 =?us-ascii?Q?nRUuGYGteaA0g64chzmbqXOYLb4FOwACtPuVQTgcLgWvhjPb+VFeu4aPXDbq?=
 =?us-ascii?Q?XY9IWTaZb+t+sK5aw7aDtcsxyy95oong3yeyVwHEpQ4cyUAmQWBDWEPA33pO?=
 =?us-ascii?Q?XYPqwgc+UFXNtF0ZOtNOw81GTezy9sDgkVStEdDkGxMDbH8SnqjHnjNUvhq2?=
 =?us-ascii?Q?7ECaBpDk6QjT8RrMte9/KOtP2Kc12zL+b7ktpF9lCRXASqeZ2TyxrLNOU5yB?=
 =?us-ascii?Q?6rGVX3bMrXw6lgm6vL0jgUZQSLT9If/S7rViPQS77R0GWkSoofWzVNEvIhkh?=
 =?us-ascii?Q?/g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 45f0037d-7cd6-4c19-17f5-08da9d8c2d79
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Sep 2022 17:51:01.2583 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LuBOldmYuQuyWvb/TTbGs3l22qpRctN1FHpi6kZddWz+X/iXo+n5X0zRXI/chFqwiPS8o8LA5sC/vK4N3fdxaRo2YF+HVMd2eo0TnbK5Kgc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6485
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogIGZhaWx1cmUgZm9yIGRy?=
 =?utf-8?q?m/i915/dg2=3A_introduce_Wa=5F22015475538?=
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
Cc: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Sep 21, 2022 at 12:19:05AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dg2: introduce Wa_22015475538
> URL   : https://patchwork.freedesktop.org/series/108795/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_12161_full -> Patchwork_108795v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_108795v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_108795v1_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (9 -> 11)
> ------------------------------
> 
>   Additional (2): shard-rkl shard-tglu 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_108795v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_pm_rpm@reg-read-ioctl:
>     - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12161/shard-tglb7/igt@i915_pm_rpm@reg-read-ioctl.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/shard-tglb8/igt@i915_pm_rpm@reg-read-ioctl.html

Random incomplete with no errors reported.  Not related to this patch.

Applied to drm-intel-gt-next.  Thanks for the patch.


Matt

> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@kms_color@ctm-0-75@pipe-a-hdmi-a-1:
>     - {shard-tglu}:       NOTRUN -> [FAIL][3] +7 similar issues
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/shard-tglu-6/igt@kms_color@ctm-0-75@pipe-a-hdmi-a-1.html
> 
>   
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_12161_full and Patchwork_108795v1_full:
> 
> ### New IGT tests (2) ###
> 
>   * igt@kms_lease@lease_revoke@pipe-d-hdmi-a-1:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.05] s
> 
>   * igt@kms_lease@page_flip_implicit_plane@pipe-d-hdmi-a-1:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.15] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_108795v1_full that come from known issues:
> 
> ### CI changes ###
> 
> #### Possible fixes ####
> 
>   * boot:
>     - shard-glk:          ([PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [FAIL][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28]) ([i915#4392]) -> ([PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12161/shard-glk8/boot.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12161/shard-glk7/boot.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12161/shard-glk7/boot.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12161/shard-glk7/boot.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12161/shard-glk6/boot.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12161/shard-glk6/boot.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12161/shard-glk8/boot.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12161/shard-glk6/boot.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12161/shard-glk5/boot.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12161/shard-glk5/boot.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12161/shard-glk5/boot.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12161/shard-glk5/boot.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12161/shard-glk3/boot.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12161/shard-glk3/boot.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12161/shard-glk3/boot.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12161/shard-glk2/boot.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12161/shard-glk2/boot.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12161/shard-glk1/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12161/shard-glk1/boot.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12161/shard-glk1/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12161/shard-glk1/boot.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12161/shard-glk9/boot.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12161/shard-glk9/boot.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12161/shard-glk9/boot.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12161/shard-glk8/boot.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/shard-glk9/boot.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/shard-glk9/boot.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/shard-glk9/boot.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/shard-glk8/boot.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/shard-glk8/boot.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/shard-glk8/boot.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/shard-glk7/boot.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/shard-glk7/boot.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/shard-glk7/boot.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/shard-glk6/boot.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/shard-glk6/boot.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/shard-glk6/boot.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/shard-glk5/boot.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/shard-glk5/boot.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/shard-glk5/boot.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/shard-glk3/boot.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/shard-glk3/boot.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/shard-glk3/boot.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/shard-glk2/boot.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/shard-glk2/boot.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/shard-glk2/boot.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/shard-glk2/boot.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/shard-glk1/boot.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/shard-glk1/boot.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/shard-glk1/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_exec_balancer@parallel-keep-submit-fence:
>     - shard-iclb:         [PASS][54] -> [SKIP][55] ([i915#4525])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12161/shard-iclb1/igt@gem_exec_balancer@parallel-keep-submit-fence.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/shard-iclb8/igt@gem_exec_balancer@parallel-keep-submit-fence.html
> 
>   * igt@gem_exec_fair@basic-none@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][56] ([i915#2842])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/shard-iclb1/igt@gem_exec_fair@basic-none@vcs1.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-tglb:         [PASS][57] -> [SKIP][58] ([i915#2190])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12161/shard-tglb3/igt@gem_huc_copy@huc-copy.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/shard-tglb7/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random:
>     - shard-glk:          NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#4613])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/shard-glk6/igt@gem_lmem_swapping@heavy-verify-random.html
> 
>   * igt@i915_pm_dc@dc9-dpms:
>     - shard-iclb:         [PASS][60] -> [SKIP][61] ([i915#4281])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12161/shard-iclb7/igt@i915_pm_dc@dc9-dpms.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
>     - shard-glk:          NOTRUN -> [SKIP][62] ([fdo#109271]) +37 similar issues
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/shard-glk6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-32bpp-rotate-270:
>     - shard-glk:          [PASS][63] -> [FAIL][64] ([i915#1888])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12161/shard-glk3/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/shard-glk7/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html
> 
>   * igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_rc_ccs_cc:
>     - shard-glk:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#3886]) +2 similar issues
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/shard-glk6/igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_color_chamelium@degamma:
>     - shard-glk:          NOTRUN -> [SKIP][66] ([fdo#109271] / [fdo#111827]) +2 similar issues
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/shard-glk6/igt@kms_color_chamelium@degamma.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:
>     - shard-glk:          [PASS][67] -> [DMESG-FAIL][68] ([i915#118] / [i915#1888])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12161/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][69] ([i915#2672]) +5 similar issues
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][70] ([i915#2587] / [i915#2672]) +3 similar issues
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/shard-iclb7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][71] ([i915#3555])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][72] ([i915#2672] / [i915#3555])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/shard-iclb5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-1:
>     - shard-glk:          [PASS][73] -> [DMESG-WARN][74] ([i915#118] / [i915#1888])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12161/shard-glk5/igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-1.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/shard-glk1/igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1:
>     - shard-iclb:         [PASS][75] -> [SKIP][76] ([i915#5176]) +2 similar issues
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12161/shard-iclb5/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/shard-iclb2/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1.html
> 
>   * igt@kms_plane_scaling@plane-upscale-with-modifiers-factor-0-25@pipe-a-vga-1:
>     - shard-snb:          NOTRUN -> [SKIP][77] ([fdo#109271]) +1 similar issue
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/shard-snb4/igt@kms_plane_scaling@plane-upscale-with-modifiers-factor-0-25@pipe-a-vga-1.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-glk:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#658])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/shard-glk6/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@psr2_cursor_render:
>     - shard-iclb:         [PASS][79] -> [SKIP][80] ([fdo#109441]) +1 similar issue
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12161/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/shard-iclb5/igt@kms_psr@psr2_cursor_render.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-glk:          [PASS][81] -> [FAIL][82] ([i915#5639])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12161/shard-glk1/igt@perf@polling-parameterized.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/shard-glk5/igt@perf@polling-parameterized.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@feature_discovery@psr2:
>     - shard-iclb:         [SKIP][83] ([i915#658]) -> [PASS][84]
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12161/shard-iclb5/igt@feature_discovery@psr2.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/shard-iclb2/igt@feature_discovery@psr2.html
> 
>   * igt@gem_eio@reset-stress:
>     - shard-tglb:         [FAIL][85] ([i915#5784]) -> [PASS][86]
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12161/shard-tglb5/igt@gem_eio@reset-stress.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/shard-tglb7/igt@gem_eio@reset-stress.html
> 
>   * igt@gem_exec_balancer@parallel-bb-first:
>     - shard-iclb:         [SKIP][87] ([i915#4525]) -> [PASS][88]
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12161/shard-iclb5/igt@gem_exec_balancer@parallel-bb-first.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/shard-iclb2/igt@gem_exec_balancer@parallel-bb-first.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-tglb:         [FAIL][89] ([i915#2842]) -> [PASS][90]
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12161/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-apl:          [FAIL][91] ([i915#2842]) -> [PASS][92]
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12161/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/shard-apl8/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [FAIL][93] ([i915#3989] / [i915#454]) -> [PASS][94]
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12161/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/shard-iclb5/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_rps@engine-order:
>     - shard-apl:          [FAIL][95] ([i915#6537]) -> [PASS][96]
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12161/shard-apl7/igt@i915_pm_rps@engine-order.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/shard-apl1/igt@i915_pm_rps@engine-order.html
> 
>   * igt@i915_suspend@debugfs-reader:
>     - shard-apl:          [DMESG-WARN][97] ([i915#180]) -> [PASS][98] +1 similar issue
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12161/shard-apl8/igt@i915_suspend@debugfs-reader.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/shard-apl2/igt@i915_suspend@debugfs-reader.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - shard-tglb:         [FAIL][99] ([i915#3743]) -> [PASS][100]
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12161/shard-tglb2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/shard-tglb1/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> 
>   * igt@kms_psr@psr2_sprite_mmap_gtt:
>     - shard-iclb:         [SKIP][101] ([fdo#109441]) -> [PASS][102] +1 similar issue
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12161/shard-iclb1/igt@kms_psr@psr2_sprite_mmap_gtt.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
>     - shard-iclb:         [SKIP][103] ([fdo#111068] / [i915#658]) -> [SKIP][104] ([i915#2920]) +1 similar issue
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12161/shard-iclb5/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-iclb:         [SKIP][105] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [FAIL][106] ([i915#5939])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12161/shard-iclb5/igt@kms_psr2_su@page_flip-nv12.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/shard-iclb2/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@runner@aborted:
>     - shard-apl:          ([FAIL][107], [FAIL][108], [FAIL][109], [FAIL][110]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#6884]) -> ([FAIL][111], [FAIL][112]) ([i915#3002] / [i915#4312] / [i915#5257] / [i915#6884])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12161/shard-apl8/igt@runner@aborted.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12161/shard-apl2/igt@runner@aborted.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12161/shard-apl6/igt@runner@aborted.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12161/shard-apl3/igt@runner@aborted.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/shard-apl7/igt@runner@aborted.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/shard-apl8/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
>   [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
>   [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
>   [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
>   [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
>   [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
>   [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
>   [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
>   [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
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
>   [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
>   [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
>   [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1850]: https://gitlab.freedesktop.org/drm/intel/issues/1850
>   [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
>   [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
>   [i915#1911]: https://gitlab.freedesktop.org/drm/intel/issues/1911
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
>   [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
>   [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
>   [i915#2435]: https://gitlab.freedesktop.org/drm/intel/issues/2435
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
>   [i915#3376]: https://gitlab.freedesktop.org/drm/intel/issues/3376
>   [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
>   [i915#3528]: https://gitlab.freedesktop.org/drm/intel/issues/3528
>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>   [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
>   [i915#3825]: https://gitlab.freedesktop.org/drm/intel/issues/3825
>   [i915#3826]: https://gitlab.freedesktop.org/drm/intel/issues/3826
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#3966]: https://gitlab.freedesktop.org/drm/intel/issues/3966
>   [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
>   [i915#4016]: https://gitlab.freedesktop.org/drm/intel/issues/4016
>   [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4171]: https://gitlab.freedesktop.org/drm/intel/issues/4171
>   [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
>   [i915#4392]: https://gitlab.freedesktop.org/drm/intel/issues/4392
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
>   [i915#5030]: https://gitlab.freedesktop.org/drm/intel/issues/5030
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5182]: https://gitlab.freedesktop.org/drm/intel/issues/5182
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
>   [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
>   [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
>   [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#5939]: https://gitlab.freedesktop.org/drm/intel/issues/5939
>   [i915#5982]: https://gitlab.freedesktop.org/drm/intel/issues/5982
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
>   [i915#6245]: https://gitlab.freedesktop.org/drm/intel/issues/6245
>   [i915#6247]: https://gitlab.freedesktop.org/drm/intel/issues/6247
>   [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
>   [i915#6251]: https://gitlab.freedesktop.org/drm/intel/issues/6251
>   [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
>   [i915#6258]: https://gitlab.freedesktop.org/drm/intel/issues/6258
>   [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>   [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
>   [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
>   [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
>   [i915#6344]: https://gitlab.freedesktop.org/drm/intel/issues/6344
>   [i915#6412]: https://gitlab.freedesktop.org/drm/intel/issues/6412
>   [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
>   [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
>   [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>   [i915#6537]: https://gitlab.freedesktop.org/drm/intel/issues/6537
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6590]: https://gitlab.freedesktop.org/drm/intel/issues/6590
>   [i915#6884]: https://gitlab.freedesktop.org/drm/intel/issues/6884
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_12161 -> Patchwork_108795v1
> 
>   CI-20190529: 20190529
>   CI_DRM_12161: a7d5d07d5ac5ac58ec81932b3f732e3127d17af9 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6659: 1becf700a737a7a98555a0cfbe8566355377afb2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_108795v1: a7d5d07d5ac5ac58ec81932b3f732e3127d17af9 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108795v1/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
