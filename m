Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1887F86AA83
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Feb 2024 09:55:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7191210E740;
	Wed, 28 Feb 2024 08:55:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jeCl7jPZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9098710E740
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Feb 2024 08:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709110506; x=1740646506;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=VrU9YpQNPomZX4AuRHAgLHACdFLRyzJQ3H8coZcDPeE=;
 b=jeCl7jPZhB+B96J63M43Zq5wsVREKFK+7NGwILdjNs/meRRiYNKP4k7h
 YAYlPecmgFYG2ut2YHCCMVzeOy6qha58KrqpfX0IAEW7PAHxy+0BUCObG
 +euRaa5rAVlND8tI5MGg01RRaIXOXEmSfBF2w6fvBM7QThdoeRws5XDgp
 nJeRaB4p/gEcBjxTn1qsSb8oR46lWzVtd99v+yiFWV/YnMiOwOKXqgef0
 gwvL8yMSxv7oBJzQUjlbt+GARlQlefEmotbclHAFLdA3zruOLRVxtElMy
 HgRRuubAxtfPuZ8abOkmLYSNebcEY4VKyaskmeah3XUMsSKAUAsSVKeRz Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="28930533"
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; d="scan'208";a="28930533"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2024 00:55:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; d="scan'208";a="38402966"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Feb 2024 00:55:04 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 28 Feb 2024 00:55:03 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 28 Feb 2024 00:55:03 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 28 Feb 2024 00:55:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eN3p1bSBL13CwPjrnnecrnNrkCdGyu90U9AlQZ+nzHefBCVsK6gIe9LfBhX/e2ngQ/fLx25UU0Z/Gd5nGkXQ7jKPGfqkpa9p4G2ZT9qhc5R7HCM6ipnmYBVgo/ljdTOP5u/5tYsBNLEkGdHs0IqGZi73izobwUuCjGlTdn11V4CW5ZY0R6qwh4dGv0nBOKv0mYzl80D0IvpkHKL+fb2OtoHOGxKXeR2C+KqlITCFfc3SCV+/HtO+2bdGm3I4GW4lENn9xxnTA4OtDyVJT38CX/JMkz0qtBNgp03Wf+v8HwtCvA6EjwOZ0qXEy9hhcz+PPlOUxk3HEuVqqN5rlli74w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1tAKYHgzyDdYOejw3BdfP3QbYK1rdES75Gwk9OtvTao=;
 b=kOwuPFOZ4wcEdnKbGQcJqYLeqt8tJllDfZqzqKZDtxL0S6t35qQads72gWc+nAhjJv4xF99hV8fHf8peFxrroYxYT89mTUIuexkGip1zCZ217s85gM+PMKuvpm13YQIJLiFnaQTVhow8lddIlzOq7R1C9zMnfqJOcLqje3/1DSmTsdBaSdIixuufiVAm15zfV3l0T+ENdC7LZN2YZkunUNXJE7Uxrw8PEDDLCWgIvSWArrAVsWQ7pRCml6tc7GsximUMPJd1xlb1y4PQOEYxFB+MorqsTE+1lyrzWBzPmW1roxLG0JM0BdAjKSnt62ookAhfV0AJhs2dJXYOiYQxlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM8PR11MB5719.namprd11.prod.outlook.com (2603:10b6:8:10::6) by
 SA3PR11MB7655.namprd11.prod.outlook.com (2603:10b6:806:307::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7316.21; Wed, 28 Feb 2024 08:54:58 +0000
Received: from DM8PR11MB5719.namprd11.prod.outlook.com
 ([fe80::e763:85a4:b747:67b2]) by DM8PR11MB5719.namprd11.prod.outlook.com
 ([fe80::e763:85a4:b747:67b2%6]) with mapi id 15.20.7339.024; Wed, 28 Feb 2024
 08:54:58 +0000
Message-ID: <d4033a44-acb8-4727-9564-51514b4e4fbe@intel.com>
Date: Wed, 28 Feb 2024 14:24:44 +0530
User-Agent: Mozilla Thunderbird
Subject: =?UTF-8?Q?Re=3A_=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_series_start?=
 =?UTF-8?Q?ing_with_=5BV2=2C1/2=5D_drm/i915/drrs=3A_Refactor_CPU_transcoder_?=
 =?UTF-8?Q?DRRS_check_=28rev2=29?=
Content-Language: en-US
To: <intel-gfx@lists.freedesktop.org>, <lgci.bug.filing@intel.com>,
 <tejasreex.illipilli@intel.com>
References: <20240227123833.2799647-1-bhanuprakash.modem@intel.com>
 <170910893361.351698.9923766164070310375@8e613ede5ea5>
From: "Modem, Bhanuprakash" <bhanuprakash.modem@intel.com>
In-Reply-To: <170910893361.351698.9923766164070310375@8e613ede5ea5>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0189.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:be::11) To DM8PR11MB5719.namprd11.prod.outlook.com
 (2603:10b6:8:10::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM8PR11MB5719:EE_|SA3PR11MB7655:EE_
X-MS-Office365-Filtering-Correlation-Id: 868a61ae-9f74-49bd-5f7a-08dc383af0f5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 91GI3ymGRMxaRc0E5tkLrmo7FG/kzWd+/3eoQku+ekz/j9AD1mp49VWYAoZf4MSq4PjSWsUR67GKFWSnY8ixdb3tSu0vWFea2SDIBWky1XbzANQFvtFKiQQZwu+Q2Fp2ZVnd6hDrVcv1KrrkVcvF4kP33gJY6iNxqtloosZmb0amfdGYbnBWuEuUv0TBWTLnvfu4HDsxFAFbHW8JB7JBArlQurSWuUi7pHb0Rfh1x11FWyXWAYEt+L28NUSoG/qgu3XUk8buOEP4zeoPE0oOfTkH60lEIcELi8DcQ32n5nxlAqQ0Pt0f4KYUPWtlUs8PXjRGvILTewIuwKyD0XQs6uw0W/BuuRQR+H42iQEXy8yJQQs+BwWRFCKZfNSLp7yJyJX01BeO2bH/IriSvWLNaF83t1AWszTORZcsEIXltmQxWOLjdNjY1VRX+VCCz2Sue70KGLGyJxbt7BZG+6Smdcjm/+4O+xaIKnLThxKP1vKpFy4PjKaaCGr6caEBvSEPjoRXn/9FoZ7bbnk134IBKLerk0veYbOCWFyqhBr9NRujnuPgBc5oHXYsQHFKYWJ3gC/Ioru7yvEJoze7xixOQgJTBNVxB4zy7LGZdFh2Lvr7V8ZYSpYDOhLfU7ITsz+6fXVz7PBMLJTg5zQTgVd08A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5719.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(230273577357003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OFZQcE1NWFE1cWZjYVJPQU9NYncxRU9mRm9MUWxXQ1RhbmIrQjBJcjNpb0lP?=
 =?utf-8?B?N09XeHpBVTllU1BaNEcrUWlCcXZBSUhHbXVqcllBa2YvYm5FMm9mdXcrZUFD?=
 =?utf-8?B?bkxUTU55VVdrYU53dkQrTHNuT0QwbVJla0tNQWwrUW5tME96ZTB0LzJiajlK?=
 =?utf-8?B?cGpPWWpURmllL1pLRFAxUHVwZEZOaE9JeEVBTUhnb0VRTDRBcHpXRVZRNEli?=
 =?utf-8?B?c0VrWEttM3cybGVIeHhtL3RPNTlmUXFRcHRadHlkM3BRK0FsUlJ4enJNOHdJ?=
 =?utf-8?B?OHoxYTNHWVEzNzJWOGVaakVVQ2xaOU40L01zL3dudEE3SjQ5VHdBSkpxRWYy?=
 =?utf-8?B?NmdPUE52SnF5ZWppOFlXRjhXOTNiZ0x0ai9qRU4rZkt2RUx5ZCt2R09hM2hT?=
 =?utf-8?B?RTlkbkk0dTFFeHhTS0NsNWFhRmE0MUZXTmhzZm53cGhtamtKbGY2eGxxSzFo?=
 =?utf-8?B?WWhNbUppTTNTODQ4VE5TaHBabk1uMm5aMzMwSjdwdVp1U1NubHNKd2E3WWUw?=
 =?utf-8?B?Yk1QdmtXN1hIWWk2dDlJcWpJY3pBMzJzUERxQ3ZIQjFuVmZkN3dFbU91ZGNy?=
 =?utf-8?B?WjNpVlNSNGJuQWFyV1hTZHZHVVRnVlJmbVFhcEtKcW5LNlZLalg4b1d4S2ky?=
 =?utf-8?B?bEFaSm1jUFpOSnZMd3RPTHYrVWhGQnZCUkZ5SVNZSE1JUnVySFMyM3RYeUtt?=
 =?utf-8?B?SWE0V0xpT3h0dEo0MTA5ZjBWb1Bza0ZCM0Z5MHJTY2ZYMGsyM3A2azFWT3Fh?=
 =?utf-8?B?cm5pNWV5cE4yMm1COUpqSzVCOHM5OXZ2bVgvWGpnaTB6MXlmVmJ2Ym5QOEtJ?=
 =?utf-8?B?M2pIRkNCUzI1ckRadWhFV3JOaWt6RDZ2ckZZdml4Q2cyWlRCOUl0cStITWpI?=
 =?utf-8?B?U3F2YmhNTy9JVHNFZ3gwUlpzb0NXaXk0anlERFl0NkhrR09BYkFDOUg5dWRN?=
 =?utf-8?B?THkzaWU0M0FoeklkRDMrUjE4MzBUNkVmanRnWlNmVlVRMDRpdEM3SHJIaTN4?=
 =?utf-8?B?eWcyZUFSaTFGSEFUNm1hOWtGMkd6MGpJVko1cDBJRjVudEF4L3dLUkpQNnMw?=
 =?utf-8?B?MHdlMkJTV3JhWVFFeUdXT2lnRjkrS1R0WUF1RmpNNnVMWUFRd3lnVEdhZHZQ?=
 =?utf-8?B?MnNWcWM5Q1MyMWFPUWJzMGYrbjFUWVVqMGd3a2xWS1RQdzRnYlJCa2ZvZjlH?=
 =?utf-8?B?ZjdUeGlkWFBJMkdabk1vcGljZEtyakNTYythdGYzdXE5TXZoU2lBdGJreXZa?=
 =?utf-8?B?Mm9rdEtUaDJDZDRZM0ZXRTRydkxJMU9rQjJsbE5pL3VrS3V6V24vRXp4VEdo?=
 =?utf-8?B?K3QvYk11cmNZWjBVM1QwNkJFdzVlRW4zOW5TdC9EMDVUcllzbXBVWjhvVEdL?=
 =?utf-8?B?VHFHeGtFQXpETHV3TU9MdnhuVVRFV2NmQUd2YUoyUHFaUW9Na3ovL2ZMY0Jq?=
 =?utf-8?B?ZGw1MUJEUzE3T0tlcEdic1ptMXRaZTY0bm1pSnBoYzhFa3hNeXFWSzVkTVAx?=
 =?utf-8?B?MFl3bE40dGpWRytOTUJmalpWU2J0eHFjd3pZM3lyYk5yMHZPbm56VUVxQzVI?=
 =?utf-8?B?bkIwUE1ITEV2Qi9CbnR0KzdJWXMrWUdQQXRRMThUazVuQy8xQ2wxYTZ3NVNq?=
 =?utf-8?B?aWdodnV3NWY0Y3FmUi8rUFhidmlTUXc1eC9aSE1ITTFFdngyeFY5L3FxZWN0?=
 =?utf-8?B?TUoxNm5wb09yandoT3lwZVlOdkZ0YXRwbHNManZLNytWVmhiRjBTaTRtZTVi?=
 =?utf-8?B?dGNsMm1uNkNkNTJGbEdkZW1NUTBnSVg3aDlKVVB6NXJCQzlhckxtUkt0SUNh?=
 =?utf-8?B?SlpJL2JwK1ZCa2RQWi9jVWR1MHVZV3RmenhUZm5CYnM2UmU1QUxuYzdEc2VJ?=
 =?utf-8?B?K3hnOVpBK2tCN1hWSEQ3NEVBR2RGcUJrVHB0S0FIRzlNMkM4RDViM1dYWXps?=
 =?utf-8?B?T0hWN0Z3d1ZlOTlKUzNGWS9US3hBbitGQnIwdXRNdWVidFBaalZHL1ZZQTZY?=
 =?utf-8?B?T1JMckFjVHFDbTZ1R2IvQlN1S2tPN2YrTUgyWjBUUTlvTE9uTGV1ZXo2RzQr?=
 =?utf-8?B?TnJQVEdWM2QzL0d4RjV2WkZyRmExbkErSWp6U3JudVVWTGEybkg3ZEFqU0lz?=
 =?utf-8?B?SkFMaU9aSXR4c3NIV0p5M21qZHlrWjZvSDQrMFJZaEtBbml2YUhlenZDbFAv?=
 =?utf-8?B?Q3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 868a61ae-9f74-49bd-5f7a-08dc383af0f5
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5719.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Feb 2024 08:54:58.4966 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VQtxB2exVyiBM0O22mPGbiMko6JBYTPsiCozkqFN6aAa16xIMOLdwJHtpx63bjkgnQBhDLdzo6ZTPusl6M0A+EGdsyc4eOvwf/Ao4HmS2K0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7655
X-OriginatorOrg: intel.com
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

Hello Bug filing team,

Below failures are False positive, please help to re-report.

- Bhanu

On 28-02-2024 01:58 pm, Patchwork wrote:
> *Patch Details*
> *Series:*	series starting with [V2,1/2] drm/i915/drrs: Refactor CPU 
> transcoder DRRS check (rev2)
> *URL:*	https://patchwork.freedesktop.org/series/130433/ 
> <https://patchwork.freedesktop.org/series/130433/>
> *State:*	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130433v2/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130433v2/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_14354 -> Patchwork_130433v2
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_130433v2 absolutely need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_130433v2, please notify your bug team 
> (I915-ci-infra@lists.freedesktop.org) to allow them
> to document this new failure mode, which will reduce false positives in CI.
> 
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130433v2/index.html
> 
> 
>     Participating hosts (41 -> 41)
> 
> Additional (1): bat-mtlp-8
> Missing (1): fi-snb-2520m
> 
> 
>     Possible new issues
> 
> Here are the unknown changes that may have been introduced in 
> Patchwork_130433v2:
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   * igt@i915_selftest@live@guc_hang:
>       o bat-arls-1: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14354/bat-arls-1/igt@i915_selftest@live@guc_hang.html> -> DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130433v2/bat-arls-1/igt@i915_selftest@live@guc_hang.html>
> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_130433v2 that come from known 
> issues:
> 
> 
>       CI changes
> 
> 
>         Issues hit
> 
>   * boot:
>       o fi-apl-guc: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14354/fi-apl-guc/boot.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130433v2/fi-apl-guc/boot.html> (i915#8293 <https://gitlab.freedesktop.org/drm/intel/issues/8293>)
> 
> 
>         Possible fixes
> 
>   * boot:
>       o bat-jsl-1: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14354/bat-jsl-1/boot.html> (i915#8293 <https://gitlab.freedesktop.org/drm/intel/issues/8293>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130433v2/bat-jsl-1/boot.html>
> 
> 
>       IGT changes
> 
> 
>         Issues hit
> 
>   *
> 
>     igt@debugfs_test@basic-hwmon:
> 
>       o bat-mtlp-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130433v2/bat-mtlp-8/igt@debugfs_test@basic-hwmon.html> (i915#9318 <https://gitlab.freedesktop.org/drm/intel/issues/9318>)
>       o bat-jsl-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130433v2/bat-jsl-1/igt@debugfs_test@basic-hwmon.html> (i915#9318 <https://gitlab.freedesktop.org/drm/intel/issues/9318>)
>   *
> 
>     igt@gem_huc_copy@huc-copy:
> 
>       o bat-jsl-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130433v2/bat-jsl-1/igt@gem_huc_copy@huc-copy.html> (i915#2190 <https://gitlab.freedesktop.org/drm/intel/issues/2190>)
>   *
> 
>     igt@gem_lmem_swapping@verify-random:
> 
>       o bat-mtlp-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130433v2/bat-mtlp-8/igt@gem_lmem_swapping@verify-random.html> (i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +3 other tests skip
>       o bat-jsl-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130433v2/bat-jsl-1/igt@gem_lmem_swapping@verify-random.html> (i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +3 other tests skip
>   *
> 
>     igt@gem_mmap@basic:
> 
>       o bat-mtlp-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130433v2/bat-mtlp-8/igt@gem_mmap@basic.html> (i915#4083 <https://gitlab.freedesktop.org/drm/intel/issues/4083>)
>   *
> 
>     igt@gem_mmap_gtt@basic:
> 
>       o bat-mtlp-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130433v2/bat-mtlp-8/igt@gem_mmap_gtt@basic.html> (i915#4077 <https://gitlab.freedesktop.org/drm/intel/issues/4077>) +2 other tests skip
>   *
> 
>     igt@gem_render_tiled_blits@basic:
> 
>       o bat-mtlp-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130433v2/bat-mtlp-8/igt@gem_render_tiled_blits@basic.html> (i915#4079 <https://gitlab.freedesktop.org/drm/intel/issues/4079>) +1 other test skip
>   *
> 
>     igt@i915_pm_rps@basic-api:
> 
>       o bat-mtlp-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130433v2/bat-mtlp-8/igt@i915_pm_rps@basic-api.html> (i915#6621 <https://gitlab.freedesktop.org/drm/intel/issues/6621>)
>   *
> 
>     igt@i915_selftest@live@late_gt_pm:
> 
>       o bat-arls-1: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14354/bat-arls-1/igt@i915_selftest@live@late_gt_pm.html> -> DMESG-FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130433v2/bat-arls-1/igt@i915_selftest@live@late_gt_pm.html> (i915#10262 <https://gitlab.freedesktop.org/drm/intel/issues/10262>)
>   *
> 
>     igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
> 
>       o bat-mtlp-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130433v2/bat-mtlp-8/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html> (i915#5190 <https://gitlab.freedesktop.org/drm/intel/issues/5190>)
>   *
> 
>     igt@kms_addfb_basic@basic-y-tiled-legacy:
> 
>       o bat-mtlp-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130433v2/bat-mtlp-8/igt@kms_addfb_basic@basic-y-tiled-legacy.html> (i915#4212 <https://gitlab.freedesktop.org/drm/intel/issues/4212>) +8 other tests skip
>   *
> 
>     igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
> 
>       o bat-mtlp-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130433v2/bat-mtlp-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html> (i915#4213 <https://gitlab.freedesktop.org/drm/intel/issues/4213>) +1 other test skip
>       o bat-jsl-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130433v2/bat-jsl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html> (i915#4103 <https://gitlab.freedesktop.org/drm/intel/issues/4103>) +1 other test skip
>   *
> 
>     igt@kms_dsc@dsc-basic:
> 
>       o bat-mtlp-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130433v2/bat-mtlp-8/igt@kms_dsc@dsc-basic.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555> / i915#3840 <https://gitlab.freedesktop.org/drm/intel/issues/3840> / i915#9159 <https://gitlab.freedesktop.org/drm/intel/issues/9159>)
>       o bat-jsl-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130433v2/bat-jsl-1/igt@kms_dsc@dsc-basic.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555> / i915#9886 <https://gitlab.freedesktop.org/drm/intel/issues/9886>)
>   *
> 
>     igt@kms_force_connector_basic@force-load-detect:
> 
>       o bat-mtlp-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130433v2/bat-mtlp-8/igt@kms_force_connector_basic@force-load-detect.html> (fdo#109285 <https://bugs.freedesktop.org/show_bug.cgi?id=109285>)
>       o bat-jsl-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130433v2/bat-jsl-1/igt@kms_force_connector_basic@force-load-detect.html> (fdo#109285 <https://bugs.freedesktop.org/show_bug.cgi?id=109285>)
>   *
> 
>     igt@kms_force_connector_basic@prune-stale-modes:
> 
>       o bat-mtlp-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130433v2/bat-mtlp-8/igt@kms_force_connector_basic@prune-stale-modes.html> (i915#5274 <https://gitlab.freedesktop.org/drm/intel/issues/5274>)
>   *
> 
>     igt@kms_psr@psr-primary-mmap-gtt@edp-1:
> 
>       o bat-mtlp-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130433v2/bat-mtlp-8/igt@kms_psr@psr-primary-mmap-gtt@edp-1.html> (i915#4077 <https://gitlab.freedesktop.org/drm/intel/issues/4077> / i915#9688 <https://gitlab.freedesktop.org/drm/intel/issues/9688>)
>   *
> 
>     igt@kms_setmode@basic-clone-single-crtc:
> 
>       o bat-mtlp-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130433v2/bat-mtlp-8/igt@kms_setmode@basic-clone-single-crtc.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555> / i915#8809 <https://gitlab.freedesktop.org/drm/intel/issues/8809>)
>       o bat-jsl-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130433v2/bat-jsl-1/igt@kms_setmode@basic-clone-single-crtc.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>)
>   *
> 
>     igt@prime_vgem@basic-fence-mmap:
> 
>       o bat-mtlp-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130433v2/bat-mtlp-8/igt@prime_vgem@basic-fence-mmap.html> (i915#3708 <https://gitlab.freedesktop.org/drm/intel/issues/3708> / i915#4077 <https://gitlab.freedesktop.org/drm/intel/issues/4077>) +1 other test skip
>   *
> 
>     igt@prime_vgem@basic-fence-read:
> 
>       o bat-mtlp-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130433v2/bat-mtlp-8/igt@prime_vgem@basic-fence-read.html> (i915#3708 <https://gitlab.freedesktop.org/drm/intel/issues/3708>) +2 other tests skip
> 
> 
>         Possible fixes
> 
>   * igt@i915_selftest@live@hangcheck:
>       o {bat-rpls-3}: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14354/bat-rpls-3/igt@i915_selftest@live@hangcheck.html> (i915#5591 <https://gitlab.freedesktop.org/drm/intel/issues/5591>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130433v2/bat-rpls-3/igt@i915_selftest@live@hangcheck.html>
> 
> {name}: This element is suppressed. This means it is ignored when computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> 
>     Build changes
> 
>   * Linux: CI_DRM_14354 -> Patchwork_130433v2
> 
> CI-20190529: 20190529
> CI_DRM_14354: 0fbbc7c5d35d6bef7e7849f4e627658c41671188 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7731: 17f897a81868fb35c6a7033a8b07256659742248 @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_130433v2: 0fbbc7c5d35d6bef7e7849f4e627658c41671188 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
>       Linux commits
> 
> 58b2fff27cac drm/i915/display/debugfs: Fix duplicate checks in 
> i915_drrs_status
> f1940adfbbe5 drm/i915/drrs: Refactor CPU transcoder DRRS check
> 
