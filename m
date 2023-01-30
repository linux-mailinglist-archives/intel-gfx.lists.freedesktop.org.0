Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9293681830
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jan 2023 19:04:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAA8310E02B;
	Mon, 30 Jan 2023 18:04:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8879010E02B
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Jan 2023 18:04:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675101889; x=1706637889;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=eObFBKNvXHj5LJYlwCxxdIz6f+WySno6EKHhdKiga6Y=;
 b=Iy7PLALoejfY/jBIntPZxVLyiEcfPAJVr9n5uAH8vJLinJpU09EK+pGP
 ZqdWy2ghxigxhIU6DI4ATHo0wjm/mINOVxt4EPBJ+kVVOw3n/szWi5dsw
 TurPF+BdrXy1QGZ7ZPZnGFd66zDf9qxrQyK3vVgT1ns5ce/8K/UUGCz2n
 klHreKhGL4SyfDNPx9unLOPpOcy/WebIDaftAIGxri4HKrBQFi86nbzDR
 egqi4T+uZd+c9mfagQhkHBeSBJ1Dn16Ja5X4ld2gI358OVPlq3ZoaIDd0
 QTlp2SWWAxY8MTt70jwa0AXHPLTBf+2c3R8q5m/HULSVWQKFnT4kXvrPT g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="315589722"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; d="scan'208";a="315589722"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 10:03:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="788115115"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; d="scan'208";a="788115115"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 30 Jan 2023 10:03:40 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 30 Jan 2023 10:03:39 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 30 Jan 2023 10:03:39 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.43) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 30 Jan 2023 10:03:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fWd/5qSi7wDGpACC2YH5gp8fZAL3hcrILnFDj3Yg35ohijn+4FgWAeyVfiYYENnCYZrJV0swZ0XzUmGUExKy1TLdBeSkJbxQ2MgT1b6S95uM5c4MozzXds+WbznhEJINYoVb2KNzJq2K5adZ9ij71D372oJXgZVbsgnDa/twEB15nEWbg3Drbh1Id2fK5MXxLdDjS4kvfVFx9OSxA8nK54+W1AuIoXTYc1ve5pKT97VAehDb/yMBUochlKPGJOF8J5egAeWY7XGmrxeOP88BAiefabYSu667cc6QaMSB//QZ4Y+JgAA2GpirNuiX2wI5Y1+ZCGlzcgfETH0kRp+x/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sTrGgbRqptDdKsAu0pHfFtlxwAq+GTroPC8jrrM8l8o=;
 b=lL+RuZ7C0lqhJMHIIlHwuR9bHQQtmBdinZBxMIxALZe9dMXPQC0SbMGM/QRppsx+TPQN8inAdjsHZg92ZJHFOvmqRVSPomCIZtywCKR1Ws8v8kfkP1S0Luh7l3msKIepY599OfpLZy3gx3bx02c5E6eUdIVi0xap6/SCuzjfpB3jADYQxdP8Mjy92gsblLdmu2m5QKj5Iza8sJcf8gfkGXZEmhGWLdknruMWbX6E1Xmd3WS3jmwUJcGsdwbCPTKxkoiBhQvrsukFkLvj2UdKMnK1wt7l4LVQ0hM69DiZM0SooR3j59pD6Iwa7BZVl0S6rEdMHq9OSVpCwOoAJgkqAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA0PR11MB4717.namprd11.prod.outlook.com (2603:10b6:806:9f::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.36; Mon, 30 Jan
 2023 18:03:37 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930%4]) with mapi id 15.20.6043.036; Mon, 30 Jan 2023
 18:03:37 +0000
Date: Mon, 30 Jan 2023 13:03:33 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <Y9gGdT6AvbwNBZx8@intel.com>
References: <20230127224313.4042331-1-matthew.d.roper@intel.com>
 <20230127224313.4042331-3-matthew.d.roper@intel.com>
 <Y9f8NHy26q1Ga7SO@intel.com>
 <Y9f/nvKPP2EFPDnA@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <Y9f/nvKPP2EFPDnA@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: BY3PR03CA0025.namprd03.prod.outlook.com
 (2603:10b6:a03:39a::30) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SA0PR11MB4717:EE_
