Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7023263CA7F
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Nov 2022 22:30:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8314E10E3E5;
	Tue, 29 Nov 2022 21:30:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C518C10E3E5
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Nov 2022 21:30:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669757411; x=1701293411;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=LgKigaFT2rhJ110mCD8GHX2md0c+Fe8wqyScm0FsDZw=;
 b=jtUdLyDf9ZueuyDPkcwSHsqpUnrgz96uiXTyOES0kDQbTIlL4StiiAYx
 E1r1+LocrFvkaYSn/mJbRYEMFQ1KGwiba/WgzLE3gojPIbrxwJYp8m/P6
 Sca4ADlgCyVDL8Ay7Xd/+f21ah8ne72LkSeC+AlDt2cRAAIqgSDQHgwGb
 anYbwiyvunyI56rMKsJoUyiORa+rczpRRBAkeUN6Hkb8z+s5q2X0hBhsS
 j/72OxqrwRwEogbVZRcxT+yEecoWhVKNnjzFE0bSHsD0WB9tisEMk7W9Z
 Zm2ACGvKel43ZFZl5B+dAK8ba3Vp3BUryVwMeQGr6Vl/2a9oaDb+mQHQG w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="342156177"
X-IronPort-AV: E=Sophos;i="5.96,204,1665471600"; d="scan'208";a="342156177"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2022 13:30:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="889021933"
X-IronPort-AV: E=Sophos;i="5.96,204,1665471600"; d="scan'208";a="889021933"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga006.fm.intel.com with ESMTP; 29 Nov 2022 13:30:06 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 29 Nov 2022 13:30:05 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 29 Nov 2022 13:30:05 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 29 Nov 2022 13:30:05 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 29 Nov 2022 13:30:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dVW9phUFR8CaYt/MinDdJrrHnCJWDF0zE42hEjzOG0wEeGBmyDPBx+gMIraRaZIQZUZ2gJYqcsapTDvhcYxVkErNgyfFWQlS1iDQjNf5X4qmonYWfEt3rKXZCid1kMtndBxLZmIeaUdzsZRek+syxIVfpnsgrhNT4TSswQOYs0VChpu2aJhecSk1LQf+SrEJZhSZmZZTLwqAnBL9hEnSa04KPmBgTxEOIkHdkQcWkgIcmvQdOizCxbz0JihE0D2YhFCaj5z/BQSEOQ10cWRbe0SLRTF4W5bgx962Sop3lqmEaCf7stBBgTKUUQhMbdE6PpdvNPf9O/VrwZjguES5kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e4/W9C0BBoIjde0UZlQ6feE2P6nQjcL6khequL6Ma6Q=;
 b=MAOTiyjtTHVoTNBmo+hUSX7g+niUmdvwK5kEk/HSt7C9FWP8rsf0Je0srXgXLVcqHnmJ85cnzOupqqytEdkNMJjWBc+BrFVdDf4oqDj7YTzYSQ8CJMMvO/Cbq/df9MUMn8rJtXzwm+Kdaq7mTO33hQUZXHesGehvhmp2ANjFMi83denWl6wePKFLClJCeigqXTtKlD6Twsu1/5pZfPkaxdKgGj2DnLiI3GZbchcpAi07jF6RmvKkjlnwhsyJLaexVG8h/qFNnz0uKoa5GZwJOzzc9Tpi+t6TXmkowDWBZGYOXk+gITVdfE7o+1WtP28t3e6lQw6jAX4o+rPflD1INw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by LV2PR11MB5973.namprd11.prod.outlook.com (2603:10b6:408:14e::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Tue, 29 Nov
 2022 21:30:03 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::f4b9:901c:6882:c286]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::f4b9:901c:6882:c286%4]) with mapi id 15.20.5857.023; Tue, 29 Nov 2022
 21:30:03 +0000
Date: Tue, 29 Nov 2022 16:29:59 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Alan Previn <alan.previn.teres.alexis@intel.com>
Message-ID: <Y4Z5181VFMRQDcyI@intel.com>
References: <20221129003152.3652072-1-alan.previn.teres.alexis@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20221129003152.3652072-1-alan.previn.teres.alexis@intel.com>
X-ClientProxiedBy: SJ0PR05CA0196.namprd05.prod.outlook.com
 (2603:10b6:a03:330::21) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|LV2PR11MB5973:EE_
