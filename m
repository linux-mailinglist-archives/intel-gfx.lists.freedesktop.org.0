Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7FA97FE11E
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Nov 2023 21:34:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6339110E678;
	Wed, 29 Nov 2023 20:34:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7918A10E678;
 Wed, 29 Nov 2023 20:34:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701290089; x=1732826089;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Bv8c26mbsBVYtpnluuL8MqBJ92RccwtX8YVjgjf2weI=;
 b=l5CKt5HtZn/Nl6K3w1HtQEv5l6z15oSeHjkzQYyPmIg+emPkO82s7iHP
 zXpm4lb/8IBOq4RRYk8dcih1myB0r5OxAhMWgP0aqSwl3J8csRpfzl5t7
 WSpIKaZqfTm2KCS5JN97SnY85urFk/oo0GOofbDlDdsL+HRlXreYO6mng
 fclto9JpYYPkPWqJlg9nOudT6dfAkmqHoaxrFXvu86EOcwAl9K833pN01
 R+0OFIw3zM+dnNEsFvtT1P7lJ06iQCu9hSLMi6Bc6t4HeZ8oH9+gXEfhB
 G2spQQXRzUttNmKe7bBtvRSA67QmFF549Cz4ApaQQrmOISBHcfFA1+3Mg Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="459716241"
X-IronPort-AV: E=Sophos;i="6.04,237,1695711600"; d="scan'208";a="459716241"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2023 12:34:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="942453057"
X-IronPort-AV: E=Sophos;i="6.04,237,1695711600"; d="scan'208";a="942453057"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Nov 2023 12:34:49 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 29 Nov 2023 12:34:48 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 29 Nov 2023 12:34:48 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 29 Nov 2023 12:34:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Kz6si7SaRSWIsNYCzdWF2dz8f6YzMggjxiC9JrR4X2Uzo9zZgyO7VNYaCpQuGnvIReGlnfbqIRNr5BH0s4WJoT97QnQxncbms3UylRxpBgaHPL/TJwaaRw6rfXnn/BUj04vUioImtHGYFSjrEOfiAmU31kxb2xIqvzA3VBAYhLnSBSEZNPokE6/9OldT6D0jUmWOi348CjKJOx050EeVr8rWhvM1l0rMWvd++uhG9MgLINXeW8GjRCfSKuYyxO9lZEmV1v+J1fYUahgXM8F4FhxyMuAwLWgIoBTXwijl7qOVIuBa3cZ0Kokx8YO1FaFKzjTnBFekTZEfuDVwOlXImg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zZ8HgdlMWx7l0vpHAYU5yhAzg6Ut1jdfu5rk7gY1OeU=;
 b=ed26Vxd2RFhXCfZL75qDeOBDR3oZHsxaAaxEupxuVBVhMIz/zhoKrAnvFj0nnxfGO53WkR3ASjpIyq9MHyEKaoc8xGf0luJQv31DTEB4QrDgXjOYn5xD7RGD2T79JULdzWAjZCcGRhcac16QW70WnKMK1B+bzNndkhPPqkIML8ZIETdB3psmat92hE3rv3nzHlDiCWKXdA9493rdGVCH4L5I0EkYO8VOdqkE/awNrr69SejRdeBEL5lI2p8pmia4k5jx3IU4pMntuFuvm3vZQCQQsRRoFkoW4zuOh09u0Q7378lrD5zkaOrnwBgo7rTvwO3y3CUqLzQ1bXsDZkaF5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by BN9PR11MB5355.namprd11.prod.outlook.com (2603:10b6:408:11c::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.23; Wed, 29 Nov
 2023 20:34:45 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::ada2:f954:a3a5:6179]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::ada2:f954:a3a5:6179%5]) with mapi id 15.20.7046.023; Wed, 29 Nov 2023
 20:34:45 +0000
Date: Wed, 29 Nov 2023 15:34:41 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Coelho, Luciano" <luciano.coelho@intel.com>
Message-ID: <ZWegYaFb1yKYqNoy@intel.com>
References: <20231129091728.1272876-1-luciano.coelho@intel.com>
 <ZWd8aYses2mJmBqD@intel.com>
 <54d7d0a3c53c61191aa811784c9671688722aeba.camel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <54d7d0a3c53c61191aa811784c9671688722aeba.camel@intel.com>
