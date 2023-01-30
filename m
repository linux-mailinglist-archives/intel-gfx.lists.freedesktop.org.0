Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E22B6817B3
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jan 2023 18:34:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDEE210E012;
	Mon, 30 Jan 2023 17:34:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E1B710E012
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Jan 2023 17:34:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675100071; x=1706636071;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=lV7P7LJa92XQ4g20Jr0NhNSWP7pmnhRVrurCT+GDHvc=;
 b=BWFakFjheQRIJD/i4NzZV6/BVUhQ7Bti8R/Dlipl+/aDk3e2j5e5uiAM
 51oL1WtlfR18ScEWVmdSK+dnf72crSJhMRYPwGMg2MIY8k+zigKe16A2j
 5AcMyueeVeQ2DaMOxrNZRIS3eoHbNNXBETJyOqtEJLvDkAhR7Zb7gZw/H
 LGot7ToV15SwqvvvtmRiKggFki1IXrX31yulQSvCfMxFVzzRCSI3XWQeq
 Rqxs8uOnhSiF/CcD7jxSS1R3EQUzBhppuxXV9N53NWW5phSEGJ8e0Di5E
 dUkeXJji2/CYTltWj56kGfu8eimE5aDmPrHvHu94Xxex/MJ6/amjWigP1 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="325317454"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; d="scan'208";a="325317454"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 09:34:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="732771853"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; d="scan'208";a="732771853"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga004.fm.intel.com with ESMTP; 30 Jan 2023 09:34:29 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 30 Jan 2023 09:34:28 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 30 Jan 2023 09:34:28 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 30 Jan 2023 09:34:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YURoaUHhanqQxRbNLShmZe/All1I9cateJ34Owh4DK0B1rNz4JPvAE8Ttis9O0mFqd5Y6M3nhuxBe6MX+Dzcb7W6n5OGlzXf8UVVWfedXRKhFtfqqTVtJvmbJjyAZavOd8EZCai1QD8ErSVSwCUGXieVplh6lKXPWZk0sOusAp5sYo8m4Iy1pv2T6hAhaSrjmn+tf2h20J1013AoCSF/5gJkt8CVHz+wbewz8elSF8jsR//+LyO2gwj3Qi4qj5tb8DtR4UaAZ8ZA41WcznAXwaDJIjJsDzImc6e019MgSH4c9RbkZ3FnpGPMDrwjhdR5pq+kw52Yc0gtQaI9kBbINg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZnJdavBu9BUijTU1rESnabiwX8UwxpAVQm1T+vNeeYo=;
 b=Af6ycTXZZyDMJAQpfZv2Ay8jhK4Sq/sFtpsIO1nmvc59+bfcb9Xjesc8zC95yC43SM+41OQDoHKS95TN2AiJZIx/msgsEPFtA0CZYRdnJmEg+3msGHN9+d6BG6mQSu4Rj4ofJu5oD9Tkz5KvSlVPZipPfS3W0RcqXafC/+tfwpQqp/PHt7F3JytIoUMPHvmT6I+JQyLEOO9+hnlVgNcBaQOLnvdwPQ08p/V21VxGfKYts0zRZ9zQa7EU/TXKSuuioaBwMbpllJlOAu58mEd/XqUnSYKWqZclYHGxLTJRsHxbvXs0czRS2Gl8Cu8qUMBqULNgl40c/IeiC6ojfUFNAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 PH8PR11MB8108.namprd11.prod.outlook.com (2603:10b6:510:257::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6043.22; Mon, 30 Jan 2023 17:34:26 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::68d0:f8e0:eaf3:982e]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::68d0:f8e0:eaf3:982e%5]) with mapi id 15.20.6043.036; Mon, 30 Jan 2023
 17:34:26 +0000
Date: Mon, 30 Jan 2023 09:34:22 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <Y9f/nvKPP2EFPDnA@mdroper-desk1.amr.corp.intel.com>
References: <20230127224313.4042331-1-matthew.d.roper@intel.com>
 <20230127224313.4042331-3-matthew.d.roper@intel.com>
 <Y9f8NHy26q1Ga7SO@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <Y9f8NHy26q1Ga7SO@intel.com>
X-ClientProxiedBy: SJ0PR13CA0020.namprd13.prod.outlook.com
 (2603:10b6:a03:2c0::25) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|PH8PR11MB8108:EE_
