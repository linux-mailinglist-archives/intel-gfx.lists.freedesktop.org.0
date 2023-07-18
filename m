Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 88AA9757B16
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jul 2023 14:03:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D85088BE3;
	Tue, 18 Jul 2023 12:03:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0460688BE3
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jul 2023 12:03:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689681783; x=1721217783;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=vHQcqcgTeTG7206P1870FNnpWastdpMGXMaXveA7274=;
 b=JyILb3vIYAj69goqtlpHUMlNTbadLBDWQOJ/fZgUYlJiBmJVO7VQx6jM
 s6Xo/8TISYOxqxpNBKl8x4TJ5TnGFiMRafUUImaAPE8WoSNj5APn+isZF
 RhoOFRyWwthyWpaqtow6uOvzL8n4Um1q8Ax41khkKk+6B7WRyk5g37v62
 34ddAwq6yIXxXUHbrFjevj18zfqz+Rhld/9t1xRQBXoLp8yZJoYdvrVN+
 BdPUy5WC3IUNJx1dC8fl5fwFTaIBuHpN0WrSrMG+gV5t2j+qnrpXeK4H2
 SbeywLA33pKnXMsrQiviKwSohssZubC4StpgaHv2LMxwdATHdFKtpYILw Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="365062435"
X-IronPort-AV: E=Sophos;i="6.01,214,1684825200"; d="scan'208";a="365062435"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2023 05:02:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="673890119"
X-IronPort-AV: E=Sophos;i="6.01,214,1684825200"; d="scan'208";a="673890119"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP; 18 Jul 2023 05:02:37 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 18 Jul 2023 05:02:37 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 18 Jul 2023 05:02:37 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 18 Jul 2023 05:02:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AmOmTm4dDOebIe7if/++hcWJCVZOsaf+hxDBsDEeHDLlHIa6oFycCPHE7qyzmKZuggW0JaVWiQkIuQBLo5PjQWgT2z4B4PstBVIE/+EuiTAs9dUWbWZ10PTFHal4DK8sKKOC5RVdu6Ow991lnGOm6KO9oEnQ3l76I4pPPCnJwbNnYA1Sc6McWGxGMWd363YZxjxxnGwayV1WkqfZ/LnuF02wT6S4EhbY7E9ByUT7CxZn5FSnXVFQLeeGUPztS3bs10cuYv/yvMmG/mf8nzj+5ncrYcf05JX0qSI0HxUV2ZI2/ZoDPqilj2mLp2i9x3JgkgVmw+TDh0W6Cdm6LpIVYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HdAkwqsTggcWu/aneMgK+TvnBcQyfOYwNkLV1LYtDX0=;
 b=YRR6VOsAMKdCZ7viadux5zdpxB5Kl3dBMQXCnWsyAoBeTCjz9Zh+hz48PUt7kvyTnTyCMnE5fxDAYLwV29zDnXe6QD5cmv3ODZfozndJ8NB9xN1AjIlEtwsCxDx4/j4vqoUf34HwuF2eelZB+8NytDQ62o9jcHxDv3N4hAr5n59QYPfj22kFQk1m5BtdmWj3ZT/qS9v47cr5r/5rNxYiFce3MZo2xhY/cKo/fAcZ7jIk4QZ9ZgJUdx3Y3Se7kc/P+AKv/M9rzOz8FlnFqEiFIErTLeHfBd7hxDjLCKu6Oy0PvzvHzlgJANbfbhk77Oe+yhdACO7k+otg18RgEI4NpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by DM4PR11MB6310.namprd11.prod.outlook.com (2603:10b6:8:a7::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.33; Tue, 18 Jul
 2023 12:02:35 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::3294:2cf2:e022:7164]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::3294:2cf2:e022:7164%7]) with mapi id 15.20.6588.031; Tue, 18 Jul 2023
 12:02:35 +0000
Date: Tue, 18 Jul 2023 09:02:26 -0300
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <q3mxztvd7jmdl7wk6tthhmcgfxzsrqqxucv25nhws4npchjg7d@sxe44omn27ce>
References: <20230718081115.166212-1-dnyaneshwar.bhadane@intel.com>
 <20230718081115.166212-15-dnyaneshwar.bhadane@intel.com>
 <977e6210-3402-700c-35e6-8fce0c87b050@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <977e6210-3402-700c-35e6-8fce0c87b050@linux.intel.com>
