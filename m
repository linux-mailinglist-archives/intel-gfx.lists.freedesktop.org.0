Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3770B68E0DA
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Feb 2023 20:06:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9A2610E5AC;
	Tue,  7 Feb 2023 19:06:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89A3410E191
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Feb 2023 19:06:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675796761; x=1707332761;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=0tY4ynLq31ZWcLNnNOz5uCQxcXvGrzsySqRpjjk4jYk=;
 b=KCQ7JhjlsxIbslHf4rJt88IyeYbx6MLJfxwN3EuCnUwkzAwJD8sV3PHI
 XzuaX64hBgyjvvNb0CKvU58mp9WuT72Ls/41AMz5exWzK8ZKFpWSw5/Ir
 F6GCxA66WpvE761elIRyE8NTPDwqTi5Fl7t+vWH1KzZdmitqSe5Eg2Ont
 pVXOIL8V2/RduebyvmDravUAqUmlo0QJ+f5guJDDdDvsSFy9ik2fou35V
 UsVtIfiRUwzO8A7QibUXTqufkzQ6tKTXlXtX6CErvsR2QispJesGhXiL6
 uwOUJHSAvJEe91rO7UTZSku6nj42pkLtskfOEa5i6w5lTV5fapWzS7CPt g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="328245766"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="328245766"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 11:06:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="995837150"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="995837150"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga005.fm.intel.com with ESMTP; 07 Feb 2023 11:06:00 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 7 Feb 2023 11:06:00 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 7 Feb 2023 11:06:00 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 7 Feb 2023 11:06:00 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 7 Feb 2023 11:05:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DR8Wpp82QFImmK3FTDgtysSa9KOypXekQOv5sNi3sRzy+6lxAnSTnjeJkJ+0aV8bRMU3WyPwNRaeE8CuWfSUJe8RTMAJ+Ye7ohCl6xOki4LEI/HsUC0pqiiodQw8LWn8O3oDmTkN3dkSVx9xrJNe07hfajVE8BJtBd62XBflQ3PL3u4Ck3Id1ecMZe2hRbyQOK81sPkIKViIiudTf9EXuXmOWYXhsn/5NL7e0zxK/Bbis0Rf9yRbaZCdcQhJGVCbFouDkoDaQv6fmKsfa9oDd81i16KIpI9FpAawEoQWTnYqZWdieilwcX6OKwYmA/GP/kIqZvppRRPOO8OYMSz5LA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ICvhspkFC8l1xgtMZY6cG8bBVVYXIjmn7S1hM6Fs5Ic=;
 b=MPG0piDiAaV/Z+H2LkkDpwWjzTIb/qmE4TXXpG+e9L1Ouc+nvQ/UOTg8T60kgrVjXe3ELg6mOga6yJYLsG8xWLI5ZNa5u83+pTTeVN9LG5vayByGk57HJghcfek/SshwUNujUT0+4rGzmkp6AOWxklkwN/0hX/AEa4xQVDMyQJ+uO1kcgtUrKr/4RP46c/B2/0UMb1bDM3t8PCsGw4GpV7HHd5eWdxJdbtbXEo2ot0CsSDx9KM8OYv6Igzi01EKKEQ5hBhmg+N0XqM8/khv3QvALO69mZCeXEu/bVd2dFv9DExJICZ8idJcfBuRJm8hgJG8p9/E/ASMJR/JX7eFI2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by DS0PR11MB8050.namprd11.prod.outlook.com (2603:10b6:8:117::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.19; Tue, 7 Feb
 2023 19:05:58 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::593:877e:dd33:5b7a]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::593:877e:dd33:5b7a%7]) with mapi id 15.20.6064.036; Tue, 7 Feb 2023
 19:05:57 +0000
Date: Tue, 7 Feb 2023 11:05:55 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <20230207190555.2zrcey4vnj2ctjw4@ldmartin-desk2.lan>
X-Patchwork-Hint: comment
References: <20230206165410.3056073-1-lucas.demarchi@intel.com>
 <167571386943.27492.10730325104114115012@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <167571386943.27492.10730325104114115012@emeril.freedesktop.org>
