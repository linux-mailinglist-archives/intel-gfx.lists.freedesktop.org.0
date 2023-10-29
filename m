Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0212C7DB194
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Oct 2023 00:53:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A24910E1F5;
	Sun, 29 Oct 2023 23:53:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6793A10E1F5
 for <intel-gfx@lists.freedesktop.org>; Sun, 29 Oct 2023 23:53:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698623599; x=1730159599;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=ECP3LUtItz8HyHM1bO5nTOCpAhQE7VRFfh4uasmvhvQ=;
 b=C/9v4Cbz0tZ4mLB5c+3L8MlKdcQFKhGFrjbb1uyxuWHoG33ph2JR/m7L
 AvUi3fUrvrYIhx09EGzk9C1Hcynwj2u4PiE/m61Q/N5thRQZqWjZt4Q00
 sZ87WqM7TBLVlw+ILuP725b5kmR0uMUGKHQUyc6xP0L1lJzHe9mWuK7rZ
 Mw0oGgvwe0jJfDr0oatEsQnwHjtiB3cQAMfgyQeOTRVM0JhHmvKT7iFw5
 +lryECFjDncN1lelhzVpqiIcd78HqgrNqj1Rtcs4m0ZuDampCqeYTk+ct
 hpe1uUsXToaiKfUkDO+Qc7HeKeNrNr8J3/ZAOL/0ottZD4/1ibunfreEl w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10878"; a="385192592"
X-IronPort-AV: E=Sophos;i="6.03,262,1694761200"; d="scan'208";a="385192592"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2023 16:53:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10878"; a="736593479"
X-IronPort-AV: E=Sophos;i="6.03,262,1694761200"; d="scan'208";a="736593479"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Oct 2023 16:53:18 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Sun, 29 Oct 2023 16:53:17 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Sun, 29 Oct 2023 16:53:17 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Sun, 29 Oct 2023 16:53:17 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Sun, 29 Oct 2023 16:53:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VOp+M2CoggoHdr+NwkpbmlGWc6s0gOKnI7W2PW1hpb3x+BB3T5oKRoT1/ReeulGdvyd7sOvISVdMwrsdDmy9QlOeOQMSwB9ayTJxB6UYArxpLzjGJaczmhWaKAVZyEYVQyHcXF7+Kh409I5o79XOfa+IwVw8HsOrjKL3D9NmhsfLKglKQcBueT6/ZsHxXuVLamR1VN5RvDuteTTzf3H7k5B7e7JPpDcz9gQOm2lLDctilTJ+B3iBgrAxWUfI1FZ/vOaypfnBrsZ2kTq69ocpG2bdPdH+7+HpYP5+BrMxt7bfzKC/WH8pCAhA7vc7EcNSAWqsYOPpaILzRxld5TRjOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i9plxYLsNa3NoIt5CKqP+2Txf3uu+VVam+E6aUgQTM4=;
 b=OiQ6CiyD9Vjg7B7p7QN0ewaI/YO3TvNyBE+11U3T3OQAoIsAKaDke87V+TvlbTDYhLj/yLsPEBZ1XveATt8ezujws7abKn05E4hwxck7L8qELuo0dXBtDocnUOmrnKhFMgY+CtIB2/ztBtmsKOm12dt94V0kCbemByPc/FV90AB4feFuEHXqyNInsSQlbL4hK8J3kIpAo2LgqibRJRsnYzRXuOPbcNrxg4dCtngTcZINFZTeyUYovuuizXp1EY/LcH+6aFdzgjbZXeqW3z9eel0eCT+t4PnhO925gjRKpDL8gpGXnY+PyNhaiAC33KHaEXwXueWwkxZHyzoAVYMx7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by PH7PR11MB6905.namprd11.prod.outlook.com (2603:10b6:510:201::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6933.27; Sun, 29 Oct
 2023 23:53:13 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::fab8:8ece:c8fe:fc7c]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::fab8:8ece:c8fe:fc7c%4]) with mapi id 15.20.6933.025; Sun, 29 Oct 2023
 23:53:13 +0000
Date: Sun, 29 Oct 2023 18:53:07 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <xsrpqoelcbg2rvdhngz46b2j66mxypx7zpvl362oxfpqen6png@tznhdmho27j2>
References: <20231018222831.4132968-1-lucas.demarchi@intel.com>
 <169852292494.21161.4756884170753565681@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <169852292494.21161.4756884170753565681@emeril.freedesktop.org>
X-ClientProxiedBy: SJ0PR03CA0135.namprd03.prod.outlook.com
 (2603:10b6:a03:33c::20) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|PH7PR11MB6905:EE_
