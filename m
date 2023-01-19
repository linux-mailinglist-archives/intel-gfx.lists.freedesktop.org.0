Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9F246746E1
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Jan 2023 00:03:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30C9010E066;
	Thu, 19 Jan 2023 23:03:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A485610E066
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Jan 2023 23:03:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674169421; x=1705705421;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=q+s9ON0FocFXJFpAd3gGBEODrmcXOMq4OMrV6+ABqAA=;
 b=IQedyBUPUEQ/fmCIUAASxn8dL2Ku70fsmz/4vvxKHNvP4X1e4Fu2e1xw
 ywxJdawC0eKvJDtL54xteye8OH2pBto562s7sMGanadXLA1aBO2KpMs3n
 xWEmH32rE9sRjNPZVY5C59zCTXepqYoTb8059QIZMH1J+pO44QqHP9gUz
 N93S/pcebc7Z/OK+/lpi6eFCJVbPK4fwY8/zY1nkc3zJduDxBZsdlMey3
 oWqdXqmE+Os/XcKORpucwaFCHwEmkQyvIHNU5BETkgJLYN+uECAMDKqEu
 oP6aGsopxa5CVH5pCWPpGWAugYFc2lf1yas7DhMRffuw8I7D1J1TCDxv7 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="411687668"
X-IronPort-AV: E=Sophos;i="5.97,230,1669104000"; d="scan'208";a="411687668"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2023 15:03:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="749119082"
X-IronPort-AV: E=Sophos;i="5.97,230,1669104000"; d="scan'208";a="749119082"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP; 19 Jan 2023 15:03:39 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 19 Jan 2023 15:03:38 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 19 Jan 2023 15:03:38 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 19 Jan 2023 15:03:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oPiBSQGFQ4yIuNJkAnevcIlqZUS8N+EzKcC/tAcjJPgXQyrQh5HFf/XJsIGoa0/GJBZVILmz5U3REDTmth6YtyOizeZCgb0ob069HWN+X+nhizRaB0laUPLEM7+wZFtmWy6kPnwKNUemltsyPKbVmPNT/aMYm+Zg650l37vubnHKRfwiavtrEY+0/uFWwrwP3nFrokZCOHcRq9PCR2WWSQRTzm3wJSQwsyy785SQkAetExsSemNAq9nl3iwD9zraufzE97GvJgVxTJKM9fQCRkpDBObzhMf02r8PNsxIcNmxJkgdDhw5KQFI4OSU9cGuvkwazlK8utpK+LeTlWh6IQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cxbMkXlZZtkShabTRtaEPk8MZnfJ9+2dWK0FvMEQhS0=;
 b=E2Uom/lEphP/c3laynFX5yceMpts4ieUa3qAnOr0HJfHWDMX4NRq/aw+lwGlzhgM65Gwttpzj2J+Q+P7kciEbnOFgVNj1dfL45umtXgZwgwtHx7dcO0c0lkm9FjJtr/yBxlIvL2i08QcUdl1P9XL4t+OlOR7I7LNQksJIxWbJQ9uULthw2+KeuMtKxdSs8o9YLD02n0CRyTaq08hP/7METt0e2i+d6Ufh0KSYbiDeseQ2kRKGx5utJDYTiisGBtl+vm75yhAGyqym2qU99g3GX1o/U+dK/ENxrw07RBVs4tJFRL2gfHYcZ6Sd53Z/+a+aEkxI//X3ytbL9cHqL35nA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 CH0PR11MB8233.namprd11.prod.outlook.com (2603:10b6:610:183::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.27; Thu, 19 Jan
 2023 23:03:35 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::68d0:f8e0:eaf3:982e]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::68d0:f8e0:eaf3:982e%9]) with mapi id 15.20.6002.024; Thu, 19 Jan 2023
 23:03:35 +0000