X-ClientProxiedBy: SJ0PR03CA0284.namprd03.prod.outlook.com
 (2603:10b6:a03:39e::19) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|DS0PR11MB8050:EE_
X-MS-Office365-Filtering-Correlation-Id: d7936bb1-2081-4844-bd40-08db093e5825
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: V4KnxB90R70AGPu0xUkbILF5BLa5i2L1fs3mq+t4znRAV78EjEhUQnyAoOg0M+oYtyEiYLg+ar9IpEH3jICANnN1V86WN5q7S7qr+j7wap0gX2ULWyv7IxNk+hHF6ggYlpMcDex2gbemhucVZa7Mf2bx6A8/MiLOeBqtyx1IcJua3Md0aCk0dgObcCrAznLo0qC9kF5AHaHVx+NCmtQ9NtKMaA7o4/yBFQBVbwluJP29aLLB0UPfIbRQGGT/v0TASTiPOGtq1hUv95eqnBKIklPOt03s+g7w/WIsObjwg9h+ROfVDOgalzZgr8pvP81Ny56JnelcUzGzVT45PiGF0DXV+stohq2vmLKD6fBM+oYXiTxY3S2kZR3ZqPJQ/wLKI3iYmIcLtNOK/Q28Z2muGU76EyuF6qAniZoprJyokhG2UsTNmq6N8V7hcSaDQuzQeZCsTluRegcK/8irShiDTdDTJihXbz7Q4DfN/UZBNFQk/yTOZhJC3+8tA+HkqYzuLBbL9hxYUFoQU+ACEKbBf2JhsZ4dU5qnaCAtwQ+2WvUb73mrBBsejoOdpLErkB+gMX5SvH3VCJQkiyxOCrMiGFLzEiufNZ3Ej5rdc2AkxZQEmcFjuWkSAHcgjDluWEeF+xQdW+/KuCtzxHtVO8e/lZr/NVHHlinJFDIE/Nby0RrxKogM0W6r7bmEIRfIgbYA
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(376002)(366004)(396003)(346002)(136003)(451199018)(83380400001)(86362001)(36756003)(82960400001)(8936002)(316002)(5660300002)(2906002)(41300700001)(6916009)(966005)(4326008)(6506007)(6512007)(6486002)(9686003)(38100700002)(107886003)(66556008)(66476007)(1076003)(26005)(186003)(478600001)(66946007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?WzYy23TT7vLsuU3U9lbfrmtmCYp/+veDATgbxP4A7bwpyrpLBkfiSbH3CLun?=
 =?us-ascii?Q?e5B00oy+EIoF0pS9qakIcuffPNhfyDhKx/6c5UZU8DLgr17I9h5AAhycyCE4?=
 =?us-ascii?Q?ZWeCXxkEqxeDaxTRgXhfxzT2fDF92OuSnDfnIfsB02o8G1sNCnzWW6cvV5t8?=
 =?us-ascii?Q?WJ+SB6kzqeJOVDoVzCR0w9K1s61KW7D5KpCnNZlBzl3cLUDOkpSKm4OWkDJv?=
 =?us-ascii?Q?3IKhs9bpLrJqvIHXv6t7FhSi9Eu2Y4d/aKhLx2sa7iujF3BthunrZPrAWw+t?=
 =?us-ascii?Q?V3auK91S3J51ooq3ieESeQTItEMJv3i+okMglWRvgLbyTa8khr8IqN6vrdCW?=
 =?us-ascii?Q?UGsb39oi7xCWg/qv/7+WMf5HEOgNBvgOHfn8MXHcEdrEnGyH4DvEfSyaBXZc?=
 =?us-ascii?Q?moJlmyP7LE3WA5TDYAiUEEeP2tsVdXWjt7KiQUGofVwD5sbzursl9HGR1w2U?=
 =?us-ascii?Q?ls8IbAieMSf+DLBIolgSYnBFByhTKVhxbGWjpTL+7pQVhHa59qmjZTLOZQJZ?=
 =?us-ascii?Q?MtNB5yVlvSRasACSP2zBmGFvH/Whgxr2Fu4Dd1YZ6nNAUuut0dC2fJ/IaqpN?=
 =?us-ascii?Q?dNe8Lw/WoP2ZQLhDuFrVxGdO2e9aDfs6Bdi5GKNLt1g7d/3es4LJE2PjG+5f?=
 =?us-ascii?Q?8nzMry3vURA/8mXJRRaVfI/HxX1JUZN8g7eBfSEsZ8vTVBm3ZMw8QpCInKMm?=
 =?us-ascii?Q?iTUyqwIKsTMNAkCEOPjp6j5BQjwybFjhLuPPid155q6c7KPK74gV3oG1T558?=
 =?us-ascii?Q?/I3Cbzr3gbh3Yrgo9UrvFPmljQQI1wEeh2UNpV3ZXjAesnJr60pgGzZPanak?=
 =?us-ascii?Q?mJlO7kKrgJu6bnS6Wn9Tx6n2ug3e4ChstKFpoyAy7vrDNljSbXzQkyoefjS0?=
 =?us-ascii?Q?XxPxkyavDZ9ZUH2hmd1Y29nR4ehAvU3RF0GKo8AClsDCkX8kIhs0XrkSoJPD?=
 =?us-ascii?Q?qic+7JmS0KnS4vPlWIrkNmbj23zRchjb7OnU2NVomfmN7al6Zttk6UtdSovF?=
 =?us-ascii?Q?qG/98vEFDz3IjyE91MagX2zJn7xAeHQSprJBTxnYXm2zZtaNvDEjcx/0NUoM?=
 =?us-ascii?Q?LZtLjhA8CbhQ0EU9AFGDW+ophPNfMwSm4pBE3lHclK2+bt4TDWROhNNYJFmG?=
 =?us-ascii?Q?bKoibIpqRtqDgGVtv/aMTR9XO82xx2kYC75mAOO6qjVwPxvrKV7S5sHjdS87?=
 =?us-ascii?Q?uMAvzCP8XELVuQ+TsQT8xmeEp+g5C8PFywD6HIjhJCzSh3ZdTtEIW2USnZGh?=
 =?us-ascii?Q?IYrEr36RjhxkYzYYwecQ6ckXL+MpTOdzWtCOmtyz87ZF6iLsqH1f2tVHyE0D?=
 =?us-ascii?Q?H3QFszMAFvB8Uu1IJawElgpKR8ybg2bL1ITeRQCDqAiTReVrUZ5LcUV77hsL?=
 =?us-ascii?Q?O+uU5Ng+Gl1utPQEjPMktjOTL83Wp7Mh+nxShKFlXW/9GVP5Js95vAda+kUk?=
 =?us-ascii?Q?kVxbI8muGCQEX4rkE9CTxV9huaSEZUWCyj2sFB5IgallFGn9BNDBFEa1ecCc?=
 =?us-ascii?Q?kshV9uyK1cY4cAVZXeKFpGABPvOLk8cWAuEgmfJNWN0F+62OoppD47nAi4Ef?=
 =?us-ascii?Q?2lsmeS0oRCDwdB2ufvDe/Z3fiJZz1u5Q5gMiFl7MTTAhFezvYU9Omjqr9Yn4?=
 =?us-ascii?Q?Xw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d7936bb1-2081-4844-bd40-08db093e5825
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Feb 2023 19:05:57.7203 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6FCVMgLcQrpH7lqWgPpKwI/dFRFEivbwJO2cmVC9RNZokcXr6OBjrDwQ/TJsb1bw8QcFPDp53f+LCpmSfM9FocHN8zpZoI9F7gYznvW9Ojs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8050
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgIHNl?=
 =?utf-8?q?ries_starting_with_=5Bv2=2C1/2=5D_drm/i915=3A_Fix_GEN8=5FMISCCP?=
 =?utf-8?q?CTL?=
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
Cc: Lakshminarayana Vudum <lakshminarayana.vudum@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Feb 06, 2023 at 08:04:29PM +0000, Patchwork wrote:
>== Series Details ==
>
>Series: series starting with [v2,1/2] drm/i915: Fix GEN8_MISCCPCTL
>URL   : https://patchwork.freedesktop.org/series/113713/
>State : failure
>
>== Summary ==
>
>CI Bug Log - changes from CI_DRM_12704 -> Patchwork_113713v1
>====================================================
>
>Summary
>-------
>
>  **FAILURE**
>
>  Serious unknown changes coming with Patchwork_113713v1 absolutely need to be
>  verified manually.
>
>  If you think the reported changes have nothing to do with the changes
>  introduced in Patchwork_113713v1, please notify your bug team to allow them
>  to document this new failure mode, which will reduce false positives in CI.
>
>  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113713v1/index.html
>
>Participating hosts (36 -> 34)
>------------------------------
>
>  Missing    (2): bat-atsm-1 fi-snb-2520m
>
>Possible new issues
>-------------------
>
>  Here are the unknown changes that may have been introduced in Patchwork_113713v1:
>
>### IGT changes ###
>
>#### Possible regressions ####
>
>  * igt@kms_flip@basic-flip-vs-modeset@b-dp1:
>    - fi-elk-e7500:       [PASS][1] -> [FAIL][2]
>   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/fi-elk-e7500/igt@kms_flip@basic-flip-vs-modeset@b-dp1.html
>   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113713v1/fi-elk-e7500/igt@kms_flip@basic-flip-vs-modeset@b-dp1.html

unrelated fail. There were no changes between v1 and v2 except for the
commit message in the first patch. v1 got full pass:
https://patchwork.freedesktop.org/series/113626/

Also, looking at 
https://intel-gfx-ci.01.org/tree/drm-tip/bat-all.html?testfilter=basic-flip-vs-modeset
It looks like this machine changed from DP to HDMI starting in
CI_DRM_12708?

Lucas De Marchi


>
>
>Known issues
>------------
>
>  Here are the changes found in Patchwork_113713v1 that come from known issues:
>
>### IGT changes ###
>
>#### Issues hit ####
>
>  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
>    - bat-dg1-5:          NOTRUN -> [SKIP][3] ([i915#7828])
>   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113713v1/bat-dg1-5/igt@kms_chamelium_hpd@common-hpd-after-suspend.html
>
>
>#### Possible fixes ####
>
>  * igt@i915_selftest@live@hangcheck:
>    - bat-dg1-5:          [ABORT][4] ([i915#4983]) -> [PASS][5]
>   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/bat-dg1-5/igt@i915_selftest@live@hangcheck.html
>   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113713v1/bat-dg1-5/igt@i915_selftest@live@hangcheck.html
>
>  * igt@i915_selftest@live@slpc:
>    - {bat-rpls-1}:       [DMESG-FAIL][6] ([i915#6367]) -> [PASS][7]
>   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/bat-rpls-1/igt@i915_selftest@live@slpc.html
>   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113713v1/bat-rpls-1/igt@i915_selftest@live@slpc.html
>
>  * igt@kms_busy@basic@modeset:
>    - fi-elk-e7500:       [FAIL][8] -> [PASS][9]
>   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/fi-elk-e7500/igt@kms_busy@basic@modeset.html
>   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113713v1/fi-elk-e7500/igt@kms_busy@basic@modeset.html
>
>
>  {name}: This element is suppressed. This means it is ignored when computing
>          the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
>  [i915#6311]: https://gitlab.freedesktop.org/drm/intel/issues/6311
>  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
>  [i915#7359]: https://gitlab.freedesktop.org/drm/intel/issues/7359
>  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
>  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>
>
>Build changes
>-------------
>
>  * Linux: CI_DRM_12704 -> Patchwork_113713v1
>
>  CI-20190529: 20190529
>  CI_DRM_12704: 0f138ae07efe477bd51695d63b03394050bb6e07 @ git://anongit.freedesktop.org/gfx-ci/linux
>  IGT_7152: 790b81207a0a6705213ec5ea645bc5e223b2ce1d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>  Patchwork_113713v1: 0f138ae07efe477bd51695d63b03394050bb6e07 @ git://anongit.freedesktop.org/gfx-ci/linux
>
>
>### Linux commits
>
>204afd36a3d7 drm/i915: Remove unused/wrong INF_UNIT_LEVEL_CLKGATE
>80322c878d54 drm/i915: Fix GEN8_MISCCPCTL
>
>== Logs ==
>
>For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113713v1/index.html
