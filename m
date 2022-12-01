Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D79763F61D
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Dec 2022 18:26:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4A6310E658;
	Thu,  1 Dec 2022 17:26:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AAE710E658
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Dec 2022 17:26:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669915571; x=1701451571;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=n7VvI5s7btFhAjBIN+kuQJ6Q5RZX+Y8reXr7tDaetDg=;
 b=V4mQ66qCb/lnGCp6tJua1hwipHhE7G+0jSBKCYVFXSNBRtOZg69WuOAj
 OXaeearCvFB6x2/WOpktWq/r+Hptc9BszRFxw3cVFW+GzIiAn3q0Nqju8
 A9UjFPneHDQrbguiQOO2TtO33PJ6xhG/QiNIlL5CCMilRp6R+wYxraGTq
 xTX3tKClQ018UAQ1SUKkoVQI3A6DFpWOR3Xxe5AkQLIRImZlDUdhJaNeY
 92s4/rMJkPhh6z54ssyfmKChZsuapwRyelZoTK/UxlhOvMa/SRO9mn6uV
 /2gFTx81BV47qd1dgPzuY+R/Ynvq6s0xZBooUOW4owAIXftyJYwgjT286 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="313381156"
X-IronPort-AV: E=Sophos;i="5.96,209,1665471600"; d="scan'208";a="313381156"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2022 09:25:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="708155266"
X-IronPort-AV: E=Sophos;i="5.96,209,1665471600"; d="scan'208";a="708155266"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 01 Dec 2022 09:25:18 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 1 Dec 2022 09:25:18 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 1 Dec 2022 09:25:17 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 1 Dec 2022 09:25:17 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 1 Dec 2022 09:25:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DpOcmb+ouA7T+CWd+A+D0OFkpRirW1a2VdNUACFduiGY5qnIfux/aBidg3GCRFTtHojx3VK+qMWtmxd4b+Y1ZIradgXHW4W0HFpM22DXX2pZl56pIWJ2MgQgz0mn32Gaw7TzJpScbmuVH4r8K8YzyWFW0pGpP9nxd8EZqhPGG95cz5o0nkqEAYTQ0yfdDhJBwqqFcAxZB71rlmq6IKS+n5sUGr5Uip129hwkmI5YcJXmiRB/XvypLlj2ZSGI9fj2cOzFwd5h3DHghxIRGgSje1l9P2sW0a+k6Lou/OyqLY6Te8KHpSdrAgfN9tLQCKGRP3e+tGYP2zo4bbasZgM1Vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rnQRCawKEYdr8Aizf6Hp5zQiRVwZnoojpu3mgAgnDn0=;
 b=LkM5ov7JYkwW1rd8f6oucCieRmGHNP0VqSJd2Udao82TylWlx6NVPyWqOZRXUPTXwlFKO/aAYrDqKtDv6Tf2cxgAgcbM54DE4WqeDeUX4sU8oPzTRkW3SWAPqvFikHjoE9AjJPyVgrgnHWB8fr2sooXzpkLXsRnHNseo3ieK3qd8j6pScoI2RfbX4NByRaryW+ork3oikO51FuqSICzsAK/8A/CC3kpnZoeQXlLUrvjk2FpZoqcDijHewb+zTjMKsL68a33uOX2XnibsV5oHY0tt9Jj8sRjfYeNw46ScugJRYhDnWrgAR39bl+cGPPLI7ncF3F+btFFWNxTvHv5HAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by CH3PR11MB7324.namprd11.prod.outlook.com (2603:10b6:610:14f::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Thu, 1 Dec
 2022 17:25:15 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::22:fdef:cea5:e8f3]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::22:fdef:cea5:e8f3%3]) with mapi id 15.20.5857.023; Thu, 1 Dec 2022
 17:25:15 +0000
Date: Thu, 1 Dec 2022 09:25:13 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20221201172513.5p2q34l7ulyuicwp@ldmartin-desk2.lan>
References: <20221130231709.4870-1-matthew.s.atwood@intel.com>
 <20221130231709.4870-2-matthew.s.atwood@intel.com>
 <d4adadc3-6426-ff25-d6ac-79662414ccbb@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <d4adadc3-6426-ff25-d6ac-79662414ccbb@linux.intel.com>
