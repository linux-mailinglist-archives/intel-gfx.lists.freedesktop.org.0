Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50C2D64E526
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Dec 2022 01:25:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74AF310E0C9;
	Fri, 16 Dec 2022 00:24:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B26710E0C9
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Dec 2022 00:24:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671150286; x=1702686286;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=nVFXOPWz3zNjdRmRE3mbqjFaAsT/Gpynf9lg543PDDI=;
 b=gIZBMft6IA/CQ/CSlIfd6ANXNqIOJvp39E924UYjKHVvlnG4zq5Wp1vq
 PYZrTEWCImzcrrREmaXqCsjLBTT0M9azHwTRiFcIdH/Shj5Wkip1aGJ12
 gwE8DWJ/YGAEh95+l1i4yPqSx1ffvzvFCq5MAG9P8ktIsr7cb+j7SVNpi
 8ivCnJJLn7VuRdFYTl6PRQPP8LyOBRbjyS2oMiHd54i4xzQ5HNK7pGltK
 0NrzdD2PI+ViorIbYIxFAmyyJ7g/5IH6EtTQSUJB+4EdC+KqQJ++I+RE3
 CyQ7aBsg9Xn1gJntnkzNUKLgFg4dJlWNSOnPmK1KM/Hes7ULzKciUmobK A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="405101820"
X-IronPort-AV: E=Sophos;i="5.96,248,1665471600"; d="scan'208";a="405101820"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2022 16:24:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="756554442"
X-IronPort-AV: E=Sophos;i="5.96,248,1665471600"; d="scan'208";a="756554442"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 15 Dec 2022 16:24:45 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 15 Dec 2022 16:24:44 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 15 Dec 2022 16:24:44 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 15 Dec 2022 16:24:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KzrpgQguYNN3Als1Lr/86gXreGgO3HyQVkQW5njyBBxzP4XqUwbhTVy6ZN/iar7PyVfUiMN1Lvmxnm0eQ+YWtfrb8nEKCy0e3EzLudfjzftzs953AnMRaNn1+Ogq/M7J6ZEn2UFSqDzuhRlK0VDIbAvFBawf6IhbqbSyfjyWZHq9Op1hoMca4Z2HXnLbQ1VB3f7yZZoCYHVQ9PDPTaijU0dNeTPjO6oR/gV5PTHctJLNm3tZC/ISxZi0VdatjDZWsRBW/rj3Fb8FGTeWTeTPMIapye57BwoWYNnTAj5u1ndRPCZQ2UoTaivbAYcTnFj3nYj5ndpxaotUA/ROlMrM7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ORq4t1ltVb2aF5eSoXBQNOvzrA/LSvsGk+2LVXxxOTM=;
 b=nxvVD6pP1i+9lT7c3yM7Ostj9ETkAK/q/TrZx/DWDAW76f/W7QyCn1qqgNIZw+9XRPQ9VsrlhHVQHriLxTDDoYEppurKBoPZnpEY8y4vjTmHqLOBH6vV2jeFGBEbonxirvk+/Ux0df+muPrb2wATHIn+b1nthaO7f8sP1L9SIq1XLUIeU7O/bDOzlGie+3ag1C0fQl8hjOORfy5q8b51upmN8r+mUpOa/mz/BVUntOXkhLgXC8whDRoLY/U88oAODWD6gMMO+xDqevOGPkwcZmAH+s6w9ZTKY1sNKeeHTt3OXe8GCC+LbJAUsvW/K4/+rUcytNw3Te8kNw1OS674OA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by PH8PR11MB6999.namprd11.prod.outlook.com (2603:10b6:510:221::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.21; Fri, 16 Dec
 2022 00:24:42 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::22:fdef:cea5:e8f3]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::22:fdef:cea5:e8f3%3]) with mapi id 15.20.5924.011; Fri, 16 Dec 2022
 00:24:42 +0000
