Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1144759C52
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jul 2023 19:23:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A21810E4DA;
	Wed, 19 Jul 2023 17:22:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F193010E4DA
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jul 2023 17:22:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689787377; x=1721323377;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=26ybhV3THiHTK4HK53fxnw40DooyfXITDtL6utGhKe4=;
 b=fBS8uj/wY28KntVElMR8nwzliyN+KekVvqmFJziMAF5mNNvQq5N2fO27
 E0nuMiqbv+DNJAv2/oQXIGtAMWxMAO/Bbg5v09qsHmlQjwhb4G2qK1FnH
 PvO/aeAR/PNy/3rCBE8tg4ftuERVp5idenYSPvKe3SDgjGZdDBV3xYmM8
 WDIeGWnasMq5KIWiXR6SQCDhMgexwwguHCbF5+g9L7a4GIfWsw2njtDlF
 XB3t7o5AoueQVFei5Gpml3UekJWmLbIu+mU6tTLnp6yRyiNCk8kabH/c1
 tYvDUwwFuZmAWvn0880+ETS9bzyPTH3KsGudkgIzl89KRqWgcrsQhLtJU Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="356487848"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="356487848"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2023 10:22:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="867557820"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP; 19 Jul 2023 10:22:56 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 19 Jul 2023 10:22:55 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 19 Jul 2023 10:22:55 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 19 Jul 2023 10:22:55 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 19 Jul 2023 10:22:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PyaZKYQUMJKKrN1k6dlsy9biNq3uLqlXGk/80wFUZb4K0KSuGuHloy8JosDQg5xyp6I++A+Ux6lSEdAx2so+yCzHvCMQ49aSyTJOSOcN+YLDu0QvJgLqV9WfBXRAIZlcvpHutkiqbXoA0RPztrXQkbNra4iZWEiUifzpFOedAXib7cP8jHKq6cm1KpTUp8e9ecN5Qw25C+zhk8RlagR7frX+tbvElGIh7rpz6s72Hs3ihLE4zZmha9Ei0qKz9M02lB2e+siTqpc4Ti7aHDdr84QkG/xVasyUXHaKsZoViJ0Shk4viMHP3NiA3PmM8Kf65HSP8ZrRJh0vCIo04AjXFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NeIg+jZWaNx4eURI7HAOQx7nvMExVKs6wCbRR3Sk1LU=;
 b=mp3RmFB+GLeoMRKUWdBcOI2BbpVEuuSJ06++zaKC1glV+gf+LDmdDOpFuWfSyxu4d2v9HaxosFesH3JyWaVdrYOCzN5D44InJzb8EHvm4hyCDDmKonIA+nm70Ls0vdd/FUXmzAtpysaxwv99uLMUeeNJXMEcVsxT3euRYe8h7Hlxg1u5vrO7BeHUnThXreDUf7Xa5+4DxjZjrGVUwCD7L0F+LDoSzf5uj2K0suMp573pl2SgpEM2Elr1K3AP+SOgKRXNVypyigbPp05pUkZLBeMHI0rjOthYhXwijCii6jrM3LDeiqc4NnoYIjPPkP3KgC50c0vSkF+VQbFl4ZX0vg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by PH8PR11MB6563.namprd11.prod.outlook.com (2603:10b6:510:1c2::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.33; Wed, 19 Jul
 2023 17:22:52 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::e76d:33ce:73f1:573d]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::e76d:33ce:73f1:573d%7]) with mapi id 15.20.6588.031; Wed, 19 Jul 2023
 17:22:52 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20230718222753.1075713-11-matthew.d.roper@intel.com>
References: <20230718222753.1075713-10-matthew.d.roper@intel.com>
 <20230718222753.1075713-11-matthew.d.roper@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Wed, 19 Jul 2023 14:22:46 -0300
Message-ID: <168978736616.1692803.4701099360430009902@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR04CA0170.namprd04.prod.outlook.com
 (2603:10b6:303:85::25) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|PH8PR11MB6563:EE_