X-ClientProxiedBy: SJ0PR03CA0140.namprd03.prod.outlook.com
 (2603:10b6:a03:33c::25) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|DM4PR11MB6310:EE_
X-MS-Office365-Filtering-Correlation-Id: 3b920281-b03f-478f-f020-08db8786de8a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VB6DmtQ2POmPBSkzbKsOmYI2RxLv+pU4+n6CFlElQHy5iLsLtpV010YviNuJkzb/WzVb/RndNstx2cwNNHhs2p8FBN5lb/+ntMrgu/0wwuklURPci3yMNu9VPdRTRwl+5HzGa5lKPVaT7ACEwbe1h5PsNpjI0Wz2nG4xUroTI9Y11T5v09TG6nT39xOePJIZfZ6eiTGAAJMRlCGfxwJyIfgQBkBg1lL71rjAooRwUrySH0a/nGqoyDLuH9nGbCWZbhHI54+Cw5TKZeAYalxDmW6aFqScxXZj3KH1dd95fXOkMw5SAhnn1jPy5dt5QvVYIVGXrJTa88g9AYufyQMqmpt6+v58Y3SDC/5sWABVIgguJJea8wv3gH9ltDwd57BoeoSvDlCYNDLymAURbYHxIs0uvjflS/eLjWy+4CkfsCNHKIN60c6f+laBtk8ERCni6igKVoqixhMREGk1O1TqpAPQRcmIa4uNUvgRZnsmfuMvVDS5ucf8pQjDPmHSBpwLlMgcrnWuBE3XCTxJh7nhagsGLX+skTkrz+2Wdt33le9MlFYQCdCTSJt30AxQ1zaP
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(366004)(396003)(346002)(39860400002)(376002)(136003)(451199021)(9686003)(6512007)(6486002)(6666004)(26005)(186003)(478600001)(2906002)(83380400001)(6506007)(8676002)(8936002)(66946007)(66476007)(41300700001)(66556008)(4326008)(316002)(38100700002)(6916009)(86362001)(33716001)(5660300002)(82960400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?MohH995pZugzGVoS/AnIFpZNixz9DiajYlidG7LvGuyf8gIU0ZeGa20StbWv?=
 =?us-ascii?Q?jkCqb63in+uGLCRpOyUoeNHj5LpLNjx4XjuGQh6cJ3427M2nEMoGtypkUaut?=
 =?us-ascii?Q?HuPj8q+eXNqtg0LgCyvFdwnfdOeBUD6YPltCjT6QUrscSSBUZeRL/A1lH3Rw?=
 =?us-ascii?Q?nuZQqsxf+hg3epzZRGOlmXf11BqChYxW1Oi6/InMSFx3n53XCJclAy1zWtzc?=
 =?us-ascii?Q?jTUph1IQ1RjeN79rm4egCaJmcQBXIPFdov6zkr37wIPDmLpyDlFBI4wE28hq?=
 =?us-ascii?Q?Si79C/TdFgWKQXp8X1WS43mrs5w3kwze34UJpXeluWQttqXFwUrev1V7Awc9?=
 =?us-ascii?Q?clc8GrMrmgQk0EAmJwT9ziGL7Sou5XoS3nAdNGcv7Sx+mMIrvrQAQXyc/Q9t?=
 =?us-ascii?Q?o+ZnU/b+70WtWlxIV6qE3lbFZSKih61vO5m+lWX9VQasvXk9aUz6myXF+/iA?=
 =?us-ascii?Q?ru2hsBCAkkbVp1ZmWn85Ot1Wgy8mNvix0TcoPeOUjjSBcUhUsKnQ0O6Pip5Y?=
 =?us-ascii?Q?1sAlxs/U2qJWZZ5jjNtJMWMI4WgQDB2d193QW0ui2DlhKHZ4oXQpc54ouiYr?=
 =?us-ascii?Q?hzQTGyY+pjhE95gerOIo0XbWK5fB7DOYw51at+VfdAupwSsq/PkUBbOCNKr5?=
 =?us-ascii?Q?lsb0M+phrBKsE5H68GjFLIZMYHM5sl/rPE6ffKa+WRCz0djAgTFthrSTV9u/?=
 =?us-ascii?Q?CwkvOGdvSXKi+wnUlADaZPbilVB1Lrb9eenQW0KYSmhXOuEooEprIJx1Apo4?=
 =?us-ascii?Q?Ck98QXdqbgfRNJjX7TNGn0ZIJMt7sFzMghXhLHDPy/cPpzcVv+o/nn7bM1m8?=
 =?us-ascii?Q?hS9uANcJIAJvB8I5wUw5ynDH2L0MqcxjT2b0orEImpgH7Z9bg640LWWRQL+d?=
 =?us-ascii?Q?5AA5CgcO7MQIKzcVrZnuIVzQo39d9lOpijC5gyxex8S4O0f0xzFTNhBLEhvU?=
 =?us-ascii?Q?kJTxeFVG5owqiAheKLOBtlZbdPaL2XOgOy/FhCANqkjqlhmd6hVqrNh3bO4f?=
 =?us-ascii?Q?KCQ3tI+UWH9iA5J3+evaYhxraj9RH81pBRqVaGHW8kyWL289fhTOVZNIe84x?=
 =?us-ascii?Q?nKNqUtZaW+zSVn9veU0Wqg/pBrQEsqpPLH0gMSqxjBMoOE+CluaKt/oFr0Kw?=
 =?us-ascii?Q?AzApSqWaXMzdW628trP+w+lPJxwuk85ygg+3C/seKNXyABrrGonD/lkAgOwY?=
 =?us-ascii?Q?xAX83RT7E3xuXQHaKTnJskej5qMXyefoaui60qqD1Oc3sIV3PRBx6K+Qsp5+?=
 =?us-ascii?Q?Z6XjBrATi8skLT9ogLjcmnr/EgmXvE8TZ3zcnp3WnFJr8YjgGzRlomaMCZW+?=
 =?us-ascii?Q?elTcG0akfsEFlA0HbyE9ijVvSknkwykJ2A4VrpIGhXcroVVy+nzWxC1y0Dyt?=
 =?us-ascii?Q?sDbvxcc1YXTOQIFmEMZ+lahScmu0k6zpZtds/u5CAwa4db/W6mCI3/Vy7s7O?=
 =?us-ascii?Q?Cq06L3LWhU11uY/1CWSWm+qEmypkia/88PoK0hYV/rizmw9Cizn4XRTgiWOz?=
 =?us-ascii?Q?bGQ17YMjggusgDiAelIMlIDOaXx3KnNgtbmeJIhyeIiPCtF5SLZN0zeqetrA?=
 =?us-ascii?Q?Sd3va5bs6hj+jvV+ZOC7/FGpbM4sK+uk3KLcxefBo/rkgLie3sKEL3nWZVL/?=
 =?us-ascii?Q?ag=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b920281-b03f-478f-f020-08db8786de8a
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jul 2023 12:02:35.5587 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JC04c/5Yz7WEnZtTQfu3FSFXuEytQZLIUsXwYuDDO7QBCvQE6IC5ZA7LfFR+FSIuuKVC+jniOGSvP8lb5d4ioO/5ds6GI0ccgbAMBxMD7+U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6310
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [v2 14/15] drm/i915/adls: s/ADLS/ALDERLAKE_S in
 platform and subplatform defines
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
Cc: intel-gfx@lists.freedesktop.org,
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>, matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jul 18, 2023 at 11:53:17AM +0100, Tvrtko Ursulin wrote:
>
>On 18/07/2023 09:11, Dnyaneshwar Bhadane wrote:
>>From: Anusha Srivatsa <anusha.srivatsa@intel.com>
>>
>>Driver refers to the platform Alderlake S as ADLS in places
>>and ALDERLAKE_S in some. Making the consistent change
>>to avoid confusion of the right naming convention for
>>the platform.
>>
>>v2:
>>- Unrolled wrapper IS_ADLS_GRAPHICS_STEP and Replace
>>with IS_ALDERLAKE_S() && IS_GRAPHICS_STEP() (Jani/Tvrtko).
>>
>>Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
>>---
>>  drivers/gpu/drm/i915/display/intel_display_device.c | 2 +-
>>  drivers/gpu/drm/i915/gt/uc/intel_uc.c               | 2 +-
>>  drivers/gpu/drm/i915/i915_drv.h                     | 6 +++---
>>  drivers/gpu/drm/i915/intel_step.c                   | 2 +-
>>  4 files changed, 6 insertions(+), 6 deletions(-)
>>
>>diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
>>index 3fd30e7f0062..252dd8446410 100644
>>--- a/drivers/gpu/drm/i915/display/intel_display_device.c
>>+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
>>@@ -797,7 +797,7 @@ void intel_display_device_info_runtime_init(struct drm_i915_private *i915)
>>  	enum pipe pipe;
>>  	/* Wa_14011765242: adl-s A0,A1 */
>>-	if (IS_ADLS_DISPLAY_STEP(i915, STEP_A0, STEP_A2))
>>+	if (IS_ALDERLAKE_S(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_A2))
>>  		for_each_pipe(i915, pipe)
>>  			display_runtime->num_scalers[pipe] = 0;
>>  	else if (DISPLAY_VER(i915) >= 11) {
>>diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
>>index 18250fb64bd8..eb28705b88bd 100644
>>--- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
>>+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
>>@@ -43,7 +43,7 @@ static void uc_expand_default_options(struct intel_uc *uc)
>>  	}
>>  	/* Intermediate platforms are HuC authentication only */
>>-	if (IS_ALDERLAKE_S(i915) && !IS_ADLS_RPLS(i915)) {
>>+	if (IS_ALDERLAKE_S(i915) && !IS_ALDERLAKE_S_RPLS(i915)) {
>>  		i915->params.enable_guc = ENABLE_GUC_LOAD_HUC;
>>  		return;
>>  	}
>>diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
>>index 942004afdd2f..e15471bbad5a 100644
>>--- a/drivers/gpu/drm/i915/i915_drv.h
>>+++ b/drivers/gpu/drm/i915/i915_drv.h
>>@@ -585,7 +585,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>>  	IS_SUBPLATFORM(i915, INTEL_DG2, INTEL_SUBPLATFORM_G11)
>>  #define IS_DG2_G12(i915) \
>>  	IS_SUBPLATFORM(i915, INTEL_DG2, INTEL_SUBPLATFORM_G12)
>>-#define IS_ADLS_RPLS(i915) \
>>+#define IS_ALDERLAKE_S_RPLS(i915) \
>
>I don't know what we should/could do with these Alderlake macros.. I 
>mean all three of:
>
> IS_ALDERLAKE_S_RPLS
> IS_ALDERLAKE_P_RPLP
> IS_ALDERLAKE_RPLU
>
>It becomes too long to expand the TLA suffix..
>
>Is there scope to turn this around and simplify in code like:
>
>  IS_RAPTORLAKE_S/P/U ?
>
>Not sure at all, just throwing out wild ideas.. There aren't many call 
>sites for those three but despite that I don't see any easy cheats to 
>tidy it.

I agree. I think "promoting" it like you mention is great and avoids the
super long macro. IS_ADLS_RPLS() was already ambiguous if you don't know
rpl is treated as a subplatform (is it ADLS || RPLS?). That's kind of
different than the DG2 case since there isn't a G10/G11/G12 platform by
itself.


thanks
Lucas De Marchi

>
>Regards,
>
>Tvrtko
>
>>  	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_S, INTEL_SUBPLATFORM_RPL)
>>  #define IS_ALDERLAKE_P_N(i915) \
>>  	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_N)
>>@@ -664,11 +664,11 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>>  	 IS_DISPLAY_STEP(__i915, since, until))
>>-#define IS_ADLS_DISPLAY_STEP(__i915, since, until) \
>>+#define IS_ALDERLAKE_S_DISPLAY_STEP(__i915, since, until) \
>>  	(IS_ALDERLAKE_S(__i915) && \
>>  	 IS_DISPLAY_STEP(__i915, since, until))
>>-#define IS_ADLS_GRAPHICS_STEP(__i915, since, until) \
>>+#define IS_ALDERLAKE_GRAPHICS_STEP(__i915, since, until) \
>>  	(IS_ALDERLAKE_S(__i915) && \
>>  	 IS_GRAPHICS_STEP(__i915, since, until))
>>diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
>>index 545102d14ba4..5904aa5640e1 100644
>>--- a/drivers/gpu/drm/i915/intel_step.c
>>+++ b/drivers/gpu/drm/i915/intel_step.c
>>@@ -201,7 +201,7 @@ void intel_step_init(struct drm_i915_private *i915)
>>  	} else if (IS_ALDERLAKE_P(i915)) {
>>  		revids = adlp_revids;
>>  		size = ARRAY_SIZE(adlp_revids);
>>-	} else if (IS_ADLS_RPLS(i915)) {
>>+	} else if (IS_ALDERLAKE_S_RPLS(i915)) {
>>  		revids = adls_rpls_revids;
>>  		size = ARRAY_SIZE(adls_rpls_revids);
>>  	} else if (IS_ALDERLAKE_S(i915)) {
