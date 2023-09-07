Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE474797F3D
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Sep 2023 01:32:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8517E10E838;
	Thu,  7 Sep 2023 23:32:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C602610E838
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Sep 2023 23:32:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694129534; x=1725665534;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=tL/dbMm/+2NIQxLqaZ82f14/Bz8cOXR5Fhdln5pkMBk=;
 b=HlYLM/cM26nnsNQRpKYhScdSM8Mmxx3vhfJ42NPE9jiytX3N+JxegGeh
 CTjH98w2d3/eeH6a0HqcFr3UzLXhBThZisAfkEqF7Hf+gXlBbiahexYPR
 R863EZCfelRQwX68dxmkYsZOIc4twVV8w3e4oK6wqbYgsAC6N9jG0JLRQ
 yib3gawj3N9wt/lRTdjsT6G0h5N+7PIm3vwdABzpb3MoFCtajytZX/ffo
 PX5eSPHLGFRTDOpFW9InWhwGyM4bKnCVRJxgXz9IPQo5fdUAXm9D2hs6v
 rYL/Ar4UJl9SMzl7WdY5dC0WEBJW140xgbJ4vS0JeYcYUDF9dWJ+7mJkq w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="362572056"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="362572056"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 16:32:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="742228875"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="742228875"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Sep 2023 16:32:14 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 7 Sep 2023 16:32:13 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 7 Sep 2023 16:32:13 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 7 Sep 2023 16:32:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ns8FBFlc4waVnkEjkD5hpqXbd9RWw++3PFTS5SUEb/OGFMxjQ3+cczEYBgJf2g5oaMsdeFQ7E+KZ7RjTf9/lUO1kTejrncY2xB7+qw/9qCvzhc0ZQNQg6rp+77c+OFrUwNwhU7xlQpt6qirUUWHuDfImjVynzi5uD0evqU6QaFGRggif2Iw94Dc946DZQpx2KF7EKrb/pqaojzSmhGVkZXo/ADjrgk2LpuVWjJOd2vGx8MAfkBDrfjBeCWl5uic+EH1sqv/ZqVMtgTVai/8qRRK7wUCyThyXkscsbMSpC5xtjitXaFyf82GNLf+XrOzbgjTR6pYuXK6fnFaKh89ubA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=btGWmfaD2unS7SdsFk1hjZgXJ9tdFWtXXE8XPKFsHEo=;
 b=HBOUJ2VocmQ5080lGkSETo+ujgfKUw/2METyLwp0N2ZigaB7WtwVL1uYjzu/3hGJA3rayRvy0N0DwOLPT/czWzp2yEbrWRoCEfxpjNzVry5ddnU+DU3/cHlw0UkUNmr+Rfcj8LDGfo8aiaBQvRGD0PGrPGgBOnhRMWbHK9tARvI3rsLSFLT94haFBVvOn2xMKsKvzvR0Bvm8mQUFsnMX8LQRq+TuRpHJuhHK7vbM30Ix6Dt9YJsm0+7XG7oqmbRptK3ZUZi6KFSt41Rgni+SbU2QqHum0nA8tfcaXREFXcDRww29pAxfkrKN+r4BKeXRAU6x8+HjouQQbEhg3nqsmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 BL1PR11MB5554.namprd11.prod.outlook.com (2603:10b6:208:31d::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.34; Thu, 7 Sep
 2023 23:31:47 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6745.035; Thu, 7 Sep 2023
 23:31:47 +0000
Date: Thu, 7 Sep 2023 16:31:44 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <20230907233144.GT2706891@mdroper-desk1.amr.corp.intel.com>
References: <20230907000354.3729827-2-matthew.d.roper@intel.com>
 <169412656175.17901.2422341750870151979@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <169412656175.17901.2422341750870151979@emeril.freedesktop.org>
X-ClientProxiedBy: SJ0PR03CA0067.namprd03.prod.outlook.com
 (2603:10b6:a03:331::12) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|BL1PR11MB5554:EE_
X-MS-Office365-Filtering-Correlation-Id: f442432b-4f84-4bf8-151a-08dbaffa9a59
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yYDoUY5aWHAgQv3sy/A0kLHZnedTot8gZFEGB+umCAZf8inMFrzeSpHLJPm6KSONIQrFaKGsgvEXuwNouSotBzOWHJfV4IIkm7G0uhID/9+vSdFgrVFa3KhnzWUS20T9IixI5Ov/lHdNmc6IfPgvI620wCYxDLhlYnMkjBJKIM2IvBazvWt6JlvpCFSG6siVydHKlnYz1+vTEZTvnohLHnN//YWS1+9Q9qwq5a9ZZkM4ZsDbQnJbV8Nu90lbVGHwFaWKf92sEU0kkljs9a/zAhGDTXfutK2i0gIvuGs78PcjQbdlQKaFJyUmVNWBfoqE72BFnrrWeTBX1LLwjAT8hm00j83DM3pgUKDuwKo94nOKswUBreQxsGxZnCIhdqJShqTaI59ctSrg0CLwRbw2aQWpncb8eYs2JoS/ShNL/IdQIMwJE8tx0p6Bpm+P/AXcYKnX5T7WqDkXOClAcZEC0xF/wgWOdo++lPz9v3cuGYQ/LBpIC80vaVsax7841gaD8bnYIJtHxVxlGOVGODkBXso7b7XnAS51mnHYeOylvTMt6hXKcHMoLkj7PSihwgac
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(39860400002)(136003)(366004)(396003)(376002)(186009)(1800799009)(451199024)(38100700002)(82960400001)(26005)(1076003)(6486002)(6506007)(6512007)(83380400001)(478600001)(966005)(30864003)(8936002)(66946007)(66556008)(5660300002)(66476007)(33656002)(316002)(86362001)(6916009)(6666004)(41300700001)(2906002)(579004)(559001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+3o5eaZvWsJavnHb1mmHr2Ja+uwCrHK0V7QLbhtHqTUyJHNh0Ve9S4/HugG7?=
 =?us-ascii?Q?TYG5so4UyhE8CI48DEKoo32vWYQDTaUA1cQ3mhf78992QGUgLLJ4P4q7Ddo7?=
 =?us-ascii?Q?hAToHC32NzgdC4Rbzgo5ITWCksAbTiu76KYnG3ll50s+F00byD8HbNEj9Wxn?=
 =?us-ascii?Q?14D2XRnupZQGd7k9Roh5KUvHy0uNEUQ/OjxcfpYaPwz4KVhHdUm6K/cNrx1X?=
 =?us-ascii?Q?MUnKfrbB5b/UkcB1N77vmg8Vl9YK0UzhZvY1bCnI0n+7xd0uBHxKwuCLOxtE?=
 =?us-ascii?Q?dZhjvwRcEWRsMAogKuxSvDgxRN8BE4kEhyaNiFQm/maq53+Xj1//I39vTvXV?=
 =?us-ascii?Q?Qw6CekRqKl118JkHkvCrmCSdnanxr+Vf6FmnVrqwc3C2PJj5bDe3raO6tSFm?=
 =?us-ascii?Q?WNZ9PS/G5qg9h0868dB170hbDGaO6Ijrw4SAOv4SJoM+O5Um8VCDij4a/TRm?=
 =?us-ascii?Q?+kyI1IimONk0ISu1vDwju9Fd6muGh81L6UPeqX2ChMAvlKTjuXcMz9wT4/lx?=
 =?us-ascii?Q?Ig3V8YnpqA+e14WmnHg9SksmAbBgVVV4Eetdz2kK7qBqCFuKJqVoppr7Z5af?=
 =?us-ascii?Q?aScojWHDyPwl53zhN7DO6xNuP1wQpb7TCgshuHs07Z4YL6sV8UD9W6JiyAkb?=
 =?us-ascii?Q?yDwD37i5Fk69d6Io9B2hlmiVxw2UvXXg5Yqrt95NwbTH22vN99SdBmNDDsgT?=
 =?us-ascii?Q?BgWN0ri53KE0WOv7K33DdoDKEl8cbzM9aJAHUeZWv50MHSk2J11pIZhsvNZL?=
 =?us-ascii?Q?f/fLPGPGnd5V1lKsvhwBiaQtgiLlRQIiy7l8RbjreST1YdGQtZBagymc4ZZV?=
 =?us-ascii?Q?QKDZ9TdlTovL/vog17CvYAErgrzvSBgBeKcB03vI4F/nv9MuXu0XLdWB2mk+?=
 =?us-ascii?Q?76yFeNRTaWTBha9LVu2BkeVg/Oxh1Y+M6Jlp2wx4O+UiQa+3S4afLE+8Ec7U?=
 =?us-ascii?Q?s3fvN7CDK2aeu+ExFmeIlumMfXKfsBL9X0tE5nL67Dng8IXT0sOuLlAumjKm?=
 =?us-ascii?Q?siuml3SlkR0/1xK6tIgVmSokDDWK6KbbBe1Ab+Qf7uiI/V11SJaQszzPwghM?=
 =?us-ascii?Q?0xVYdkqepOlJZiww2uI+15QXQY4IdwOgm+yNAnPVgmidGH2EyVmaVHZmQUvL?=
 =?us-ascii?Q?WA+QNL0qQ5FPfLwsn2/zqOglPs9khjN1pUJta5OkUr3bD9b9CW6LqZrfyEtr?=
 =?us-ascii?Q?xM4WWnW1qW98mT9BAnlG/+fe6RuNJ4SN/RDEoMkl9dpdU1jr6bNWAnKeXrDc?=
 =?us-ascii?Q?QM0yEpototobOj657zNpvIDPmq4rDHo3yoMXeFjzQdECZcAbTBU19Hxf6ZoR?=
 =?us-ascii?Q?w0CFslUGQphf7quK9Uzt8yHAFh9a24DAJaYEk9wuIqTVySoEi28+rQvj4mEr?=
 =?us-ascii?Q?k7wsUrk/1+dfoySDJ/xPAmfxLulkg4fupzK1rDvE/BSyko8uzYgCmWQ6BsDk?=
 =?us-ascii?Q?ytJsCge03Nao3lgcIdrQIu5hwuAB68+7pDL4Os4usxNov9o+J6r3bBmMmB46?=
 =?us-ascii?Q?BNGh+FOflVKlFv0NoGwKtbe3HZtI6QFvb17QzMY8/c3jPl81akzR2E7FI9Jt?=
 =?us-ascii?Q?923U/bSo0waZOBJ24LhNPl/an44QZD03qtyvdw2hXflr65BonMDs1Ccla4zS?=
 =?us-ascii?Q?mA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f442432b-4f84-4bf8-151a-08dbaffa9a59
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Sep 2023 23:31:47.2098 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ++BgPFOGGsmwbvyOKsd0LbiPYeOzdYFGZZnHtshFA3nH3oreIRKiKbFRSt8y315EuBOxuk2mQFzafr3GWQQASOtC8jRAqw0qnWphW5N7p08=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5554
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogIGZhaWx1cmUgZm9yIGRy?=
 =?utf-8?q?m/i915/mtl=3A_Drop_Wa=5F14017240301_=28rev2=29?=
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

On Thu, Sep 07, 2023 at 10:42:41PM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/mtl: Drop Wa_14017240301 (rev2)
> URL   : https://patchwork.freedesktop.org/series/123366/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_13609_full -> Patchwork_123366v2_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_123366v2_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_123366v2_full, please notify your bug team (lgci.bug.filing@intel.com) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (9 -> 10)
> ------------------------------
> 
>   Additional (1): shard-tglu0 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_123366v2_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-apl:          [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13609/shard-apl1/igt@gen9_exec_parse@allowed-all.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-apl6/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@kms_flip@2x-wf_vblank-ts-check-interruptible@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          [PASS][3] -> [INCOMPLETE][4] +1 other test incomplete
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13609/shard-glk8/igt@kms_flip@2x-wf_vblank-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-glk7/igt@kms_flip@2x-wf_vblank-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html

False positives; removal of the XeLPG-specific workaround would not have
changed the behavior for these old gen9lp platforms.

Patch applied to drm-intel-gt-next; thanks Rodrigo for the review.

Since this is an unusual case of a GT-centric workaround that lives
inside the display code it was debatable as to which branch would be
more appropriate here.  But since gt-next had an update to the macros
used in the workaround's condition and intel-next does not yet, applying
to gt-next keeps things simpler by avoiding cross-branch merge
conflicts.


Matt

> 
>   
> #### Warnings ####
> 
>   * igt@gem_create@create-ext-cpu-access-big:
>     - shard-dg2:          [ABORT][5] ([i915#7461]) -> [INCOMPLETE][6]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13609/shard-dg2-7/igt@gem_create@create-ext-cpu-access-big.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-6/igt@gem_create@create-ext-cpu-access-big.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_123366v2_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@core_hotunplug@unbind-rebind:
>     - shard-mtlp:         [PASS][7] -> [DMESG-WARN][8] ([i915#9260])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13609/shard-mtlp-6/igt@core_hotunplug@unbind-rebind.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-mtlp-4/igt@core_hotunplug@unbind-rebind.html
> 
>   * igt@device_reset@unbind-cold-reset-rebind:
>     - shard-dg2:          NOTRUN -> [SKIP][9] ([i915#7701])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-11/igt@device_reset@unbind-cold-reset-rebind.html
> 
>   * igt@drm_fdinfo@busy@ccs0:
>     - shard-dg2:          NOTRUN -> [SKIP][10] ([i915#8414]) +10 other tests skip
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-11/igt@drm_fdinfo@busy@ccs0.html
> 
>   * igt@drm_fdinfo@busy@vcs0:
>     - shard-mtlp:         NOTRUN -> [SKIP][11] ([i915#8414]) +5 other tests skip
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-mtlp-1/igt@drm_fdinfo@busy@vcs0.html
> 
>   * igt@drm_fdinfo@busy@vcs1:
>     - shard-dg1:          NOTRUN -> [SKIP][12] ([i915#8414]) +4 other tests skip
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg1-16/igt@drm_fdinfo@busy@vcs1.html
> 
>   * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
>     - shard-rkl:          [PASS][13] -> [FAIL][14] ([i915#7742])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13609/shard-rkl-7/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-rkl-1/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
> 
>   * igt@drm_mm@drm_mm_test:
>     - shard-dg2:          NOTRUN -> [SKIP][15] ([i915#8661])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-6/igt@drm_mm@drm_mm_test.html
> 
>   * igt@feature_discovery@display-3x:
>     - shard-dg2:          NOTRUN -> [SKIP][16] ([i915#1839]) +1 other test skip
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-11/igt@feature_discovery@display-3x.html
> 
>   * igt@feature_discovery@psr1:
>     - shard-dg2:          NOTRUN -> [SKIP][17] ([i915#658]) +2 other tests skip
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-6/igt@feature_discovery@psr1.html
> 
>   * igt@gem_barrier_race@remote-request@rcs0:
>     - shard-glk:          [PASS][18] -> [ABORT][19] ([i915#7461] / [i915#8190])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13609/shard-glk9/igt@gem_barrier_race@remote-request@rcs0.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-glk9/igt@gem_barrier_race@remote-request@rcs0.html
> 
>   * igt@gem_busy@semaphore:
>     - shard-dg2:          NOTRUN -> [SKIP][20] ([i915#3936])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-11/igt@gem_busy@semaphore.html
>     - shard-dg1:          NOTRUN -> [SKIP][21] ([i915#3936])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg1-16/igt@gem_busy@semaphore.html
>     - shard-mtlp:         NOTRUN -> [SKIP][22] ([i915#3936])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-mtlp-1/igt@gem_busy@semaphore.html
> 
>   * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:
>     - shard-dg2:          [PASS][23] -> [INCOMPLETE][24] ([i915#7297])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13609/shard-dg2-10/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-2/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
> 
>   * igt@gem_ctx_persistence@engines-hang:
>     - shard-snb:          NOTRUN -> [SKIP][25] ([fdo#109271] / [i915#1099])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-snb1/igt@gem_ctx_persistence@engines-hang.html
> 
>   * igt@gem_ctx_persistence@heartbeat-stop:
>     - shard-dg2:          NOTRUN -> [SKIP][26] ([i915#8555]) +1 other test skip
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-11/igt@gem_ctx_persistence@heartbeat-stop.html
> 
>   * igt@gem_ctx_sseu@engines:
>     - shard-dg2:          NOTRUN -> [SKIP][27] ([i915#280])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-1/igt@gem_ctx_sseu@engines.html
>     - shard-mtlp:         NOTRUN -> [SKIP][28] ([i915#280])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-mtlp-7/igt@gem_ctx_sseu@engines.html
> 
>   * igt@gem_eio@in-flight-suspend:
>     - shard-dg1:          [PASS][29] -> [FAIL][30] ([i915#5115] / [i915#6121] / [i915#7052])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13609/shard-dg1-12/igt@gem_eio@in-flight-suspend.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg1-16/igt@gem_eio@in-flight-suspend.html
> 
>   * igt@gem_exec_fair@basic-none-vip:
>     - shard-dg2:          NOTRUN -> [SKIP][31] ([i915#3539] / [i915#4852])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-6/igt@gem_exec_fair@basic-none-vip.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-rkl:          [PASS][32] -> [FAIL][33] ([i915#2842])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13609/shard-rkl-4/igt@gem_exec_fair@basic-pace@vecs0.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-rkl-4/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_exec_fair@basic-throttle:
>     - shard-dg2:          NOTRUN -> [SKIP][34] ([i915#3539])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-11/igt@gem_exec_fair@basic-throttle.html
> 
>   * igt@gem_exec_fence@submit67:
>     - shard-dg2:          NOTRUN -> [SKIP][35] ([i915#4812]) +2 other tests skip
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-11/igt@gem_exec_fence@submit67.html
>     - shard-dg1:          NOTRUN -> [SKIP][36] ([i915#4812])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg1-16/igt@gem_exec_fence@submit67.html
>     - shard-mtlp:         NOTRUN -> [SKIP][37] ([i915#4812])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-mtlp-1/igt@gem_exec_fence@submit67.html
> 
>   * igt@gem_exec_reloc@basic-cpu-read-noreloc:
>     - shard-mtlp:         NOTRUN -> [SKIP][38] ([i915#3281]) +4 other tests skip
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-mtlp-5/igt@gem_exec_reloc@basic-cpu-read-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-gtt-wc-active:
>     - shard-dg1:          NOTRUN -> [SKIP][39] ([i915#3281]) +1 other test skip
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg1-16/igt@gem_exec_reloc@basic-gtt-wc-active.html
> 
>   * igt@gem_exec_reloc@basic-write-read-active:
>     - shard-dg2:          NOTRUN -> [SKIP][40] ([i915#3281]) +4 other tests skip
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-11/igt@gem_exec_reloc@basic-write-read-active.html
> 
>   * igt@gem_exec_schedule@noreorder-priority@rcs0:
>     - shard-mtlp:         [PASS][41] -> [DMESG-WARN][42] ([i915#9121]) +2 other tests dmesg-warn
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13609/shard-mtlp-8/igt@gem_exec_schedule@noreorder-priority@rcs0.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-mtlp-4/igt@gem_exec_schedule@noreorder-priority@rcs0.html
> 
>   * igt@gem_exec_schedule@preempt-queue-contexts-chain:
>     - shard-dg2:          NOTRUN -> [SKIP][43] ([i915#4537] / [i915#4812]) +1 other test skip
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-6/igt@gem_exec_schedule@preempt-queue-contexts-chain.html
> 
>   * igt@gem_fenced_exec_thrash@2-spare-fences:
>     - shard-dg2:          NOTRUN -> [SKIP][44] ([i915#4860]) +1 other test skip
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-11/igt@gem_fenced_exec_thrash@2-spare-fences.html
> 
>   * igt@gem_fenced_exec_thrash@too-many-fences:
>     - shard-mtlp:         NOTRUN -> [SKIP][45] ([i915#4860])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-mtlp-5/igt@gem_fenced_exec_thrash@too-many-fences.html
> 
>   * igt@gem_lmem_swapping@heavy-random:
>     - shard-mtlp:         NOTRUN -> [SKIP][46] ([i915#4613])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-mtlp-5/igt@gem_lmem_swapping@heavy-random.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify-ccs:
>     - shard-apl:          NOTRUN -> [SKIP][47] ([fdo#109271] / [i915#4613])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-apl7/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
> 
>   * igt@gem_lmem_swapping@smem-oom@lmem0:
>     - shard-dg2:          [PASS][48] -> [TIMEOUT][49] ([i915#5493])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13609/shard-dg2-1/igt@gem_lmem_swapping@smem-oom@lmem0.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-5/igt@gem_lmem_swapping@smem-oom@lmem0.html
>     - shard-dg1:          [PASS][50] -> [TIMEOUT][51] ([i915#5493])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13609/shard-dg1-12/igt@gem_lmem_swapping@smem-oom@lmem0.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg1-12/igt@gem_lmem_swapping@smem-oom@lmem0.html
> 
>   * igt@gem_mmap_gtt@cpuset-big-copy:
>     - shard-dg2:          NOTRUN -> [SKIP][52] ([i915#4077]) +12 other tests skip
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-1/igt@gem_mmap_gtt@cpuset-big-copy.html
> 
>   * igt@gem_mmap_gtt@flink-race:
>     - shard-dg1:          NOTRUN -> [SKIP][53] ([i915#4077]) +2 other tests skip
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg1-16/igt@gem_mmap_gtt@flink-race.html
> 
>   * igt@gem_mmap_wc@write-gtt-read-wc:
>     - shard-dg2:          NOTRUN -> [SKIP][54] ([i915#4083]) +3 other tests skip
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-6/igt@gem_mmap_wc@write-gtt-read-wc.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-display:
>     - shard-dg2:          NOTRUN -> [SKIP][55] ([i915#3282]) +5 other tests skip
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-11/igt@gem_partial_pwrite_pread@writes-after-reads-display.html
>     - shard-dg1:          NOTRUN -> [SKIP][56] ([i915#3282]) +1 other test skip
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg1-16/igt@gem_partial_pwrite_pread@writes-after-reads-display.html
>     - shard-mtlp:         NOTRUN -> [SKIP][57] ([i915#3282]) +3 other tests skip
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-mtlp-1/igt@gem_partial_pwrite_pread@writes-after-reads-display.html
> 
>   * igt@gem_pxp@create-regular-context-1:
>     - shard-dg2:          NOTRUN -> [SKIP][58] ([i915#4270])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-6/igt@gem_pxp@create-regular-context-1.html
> 
>   * igt@gem_pxp@verify-pxp-stale-buf-optout-execution:
>     - shard-mtlp:         NOTRUN -> [SKIP][59] ([i915#4270]) +1 other test skip
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-mtlp-5/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html
> 
>   * igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled:
>     - shard-mtlp:         NOTRUN -> [SKIP][60] ([i915#8428])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-mtlp-7/igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled.html
> 
>   * igt@gem_spin_batch@spin-each:
>     - shard-mtlp:         [PASS][61] -> [DMESG-FAIL][62] ([i915#9121])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13609/shard-mtlp-6/igt@gem_spin_batch@spin-each.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-mtlp-4/igt@gem_spin_batch@spin-each.html
> 
>   * igt@gem_tiled_pread_pwrite:
>     - shard-dg2:          NOTRUN -> [SKIP][63] ([i915#4079])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-11/igt@gem_tiled_pread_pwrite.html
> 
>   * igt@gem_userptr_blits@coherency-unsync:
>     - shard-dg2:          NOTRUN -> [SKIP][64] ([i915#3297]) +1 other test skip
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-6/igt@gem_userptr_blits@coherency-unsync.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate-overlap:
>     - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#3297] / [i915#4880]) +1 other test skip
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-11/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html
> 
>   * igt@gem_userptr_blits@unsync-overlap:
>     - shard-mtlp:         NOTRUN -> [SKIP][66] ([i915#3297]) +2 other tests skip
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-mtlp-7/igt@gem_userptr_blits@unsync-overlap.html
> 
>   * igt@gem_workarounds@suspend-resume:
>     - shard-mtlp:         [PASS][67] -> [ABORT][68] ([i915#9262])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13609/shard-mtlp-6/igt@gem_workarounds@suspend-resume.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-mtlp-7/igt@gem_workarounds@suspend-resume.html
> 
>   * igt@gen7_exec_parse@batch-without-end:
>     - shard-dg2:          NOTRUN -> [SKIP][69] ([fdo#109289]) +2 other tests skip
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-6/igt@gen7_exec_parse@batch-without-end.html
> 
>   * igt@gen9_exec_parse@batch-zero-length:
>     - shard-mtlp:         NOTRUN -> [SKIP][70] ([i915#2856]) +2 other tests skip
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-mtlp-7/igt@gen9_exec_parse@batch-zero-length.html
> 
>   * igt@gen9_exec_parse@cmd-crossing-page:
>     - shard-dg2:          NOTRUN -> [SKIP][71] ([i915#2856]) +1 other test skip
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-6/igt@gen9_exec_parse@cmd-crossing-page.html
> 
>   * igt@i915_module_load@load:
>     - shard-dg2:          NOTRUN -> [SKIP][72] ([i915#6227])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-6/igt@i915_module_load@load.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-dg2:          NOTRUN -> [DMESG-WARN][73] ([i915#7061] / [i915#8617])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-11/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pipe_stress@stress-xrgb8888-ytiled:
>     - shard-dg2:          NOTRUN -> [SKIP][74] ([i915#7091])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-11/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html
> 
>   * igt@i915_pm_backlight@fade-with-suspend:
>     - shard-dg2:          NOTRUN -> [SKIP][75] ([i915#5354] / [i915#7561])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-1/igt@i915_pm_backlight@fade-with-suspend.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-mtlp:         NOTRUN -> [FAIL][76] ([i915#8599])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-mtlp-5/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@i915_pm_rpm@dpms-lpsp:
>     - shard-dg2:          NOTRUN -> [SKIP][77] ([i915#1397])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-11/igt@i915_pm_rpm@dpms-lpsp.html
> 
>   * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
>     - shard-mtlp:         NOTRUN -> [SKIP][78] ([i915#1397])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-mtlp-5/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@i915_pm_rpm@i2c:
>     - shard-dg2:          [PASS][79] -> [FAIL][80] ([i915#8717])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13609/shard-dg2-7/igt@i915_pm_rpm@i2c.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-2/igt@i915_pm_rpm@i2c.html
> 
>   * igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:
>     - shard-rkl:          [PASS][81] -> [SKIP][82] ([i915#1397]) +1 other test skip
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13609/shard-rkl-7/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-rkl-1/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html
>     - shard-dg1:          [PASS][83] -> [SKIP][84] ([i915#1397]) +1 other test skip
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13609/shard-dg1-19/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg1-17/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html
> 
>   * igt@i915_pm_rpm@modeset-non-lpsp:
>     - shard-dg2:          [PASS][85] -> [SKIP][86] ([i915#1397])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13609/shard-dg2-6/igt@i915_pm_rpm@modeset-non-lpsp.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-10/igt@i915_pm_rpm@modeset-non-lpsp.html
> 
>   * igt@i915_pm_rpm@pm-caching:
>     - shard-mtlp:         NOTRUN -> [SKIP][87] ([i915#4077]) +8 other tests skip
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-mtlp-7/igt@i915_pm_rpm@pm-caching.html
> 
>   * igt@i915_query@query-topology-known-pci-ids:
>     - shard-mtlp:         NOTRUN -> [SKIP][88] ([fdo#109303])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-mtlp-7/igt@i915_query@query-topology-known-pci-ids.html
> 
>   * igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:
>     - shard-mtlp:         NOTRUN -> [SKIP][89] ([i915#4212])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-mtlp-7/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html
>     - shard-dg2:          NOTRUN -> [SKIP][90] ([i915#4212])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-1/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-1:
>     - shard-glk:          [PASS][91] -> [FAIL][92] ([i915#2521])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13609/shard-glk3/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-1.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-glk7/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-2-y-rc_ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][93] ([i915#8502]) +3 other tests skip
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-rkl-1/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-2-y-rc_ccs.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-4-y-rc_ccs:
>     - shard-dg1:          NOTRUN -> [SKIP][94] ([i915#8502]) +7 other tests skip
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg1-17/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-4-y-rc_ccs.html
> 
>   * igt@kms_async_flips@crc@pipe-d-dp-4:
>     - shard-dg2:          NOTRUN -> [FAIL][95] ([i915#8247]) +3 other tests fail
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-11/igt@kms_async_flips@crc@pipe-d-dp-4.html
> 
>   * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
>     - shard-mtlp:         NOTRUN -> [SKIP][96] ([i915#404])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-mtlp-1/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
>     - shard-dg2:          NOTRUN -> [SKIP][97] ([i915#404])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-11/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
>     - shard-dg1:          NOTRUN -> [SKIP][98] ([i915#404])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg1-16/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition:
>     - shard-mtlp:         NOTRUN -> [SKIP][99] ([i915#1769] / [i915#3555])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-mtlp-1/igt@kms_atomic_transition@plane-all-modeset-transition.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
>     - shard-mtlp:         [PASS][100] -> [FAIL][101] ([i915#5138])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13609/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>     - shard-dg1:          NOTRUN -> [SKIP][102] ([i915#4538] / [i915#5286])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg1-16/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@linear-16bpp-rotate-270:
>     - shard-mtlp:         NOTRUN -> [SKIP][103] ([fdo#111614]) +4 other tests skip
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-mtlp-7/igt@kms_big_fb@linear-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-16bpp-rotate-90:
>     - shard-dg2:          NOTRUN -> [SKIP][104] ([fdo#111614]) +4 other tests skip
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-1/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
>     - shard-dg2:          NOTRUN -> [SKIP][105] ([i915#5190]) +11 other tests skip
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-11/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html
>     - shard-dg1:          NOTRUN -> [SKIP][106] ([i915#3638]) +1 other test skip
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg1-16/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@yf-tiled-32bpp-rotate-180:
>     - shard-dg2:          NOTRUN -> [SKIP][107] ([i915#4538] / [i915#5190]) +3 other tests skip
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-6/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:
>     - shard-mtlp:         NOTRUN -> [SKIP][108] ([fdo#111615]) +5 other tests skip
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-mtlp-5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html
> 
>   * igt@kms_big_joiner@2x-modeset:
>     - shard-dg2:          NOTRUN -> [SKIP][109] ([i915#2705])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-11/igt@kms_big_joiner@2x-modeset.html
> 
>   * igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
>     - shard-mtlp:         NOTRUN -> [SKIP][110] ([i915#3886] / [i915#6095]) +7 other tests skip
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-mtlp-1/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
>     - shard-dg1:          NOTRUN -> [SKIP][111] ([i915#3689] / [i915#3886] / [i915#5354] / [i915#6095]) +1 other test skip
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg1-16/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-random-ccs-data-4_tiled_dg2_rc_ccs:
>     - shard-snb:          NOTRUN -> [SKIP][112] ([fdo#109271]) +84 other tests skip
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-snb1/igt@kms_ccs@pipe-b-random-ccs-data-4_tiled_dg2_rc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_mc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][113] ([fdo#109271] / [i915#3886]) +1 other test skip
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-apl7/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-4_tiled_dg2_mc_ccs:
>     - shard-dg1:          NOTRUN -> [SKIP][114] ([i915#3689] / [i915#5354] / [i915#6095]) +1 other test skip
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg1-16/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-4_tiled_dg2_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
>     - shard-dg2:          NOTRUN -> [SKIP][115] ([i915#3689] / [i915#3886] / [i915#5354]) +10 other tests skip
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-11/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_gen12_rc_ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][116] ([i915#3689] / [i915#5354]) +25 other tests skip
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-11/igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_gen12_rc_ccs.html
> 
>   * igt@kms_ccs@pipe-d-random-ccs-data-y_tiled_gen12_rc_ccs:
>     - shard-mtlp:         NOTRUN -> [SKIP][117] ([i915#6095]) +13 other tests skip
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-mtlp-7/igt@kms_ccs@pipe-d-random-ccs-data-y_tiled_gen12_rc_ccs.html
> 
>   * igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][118] ([i915#4087] / [i915#7213]) +2 other tests skip
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-10/igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#7213])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-10/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_chamelium_color@ctm-0-75:
>     - shard-mtlp:         NOTRUN -> [SKIP][120] ([fdo#111827]) +1 other test skip
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-mtlp-5/igt@kms_chamelium_color@ctm-0-75.html
> 
>   * igt@kms_chamelium_color@ctm-green-to-red:
>     - shard-dg2:          NOTRUN -> [SKIP][121] ([fdo#111827]) +1 other test skip
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-1/igt@kms_chamelium_color@ctm-green-to-red.html
> 
>   * igt@kms_chamelium_edid@hdmi-edid-stress-resolution-4k:
>     - shard-mtlp:         NOTRUN -> [SKIP][122] ([i915#7828]) +4 other tests skip
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-mtlp-7/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-4k.html
> 
>   * igt@kms_chamelium_frames@hdmi-crc-multiple:
>     - shard-dg2:          NOTRUN -> [SKIP][123] ([i915#7828]) +7 other tests skip
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-11/igt@kms_chamelium_frames@hdmi-crc-multiple.html
>     - shard-dg1:          NOTRUN -> [SKIP][124] ([i915#7828]) +1 other test skip
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg1-16/igt@kms_chamelium_frames@hdmi-crc-multiple.html
> 
>   * igt@kms_color@deep-color:
>     - shard-dg1:          NOTRUN -> [SKIP][125] ([i915#3555]) +2 other tests skip
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg1-16/igt@kms_color@deep-color.html
> 
>   * igt@kms_color@deep-color@pipe-b-edp-1-degamma:
>     - shard-mtlp:         NOTRUN -> [FAIL][126] ([i915#6892]) +3 other tests fail
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-mtlp-1/igt@kms_color@deep-color@pipe-b-edp-1-degamma.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-1:
>     - shard-dg2:          NOTRUN -> [SKIP][127] ([i915#3299])
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-1/igt@kms_content_protection@dp-mst-lic-type-1.html
>     - shard-mtlp:         NOTRUN -> [SKIP][128] ([i915#3299])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-mtlp-7/igt@kms_content_protection@dp-mst-lic-type-1.html
> 
>   * igt@kms_content_protection@legacy@pipe-a-dp-4:
>     - shard-dg2:          NOTRUN -> [TIMEOUT][129] ([i915#7173])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-11/igt@kms_content_protection@legacy@pipe-a-dp-4.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-512x170:
>     - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#3359]) +1 other test skip
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-11/igt@kms_cursor_crc@cursor-offscreen-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-random-32x10:
>     - shard-mtlp:         NOTRUN -> [SKIP][131] ([i915#3555] / [i915#8814])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-mtlp-1/igt@kms_cursor_crc@cursor-random-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-512x170:
>     - shard-mtlp:         NOTRUN -> [SKIP][132] ([i915#3359])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-mtlp-1/igt@kms_cursor_crc@cursor-sliding-512x170.html
>     - shard-dg1:          NOTRUN -> [SKIP][133] ([i915#3359])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg1-16/igt@kms_cursor_crc@cursor-sliding-512x170.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic:
>     - shard-dg2:          NOTRUN -> [SKIP][134] ([fdo#109274] / [i915#5354]) +5 other tests skip
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
>     - shard-dg1:          NOTRUN -> [SKIP][135] ([fdo#111825]) +8 other tests skip
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg1-16/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
>     - shard-mtlp:         NOTRUN -> [SKIP][136] ([i915#3546]) +3 other tests skip
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-mtlp-1/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
>     - shard-dg2:          NOTRUN -> [SKIP][137] ([fdo#109274] / [fdo#111767] / [i915#5354])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-6/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][138] ([i915#3804])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-rkl-6/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_draw_crc@draw-method-mmap-wc:
>     - shard-dg2:          NOTRUN -> [SKIP][139] ([i915#8812])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-1/igt@kms_draw_crc@draw-method-mmap-wc.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-dg2:          NOTRUN -> [SKIP][140] ([i915#3469])
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-11/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
>     - shard-apl:          NOTRUN -> [SKIP][141] ([fdo#109271] / [fdo#111767])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-apl7/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html
>     - shard-snb:          NOTRUN -> [SKIP][142] ([fdo#109271] / [fdo#111767])
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-snb6/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend-interruptible:
>     - shard-mtlp:         NOTRUN -> [SKIP][143] ([i915#3637]) +5 other tests skip
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-mtlp-1/igt@kms_flip@2x-flip-vs-suspend-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:
>     - shard-dg2:          NOTRUN -> [SKIP][144] ([fdo#109274]) +8 other tests skip
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-11/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1:
>     - shard-apl:          [PASS][145] -> [FAIL][146] ([i915#79])
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13609/shard-apl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-apl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html
> 
>   * igt@kms_flip@flip-vs-fences-interruptible:
>     - shard-dg2:          NOTRUN -> [SKIP][147] ([i915#8381])
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-1/igt@kms_flip@flip-vs-fences-interruptible.html
>     - shard-mtlp:         NOTRUN -> [SKIP][148] ([i915#8381])
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-mtlp-7/igt@kms_flip@flip-vs-fences-interruptible.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][149] ([i915#2672]) +1 other test skip
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][150] ([i915#3555] / [i915#8810])
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][151] ([i915#2672])
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-default-mode.html
> 
>   * igt@kms_force_connector_basic@force-load-detect:
>     - shard-dg2:          NOTRUN -> [SKIP][152] ([fdo#109285])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-6/igt@kms_force_connector_basic@force-load-detect.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:
>     - shard-dg2:          NOTRUN -> [FAIL][153] ([i915#6880])
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt:
>     - shard-dg2:          [PASS][154] -> [FAIL][155] ([i915#6880]) +1 other test fail
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13609/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt.html
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt:
>     - shard-mtlp:         NOTRUN -> [SKIP][156] ([i915#1825]) +19 other tests skip
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-mtlp-1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][157] ([i915#8708]) +11 other tests skip
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt.html
>     - shard-mtlp:         NOTRUN -> [SKIP][158] ([i915#8708]) +4 other tests skip
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-suspend:
>     - shard-dg2:          [PASS][159] -> [FAIL][160] ([fdo#103375])
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13609/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-suspend.html
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render:
>     - shard-dg2:          NOTRUN -> [SKIP][161] ([i915#5354]) +36 other tests skip
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
>     - shard-mtlp:         NOTRUN -> [ABORT][162] ([i915#9262])
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-wc:
>     - shard-dg1:          NOTRUN -> [SKIP][163] ([i915#8708])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg1-16/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][164] ([i915#3458]) +17 other tests skip
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-suspend:
>     - shard-dg1:          NOTRUN -> [SKIP][165] ([i915#3458]) +5 other tests skip
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg1-16/igt@kms_frontbuffer_tracking@psr-suspend.html
> 
>   * igt@kms_hdr@invalid-metadata-sizes:
>     - shard-dg2:          NOTRUN -> [SKIP][166] ([i915#3555] / [i915#8228])
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-6/igt@kms_hdr@invalid-metadata-sizes.html
> 
>   * igt@kms_panel_fitting@legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][167] ([i915#6301])
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-11/igt@kms_panel_fitting@legacy.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-vga-1:
>     - shard-snb:          NOTRUN -> [DMESG-WARN][168] ([i915#8841]) +2 other tests dmesg-warn
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-snb6/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-vga-1.html
> 
>   * igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-d-dp-4:
>     - shard-dg2:          NOTRUN -> [SKIP][169] ([i915#5176]) +7 other tests skip
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-11/igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-d-dp-4.html
> 
>   * igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-5@pipe-b-hdmi-a-1:
>     - shard-dg1:          NOTRUN -> [SKIP][170] ([i915#5176]) +15 other tests skip
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg1-19/igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-5@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@plane-upscale-with-rotation-20x20@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][171] ([i915#5176]) +5 other tests skip
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-rkl-1/igt@kms_plane_scaling@plane-upscale-with-rotation-20x20@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][172] ([i915#5235]) +7 other tests skip
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-mtlp-5/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-edp-1.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-dp-4:
>     - shard-dg2:          NOTRUN -> [SKIP][173] ([i915#5235]) +15 other tests skip
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-11/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-dp-4.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][174] ([i915#5235]) +7 other tests skip
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg1-16/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][175] ([i915#5235]) +1 other test skip
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-rkl-7/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-sf:
>     - shard-apl:          NOTRUN -> [SKIP][176] ([fdo#109271] / [i915#658])
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-apl7/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html
> 
>   * igt@kms_psr@dpms:
>     - shard-dg2:          NOTRUN -> [SKIP][177] ([i915#1072]) +6 other tests skip
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-1/igt@kms_psr@dpms.html
> 
>   * igt@kms_psr@primary_page_flip:
>     - shard-dg1:          NOTRUN -> [SKIP][178] ([i915#1072] / [i915#4078])
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg1-16/igt@kms_psr@primary_page_flip.html
> 
>   * igt@kms_psr@psr2_primary_mmap_cpu:
>     - shard-dg1:          NOTRUN -> [SKIP][179] ([i915#1072])
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg1-16/igt@kms_psr@psr2_primary_mmap_cpu.html
> 
>   * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>     - shard-dg2:          NOTRUN -> [SKIP][180] ([i915#5461] / [i915#658])
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-6/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
> 
>   * igt@kms_rotation_crc@bad-tiling:
>     - shard-dg2:          NOTRUN -> [SKIP][181] ([i915#4235])
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-11/igt@kms_rotation_crc@bad-tiling.html
> 
>   * igt@kms_scaling_modes@scaling-mode-center:
>     - shard-apl:          NOTRUN -> [SKIP][182] ([fdo#109271]) +41 other tests skip
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-apl7/igt@kms_scaling_modes@scaling-mode-center.html
> 
>   * igt@kms_scaling_modes@scaling-mode-none:
>     - shard-dg2:          NOTRUN -> [SKIP][183] ([i915#3555]) +5 other tests skip
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-1/igt@kms_scaling_modes@scaling-mode-none.html
> 
>   * igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-d:
>     - shard-mtlp:         NOTRUN -> [SKIP][184] ([i915#5030]) +3 other tests skip
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-mtlp-7/igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-d.html
> 
>   * igt@kms_setmode@basic@pipe-a-vga-1:
>     - shard-snb:          NOTRUN -> [FAIL][185] ([i915#5465]) +1 other test fail
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-snb5/igt@kms_setmode@basic@pipe-a-vga-1.html
> 
>   * igt@kms_sysfs_edid_timing:
>     - shard-dg2:          NOTRUN -> [FAIL][186] ([IGT#2])
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-6/igt@kms_sysfs_edid_timing.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-dg2:          NOTRUN -> [SKIP][187] ([i915#2437])
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-1/igt@kms_writeback@writeback-check-output.html
>     - shard-mtlp:         NOTRUN -> [SKIP][188] ([i915#2437])
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-mtlp-7/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-apl:          NOTRUN -> [SKIP][189] ([fdo#109271] / [i915#2437])
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-apl7/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@perf@blocking@1-vcs1:
>     - shard-mtlp:         NOTRUN -> [FAIL][190] ([i915#9259]) +1 other test fail
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-mtlp-7/igt@perf@blocking@1-vcs1.html
> 
>   * igt@perf@buffer-fill@0-rcs0:
>     - shard-mtlp:         NOTRUN -> [FAIL][191] ([i915#7823] / [i915#9265])
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-mtlp-5/igt@perf@buffer-fill@0-rcs0.html
> 
>   * igt@perf@gen8-unprivileged-single-ctx-counters:
>     - shard-dg2:          NOTRUN -> [SKIP][192] ([i915#2436])
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-6/igt@perf@gen8-unprivileged-single-ctx-counters.html
> 
>   * igt@perf@mi-rpc:
>     - shard-dg2:          NOTRUN -> [SKIP][193] ([i915#2434])
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-11/igt@perf@mi-rpc.html
> 
>   * igt@perf_pmu@all-busy-idle-check-all:
>     - shard-mtlp:         NOTRUN -> [FAIL][194] ([i915#5234])
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-mtlp-7/igt@perf_pmu@all-busy-idle-check-all.html
> 
>   * igt@perf_pmu@busy-idle@bcs0:
>     - shard-mtlp:         NOTRUN -> [FAIL][195] ([i915#4349]) +5 other tests fail
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-mtlp-5/igt@perf_pmu@busy-idle@bcs0.html
> 
>   * igt@perf_pmu@cpu-hotplug:
>     - shard-dg2:          NOTRUN -> [SKIP][196] ([i915#8850])
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-6/igt@perf_pmu@cpu-hotplug.html
> 
>   * igt@perf_pmu@event-wait@rcs0:
>     - shard-dg2:          NOTRUN -> [SKIP][197] ([fdo#112283])
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-1/igt@perf_pmu@event-wait@rcs0.html
>     - shard-mtlp:         NOTRUN -> [SKIP][198] ([i915#8807])
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-mtlp-7/igt@perf_pmu@event-wait@rcs0.html
> 
>   * igt@perf_pmu@frequency@gt0:
>     - shard-dg2:          NOTRUN -> [FAIL][199] ([i915#6806])
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-11/igt@perf_pmu@frequency@gt0.html
> 
>   * igt@perf_pmu@render-node-busy@rcs0:
>     - shard-mtlp:         [PASS][200] -> [FAIL][201] ([i915#4349]) +2 other tests fail
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13609/shard-mtlp-4/igt@perf_pmu@render-node-busy@rcs0.html
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-mtlp-2/igt@perf_pmu@render-node-busy@rcs0.html
> 
>   * igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:
>     - shard-dg2:          NOTRUN -> [CRASH][202] ([i915#7331])
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-11/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html
> 
>   * igt@prime_vgem@fence-read-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][203] ([i915#3708])
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-6/igt@prime_vgem@fence-read-hang.html
> 
>   * igt@v3d/v3d_job_submission@array-job-submission:
>     - shard-dg2:          NOTRUN -> [SKIP][204] ([i915#2575]) +9 other tests skip
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-11/igt@v3d/v3d_job_submission@array-job-submission.html
> 
>   * igt@v3d/v3d_perfmon@get-values-invalid-pointer:
>     - shard-mtlp:         NOTRUN -> [SKIP][205] ([i915#2575]) +3 other tests skip
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-mtlp-7/igt@v3d/v3d_perfmon@get-values-invalid-pointer.html
> 
>   * igt@vc4/vc4_tiling@get-bad-flags:
>     - shard-dg1:          NOTRUN -> [SKIP][206] ([i915#7711]) +1 other test skip
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg1-16/igt@vc4/vc4_tiling@get-bad-flags.html
> 
>   * igt@vc4/vc4_tiling@set-get:
>     - shard-dg2:          NOTRUN -> [SKIP][207] ([i915#7711]) +8 other tests skip
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-6/igt@vc4/vc4_tiling@set-get.html
> 
>   * igt@vc4/vc4_wait_bo@used-bo-0ns:
>     - shard-mtlp:         NOTRUN -> [SKIP][208] ([i915#7711]) +4 other tests skip
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-mtlp-5/igt@vc4/vc4_wait_bo@used-bo-0ns.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - shard-tglu:         [FAIL][209] ([i915#6268]) -> [PASS][210]
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13609/shard-tglu-8/igt@gem_ctx_exec@basic-nohangcheck.html
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-tglu-9/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@gem_ctx_isolation@preservation-s3@vcs0:
>     - shard-mtlp:         [DMESG-WARN][211] ([i915#9262]) -> [PASS][212] +2 other tests pass
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13609/shard-mtlp-4/igt@gem_ctx_isolation@preservation-s3@vcs0.html
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-mtlp-3/igt@gem_ctx_isolation@preservation-s3@vcs0.html
> 
>   * igt@gem_ctx_persistence@legacy-engines-hostile@blt:
>     - shard-mtlp:         [ABORT][213] ([i915#9262]) -> [PASS][214] +2 other tests pass
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13609/shard-mtlp-2/igt@gem_ctx_persistence@legacy-engines-hostile@blt.html
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-mtlp-5/igt@gem_ctx_persistence@legacy-engines-hostile@blt.html
> 
>   * igt@gem_eio@hibernate:
>     - shard-dg1:          [ABORT][215] ([i915#7975] / [i915#8213]) -> [PASS][216]
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13609/shard-dg1-14/igt@gem_eio@hibernate.html
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg1-16/igt@gem_eio@hibernate.html
> 
>   * igt@gem_eio@in-flight-suspend:
>     - shard-dg2:          [INCOMPLETE][217] ([i915#7892]) -> [PASS][218]
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13609/shard-dg2-5/igt@gem_eio@in-flight-suspend.html
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-6/igt@gem_eio@in-flight-suspend.html
> 
>   * igt@gem_exec_suspend@basic-s0@smem:
>     - shard-dg2:          [INCOMPLETE][219] -> [PASS][220]
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13609/shard-dg2-10/igt@gem_exec_suspend@basic-s0@smem.html
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-1/igt@gem_exec_suspend@basic-s0@smem.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-apl:          [INCOMPLETE][221] -> [PASS][222]
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13609/shard-apl1/igt@gen9_exec_parse@allowed-single.html
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-apl6/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-mtlp:         [INCOMPLETE][223] ([i915#8489]) -> [PASS][224]
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13609/shard-mtlp-2/igt@i915_module_load@reload-with-fault-injection.html
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-mtlp-1/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_rpm@modeset-non-lpsp:
>     - shard-dg1:          [SKIP][225] ([i915#1397]) -> [PASS][226]
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13609/shard-dg1-19/igt@i915_pm_rpm@modeset-non-lpsp.html
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg1-15/igt@i915_pm_rpm@modeset-non-lpsp.html
> 
>   * igt@i915_selftest@live@gt_pm:
>     - shard-rkl:          [DMESG-FAIL][227] ([i915#4258]) -> [PASS][228]
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13609/shard-rkl-6/igt@i915_selftest@live@gt_pm.html
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-rkl-2/igt@i915_selftest@live@gt_pm.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - shard-tglu:         [FAIL][229] ([i915#3743]) -> [PASS][230]
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13609/shard-tglu-8/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-tglu-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a3:
>     - shard-dg2:          [FAIL][231] ([fdo#103375]) -> [PASS][232] +2 other tests pass
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13609/shard-dg2-5/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a3.html
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg2-6/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a3.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-1:
>     - shard-apl:          [INCOMPLETE][233] ([i915#180]) -> [PASS][234]
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13609/shard-apl6/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-1.html
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-apl7/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-1.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_pm_rpm@system-suspend-modeset:
>     - shard-mtlp:         [DMESG-WARN][235] -> [ABORT][236] ([i915#9262])
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13609/shard-mtlp-4/igt@i915_pm_rpm@system-suspend-modeset.html
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-mtlp-2/igt@i915_pm_rpm@system-suspend-modeset.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-rkl:          [SKIP][237] ([i915#4816]) -> [SKIP][238] ([i915#4070] / [i915#4816])
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13609/shard-rkl-7/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-rkl-1/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_psr@cursor_plane_move:
>     - shard-dg1:          [SKIP][239] ([i915#1072]) -> [SKIP][240] ([i915#1072] / [i915#4078]) +1 other test skip
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13609/shard-dg1-15/igt@kms_psr@cursor_plane_move.html
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/shard-dg1-16/igt@kms_psr@cursor_plane_move.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
>   [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
>   [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3936]: https://gitlab.freedesktop.org/drm/intel/issues/3936
>   [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4087]: https://gitlab.freedesktop.org/drm/intel/issues/4087
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
>   [i915#4258]: https://gitlab.freedesktop.org/drm/intel/issues/4258
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
>   [i915#4537]: https://gitlab.freedesktop.org/drm/intel/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4816]: https://gitlab.freedesktop.org/drm/intel/issues/4816
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
>   [i915#5030]: https://gitlab.freedesktop.org/drm/intel/issues/5030
>   [i915#5115]: https://gitlab.freedesktop.org/drm/intel/issues/5115
>   [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
>   [i915#5234]: https://gitlab.freedesktop.org/drm/intel/issues/5234
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
>   [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
>   [i915#5465]: https://gitlab.freedesktop.org/drm/intel/issues/5465
>   [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6121]: https://gitlab.freedesktop.org/drm/intel/issues/6121
>   [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
>   [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>   [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6806]: https://gitlab.freedesktop.org/drm/intel/issues/6806
>   [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
>   [i915#6892]: https://gitlab.freedesktop.org/drm/intel/issues/6892
>   [i915#7052]: https://gitlab.freedesktop.org/drm/intel/issues/7052
>   [i915#7061]: https://gitlab.freedesktop.org/drm/intel/issues/7061
>   [i915#7091]: https://gitlab.freedesktop.org/drm/intel/issues/7091
>   [i915#7173]: https://gitlab.freedesktop.org/drm/intel/issues/7173
>   [i915#7213]: https://gitlab.freedesktop.org/drm/intel/issues/7213
>   [i915#7297]: https://gitlab.freedesktop.org/drm/intel/issues/7297
>   [i915#7331]: https://gitlab.freedesktop.org/drm/intel/issues/7331
>   [i915#7461]: https://gitlab.freedesktop.org/drm/intel/issues/7461
>   [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
>   [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
>   [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
>   [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
>   [i915#7823]: https://gitlab.freedesktop.org/drm/intel/issues/7823
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>   [i915#7892]: https://gitlab.freedesktop.org/drm/intel/issues/7892
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>   [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
>   [i915#8190]: https://gitlab.freedesktop.org/drm/intel/issues/8190
>   [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
>   [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
>   [i915#8247]: https://gitlab.freedesktop.org/drm/intel/issues/8247
>   [i915#8381]: https://gitlab.freedesktop.org/drm/intel/issues/8381
>   [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
>   [i915#8428]: https://gitlab.freedesktop.org/drm/intel/issues/8428
>   [i915#8489]: https://gitlab.freedesktop.org/drm/intel/issues/8489
>   [i915#8502]: https://gitlab.freedesktop.org/drm/intel/issues/8502
>   [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
>   [i915#8599]: https://gitlab.freedesktop.org/drm/intel/issues/8599
>   [i915#8617]: https://gitlab.freedesktop.org/drm/intel/issues/8617
>   [i915#8661]: https://gitlab.freedesktop.org/drm/intel/issues/8661
>   [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
>   [i915#8717]: https://gitlab.freedesktop.org/drm/intel/issues/8717
>   [i915#8807]: https://gitlab.freedesktop.org/drm/intel/issues/8807
>   [i915#8810]: https://gitlab.freedesktop.org/drm/intel/issues/8810
>   [i915#8812]: https://gitlab.freedesktop.org/drm/intel/issues/8812
>   [i915#8814]: https://gitlab.freedesktop.org/drm/intel/issues/8814
>   [i915#8841]: https://gitlab.freedesktop.org/drm/intel/issues/8841
>   [i915#8850]: https://gitlab.freedesktop.org/drm/intel/issues/8850
>   [i915#9121]: https://gitlab.freedesktop.org/drm/intel/issues/9121
>   [i915#9226]: https://gitlab.freedesktop.org/drm/intel/issues/9226
>   [i915#9227]: https://gitlab.freedesktop.org/drm/intel/issues/9227
>   [i915#9259]: https://gitlab.freedesktop.org/drm/intel/issues/9259
>   [i915#9260]: https://gitlab.freedesktop.org/drm/intel/issues/9260
>   [i915#9261]: https://gitlab.freedesktop.org/drm/intel/issues/9261
>   [i915#9262]: https://gitlab.freedesktop.org/drm/intel/issues/9262
>   [i915#9265]: https://gitlab.freedesktop.org/drm/intel/issues/9265
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_13609 -> Patchwork_123366v2
>   * Piglit: None -> piglit_4509
> 
>   CI-20190529: 20190529
>   CI_DRM_13609: 1b25a43002e4409156a9b3aa1cb8c08eb4dd343d @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7474: 9d91cf2c6e7bb64d60c2030d1535e40ca0ad53ee @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_123366v2: 1b25a43002e4409156a9b3aa1cb8c08eb4dd343d @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123366v2/index.html

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