X-MS-Office365-Filtering-Correlation-Id: 6b432f62-1e5b-420d-2702-08db887cc85b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /ZABWMezJ03cvCu+483kys/8USKgdPoQsFKDaDfo6NloL1rGH2ZHBi3O4DW40IrKDVzTSheE+imJjoSnJ6qa7L+ECanoQK8qAPqqzuocGrTavqLVzqiG2qSoIKLoKjpEaeHjr5bqIAOHy/+dGM7PL32+zZojlI/JwBJAU9vS4zI6NQ4xsXWFGt2Eq02TWv1SlJbAc40hbzgov7lOjyO7GriSC83h5v8GTast6Oazag/1pWnzF6jJgM57IpACBIumoJfQ+Q/eGMaF2VXugINVhybMFh8Gzo9elJ6ejNnl3D0zxsISZZ4SOo0qY0nxLLjC0W/wkjxEGSNZKcGNHovLAd9+57OF6+u2FWmnTks9OPWSgG4TZqI2GxvvhPCAUPIDA0P0hmlsF5zq9u6namW4iazONrb97NpPREZe199Ago4062xUzgsTTLjT9Sfh83GKq2BtZYzhXnT3M3RWANFlHzN+fT5nEieE4b22Ez/UabiQuMyTKFsATCz7yxSn4txASWpPDC9MVGpetL0ITtO2DaPtXaKOoF5P4VDmZDaZT149o9NyvBt/HwhznCwS9rvK
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(396003)(39860400002)(376002)(366004)(346002)(136003)(451199021)(186003)(478600001)(6666004)(6486002)(6506007)(26005)(9686003)(107886003)(6512007)(2906002)(33716001)(8936002)(66946007)(4326008)(66556008)(5660300002)(8676002)(316002)(44832011)(66476007)(38100700002)(82960400001)(41300700001)(86362001)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aVE3MFdydGdUZ3UxS011endPR1d2RkRqdDFGU2cweHIwZnI5bFQ1cVpVUWor?=
 =?utf-8?B?SERXR25xZ1dPWXB2dmhoOEhwSTNxRVI3RXppYUJVQldmYVRPdUVUZ1JmaGtj?=
 =?utf-8?B?OUFsREFEZ3ZUN3o3OTA1MGxUWUdjaW1NTEg1ZWFBWERPb1dxb3FISEYrYytI?=
 =?utf-8?B?SmttM2crOXVRb1R1bjY5WnR0dkNNSE1TaGNFVU5YRHhvcTVacHhyT3kzVFhK?=
 =?utf-8?B?akZqOTF5VlluN0FTYVhoNFlDejN1S1daejJyd0FSSmJYUmc4WXVva1cycExa?=
 =?utf-8?B?UktDTzZvQ1dQYm5xdjRKanNHNjYrZnRMa3N2R0Vnc0FGSGNRaTlMUThGUjVQ?=
 =?utf-8?B?L2pBTlJ3QlZ4dzIrOHhzMnltOURPSzA2cmtkcTFPNTN3ZTErZGNXb0hFa0xx?=
 =?utf-8?B?czRzU25rUmhabjcxQ0lkOEZMVVZBY0s2dEhQVGxJR2dZNFJUUzExeWN0R3c4?=
 =?utf-8?B?T0lxWVJMSDJ4RDhlK28vSnZ1bFc5M1ZUVUdaR3JFSW9iandJN1lYZUh5OURv?=
 =?utf-8?B?WVZjTjZBYWdBUFlrQnB0SE10cVZBaldOcVc0TDhZTFBUcUE3N29Kd3F6NUZI?=
 =?utf-8?B?eE1iY0ZyNWVnanF0a1cvRzZRZVVxMSttbXlGMExyaWZzMXJuMGI0M1hqN2wv?=
 =?utf-8?B?MjNWb0lmNy9kRnR5MCtmNkRBdU1qUk5wSlA4WHZUMU9oVHdlRjc3cXExYld6?=
 =?utf-8?B?cEpHM2ladFNxbXRBSEw4K2tIaEh5dGw1VGdIWWI0QnVUT2YvUGhqWVRzOUZZ?=
 =?utf-8?B?NW1JczFrVEltbXBrRWNLcmlNbGhNN3YvSXZmQ3N1SGlON2V5YVc5cTR3elIw?=
 =?utf-8?B?dnhUcDJGTXF4djFOMG9NemVRYUtUQ0Z1VGhTT0FWek90WnFVZkJNR3NBbngw?=
 =?utf-8?B?Z3FLNEI1bHlwNXlTMzBmVHdmczRwV0tWT1pjSEtPT09BTlNDeVYwTDVwZUNU?=
 =?utf-8?B?M3ErWlVlaTNyVHVxSHRhem1JQk1WUlpaaGZTVmVqaGxtaVVpZzNwYTlCb1hW?=
 =?utf-8?B?Z3RleUVhczBXcTQ5S1RWQW5lTnJ1TTNHdnA2aExhSWNMTVVJMkYzKzkvcnE3?=
 =?utf-8?B?bGxsRUo0aVFjMG4yUmQ4VFFBa1NlZFJoTlBQbWpya2JnY2lJL0g5aVRLcWkv?=
 =?utf-8?B?QUxIdlQ0bURyRExuYm42MmUrWTFHSDhhaGI3MkZFeEdXOVBmSG41ZHZYbXZ5?=
 =?utf-8?B?ZmxLN1V0ckRlRStNbVhGN2J1VEllWUJrUU1OUHlvczFSM0o3MDk4bUl1Skxx?=
 =?utf-8?B?QTdYOTZSTzMrTStnaHdDN0tsYm1wa0FjTjVsL3hhM0FVRzVDSHFvY1RUaWVU?=
 =?utf-8?B?WkZuRHZscnRwUlVQNE0vYmZmNGRHdjZTQlpoWkpkTnZlTDMzYkFMZU93Vk5W?=
 =?utf-8?B?em9rN2l6T3VqVkljVERDWWZoWVNWK09XMlN6Ym0rR25xUGlnc2ExckN6eWN0?=
 =?utf-8?B?WFhrUVE3WDIweko1K0lOeDAxbTdudGRIWG1nUTVrOVRzR25nQnd2TmNUOXpO?=
 =?utf-8?B?YUw0U1g5ajhQcWFYeDhKVVd2bUR0L1MvSjcySUg5NkN4NmRKVmxPbTVDYjNp?=
 =?utf-8?B?WnY3a2sySVJkeGFwMVpYUW9vT1RIT094RVZlTERnT3kxeFJkOXBOMTdEaU1J?=
 =?utf-8?B?YUdHZU0wTDN0VUN3eStDSkZIQ3BFR2k0SVkya1U2eUZ3dkJ3MklFYUZNL3l5?=
 =?utf-8?B?UWFsWG5CajZKN1hRTGE1bk1vTlIwVmRGR1V4clg0TFc3MC83SGZDNnNZNkQ0?=
 =?utf-8?B?MTFsRTJCbzFOdDMyL3JSbkxIZHdpa1BIRWtoNHAxb1dtZUtrdnliNkNpMEQ2?=
 =?utf-8?B?R2ZrdWxpUUNZWUV0NkxFRktOSjFCcEcvSmNCK09uTGJMbEpIYjBNeVZLYW1L?=
 =?utf-8?B?dGRicEJrc1M1VER2ak90UDNHY2NGbTEwZmtJQ0tuMTZ4VXdwUTBtcmlvTGFU?=
 =?utf-8?B?ZHRxdElLWTJHSFBWbU9qVnl2dnZDb1VlRWkvZ3p6ZlkvRW9xNmM1Q2RkTzZi?=
 =?utf-8?B?WkwwVFN4Mnp3akpFZzA0RFdYTFJVc2k2NlczYmRUY0VZWXpYNzdzaG4vd0xW?=
 =?utf-8?B?VHdjRXZ4bU9HN3VLUzkrUFdDbmJob05QVHpFdGU4RjVpekhjd1NyNVpiTFRQ?=
 =?utf-8?B?UDc2bVJqSy91ZFpDc0c4aFB1UThsbTJmV0taUVpYcnF6SkR0d2E1ZmpydTRo?=
 =?utf-8?B?S0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b432f62-1e5b-420d-2702-08db887cc85b
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jul 2023 17:22:52.4967 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DMycfZr+847ZUGPVO/P8PA4I7PId3yOCyGdwPInJAJumoJQIchcT7wZqFteGVli7dFJhD0xB5WXMb1tvYAL7Bg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6563
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/8] drm/i915: Consolidate condition for
 Wa_22011802037
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Matt Roper (2023-07-18 19:27:55-03:00)
>The workaround bounds for Wa_22011802037 are somewhat complex and are
>replicated in several places throughout the code.  Pull the condition
>out to a helper function to prevent mistakes if this condition needs to
>change again in the future.
>
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/gt/intel_engine_cs.c      |  4 +---
> .../drm/i915/gt/intel_execlists_submission.c   |  4 +---
> drivers/gpu/drm/i915/gt/intel_reset.c          | 18 ++++++++++++++++++
> drivers/gpu/drm/i915/gt/intel_reset.h          |  2 ++
> drivers/gpu/drm/i915/gt/uc/intel_guc.c         |  4 +---
> .../gpu/drm/i915/gt/uc/intel_guc_submission.c  |  4 +---
> 6 files changed, 24 insertions(+), 12 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i=
915/gt/intel_engine_cs.c
>index 0aff5bb13c53..0d095337b350 100644
>--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>@@ -1616,9 +1616,7 @@ static int __intel_engine_stop_cs(struct intel_engin=
e_cs *engine,
>          * Wa_22011802037: Prior to doing a reset, ensure CS is
>          * stopped, set ring stop bit and prefetch disable bit to halt CS
>          */
>-        if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
>-            (GRAPHICS_VER(engine->i915) >=3D 11 &&
>-            GRAPHICS_VER_FULL(engine->i915) < IP_VER(12, 70)))
>+        if (intel_engine_reset_needs_wa_22011802037(engine->gt))
>                 intel_uncore_write_fw(uncore, RING_MODE_GEN7(engine->mmio=
_base),
>                                       _MASKED_BIT_ENABLE(GEN12_GFX_PREFET=
CH_DISABLE));
>=20
>diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/driver=
s/gpu/drm/i915/gt/intel_execlists_submission.c
>index d85b5a6d981f..b9f297c546fb 100644
>--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
>+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
>@@ -3001,9 +3001,7 @@ static void execlists_reset_prepare(struct intel_eng=
ine_cs *engine)
>          * Wa_22011802037: In addition to stopping the cs, we need
>          * to wait for any pending mi force wakeups
>          */
>-        if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
>-            (GRAPHICS_VER(engine->i915) >=3D 11 &&
>-            GRAPHICS_VER_FULL(engine->i915) < IP_VER(12, 70)))
>+        if (intel_engine_reset_needs_wa_22011802037(engine->gt))
>                 intel_engine_wait_for_pending_mi_fw(engine);
>=20
>         engine->execlists.reset_ccid =3D active_ccid(engine);
>diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/=
gt/intel_reset.c
>index cc6bd21a3e51..1ff7b42521c9 100644
>--- a/drivers/gpu/drm/i915/gt/intel_reset.c
>+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
>@@ -1632,6 +1632,24 @@ void __intel_fini_wedge(struct intel_wedge_me *w)
>         w->gt =3D NULL;
> }
>=20
>+/*
>+ * Wa_22011802037 requires that we (or the GuC) ensure that no command
>+ * streamers are executing MI_FORCE_WAKE while an engine reset is initiat=
ed.
>+ */
>+bool intel_engine_reset_needs_wa_22011802037(struct intel_gt *gt)
>+{
>+        if (GRAPHICS_VER(gt->i915) < 11)
>+                return false;
>+
>+        if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0))
>+                return true;
>+
>+        if (GRAPHICS_VER_FULL(gt->i915) >=3D IP_VER(12, 70))
>+                return false;
>+
>+        return true;
>+}
>+
> #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
> #include "selftest_reset.c"
> #include "selftest_hangcheck.c"
>diff --git a/drivers/gpu/drm/i915/gt/intel_reset.h b/drivers/gpu/drm/i915/=
gt/intel_reset.h
>index 25c975b6e8fc..f615b30b81c5 100644
>--- a/drivers/gpu/drm/i915/gt/intel_reset.h
>+++ b/drivers/gpu/drm/i915/gt/intel_reset.h
>@@ -78,4 +78,6 @@ void __intel_fini_wedge(struct intel_wedge_me *w);
> bool intel_has_gpu_reset(const struct intel_gt *gt);
> bool intel_has_reset_engine(const struct intel_gt *gt);
>=20
>+bool intel_engine_reset_needs_wa_22011802037(struct intel_gt *gt);
>+
> #endif /* I915_RESET_H */
>diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915=
/gt/uc/intel_guc.c
>index 2eb891b270ae..1e532981f74e 100644
>--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
>+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
>@@ -292,9 +292,7 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
>                 flags |=3D GUC_WA_DUAL_QUEUE;
>=20
>         /* Wa_22011802037: graphics version 11/12 */
>-        if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
>-            (GRAPHICS_VER(gt->i915) >=3D 11 &&
>-            GRAPHICS_VER_FULL(gt->i915) < IP_VER(12, 70)))
>+        if (intel_engine_reset_needs_wa_22011802037(gt))
>                 flags |=3D GUC_WA_PRE_PARSER;
>=20
>         /* Wa_16011777198:dg2 */
>diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/g=
pu/drm/i915/gt/uc/intel_guc_submission.c
>index a0e3ef1c65d2..1bd5d8f7c40b 100644
>--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>@@ -1658,9 +1658,7 @@ static void guc_engine_reset_prepare(struct intel_en=
gine_cs *engine)
>          * Wa_22011802037: In addition to stopping the cs, we need
>          * to wait for any pending mi force wakeups
>          */
>-        if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
>-            (GRAPHICS_VER(engine->i915) >=3D 11 &&
>-             GRAPHICS_VER_FULL(engine->i915) < IP_VER(12, 70))) {
>+        if (intel_engine_reset_needs_wa_22011802037(engine->gt)) {
>                 intel_engine_stop_cs(engine);
>                 intel_engine_wait_for_pending_mi_fw(engine);
>         }
>--=20
>2.41.0
>