X-ClientProxiedBy: BYAPR02CA0047.namprd02.prod.outlook.com
 (2603:10b6:a03:54::24) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|BN9PR11MB5355:EE_
X-MS-Office365-Filtering-Correlation-Id: 9414d500-ad77-4d88-e236-08dbf11a9fd0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7/tib727R5CbzmmL4jv4g76LMNJz/ReQHB1gl7/rtia+6+bHo6gZ1d+XH2zXliFx/IpTOSrQiTZOC76XUhDUWp6mChFRbAHeyRlAgsvNw2f0PXR64OZqk4fPhHtpbGCa7qdS1wsA4hvvnzXsCUt+aamt9SBtgEwijiXHrm5RE45Iu+Ov8Esr2pXnHjD7e9XWv1LQQihhP2eHi0josgg8GfDd60G8cbIkSUl5z4WTdF3y2UxzPTmlgFUjOclteyBsHSEyeTh5jxAb7Vlqh36TGDPuO29NmfOiQMNGUB2QimV1tTxfnWeaJAwmgiwmEGEx4pqpWNh5vkT5wv+HLytU1j2BpCDQmEvmmykY5//51hfNa3YtwAZbKbc15JFf8/hDZf5alaNP0JQjMV3Ti+5m4lhUye91dVYfUcB2iLfxa8Xd0mTSVrPE2J8ZI0o+Rd+BU9tZ+hi4ni8CyWWGir5fFWD/EvIE94N6ez/gUtjfse3a9+zv/J+ShvIF6XdNu2cEpPTZYrA7PpCqAxZuknSvADVmo8OahN8otbPtxEu6qwSNi9rbq4SzbMOqDMXzE83rnw8xCgjbG4P4nIAASbH18+ywb+zUdZlxiOqHtj/iLLZBU1Bq1ZpLBpqjnYFwSEga
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(396003)(136003)(346002)(39860400002)(376002)(230922051799003)(1800799012)(186009)(451199024)(64100799003)(202311291699003)(478600001)(2616005)(26005)(6486002)(6666004)(6506007)(6512007)(82960400001)(38100700002)(86362001)(36756003)(44832011)(5660300002)(41300700001)(54906003)(66946007)(66556008)(66476007)(6636002)(2906002)(4001150100001)(83380400001)(6862004)(8936002)(8676002)(4326008)(316002)(450100002)(37006003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?agk5d5HiQrp1qihQhNlJS8qtf8kuMX8JmhFGTiuc+seF37YTGQQkc9qtsEy9?=
 =?us-ascii?Q?cETyWSEG2Bgt3BX+1ezR21aQpAkhnWXll+WDLcnEbimeqUJLYUVxrOPX3JZL?=
 =?us-ascii?Q?C2Iqn+gtec73I29DQYBcyWvJ3U8fWqre4VsRCU2aHEEOcbHEVI4Ja/FgsEF5?=
 =?us-ascii?Q?Q2pXsIQsWB9itMXheRvzc2pWNig8vMPjKvvQ0trWEP2HWWe8roGagqTxwZ9c?=
 =?us-ascii?Q?0u48QZPB0oSMcwpx1r62HOT3kJWb7yoTDDw/wXfmI76jig7fpcprnRAdAKrP?=
 =?us-ascii?Q?NJnARpOqO9GZ024+d2E++rtAI026sAXW67JHJ6ZGt35Vghmq4Tm5b9PB7oXN?=
 =?us-ascii?Q?jixkDgFYApZ3ihD+GhWB2u9mvO6qioZI5legfWCojeeFBeaY0+GnAu1w6I/9?=
 =?us-ascii?Q?O0+LFPcX2oL1s7Frp+r3CiZ+be53Q1brKqCKhgKuIFL11H2TNZHsXGo+6jwv?=
 =?us-ascii?Q?1u2/6Ch1wAa/3h1tzOA7satBe55wfoiPqs5GC2OKwPuKf2IG39hmKQ1gyQNQ?=
 =?us-ascii?Q?bMdLlJci25zVDX5mG3Ygd6Jt1+8KWSs9DmqLj+b01bX67Y9hTzW2PgbyczIP?=
 =?us-ascii?Q?WOKOPd+EvFKqlhJmyMNhB9YcTtwz3F2JRF7IpzHgjXc/m00TeNsBbY40zoGQ?=
 =?us-ascii?Q?mKTzSeHCvtSiNx/c1UInAdI5f2vDSBFsmwrDqUJwoyddUJ06NCqOUpkletgL?=
 =?us-ascii?Q?beq+DCh4gjT8Yq5x8HfXdvslWO/KYLp7wcDcgkwoIuddWB2Zo+V5IblDnWE6?=
 =?us-ascii?Q?qW5gjG8QJtxAo8TnKDjy28Z5CBfuDrHNR0WJd8BDqujcnERZtZ4S/Eo9ibkE?=
 =?us-ascii?Q?0nUXHReTJ8gnckQ+bq4KpIZDP38caW0RS9HRCD7omaQjLICfJ230qJ6CwNJR?=
 =?us-ascii?Q?H5Nyy9ORVszfFlhRPLYMm3yS5gMsqLaW3koPMNYeGN7FEvbAKFyKRY/7RmY5?=
 =?us-ascii?Q?mCn2OfLvcpKrRcaYH/0Shizy6Mn76I63BZpeKiX8UCz96VjAdsKEKVFfTDFv?=
 =?us-ascii?Q?NgMgbzPzymDFEjFinnk/j/g/06b6p6q2PuA6jH28L5RMoMgraS8PRj6DxaC4?=
 =?us-ascii?Q?v+3R+OOfT1orTAsKOlQ+tQBR8hfHdL2LHP9ZiFDAyTJnvemVUBw2ztAyeezW?=
 =?us-ascii?Q?I+kzhnH/p7c1H8GaXmv+mcWCWajc9O8/rD9Ua0iek0hNAxlCYyRYaS2tLkmV?=
 =?us-ascii?Q?9JUur1PTiS610H8a4+IlAqxKCicYz6rvIh3dEnL+iLj8cIcLpT7TX4wJgAhx?=
 =?us-ascii?Q?uogbPssqWbTK/5L3Ca5OLO65l7etoQa/Rr7uT1jt/pvvhAuM10ZzB6bfjIW/?=
 =?us-ascii?Q?tyLefPajNzzHsiAm2gFpWsTTPRYHfknXsFbfBDg+8vR3KqS5W9IcBjax6kQd?=
 =?us-ascii?Q?57HPUgva1d3DYOwalS0qjVgc63DSEx07twRmj6cT20NOfE2tkR0aBp3NKuMJ?=
 =?us-ascii?Q?WJOCysWvdBQGmII2KhQyi6ElS67PrwWdXrwr+DsbGNcTcYi63pJPprsKFx/M?=
 =?us-ascii?Q?sRmo8qwAIf4orEcVJ+nCK7OkwzdWUsMECUy7jMw+VBIZ6Frj3vSI33LeU7y8?=
 =?us-ascii?Q?7Zvw13DsjJVZR5dPoo+BmFhEpQK2X094frFFTM+Wj41fN0Xh2+6gp/oxOVjQ?=
 =?us-ascii?Q?Aw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9414d500-ad77-4d88-e236-08dbf11a9fd0
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Nov 2023 20:34:45.7817 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uS6fBzbDwtNYlv2x8v1UmwOsO2PqZ+IoY5qQr3oyHpPP329cz4c5RR31fV2v0zN9J/x1xZzisCaDTmg0Hemj0A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5355
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH v4] drm/i915: handle uncore
 spinlock when not available
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 29, 2023 at 03:24:33PM -0500, Coelho, Luciano wrote:
> On Wed, 2023-11-29 at 13:01 -0500, Rodrigo Vivi wrote:
> > On Wed, Nov 29, 2023 at 11:17:28AM +0200, Luca Coelho wrote:
> > > The uncore code may not always be available (e.g. when we build the
> > > display code with Xe), so we can't always rely on having the uncore's
> > > spinlock.
> > > 
> > > To handle this, split the spin_lock/unlock_irqsave/restore() into
> > > spin_lock/unlock() followed by a call to local_irq_save/restore() and
> > > create wrapper functions for locking and unlocking the uncore's
> > > spinlock.  In these functions, we have a condition check and only
> > > actually try to lock/unlock the spinlock when I915 is defined, and
> > > thus uncore is available.
> > > 
> > > This keeps the ifdefs contained in these new functions and all such
> > > logic inside the display code.
> > > 
> > > Cc: Tvrtko Ursulin <tvrto.ursulin@intel.com>
> > > Cc: Jani Nikula <jani.nikula@intel.com>
> > > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > > Cc: Ville Syrj?l? <ville.syrjala@linux.intel.com>
> > > Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> > > ---
> > > 
> > > In v2:
> > > 
> > >    * Renamed uncore_spin_*() to intel_spin_*()
> > >    * Corrected the order: save, lock, unlock, restore
> > > 
> > > In v3:
> > > 
> > >    * Undid the change to pass drm_i915_private instead of the lock
> > >      itself, since we would have to include i915_drv.h and that pulls
> > >      in a truckload of other includes.
> > > 
> > > In v4:
> > > 
> > >    * After a brief attempt to replace this with a different patch,
> > >      we're back to this one;
> > >    * Pass drm_i195_private again, and move the functions to
> > >      intel_vblank.c, so we don't need to include i915_drv.h in a
> > >      header file and it's already included in intel_vblank.c;
> > > 
> > >  drivers/gpu/drm/i915/display/intel_display.h |  1 +
> > >  drivers/gpu/drm/i915/display/intel_vblank.c  | 45 +++++++++++++++-----
> > >  2 files changed, 36 insertions(+), 10 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> > > index 8548f49e3972..5ff299bc4b87 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.h
> > > @@ -29,6 +29,7 @@
> > >  
> > >  #include "i915_reg_defs.h"
> > >  #include "intel_display_limits.h"
> > > +#include "i915_drv.h"
> > 
> > please move this include to intel_vblank.c
> 
> Oops, this is a leftover of some tests I was making to see just how
> much worse things would get by adding this here.
> 
> Actually, why don't we move the drm_i915_private structure (and maybe
> others?) to a lighter header file than i915_drv.h? IMHO it's really
> annoying to have the forward declarations for it in many places just
> because we don't want to include the actual header.  When I want to
> find its global definition, cscope always returns tens of results
> because of the forward declarations... This is obviously orthogonal to
> the current patch.

