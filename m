Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB6C6696FCF
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Feb 2023 22:37:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FBAB10E9B3;
	Tue, 14 Feb 2023 21:37:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B77F10E9A9
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Feb 2023 21:37:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676410640; x=1707946640;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=kc/4jYrCimuhPlM6L2ufT0XDn2465aMr98HbZ8iz5KA=;
 b=VkaRioBfX6/xBifuGgO0kbNtB1s67zE97ssnjxkoKTaefQFDU7jkEYgR
 vcuKkJD0ihtGTi145gZhi9IaC9RX6fAEmJOskPLN8d+kBLNbkaYQ7/Av5
 SrI56R55ggsMTiyg0FtdNYXkHv7g/OC24Pa62YarIVRc9B7G862pZaR6b
 VD2rY2eJQRPSEWdgsjyM1ZgxgktPZM9BRj65P8AxLFW/AhASfOSzcMGW+
 WHwUfhhA7cQPFdg1+r6g9iiTI9W0PHVhO9liOApAJJjrWmU+gPcI5E7jW
 3faN0v7qtIwrIT9wddlPsRI4jLTo61IQv27Ql+lnmkitbouKTZtrC+Y8B Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="331277535"
X-IronPort-AV: E=Sophos;i="5.97,297,1669104000"; d="scan'208";a="331277535"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 13:37:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="662694011"
X-IronPort-AV: E=Sophos;i="5.97,297,1669104000"; d="scan'208";a="662694011"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP; 14 Feb 2023 13:37:19 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 14 Feb 2023 13:37:19 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 14 Feb 2023 13:37:19 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.47) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 14 Feb 2023 13:37:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FLHIradF5nQr+CqAe0RoUSZoxPoYs0lvMFBgTWqLT/lkHpz8NbF9uH+S4px21/1qporRylPiQqReh+7pnJ4dty3O2q/43y8JFVnPA55H0J+bO39C0vb87PlebsnFjt+mdr4mnfGEygro4eVXfs4ayQZu4OzHU5615t4gjZSkgAzd0fM2pwwd40O7F27LTdKBbWhseLtXPeRcXoNDIIm5bbesvfglMlJ6R1MlblcNlmU3vdy31mHg34+Z/VY7et4CNXeWgFH4qc8O8nitn0pZ4IBsYB4yY5ZtEGiT04QGaw4N687G/+mmfSv4QESMF0+6unKpI3C8S8CBNliQirV2BQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n6PGMx0IobTFbp1dwfanGykNP+UdhCrTT4sfdjkdx+Y=;
 b=VWZduEuDeTgO9iot285EL+G+ZbXtAMZ8rsEqDY0bsjYolyWTqT4VURYDwy1ykMJN8TA+9FPyxaB1Or0THWixsPkp2pt4LJDJ1PtOGK/jymo2W7Wh3v8ALoLVg3kS8ro0JdnUtdn6Kaa/dAyZmfPT6+rthAZJ8Du0zOSK2YV0jBYaFnynJpBNzL4uqTG4nEEAXdC6nTvIGPzdhtqKFXB2KAPFF7MTZf/JztKodsPG1Mn3BnAkek3G3CBqazYI1lAb1QJySpaxKG0Dcc5tlwo6ZaENCtasoWQKytniNvtqnclG/1+cJNhQXm0XwmjruiSJDC5JBGKN4lTyMNlqLCeXtA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 IA1PR11MB7366.namprd11.prod.outlook.com (2603:10b6:208:422::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6086.24; Tue, 14 Feb 2023 21:37:07 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b%7]) with mapi id 15.20.6086.026; Tue, 14 Feb 2023
 21:37:07 +0000
Date: Tue, 14 Feb 2023 13:37:04 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <Y+v/ACL8U4EGPoFf@mdroper-desk1.amr.corp.intel.com>
References: <20230214001906.1477370-1-matthew.d.roper@intel.com>
 <167634932646.8403.15062940833257702380@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <167634932646.8403.15062940833257702380@emeril.freedesktop.org>
X-ClientProxiedBy: BYAPR08CA0026.namprd08.prod.outlook.com
 (2603:10b6:a03:100::39) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|IA1PR11MB7366:EE_
