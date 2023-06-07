Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB80B7269B5
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Jun 2023 21:25:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D8D510E0ED;
	Wed,  7 Jun 2023 19:25:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B1A510E0E1
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Jun 2023 19:25:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686165918; x=1717701918;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=ihWyZfzRmuwf4mZ8Lz2Ahm7D4Z42vBmuS8xcmd3kQ6k=;
 b=Vox/IMD4LlJdIQidaF7eP4IHu/hkPv1E4ikj3Yc0eckym+EUqcJZ/AUE
 2QTjXSyOzDlmqFe8Mlq3gRtmP0/LiGPrC45MBYPYnvGzZGbUyG3wQGSJ4
 cDiovDnDx8zo3ghShefnNr0vEuTedmV0uyBlNpamzwEVcCOeT2wgGdxWo
 gBcrsHMR00csdCcrcJ45FKCS9TiMQ+kqMofudbB/bF2ZsUwWhpe1NUnqg
 +X+LglbfZjMQewHxT7zuzEk1nkFU1bpnN1rpQXGE4AYt6GJRWAFVepT0Y
 DDRJaxaLF0CUJKhB7nRzsKj7f7PX4EoLnEQa2PgJB9v1kGUZxYDOn3FpE w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="385418758"
X-IronPort-AV: E=Sophos;i="6.00,225,1681196400"; d="scan'208";a="385418758"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 12:25:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="742830055"
X-IronPort-AV: E=Sophos;i="6.00,225,1681196400"; d="scan'208";a="742830055"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP; 07 Jun 2023 12:25:17 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 7 Jun 2023 12:25:17 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 7 Jun 2023 12:25:17 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.170)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 7 Jun 2023 12:25:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WoW6rxpfLWR1M3ju32+0TDxr1HOm8QMQRgEzuhceNpKv1IOOuoadwu5rZ0nQGfiRZ+7VzbcPWEcGailUh/kV7uXQT1kICWQYcb2zTVPcdfE0kfcca7hzdGzUY14KlvCvSH9KwtaKz5uLMwDfI8Hf1c2vn05vvJI7qV76r2dWJCCsECJD5mEPMvCM8qHlh0L1OeUXSiZRWvNcdetsYebXlRjYcuWmnFiVLjSnMh7Yd0P8tL+HrDfOFzI6Yda/kQSV6+OgodABajdjBJFWA2FJvP9LkWaCE2HhQ8fGYfcZVYL3Htbx/A8P8pkcoJkYYiztW7a26VRxDZxtITqCZGvm/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xeYW4x1pP0w8oHmr2RqNQwORIQvNAV36Vh7VZiHIVMo=;
 b=nF0//HLNGsbFrVDN/KQotVEVihNRApxUqlT4lLMsA2nrNd7BtjCf46JaDQCvL0jjrNFl/dsxKL960aAZJzyWZtsP03UhjuE0UPgfU1YhnLBiuCZLr6GnBFuu6JFSpc2wYkAtPmiF0zCsgN7TEOA58wdAVU8/HR9hC1DmGGLecczTRafSSowKa7Dq9z1LcPES8MuaaVXsie02AcjIFdGqnpgWDwr3dFtaqxk5MwgjY1Dc0SU7IQD14bCMDELWHibYutErbffekypkAXGVv9EfYtwHsHCzF4vBEh8MpZ0v3ecn/vvDs813QBCygbdLtP1Mt88BimK5QsXB0lw2tbYjOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 SN7PR11MB7065.namprd11.prod.outlook.com (2603:10b6:806:298::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.28; Wed, 7 Jun
 2023 19:25:09 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::daaa:41e1:8dc4:d281]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::daaa:41e1:8dc4:d281%7]) with mapi id 15.20.6455.030; Wed, 7 Jun 2023
 19:25:09 +0000
Date: Wed, 7 Jun 2023 12:25:03 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <ZIDZj4EysZtLSxD9@orsosgc001.jf.intel.com>
References: <20230605193923.1836048-1-umesh.nerlige.ramappa@intel.com>
 <168600866147.24738.6701278471629231908@emeril.freedesktop.org>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <168600866147.24738.6701278471629231908@emeril.freedesktop.org>
X-ClientProxiedBy: SJ0PR13CA0131.namprd13.prod.outlook.com
 (2603:10b6:a03:2c6::16) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|SN7PR11MB7065:EE_