yeah, I know. It is really inconvenient sometimes. I got used to run
cscope and then search for "struct something {" to find the right place.

But this inconvenience is actually smaller when compared to the compilation
time whenever a header gets modified and included by other headers. If I
remember correctly Jani did the initial assessment of compilation times
and started to move headers including out of other headers. He might
have more details/data on his findings.

> 
> 
> > >  enum drm_scaling_filter;
> > >  struct dpll;
> > > diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
> > > index 2cec2abf9746..d9625db82681 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> > > @@ -265,6 +265,26 @@ int intel_crtc_scanline_to_hw(struct intel_crtc *crtc, int scanline)
> > >  	return (scanline + vtotal - crtc->scanline_offset) % vtotal;
> > >  }
> > >  
> > > +/*
> > > + * The uncore version of the spin lock functions is used to decide
> > > + * whether we need to lock the uncore lock or not.  This is only
> > > + * needed in i915, not in Xe.  Keep the decision-making centralized
> > > + * here.
> > 
> > maybe we could add brief mention that it is only needed because old hardware
> > that is not supported by Xe.
> 
> Good idea, I'll add it.
> 
> > 
> > > + */
> > > +static inline void intel_vblank_section_enter(struct drm_i915_private *i915)
> > 
> > let's avoid inline here.
> 
> Okay, I'll remove it.
> 
> 
> > > +{
> > > +#ifdef I915
> > > +	spin_lock(&i915->uncore.lock);
> > > +#endif
> > > +}
> > > +
> > > +static inline void intel_vblank_section_exit(struct drm_i915_private *i915)
> > 
> > and here
> 
> Okay.
> 
> 
> > With these changes:
> > 
> > Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> 
> Thanks for the review, Rodrigo!
> 
> --
> Cheers,
> Luca.