Date: Thu, 15 Dec 2022 16:24:40 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <20221216002440.g46e5qtoirg22k4n@ldmartin-desk2.jf.intel.com>
References: <20221215001459.3759580-1-lucas.demarchi@intel.com>
 <167113678761.25118.837597193465768951@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <167113678761.25118.837597193465768951@emeril.freedesktop.org>
X-ClientProxiedBy: SJ0PR13CA0175.namprd13.prod.outlook.com
 (2603:10b6:a03:2c7::30) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|PH8PR11MB6999:EE_
X-MS-Office365-Filtering-Correlation-Id: 53fb478d-20c3-4c1d-b088-08dadefbed29
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /PhYkJUFMZ+iXvkuTah0lLO2A9pH35M9imXWxffIbaunL9bUJz0e//rn0CIjSWd2vhCpehIWrX3+Um/PtAeDGU4sYliGcE1DPvYOym9IWFBNyfWOu7cNMZyCK9x7b99OrBDdt9qH5PGtYY4Ptu0i42/V3a+ldPWheCStpRFJZ497Mg482KZSqjD+fHoTUq1Sv0ZEkqfkYoZiw1upLnmsdroF9viteYamn5Z619U+tRCW55qaQ1MNlakam7YLqrjdmmlPQCp6HL2sHPrqH22tRVvdABQiKu27yelq8CeLKZaBHC43L6nhYchK/KyMI9ZWHiBDEL9FTsbU+GUhiWMt/cCwWj1wbkuL4vTNa01x5CrhfqcpO34H9TJ6sD8TEj3vzk2eYNxJDeLbtKJ8RkXEw9cDRCzrMi+WpZFXAWi4HnbAu9u61G4peTRjXKL9CSQEbTfzsa67UI6hKLbgB6syXOIynNc6zzo32QpjjVOs1FR8siplEJoXbHjunUuei1jXW7Nhng4YPxUW4qP9+6PnX7FwTugA5TCPt2SX2kjJk4TH1i2Fr1KzzKrChtk7LwUpMSFJVzfbW6J+ZQHIrINqlswHFbaJoA7d59pTxcHlQzhMqwWEeBOVkDlKFFMWnQcz7aqmvTSyYGACevS8CIfzxPcqdWdj4Zgo+uRiKGQjMaU7O/aLzFqAAUE9wGGQ91Wl0A7V7WkoKbjcJn0ofdp0iQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(376002)(346002)(39860400002)(396003)(136003)(451199015)(82960400001)(38100700002)(86362001)(5660300002)(2906002)(66946007)(66556008)(66476007)(8936002)(41300700001)(107886003)(26005)(6512007)(186003)(6506007)(83380400001)(1076003)(316002)(6916009)(4326008)(6486002)(966005)(478600001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?KtyjajBLVnZDb9/x9ELslDUcwjTZ5WNb8DrIXCBgI2yHViiw3m6cDS/FOy3j?=
 =?us-ascii?Q?uBy+PL2u+V/smIHsQjg9WrxNGMxQpaPtbFHSjwES3Y9P/AtDaeSYvRqiLMM1?=
 =?us-ascii?Q?T+OozLJccQZYrzYBKTb5HtLDrp2roMoEVGob2NezGsXCNZb/cXplYrOIZw8J?=
 =?us-ascii?Q?zWdAL4/xNS9Y6YMfXQ5PLCFH5TG/0Rp5zKucGukcFAG1kbIJtU0rbVCwtRpT?=
 =?us-ascii?Q?pfPGLNBRUeZykzOsVtgZWSqn4tdTx1fMDZmePALs1lfaHPE3yrw/Dchl46OP?=
 =?us-ascii?Q?JAeCUnEq08EoFsv1bqJlHhw1kjpUH3VQDZ7ZPnnswdaxV7yuqY4YNJptpNDZ?=
 =?us-ascii?Q?ubaYzH3tQmc9lzlgNkuX3rFyFyWLaTzRKKEFKWRkM1ajNbEyK+p6FELmCswl?=
 =?us-ascii?Q?UYSv0wvYc2HeQTjev/Zb1pb44UlL+i17EzMMDI/MzeZBprxGkSZvCE2QBX59?=
 =?us-ascii?Q?4o//GFfQsu5w8Hv3Lh743tci98E9cL/9EAwW8rhSUKm4tmTt6+uBoPSA6XDk?=
 =?us-ascii?Q?+K/+tp7PxCLoffkt81mXRfWLmLLqgNlQu9QH2aw/+73bvWCMjw2oMVu+hZxT?=
 =?us-ascii?Q?y1tekwty8Lr54maCCUEizUHWXfs/xju8O3cKL4FeffrOtD9XMCihPryvB3yb?=
 =?us-ascii?Q?KF3qQgSLA1xYIf3+tMG7hQ7g1XTsiO5WKEnOyNQ96AzhS52hu8IXuvsBAEQX?=
 =?us-ascii?Q?+0B/Gl65FmctDrKf88D9aK5vgEr/e1h9huU7zkLjpnBz+2aLBohRgo4bQbOi?=
 =?us-ascii?Q?eET6tKQhr58vXDdAiZlcTCbYaDrB5HmBm21i0TfP+HhP6rcPzHbYKH4QWu4f?=
 =?us-ascii?Q?+WbjK6kgE1kGWt9i/Z/+ZpNtMvtqQM3EnbO+I6AB57itdjdbVJHyHlpS9X3u?=
 =?us-ascii?Q?uziFvtSDCZLHTIdA8P6Er9vNqWPC0K7BLTgz6/4F69aqLbIHUeeagKey7sGr?=
 =?us-ascii?Q?HOQSIqkBsrNtOqV3FYG7NJ3r6bPGNUwW/k6plIO+dCla5hX0nkQxKnEzVsoa?=
 =?us-ascii?Q?aWG1NbhUsUQORQ8Smg6GuMLhR017qUiSVbpBufXIHFkxzwYiXngpNUHJ9PKJ?=
 =?us-ascii?Q?wQXe2ibweHKcROXMXFY6IUy8NOGYZ19EVUvfoX0ao+Qtb/LO1t/RG3MKiOLa?=
 =?us-ascii?Q?+40Rm1pj0+2fFhkuCTM2KgX+pH6lNDQxumTexhrwpITQsuuJj4ZKwfLf/i8Y?=
 =?us-ascii?Q?STmeE/dEWOSSkkvoBNWMbcgUH20/7jUmnwfnc1yGRqnTnX+5skZOb9KyTCHY?=
 =?us-ascii?Q?q4lBh0jIM4p7yQtOKNcOTAzwdDPzMEZoJeciJCgeMDduHYeHGwZtZp3cWc5t?=
 =?us-ascii?Q?FqcRCGLUiUadJsOYIIyMy2w0hkTf0+co/SVc66fCROi+mqO5Ooi1FCBMjyGk?=
 =?us-ascii?Q?bnMYe5BT/h/ec7ajw0/a5BRAVsdsiv0/ZU93jMSFR56ZXSzgcj231ZJnJV26?=
 =?us-ascii?Q?d9XiH/C9dQmU8qzB0ob2gd/Wi0f1SPPzghzuFQynv2yHuWu8OPkHSR5BAvg1?=
 =?us-ascii?Q?m8uj/IjXYduJDGfEVL1XGAU3ifC7uoEapweNxn972JdSUWTLX8OfInjJf0TF?=
 =?us-ascii?Q?f+0sirl9BhveEwLaUeYonp5y2c7+QkSbsFG4vUUlIDiysdQNKU7Caqstrhcu?=
 =?us-ascii?Q?yw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 53fb478d-20c3-4c1d-b088-08dadefbed29
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2022 00:24:42.5011 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UFSeEdd4yrtiMkF9F2pL4gkzGYXbzzt2zfRRIaujXzCP5DSO1czK7dZSpXRG9gHPABpy+cNv+WPI4bTwSwwWEFLgUHAn5WI/7q2zu0tXwHw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6999
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_ratelimit_errors_in_display_engine_irq_=28rev2=29?=
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
Cc: saix.nandan.yedireswarapu@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Dec 15, 2022 at 08:39:47PM +0000, Patchwork wrote:
>== Series Details ==
>
>Series: drm/i915: ratelimit errors in display engine irq (rev2)
>URL   : https://patchwork.freedesktop.org/series/111951/
>State : failure
>
>== Summary ==
>
>CI Bug Log - changes from CI_DRM_12511 -> Patchwork_111951v2
>====================================================
>
>Summary
>-------
>
>  **FAILURE**
>
>  Serious unknown changes coming with Patchwork_111951v2 absolutely need to be
>  verified manually.
>
>  If you think the reported changes have nothing to do with the changes
>  introduced in Patchwork_111951v2, please notify your bug team to allow them
>  to document this new failure mode, which will reduce false positives in CI.
>
>  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111951v2/index.html
>
>Participating hosts (40 -> 40)
>------------------------------
>
>  No changes in participating hosts
>
>Possible new issues
>-------------------
>
>  Here are the unknown changes that may have been introduced in Patchwork_111951v2:
>
>### IGT changes ###
>
>#### Possible regressions ####
>
>  * igt@kms_pipe_crc_basic@nonblocking-crc:
>    - fi-kbl-soraka:      NOTRUN -> [INCOMPLETE][1]
>   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111951v2/fi-kbl-soraka/igt@kms_pipe_crc_basic@nonblocking-crc.html