X-MS-Office365-Filtering-Correlation-Id: feb3b572-516f-444d-ea3d-08dad250e026
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YN7py0boKHlOl+xXETyO6xA4E1m1DhvpRC/mUnwf1xaZ3El0qg76z49KEyUVFNyZnqfoGH2rm6ZgYatIGQs/gYOqY8X43DOcHf+BRrF02wwzPIfvdK8VlEyfE9MrvuMmXz/wWZqc8agiquSkdDOm+gud3NucZ8vB+3YdjYLa0JSHEJRk0BSO+p3AbW6eF84Hm1RPXT86t7RatAcJF+f99OFz4V5DsQw/pLc5lsF3XBpRhjbT+7AkJp1XKusd/gxzhS3WuAY1mXXiW5/W3tMjcOwwrZdOeiKp/2iY5rQhHYEv344+bMjMa5xKVWIeJNLacfuUHayho0PEXwB2gAYHn3F3DZfVxwB5J0IED0YCgm+kHdriAX/r9zrgQHktE3LvKm2IBEl2tSoj8acrDHWN25bKj++085Rp7ktCLg3AtEAqJXuusiiiCZumwUurvP7L+nd4CWorTSQVXS9Cb9dxM7MSuO3ulttB4pSkR9ju0hZQZDFxkcXVbsvYSTWu5Wy5M06a+TNs0cJ4vAKNrcmeemZf1VQhRwjo4ncbJZZgd0F2kfpPAPGjGmetN/naZFTkEc1Vnv8dXZ9E8zK6ZtXYm1TgkwmmxDZ97fkWwGKYB6jCF8QqaLmsmTFmiqjKnCNkCQVdLjHjWxcwNQrCYeiHxA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(366004)(346002)(39860400002)(376002)(136003)(451199015)(6636002)(37006003)(4326008)(8676002)(6862004)(8936002)(5660300002)(66476007)(66556008)(36756003)(316002)(41300700001)(66946007)(86362001)(83380400001)(82960400001)(26005)(478600001)(6666004)(6486002)(2616005)(6512007)(186003)(6506007)(38100700002)(2906002)(44832011);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ePD3fyPZvntGq9XKO2WdBFYG6VmMHswIEd0sOAIwmFOQuWTLWvmxNfTbJpa0?=
 =?us-ascii?Q?//0vOixA3Qa9DXjylDmMZX2jiEcGSSEKnkbtNPm6NZwjrqQF8Y3YcBsy1Y7o?=
 =?us-ascii?Q?AZlXgTjTKR0mqH7nBeRybn8lY6PMCxC6yfiBY3pQwT6M97aKTycNbK9dO3kA?=
 =?us-ascii?Q?naMfubP+aCoO5KGM9d2qZdI7URtf15BWV46bqSlTAIrq2dRehxP0nkzZZj09?=
 =?us-ascii?Q?2z56f2eBk8Mve3/0izwgF7whx1opQMb4vIdfmfg5Su5aIDDM1G0OxvbEafq0?=
 =?us-ascii?Q?JBhi2v7+ayY6n36nmxjmCRxZ4CuTj1thHmtViUmobzM0CYWrTa3+3zLdOp9r?=
 =?us-ascii?Q?+Uat7O2245i7arDC+LoLDrLrpBQ/6LukWJpNwxMfnhUrhp7NaPr3Sru++BqU?=
 =?us-ascii?Q?gNrhQLqC8VfLpX77VAoG6SdFiH929K7+sCyiyguGmCrM1FUmiUxtEoEg4t6R?=
 =?us-ascii?Q?zdDiG2rIavy//YTYC90zmojQSVwF7HSTV2H8Ri1gxtOsOhQmSp0wNTB3CSNv?=
 =?us-ascii?Q?C0b8Mzwe4SFHbW1PpbRFw4o960YegdN31cUPtXZ/gzjnQNyf4zBdF5aPOR9B?=
 =?us-ascii?Q?QyAn+dtNuDVJ9FXw4m54PJ/jfTM4PZUxdWvoytjogqJketIlvsgFel8nHm9Q?=
 =?us-ascii?Q?xNfY6eV8NGA/1JOon84qZenbAdhL+QIYBWMaQS/Zcurl7stuOvm7ktkFj1fZ?=
 =?us-ascii?Q?1ZG+dyL2mIWDup6LPLVmC+HGVXcHQ97WLUS91Pw1sYKsyznh8S8Z4Qf3hDvg?=
 =?us-ascii?Q?mPwCfkFSPscAk2RZTbpVdrIKcDU9xC3TN5m5K+y7yXB+YcUszvZ2FmlwN8qf?=
 =?us-ascii?Q?ZyOFFI9WRuFZHL2YwBI5rDqOiQ2Pus0Xmxo0P4XdC2xCpbBnQbOO8hvMw1vd?=
 =?us-ascii?Q?DhSigJV7gvWSot6O86wa4mkx0ZYI4o7nw0Mue5dvZWg3dG2Xul8Wx6Z9k5Xz?=
 =?us-ascii?Q?eFBDmGiqOKrwIQfpYKtjYX4U+raHgamGkTG4Z5U+rdfHWdKlGyhkCQnbQEwR?=
 =?us-ascii?Q?Wt7Z9gAScn0qN6u93kkFvKVfrjqFHhV+EvP6gagpglaEzN6yVc7vBbiKhYZn?=
 =?us-ascii?Q?l9GOMAokretr+7UAT67q0vUb/KUfPkENgNBcswSCt3xJXFw6vB47/Yyw94rN?=
 =?us-ascii?Q?1SxZOdQ+Q5m+jC/NEmwoqpBrVOX0895zwTG2IbN06ROeRbXq4Ds8x22xszPV?=
 =?us-ascii?Q?att/xoWUdPVc5KlehKhzKSUOXA0Ny58ZzE6Jn5q3ivFuzXHo6+1va4SV5QYc?=
 =?us-ascii?Q?TQC9GsNVQvFIcXl96Wk05QavMGZ4VANgWVfGc+Rgc8C9vNHeHW0zvPT0aaIm?=
 =?us-ascii?Q?CJf3PQh2GDIzf0IU12hdaP6fqpD+X4uj0EivtKO480HQU0ckAXPHa/N4fhwG?=
 =?us-ascii?Q?JLhQ59lfHoIlOLKL8vIHKFyuoDcdfTvFqOERwAXK4pghr3O0ARIYTJtwjLAu?=
 =?us-ascii?Q?xG8OIaLQxKPMoIssDph03uvppvgmddW4CEqO4L/gtaqM7rXeex/tQNM4AzNo?=
 =?us-ascii?Q?CCWbgzWACaqdm0qXIXpKLFpB8oB+831bkeksR/ZF3KDyLSwttX0pBwm1iEUs?=
 =?us-ascii?Q?seMgy86vGLhmUOdMH/B4xKx9BTOkSoP9hPylZK6a?=