X-MS-Office365-Filtering-Correlation-Id: f3812f12-c565-435d-3940-08db02e83b5e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: A4Og+WfwolbxizHKVSxcCJnSnDIQXRwxZCPMxzph0FcPcW2eFCWlDP5PHUfRM4l4K2lqv9MsOL+EL/1OFuSPtr+Y6hz5s9p5PNUhS1iE2ANcPZLK18In3dF3ZgZoxLDjXg6cl9MYtYrE8FZlVKWKnEJE9s7cRYeq4FugLhSp3T04WCXGAOo0nuB0P6zYDz+8eJon6WN95PLZBUnXW/J6igz5QOUfKllKtxuFS9rjR4C9vpbli0h8Cncyei0cR1GabznwpzQONRiMEjW52Rg0wX5CIqUHvi8WkKpN2yf+I+IIuE1i6/nWjXOsfVbQcJbnTXRn8CXxi7qcWuzYLNvY5yaVmP3GdnOdpm+EvDQxBe8qFdPd0PlVFIRBBf13QylI7ecpGomNhvFWyYeLqIEK3tolw7kCm0zobB8294z/WDNNVyzi+niKUmRucxTjILed5CzJ89xx/0JZQwiajHXUkNNDEN5bWOsEOez5m1Tbk7CAZ6R4USB4yju0UnM4IrBK5MbSFlJ/xpktSQqMg8H70QwU1SkNQ9PwjPeC+l2WFveBtHG2cINjRUuDkJVh3Ro0kFJwvbe755UmRAej/7QyMoDa0lyIEwQuvox7kHA6Rn4wK96i0CH9hqY2LT9mSeaXsM9I04bkSE+el05OzZW7tg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(136003)(396003)(346002)(366004)(376002)(451199018)(6636002)(316002)(83380400001)(38100700002)(82960400001)(186003)(6666004)(26005)(6512007)(478600001)(6486002)(86362001)(6506007)(2906002)(66556008)(66946007)(66476007)(4326008)(41300700001)(5660300002)(8676002)(6862004)(8936002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?95bNlD31iORWN+SmSGtA7Fds5W/ywsYYZ7xx+9t6Uqr6qd8C2NIVf0nGeYSj?=
 =?us-ascii?Q?f4MTXxbbhHACqUF8kx2OrscSSGuWMu0Xw5hG1LH1KVXTWQ+tXBJZiPz0Z9q4?=
 =?us-ascii?Q?aha/HUYi5PAfQCDa9WMg8GTPMe9r5DqfzPHHWP3oYHKD2QY4A3WDUrMqr+ft?=
 =?us-ascii?Q?sy4zMl9lD4LOd6t6SlnV9yYkMiehAEVMdaAprtE3WuKcmw2Gr6j9VGon+u8W?=
 =?us-ascii?Q?quvgN3zftaFljCgx6CtuM+SvyTgonESKR23HJ07I8Zce4GwC/2QnbOE815KR?=
 =?us-ascii?Q?AQnfB1mbp6N21eEDsISH6WlGPKFL967p8iuymfTwxZCdFPUhcP2zq7l3x+2S?=
 =?us-ascii?Q?kUaIUvws/IOPbx7Ns3ZsOj0zuw7TZEsvamoTFdstoanRgbdMjdky/CUIP+tS?=
 =?us-ascii?Q?H2zFJ/E7+lNYU1/E+g+FPs6c/N3vvx8iXdXKg3yGAFfksFo5YlYII9IOON+w?=
 =?us-ascii?Q?YimkS6idnRB5g+ieS0pJ5P4VWvhMi2YBh3kPXSs3d63GGgOR8O+lODDbwZi5?=
 =?us-ascii?Q?zRxHG2hZMhUGAwkID1y0cKpAPpTxkV34n0ADkxfwcECui/I6FWCKmO5SVtk0?=
 =?us-ascii?Q?T9lqkfDMyh6bazFvIAl2RLdO+SLgV0TL+8b91xqSPW/pq1pDiJMyPKLYYQOg?=
 =?us-ascii?Q?bKCYRXX/FybB/4Y5vQ7bNg5LOHCS7WybOuWpe2qIRScAHuZ0NW/6FaodTmpT?=
 =?us-ascii?Q?RKa3FJCiDAuAMrkVQRvvdOHvlPyHqSSL5jq6emutEHNQZRc6ENe7bA+U298q?=
 =?us-ascii?Q?OzpCCV2zLxIbN95aZtZ8+FEahPAkA6vWKKkKxhIt5HdZmeuNS/ZeIKqJGB9R?=
 =?us-ascii?Q?ynL3eJg//2gbt4VETzo93QYP5Av1P/9Ie8dNXBqwXsg+x1d60SastiVdwwFB?=
 =?us-ascii?Q?zsnP51gO6SRFrDZruSpapyX+JMsupXvoVbNK20cxc5fzYtz3P3sDho+WXICI?=
 =?us-ascii?Q?VIRiwEjnkLS7JNPfjUsOTxs+TqCHOCWT6Z4fOk7eqf4SHuSQWLWQIzr+caLf?=
 =?us-ascii?Q?7iigbd3zGpC5mhabURmrTrRikUs+6y6pMX2KUAz1D3Ke6Ijjmf5GAu6HCzj3?=
 =?us-ascii?Q?TnMk9MfOqkeUDy2H1GFrp7Z+n6pi+FxzrneUfstrprXD21VhRat1zgWr9jvn?=
 =?us-ascii?Q?YvAl0ZvU1/eziLALdMUJm8SQThJNwZk2/ubeJrMzxgk2RskYlEucflt9T1OX?=
 =?us-ascii?Q?phLwuKvGCsyXEwYw1yO7o5/5Ajao31GuGtjxe9VclNZaXw3ovbjAIkD4b8oU?=
 =?us-ascii?Q?nAVZ26IOxlAHFsqLkZ2Aef3BCoW8Dr+6UhS5GgGmtqUkOBo+Q/CEZKCBKsSw?=
 =?us-ascii?Q?KJF8Vv909ZdNWCJUfBY/V1Hw2YKOre036NBgbjj0iamxQDBKosJAiZCoec3m?=
 =?us-ascii?Q?8u5C+idb0dJQdGwmuuEtNF+w/gn431AtUYb8YZgSdzCkAvUv/Tckhv0iIsOu?=
 =?us-ascii?Q?cFXnnVIYILhfmRmh1evyAci7E+NqtPVf6on2Rln5Ibylds83rjZPGcaoBAsf?=
 =?us-ascii?Q?3ZovphYarS+BxT4sUAI65vVgVPvSyYaOBGnrRLOCGa2KXt7pouz7WPbFOLiF?=
 =?us-ascii?Q?QD/8Vs1Ww/fKOVuH3mWzEmBfOeavjwppj813rcYHssp3gN5NTxAMHPMUJJOM?=
 =?us-ascii?Q?mQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f3812f12-c565-435d-3940-08db02e83b5e
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2023 17:34:25.7268 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SH3+Rv7L/IkW+Yx/0f4TWj80J1EvbIZDaMEL1cirAi0bEFQK/cMSEx99/i51ZFles9Fm7VuvAGi7mN6CKYCKsU3Gp3feW2CZ8qcn3HOmcRc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8108
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

On Mon, Jan 30, 2023 at 12:19:48PM -0500, Rodrigo Vivi wrote:
> On Fri, Jan 27, 2023 at 02:43:12PM -0800, Matt Roper wrote:
> > Several post-DG1 platforms have been brought up now, so we're well past
> > the point where we usually drop the workarounds that are only applicable
> > to internal/pre-production hardware.
> > 
> > Production DG1 hardware always has a B0 stepping for both display and
> > GT.
> > 
> > Bspec: 44463
> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > ---
> >  .../drm/i915/display/intel_display_power.c    |  1 -
> >  drivers/gpu/drm/i915/gt/intel_workarounds.c   | 48 ++-----------------
> >  drivers/gpu/drm/i915/i915_driver.c            |  1 +
> >  drivers/gpu/drm/i915/i915_drv.h               |  2 -
> >  drivers/gpu/drm/i915/intel_pm.c               | 12 -----
> >  5 files changed, 5 insertions(+), 59 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> > index 1dc31f0f5e0a..7222502a760c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > @@ -1580,7 +1580,6 @@ static void tgl_bw_buddy_init(struct drm_i915_private *dev_priv)
> >  		return;
> >  
> >  	if (IS_ALDERLAKE_S(dev_priv) ||
> > -	    IS_DG1_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
> >  	    IS_RKL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> >  		/* Wa_1409767108 */
> >  		table = wa_1409767108_buddy_page_masks;
> > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > index 82a8f372bde6..648fceba5bb6 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > @@ -1463,12 +1463,6 @@ dg1_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
> >  
> >  	gen12_gt_workarounds_init(gt, wal);
> >  
> > -	/* Wa_1607087056:dg1 */
> > -	if (IS_DG1_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
> > -		wa_write_or(wal,
> > -			    GEN11_SLICE_UNIT_LEVEL_CLKGATE,
> > -			    L3_CLKGATE_DIS | L3_CR2X_CLKGATE_DIS);
> > -
> >  	/* Wa_1409420604:dg1 */
> >  	if (IS_DG1(i915))
> >  		wa_mcr_write_or(wal,
> > @@ -2103,20 +2097,6 @@ static void tgl_whitelist_build(struct intel_engine_cs *engine)
> >  	}
> >  }
> >  
> > -static void dg1_whitelist_build(struct intel_engine_cs *engine)
> > -{
> > -	struct i915_wa_list *w = &engine->whitelist;
> > -
> > -	tgl_whitelist_build(engine);
> > -
> > -	/* GEN:BUG:1409280441:dg1 */
> > -	if (IS_DG1_GRAPHICS_STEP(engine->i915, STEP_A0, STEP_B0) &&
> > -	    (engine->class == RENDER_CLASS ||
> > -	     engine->class == COPY_ENGINE_CLASS))
> > -		whitelist_reg_ext(w, RING_ID(engine->mmio_base),
> > -				  RING_FORCE_TO_NONPRIV_ACCESS_RD);
> > -}
> > -
> >  static void xehpsdv_whitelist_build(struct intel_engine_cs *engine)
> >  {
> >  	allow_read_ctx_timestamp(engine);
> > @@ -2196,8 +2176,6 @@ void intel_engine_init_whitelist(struct intel_engine_cs *engine)
> >  		dg2_whitelist_build(engine);
> >  	else if (IS_XEHPSDV(i915))
> >  		xehpsdv_whitelist_build(engine);
> > -	else if (IS_DG1(i915))
> > -		dg1_whitelist_build(engine);
> >  	else if (GRAPHICS_VER(i915) == 12)
> >  		tgl_whitelist_build(engine);
> >  	else if (GRAPHICS_VER(i915) == 11)
> > @@ -2410,16 +2388,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
> >  			   true);
> >  	}
> >  
> > -	if (IS_DG1_GRAPHICS_STEP(i915, STEP_A0, STEP_B0)) {
> > -		/*
> > -		 * Wa_1607138336
> > -		 * Wa_1607063988
> > -		 */
> > -		wa_write_or(wal,
> > -			    GEN9_CTX_PREEMPT_REG,
> > -			    GEN12_DISABLE_POSH_BUSY_FF_DOP_CG);
> > -	}
> > -
> >  	if (IS_ALDERLAKE_P(i915) || IS_ALDERLAKE_S(i915) || IS_DG1(i915) ||
> >  	    IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {
> >  		/* Wa_1606931601:tgl,rkl,dg1,adl-s,adl-p */
> > @@ -2449,30 +2417,22 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
> >  	}
> >  
> >  	if (IS_ALDERLAKE_P(i915) || IS_ALDERLAKE_S(i915) ||
> > -	    IS_DG1_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
> >  	    IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {
> > -		/* Wa_1409804808:tgl,rkl,dg1[a0],adl-s,adl-p */
> > +		/* Wa_1409804808 */
> >  		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN2,
> >  				 GEN12_PUSH_CONST_DEREF_HOLD_DIS);
> >  
> > -		/*
> > -		 * Wa_1409085225:tgl
> > -		 * Wa_14010229206:tgl,rkl,dg1[a0],adl-s,adl-p
> > -		 */
> > +		/* Wa_14010229206 */
> >  		wa_mcr_masked_en(wal, GEN9_ROW_CHICKEN4, GEN12_DISABLE_TDL_PUSH);
> >  	}
> >  
> > -	if (IS_DG1_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
> > -	    IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915) || IS_ALDERLAKE_P(i915)) {
> > +	if (IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915) || IS_ALDERLAKE_P(i915)) {
> >  		/*
> > -		 * Wa_1607030317:tgl
> > -		 * Wa_1607186500:tgl
> > -		 * Wa_1607297627:tgl,rkl,dg1[a0],adlp
> > +		 * Wa_1607297627
> >  		 *
> >  		 * On TGL and RKL there are multiple entries for this WA in the
> >  		 * BSpec; some indicate this is an A0-only WA, others indicate
> >  		 * it applies to all steppings so we trust the "all steppings."
> > -		 * For DG1 this only applies to A0.
> >  		 */
> >  		wa_masked_en(wal,
> >  			     RING_PSMI_CTL(RENDER_RING_BASE),
> > diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> > index 879ab4ed42af..397a2159fe12 100644
> > --- a/drivers/gpu/drm/i915/i915_driver.c
> > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > @@ -168,6 +168,7 @@ static void intel_detect_preproduction_hw(struct drm_i915_private *dev_priv)
> >  	pre |= IS_GEMINILAKE(dev_priv) && INTEL_REVID(dev_priv) < 0x3;
> >  	pre |= IS_ICELAKE(dev_priv) && INTEL_REVID(dev_priv) < 0x7;
> >  	pre |= IS_TIGERLAKE(dev_priv) && INTEL_REVID(dev_priv) < 0x1;
> > +	pre |= IS_DG1(dev_priv) && INTEL_REVID(dev_priv) < 0x1;
> >  
> >  	if (pre) {
> >  		drm_err(&dev_priv->drm, "This is a pre-production stepping. "
> > diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> > index 62cc0f76c583..57b84dbca084 100644
> > --- a/drivers/gpu/drm/i915/i915_drv.h
> > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > @@ -658,8 +658,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
> >  
> >  #define IS_DG1_GRAPHICS_STEP(p, since, until) \
> >  	(IS_DG1(p) && IS_GRAPHICS_STEP(p, since, until))
> > -#define IS_DG1_DISPLAY_STEP(p, since, until) \
> > -	(IS_DG1(p) && IS_DISPLAY_STEP(p, since, until))
> >  
> >  #define IS_ADLS_DISPLAY_STEP(__i915, since, until) \
> >  	(IS_ALDERLAKE_S(__i915) && \
> > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> > index c6676f1a9c6f..e0364c4141b8 100644
> > --- a/drivers/gpu/drm/i915/intel_pm.c
> > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > @@ -4353,15 +4353,6 @@ static void adlp_init_clock_gating(struct drm_i915_private *dev_priv)
> >  	intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1, DDI_CLOCK_REG_ACCESS, 0);
> >  }
> >  
> > -static void dg1_init_clock_gating(struct drm_i915_private *dev_priv)
> > -{
> > -	gen12lp_init_clock_gating(dev_priv);
> > -
> > -	/* Wa_1409836686:dg1[a0] */
> > -	if (IS_DG1_GRAPHICS_STEP(dev_priv, STEP_A0, STEP_B0))
> > -		intel_uncore_rmw(&dev_priv->uncore, GEN9_CLKGATE_DIS_3, 0, DPT_GATING_DIS);
> > -}
> > -
> >  static void xehpsdv_init_clock_gating(struct drm_i915_private *dev_priv)
> >  {
> >  	/* Wa_22010146351:xehpsdv */
> > @@ -4781,7 +4772,6 @@ CG_FUNCS(pvc);
> >  CG_FUNCS(dg2);
> >  CG_FUNCS(xehpsdv);
> >  CG_FUNCS(adlp);
> > -CG_FUNCS(dg1);
> >  CG_FUNCS(gen12lp);
> >  CG_FUNCS(icl);
> >  CG_FUNCS(cfl);
> > @@ -4824,8 +4814,6 @@ void intel_init_clock_gating_hooks(struct drm_i915_private *dev_priv)
> >  		dev_priv->clock_gating_funcs = &xehpsdv_clock_gating_funcs;
> >  	else if (IS_ALDERLAKE_P(dev_priv))
> >  		dev_priv->clock_gating_funcs = &adlp_clock_gating_funcs;
> > -	else if (IS_DG1(dev_priv))
> > -		dev_priv->clock_gating_funcs = &dg1_clock_gating_funcs;
> 
> This will create warnings:
> 
> MISSING_CASE down below...

It shouldn't make it down that far since:

> >  	else if (GRAPHICS_VER(dev_priv) == 12)

will now match for DG1.


Matt

> >  		dev_priv->clock_gating_funcs = &gen12lp_clock_gating_funcs;
> >  	else if (GRAPHICS_VER(dev_priv) == 11)
> > -- 
> > 2.39.1
> > 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
