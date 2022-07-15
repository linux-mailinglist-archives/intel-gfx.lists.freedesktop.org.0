Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F119576ED0
	for <lists+intel-gfx@lfdr.de>; Sat, 16 Jul 2022 16:38:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81D6310F7E0;
	Sat, 16 Jul 2022 14:35:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E266410E242
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Jul 2022 16:48:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657903691; x=1689439691;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=qmsDU/zYvP/8bMtkUfCPfgFgpBZPPMZAnfFCqPMNZbc=;
 b=nf3aMBUrFsVQH0RSeV8iNdN0ixGdWjG4R0SYKIE/P27OP6hl/PjcFsNt
 HwON80ZMYjV9VWd5Yn81hAJgfkem0Z1lyBOwP3jRAuwwbeFUQDANyaktp
 7l1uA1/fS9BgWA4H4HDctYHbAVFSCpyOURgpJ3uBkjk7Ti7biVGNU22KH
 vCLG81d7C5xz9i3jSEMSyQiISHyozSjX0w44w7EGKY//unzNYNb/dkldT
 xeNzkK0A6hvpXmbrVUYWuSnDv/u2hUF3nbvv4ETQ16KAoR2HB06nQpTAZ
 +kqzRGCBuj3EBMYd+fw1zKkJXtE5vokOoTP4lJP14TfBUPUyXlI/Y51ts A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10409"; a="286575246"
X-IronPort-AV: E=Sophos;i="5.92,274,1650956400"; d="scan'208";a="286575246"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2022 09:48:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,274,1650956400"; d="scan'208";a="842569962"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga006.fm.intel.com with ESMTP; 15 Jul 2022 09:48:10 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 15 Jul 2022 09:48:09 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 15 Jul 2022 09:48:09 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 15 Jul 2022 09:48:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=km0hXm3ywC3JP9EHYEvnX7LbswLTmeE0c4R+lyAus42mDzOg6xzPY1aJ++tOjjnqwjqw5P5AjGuRc7ZQD9WjSurejhspV2cAwX9WRREoxl7tXs8EyClPBcNxRGdaQ36Sg3N79DrqfMib3whxSKcEn7f8zqQiY258UNkY8B7TKkU8wzHxo9t74CoamJr7qWttWt1Mh1v8EOtZ8fc8PQQC7iYz5ViMZnH4jPJZRhSSkeMaieHvq0f7g0n4o6djk5BopEJ40hNKpMByo5ekybsm+jOOy/HFgNpiDbqRgUE2HPanmmfb5CVY0jxGxXLh6P0JqGqxsVPAH3l4gKMIzG6/qQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KmGegGKmzaxaTasUIIA3qYWQDa912s+lmJPYM5VB94Q=;
 b=nWe6sMZstKtiUPvKqRVXpoYLiKKXCpedSbR0yhT5y3XGZ7HR8y1GyEbY3XZlBrW/RLf9F2c7ont9Mjp8KS8h6CQcHZV1URbwcdqevzq3x3XPjgmxV4+wMrfb0kvx4s/yT0R8imKDqFe6Hc3xnBpmTk8Ohm/zIsmfAZShwZUBiGshUAsybi0pYWjDwapIKWc/z2lDg5LZUsDaNzMVxU4AdUxcY2uNIYibnsjUfyY1PP4E6dMS6/AU24azZLz9Q2FMTWptxatZqZZsCgCryLp5QA8ZBklYn1gw/dpP+CUbWgt7sn3m8bGwgAAuIn4G79pE4KXJOFKaVZNw2XN47p77Hg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DM4PR11MB6358.namprd11.prod.outlook.com (2603:10b6:8:b7::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.14; Fri, 15 Jul
 2022 16:48:07 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::8053:3c59:9f5d:b615]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::8053:3c59:9f5d:b615%9]) with mapi id 15.20.5417.026; Fri, 15 Jul 2022
 16:48:07 +0000
Date: Fri, 15 Jul 2022 12:48:01 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <YtGaQdp/iZW1BUMQ@intel.com>
References: <20220712193910.439171-1-hdegoede@redhat.com>
 <165765837203.12861.8384352599110434750@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <165765837203.12861.8384352599110434750@emeril.freedesktop.org>
