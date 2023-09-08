Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AD187991AC
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Sep 2023 23:52:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7635410E155;
	Fri,  8 Sep 2023 21:52:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C23810E155
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Sep 2023 21:52:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694209962; x=1725745962;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=EC4BBOFttstj8xETRaSkHAKfEfLlxO8oTqyE5IqYz3I=;
 b=O8EQfDjHZZOzZ9rYajJylz7d2bigfCZxJ/8503Jb9W/sHBdz89uH5rsW
 W5yKfXcCjE/vLu+GkU4HKguyw/7gJe06wn5kfZ8fJqiXQWUpKSCMuNM0B
 ygsNnBr3XVh/4xVTjYfKtubOaTSoluvv51itodK7cZO6WJHRnId60zDrn
 4XZ7sv/kF51JgQdj2fYadT+skXiaXz1gQmT62kWaZecqtUyGH2wde70Rp
 LxsnYIm0spTBnvOD1NALeRbi2ZjLT44R1yG234yUObN0ETDV26nJF3pF6
 Aie3Nqsx39AXrlZbGXoUi9LfwPHHhEVLpgkK6fgCnZsOVSXIQ3RJV8mjn Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="464125210"
X-IronPort-AV: E=Sophos;i="6.02,238,1688454000"; d="scan'208";a="464125210"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 14:52:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="742653059"
X-IronPort-AV: E=Sophos;i="6.02,238,1688454000"; d="scan'208";a="742653059"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Sep 2023 14:52:40 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 8 Sep 2023 14:52:40 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 8 Sep 2023 14:52:40 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 8 Sep 2023 14:52:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ko2gLpQag6QUEHWMMG9J0hEHP2icNlOvtgNlP3utv8s09OoR0BRh2te+daEGp75kt0qxra1zBa000vQUNqa5CqMDvU6+hYkSTIRPCsm8kNXXFgjkSclaVFbD5CA3B24c5oD6S1jK71hP+wHvCgBhdkz1UttwKHCk8/XIIMGpwA3Zg1/nd8MkYk+6s4vASdZYBzh9JuSZNx7JeqNp7kPB2fvbyNmWSlodrizIT5xt3Cqsp2cDAUlzR1NyrU1hylkt0y/kZhgZONIdzU9gVJ9Pd9vd6ppRHvzc/OdBfficBWya2E4RC5B+7EBFeurqXHWMu0tEQ7alf4A2X8OgKAOR1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=faD+UTg9gjy4g47cIOnpcjDoa6e910tlE6BRIT2LOOY=;
 b=c/Yot/J1kerTXbecH/fZ70kkaUd48EcyROopZgowg1K2Y4ns5HQcjUS1/XseGLsyikNr7J5L6qZBwQVtKVDsV5inDd/bKnvTsf8sp7Qvx5UQe2cize35411Fsg+BRTk2D7MOukJ+WEN/gw/hlOYYTWqw7uHaMgQ6doNqE1Jv4tKQHFt1LQJ/X8UyUpZP1CsBziI+LW1EKfinluBKol9XOfb9/sq5f33TGLwnrV5OBvnDxfxcDzjoejzjpnzLFVLD//treoS0V2Vxm9NRWTYDJheMolAdpPdhIKHNimVwNFVNq2IbhgnJyMFE070e+zcv++YChzlNGd7AlPIz3lly1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by MW5PR11MB5787.namprd11.prod.outlook.com (2603:10b6:303:192::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.34; Fri, 8 Sep
 2023 21:52:38 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79%5]) with mapi id 15.20.6768.029; Fri, 8 Sep 2023
 21:52:38 +0000
Date: Fri, 8 Sep 2023 16:52:36 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <rqr2u3cgr7p5eexdafz7bwrnckqmvuv75jsvfce7lg2yeuapke@csfpwgapesn7>
References: <20230906234732.3728630-6-matthew.d.roper@intel.com>
 <20230906234732.3728630-10-matthew.d.roper@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230906234732.3728630-10-matthew.d.roper@intel.com>