X-MS-Office365-Filtering-Correlation-Id: 0cd82c0c-ca9c-4148-67e1-08db678ce7ff
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5s2XZbXr8rPh4SDew/oybJvxoXvt18NGDT/n8hdsEYQzZPx3tf+vx1/duaCrMK/TB1+9SbKODAMBFtF6uV6qjuWxiLC4CS64Zmq2gOAGIwTgj1yJE+qHjZbHZeR6lAfaGJpAIp0d5ly56KdI3lNRVZyBeJqm4K8R8ubTuotaBFk8evG21tABCTHys4p6s//FPVVa7e+hGnSgW4jhSA36x76urdXJbObwEXzvTeWsZaSHeGrk3WKr+7xGuP6Yv1N4lgkkkP6/brH39KSWhu3qawqwLcMhw7g1HOkmiB7nAZisBX4d/UN9FyhHLQivozSx8jcjQZs5Z7MO4J1mGT4FJ7R7t9DRp4i/WFBwAbcuRzDsOVVtAnrgdGmlAVcydyc4C+NPjWtkeu4/OW1SAiWKeLvV0hzG6btce19qOH7IibTMEfBc035wvjdvz5E4vLg+Fm72JC1OYVIg2tIIVlkMHUJb65QzJQBuApgcJDLMYGVgB6T4ImlQuseUdeb/tQGtdEeSpNHM4tFAJTVEDT/mFib7NmRynQ9NxjLQbxewjAo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(366004)(346002)(396003)(136003)(376002)(451199021)(478600001)(45080400002)(2906002)(966005)(107886003)(6486002)(6666004)(83380400001)(6506007)(86362001)(82960400001)(38100700002)(6512007)(26005)(186003)(316002)(41300700001)(8936002)(66946007)(6916009)(66556008)(66476007)(4326008)(5660300002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V0FHTmcyc2pqQmUvdzJ5N05EUEhGZWJuUnRvR0lPU2dsMHJ1SDZNVnRFcXBM?=
 =?utf-8?B?SU4waGFaa1BqV0czMVVNbXZkU2RaTERObnVENmhmT1dnVWQ4d3k5bGFkZk4x?=
 =?utf-8?B?RXV6NUU3UnlXRXhVY09QbVBmUmxHb25vV2x1cnJUNjhwWW5BclVJWkRpRnpS?=
 =?utf-8?B?MmRPcmVJTlplZitpcXlIUm9LNnEwK0wvLzQ0R0E1MkF1NTl2dStwMTVuOUFN?=
 =?utf-8?B?M0NtZFJ4dTdDTWtMamxoV3dZQldWU01wRjBLaE5RRnRFVXlsUFlvU2lnM1BE?=
 =?utf-8?B?MmorY0J0Yjc4Q3JjZThBL0QvWjF4eXl1dUpTaWdJaGVpY3FoK2RWeU9obC9q?=
 =?utf-8?B?VnRhUUZaTnFMMUF2S01aUzhxNDVFVEpNdndOY1VwNHczYkhyQzBETkc0ODVO?=
 =?utf-8?B?WGI1QUI0bDEyaEtpbnZlNDY5OHV2aEhUa0hxdGczczFiaTFiQXNLU2I2Y0Zz?=
 =?utf-8?B?aFphS0ZlZmR6Wk1kaGxDd3JtRzFOTzY0dnlsY3hOd1VWVVJSaElCYVIzTCtB?=
 =?utf-8?B?dStodjRUTW9INGVPT1FESU04dk1Vb1pWOTdzZzFQOUdBZm9lc21qV2srcGRC?=
 =?utf-8?B?bURZRStZbXhqY01SQ3ZQR2R6eG1QckFRbXIxS0hwL1FoMjYxMmtsTmNyR1E2?=
 =?utf-8?B?WlRRQi9EdTQ2cXpnaWhVZXhIN0Y1bnBGdHh4L1FQSHBXa1Ztbys2VXU0WFRI?=
 =?utf-8?B?dlRpaER1aVcxZnlGYThZZUVsTjRJQklXQjlHWTErQXNTc28zQVFPTVl5Nkpq?=
 =?utf-8?B?RndmRWYzUzZ6cVdEWFFJd1YrcG1hWVB0YW94MmFIcDB2UUl2cDZaNkxtTGhT?=
 =?utf-8?B?Sk1yK0hMU0xVcUt1Y0dQQmcxS25DanFSb21NNEJ1UTZzTGpCN21zTjRXT0lQ?=
 =?utf-8?B?RXpQamZKaVF2N3I2Zi80VFZMcjBlVFBUd1l5ZHYxVExCL05lTXlaSFlIYlRF?=
 =?utf-8?B?YWJsNVR5Rk1LWkNZcXMzM1pzN2NFUDlGcS9aRzM3T3JpWmNSeHp2VWVhZUxO?=
 =?utf-8?B?a2NGSXAyNlZ4ZzJGU0pERnpkd3pURlhLTzB6SldWemkySEMyTms3aXIrM0VL?=
 =?utf-8?B?b2xhSytqaldJdU1DZjR4ZDR4OGY4a3ExaDltTXV1MThhakRjZ1JNWWxyQS9Y?=
 =?utf-8?B?bW1zdEhSeFBYSEpkNzJqQUIwYUJTOVR3MUhxVGpHRmJpeW5sYzl1UVFmUHZX?=
 =?utf-8?B?Nlk2Zk13cndHM3pMVWJiVjJHeEJnMExsVTlzVDZrWTc1cmxzcWVTTC9qTVZo?=
 =?utf-8?B?YzBxRzNhN0ZXUXVhYXNsSUZDcmhpNW1zeFloY0tCRGNEejRSdWxpUGJXNHZs?=
 =?utf-8?B?aHF5amNEcDJTOEtkT05MS0E0UEpCT2hIQ254VW53ZkRmRGp5MXY4K1hEYTI0?=
 =?utf-8?B?a1pTUTBPTzVtcUNJQ1BXcVN3N3lKRGlwT1ZoM1FNdzhSN0FBVW1ISzZyakNR?=
 =?utf-8?B?WG82RngxcDVtSlRaNzhWYWZvYVdNbDdjMHc1QzFTZWdzd2V3TmIzM2l1Mzh5?=
 =?utf-8?B?OHpaazdKYXI2K2U0VkxPckdDbHluZDlYandzbHYvVzZGdFlmVEZKMmtTQWNE?=
 =?utf-8?B?MjlNR0VDbzh6NlN4a1JHQ3RvOGN0MFp3dHNQb013aEpMV3BqOFkzNUlSRUpG?=
 =?utf-8?B?ZW5KRSt4VURRQUxBbEJvdGt2U0J0eXFwN2JuYldhZzRCc1RWWmRLOUh0R3NT?=
 =?utf-8?B?N1Q1UzREbThGQUVwa3BSZTVqWkd6Zi8vVmZYM2k5TE5LNndYV0FvMnhoZG90?=
 =?utf-8?B?WXZzKyt6UFdmUUZFNFdrRGNLRXA2SndtaERlSGh0V2JqSjVKMVMwWXNaeVg3?=
 =?utf-8?B?SE1CdklJT2NoTk5rRVhadkx6c1EvZWQrbzhZOTFNNDdjMVZQV0QxdC94RnlX?=
 =?utf-8?B?MVUyU20wTTRad0hVWlVHWkYxb0Jsc2loWEpoWjBtS0xuYXVwSUZMeXE0cGNi?=
 =?utf-8?B?Q2VzMVlNWDBRUXI5Z3FMRVhUdVhUZGwzZnM1ZkpVcWZzYmpYMDdJNjdBSzBv?=
 =?utf-8?B?Y01ncXZWSk13WndjTC9IZklaRGNoNG4vRUpLQTJuYjdPbXFFUmg3Vm9CQ3J2?=
 =?utf-8?B?c2pSejhCS3dPOVhrZDdLZE9telEzbk92aS9xS3FyT3lXbjcvdTM1K1RkWm1R?=
 =?utf-8?B?ZW5RdEErWGMzRk5GdUtvMEs3SDJRbmJmb3cvQmxieFM0YjNmTEtEQVBDSFBO?=
 =?utf-8?Q?DbaZpybcWRzx1pSRSlqzYy4=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0cd82c0c-ca9c-4148-67e1-08db678ce7ff
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jun 2023 19:25:09.1632 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DXxZUfuCIbbel+685rdv3HaSVudSvt2FRRMQTkJrrvQAimLYiBkufHyAKLRr0NR5+8gKzEq+yDD830KTIXNBHuhSnsTiL0PE3tGDuN25IQs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7065
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgQXZv?=
 =?utf-8?q?id_reading_OA_reports_before_they_land?=
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