Unrelated change

Lucas De Marchi

>
>
>Known issues
>------------
>
>  Here are the changes found in Patchwork_111951v2 that come from known issues:
>
>### IGT changes ###
>
>#### Issues hit ####
>
>  * igt@kms_chamelium@common-hpd-after-suspend:
>    - fi-pnv-d510:        NOTRUN -> [SKIP][2] ([fdo#109271])
>   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111951v2/fi-pnv-d510/igt@kms_chamelium@common-hpd-after-suspend.html
>
>
>#### Possible fixes ####
>
>  * igt@gem_exec_suspend@basic-s3@smem:
>    - {bat-rpls-1}:       [DMESG-WARN][3] ([i915#6687]) -> [PASS][4]
>   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html
>   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111951v2/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html
>
>  * igt@i915_selftest@live@gt_lrc:
>    - {bat-adln-1}:       [INCOMPLETE][5] ([i915#4983] / [i915#7609]) -> [PASS][6]
>   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/bat-adln-1/igt@i915_selftest@live@gt_lrc.html
>   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111951v2/bat-adln-1/igt@i915_selftest@live@gt_lrc.html
>
>  * igt@i915_selftest@live@slpc:
>    - {bat-rpls-1}:       [DMESG-FAIL][7] ([i915#6367]) -> [PASS][8]
>   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12511/bat-rpls-1/igt@i915_selftest@live@slpc.html
>   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111951v2/bat-rpls-1/igt@i915_selftest@live@slpc.html
>
>
>  {name}: This element is suppressed. This means it is ignored when computing
>          the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
>  [i915#6257]: https://gitlab.freedesktop.org/drm/intel/issues/6257
>  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
>  [i915#6687]: https://gitlab.freedesktop.org/drm/intel/issues/6687
>  [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
>  [i915#7609]: https://gitlab.freedesktop.org/drm/intel/issues/7609
>
>
>Build changes
>-------------
>
>  * Linux: CI_DRM_12511 -> Patchwork_111951v2
>
>  CI-20190529: 20190529
>  CI_DRM_12511: 2f1afd3898412b8487d420921f34fb5340e15e5b @ git://anongit.freedesktop.org/gfx-ci/linux
>  IGT_7095: 0d821bca4e1086c96bb8928a0d24e707396e9373 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>  Patchwork_111951v2: 2f1afd3898412b8487d420921f34fb5340e15e5b @ git://anongit.freedesktop.org/gfx-ci/linux
>
>
>### Linux commits
>
>f635e7ac7aa5 drm/i915: ratelimit errors in display engine irq
>
>== Logs ==
>
>For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111951v2/index.html