X-MS-Exchange-CrossTenant-Network-Message-Id: feb3b572-516f-444d-ea3d-08dad250e026
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Nov 2022 21:30:03.4645 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: k73RLxVvu2BPUhSOfiPcQQiddE+CAmWBKb6bUMtUTPnada56ojD67au+KWsj3pUa9wkGoBCHOR+t6BeMXNX61g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB5973
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 0/1] drm/i915/pxp: Prepare intel_pxp
 entry points for MTL
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

On Mon, Nov 28, 2022 at 04:31:51PM -0800, Alan Previn wrote:
> MTL has two tiles that is represented by the intel_gt structure in the i915
> code. The PXP feature has a control-structure that currently hangs off the
> intel_gt structure. In MTL, the standalone media tile (i.e. not the root
> tile) contains the VDBOX and KCR engine which are among several assets
> that PXP relies on for establishing and tearing down the PXP session.
> 
> However PXP is a global feature as other engines on other tiles can reference
> the PXP session in an object's info within batch buffer instructions. That
> coherrency is handled implicitly by the HW. In fact, for the forseeable future,
> we are expecting this link whereby only one of the tiles will be the control-gt
> for the PXP subsystem.
> 
> Keeping the intel_pxp structure within the intel_gt structure makes some
> internal functionalities more straight forward but adds code complexity to
> code readibility and maintainibility to many external-to-pxp subsystems
> which may need to pick the correct intel_gt structure. An example of this
> would be the intel_pxp_is_active or intel_pxp_is_enabled functionality which
> should be viewed as a global level inquiry, not a per-gt inquiry.
> 
> That said, this series promotes the intel_pxp structure into the
> drm_i915_private structure making it a top-level subsystem and the PXP
> subsystem will select the control gt internally and keep a pointer to
> it for internal reference.

