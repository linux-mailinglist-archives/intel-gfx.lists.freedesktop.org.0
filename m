Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5294E63DC42
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Nov 2022 18:44:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20D9610E10F;
	Wed, 30 Nov 2022 17:44:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C96610E10F
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Nov 2022 17:44:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669830241; x=1701366241;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=0zHHIH7lDA6Pa8cqGf0p+TnCOR6h1s5URTP/PgBLU7w=;
 b=diNj+OHjj0zMyq91XGLQYtR9rrZIbdvk316+d9pCv8j4e5mfDVzP+Vs+
 j1ke7Xc78hgGEnpsD4G7b/MZ4oV++hiHenc/q5+CgxTdqYDKWtqe/NZjP
 gyxdg7E3Xv2J30BqOabWZq77zWjczndFmOoKho4CU6nyiIeqqBzKWYTvm
 NDw9I5GHudeZwCcCCdcuyYzq/ly3YaRcYQFPcJBT+ydbWrKhUd4CAlADC
 kzO2Lf4fY3/VFIHd0prOagdxqgX9MSnlbh0CeJhYi36i9oSFAI+jCdrxX
 eTCIDoWPYwsdzwZ1YDjjC47GwiGdA/3sH5XC9MjW75IUzWdGguzQ2so7O g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="313089268"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="313089268"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 09:43:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="594746478"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="594746478"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP; 30 Nov 2022 09:43:43 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 30 Nov 2022 09:43:43 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 30 Nov 2022 09:43:43 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.108)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 30 Nov 2022 09:43:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f6gZOCWEbol1TLlJLAlS4/EJCXUISTUvnuyolhWgqlHWThBbuzXTu9/H938lQWwPwqLLaY4JRupAua1+Rv0AHWnvNeqexyW2uB1zl2f/vOW7Uh/dC89jWZuwGp1ifWAUXQWREx8J2gu9G+phjK2ARYMx1sPnMh9mDNn8U2B/x7a4OIjDGQGSlfxVKvbQVDLItIwoMErTHQ5w+Ju1zIdxSqOn54T67hSH2K93z0hjjCgTYRXEBex2EyzvUL3V27UO4X37018fS0Zf8ka9ScfOCwlxWbJu01qWB/zt97SCijzu/ZzDmWJlIXnmNM5MlEKMU4zvtl4xmmYQU7sTjh0XNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EGfnuf6XF02yZ+QphdJB4oX6Lt8tcHHUZTI8D/oPFNI=;
 b=R8IM46ovv9xS1PvWiEXJTq8ti8eaKQRnFykSAxVEhQWlSYI5W5j2Soi8m5yr9/4x0Q4PBGDv7ljWIFtE6hEZOgOCJZ2mMoM1kTPluTQZVPbwlmCN5Ng+Gcsn4dwwh4E9UX+xxc4n3EHJ6FcAXgE4Ph8CwYx9fuMa428I4RShaCwIwaCem7JUAFgxyvuhi4dNLEIc0/qDqCJdRrkmIAOe0tIDP/gIRwrLFnAwf8gUALtt42s6H+Qv3kfmVyhKPDdHj7MRDt/qGPuBK3cmALSdbfW5d96+WCF1vtgK24EGOmDyU4wtXsACbSMZh1F+Sjg1tGldXWJKR1AF8vxE2FRZZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by CY8PR11MB7033.namprd11.prod.outlook.com (2603:10b6:930:53::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.21; Wed, 30 Nov
 2022 17:43:40 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::48b8:5304:2638:3475]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::48b8:5304:2638:3475%7]) with mapi id 15.20.5857.023; Wed, 30 Nov 2022
 17:43:40 +0000
Date: Wed, 30 Nov 2022 09:43:38 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <Y4eWSt0+N8GUyCAQ@mdroper-desk1.amr.corp.intel.com>
References: <20221129203343.720860-1-clinton.a.taylor@intel.com>
 <166975951886.23270.10263424583192382816@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <166975951886.23270.10263424583192382816@emeril.freedesktop.org>
X-ClientProxiedBy: SJ0PR03CA0027.namprd03.prod.outlook.com
 (2603:10b6:a03:33a::32) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR11MB1632:EE_|CY8PR11MB7033:EE_