Date: Thu, 19 Jan 2023 15:03:30 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Message-ID: <Y8nMQkCmLKZr/6Iz@mdroper-desk1.amr.corp.intel.com>
References: <20230118155249.41551-1-gustavo.sousa@intel.com>
 <20230118155249.41551-3-gustavo.sousa@intel.com>
 <Y8m8tYS9Oma09+7i@intel.com>
 <20230119222429.exavqg6mjmj5aeqt@gjsousa-mobl2>
 <243ee40a43dcfae555de7ab4186fb4ede70f9741.camel@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <243ee40a43dcfae555de7ab4186fb4ede70f9741.camel@intel.com>
X-ClientProxiedBy: YT3PR01CA0086.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:84::34) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|CH0PR11MB8233:EE_
X-MS-Office365-Filtering-Correlation-Id: 078d92c6-f927-449c-1ec2-08dafa716425
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KbAV6u3hjvAUfqE0rBIfGzPDmG90fjXqN9vqHwON0R4u2kyrs/UYNeehLyR9uRLeUtYh3Mj3hyKX096ssVjjVyVJ6+7qeO1377z0r0L0ZLk+ka8AqxgmIzZT6sgo2pwG+UPq+jLa0uerNAQBt1PLMgHZdmrwhknvVzXitycGRJfthOCTE1tWvdR3nY/PkjVZmcYQ6uNAhXGaJHCN2AdIdHFw8qOFg9dxCU78QXqkxqEE4A0ZLkdmWA2UpurnWXTZe8kUxaogWvv/nupHhkYhkac1rLjkAv/n+Ln4i1LUh4tm1O+ZWFghplKX1QoPweQ5ktuJeFh9zG6WO1pWhMucO4BusKwKkX0eKj8VD4yYVPHt6DSWFb9gY/cYrbpkqxLfvmMw1VRPT50qHblrzu7k6uH3sdN+0HBd9JYm/9KU/QcIKHUm7FnpmA58JNwjQwgO7Q9CHPKEcw3mHdCmFCPAhpj2n1bPnbUeMsAd0dSuRJoaYUKlxhbGigP+HZzF3AH2HnUw9xiA6tNCGa0fiCPvQIQsJAszPLolwimH8PTrMcqhyAZfvJIYsZ+JRggj0Lufx/fX0bizexHYRAfJTIMnmw+m3zi2DyCR3ctOQafsXEECNx5ebKYurNcNmzvxq+JF1Zfi06/U9HzrnYC8sujMtA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(346002)(376002)(136003)(366004)(396003)(451199015)(6506007)(478600001)(107886003)(54906003)(6636002)(6486002)(6666004)(4326008)(66946007)(66556008)(66476007)(8676002)(316002)(26005)(186003)(6512007)(5660300002)(6862004)(8936002)(41300700001)(2906002)(83380400001)(86362001)(38100700002)(82960400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?9V23G9Mm+eRpeEDuWGKAoRdmbhCYc9I4DFT/kMmPfJhaELaMUYfIQTeOWe?=
 =?iso-8859-1?Q?2oEqnMWyIMZ0MVj/1kvf73g/UzkNINdo6ruA5cPOwZzbK3IFWPyi3DffId?=
 =?iso-8859-1?Q?6fJbiNmNaBN2Fe5MJ8eRtjLGO3GDx/Q9IeQihrS0HcWcYtk5z7HlAvDIsX?=
 =?iso-8859-1?Q?VKe5s+9vv9Byp80yX+dN9U9GfovksWY1Ec0Htrvijty5O3155GEr5O8/q3?=
 =?iso-8859-1?Q?Tw5/bhV3gdB9TLvAEZiCjRGTfsUnbH2JD6qyhHwNfQuitnTlAyTfTRa2YR?=
 =?iso-8859-1?Q?JkfWS4ObVJ9leZcT9ynt2Qu5XGO/JJ4aPQZqxEkPklMDD/KEIuiK/GzUNb?=
 =?iso-8859-1?Q?xZwW8QZgBOss8PgyJfv7i87oRHVC3l+uB384D5JdRgoOrqC3RDt2XW0v4t?=
 =?iso-8859-1?Q?NlhNgL3LeirHwgGcmCIVAhI6BGZ2xHHN7mcdhTQTq23m4hPw8EUXhkgijs?=
 =?iso-8859-1?Q?xxGBaUD19y8GQnNGyFhCFF78D5NpZVAng3WXuKxxmMkoy/3tkV8/ZQi3vS?=
 =?iso-8859-1?Q?FKMMAy/X3oYufVry0T/uIzpJ6uuB5ouM8O6pRdMjCANXqOPWrJkuabaWfV?=
 =?iso-8859-1?Q?il3Q9BPVs80onCL0n7QPI1NTnOCTYy/DRkzLJeqiehcZZEu/AdI7AjhOwF?=
 =?iso-8859-1?Q?mobbUiWQe6/xl7zwBGfqDBRC0V89PyRo6026x4Avd4ScoVVpCPloW9VBgt?=
 =?iso-8859-1?Q?tWq15R7b8uR6zrBBx/h8y1X/t16OUpucccduGoC4MoWR2u/dY0R1vEMBIl?=
 =?iso-8859-1?Q?tfwqXpGej7fP6EW94kVlG2fCR6IvMsav53l4RzPCJWaBMJ7lvt/fh1VQpM?=
 =?iso-8859-1?Q?fowRg7/+OudREt2XM07GKfMi6+RwHIVrHnrrMALD8zYl9GOXbfugH8kOuJ?=
 =?iso-8859-1?Q?PTjswVKGxo2KQmPL9jQvxwdvooKsgr3UQw3lMPxIR/7y1KKeOnjUoTzzXL?=
 =?iso-8859-1?Q?MOtgmilTrsW7HurZiIz37g29jJTmW94VTdH1TxK+bFQCEL+jYJSs6+f+58?=
 =?iso-8859-1?Q?MPVDkk/SaW7HaXNCfXCGk8PAZBqVwt0cqgyRbMjmIQGUUkQvQt1qzVgG49?=
 =?iso-8859-1?Q?Slyl9j4aVLalV9RBpSivgnm6G9IqgylGgLk2kDXFDpt831+D3nmVjRX/oN?=
 =?iso-8859-1?Q?/K6Nijnt/qmqxMl53iwAex+Tvk49ymaq8PCK+L6F00zxH4y/U0ETCTab9q?=
 =?iso-8859-1?Q?D1vEuc7y2rAnZIms0ZeViPrXNyVpVHEKvmiKn/BjgTH4fJaoP+hvbYkzns?=
 =?iso-8859-1?Q?PuWphDkNEmBb3eaV/JTHSZw75NP8Htgxps8ZBSQNLW3Xt5pc61NnKmJP6T?=
 =?iso-8859-1?Q?EO0O5vBQPgu1nA6vY9OLSszkNYVvyO6UmWDhzTvHSM4O4C5gB3CGybHDR0?=
 =?iso-8859-1?Q?CldZASNt3bL7IgV3sG5Iyn5btxJDqVMsMU/slTYolQ0Bqp3HqV1jt5nmj0?=
 =?iso-8859-1?Q?bCA51q1w7CapITS3dKz2ikTJb7lywTbVbOu437IzoUczprP60lljXzWQqK?=
 =?iso-8859-1?Q?1BTtaxO/4y4HicRbeUf6Ez4/y6VjMFbzhLCg6/gR20PXa+YjoaaskcuSmi?=
 =?iso-8859-1?Q?5LfHdHocSl3XEKpGm5vhi+y5gPEG/l8JaHedJzvPYuvEbehRZFecnAcyk2?=
 =?iso-8859-1?Q?VAURQHLaVRFnb22EfVhPLCMk2UOEzCTBS5g9Q8L3AUnXdu3YnOpRIsNQ?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 078d92c6-f927-449c-1ec2-08dafa716425
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jan 2023 23:03:34.6468 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VGk72uanras0tVwQSxIvg3SFscPBR3NxLFDy9CL/2WTqZ4EUb45d5EnvDx23SYHCDzRCJvvgXELzjmfcAdPRxB9hwl+WoBfhGQv+GpiG1Zg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8233
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915/gt: Move LSC_CHICKEN_BIT*
 workarounds to correct function
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 19, 2023 at 02:28:13PM -0800, Vivi, Rodrigo wrote:
> On Thu, 2023-01-19 at 19:24 -0300, Gustavo Sousa wrote:
> > On Thu, Jan 19, 2023 at 04:57:09PM -0500, Rodrigo Vivi wrote:
> > > On Wed, Jan 18, 2023 at 12:52:49PM -0300, Gustavo Sousa wrote:
> > > > That register doesn't belong to a specific engine, so the proper
> > > > placement for workarounds programming it should be
> > > > general_render_compute_wa_init().
> > > > 
> > > > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> > > 
> > > Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > 
> > Thanks for the review, Rodrigo!
> > 
> > Last time I talked with the team, Lucas suspected there could be a
> > reason why
> > the workarounds were in their current places. I'll include him and
> > Matt Roper
> > here, since they had assigned themselves to check this.
> > 
> > I think we should wait for their input before applying this patch.
> 
> ops, I have just pushed them...

I didn't review each workaround in detail, but at a high level the patch
below looks correct to me.  The intention was always to go back and find
all the workarounds touching non-RCS, non-CCS registers that are part of
the shared render/compute domain and move them to this
general_render_compute_wa_init() function.  The effort just stalled out
because the developer working on it left and nobody else has had time to
pick it up yet; it's been on our todo list for a while.

Moving these workarounds from rcs_engine_wa_init() to
general_render_compute_wa_init() would become very important if a SKU of
these platforms ever shows up with a fused-off render engine.  In that
case the workarounds would get missed (due to lack of RCS), which would
negatively impact the behavior of the remaining CCS engines.  However
that's just a theoretical problem today; in practice all DG2 and MTL
platforms have an RCS engine, so the code movement below will not cause
any functional change.  But it's still good to have Gustavo finally
cleaning this up because we never know what the future holds.


Matt

> 
> > 
> > > 
> > > > ---
> > > >  drivers/gpu/drm/i915/gt/intel_workarounds.c | 65 ++++++++++++---
> > > > ------
> > > >  1 file changed, 36 insertions(+), 29 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > > b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > > index ef6065ce8267..918a271447e2 100644
> > > > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > > @@ -2341,10 +2341,6 @@ rcs_engine_wa_init(struct intel_engine_cs
> > > > *engine, struct i915_wa_list *wal)
> > > >                 /* Wa_1509727124 */
> > > >                 wa_mcr_masked_en(wal, GEN10_SAMPLER_MODE,
> > > >                                 
> > > > SC_DISABLE_POWER_OPTIMIZATION_EBB);
> > > > -
> > > > -               /* Wa_22013037850 */
> > > > -               wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW,
> > > > -
> > > >                                DISABLE_128B_EVICTION_COMMAND_UDW);
> > > >         }
> > > >  
> > > >         if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0,
> > > > STEP_FOREVER) ||
> > > > @@ -2373,21 +2369,6 @@ rcs_engine_wa_init(struct intel_engine_cs
> > > > *engine, struct i915_wa_list *wal)
> > > >                                 
> > > > GEN12_DISABLE_HDR_PAST_PAYLOAD_HOLD_FIX);
> > > >         }
> > > >  
> > > > -       if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_C0) ||
> > > > -           IS_DG2_G11(i915)) {
> > > > -               /*
> > > > -                * Wa_22012826095:dg2
> > > > -                * Wa_22013059131:dg2
> > > > -                */
> > > > -               wa_mcr_write_clr_set(wal, LSC_CHICKEN_BIT_0_UDW,
> > > > -                                    MAXREQS_PER_BANK,
> > > > -                                   
> > > > REG_FIELD_PREP(MAXREQS_PER_BANK, 2));
> > > > -
> > > > -               /* Wa_22013059131:dg2 */
> > > > -               wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0,
> > > > -
> > > >                                FORCE_1_SUB_MESSAGE_PER_FRAGMENT);
> > > > -       }
> > > > -
> > > >         /* Wa_1308578152:dg2_g10 when first gslice is fused off
> > > > */
> > > >         if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_C0) &&
> > > >             needs_wa_1308578152(engine)) {
> > > > @@ -2412,16 +2393,6 @@ rcs_engine_wa_init(struct intel_engine_cs
> > > > *engine, struct i915_wa_list *wal)
> > > >                  */
> > > >                 wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN,
> > > >                                  MDQ_ARBITRATION_MODE |
> > > > UGM_BACKUP_MODE);
> > > > -
> > > > -               /*
> > > > -                * Wa_14010918519:dg2_g10
> > > > -                *
> > > > -                * LSC_CHICKEN_BIT_0 always reads back as 0 is
> > > > this stepping,
> > > > -                * so ignoring verification.
> > > > -                */
> > > > -               wa_mcr_add(wal, LSC_CHICKEN_BIT_0_UDW, 0,
> > > > -                          FORCE_SLM_FENCE_SCOPE_TO_TILE |
> > > > FORCE_UGM_FENCE_SCOPE_TO_TILE,
> > > > -                          0, false);
> > > >         }
> > > >  
> > > >         if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A0, STEP_B0)) {
> > > > @@ -3006,6 +2977,15 @@ general_render_compute_wa_init(struct
> > > > intel_engine_cs *engine, struct i915_wa_li
> > > >  
> > > >         add_render_compute_tuning_settings(i915, wal);
> > > >  
> > > > +       if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > > > +           IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> > > > +           IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0,
> > > > STEP_FOREVER) ||
> > > > +           IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
> > > > +               /* Wa_22013037850 */
> > > > +               wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW,
> > > > +                               DISABLE_128B_EVICTION_COMMAND_UDW
> > > > );
> > > > +       }
> > > > +
> > > >         if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > > >             IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> > > >             IS_PONTEVECCHIO(i915) ||
> > > > @@ -3027,6 +3007,33 @@ general_render_compute_wa_init(struct
> > > > intel_engine_cs *engine, struct i915_wa_li
> > > >                 wa_masked_en(wal, VFG_PREEMPTION_CHICKEN,
> > > > POLYGON_TRIFAN_LINELOOP_DISABLE);
> > > >         }
> > > >  
> > > > +       if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_C0) ||
> > > > +           IS_DG2_G11(i915)) {
> > > > +               /*
> > > > +                * Wa_22012826095:dg2
> > > > +                * Wa_22013059131:dg2
> > > > +                */
> > > > +               wa_mcr_write_clr_set(wal, LSC_CHICKEN_BIT_0_UDW,
> > > > +                                    MAXREQS_PER_BANK,
> > > > +                                   
> > > > REG_FIELD_PREP(MAXREQS_PER_BANK, 2));
> > > > +
> > > > +               /* Wa_22013059131:dg2 */
> > > > +               wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0,
> > > > +                               FORCE_1_SUB_MESSAGE_PER_FRAGMENT)
> > > > ;
> > > > +       }
> > > > +
> > > > +       if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A0, STEP_B0)) {
> > > > +               /*
> > > > +                * Wa_14010918519:dg2_g10
> > > > +                *
> > > > +                * LSC_CHICKEN_BIT_0 always reads back as 0 is
> > > > this stepping,
> > > > +                * so ignoring verification.
> > > > +                */
> > > > +               wa_mcr_add(wal, LSC_CHICKEN_BIT_0_UDW, 0,
> > > > +                          FORCE_SLM_FENCE_SCOPE_TO_TILE |
> > > > FORCE_UGM_FENCE_SCOPE_TO_TILE,
> > > > +                          0, false);
> > > > +       }
> > > > +
> > > >         if (IS_PONTEVECCHIO(i915)) {
> > > >                 /* Wa_16016694945 */
> > > >                 wa_masked_en(wal, XEHPC_LNCFMISCCFGREG0,
> > > > XEHPC_OVRLSCCC);
> > > > -- 
> > > > 2.39.0
> > > > 
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