On Mon, Jun 05, 2023 at 11:44:21PM +0000, Patchwork wrote:
>   Patch Details
>
>Series:  Avoid reading OA reports before they land
>URL:     [1]https://patchwork.freedesktop.org/series/118886/
>State:   failure
>Details: [2]https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118886v1/index.html
>
>          CI Bug Log - changes from CI_DRM_13232 -> Patchwork_118886v1
>
>Summary
>
>   FAILURE
>
>   Serious unknown changes coming with Patchwork_118886v1 absolutely need to
>   be
>   verified manually.
>
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_118886v1, please notify your bug team to allow
>   them
>   to document this new failure mode, which will reduce false positives in
>   CI.
>
>   External URL:
>   https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118886v1/index.html
>
>Participating hosts (37 -> 37)
>
>   Additional (1): bat-rpls-2
>   Missing (1): fi-snb-2520m
>
>Possible new issues
>
>   Here are the unknown changes that may have been introduced in
>   Patchwork_118886v1:
>
>  IGT changes
>
>    Possible regressions
>
>     * igt@i915_selftest@live@gt_timelines:
>
>          * fi-apl-guc: [3]PASS -> [4]DMESG-WARN +2 similar issues

<3> [309.685038] i915 0000:00:02.0: [drm] *ERROR* Failed to probe lspcon