X-ClientProxiedBy: BY5PR03CA0019.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0::29) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|MW5PR11MB5787:EE_
X-MS-Office365-Filtering-Correlation-Id: 1bf64fac-52bc-45c0-c80c-08dbb0b5eb30
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: pbTP/gBZTWkjrJom3K7fONjLPvrnMRcUxMc4wMk1EXZTsaJ1HXMHmLoRXBgeop7YfvfGTtjijkWXZT9TLjtCGZQoETrlixJZEQmGQ6QxDEcMifn6ZmRXGTzBvMmYXU93qGLnJ4ovFPlxlvIhSJMg+sQxctu5LRUFAjl1uZt9imCyqjmLYPfBBLwjGFObKLk6I1Y+IcaKWvVkTnJ14dvls3NeEGStYascQ/hG2tV9lHL3ia3NRbl6reHnoJR2C9ZvgFD81wyU6Pcq7nQplb6xFtLEGp6vUBuBYgUYe/NsptEjFnamT7QMZtmmyINvwY1CcPlMJ2fLmZ8z6MGifk+f3d05R3pTN1UKmCQIaktaFhNmgrrE25lxiDKiigL96V7aR9K5ndQ3bERYkuqhuAFzUHK1nZd8Ax4LtqaD/GTUynAo6lB8OCm2m9cVruRpSr/mWfTVhSfrqdDvLNf9Af6OWdHq2qK6I3bdU8trYvgaOfpJvfL4YVRpV/6qzeg/R39EsJfxIfbTulijDBPmIN5p8flYU8WE8Bh6Go98/ByRdAIU0PDLxRO0rWWOTSlRMySp
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(366004)(136003)(39860400002)(376002)(396003)(346002)(1800799009)(186009)(451199024)(2906002)(86362001)(9686003)(6486002)(6506007)(478600001)(6512007)(38100700002)(82960400001)(83380400001)(26005)(33716001)(8676002)(316002)(6636002)(5660300002)(41300700001)(8936002)(4326008)(66476007)(66556008)(6862004)(66946007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?tPwXJsa2k9RgA7vQDKQxiRXg8rmJ0+Ga5IbW9F6sjbbNRNWq1UK0tErlDRyx?=
 =?us-ascii?Q?fVojLSZlFHSGPQEDqprCWWihxaPXpt556ogFDBTMU2MMd/ia6ozoRSzCzn4g?=
 =?us-ascii?Q?27RGeXYxMmjS+EzazuFdaBP08g5WSWUd7Al1Q2fMUGEqS5g0tsAWi+5nCvWv?=
 =?us-ascii?Q?JNBC+0b1x11kBQBz4Ck1/CbLm76b0WDcOcXUn0/0rNwxDC/q7dUXGtv/h5Ex?=
 =?us-ascii?Q?t0AS7u2w/D792G/HH6TA+Yx409ElF3GvxOVmdQw8ENFEwZbjKOSXlZY3w25c?=
 =?us-ascii?Q?1mwawbF9sNb3wPWHChFl2T/bJXA68YO3DYcH22phkjxOvtV2hncbIp0oVDHs?=
 =?us-ascii?Q?F14YFSxVUEQyF77xHKB9BsYIPu6i4Z2KFdmeWi8iYuZSdAVmmb42R+NdVvbB?=
 =?us-ascii?Q?Be3JJ8kXobBhTjqayXnqgufZyx/n/QfLXYxFTV3zEpJ0i61LGFYyiR72wgS4?=
 =?us-ascii?Q?3h5ixnODzlbDiH9bBf0Vm3imjVXLqdKjB7bI+tWh+X1cntrjr+7Oor+9SZV7?=
 =?us-ascii?Q?Pe3ishTt7ld5brx0Xrfn1ES9HSzROW81fVLp+m8pjR3tRDTSOmRkkPrwchT2?=
 =?us-ascii?Q?xPA2G4sLGMQ004KmT1jKX5FkaY6dZ0c5CYAYKmmVz0Z5z6C52ue7XvLajX5N?=
 =?us-ascii?Q?Vze2TIRM1uYMqz4EeG2+RhXDFXn8QeYVrrwaYa5whps+8kQTGs3DU7bvtw9q?=
 =?us-ascii?Q?yxbGopfaBJayLdQFAFVYp14qebFuDNsZPskS9k3sn5TgigtI1hHALjUwapBv?=
 =?us-ascii?Q?DeSuGUThEL6LFP801rlj0+52p7aJBaiDDJSoeKgj3nOvIKhdcNuSey4Jjkq5?=
 =?us-ascii?Q?kKnjid21WUDOZmgEeNF3RZvCE0dsdYB6xNGjrGcGZxkvcC//NM2p7y74c9DG?=
 =?us-ascii?Q?eX1lx9NGf2R22jGLTbifC0Cl+11jXUhS4dEAYKoTF6lmEoEjK+8UVppZJGtj?=
 =?us-ascii?Q?ft58506Ai8n0m4fWpx76qYYBQFOKKqyeqzeYS7GTmnJsvUy2x9vBPY08vu/H?=
 =?us-ascii?Q?x7gh4CL/R7g9t1NS7mDdt91Y9eZ11/yjnBEYk8qvq4KDfTZmpIpJVMXbItuE?=
 =?us-ascii?Q?ApNq1ELf5keLhlo6qKufrgOGnm3DsEIJ/B3aOyz1II3nfB0bddM8rEUEKB7d?=
 =?us-ascii?Q?0eSjaSBr52qnkM0kM6LD/ITQ/yWCilF+tLkyb6aqAj0p882voolGatp/jFsM?=
 =?us-ascii?Q?fq5ieYGBSN7wgP37pNyYuzjPeQc3QkWdRElQsWAjLYty6JDbr/sX2Qtz7p6x?=
 =?us-ascii?Q?wjhP7vhyKvJlsNFqoy4ydafNAgkiEH06Izc7HGuo69pP+r/waAKJR29Au9gU?=
 =?us-ascii?Q?IF86IOf+dCAwxhMusE1UY8qVWyosg69CXrw+nIpHhRiNoX/Mz1pNWOJbbmNB?=
 =?us-ascii?Q?+AttjL/VgFCff2AFsauBgY3Q5Ax0boD+TYGDI5VWBuHv7nhUG8l+rm3+wmul?=
 =?us-ascii?Q?i3VAkwBxLX3gRSgB9W6bV5sYfMgLyhnRzl7yxIARaelUYuLTZG8IXyuxXTTI?=
 =?us-ascii?Q?HCatXccnbmpOXx5m714xYurCRRC7SnBMkXuRRmla5cILXR5d/eqLTgrwyUIS?=
 =?us-ascii?Q?5NOLPJmMtNUpYz3j5GaoOkU+M2QCzHfbWQtF+Aea0UcPLo5VaoevERYEouaa?=
 =?us-ascii?Q?hg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1bf64fac-52bc-45c0-c80c-08dbb0b5eb30
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2023 21:52:38.6108 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BHqYoiXY24A+UJW4HmQAgcI0DJRrBryRU7WYVIl3u0Nzq78YK9uEl4QUOaulnfhbt8bzuo9lye90hYseoqXTxkQNvwAEr2Lp3d75k5w6sVU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5787
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/display: Apply workarounds
 during display init
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

On Wed, Sep 06, 2023 at 04:47:37PM -0700, Matt Roper wrote:
>Rather than applying display workarounds as part of
>intel_clock_gating_init() (which in turn is confusingly called from
>i915_gem_init during device probe), handle them at the point we're
>actually initializing the display hardware.  This will also ensure that
>these workarounds are properly applied during display initialization on
>the Xe driver, which re-uses i915's display code, but does not call
>i915's gem init.
>
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>---
> drivers/gpu/drm/i915/display/intel_display_driver.c | 3 +++
> drivers/gpu/drm/i915/intel_clock_gating.c           | 3 ---
> 2 files changed, 3 insertions(+), 3 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
>index 8f144d4d3c39..9d9b034b9bdc 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
>@@ -31,6 +31,7 @@
> #include "intel_display_irq.h"
> #include "intel_display_power.h"
> #include "intel_display_types.h"
>+#include "intel_display_wa.h"
> #include "intel_dkl_phy.h"
> #include "intel_dmc.h"
> #include "intel_dp.h"
>@@ -88,6 +89,8 @@ void intel_display_driver_init_hw(struct drm_i915_private *i915)
> 	intel_update_cdclk(i915);
> 	intel_cdclk_dump_config(i915, &i915->display.cdclk.hw, "Current CDCLK");
> 	cdclk_state->logical = cdclk_state->actual = i915->display.cdclk.hw;
>+
>+	intel_display_wa_apply(i915);
> }
>
> static const struct drm_mode_config_funcs intel_mode_funcs = {
>diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/drm/i915/intel_clock_gating.c
>index abfb6bdbd367..9c21ce69bd98 100644
>--- a/drivers/gpu/drm/i915/intel_clock_gating.c
>+++ b/drivers/gpu/drm/i915/intel_clock_gating.c
>@@ -28,7 +28,6 @@
> #include "display/intel_de.h"
> #include "display/intel_display.h"
> #include "display/intel_display_trace.h"
>-#include "display/intel_display_wa.h"
> #include "display/skl_watermark.h"
>
> #include "gt/intel_engine_regs.h"
>@@ -750,8 +749,6 @@ static void i830_init_clock_gating(struct drm_i915_private *i915)
> void intel_clock_gating_init(struct drm_i915_private *i915)
> {
> 	i915->clock_gating_funcs->init_clock_gating(i915);
>-
>-	intel_display_wa_apply(i915);
> }
>
> static void nop_init_clock_gating(struct drm_i915_private *i915)
>-- 
>2.41.0
>