X-MS-Office365-Filtering-Correlation-Id: bda9fdc5-ae2f-4a88-58ed-08dad2fa6aba
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gdbC3E7kjlZVKaIHP1FlM8fKiJhj48qc5x2ZSGtdhZLFeaGCwvOjAhYpIkxFNJZGw/g2oKT+1SWTZ/+jkrEwQNjUzpHUvrJvg/kcVy1/91dF1BzZbgo9g52xzSfxUi4RSyJFnPs93HIOqLXMytfRXQC5VFbm7JQyQvPn3WPxZgb6VBSC/sPUlfem5LpoCyrPPRIiulmVJYQtBLh/TcEgmrLx2ay5Y5wK8bkGeFTamqCreXW/v263WnxOtIgYDN61BtI6jXg2E94BSikcrnf7PYSNTh00HCIHu9wL1T9fRHSF9bw9/bVn+QEB+G8KV2XjcNPIsuDtVUzYwJc1WsFkCcR7eGAadiKa8Z88zQ2HFgostGQXtZCiMe5A5iS9FJ+pBmfunxf6U8ET0yvPFscQkE+abyXzZMJXxHAW84jYIimm4iJXHu9tYGjy8yKwUkas/FBjL8OrH0k7l9Dbdzh5aap4kRx8jsGVxeFPqhJkBygTo/mIUshrc2ki5Bvz+RqQ12RACPBZrfmaJzAIwXSd0FtTdMgbU04mFKtwVMsAmKwtO2CR+HDUEw8q6zKb4lzLvW33ychjI+q1w6arAuoSwJ1yK+yXjdwOUCJ9eBqti40xD7e6h49Falw0XRbzBnaJT8rcjLlD0uZgiZ3HExiYCpeNIlNKz4xN2O+FyjdPIPuuzQ+WhltocdRc6i2xWal+mi3nnsDJLL6DUe8OC0PVlStVp3zp+0HOvoqyA1yFC8ay94qmk9avk+TRacz2ktUr
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(366004)(39860400002)(376002)(396003)(346002)(451199015)(8936002)(15650500001)(5660300002)(2906002)(30864003)(6506007)(6512007)(86362001)(6486002)(26005)(83380400001)(107886003)(316002)(66946007)(54906003)(186003)(38100700002)(478600001)(6916009)(4326008)(41300700001)(82960400001)(66476007)(66556008)(966005)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?bYjoIvlkeHt6luTapYahHGqD4gzyDmfbGDLL+23KKXPm+LK2M/Vi2xri6ik8?=
 =?us-ascii?Q?5P2CZIYzHfPQvAzZxa+IOxnJUtZiDFPJ72Nn+zHqWzzMoa7lUYRW4LCkWhCM?=
 =?us-ascii?Q?BwX9S6enLPOEOl+RzO6VV9qTHyZIb/JIUaXSmBBO7DpDqVI2rBC11HVm85jR?=
 =?us-ascii?Q?/jYyPIKHKVjuKcuhHBuuV97HudDZK1ao1pnJFSS8DbTdqSAU8rvwTYXP31sE?=
 =?us-ascii?Q?DOSWmTZnkDtYfdKYegf+YDYptXA39Z04oFuYNhiRfpJzOoPfNX/HpBFTtDCO?=
 =?us-ascii?Q?bzNJh2ifkVJjcs71ueeJrIZwNHTIGANxSTPOgIj8dxDfpz7aoIYnah2+xdHs?=
 =?us-ascii?Q?X24sj0sK8QTwRhjG8Dfe+rC7SBLhhusc1UHK2wFoLUcl+EyxP9v++DCyX8Zy?=
 =?us-ascii?Q?GV1pe/pbPTcAbH7NyxMTIiw0q/Kfz9DvTPzB6CJjSFYfi7QE4Z3NYHLLPaGL?=
 =?us-ascii?Q?mITqTaiqXgSBHlP4dmOcI1gVjbTbtqbvgudbxOyFdSoPoAieij9ZM0lZXMSs?=
 =?us-ascii?Q?9JXYBaI+EbVOdT0FHBsC4xpFzKhROYhrxUMO9rEfkash6/HsSeZ2rHJqMmbQ?=
 =?us-ascii?Q?Q1Zl2O6Zu9PbLdleDULuyyWx4Pc0ldgwTlitQVpiezFTNrSNL0ORWWeoD07G?=
 =?us-ascii?Q?W5TnN2i43i9TTVE4+kaNYlctdoI3Mbh0iNH0vALxcShwORTejGQENf5asHls?=
 =?us-ascii?Q?DMMPVyOE8QuqR8HRTEh3OPb5Na0f+cmNf1srIpcLewlB7AgrrjCgMmicej5p?=
 =?us-ascii?Q?wyoM9yqvJperQdDBoBMwqgVMPsyEHHDoM4fPYGNHz6GijvpykpUWBwNicCdF?=
 =?us-ascii?Q?Vg2RKTTWsUrXXVjuJyJthUq2ycsMnzwLJrsgY2nkTEEPv6mTL+Vzl53vvl6V?=
 =?us-ascii?Q?KSlNDx0Ib6M0qTpx3WT8qYYvtK0mbqsMAj5wO2m/4uxdvuTkmAhuMjWOdSah?=
 =?us-ascii?Q?NESzagqjw2D7wRHmxzWkN9XOjTiLk+RGeYp6E1ABuX/ohRZjludB5NDsEFYc?=
 =?us-ascii?Q?+9Ats9rJDHSaNEmrQFnyoke5As2qCbc4y+k1WOIBLEC6noKacb26pySLhJ6V?=
 =?us-ascii?Q?DgI776WGJJy4g/x2ldBWWS9h/XoTPHFWyxHiG1JBvJfF2BrKjz93X9y8myMM?=
 =?us-ascii?Q?/xkikRfZzOA+Ilq0HDldiniUmj06nHPwxZLBrGwjESiXAjsLgMZXW64g8yny?=
 =?us-ascii?Q?KwpLhPdnkWz9kzpWdzF7FQ24zlnYgBdxfnAR4mbzyzEzvW7/dH927G1bDAKx?=
 =?us-ascii?Q?/W6fMYVA/8h7QcRPvBwi0quCTt7vlI2rHvJRpsUvm9R6j9iqClHqoZvEP44P?=
 =?us-ascii?Q?k48FhRwEL4UT+ldTnZaePqa4e/q4L0z9r3q78LG9cWtfMC94CQJeu1nmLCkX?=
 =?us-ascii?Q?E9o391pBQQXOfZEF6+4e04tuA3i7O534BWrc13keKB0tCqeHtxPmVPW/znbb?=
 =?us-ascii?Q?hLemix8Zl0vwZv1C8z7Hhu+GoOAmgWQWtP0RkUpBCUu0TZFfUQSUTiTL1rjV?=
 =?us-ascii?Q?/fcsZuRnkeXBBQhAtoC1o9xCkgfap+HKiNJNrYInyFLPeCv4CNfXLrpJmwAo?=
 =?us-ascii?Q?Q1InUNG2g2vw4i5Bppa9paboCTjrf+OyWJR6bb33XitNOfSzN2Kp8V76kLgj?=
 =?us-ascii?Q?ew=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bda9fdc5-ae2f-4a88-58ed-08dad2fa6aba
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Nov 2022 17:43:40.3100 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 00AaRPWeedcjqCjuf2S5OsQWkxLSgnd5yZJ0m46tKh2hmAqMUSzEIfpAKfyestT+mvwYeDxzZAEinlz+VX8MimrI5iu5K6dlfFsMqK7MniI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7033
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/hdmi=3A_SPD_infoframe_update_for_discrete?=
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