X-MS-Office365-Filtering-Correlation-Id: 7346f8f5-7fdc-4e09-8dc5-08db0ed39f09
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SsplzEdUacTOfHvBtqCNFl4yrtB2G7Qt4NIbnHAs9BxTsxQ9KgiMUGFkyvWp8A6wfE71WfKi1lIEx/B62c1LgYOVCtuDKEBl2A/iefozGlHYf9WXOkHu4271G7qKKSqU8s3/7fYzRFMAMMP+HQ87868ttikSLmh89pXdsZiw08S4wrN6KQ0Riu0d38xwQnr1sRAOZ3IT/wxVxcK3QmbVev8IflIzXoQ9SsGqg1xUfLPYD7rgzEVBePLW+6NB9bg56CdWEG1DddF23DdaAPhN34DZoPcg/4AJyJm7ARAGu0oHGQN9UDWKSmDIh+XEff4r6pMSI/JJHTflgcDim1WbQdN0olHAAFiPF+PkxOCIYQr0IlMTbdRKvoXH3lfrLp82+6ALk6Jxyn4bERTztguCha+CpOsnaxkTKy8r4pPFAxbadMK+Gr8YvK2mt/7CYiXz84LCLuvKAnFQFZWjRiVU+Sy/gaTaK19SlaINvi8E7uXpwlVbcDC9C9/GSDnP0N6wJ4Dmo8NSCKbZvplkGd6wIGV9XphdhiKNi7xO6h6NSJkmj7T7yvwJcj+PtCPSeNW+/p6dy2MfykWflY24FGSb5uiWZzXlyWq+JyI81mRvm0Er5CO53MVVTmxSwQTMKq+GEGb8xWIB+94ixpoLctzYqGvcp/ii2njXBoygzRuGjNo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(366004)(376002)(39860400002)(136003)(396003)(451199018)(2906002)(6666004)(6506007)(26005)(478600001)(6512007)(38100700002)(6916009)(6486002)(66946007)(66556008)(186003)(82960400001)(966005)(5660300002)(41300700001)(86362001)(30864003)(66476007)(8936002)(316002)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+7GirlEuuzoXsJlaZ1npgfGl6L79kUgpd0aBJFQdkOGjVEoLhUMh+TGHnvDa?=
 =?us-ascii?Q?1WoHGuiCqtMwOu+mEjiYXjzqFIkPZSDB/I2IatnXoBxwASdjkQycfFO9x4Eu?=
 =?us-ascii?Q?sc9z8eZEs37HPBNNCKwkXRh4pOG4HtogT8xv0/Ri7F7EAx83RkksRknuqhuP?=
 =?us-ascii?Q?m75CvlnzL95SN3gJtz7UmqCHSUU8/7PV8erpY2HOyzl8EezJ1CvYY158I00i?=
 =?us-ascii?Q?pMZSOnunZz5jXTr3/ZSOm7mw7B0Vv3N+NmlfDgKYIZBaKDhL+kFTfTPu4mhV?=
 =?us-ascii?Q?SZGjCnL/hbrjuLazmrTvA/V4z5o4mi91rU0+3eZwLOqsLSNINFMdl21saXro?=
 =?us-ascii?Q?A3/7QIyMzpCs2h9+iAhHkrkOs935JPI9+fQu760vk++JEK8OJvAccD/rRMyW?=
 =?us-ascii?Q?L8VJnvbvLnfdsD4T2r5nfuvYUXL5ABxFzTXaoPIqo3+GjbJgr48WGE6FS7VL?=
 =?us-ascii?Q?UxJ1O79HrI8n+5vSXgmR0y5/c4nyMrN7B8Jq4e/a9VLbd3k0EnDGB9oIjQ7j?=
 =?us-ascii?Q?wxxn1DM3aeaeQ/ocAZjlbcvAIxAOcfyywDgognZVdU52tlc5LuCqB4wl+V8X?=
 =?us-ascii?Q?/PqpDI8n5/ldWdXD4R3mU8KHf4Mi6HEwyIhfO0J2jzfknReRpCwxce6FYWYX?=
 =?us-ascii?Q?P4qc3lm9Yh75Ht73xjObQM+bxcSxwpWbwTQk54lh2dagZlkAVFAGlh+G0XrZ?=
 =?us-ascii?Q?i0WRE38zih/F4jvB9JVVs8GTxVG4zGzgtE8ncEO5exZUIAURuZc/S0o1yBUF?=
 =?us-ascii?Q?jlwwMi/NXA9GPxE03aEH+qy/HJAQRtRbMOyK7ymPPtM6/OVIJHd9sGHNeA2X?=
 =?us-ascii?Q?LFh/PlSiLZqN4PqaQbfm/dfBGP+kTnQ7BaCESV0CYaDU7rvPo/Zb/HFCfe9d?=
 =?us-ascii?Q?UvdD6wFk8YtJUiezilGcs88zVfAJavf1S8a0Ff0ob81mhSUWQtG4krKWX3St?=
 =?us-ascii?Q?ba487dhveWt51a5Y9WxMNkaufmYtKcKjvXe+E9ocJubqezNgf5oIam9ClW+3?=
 =?us-ascii?Q?7MfKBR1B1f717Qf3vStZMDvBfyIyJPyPFlZFUFuGJWDe1LuGZzBbtXD0fGbh?=
 =?us-ascii?Q?N5xYD7CKh1yAw9EuPy8Cy4ALhoWQ4AoYrebn0kUQopOvADItL9c6cDri5mX8?=
 =?us-ascii?Q?H4wk8Nh5hl7eWR2dNC+OEMpjh+BLG+tmgA3sCzUFPCFaehi0FTdmWIoxgvbr?=
 =?us-ascii?Q?jGmY9VDPbus84b9B34Z42FgMFc9iVtza+R2c62e/1nUz7RAxSrfDBh1uHyjE?=
 =?us-ascii?Q?d/i74Lm/+JFcw+bxQ/lKmu/P3BC6jUoQPqWh4AIc16hOSUztMlKtw6gOhJ+w?=
 =?us-ascii?Q?+v9XTdHHsyb012+aiqEycbV0k6N13Nbhz16RN5ZfIsfmxWIPCiXYTZbXCNgT?=
 =?us-ascii?Q?JNjdEg3QpwHfl0pdvyJ+2QyVTgp2sYHrkBZ0IfGi4RWBVr5WE8/A+T/35jFu?=
 =?us-ascii?Q?lszQtwCyt0LgdaF/r39FUhJh0Rj2SinohvpxAxAiEIdKoFNr5zHko9H51z87?=
 =?us-ascii?Q?ktnbNqJATwHYbLEsSx3MDoicA8eOuwPO1jYTXQmSCtmoKkzsakGf8lGAf8Fb?=
 =?us-ascii?Q?AAndvzqNndnHAIr6qZqe/kcYoS9CtyhJRbSH8YbKcWLxKutCyLXMoaVgj0gB?=
 =?us-ascii?Q?gA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7346f8f5-7fdc-4e09-8dc5-08db0ed39f09
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Feb 2023 21:37:07.4492 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hSBOY9PX/nsdd5f9Uaqpfgm6YOhhHyiJGCufWdUbWEwShe8UR3Au+FJnOWqRrEdJpWalF6ao35qm2rKlgrKEDyejo/cQ4wGJ3PbfAcz0k38=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7366
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/xelpmp=3A_Consider_GSI_offset_when_doing_MCR_lookups?=
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