This warning is not related to OA or any use case from this patch.

>
>    Warnings
>
>     * igt@kms_psr@sprite_plane_onoff:
>
>          * bat-rplp-1: [5]SKIP ([6]i915#1072) -> [7]ABORT

+ John

These are not related to OA, but a known lockdep issue.

<4>[  229.036305] ======================================================
<4>[  229.036320] WARNING: possible circular locking dependency detected
<4>[  229.036334] 6.4.0-rc5-Patchwork_118886v1-g450d228e3840+ #1 Not tainted
<4>[  229.036348] ------------------------------------------------------
<4>[  229.036362] kworker/0:0H/8 is trying to acquire lock:
<4>[  229.036374] ffff888117b74f48 (&gt->reset.backoff_srcu){++++}-{0:0}, at: _intel_gt_reset_lock+0x0/0x330 [i915]
<4>[  229.036503] but task is already holding lock:
<4>[  229.036521] ffffc900000d3e60 ((work_completion)(&(&guc->timestamp.work)->work)){+.+.}-{0:0}, at: process_one_work+0x1cc/0x510
<4>[  229.036548] which lock already depends on the new lock.

<4>[  229.036574] the existing dependency chain (in reverse order) is:
<4>[  229.036598] -> #3 ((work_completion)(&(&guc->timestamp.work)->work)){+.+.}-{0:0}:
<4>[  229.036624]        lock_acquire+0xd8/0x2d0
<4>[  229.036636]        __flush_work+0x74/0x530
<4>[  229.036646]        __cancel_work_timer+0x14f/0x1f0
<4>[  229.036658]        intel_guc_submission_reset_prepare+0x81/0x4b0 [i915]
<4>[  229.036799]        intel_uc_reset_prepare+0x9c/0x120 [i915]
<4>[  229.036938]        reset_prepare+0x21/0x60 [i915]
<4>[  229.037054]        intel_gt_reset+0x1dd/0x470 [i915]
<4>[  229.037172]        intel_gt_reset_global+0xfb/0x170 [i915]
<4>[  229.037285]        intel_gt_handle_error+0x368/0x420 [i915]
<4>[  229.037401]        intel_gt_debugfs_reset_store+0x5c/0xc0 [i915]
<4>[  229.037509]        i915_wedged_set+0x29/0x40 [i915]
<4>[  229.037600]        simple_attr_write_xsigned.constprop.0+0xb4/0x110
<4>[  229.037616]        full_proxy_write+0x52/0x80
<4>[  229.037627]        vfs_write+0xc5/0x4f0
<4>[  229.037637]        ksys_write+0x64/0xe0
<4>[  229.037646]        do_syscall_64+0x3c/0x90
<4>[  229.037658]        entry_SYSCALL_64_after_hwframe+0x72/0xdc
<4>[  229.037672] -> #2 (&gt->reset.mutex){+.+.}-{3:3}:
<4>[  229.037694]        lock_acquire+0xd8/0x2d0
<4>[  229.037704]        i915_gem_shrinker_taints_mutex+0x31/0x50 [i915]
<4>[  229.037835]        intel_gt_init_reset+0x65/0x80 [i915]
<4>[  229.037948]        intel_gt_common_init_early+0xe1/0x170 [i915]
<4>[  229.038055]        intel_root_gt_init_early+0x48/0x60 [i915]
<4>[  229.038158]        i915_driver_probe+0x243/0xcd0 [i915]
<4>[  229.038247]        i915_pci_probe+0xdc/0x210 [i915]
<4>[  229.038335]        pci_device_probe+0x95/0x120
<4>[  229.038347]        really_probe+0x164/0x3c0
<4>[  229.038358]        __driver_probe_device+0x73/0x160
<4>[  229.038371]        driver_probe_device+0x19/0xa0
<4>[  229.038384]        __driver_attach+0xb6/0x180
<4>[  229.038395]        bus_for_each_dev+0x77/0xd0
<4>[  229.038405]        bus_add_driver+0x114/0x210
<4>[  229.038415]        driver_register+0x5b/0x110
<4>[  229.038425]        0xffffffffa00fd033
<4>[  229.038439]        do_one_initcall+0x57/0x270
<4>[  229.038450]        do_init_module+0x5f/0x220
<4>[  229.038461]        load_module+0x1ca4/0x1f00
<4>[  229.038472]        __do_sys_finit_module+0xb4/0x130
<4>[  229.038484]        do_syscall_64+0x3c/0x90
<4>[  229.038495]        entry_SYSCALL_64_after_hwframe+0x72/0xdc
<4>[  229.038508] -> #1 (fs_reclaim){+.+.}-{0:0}:
<4>[  229.038528]        lock_acquire+0xd8/0x2d0
<4>[  229.038538]        fs_reclaim_acquire+0xac/0xe0
<4>[  229.038550]        __kmem_cache_alloc_node+0x30/0x1b0
<4>[  229.038563]        kmalloc_trace+0x24/0xb0
<4>[  229.039296]        kernfs_fop_open+0xc0/0x3d0
<4>[  229.040028]        do_dentry_open+0x14a/0x440
<4>[  229.040754]        path_openat+0x663/0x8a0
<4>[  229.041480]        do_filp_open+0xb1/0x120
<4>[  229.042030]        do_sys_openat2+0x250/0x330
<4>[  229.042545]        do_sys_open+0x43/0x80
<4>[  229.043107]        do_syscall_64+0x3c/0x90
<4>[  229.043665]        entry_SYSCALL_64_after_hwframe+0x72/0xdc
<4>[  229.044221] -> #0 (/-1493934552){...+}-{0:0}:
<1>[  229.045307] BUG: kernel NULL pointer dereference, address: 0000000000000014
<1>[  229.045852] #PF: supervisor read access in kernel mode
<1>[  229.046390] #PF: error_code(0x0000) - not-present page
<6>[  229.046922] PGD 0 P4D 0 <4>[  229.047460] Oops: 0000 [#1] PREEMPT SMP NOPTI
<4>[  229.048034] CPU: 0 PID: 8 Comm: kworker/0:0H Not tainted 6.4.0-rc5-Patchwork_118886v1-g450d228e3840+ #1
<4>[  229.048629] Hardware name: Intel Corporation Raptor Lake Client Platform/RaptorLake-P LP5 RVP, BIOS RPLPFWI1.R00.3257.A00.2207020323 07/02/2022
<4>[  229.049233] Workqueue: events_highpri guc_timestamp_ping [i915]
<4>[  229.049965] RIP: 0010:print_circular_bug_entry.isra.0+0x44/0x50
<4>[  229.050571] Code: 53 48 89 f3 89 d6 e8 5b 74 01 00 48 8b 7d 00 e8 d2 f3 ff ff 48 c7 c7 65 21 3c 82 e8 46 74 01 00 48 8b 3b ba 06 00 00 00 5b 5d <8b> 77 14 48 83 c7 18 e9 50 d6 04 00 90 90 90 90 90 90 90 90 90 90
<4>[  229.051206] RSP: 0018:ffffc900000d3b68 EFLAGS: 00010046
<4>[  229.051853] RAX: 0000000000000001 RBX: ffff888100d9b3f0 RCX: 0000000000000000
<4>[  229.052506] RDX: 0000000000000006 RSI: ffffffff823ccb57 RDI: 0000000000000000
<4>[  229.053151] RBP: ffff888100d9b3c8 R08: 0000000000000000 R09: ffffc900000d3a10
<4>[  229.053794] R10: 000000000024fd38 R11: 000000000024fda8 R12: 0000000000000000
<4>[  229.054443] R13: ffffc9000256fd00 R14: ffff888100d9a9c0 R15: ffffffff83f8fd40
<4>[  229.055094] FS:  0000000000000000(0000) GS:ffff8882a7000000(0000) knlGS:0000000000000000
<4>[  229.055753] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
<4>[  229.056409] CR2: 0000000000000014 CR3: 00000001095b2000 CR4: 0000000000f50ef0
<4>[  229.057069] PKRU: 55555554
<4>[  229.057727] Call Trace:
<4>[  229.058378]  <TASK>
<4>[  229.059023]  ? __die_body+0x1a/0x60
<4>[  229.059671]  ? page_fault_oops+0x156/0x450
<4>[  229.060319]  ? do_user_addr_fault+0x65/0xa10
<4>[  229.060976]  ? exc_page_fault+0x68/0x1a0
<4>[  229.061629]  ? asm_exc_page_fault+0x26/0x30
<4>[  229.062281]  ? print_circular_bug_entry.isra.0+0x44/0x50
<4>[  229.062926]  print_circular_bug.isra.0+0x111/0x3f0
<4>[  229.063536]  check_noncircular+0x131/0x150
<4>[  229.064154]  ? arch_stack_walk+0x87/0xf0
<4>[  229.064759]  check_prev_add+0x90/0xc60
<4>[  229.065363]  __lock_acquire+0x19a3/0x25a0
<4>[  229.065966]  ? startup_64_setup_env+0x184/0xaf0
<4>[  229.066568]  lock_acquire+0xd8/0x2d0
<4>[  229.067173]  ? __pfx__intel_gt_reset_lock+0x10/0x10 [i915]
<4>[  229.067881]  _intel_gt_reset_lock+0x57/0x330 [i915]
<4>[  229.068586]  ? __pfx__intel_gt_reset_lock+0x10/0x10 [i915]
<4>[  229.069288]  guc_timestamp_ping+0x35/0x130 [i915]
<4>[  229.070018]  process_one_work+0x250/0x510
<4>[  229.070629]  worker_thread+0x4f/0x3a0
<4>[  229.071235]  ? __pfx_worker_thread+0x10/0x10
<4>[  229.071845]  kthread+0xff/0x130
<4>[  229.072454]  ? __pfx_kthread+0x10/0x10
<4>[  229.073064]  ret_from_fork+0x29/0x50
<4>[  229.073674]  </TASK>
<4>[  229.074283] Modules linked in: vgem drm_shmem_helper snd_hda_codec_hdmi snd_hda_intel snd_intel_dspcfg snd_hda_codec snd_hwdep snd_hda_core snd_pcm i915 prime_numbers i2c_algo_bit ttm drm_buddy drm_display_helper drm_kms_helper fuse r8153_ecm cdc_ether usbnet x86_pkg_temp_thermal coretemp kvm_intel kvm e1000e mei_pxp mei_hdcp r8152 irqbypass crct10dif_pclmul crc32_pclmul wmi_bmof mii ghash_clmulni_intel mei_me ptp i2c_i801 mei pps_core i2c_smbus video intel_lpss_pci wmi
<4>[  229.075708] CR2: 0000000000000014
<4>[  229.076421] ---[ end trace 0000000000000000 ]---
<4>[  229.373071] RIP: 0010:print_circular_bug_entry.isra.0+0x44/0x50
<4>[  229.373942] Code: 53 48 89 f3 89 d6 e8 5b 74 01 00 48 8b 7d 00 e8 d2 f3 ff ff 48 c7 c7 65 21 3c 82 e8 46 74 01 00 48 8b 3b ba 06 00 00 00 5b 5d <8b> 77 14 48 83 c7 18 e9 50 d6 04 00 90 90 90 90 90 90 90 90 90 90
<4>[  229.374830] RSP: 0018:ffffc900000d3b68 EFLAGS: 00010046
<4>[  229.375578] RAX: 0000000000000001 RBX: ffff888100d9b3f0 RCX: 0000000000000000
<4>[  229.376235] RDX: 0000000000000006 RSI: ffffffff823ccb57 RDI: 0000000000000000
<4>[  229.376927] RBP: ffff888100d9b3c8 R08: 0000000000000000 R09: ffffc900000d3a10
<4>[  229.377649] R10: 000000000024fd38 R11: 000000000024fda8 R12: 0000000000000000
<4>[  229.378373] R13: ffffc9000256fd00 R14: ffff888100d9a9c0 R15: ffffffff83f8fd40
<4>[  229.379100] FS:  0000000000000000(0000) GS:ffff8882a7000000(0000) knlGS:0000000000000000
<4>[  229.379838] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
<4>[  229.380578] CR2: 0000000000000014 CR3: 00000001095b2000 CR4: 0000000000f50ef0
<4>[  229.381331] PKRU: 55555554


>
>Known issues
>