X-MS-Office365-Filtering-Correlation-Id: 7666fbf2-de98-4a36-f80d-08dbd8da3617
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OzAorm36rl8CUVHkFQsxMuNQz+fRGDNV13tei0NaEedEJy1hQN+TcfA68zdAS3mGaedXwjRMpLYUwOtx6GAVJfYQ+iGthWa9/PjgZIIJMxkfe7ii3O2Fsk986THIyo0A0zXLJ5I5BiXenh6Zn3Hp0DNsgu0TDUfIUoo+Pi3WOcjWRYnxuoZSHCdmJDTaPBuiCEwIRuyVS/KhKsIfC5HO5xsNaWNwV59QhL/8IhyRpmOlM62lWn5SU3Bix/ERSXsWcZqxv49d85MvssmccEKPSM0wRe2ZbQSd2YafFHbR/jFUvZup72qbjxqWSSjePV73WWilpqXLljvBDkbhjKn8mfBmtP0gko4IMe9XAhb3Spmo0fb2wjR92B6347OLpEkQFcS4DpkEqLwrJ/w7RWPFt3BLoXDprxGbrY+1HWrGSQVWHYnLDJ/kgsmUwzbJ0pVifaWrV46qqksG3Ul3bqnb/sExHpxQEtjPqv8m2kxpYN7ahknGSHwVGR30+lOJsffHI69r6DKmvXoIWdFRSHFX3QByS5WwXPF/h2hW9EmNCPgLchd5lLqoIBLa7N05gy39
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(39860400002)(136003)(346002)(376002)(366004)(396003)(230922051799003)(64100799003)(451199024)(186009)(1800799009)(83380400001)(6512007)(26005)(9686003)(2906002)(66946007)(66556008)(66476007)(6916009)(316002)(41300700001)(8936002)(5660300002)(6666004)(6506007)(966005)(6486002)(478600001)(82960400001)(38100700002)(33716001)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ebftjVjiv6KJ4cV+i1DhjZA8dqIoGfMpZmcsluNu6KK7uWb5jU+emAuXqK16?=
 =?us-ascii?Q?b4lYj60gf/ouqUqq4Pr+7TLwNsMUC8IDQ3Fl7oVKB3+6SvRwlc3SHfQqntc0?=
 =?us-ascii?Q?20ErG080Q3eK7A5pQy4k9hFZadYVp6YPMZAdSSnVUSKvta4qwk+Y68paKBFl?=
 =?us-ascii?Q?ot5hVsg0vSKZfjcHtK7NyCUnFAFZ0HrCUI2copB70e9SMF+69X07EELMwbZv?=
 =?us-ascii?Q?ayCq3GFQXEacLZEySXdiqVhED7zKnPSUZaT1AO8+xLmDg4XFnyD7trITIOmu?=
 =?us-ascii?Q?bmXz5z2KEEpMzM4ele3QI1CHvxqiauohjNpoTjoWJWOMTv/BLSr8HA3peshJ?=
 =?us-ascii?Q?fOLE0CuYlZtvaB8E1LK4Afw93kNp4jP0yAMzM9PmRQ5uAh+s4jDqUM1w6Gmr?=
 =?us-ascii?Q?roOsPdU7ngHNLJNm+gr0IXj3FF594BXsrLwTQaOrKjUCoebOTfLeaBABA6pu?=
 =?us-ascii?Q?WpRTpWN0kYtRl/6tH4T4ZkOv2Vf/1r7kZPxIY9F9Nr3/8h78tqUzH/2HMIL4?=
 =?us-ascii?Q?CrbCuB2YME4e6JY6vs7t05FqjXuGQVTlVaLx1f9+wFIZX9OicJCMOUdaaL3k?=
 =?us-ascii?Q?eL8rAfz+LVoY9AfeinI/cs60rGqXHAlTgy/VUegc6ODcivV15xgqYaUqnzKW?=
 =?us-ascii?Q?jLpvxzX8loIlBA02ukKAFkqDw9PtjYnUr8XsXGENrqQWjqgMPB/bjQgiJ5hD?=
 =?us-ascii?Q?tzQPHIHa9DcPFNRq+7+t5K5pnqIuI3Sk0BW7N6HZCCCd2f7cZbi4sTiuOKcz?=
 =?us-ascii?Q?MfzihTvdLQ9hewCCKFRePn73z0IWKuN2l8cG+MSNuGPjlyuO45fybq8C3n1i?=
 =?us-ascii?Q?g3svmwawtbZV9bTBI8cnqp77kj+YJnNBik1ZwB7nvLDEiwgyQhRD4fWgfwa8?=
 =?us-ascii?Q?whuKnbnI1/4bTEYln49WHOtZE1NpcT0WUcbA7abXXFaTcW0bkCGO9BOEM5wd?=
 =?us-ascii?Q?Gt+lDMhj1qLDAYpALBTgavlB0+o1x5fMP68meQR+LGrRbl8lrAl3w/vwyBeK?=
 =?us-ascii?Q?y3XyxI3hn8OOFoNk7YLgZedfC0BxPRfF1L7IjtYp84OwOQw4wLd8AusGDiSQ?=
 =?us-ascii?Q?xYEpfVsZ+fjVwm8EAxDxRdnNQqqgmAL4VyCMo5V2t1wMn9C6/u8v0u+j0yRV?=
 =?us-ascii?Q?f/6KDLawBSgWh/pC92I99UKYI+orNZVmm38MT/+OItrs2UXRO2l1NdgWdv+w?=
 =?us-ascii?Q?qIF8l0og8N3/sM/ieSkNWZIITaJCf4g/j4fQAPt/Y3sgYxjAMWqzwwscWhyV?=
 =?us-ascii?Q?MWPTccPhCzdP52fIYPckq6d6JeD5uNwaGlZcdiILhPPdh5IJH0pc+hoMxUx9?=
 =?us-ascii?Q?NJM26xyBxciq9kCXk9qAjNEY/k3s9MxohGtjfJWyKh5paAaodL0g8ed7hoaJ?=
 =?us-ascii?Q?hL8wKRx/lZOK5HhJEQSKrVu2Vc3hGh8i5nCudnYbKPBTstrf1YH8pMMyXwDc?=
 =?us-ascii?Q?zBrAknA2vmxU/w8TlHXrkg6tQ+G8ccE86OjIqong5mJU/bXHZxyP2cNRBDO5?=
 =?us-ascii?Q?PWGXN74uBig91IoiQOBMEi7wNKBXyKgeHHNqA963PU5Xy6Wdjbj4fePuB7e8?=
 =?us-ascii?Q?AlNteeDva2pn6NW9ean5KmG/X1m09sahFmUmLCXIP/gcMCXpdsc559gLg8px?=
 =?us-ascii?Q?5w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7666fbf2-de98-4a36-f80d-08dbd8da3617
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2023 23:53:12.9499 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aIJN0riEiPTPTFp2CVoR4BTjimVysZiWGZ67zwYhDGVGmh1KZgwnOquQauTP1OLl1shGo3qnmPHRmoT/dWeJdHQggyY545tQzwpUNBWxFho=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6905
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgQ2xl?=
 =?utf-8?q?anup_a_few_functions_in_C10/C20_handling_=28rev3=29?=
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