On Tue, Feb 14, 2023 at 04:35:26AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/xelpmp: Consider GSI offset when doing MCR lookups
> URL   : https://patchwork.freedesktop.org/series/113978/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_12734_full -> Patchwork_113978v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_113978v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_113978v1_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113978v1/index.html
> 
> Participating hosts (11 -> 9)
> ------------------------------
> 
>   Missing    (2): shard-rkl0 shard-tglu-9 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_113978v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-apl:          [PASS][1] -> [ABORT][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12734/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113978v1/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html

Looks like a problem communicating with the monitor; not related to the
GT MCR change here.


Matt

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_113978v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_ccs:
>     - shard-glk:          NOTRUN -> [SKIP][3] ([fdo#109271])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113978v1/shard-glk9/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_ccs.html
> 
>   * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
>     - shard-glk:          [PASS][4] -> [FAIL][5] ([i915#72])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12734/shard-glk1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113978v1/shard-glk4/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
>     - shard-apl:          [PASS][6] -> [FAIL][7] ([i915#2346])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12734/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113978v1/shard-apl4/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
>     - shard-glk:          [PASS][8] -> [FAIL][9] ([i915#2346])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12734/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113978v1/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@fbdev@unaligned-read:
>     - {shard-tglu}:       [SKIP][10] ([i915#2582]) -> [PASS][11]
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12734/shard-tglu-6/igt@fbdev@unaligned-read.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113978v1/shard-tglu-1/igt@fbdev@unaligned-read.html
> 
>   * igt@feature_discovery@psr2:
>     - {shard-rkl}:        [SKIP][12] ([i915#658]) -> [PASS][13]
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12734/shard-rkl-2/igt@feature_discovery@psr2.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113978v1/shard-rkl-6/igt@feature_discovery@psr2.html
> 
>   * igt@gem_exec_endless@dispatch@bcs0:
>     - {shard-rkl}:        [SKIP][14] ([i915#6247]) -> [PASS][15]
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12734/shard-rkl-5/igt@gem_exec_endless@dispatch@bcs0.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113978v1/shard-rkl-1/igt@gem_exec_endless@dispatch@bcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-glk:          [FAIL][16] ([i915#2842]) -> [PASS][17] +2 similar issues
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12734/shard-glk9/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113978v1/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_reloc@basic-write-gtt:
>     - {shard-rkl}:        [SKIP][18] ([i915#3281]) -> [PASS][19] +1 similar issue
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12734/shard-rkl-3/igt@gem_exec_reloc@basic-write-gtt.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113978v1/shard-rkl-5/igt@gem_exec_reloc@basic-write-gtt.html
> 
>   * igt@gem_tiled_partial_pwrite_pread@writes-after-reads:
>     - {shard-rkl}:        [SKIP][20] ([i915#3282]) -> [PASS][21]
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12734/shard-rkl-3/igt@gem_tiled_partial_pwrite_pread@writes-after-reads.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113978v1/shard-rkl-5/igt@gem_tiled_partial_pwrite_pread@writes-after-reads.html
> 
>   * igt@gen9_exec_parse@valid-registers:
>     - {shard-rkl}:        [SKIP][22] ([i915#2527]) -> [PASS][23]
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12734/shard-rkl-3/igt@gen9_exec_parse@valid-registers.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113978v1/shard-rkl-5/igt@gen9_exec_parse@valid-registers.html
> 
>   * igt@i915_hangman@engine-engine-error@bcs0:
>     - {shard-rkl}:        [SKIP][24] ([i915#6258]) -> [PASS][25]
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12734/shard-rkl-5/igt@i915_hangman@engine-engine-error@bcs0.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113978v1/shard-rkl-2/igt@i915_hangman@engine-engine-error@bcs0.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@bcs0:
>     - {shard-dg1}:        [FAIL][26] ([i915#3591]) -> [PASS][27]
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12734/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113978v1/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html
> 
>   * igt@i915_pm_rpm@dpms-lpsp:
>     - {shard-rkl}:        [SKIP][28] ([i915#1397]) -> [PASS][29]
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12734/shard-rkl-3/igt@i915_pm_rpm@dpms-lpsp.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113978v1/shard-rkl-6/igt@i915_pm_rpm@dpms-lpsp.html
> 
>   * igt@i915_pm_rps@engine-order:
>     - shard-apl:          [FAIL][30] ([i915#6537]) -> [PASS][31]
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12734/shard-apl7/igt@i915_pm_rps@engine-order.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113978v1/shard-apl2/igt@i915_pm_rps@engine-order.html
> 
>   * igt@kms_big_fb@linear-32bpp-rotate-0:
>     - {shard-rkl}:        [SKIP][32] ([i915#1845] / [i915#4098]) -> [PASS][33] +10 similar issues
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12734/shard-rkl-3/igt@kms_big_fb@linear-32bpp-rotate-0.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113978v1/shard-rkl-6/igt@kms_big_fb@linear-32bpp-rotate-0.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
>     - shard-apl:          [FAIL][34] ([i915#2346]) -> [PASS][35]
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12734/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113978v1/shard-apl4/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
> 
>   * igt@kms_flip@2x-flip-vs-blocking-wf-vblank@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          [FAIL][36] ([i915#2122]) -> [PASS][37]
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12734/shard-glk3/igt@kms_flip@2x-flip-vs-blocking-wf-vblank@ab-hdmi-a1-hdmi-a2.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113978v1/shard-glk3/igt@kms_flip@2x-flip-vs-blocking-wf-vblank@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2:
>     - shard-glk:          [FAIL][38] ([i915#79]) -> [PASS][39]
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12734/shard-glk2/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113978v1/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-gtt:
>     - {shard-tglu}:       [SKIP][40] ([i915#1849]) -> [PASS][41] +3 similar issues
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12734/shard-tglu-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-gtt.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113978v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:
>     - {shard-rkl}:        [SKIP][42] ([i915#1849] / [i915#4098]) -> [PASS][43] +9 similar issues
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12734/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113978v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_plane@plane-position-hole@pipe-b-planes:
>     - {shard-rkl}:        [SKIP][44] ([i915#1849]) -> [PASS][45] +1 similar issue
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12734/shard-rkl-2/igt@kms_plane@plane-position-hole@pipe-b-planes.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113978v1/shard-rkl-6/igt@kms_plane@plane-position-hole@pipe-b-planes.html
> 
>   * igt@kms_psr@no_drrs:
>     - {shard-rkl}:        [SKIP][46] ([i915#1072]) -> [PASS][47]
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12734/shard-rkl-2/igt@kms_psr@no_drrs.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113978v1/shard-rkl-6/igt@kms_psr@no_drrs.html
> 
>   * igt@kms_universal_plane@universal-plane-pipe-b-sanity:
>     - {shard-tglu}:       [SKIP][48] ([fdo#109274]) -> [PASS][49] +1 similar issue
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12734/shard-tglu-6/igt@kms_universal_plane@universal-plane-pipe-b-sanity.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113978v1/shard-tglu-1/igt@kms_universal_plane@universal-plane-pipe-b-sanity.html
> 
>   * igt@kms_vblank@pipe-c-ts-continuation-suspend:
>     - {shard-tglu}:       [SKIP][50] ([i915#1845] / [i915#7651]) -> [PASS][51] +11 similar issues
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12734/shard-tglu-6/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113978v1/shard-tglu-1/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
> 
>   * igt@prime_vgem@basic-write:
>     - {shard-rkl}:        [SKIP][52] ([fdo#109295] / [i915#3291] / [i915#3708]) -> [PASS][53]
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12734/shard-rkl-3/igt@prime_vgem@basic-write.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113978v1/shard-rkl-5/igt@prime_vgem@basic-write.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
>   [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
>   [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
>   [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
>   [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
>   [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
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
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#315]: https://gitlab.freedesktop.org/drm/intel/issues/315
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
>   [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
>   [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
>   [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>   [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
>   [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
>   [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
>   [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4879]: https://gitlab.freedesktop.org/drm/intel/issues/4879
>   [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
>   [i915#5122]: https://gitlab.freedesktop.org/drm/intel/issues/5122
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
>   [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
>   [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
>   [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
>   [i915#6230]: https://gitlab.freedesktop.org/drm/intel/issues/6230
>   [i915#6247]: https://gitlab.freedesktop.org/drm/intel/issues/6247
>   [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
>   [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
>   [i915#6258]: https://gitlab.freedesktop.org/drm/intel/issues/6258
>   [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
>   [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
>   [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
>   [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>   [i915#6537]: https://gitlab.freedesktop.org/drm/intel/issues/6537
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
>   [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
>   [i915#6946]: https://gitlab.freedesktop.org/drm/intel/issues/6946
>   [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
>   [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
>   [i915#7128]: https://gitlab.freedesktop.org/drm/intel/issues/7128
>   [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
>   [i915#7294]: https://gitlab.freedesktop.org/drm/intel/issues/7294
>   [i915#7456]: https://gitlab.freedesktop.org/drm/intel/issues/7456
>   [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
>   [i915#7582]: https://gitlab.freedesktop.org/drm/intel/issues/7582
>   [i915#7651]: https://gitlab.freedesktop.org/drm/intel/issues/7651
>   [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
>   [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
>   [i915#7707]: https://gitlab.freedesktop.org/drm/intel/issues/7707
>   [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
>   [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>   [i915#7949]: https://gitlab.freedesktop.org/drm/intel/issues/7949
>   [i915#7957]: https://gitlab.freedesktop.org/drm/intel/issues/7957
>   [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
>   [i915#8018]: https://gitlab.freedesktop.org/drm/intel/issues/8018
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_12734 -> Patchwork_113978v1
> 
>   CI-20190529: 20190529
>   CI_DRM_12734: ffa7027c353c6821636559f42584dd11f527b0e0 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7160: 45da871dd2684227e93a2fc002b87dfc58bd5fd9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_113978v1: ffa7027c353c6821636559f42584dd11f527b0e0 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113978v1/index.html

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