On Tue, Nov 29, 2022 at 10:05:18PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/hdmi: SPD infoframe update for discrete
> URL   : https://patchwork.freedesktop.org/series/111450/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_12446 -> Patchwork_111450v1
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_111450v1 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_111450v1, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111450v1/index.html
> 
> Participating hosts (35 -> 37)
> ------------------------------
> 
>   Additional (3): bat-atsm-1 fi-tgl-dsi bat-dg1-5 
>   Missing    (1): fi-rkl-11600 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_111450v1:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - fi-skl-6600u:       [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12446/fi-skl-6600u/igt@i915_suspend@basic-s3-without-i915.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111450v1/fi-skl-6600u/igt@i915_suspend@basic-s3-without-i915.html

Appears to be the same as
https://gitlab.freedesktop.org/drm/intel/-/issues/7614 , just on a
different platform.  Not related to this patch.

This v4 patch is functionally identical to v2 where BAT passed and
full-CI's only failure was also a false positive, so applied to
drm-intel-next.  Thanks for the patch.


Matt

> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@gem_exec_suspend@basic-s0@smem:
>     - {bat-atsm-1}:       NOTRUN -> [INCOMPLETE][3]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111450v1/bat-atsm-1/igt@gem_exec_suspend@basic-s0@smem.html
> 
>   * igt@i915_selftest@live@gt_engines:
>     - {fi-tgl-dsi}:       NOTRUN -> [DMESG-WARN][4]
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111450v1/fi-tgl-dsi/igt@i915_selftest@live@gt_engines.html
> 
>   * igt@i915_selftest@live@gt_lrc:
>     - {fi-tgl-dsi}:       NOTRUN -> [INCOMPLETE][5]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111450v1/fi-tgl-dsi/igt@i915_selftest@live@gt_lrc.html
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - {bat-atsm-1}:       NOTRUN -> [SKIP][6]
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111450v1/bat-atsm-1/igt@i915_suspend@basic-s3-without-i915.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_111450v1 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_lmem_swapping@basic:
>     - fi-apl-guc:         NOTRUN -> [SKIP][7] ([fdo#109271] / [i915#4613]) +3 similar issues
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111450v1/fi-apl-guc/igt@gem_lmem_swapping@basic.html
> 
>   * igt@gem_mmap@basic:
>     - bat-dg1-5:          NOTRUN -> [SKIP][8] ([i915#4083])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111450v1/bat-dg1-5/igt@gem_mmap@basic.html
> 
>   * igt@gem_tiled_fence_blits@basic:
>     - bat-dg1-5:          NOTRUN -> [SKIP][9] ([i915#4077]) +2 similar issues
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111450v1/bat-dg1-5/igt@gem_tiled_fence_blits@basic.html
> 
>   * igt@gem_tiled_pread_basic:
>     - bat-dg1-5:          NOTRUN -> [SKIP][10] ([i915#4079]) +1 similar issue
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111450v1/bat-dg1-5/igt@gem_tiled_pread_basic.html
> 
>   * igt@i915_pm_backlight@basic-brightness:
>     - bat-dg1-5:          NOTRUN -> [SKIP][11] ([i915#7561])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111450v1/bat-dg1-5/igt@i915_pm_backlight@basic-brightness.html
> 
>   * igt@i915_pm_rps@basic-api:
>     - bat-dg1-5:          NOTRUN -> [SKIP][12] ([i915#6621])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111450v1/bat-dg1-5/igt@i915_pm_rps@basic-api.html
> 
>   * igt@i915_selftest@live@gt_heartbeat:
>     - fi-apl-guc:         NOTRUN -> [DMESG-FAIL][13] ([i915#5334])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111450v1/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
> 
>   * igt@kms_addfb_basic@basic-x-tiled-legacy:
>     - bat-dg1-5:          NOTRUN -> [SKIP][14] ([i915#4212]) +7 similar issues
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111450v1/bat-dg1-5/igt@kms_addfb_basic@basic-x-tiled-legacy.html
> 
>   * igt@kms_addfb_basic@basic-y-tiled-legacy:
>     - bat-dg1-5:          NOTRUN -> [SKIP][15] ([i915#4215])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111450v1/bat-dg1-5/igt@kms_addfb_basic@basic-y-tiled-legacy.html
> 
>   * igt@kms_chamelium@hdmi-crc-fast:
>     - fi-apl-guc:         NOTRUN -> [SKIP][16] ([fdo#109271] / [fdo#111827]) +8 similar issues
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111450v1/fi-apl-guc/igt@kms_chamelium@hdmi-crc-fast.html
> 
>   * igt@kms_chamelium@hdmi-hpd-fast:
>     - bat-dg1-5:          NOTRUN -> [SKIP][17] ([fdo#111827]) +8 similar issues
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111450v1/bat-dg1-5/igt@kms_chamelium@hdmi-hpd-fast.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor:
>     - bat-dg1-5:          NOTRUN -> [SKIP][18] ([i915#4103] / [i915#4213])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111450v1/bat-dg1-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html
> 
>   * igt@kms_force_connector_basic@force-connector-state:
>     - fi-apl-guc:         NOTRUN -> [SKIP][19] ([fdo#109271]) +11 similar issues
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111450v1/fi-apl-guc/igt@kms_force_connector_basic@force-connector-state.html
> 
>   * igt@kms_force_connector_basic@force-load-detect:
>     - bat-dg1-5:          NOTRUN -> [SKIP][20] ([fdo#109285])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111450v1/bat-dg1-5/igt@kms_force_connector_basic@force-load-detect.html
> 
>   * igt@kms_psr@sprite_plane_onoff:
>     - bat-dg1-5:          NOTRUN -> [SKIP][21] ([i915#1072] / [i915#4078]) +3 similar issues
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111450v1/bat-dg1-5/igt@kms_psr@sprite_plane_onoff.html
> 
>   * igt@kms_setmode@basic-clone-single-crtc:
>     - bat-dg1-5:          NOTRUN -> [SKIP][22] ([i915#3555])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111450v1/bat-dg1-5/igt@kms_setmode@basic-clone-single-crtc.html
> 
>   * igt@prime_vgem@basic-fence-read:
>     - bat-dg1-5:          NOTRUN -> [SKIP][23] ([i915#3708]) +3 similar issues
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111450v1/bat-dg1-5/igt@prime_vgem@basic-fence-read.html
> 
>   * igt@prime_vgem@basic-gtt:
>     - bat-dg1-5:          NOTRUN -> [SKIP][24] ([i915#3708] / [i915#4077]) +1 similar issue
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111450v1/bat-dg1-5/igt@prime_vgem@basic-gtt.html
> 
>   * igt@prime_vgem@basic-userptr:
>     - bat-dg1-5:          NOTRUN -> [SKIP][25] ([i915#3708] / [i915#4873])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111450v1/bat-dg1-5/igt@prime_vgem@basic-userptr.html
> 
>   * igt@runner@aborted:
>     - fi-skl-6600u:       NOTRUN -> [FAIL][26] ([i915#4312])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111450v1/fi-skl-6600u/igt@runner@aborted.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@fbdev@read:
>     - {bat-rpls-2}:       [SKIP][27] ([i915#2582]) -> [PASS][28] +4 similar issues
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12446/bat-rpls-2/igt@fbdev@read.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111450v1/bat-rpls-2/igt@fbdev@read.html
> 
>   * igt@gem_exec_gttfill@basic:
>     - fi-pnv-d510:        [FAIL][29] ([i915#7229]) -> [PASS][30]
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12446/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111450v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
> 
>   * igt@i915_module_load@reload:
>     - {bat-rpls-2}:       [DMESG-WARN][31] ([i915#6434]) -> [PASS][32]
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12446/bat-rpls-2/igt@i915_module_load@reload.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111450v1/bat-rpls-2/igt@i915_module_load@reload.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - {bat-dg1-7}:        [INCOMPLETE][33] ([i915#4983]) -> [PASS][34]
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12446/bat-dg1-7/igt@i915_selftest@live@hangcheck.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111450v1/bat-dg1-7/igt@i915_selftest@live@hangcheck.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
>   [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
>   [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
>   [i915#5278]: https://gitlab.freedesktop.org/drm/intel/issues/5278
>   [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
>   [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
>   [i915#6077]: https://gitlab.freedesktop.org/drm/intel/issues/6077
>   [i915#6078]: https://gitlab.freedesktop.org/drm/intel/issues/6078
>   [i915#6093]: https://gitlab.freedesktop.org/drm/intel/issues/6093
>   [i915#6094]: https://gitlab.freedesktop.org/drm/intel/issues/6094
>   [i915#6166]: https://gitlab.freedesktop.org/drm/intel/issues/6166
>   [i915#6434]: https://gitlab.freedesktop.org/drm/intel/issues/6434
>   [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
>   [i915#7229]: https://gitlab.freedesktop.org/drm/intel/issues/7229
>   [i915#7348]: https://gitlab.freedesktop.org/drm/intel/issues/7348
>   [i915#7357]: https://gitlab.freedesktop.org/drm/intel/issues/7357
>   [i915#7456]: https://gitlab.freedesktop.org/drm/intel/issues/7456
>   [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_12446 -> Patchwork_111450v1
> 
>   CI-20190529: 20190529
>   CI_DRM_12446: b1f6dee65cda65d43d4774f35292b0beea28f192 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7075: ae0ad0ffa147445cdf9d33c96a018f5a8b21a5ee @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_111450v1: b1f6dee65cda65d43d4774f35292b0beea28f192 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> ### Linux commits
> 
> e0938674a397 drm/i915/hdmi: SPD infoframe update for discrete
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111450v1/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