On Sat, Oct 28, 2023 at 07:55:24PM +0000, Patchwork wrote:
>== Series Details ==
>
>Series: Cleanup a few functions in C10/C20 handling (rev3)
>URL   : https://patchwork.freedesktop.org/series/125323/
>State : failure
>
>== Summary ==
>
>CI Bug Log - changes from CI_DRM_13799_full -> Patchwork_125323v3_full
>====================================================
>
>Summary
>-------
>
>  **FAILURE**
>
>  Serious unknown changes coming with Patchwork_125323v3_full absolutely need to be
>  verified manually.
>
>  If you think the reported changes have nothing to do with the changes
>  introduced in Patchwork_125323v3_full, please notify your bug team (lgci.bug.filing@intel.com) to allow them
>  to document this new failure mode, which will reduce false positives in CI.
>
>
>
>Participating hosts (12 -> 11)
>------------------------------
>
>  Missing    (1): shard-mtlp0
>
>Possible new issues
>-------------------
>
>  Here are the unknown changes that may have been introduced in Patchwork_125323v3_full:
>
>### IGT changes ###
>
>#### Possible regressions ####
>
>  * igt@gem_exec_balancer@fairslice:
>    - shard-rkl:          [PASS][1] -> [SKIP][2]
>   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13799/shard-rkl-4/igt@gem_exec_balancer@fairslice.html
>   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125323v3/shard-rkl-5/igt@gem_exec_balancer@fairslice.html
>
>  * igt@i915_module_load@reload-with-fault-injection:
>    - shard-tglu:         [PASS][3] -> [INCOMPLETE][4]
>   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13799/shard-tglu-8/igt@i915_module_load@reload-with-fault-injection.html
>   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125323v3/shard-tglu-7/igt@i915_module_load@reload-with-fault-injection.html
>
>  * igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-submitted-signaled:
>    - shard-glk:          NOTRUN -> [FAIL][5]
>   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125323v3/shard-glk5/igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-submitted-signaled.html
>
>  * igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-submitted-signaled:
>    - shard-rkl:          NOTRUN -> [FAIL][6]
>   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125323v3/shard-rkl-1/igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-submitted-signaled.html


not related to the display patches in this series. Patches applied to
drm-intel-next. Thanks for the reviews.

Lucas De Marchi