X-ClientProxiedBy: BYAPR08CA0040.namprd08.prod.outlook.com
 (2603:10b6:a03:117::17) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|CH3PR11MB7324:EE_
X-MS-Office365-Filtering-Correlation-Id: b6fb8e51-2b9b-4b2e-a094-08dad3c102bf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: liBablIISAp3/IMICfS/D/sIdLf/MrqICnJcbe9vpuKomheXWswFXcNwLwghIQFAkJQKkSP82UHqnOVwASDOWXvEzf4cITJy0/TL9DDa7Fm9tk0XNhU0wswU78MCKBSdimcjvkz/g0Aby4AREaM+uOo/tP2oKi6Jl6gssWbSh5bFMJ4ndDsb+I+cCeUumSdUjW4ZKUYn/3SQrVBIHiWn9cmx6ManhztN5pjw0uHmGwh1oZPwYs14PXUoZ21NBtYsjOnNmb4razvyiwf4osBXvOOOmwear+702GKiE0Oar9xvUDB8Q7i20CAk8CEqItcr54JsvpjsxlIhneqVofGf0bj+aTIem5oLMrnmQKAQ1w8mmgFISDSJi5qJsUQt1WUQyMiijXK0pp9qAW/PhgubPAZjGc6QnYg/uMYPJGMgq60NvElIlsBsTPeO3knLZLMKv9Xopxc14lEf3CtC/uPtDfAeSmnsUoqCJgJmgE7OrRRGHk5goWqPNvPUUhBVUqPFBUw5ixoJl3SKf/0Xc0IT9eZFPUuAHHiqSaCjnr36QZ/ENXsA2Vps3xi51DediFwakdD0xVnE3AMairN3eSLB7n35kyCTSIRrojEVHuSPJQyUoaT1OG+NDPgfbl8JDuQmgnZfxXZbyRTzEPNtdloItg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(39860400002)(376002)(136003)(346002)(366004)(451199015)(2906002)(478600001)(316002)(1076003)(6486002)(36756003)(83380400001)(26005)(38100700002)(82960400001)(6512007)(6506007)(9686003)(186003)(6916009)(66946007)(86362001)(5660300002)(41300700001)(8936002)(66556008)(66476007)(8676002)(4326008);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?S5VjG9+rdcajXoNc0rV+xVnrEHdQlv9eJgg+YOYdBvPNzkjJcrXuT/uNPxK5?=
 =?us-ascii?Q?gYEzBZXGbBXhkVtIDu8gShzjkbRcIEWec7EvK8q2OcKsT97QKlwZ7KgO8118?=
 =?us-ascii?Q?0qz3g8YoscvILsV5SfuYxJy9JA4cEngobDWqz/AoPWJ64sAOZVcOqGNcw2S1?=
 =?us-ascii?Q?oH7K4NE/fvI5lEDIXCJ+cXT5UUJx7y65zdHZdtbrSwEjg+kgmUPGp8VxUEPs?=
 =?us-ascii?Q?bcm00g+xgcupgi63exyDOPxHrh5rsPQ6apXDiG64pZ7n7LIA1K121l9pDRo4?=
 =?us-ascii?Q?u0vb2MjJdmDlZmH7D3ERMe+902MXcDww/K6r67X0L+Y9TP4lWVzOQumXf12N?=
 =?us-ascii?Q?G3BLxtNhCFNOckAJ4+tCELC3q3Qhb4liy+yhctxmVa/JmOHUepkYYhTAf43W?=
 =?us-ascii?Q?R6alySM6Ze92jLYuYPJ/ZIJ38ddSin5kvyDxqwX05D50/MqWzoGCF4MSoT/c?=
 =?us-ascii?Q?mcdC7Oz4NLPL1NSmjSien1BCwtWt6kfreCNlVJ6kXQ+GGOYqx2q9D/bWb7Sm?=
 =?us-ascii?Q?afTKDNdgQHjrUkhJWJXepkwXl4VtzOiFKkaZc6wQFEkdaO0GrIaquCOXhkw/?=
 =?us-ascii?Q?QKW/5yMwZbLDgkvP11uj+jX+Bb/95i+3gETrjOu6kiFF8yN1TqHFvweo7fPy?=
 =?us-ascii?Q?72KLC+wBWpnE/J/r5dCg3C5uZ0fwWzrNiBINEBIcKMAWXcwBdUUmXJl0UbCG?=
 =?us-ascii?Q?V7ry7TC0Q1QU8R3PfZy8fKHaGXgFWTjmYJIjS2bhZQzPms3J4pcwp9/xPhb9?=
 =?us-ascii?Q?QLRjr3s3uCdqbdgLtdqVLtJql+m705MAXfDDOQiOLsaCX5zR0l3zxZ1bTilY?=
 =?us-ascii?Q?AxhOZidmZf3qplX6fWt7UDkwhz4B5oLI5iBrkSZU935fjRx8eYWRQ0DAnuOT?=
 =?us-ascii?Q?9anYtk/Js8sgw+6MrnYVolYd1tR7QHXVX2Ixsiw1opdqS5CrImLZTDrxjfX4?=
 =?us-ascii?Q?3YCMLITTFPqh6WquglAGAIeLbQlOv79dP000jCEJta90tAVO0O81WcBuZOPH?=
 =?us-ascii?Q?0SHVQQX/MeFc6x3mxhr9E+YVsMwZIHUzD5HTRENlUy8xCK9UaTMrPsAUTX8Y?=
 =?us-ascii?Q?ED57XpPlsxVfgBXFywGLx3RfGojrZhlOKJ2HTZIfgpT1iIRE3PGb580aW9YJ?=
 =?us-ascii?Q?+RkbRzo7IK+pFkBNBPoF9Uu6AID3uD5i27Mche5uNDlTL5GahQe7lz/iN4w2?=
 =?us-ascii?Q?lr6hyrrTPZ9xTsN10rEYreu118UqTd2wFpQBasRhHyGslKmJgmFfktbIg3ca?=
 =?us-ascii?Q?si+upwc6ZJ1rjymGHB4fAQd5PFH3EF8BojKHRXrUKjj5rzBFAXTWa8Ly79W4?=
 =?us-ascii?Q?XgMPCNzAaM0GsjzOgPZaDEj+zJdlIGu6d5FYrWH73yVL3f4GkzoEWW3fH4jw?=
 =?us-ascii?Q?9Ssl6mT3MWsqu/R7ULnVb7BbPMlpc1A+R86kWeCBu1CrKNaHM260TZ219XAp?=
 =?us-ascii?Q?PvaWSTqjH/lvUTX6rlGYHhKbgzZ/1ShGAFcn8ZRXUWk8PxEkXfooUWYTg+B2?=
 =?us-ascii?Q?ULX90TbgXQ0D97Bzh8JIKY0qAMbvtaBOjl82v/BbMU0lHn5L7r+2u/ilnwMk?=
 =?us-ascii?Q?SfSKLZu2vdW67BKme47NUO8GEAEGyeaF66RElahy4DUX25TVlVcc2+XsYs3Q?=
 =?us-ascii?Q?Yg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b6fb8e51-2b9b-4b2e-a094-08dad3c102bf
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2022 17:25:15.6014 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KkljSLFm93FuxMJt6Wpm/QHtrwNkq5RxrEgVpfc8CCaUMwVAjCNldfDyT/lDuXUT+5MYA+tLaQH+6ZfDdw2Xom88bNnTrD1K9m+y8xMe58Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7324
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/mtl: Add initial gt workarounds
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Dec 01, 2022 at 01:15:35PM +0000, Tvrtko Ursulin wrote:
>
>On 30/11/2022 23:17, Matt Atwood wrote:
>>From: Matt Roper <matthew.d.roper@intel.com>
>>
>>This patch introduces initial workarounds for mtl platform
>>
>>Bspec:66622
>>
>>Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
>>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>>---
>>  drivers/gpu/drm/i915/gt/intel_engine_cs.c     |   4 +-
>>  .../drm/i915/gt/intel_execlists_submission.c  |   4 +-
>>  drivers/gpu/drm/i915/gt/intel_gt_mcr.c        |  11 +-
>>  drivers/gpu/drm/i915/gt/intel_gt_regs.h       |   5 +
>>  drivers/gpu/drm/i915/gt/intel_workarounds.c   | 105 +++++++++++++-----
>>  drivers/gpu/drm/i915/gt/uc/intel_guc.c        |   9 +-
>>  .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  10 +-
>>  drivers/gpu/drm/i915/i915_drv.h               |   4 +
>>  drivers/gpu/drm/i915/intel_device_info.c      |   6 +
>>  9 files changed, 121 insertions(+), 37 deletions(-)
>>
>>diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>>index c33e0d72d670..af88d8ab61c1 100644
>>--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>>+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>>@@ -1479,7 +1479,9 @@ static int __intel_engine_stop_cs(struct intel_engine_cs *engine,
>>  	 * Wa_22011802037 : gen11, gen12, Prior to doing a reset, ensure CS is
>>  	 * stopped, set ring stop bit and prefetch disable bit to halt CS
>>  	 */
>>-	if (IS_GRAPHICS_VER(engine->i915, 11, 12))
>>+	if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
>>+	    (GRAPHICS_VER(engine->i915) >= 11 &&
>>+	    GRAPHICS_VER_FULL(engine->i915) < IP_VER(12, 70)))
>
>Does comment need updating to reflect the workaround applicability? 
>Elsewhere as well. Some are left as dg2 only. Some gen11,gen12 only.

