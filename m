Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C64BA65F7C9
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Jan 2023 00:39:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3C0B10E144;
	Thu,  5 Jan 2023 23:39:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1343C10E144
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Jan 2023 23:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672961962; x=1704497962;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=khFoMAwpVPIKG/HT5V3BXdpIbAEt7+1w95UguarUJP0=;
 b=nxBexdxVPROAnZVDpEyjWp78nFZa2faspVA52n6+BbQ1XWcIUBfZA3mI
 ptcFPvyXntXDcz+bd9/MNDDs32vkQ6Ft8JOJxOldc258NXksaWyBBNQ5b
 pGT293BwQztWfbGhbQuSQO16rBY+/kP034EFliL9shiXfT4AUk4UuDcBM
 I0fA0ctXKgWzdgx07DQYqcYag1gazhkZJIflv3wiiAxu4RCaAYE1zKc+s
 boOmteWc6MezdPWxwd7/vtb6NKgEi6i6oEF282TDIzye6eOkN0yUqiULZ
 FJiDMKoaYv3ttfD1el8bsUo/kQT9xmbNuFZi+0Wa+tz09GcdpuX/OrQuf Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10581"; a="310144034"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="310144034"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 15:39:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10581"; a="649138234"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="649138234"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga007.jf.intel.com with ESMTP; 05 Jan 2023 15:39:21 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 5 Jan 2023 15:39:21 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 5 Jan 2023 15:39:20 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 5 Jan 2023 15:39:20 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 5 Jan 2023 15:39:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lCYYJ2F/iwPnTelZUz3aOH4UZm8S6H3/TT067sIFQsU+5tdAPm7u1+18BGBJ7qj5IDhHM+UtpTlHwY7Upxtf3Ei04q7olJPFuVEbUIgjGt9k2Rp1M4BEmldyi7EDkPcUfSPRH0DFAuCcY8FHFHi64z3z7QFOESpZbe3RFkCVqWTnnbhxXRhjJNa54Ix8iHoGd2m+mRlwwu0dF4vRbb1C42v76gYL5R1a1djBCDMzwckSSYsipLoZ+m/jJmrGoaaiVZvJz/SyET9KRNIYTybu/XjO1fCqzjad1Q3H7lxgvLhm68i+U6P4VaxZWZIPTO7y0LT0wov0vIoAkR9+x5F6zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UQSjFs0KWkhFa/0iVAy8YNyzKnYzz+1ojhn7N54kmd8=;
 b=DrRPy/j0KSQR1Lx9LoPo2JbOK1dNhWjhllwQXNDLFS5WaC7l1tnvLfMpqRjHQo2DfULP6VLJQjeSys/UorPu/Iy4tjMI4XScalj+QwxA3ich9BFsCCpJGfndlEW4awKv87EhDzOm0vci2BG+0d8AmWoDHv8e52tHnEo4Ds/WlDNMg9vUyTx7z/2lPzD64jfoo3X1WWuR/8a2fvKzxzBvT06Ax1nmmAHcZBLi+gA17MZxz7sFeRRT13FDk4EtPhTc31HMkSFakhuilzy0wD+CWHU2wsjuq3EbI6Eb7TzAAdnFqwIcrspp5AyvW1/Bwz4Adk4RQ/Jz6gUBDZ6kaPrZCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN2PR11MB4239.namprd11.prod.outlook.com (2603:10b6:208:192::20)
 by PH7PR11MB6956.namprd11.prod.outlook.com (2603:10b6:510:207::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.16; Thu, 5 Jan
 2023 23:39:17 +0000
Received: from MN2PR11MB4239.namprd11.prod.outlook.com
 ([fe80::566e:4cea:5a48:58a]) by MN2PR11MB4239.namprd11.prod.outlook.com
 ([fe80::566e:4cea:5a48:58a%3]) with mapi id 15.20.5944.019; Thu, 5 Jan 2023
 23:39:17 +0000
Date: Thu, 5 Jan 2023 15:39:13 -0800
From: Matt Atwood <matthew.s.atwood@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, <intel-gfx@lists.freedesktop.org>, 
 <lucas.demarchi@intel.com>
Message-ID: <Y7dfoXlNmZ6SGCW8@msatwood-mobl>
References: <20221215233055.816831-1-matthew.s.atwood@intel.com>
 <Y7TF07tG8t3HFSRR@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <Y7TF07tG8t3HFSRR@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: SJ0PR03CA0356.namprd03.prod.outlook.com
 (2603:10b6:a03:39c::31) To MN2PR11MB4239.namprd11.prod.outlook.com
 (2603:10b6:208:192::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN2PR11MB4239:EE_|PH7PR11MB6956:EE_
X-MS-Office365-Filtering-Correlation-Id: e3072b57-864c-4e78-e425-08daef760f4c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tQ+4wiQuJEyEF7ElA2Lj6m/n4oKEPa3/hpGO4ML0Kzytyj6hWpSSYRpZANGnt8BJcMZloM2iDlvZt7r/ZYdqb/LNOBsNKYc/Y/vl2B/Y4Y0bK9z9VRSh6lj1/d8IOhoUbRtZ2Xbi9cZmpwpst4V9xN2Xxk7mswQz/SY2l84ufaQ6wUqZCAx3cgIIfCYqUhVvjD6D0WinO+ZiAIf2mQhzu7SPeg4rCirsAZovxnBnu6g629rh/MSNmtS4lIkjd4Rk4PCg/8iSA3iso96NBBZl1qBsfSqKevvwOJWOynesqvisrt/PN3rOLY0lZhW1apAZmZCppQ8MaOMKfOhXDQd7M5wEAWahsmQg5SzF4beT8gBCW8KEMw/MD9ep3Ts/r5P4Z5NCH6XVVJgGUS+vQtjH6hWijQtBbIhFGmT4/pYTYUbaNoxoc0M5aX9i+12SRfdrBAt0Sit43EjgiK8EY+DB2g43ZQzp3OhHRGJF0LN3pnA1XVU7sje7hgtRyCuxtscWxs+VOojrdi7W9M9IRP/UW6vTuUYE54ZljGsCpO1pBOP4PWUH+jy3rveqQc2mQAU/0/NbilvorqJfixQ9LURIytTJlHnjtI5Cfen+YOU70WhFFUWmJ+AMQELgHw1DxdUneaSnxH/FXJ/xnf+UJX9hFQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4239.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(376002)(396003)(136003)(39860400002)(366004)(346002)(451199015)(66476007)(82960400001)(86362001)(38100700002)(478600001)(6636002)(66946007)(41300700001)(8676002)(4326008)(66556008)(83380400001)(2906002)(9686003)(8936002)(33716001)(316002)(30864003)(6512007)(5660300002)(107886003)(6486002)(6506007)(186003)(6666004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NTgxMmdnWlVCVWNmZW1ZdFlzVmN3TFh3Z0hWZW1hbkEvaGNaSkhiVTNqZ3Vm?=
 =?utf-8?B?VlZ6ZVl1L2tWeEVJancxeVprdDBBNG0wSmx6RjB1SVAzZjR5YkRqVmhCMCsy?=
 =?utf-8?B?M1E2dTBGcTl6eEFadUdBTHM3Wjl6bGlTY1lSeThDdnB2RUFMMzY0aklMUWNL?=
 =?utf-8?B?WUtYZGk3bGQ1d0MySjFOck43WWg5WkhNZ2RHb2xFRmlaK3JiRGVyUk9UNmJD?=
 =?utf-8?B?a2hneGJ6NFZJM09XTTk3SDhhUTdIWHZKTnE1S1Vub0ZsV3lGSlZrUlI1VVU1?=
 =?utf-8?B?VTZDV1ZpT2I3aUsrMGNWNHJVbzdaM3BCWk9RUkVRNENaTCtkWWxORGN6SDZF?=
 =?utf-8?B?K2dVYTdBbXFwQ1VGZVBCaE8ydjluY28zQUNiVk05cC9xSms3dUwrbVlJWkRH?=
 =?utf-8?B?RkVSOTlQOTlQbzJ2R1k0bWtDb3NmOEtRWFBFY1FDMkczZkh1K2NrVWFzTGt4?=
 =?utf-8?B?N3dkd256OEFydEZBdnZuNVZDMGVJaW5FV3FkNm1SV00yYnRKR0o2RGlqK2Nj?=
 =?utf-8?B?VlYybkJNUnV3Q3J2NlFWa0l2KzFnUGEvanozZGpJdXRSeG9wSGJ2andUcFBF?=
 =?utf-8?B?b1Qycko4VXgzK1ZxSitlelVWN3VZczc2UUpuSmdOZllmS2Z6Mm1LUFRMcC82?=
 =?utf-8?B?SE5IVDgwS2VpWjFyTzB3OUVvMW5HQklEVkdJZ2lmNXRVRFlkVWtQVVZHWENO?=
 =?utf-8?B?dHZGYXFKaTVLZEFnZ3J0WFBCQThPeStWeHMxVFdFNHFUeFJjSmhib3U3OEZ1?=
 =?utf-8?B?T2xXYjBzbkM0LzV2OUdVMW5rcUJuanhNbXVxSmxlWlUzOXgyTjFuODR2WWJ2?=
 =?utf-8?B?d29yVHUyZCt6azkxWmFCMlR6UnpMdzB4YlJ5U3ptTHhyUGhJN1g2UFJzN0RN?=
 =?utf-8?B?RGQ1ZW1wRjVqNUt1eVNqZlhtUE5oM2k3LzBmaGYxcTMybDllbTVUVDdYcm1Z?=
 =?utf-8?B?VzBvNE84NXFQTHRvU1Q0WUhtUEZDaWxFdU5tZElEQUgyM3NWTmphR1UrNHNK?=
 =?utf-8?B?d21KbTJPSnhnWnR3V3AxZHlJNzlZa0VxZjAyL3hxTldOaVY4bk8xS0Y4Sk10?=
 =?utf-8?B?djlldCtYeWR3QTZGVm4rTzJ6dHRtQmx2ME8wQmNPQ2VJSWJXaGZmYnRQdVNX?=
 =?utf-8?B?KytCQ2owbTRlY3Y0K0xLSzIvcUZ2K1lIa1FxK2VkZmdoQUMyYjFEVnZSb0RI?=
 =?utf-8?B?MzFodUNwUlFRcjc2bFNvZU5HdUxHZDh0dW4wWFFJYkJtWXd2cjMrTFQzMGpx?=
 =?utf-8?B?c1ZPeVlBRzNPaDFsQm1KOFM5bklZZkl0bVdYY2J3a0JRQVpXRXlCSUNBY0tw?=
 =?utf-8?B?RENYTDhYa2dVNEduZjF0L2gyVVZiS3A1bE1MMzNURlBYeUVBYkx0U0Y2b2s5?=
 =?utf-8?B?SzQ2aVV3NC9NV0NMZC82anNWbWFaa3RpRXhSay9QSHg3WW04eVpJaEgvbHFn?=
 =?utf-8?B?L0ZPcW5UNVhONkVVeFdrbFJDa0FLcmhZZC9PYWpSUzQrMEJobS95aTh6NVVh?=
 =?utf-8?B?NThQVTUxd29HMTRrT3llZk1NVFJ3Z1RDa3hoejc5QjRqQkMzcjltYmx5M2hR?=
 =?utf-8?B?dzUwa3hWM0MzOHF5RlZyaFpGZGxaYy9QUzRxbEdZQXRHNXJyenUwUFdhZTcz?=
 =?utf-8?B?RStSTXhlMkc5ZjgrMHJKeDFhT1FjRGV4NnhLcmo2SmtRRVRDWHRxVkdmUDNL?=
 =?utf-8?B?N0hkWC93emRHeFJ1djE1V0pXVFh0SC9relcwZ29kY2pxY0k4TVdGbDh6bzNM?=
 =?utf-8?B?TFE3YUlnVXY2K1dPQWp1N01mTnVjQlNUMkFPTDRWdDZPL0RhSDVZZzFZTzRS?=
 =?utf-8?B?Tmp0WE11WHBPRkhFT2JXVEcwbWhpZUd1cjNQck9NZVpNYmYyYXFrV2MzS0pL?=
 =?utf-8?B?eDV1V0dTeGR5a0FURHg3S3VoeWpTSC9lTjhZYmV1Nk9ieFpRM2ZyS00zS1Z4?=
 =?utf-8?B?SWs5bUtFYS9rVnl4ZVZrV1ViMFdzY0NsUTY2Q1hTVktlaHhobTN2bi9jcTRJ?=
 =?utf-8?B?SlVtemhHbFZxa1JhVG1HdlZmVWk1VEtFNUFGdmNva243MEdUTUNiZDNiTjFC?=
 =?utf-8?B?NndVWTNqcmpwVXVOTWcvSUI4ZUUxTlR4VVQ0ZGc4LzJjY2xvazJSRHlyRjYy?=
 =?utf-8?B?QU40ZVNHK1dHbG5MLy9hK1FtVmYxVUlzYTBhM2xuclg3NFd0dEk3T2hKY2VK?=
 =?utf-8?Q?lffdnx7egyaUBDqDMnlQj4Q=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e3072b57-864c-4e78-e425-08daef760f4c
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4239.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jan 2023 23:39:17.0410 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /IkBj06CSznVaSwr+K+pCnv7lGYz3tcqW+pSEsfTv2VdQDymyDbCTsYacRri7EHQe3JvwuJFyMZIi4YQeKaodOmhfd2MoPCUagQRqsvrDAs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6956
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/mtl: Add initial gt workarounds
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
Cc: intel-gfx@lists.freedesktop.org, lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 03, 2023 at 04:18:27PM -0800, Matt Roper wrote:
> On Thu, Dec 15, 2022 at 03:30:55PM -0800, Matt Atwood wrote:
> > From: Matt Roper <matthew.d.roper@intel.com>
> > 
> > This patch introduces initial gt workarounds for the MTL platform.
> > 
> > v2: drop redundant/stale comments specifying wa platforms affected
> 
> This is being discussed on the other thread, but it also doesn't look
> like this actually happened completely in v2 here.  You removed a few
> but most of the workarounds still have them?
Ack.
> 
> > (Lucas). Drop Wa_22011802037 for MTL.
> 
> This statement doesn't seem right...Wa_22011802037 is still (correctly)
> present for the affected variant/steppings of MTL.
You're right.
> 
> 
> Matt
> 
> > 
> > Bspec: 66622
> > 
> > Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_engine_cs.c     |   6 +-
> >  .../drm/i915/gt/intel_execlists_submission.c  |   6 +-
> >  drivers/gpu/drm/i915/gt/intel_gt_mcr.c        |  11 +-
> >  drivers/gpu/drm/i915/gt/intel_gt_regs.h       |   5 +
> >  drivers/gpu/drm/i915/gt/intel_workarounds.c   | 115 +++++++++++++-----
> >  drivers/gpu/drm/i915/gt/uc/intel_guc.c        |   9 +-
> >  .../gpu/drm/i915/gt/uc/intel_guc_submission.c |   8 +-
> >  drivers/gpu/drm/i915/i915_drv.h               |   4 +
> >  drivers/gpu/drm/i915/intel_device_info.c      |   6 +
> >  9 files changed, 128 insertions(+), 42 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > index 99c4b866addd..e3f30bdf7e61 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > @@ -1494,10 +1494,12 @@ static int __intel_engine_stop_cs(struct intel_engine_cs *engine,
> >  	intel_uncore_write_fw(uncore, mode, _MASKED_BIT_ENABLE(STOP_RING));
> >  
> >  	/*
> > -	 * Wa_22011802037 : gen11, gen12, Prior to doing a reset, ensure CS is
> > +	 * Wa_22011802037 : Prior to doing a reset, ensure CS is
> >  	 * stopped, set ring stop bit and prefetch disable bit to halt CS
> >  	 */
> > -	if (IS_GRAPHICS_VER(engine->i915, 11, 12))
> > +	if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
> > +	    (GRAPHICS_VER(engine->i915) >= 11 &&
> > +	    GRAPHICS_VER_FULL(engine->i915) < IP_VER(12, 70)))
> >  		intel_uncore_write_fw(uncore, RING_MODE_GEN7(engine->mmio_base),
> >  				      _MASKED_BIT_ENABLE(GEN12_GFX_PREFETCH_DISABLE));
> >  
> > diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> > index 49a8f10d76c7..c14476c777cc 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> > @@ -2989,10 +2989,12 @@ static void execlists_reset_prepare(struct intel_engine_cs *engine)
> >  	intel_engine_stop_cs(engine);
> >  
> >  	/*
> > -	 * Wa_22011802037:gen11/gen12: In addition to stopping the cs, we need
> > +	 * Wa_22011802037: In addition to stopping the cs, we need
> >  	 * to wait for any pending mi force wakeups
> >  	 */
> > -	if (IS_GRAPHICS_VER(engine->i915, 11, 12))
> > +	if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
> > +	    (GRAPHICS_VER(engine->i915) >= 11 &&
> > +	    GRAPHICS_VER_FULL(engine->i915) < IP_VER(12, 70)))
> >  		intel_engine_wait_for_pending_mi_fw(engine);
> >  
> >  	engine->execlists.reset_ccid = active_ccid(engine);
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> > index 41a237509dcf..4127830c33ca 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> > @@ -164,8 +164,15 @@ void intel_gt_mcr_init(struct intel_gt *gt)
> >  	if (MEDIA_VER(i915) >= 13 && gt->type == GT_MEDIA) {
> >  		gt->steering_table[OADDRM] = xelpmp_oaddrm_steering_table;
> >  	} else if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70)) {
> > -		fuse = REG_FIELD_GET(GT_L3_EXC_MASK,
> > -				     intel_uncore_read(gt->uncore, XEHP_FUSE4));
> > +		/* Wa_14016747170 */
> > +		if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > +		    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> > +			fuse = REG_FIELD_GET(MTL_GT_L3_EXC_MASK,
> > +					     intel_uncore_read(gt->uncore,
> > +							       MTL_GT_ACTIVITY_FACTOR));
> > +		else
> > +			fuse = REG_FIELD_GET(GT_L3_EXC_MASK,
> > +					     intel_uncore_read(gt->uncore, XEHP_FUSE4));
> >  
> >  		/*
> >  		 * Despite the register field being named "exclude mask" the
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > index f8eb807b56f9..470d6feb456a 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > @@ -414,6 +414,7 @@
> >  #define   TBIMR_FAST_CLIP			REG_BIT(5)
> >  
> >  #define VFLSKPD					MCR_REG(0x62a8)
> > +#define   VF_PREFETCH_TLB_DIS			REG_BIT(5)
> >  #define   DIS_OVER_FETCH_CACHE			REG_BIT(1)
> >  #define   DIS_MULT_MISS_RD_SQUASH		REG_BIT(0)
> >  
> > @@ -1535,6 +1536,10 @@
> >  
> >  #define MTL_MEDIA_MC6				_MMIO(0x138048)
> >  
> > +/* Wa_14016747170:mtl-p[a0], mtl-m[a0] */
> > +#define MTL_GT_ACTIVITY_FACTOR			_MMIO(0x138010)
> > +#define   MTL_GT_L3_EXC_MASK			REG_GENMASK(5, 3)
> > +
> >  #define GEN6_GT_THREAD_STATUS_REG		_MMIO(0x13805c)
> >  #define   GEN6_GT_THREAD_STATUS_CORE_MASK	0x7
> >  
> > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > index bf84efb3f15f..fc166e25f606 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > @@ -786,6 +786,32 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
> >  	wa_masked_en(wal, CACHE_MODE_1, MSAA_OPTIMIZATION_REDUC_DISABLE);
> >  }
> >  
> > +static void mtl_ctx_workarounds_init(struct intel_engine_cs *engine,
> > +				     struct i915_wa_list *wal)
> > +{
> > +	struct drm_i915_private *i915 = engine->i915;
> > +
> > +	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > +	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
> > +		/* Wa_14014947963:mtl */
> > +		wa_masked_field_set(wal, VF_PREEMPTION,
> > +				    PREEMPTION_VERTEX_COUNT, 0x4000);
> > +
> > +		/* Wa_16013271637:mtl */
> > +		wa_mcr_masked_en(wal, XEHP_SLICE_COMMON_ECO_CHICKEN1,
> > +				 MSC_MSAA_REODER_BUF_BYPASS_DISABLE);
> > +
> > +		/* Wa_18019627453:mtl */
> > +		wa_mcr_masked_en(wal, VFLSKPD, VF_PREFETCH_TLB_DIS);
> > +
> > +		/* Wa_18018764978:mtl */
> > +		wa_masked_en(wal, PSS_MODE2, SCOREBOARD_STALL_FLUSH_CONTROL);
> > +	}
> > +
> > +	/* Wa_18019271663:mtl */
> > +	wa_masked_en(wal, CACHE_MODE_1, MSAA_OPTIMIZATION_REDUC_DISABLE);
> > +}
> > +
> >  static void fakewa_disable_nestedbb_mode(struct intel_engine_cs *engine,
> >  					 struct i915_wa_list *wal)
> >  {
> > @@ -872,7 +898,9 @@ __intel_engine_init_ctx_wa(struct intel_engine_cs *engine,
> >  	if (engine->class != RENDER_CLASS)
> >  		goto done;
> >  
> > -	if (IS_PONTEVECCHIO(i915))
> > +	if (IS_METEORLAKE(i915))
> > +		mtl_ctx_workarounds_init(engine, wal);
> > +	else if (IS_PONTEVECCHIO(i915))
> >  		; /* noop; none at this time */
> >  	else if (IS_DG2(i915))
> >  		dg2_ctx_workarounds_init(engine, wal);
> > @@ -1628,7 +1656,10 @@ pvc_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
> >  static void
> >  xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
> >  {
> > -	/* FIXME: Actual workarounds will be added in future patch(es) */
> > +	/* Wa_14014830051:mtl */
> > +	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
> > +	    IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0))
> > +		wa_mcr_write_clr(wal, SARB_CHICKEN1, COMP_CKN_IN);
> >  
> >  	/*
> >  	 * Unlike older platforms, we no longer setup implicit steering here;
> > @@ -2168,7 +2199,9 @@ void intel_engine_init_whitelist(struct intel_engine_cs *engine)
> >  
> >  	wa_init_start(w, engine->gt, "whitelist", engine->name);
> >  
> > -	if (IS_PONTEVECCHIO(i915))
> > +	if (IS_METEORLAKE(i915))
> > +		; /* noop; none at this time */
> > +	else if (IS_PONTEVECCHIO(i915))
> >  		pvc_whitelist_build(engine);
> >  	else if (IS_DG2(i915))
> >  		dg2_whitelist_build(engine);
> > @@ -2278,6 +2311,34 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
> >  {
> >  	struct drm_i915_private *i915 = engine->i915;
> >  
> > +	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > +	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
> > +		/* Wa_22014600077:mtl */
> > +		wa_mcr_masked_en(wal, GEN10_CACHE_MODE_SS,
> > +				 ENABLE_EU_COUNT_FOR_TDL_FLUSH);
> > +	}
> > +
> > +	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > +	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> > +	    IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
> > +	    IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
> > +		/* Wa_1509727124:dg2,mtl */
> > +		wa_mcr_masked_en(wal, GEN10_SAMPLER_MODE,
> > +				 SC_DISABLE_POWER_OPTIMIZATION_EBB);
> > +
> > +		/* Wa_22013037850:dg2,mtl */
> > +		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW,
> > +				DISABLE_128B_EVICTION_COMMAND_UDW);
> > +	}
> > +
> > +	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
> > +	    IS_DG2_G11(i915) || IS_DG2_G12(i915) ||
> > +	    IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0)) {
> > +		/* Wa_22012856258:dg2,mtl */
> > +		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN2,
> > +				 GEN12_DISABLE_READ_SUPPRESSION);
> > +	}
> > +
> >  	if (IS_DG2(i915)) {
> >  		/* Wa_1509235366:dg2 */
> >  		wa_write_or(wal, GEN12_GAMCNTRL_CTRL, INVALIDATION_BROADCAST_MODE_DIS |
> > @@ -2289,13 +2350,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
> >  		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN2, GEN12_ENABLE_LARGE_GRF_MODE);
> >  	}
> >  
> > -	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
> > -	    IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
> > -		/* Wa_1509727124:dg2 */
> > -		wa_mcr_masked_en(wal, GEN10_SAMPLER_MODE,
> > -				 SC_DISABLE_POWER_OPTIMIZATION_EBB);
> > -	}
> > -
> >  	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A0, STEP_B0) ||
> >  	    IS_DG2_GRAPHICS_STEP(i915, G11, STEP_A0, STEP_B0)) {
> >  		/* Wa_14012419201:dg2 */
> > @@ -2327,14 +2381,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
> >  
> >  	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
> >  	    IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
> > -		/* Wa_22013037850:dg2 */
> > -		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW,
> > -				DISABLE_128B_EVICTION_COMMAND_UDW);
> > -
> > -		/* Wa_22012856258:dg2 */
> > -		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN2,
> > -				 GEN12_DISABLE_READ_SUPPRESSION);
> > -
> >  		/*
> >  		 * Wa_22010960976:dg2
> >  		 * Wa_14013347512:dg2
> > @@ -2944,6 +2990,27 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
> >  
> >  	add_render_compute_tuning_settings(i915, wal);
> >  
> > +	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > +	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> > +	    IS_PONTEVECCHIO(i915) ||
> > +	    IS_DG2(i915)) {
> > +		/* Wa_18018781329:dg2,pvc,mtl */
> > +		wa_mcr_write_or(wal, RENDER_MOD_CTRL, FORCE_MISS_FTLB);
> > +		wa_mcr_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
> > +		wa_mcr_write_or(wal, VDBX_MOD_CTRL, FORCE_MISS_FTLB);
> > +		wa_mcr_write_or(wal, VEBX_MOD_CTRL, FORCE_MISS_FTLB);
> > +
> > +		/* Wa_22014226127:dg2,pvc,mtl */
> > +		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0, DISABLE_D8_D16_COASLESCE);
> > +	}
> > +
> > +	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > +	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> > +	    IS_DG2(i915)) {
> > +		/* Wa_18017747507:dg2,mtl */
> > +		wa_masked_en(wal, VFG_PREEMPTION_CHICKEN, POLYGON_TRIFAN_LINELOOP_DISABLE);
> > +	}
> > +
> >  	if (IS_PONTEVECCHIO(i915)) {
> >  		/* Wa_16016694945 */
> >  		wa_masked_en(wal, XEHPC_LNCFMISCCFGREG0, XEHPC_OVRLSCCC);
> > @@ -2985,17 +3052,8 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
> >  		/* Wa_14015227452:dg2,pvc */
> >  		wa_mcr_masked_en(wal, GEN9_ROW_CHICKEN4, XEHP_DIS_BBL_SYSPIPE);
> >  
> > -		/* Wa_22014226127:dg2,pvc */
> > -		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0, DISABLE_D8_D16_COASLESCE);
> > -
> >  		/* Wa_16015675438:dg2,pvc */
> >  		wa_masked_en(wal, FF_SLICE_CS_CHICKEN2, GEN12_PERF_FIX_BALANCING_CFE_DISABLE);
> > -
> > -		/* Wa_18018781329:dg2,pvc */
> > -		wa_mcr_write_or(wal, RENDER_MOD_CTRL, FORCE_MISS_FTLB);
> > -		wa_mcr_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
> > -		wa_mcr_write_or(wal, VDBX_MOD_CTRL, FORCE_MISS_FTLB);
> > -		wa_mcr_write_or(wal, VEBX_MOD_CTRL, FORCE_MISS_FTLB);
> >  	}
> >  
> >  	if (IS_DG2(i915)) {
> > @@ -3004,9 +3062,6 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
> >  		 * Wa_22015475538:dg2
> >  		 */
> >  		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW, DIS_CHAIN_2XSIMD8);
> > -
> > -		/* Wa_18017747507:dg2 */
> > -		wa_masked_en(wal, VFG_PREEMPTION_CHICKEN, POLYGON_TRIFAN_LINELOOP_DISABLE);
> >  	}
> >  
> >  	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A0, STEP_C0) || IS_DG2_G11(i915))
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> > index c0b5aa6fde26..aed2973e5f8d 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> > @@ -274,8 +274,9 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
> >  	if (IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_B0))
> >  		flags |= GUC_WA_GAM_CREDITS;
> >  
> > -	/* Wa_14014475959:dg2 */
> > -	if (IS_DG2(gt->i915))
> > +	/* Wa_14014475959:dg2,mtl */
> > +	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
> > +	    IS_DG2(gt->i915))
> >  		flags |= GUC_WA_HOLD_CCS_SWITCHOUT;
> >  
> >  	/*
> > @@ -289,7 +290,9 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
> >  		flags |= GUC_WA_DUAL_QUEUE;
> >  
> >  	/* Wa_22011802037: graphics version 11/12 */
> > -	if (IS_GRAPHICS_VER(gt->i915, 11, 12))
> > +	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
> > +	    (GRAPHICS_VER(gt->i915) >= 11 &&
> > +	    GRAPHICS_VER_FULL(gt->i915) < IP_VER(12, 70)))
> >  		flags |= GUC_WA_PRE_PARSER;
> >  
> >  	/* Wa_16011777198:dg2 */
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > index 53f7f599cde3..f2d917132693 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > @@ -1621,7 +1621,7 @@ static void guc_engine_reset_prepare(struct intel_engine_cs *engine)
> >  	intel_engine_stop_cs(engine);
> >  
> >  	/*
> > -	 * Wa_22011802037:gen11/gen12: In addition to stopping the cs, we need
> > +	 * Wa_22011802037: In addition to stopping the cs, we need
> >  	 * to wait for any pending mi force wakeups
> >  	 */
> >  	intel_engine_wait_for_pending_mi_fw(engine);
> > @@ -4202,8 +4202,10 @@ static void guc_default_vfuncs(struct intel_engine_cs *engine)
> >  	engine->flags |= I915_ENGINE_HAS_TIMESLICES;
> >  
> >  	/* Wa_14014475959:dg2 */
> > -	if (IS_DG2(engine->i915) && engine->class == COMPUTE_CLASS)
> > -		engine->flags |= I915_ENGINE_USES_WA_HOLD_CCS_SWITCHOUT;
> > +	if (engine->class == COMPUTE_CLASS)
> > +		if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
> > +		    IS_DG2(engine->i915))
> > +			engine->flags |= I915_ENGINE_USES_WA_HOLD_CCS_SWITCHOUT;
> >  
> >  	/*
> >  	 * TODO: GuC supports timeslicing and semaphores as well, but they're
> > diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> > index 48fd82722f12..f742328c4d95 100644
> > --- a/drivers/gpu/drm/i915/i915_drv.h
> > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > @@ -735,6 +735,10 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
> >  	(IS_METEORLAKE(__i915) && \
> >  	 IS_DISPLAY_STEP(__i915, since, until))
> >  
> > +#define IS_MTL_GRAPHICS_STEP(__i915, variant, since, until) \
> > +	(IS_SUBPLATFORM(__i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_##variant) && \
> > +	 IS_GRAPHICS_STEP(__i915, since, until))
> > +
> >  /*
> >   * DG2 hardware steppings are a bit unusual.  The hardware design was forked to
> >   * create three variants (G10, G11, and G12) which each have distinct
> > diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> > index 849baf6c3b3c..7add88dde79e 100644
> > --- a/drivers/gpu/drm/i915/intel_device_info.c
> > +++ b/drivers/gpu/drm/i915/intel_device_info.c
> > @@ -343,6 +343,12 @@ static void intel_ipver_early_init(struct drm_i915_private *i915)
> >  
> >  	ip_ver_read(i915, i915_mmio_reg_offset(GMD_ID_GRAPHICS),
> >  		    &runtime->graphics.ip);
> > +	/* Wa_22012778468:mtl */
> > +	if (runtime->graphics.ip.ver == 0x0 &&
> > +	    INTEL_INFO(i915)->platform == INTEL_METEORLAKE) {
> > +		RUNTIME_INFO(i915)->graphics.ip.ver = 12;
> > +		RUNTIME_INFO(i915)->graphics.ip.rel = 70;
> > +	}
> >  	ip_ver_read(i915, i915_mmio_reg_offset(GMD_ID_DISPLAY),
> >  		    &runtime->display.ip);
> >  	ip_ver_read(i915, i915_mmio_reg_offset(GMD_ID_MEDIA),
> > -- 
> > 2.38.1
> > 
> 
> -- 
> Matt Roper
> Graphics Software Engineer
> VTT-OSGC Platform Enablement
> Intel Corporation