X-MS-Office365-Filtering-Correlation-Id: b8a2009f-a199-499f-fcdd-08db02ec4f3c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hxZsveWSltL9gjoYGiJSIyqYCZ3dqLQfJhy52pEmYoJSrN0JpTKVkDxZBiAH7eP2Ju9gSrik8+5aANwKIUloiwB7gMOGjpCI2fkK0Tsas6zJoaYGudtibgp8HwYIg+ecXgjWAI7Sv4udoSssWofVlE5j9jezumPcMLj7njeJJuubpzRwWEdVYu9fFxurdK5Ix+14QMrv7hBXg30llesbiir0VZ10cjkWc42xGUyNE2hFLnjtrLwPeUB7mR4o4Xbd/1dG0iEpXGA5+LNMQJInLbJBnIABpCUvjftDeYog/0Oge/ld0pB2962KdcYjkJRL+2H/+XBZo+Lk24CtAJuMhX0pu8agZO30MtFgmECO5UvSfFE+7qbdxikbY8gK1thMG9Ch97OQkMkhZXydqx068H6pR37a8O1gr54ZzreYlYrwu3OfLnCHawiF5iPrLF1xxZzn5OM/jIL76/lz6EGrdX6p2euC5wVecBvu+ZqF2S+3Cle6PanFIRBSYXOtaeiNkDKGWyNfyBF3hB7jASEYFOCzFc6sBfcTy9iveLiQxFMBwbhMqqsUbS25bkF/7uFfzPjKkqWiEL+sPPdAoIMf9gWj4SLh6eLzC2+UNNd77ItYLq1RluujJ7aCcc7uumvyUOk+7NuHRRnrKpWO+igIVQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(396003)(39860400002)(376002)(346002)(136003)(451199018)(44832011)(83380400001)(2616005)(86362001)(82960400001)(38100700002)(2906002)(36756003)(6506007)(26005)(6512007)(186003)(478600001)(6666004)(66476007)(66556008)(8676002)(6862004)(4326008)(41300700001)(66946007)(8936002)(6486002)(5660300002)(6636002)(316002)(37006003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?vzo6Gx1yXAGruBD3YXi9cr68Yf7Y84nBee3yQsaksfXIu2kvP83y0pHzu4ZE?=
 =?us-ascii?Q?zDQxx0ZoZz2ltn6Ac04nHWMq640J4Vs/SHOVyBqpMpQj1PzrIn3EzwMWv9sP?=
 =?us-ascii?Q?nit2t5QYfUnbNx00R/xZ9vaykIvei9uBFnvnKE+DPIRT32b6NsbEtPLZ0tBO?=
 =?us-ascii?Q?TkIVANVVtbjTQZgR87nY+Hi0vTIDK9M/Kaf4GSWTTQcE0VmpRBwjH7bREIAU?=
 =?us-ascii?Q?U4XjZ37LluS2qmAAiDjZWE6sc4cGFyoG1qdYkkzp4gENmJY8nXkrfucl02h2?=
 =?us-ascii?Q?OcvnyG2pCJ2nB9rCtqh94g99qRU1wAMOFVzA2Q4S94lFJl8GExwoGMWHHRLk?=
 =?us-ascii?Q?zFdBMENBxIpfXAdwA+VHqMGkj21/q3y0fu33jACjiYJhdMRInsFYW7dtHqe0?=
 =?us-ascii?Q?v6SX8EGNx2wQa5MQBuReozZ/d9u+BVyKSb+lXRxUu4F/G+3g2Iqi33A2c0xo?=
 =?us-ascii?Q?iCW8Fa0e8pX7ZD2C61r9w17W+JTQlBv4kLIEqJ4fhhnZiCXHWloO/3mr6Gc0?=
 =?us-ascii?Q?bZf2tKQsRQ2UD9MAFKXmIySKWDikdBt0yii/m8lISeeEMMji8o0TXb/kgMcR?=
 =?us-ascii?Q?g/7QbrFB8PMHUliek/eT1fmZFwzD7TQwlkp7nTA2UTurFJojXtYt5/VeHCmR?=
 =?us-ascii?Q?3HBvnjuOf5fToOLq0XMqG363yflrAYGL8uj7zwsEzb8/b/GIZzaFVfEdrjBq?=
 =?us-ascii?Q?joFt1/ifiYltWMIbDo4RkaIshNBtOcbjbNdWdfFcZBCjC9djjbF15gWBnZN2?=
 =?us-ascii?Q?kqEYRj2iN5jSvaibLNToKKHdpZIpWM/dsgj6L46KjhSNW4isC4+8WerR1CQ1?=
 =?us-ascii?Q?exNrTufq+39VvbQuLmILA/r9UJmrhJMPiySI9OZF7Nxk+QGpdyT0tZLi9Drn?=
 =?us-ascii?Q?G8TQddsr18774DRsSZ6WVusBX4r1ps5oJ1Ijgb/17fpLS/lhsToyPo7JEZin?=
 =?us-ascii?Q?sAef5ukq3MavmcdouZ3mLvUr1Ivphdhz8Asj0nINCozUooh5piz/NjtMpAIj?=
 =?us-ascii?Q?YyuZQUTKSI+4qzI0DJRaphRRxYGI4o10ZW+UFCE1DehIZEjsXijvJum3m44w?=
 =?us-ascii?Q?vUllln3RN1uB6rjiJ+A2hYCVIdFLKnkhUAQDKel1KpQXfMGLseRlbAm04xUi?=
 =?us-ascii?Q?x6t+1pu0pQIMTIELKOp/7qfP27IWm05lr3mHkizlRHqRzwZtWcyq6p+TQnKZ?=
 =?us-ascii?Q?ERIh6mNt8So8/DvlyLNc1YK85/nyIA7fCNYLw8CdM4tEwnvg0WjWvEkLkzd5?=
 =?us-ascii?Q?UMv75Ikh22zG5gG06CUADogbZu2PfnVjbQPjzTMnK9uEZxoCu6RKih8037QK?=
 =?us-ascii?Q?pIX4HK2/bubuir/QYVc8FxrrAxkbI7oguBdwxduqM2tOc5RO0eX6H3qAieXM?=
 =?us-ascii?Q?NDMhIHOYYlCFObKF7m5hcbWzTOeuIkoC0/1LhsxZucpO0RgyuL37eMgKgDQ1?=
 =?us-ascii?Q?pxRpsC639K+qM/9rf5O4oHa2Dtrj12rXgNmLCmupCub/VLxy+7NBAv7rKO9i?=
 =?us-ascii?Q?f7ywiVHK2UCZPyEyIAoUFge7IKDIC8Hi/DPJ9+P1jFNaW3inYjZ6sjKSzu1y?=
 =?us-ascii?Q?iQPvOc0wSxSR1QlIh32wXLN7gbc+9tLlR6aab+yfhMB7V/Olq/7R+f/j+uBc?=
 =?us-ascii?Q?8A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b8a2009f-a199-499f-fcdd-08db02ec4f3c
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2023 18:03:37.1740 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DSA43Z8AwdXJk770RJkHx4q/HFyX/+mWbPGGOApCUTlMe0Y8aDr1rFL8cLKggdcL7WLcR1/ERkaEkmErUYytgA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4717
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/dg1: Drop support for
 pre-production steppings
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

On Mon, Jan 30, 2023 at 09:34:22AM -0800, Matt Roper wrote:
> On Mon, Jan 30, 2023 at 12:19:48PM -0500, Rodrigo Vivi wrote:
> > On Fri, Jan 27, 2023 at 02:43:12PM -0800, Matt Roper wrote:
> > > Several post-DG1 platforms have been brought up now, so we're well past
> > > the point where we usually drop the workarounds that are only applicable
> > > to internal/pre-production hardware.
> > > 
> > > Production DG1 hardware always has a B0 stepping for both display and
> > > GT.
> > > 
> > > Bspec: 44463
> > > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > > ---
> > >  .../drm/i915/display/intel_display_power.c    |  1 -
> > >  drivers/gpu/drm/i915/gt/intel_workarounds.c   | 48 ++-----------------
> > >  drivers/gpu/drm/i915/i915_driver.c            |  1 +
> > >  drivers/gpu/drm/i915/i915_drv.h               |  2 -
> > >  drivers/gpu/drm/i915/intel_pm.c               | 12 -----
> > >  5 files changed, 5 insertions(+), 59 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> > > index 1dc31f0f5e0a..7222502a760c 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > > @@ -1580,7 +1580,6 @@ static void tgl_bw_buddy_init(struct drm_i915_private *dev_priv)
> > >  		return;
> > >  
> > >  	if (IS_ALDERLAKE_S(dev_priv) ||
> > > -	    IS_DG1_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
> > >  	    IS_RKL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> > >  		/* Wa_1409767108 */
> > >  		table = wa_1409767108_buddy_page_masks;
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > index 82a8f372bde6..648fceba5bb6 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > @@ -1463,12 +1463,6 @@ dg1_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
> > >  
> > >  	gen12_gt_workarounds_init(gt, wal);
> > >  
> > > -	/* Wa_1607087056:dg1 */
> > > -	if (IS_DG1_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
> > > -		wa_write_or(wal,
> > > -			    GEN11_SLICE_UNIT_LEVEL_CLKGATE,
> > > -			    L3_CLKGATE_DIS | L3_CR2X_CLKGATE_DIS);
> > > -
> > >  	/* Wa_1409420604:dg1 */
> > >  	if (IS_DG1(i915))
> > >  		wa_mcr_write_or(wal,
> > > @@ -2103,20 +2097,6 @@ static void tgl_whitelist_build(struct intel_engine_cs *engine)
> > >  	}
> > >  }
> > >  
> > > -static void dg1_whitelist_build(struct intel_engine_cs *engine)
> > > -{
> > > -	struct i915_wa_list *w = &engine->whitelist;
> > > -
> > > -	tgl_whitelist_build(engine);
> > > -
> > > -	/* GEN:BUG:1409280441:dg1 */
> > > -	if (IS_DG1_GRAPHICS_STEP(engine->i915, STEP_A0, STEP_B0) &&
> > > -	    (engine->class == RENDER_CLASS ||
> > > -	     engine->class == COPY_ENGINE_CLASS))
> > > -		whitelist_reg_ext(w, RING_ID(engine->mmio_base),
> > > -				  RING_FORCE_TO_NONPRIV_ACCESS_RD);
> > > -}
> > > -
> > >  static void xehpsdv_whitelist_build(struct intel_engine_cs *engine)
> > >  {
> > >  	allow_read_ctx_timestamp(engine);
> > > @@ -2196,8 +2176,6 @@ void intel_engine_init_whitelist(struct intel_engine_cs *engine)
> > >  		dg2_whitelist_build(engine);
> > >  	else if (IS_XEHPSDV(i915))
> > >  		xehpsdv_whitelist_build(engine);
> > > -	else if (IS_DG1(i915))
> > > -		dg1_whitelist_build(engine);
> > >  	else if (GRAPHICS_VER(i915) == 12)
> > >  		tgl_whitelist_build(engine);
> > >  	else if (GRAPHICS_VER(i915) == 11)
> > > @@ -2410,16 +2388,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
> > >  			   true);
> > >  	}
> > >  
> > > -	if (IS_DG1_GRAPHICS_STEP(i915, STEP_A0, STEP_B0)) {
> > > -		/*
> > > -		 * Wa_1607138336
> > > -		 * Wa_1607063988
> > > -		 */
> > > -		wa_write_or(wal,
> > > -			    GEN9_CTX_PREEMPT_REG,
> > > -			    GEN12_DISABLE_POSH_BUSY_FF_DOP_CG);
> > > -	}
> > > -
> > >  	if (IS_ALDERLAKE_P(i915) || IS_ALDERLAKE_S(i915) || IS_DG1(i915) ||
> > >  	    IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {
> > >  		/* Wa_1606931601:tgl,rkl,dg1,adl-s,adl-p */
> > > @@ -2449,30 +2417,22 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
> > >  	}
> > >  
> > >  	if (IS_ALDERLAKE_P(i915) || IS_ALDERLAKE_S(i915) ||
> > > -	    IS_DG1_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
> > >  	    IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {
> > > -		/* Wa_1409804808:tgl,rkl,dg1[a0],adl-s,adl-p */
> > > +		/* Wa_1409804808 */
> > >  		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN2,
> > >  				 GEN12_PUSH_CONST_DEREF_HOLD_DIS);
> > >  
> > > -		/*
> > > -		 * Wa_1409085225:tgl
> > > -		 * Wa_14010229206:tgl,rkl,dg1[a0],adl-s,adl-p
> > > -		 */
> > > +		/* Wa_14010229206 */
> > >  		wa_mcr_masked_en(wal, GEN9_ROW_CHICKEN4, GEN12_DISABLE_TDL_PUSH);
> > >  	}
> > >  
> > > -	if (IS_DG1_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
> > > -	    IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915) || IS_ALDERLAKE_P(i915)) {
> > > +	if (IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915) || IS_ALDERLAKE_P(i915)) {
> > >  		/*
> > > -		 * Wa_1607030317:tgl
> > > -		 * Wa_1607186500:tgl
> > > -		 * Wa_1607297627:tgl,rkl,dg1[a0],adlp
> > > +		 * Wa_1607297627
> > >  		 *
> > >  		 * On TGL and RKL there are multiple entries for this WA in the
> > >  		 * BSpec; some indicate this is an A0-only WA, others indicate
> > >  		 * it applies to all steppings so we trust the "all steppings."
> > > -		 * For DG1 this only applies to A0.
> > >  		 */
> > >  		wa_masked_en(wal,
> > >  			     RING_PSMI_CTL(RENDER_RING_BASE),
> > > diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> > > index 879ab4ed42af..397a2159fe12 100644
> > > --- a/drivers/gpu/drm/i915/i915_driver.c
> > > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > > @@ -168,6 +168,7 @@ static void intel_detect_preproduction_hw(struct drm_i915_private *dev_priv)
> > >  	pre |= IS_GEMINILAKE(dev_priv) && INTEL_REVID(dev_priv) < 0x3;
> > >  	pre |= IS_ICELAKE(dev_priv) && INTEL_REVID(dev_priv) < 0x7;
> > >  	pre |= IS_TIGERLAKE(dev_priv) && INTEL_REVID(dev_priv) < 0x1;
> > > +	pre |= IS_DG1(dev_priv) && INTEL_REVID(dev_priv) < 0x1;
> > >  
> > >  	if (pre) {
> > >  		drm_err(&dev_priv->drm, "This is a pre-production stepping. "
> > > diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> > > index 62cc0f76c583..57b84dbca084 100644
> > > --- a/drivers/gpu/drm/i915/i915_drv.h
> > > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > > @@ -658,8 +658,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
> > >  
> > >  #define IS_DG1_GRAPHICS_STEP(p, since, until) \
> > >  	(IS_DG1(p) && IS_GRAPHICS_STEP(p, since, until))
> > > -#define IS_DG1_DISPLAY_STEP(p, since, until) \
> > > -	(IS_DG1(p) && IS_DISPLAY_STEP(p, since, until))
> > >  
> > >  #define IS_ADLS_DISPLAY_STEP(__i915, since, until) \
> > >  	(IS_ALDERLAKE_S(__i915) && \
> > > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> > > index c6676f1a9c6f..e0364c4141b8 100644
> > > --- a/drivers/gpu/drm/i915/intel_pm.c
> > > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > > @@ -4353,15 +4353,6 @@ static void adlp_init_clock_gating(struct drm_i915_private *dev_priv)
> > >  	intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1, DDI_CLOCK_REG_ACCESS, 0);
> > >  }
> > >  
> > > -static void dg1_init_clock_gating(struct drm_i915_private *dev_priv)
> > > -{
> > > -	gen12lp_init_clock_gating(dev_priv);
> > > -
> > > -	/* Wa_1409836686:dg1[a0] */
> > > -	if (IS_DG1_GRAPHICS_STEP(dev_priv, STEP_A0, STEP_B0))
> > > -		intel_uncore_rmw(&dev_priv->uncore, GEN9_CLKGATE_DIS_3, 0, DPT_GATING_DIS);
> > > -}
> > > -
> > >  static void xehpsdv_init_clock_gating(struct drm_i915_private *dev_priv)
> > >  {
> > >  	/* Wa_22010146351:xehpsdv */
> > > @@ -4781,7 +4772,6 @@ CG_FUNCS(pvc);
> > >  CG_FUNCS(dg2);
> > >  CG_FUNCS(xehpsdv);
> > >  CG_FUNCS(adlp);
> > > -CG_FUNCS(dg1);
> > >  CG_FUNCS(gen12lp);
> > >  CG_FUNCS(icl);
> > >  CG_FUNCS(cfl);
> > > @@ -4824,8 +4814,6 @@ void intel_init_clock_gating_hooks(struct drm_i915_private *dev_priv)
> > >  		dev_priv->clock_gating_funcs = &xehpsdv_clock_gating_funcs;
> > >  	else if (IS_ALDERLAKE_P(dev_priv))
> > >  		dev_priv->clock_gating_funcs = &adlp_clock_gating_funcs;
> > > -	else if (IS_DG1(dev_priv))
> > > -		dev_priv->clock_gating_funcs = &dg1_clock_gating_funcs;
> > 
> > This will create warnings:
> > 
> > MISSING_CASE down below...
> 
> It shouldn't make it down that far since:
> 
> > >  	else if (GRAPHICS_VER(dev_priv) == 12)
> 
> will now match for DG1.

doh! indeed what we want...

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


> 
> 
> Matt
> 
> > >  		dev_priv->clock_gating_funcs = &gen12lp_clock_gating_funcs;
> > >  	else if (GRAPHICS_VER(dev_priv) == 11)
> > > -- 
> > > 2.39.1
> > > 
> 
> -- 
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