We've been removing these comments as they are redundant with the code
and only ever get out of sync. So I'd say to remove "gen11, gen12".

>
>Then there's a few of this same change logic throught the patch, so I 
>assume a general situation of workarounds applying to only early MTL.
>
> if ((IS_GRAPHICS_VER(engine->i915, 11, 12)) &&
>     !IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_B1, STEP_FOREVER)
>
>Would this be correct and simpler? Not sure about STEP_B1 for start of 
>range, if it is possible to define it. Don't know.. One could perhaps 
>even suggest a new macro to avoid repeated whatever patterna lot.
>
>>  		intel_uncore_write_fw(uncore, RING_MODE_GEN7(engine->mmio_base),
>>  				      _MASKED_BIT_ENABLE(GEN12_GFX_PREFETCH_DISABLE));
>>diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
>>index 49a8f10d76c7..a91c912e35d6 100644
>>--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
>>+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
>>@@ -2992,7 +2992,9 @@ static void execlists_reset_prepare(struct intel_engine_cs *engine)
>>  	 * Wa_22011802037:gen11/gen12: In addition to stopping the cs, we need
>>  	 * to wait for any pending mi force wakeups
>>  	 */
>>-	if (IS_GRAPHICS_VER(engine->i915, 11, 12))
>>+	if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
>>+	    (GRAPHICS_VER(engine->i915) >= 11 &&
>>+	    GRAPHICS_VER_FULL(engine->i915) < IP_VER(12, 70)))
>>  		intel_engine_wait_for_pending_mi_fw(engine);
>>  	engine->execlists.reset_ccid = active_ccid(engine);
>>diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
>>index aa070ae57f11..0e90a8f86b27 100644
>>--- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
>>+++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
>>@@ -164,8 +164,15 @@ void intel_gt_mcr_init(struct intel_gt *gt)
>>  	if (MEDIA_VER(i915) >= 13 && gt->type == GT_MEDIA) {
>>  		gt->steering_table[OADDRM] = xelpmp_oaddrm_steering_table;
>>  	} else if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70)) {
>>-		fuse = REG_FIELD_GET(GT_L3_EXC_MASK,
>>-				     intel_uncore_read(gt->uncore, XEHP_FUSE4));
>>+		/* Wa_14016747170:mtl-m[a0], mtl-p[a0] */

and here and in other places.

Lucas De Marchi