X-ClientProxiedBy: SJ0PR03CA0244.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::9) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bf454499-a85f-4fec-d395-08da6681cae9
X-MS-TrafficTypeDiagnostic: DM4PR11MB6358:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: X/FFuxQo+ma8mMF+bumGWZuSFzhk9yEYqegsS+BuHiI8JlnjWH/7Pq1oELI7b418h8Mh1LVAKkAq0LAFWsYchfxGodGWWp2yXcxzawGcZ3Q2VyjBB8AWvNO6iDtvg1So1pXxndy9E+JEBsY1oTYYnl1Wvp2vdbTSCGLnWByi+BOtj/zUWxV2KuqFiTzSjgS0XTat31WK4Yoyn4IqSR1cn0Vp6JNCYZYO6DW3vM1l/32d8ZFt15fFUalBzGi0dkcKvlessF+bfVnemIuXRRTsQK5JZtqmF/qXqFVvqp0PyjCFUdgKHnX76c4Uq9udTbjsLm6dEmepWpZmsL72O9D+dahy/7gJ9N4N6S1FDxZqDLiu5KOElGYgWTc61oUOzAhNKutXw5dg3hMHTXYqPF3e6//J/gubLLfn9tgeXea736UHmjduknrnYyvNKxWBY1SGx/JYO/+iTDjY2+wXdztIAEDxK/3KA9N4SuXcaKy8PaxpWcn3+2dwkCQhcWnhc0EM7UNgdR/vtH1RXkdHbtdmOQs6b+D13+ao3dyrOa4/YYUzIoFbTddeX+6nV4Ooiy4QWL4/L6H2gcLMi9cQxW9k+mE641ryhguUyehUu+GZQT822TF9UZG2p4TbdsXQyBpCaiLWGEUvX2rIUHA73JQ2AEp/HmGM3zQU6deZ7Y+Gu2RLUCrXQ9BKrPbd6k4uCXeu/uUODYx6MO/SGKU+DQ8MsK50kgOro0DI4Zyn76m8glH80Axr5j1qj21D21z2EXmK8U3b74Hm2yXhVknWBYY9agl2rk36N0+qSaLNx6c0ffF/J8ro9fbChBite9ZfLaXsSK7PBuKI9c2vaBGL3o3EhvMFplQTJnLQ6jle1cxISSeehgBIoA+pAZYTDY9E/kA5
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(396003)(136003)(39860400002)(376002)(366004)(2616005)(186003)(2906002)(83380400001)(4326008)(66556008)(6916009)(66476007)(6512007)(6666004)(36756003)(41300700001)(26005)(66946007)(6506007)(86362001)(5660300002)(82960400001)(966005)(316002)(6486002)(38100700002)(478600001)(8936002)(44832011)(46800400005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?W5sADRxJbFCNJWxMcddDoZVnuhw6XiD4ZfMBNfXCqSeL4BhwVwmxUfgrAQJ+?=
 =?us-ascii?Q?UjR/PaYmTCjHavMcabXomw823MILcfr2Jkr6TI3q1fuNvJpGB3b+u5+Zb+2g?=
 =?us-ascii?Q?95ZdRZQCqvs5EvhrfJWn0Vir+MR2UNhMWRAgIsXk1Y35k3Mritu2X4dtjopt?=
 =?us-ascii?Q?db7gskKUdYIQFGFeYh+wTfKb6Yzw2Kevjc4SBlueF+hWnRsGns0Fi5gBPdIX?=
 =?us-ascii?Q?94Nln2g1i6fuKe0iDVcJ4MA9lA3ZtMQjr38A9xh6KU5MGBr+onBlLbPBRncI?=
 =?us-ascii?Q?YQXQD/XoB+Fw1QQ+Rm1SyuhzqO8H5VbNW+hoY/9dXwy4orVVSIPrgsicnVVQ?=
 =?us-ascii?Q?+uci7FYaMKFRY4ttOu8XPlpM+v6jOpamatRrnbVWjjnvq2uNHjVyg5PVSr/v?=
 =?us-ascii?Q?vciJANbMSqxz+eQOQOS9Lykq7TGO/n5R6oKHhfOMveLG+HVoJ/TwTyRGurPj?=
 =?us-ascii?Q?F799esL3PThHvW75tAyHwoscGi0utIeC7mCewgnjTw6i0GTCcXRUTcDA7MqZ?=
 =?us-ascii?Q?qMdjEJuoNnqx1wbEUNIE94UdFz5Zf0sbOWe8UoCBPJTp5Gs5HtCw6SAZmqtt?=
 =?us-ascii?Q?VJ/lqNCRPDwWGqsFQPrY6/mvMhu7hxB4PjEP+CWTpChxW0YQrWuobtQ9jrAT?=
 =?us-ascii?Q?XvLGvTuk7M1o4tj/hcSRbFo7/pLSF58nGLYih97qD9iw1ZL8Thex84NO+tgQ?=
 =?us-ascii?Q?8QA6mOelyTF8Km4fDIWiB49OtmDOnTohFVqvjgtbSbXQrAKLMfNHCIsmIas9?=
 =?us-ascii?Q?dyL7QuAMU0DNeXH8izK+NewmnIVXBEuEdT5CtXssHzySxoRptr8v3F2bW6iW?=
 =?us-ascii?Q?pvqiRwHHPHM4Np8qlY0htniLSGMOWIXPDCxjKCfFA6pxbqzCiVRdQU2JRbbD?=
 =?us-ascii?Q?BjxL+nsVmPZumoaSbAVirby6owZzWqYL6q1225HPwmszpVgPokXQvExyAXtT?=
 =?us-ascii?Q?i7FdILnCLZ0+TjhShanzwRFeEv6wnIqBQ7KVXzrAzPOIJNhg+5ZXCrngBU7p?=
 =?us-ascii?Q?lQZCU5lFNcR39Se+XJch25KmxVeEFH7kWsISCp4gwd179do8znT9dpmAPIi7?=
 =?us-ascii?Q?BcTZwbmzOr4nxScZ/gdisYtsg+OzXhRe+UxKkfti0cI+36Ff3p5ZogIGy2eL?=
 =?us-ascii?Q?0MN3c0DNL22KV4Tz4pHVbEhrgwCYToMK3L23zBcqD7qcBjL4gHlAq84h4ZmN?=
 =?us-ascii?Q?Kia2M2OErQ7X2901BcDFEKj0uGrDWNfIm1FQsbTOgTjnglHcT1C7Ja3Bp7IA?=
 =?us-ascii?Q?LuqKcPzC8o755eAEHVx/Ghl2ccpNQrOQHKmGDHlPHajjS0Bn4UlCYvD3U09w?=
 =?us-ascii?Q?iZ+bCedcSUlzB8Nk9BN3IciBk4BfT/Ijn5qwIwe8TB8IZKAmV49+MNUL9eEg?=
 =?us-ascii?Q?PXtZ8t8dCkFPgjDcl505Ln+RLUoKU9lA1D9O3WjfyIX49km4YCpBdRNnqG3x?=
 =?us-ascii?Q?XeHAjefbwcxwaN9AILxkTMMn0N3F4HZ3LKXjwI6kzVTmboQhYTIiqI0j9kl/?=
 =?us-ascii?Q?0/XwBFaiv+uuS0IgFj1/kgowmWWzy0QLix4S6CSJB0mAjGIh/9/rFNpdAFBu?=
 =?us-ascii?Q?1K0c9PzOVUg/cYCbG3I21Z+WZT1bXaAJ6U12Jh64J1dCSZvqCBCeDVEFjQzD?=
 =?us-ascii?Q?qQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bf454499-a85f-4fec-d395-08da6681cae9
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jul 2022 16:48:07.2806 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hV4kDPfWjTJy3dproiTqdhvcSZw3m1Hh09W2kbjVDWHM8MROUW6ibsASYouIbpEzlKdRsVSEboKxQ/MKD/SxdA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6358
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/kms=3A_Stop_registering_multiple_/sys/class/backlight_devs_for?=
 =?utf-8?q?_a_single_display_=28rev2=29?=
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

On Tue, Jul 12, 2022 at 08:39:32PM -0000, Patchwork wrote:
>    Patch Details
> 
>    Series: drm/kms: Stop registering multiple /sys/class/backlight devs
>    for a single display (rev2)
>    URL: [1]https://patchwork.freedesktop.org/series/104084/
>    State: failure
>    Details:
>    [2]https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104084v2/index.ht
>    ml
> 
>           CI Bug Log - changes from CI_DRM_11877 -> Patchwork_104084v2
> 
> Summary
> 
>    FAILURE
> 
>    Serious unknown changes coming with Patchwork_104084v2 absolutely need
>    to be
>    verified manually.
> 
>    If you think the reported changes have nothing to do with the changes
>    introduced in Patchwork_104084v2, please notify your bug team to allow
>    them
>    to document this new failure mode, which will reduce false positives in
>    CI.
> 
>    External URL:
>    https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104084v2/index.html
> 
> Participating hosts (39 -> 33)
> 
>    Missing (6): bat-dg1-5 bat-dg2-8 bat-adlp-6 bat-adln-1 bat-rpls-2
>    bat-jsl-1
> 
> Possible new issues
> 
>    Here are the unknown changes that may have been introduced in
>    Patchwork_104084v2:
> 
>   IGT changes
> 
>     Possible regressions
> 
>      * igt@i915_selftest@live@evict:
>           + fi-bdw-5557u: [3]PASS -> [4]INCOMPLETE
> 
> Known issues
> 
>    Here are the changes found in Patchwork_104084v2 that come from known
>    issues:
> 
>   CI changes
> 
>     Issues hit
> 
>      * boot:
>           + fi-bxt-dsi: [5]PASS -> [6]FAIL ([7]i915#6003)
> 
>   IGT changes
> 
>     Issues hit
> 
>      * igt@i915_pm_backlight@basic-brightness:
>           + fi-bsw-kefka: [8]PASS -> [9]SKIP ([10]fdo#109271)
>           + fi-kbl-soraka: [11]PASS -> [12]SKIP ([13]fdo#109271)

Hans, did you have a change to check this?

>      * igt@i915_selftest@live@gtt:
>           + fi-bdw-5557u: [14]PASS -> [15]INCOMPLETE ([16]i915#5685)
>      * igt@kms_chamelium@common-hpd-after-suspend:
>           + fi-pnv-d510: NOTRUN -> [17]SKIP ([18]fdo#109271)
> 
>     Possible fixes
> 
>      * igt@i915_module_load@load:
>           + {fi-tgl-dsi}: [19]DMESG-WARN ([20]i915#1982) -> [21]PASS
>      * igt@i915_selftest@live@requests:
>           + fi-pnv-d510: [22]DMESG-FAIL ([23]i915#4528) -> [24]PASS
> 
>    {name}: This element is suppressed. This means it is ignored when
>    computing
>    the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> Build changes
> 
>      * Linux: CI_DRM_11877 -> Patchwork_104084v2
> 
>    CI-20190529: 20190529
>    CI_DRM_11877: e55cefc370de5a38ee848aa96082d9d9f4cacdb9 @
>    git://anongit.freedesktop.org/gfx-ci/linux
>    IGT_6578: 7d289d89131ec37c1145bcdb86149914587d7406 @
>    https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>    Patchwork_104084v2: e55cefc370de5a38ee848aa96082d9d9f4cacdb9 @
>    git://anongit.freedesktop.org/gfx-ci/linux
> 
>   Linux commits
> 
>    03434f3a9b5d drm/todo: Add entry about dealing with brightness control
>    on devices with > 1 panel
>    f60a678ae3cb ACPI: video: Fix indentation of video_detect_dmi_table[]
>    entries
>    997c977f175b ACPI: video: Drop Clevo/TUXEDO NL5xRU and NL5xNU
>    acpi_backlight=native quirks
>    d1d4384a3f9c ACPI: video: Drop "Samsung X360" acpi_backlight=native
>    quirk
>    6c3fca7964c0 ACPI: video: Remove acpi_video_set_dmi_backlight_type()
>    337df08b0d51 platform/x86: samsung-laptop: Move
>    acpi_backlight=[vendor|native] quirks to ACPI video_detect.c
>    88a0cccaf8a5 platform/x86: asus-wmi: Move acpi_backlight=native quirks
>    to ACPI video_detect.c
>    2c02ab2a967a platform/x86: asus-wmi: Move acpi_backlight=vendor quirks
>    to ACPI video_detect.c
>    b544046af222 platform/x86: asus-wmi: Drop DMI chassis-type check from
>    backlight handling
>    47ec79e43441 platform/x86: acer-wmi: Move backlight DMI quirks to
>    acpi/video_detect.c
>    8ac54c7cc01a platform/x86: toshiba_acpi: Stop using
>    acpi_video_set_dmi_backlight_type()
>    2c9a9d9c994e platform/x86: apple-gmux: Stop calling acpi/video.h
>    functions
>    b8f094cb3d41 ACPI: video: Add Apple GMUX brightness control detection
>    94c7368718d0 ACPI: video: Add Nvidia WMI EC brightness control
>    detection
>    76f5965ce704 ACPI: video: Refactor acpi_video_get_backlight_type() a
>    bit
>    18c8318ff838 drm/radeon: Register ACPI video backlight when skipping
>    radeon backlight registration
>    55191d4ed5dd drm/amdgpu: Register ACPI video backlight when skipping
>    amdgpu backlight registration
>    6bf61ef3e8c1 drm/nouveau: Register ACPI video backlight when
>    nv_backlight registration fails
>    c4b53a8741ca drm/i915: Call acpi_video_register_backlight() (v2)
>    2632beb4f21e ACPI: video: Remove code to unregister acpi_video
>    backlight when a native backlight registers
>    f50e9be5558a ACPI: video: Make backlight class device registration a
>    separate step
>    f488f7b8b479 ACPI: video: Simplify acpi_video_unregister_backlight()
>    c7f3edec1b91 ACPI: video: Remove acpi_video_bus from list before
>    tearing it down
>    50ef46fbcd30 ACPI: video: Drop backlight_device_get_by_type() call from
>    acpi_video_get_backlight_type()
>    7c7ce022fbbb drm/nouveau: Don't register backlight when another
>    backlight should be used
>    bd0a8b322333 drm/radeon: Don't register backlight when another
>    backlight should be used
>    28317e03719e drm/amdgpu: Don't register backlight when another
>    backlight should be used
>    a657e3a2b224 drm/i915: Don't register backlight when another backlight
>    should be used
>    804bae42c403 ACPI: video: Add acpi_video_backlight_use_native() helper
> 
> References
> 
>    1. https://patchwork.freedesktop.org/series/104084/
>    2. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104084v2/index.html
>    3. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/fi-bdw-5557u/igt@i915_selftest@live@evict.html
>    4. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104084v2/fi-bdw-5557u/igt@i915_selftest@live@evict.html
>    5. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/fi-bxt-dsi/boot.html
>    6. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104084v2/fi-bxt-dsi/boot.html
>    7. https://gitlab.freedesktop.org/drm/intel/issues/6003
>    8. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/fi-bsw-kefka/igt@i915_pm_backlight@basic-brightness.html
>    9. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104084v2/fi-bsw-kefka/igt@i915_pm_backlight@basic-brightness.html
>   10. https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   11. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/fi-kbl-soraka/igt@i915_pm_backlight@basic-brightness.html
>   12. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104084v2/fi-kbl-soraka/igt@i915_pm_backlight@basic-brightness.html
>   13. https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   14. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/fi-bdw-5557u/igt@i915_selftest@live@gtt.html
>   15. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104084v2/fi-bdw-5557u/igt@i915_selftest@live@gtt.html
>   16. https://gitlab.freedesktop.org/drm/intel/issues/5685
>   17. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104084v2/fi-pnv-d510/igt@kms_chamelium@common-hpd-after-suspend.html
>   18. https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   19. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/fi-tgl-dsi/igt@i915_module_load@load.html
>   20. https://gitlab.freedesktop.org/drm/intel/issues/1982
>   21. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104084v2/fi-tgl-dsi/igt@i915_module_load@load.html
>   22. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/fi-pnv-d510/igt@i915_selftest@live@requests.html
>   23. https://gitlab.freedesktop.org/drm/intel/issues/4528
>   24. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104084v2/fi-pnv-d510/igt@i915_selftest@live@requests.html