In general, no need for cover letter in single/standalone patches.
In this case, I believe this here is a very good information to be on the
commit message. It looks more complete and informative for later history,
then the current one.

> 
> Changes from prior revs:
>    v4: - Instead of maintaining intel_pxp as an intel_gt structure member and
>          creating a number of convoluted helpers that takes in i915 as input
>          and redirects to the correct intel_gt or takes any intel_gt and internally
>          replaces with the correct intel_gt, promote it to be a top-level i915
>          structure.
>    v3: - Rename gt level helper functions to "intel_pxp_is_enabled/supported/
>          active_on_gt" (Daniele)
>        - Upgrade _gt_supports_pxp to replace what was intel_gtpxp_is_supported
>          as the new intel_pxp_is_supported_on_gt to check for PXP feature
>          support vs the tee support for huc authentication. Fix pxp-debugfs-
>          registration to use only the former to decide support. (Daniele)
>        - Couple minor optimizations.
>    v2: - Avoid introduction of new device info or gt variables and use
>          existing checks / macros to differentiate the correct GT->PXP
>          control ownership (Daniele Ceraolo Spurio)
>        - Don't reuse the updated global-checkers for per-GT callers (such
>          as other files within PXP) to avoid unnecessary GT-reparsing,
>          expose a replacement helper like the prior ones. (Daniele).
>    v1: Add one more patch to the series for the intel_pxp suspend/resume
>        for similiar refactoring
> 
> Alan Previn (1):
>   drm/i915/pxp: Promote pxp subsystem to top-level of i915
> 
>  .../drm/i915/display/skl_universal_plane.c    |  2 +-
>  drivers/gpu/drm/i915/gem/i915_gem_context.c   |  6 +-
>  drivers/gpu/drm/i915/gem/i915_gem_create.c    |  2 +-
>  .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  2 +-
>  drivers/gpu/drm/i915/gt/intel_gt.c            |  5 --
>  drivers/gpu/drm/i915/gt/intel_gt_debugfs.c    |  1 -
>  drivers/gpu/drm/i915/gt/intel_gt_irq.c        |  2 +-
>  drivers/gpu/drm/i915/gt/intel_gt_pm.c         |  8 ---
>  drivers/gpu/drm/i915/gt/intel_gt_types.h      |  3 -
>  drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c     |  2 +-
>  drivers/gpu/drm/i915/i915_driver.c            | 20 ++++++
>  drivers/gpu/drm/i915/i915_drv.h               |  3 +
>  drivers/gpu/drm/i915/pxp/intel_pxp.c          | 72 ++++++++++++++-----
>  drivers/gpu/drm/i915/pxp/intel_pxp.h          |  6 +-
>  drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c      |  8 ++-
>  drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c  | 41 +++++++----
>  drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.h  |  4 +-
>  drivers/gpu/drm/i915/pxp/intel_pxp_irq.c      | 10 ++-
>  drivers/gpu/drm/i915/pxp/intel_pxp_pm.c       |  4 +-
>  drivers/gpu/drm/i915/pxp/intel_pxp_tee.c      |  8 ++-
>  drivers/gpu/drm/i915/pxp/intel_pxp_types.h    | 11 +++
>  21 files changed, 150 insertions(+), 70 deletions(-)
> 
> 
> base-commit: d21d6474a37e5d43075a24668807ea40a7ee9fc1
> -- 
> 2.34.1
> 
