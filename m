Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83F467D5648
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 17:28:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72A1810E3E9;
	Tue, 24 Oct 2023 15:28:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BEB710E3DC
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 15:28:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698161282; x=1729697282;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=WMf3qzv25P19W6wREGqOwoyb0zHjlOqJ1UPKMKH8bOM=;
 b=McxdxkKJqnquh7rwC33E4PQkN/iBIBYmPiuUXKK+5FPzLweRuCZmBvr5
 Qc4Fgh6Vq9SWhluhVN1Al/atkr7BZq1oIzeEJc18KEm+NGG32gpR5CGkX
 R17lRScfDgvIoosKLJPZwr9qn0Ra6InPmm1utEcBy2PPCel3WKyZeOR0d
 HfCeMxoHwmZdS8a4fp92yfLYy5d3a8VtxKeWAonQnOEce+gfJD+hvy2uy
 VOxI5YtD1iiKWapLTVHtRuI9z8cDoh1hohZt2EJcUVoMx3K6p/Rpn0IPx
 H3Gwg3f9kOcObUvbcbAS7qXKg/A8mtxe6VdFdjM8MZtOJoLvDmN6hKL5G A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="386896970"
X-IronPort-AV: E=Sophos;i="6.03,248,1694761200"; d="scan'208";a="386896970"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 08:21:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="828885199"
X-IronPort-AV: E=Sophos;i="6.03,248,1694761200"; d="scan'208";a="828885199"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Oct 2023 08:21:45 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 24 Oct 2023 08:21:44 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 24 Oct 2023 08:21:44 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 24 Oct 2023 08:21:44 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 24 Oct 2023 08:21:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WbdBWIfyWVTOF08zCNIKy9HVldmjo+cNkXRm1YT5ycVm7jlxK62liRkpaJTk9POM1O0fCHO0EvBcS5cKGgEfN4YvLhMMwnTf9l3EjZfbamVIYU4/lgEDvdioGKHaygVJnZZOIcymymukIx37eye6d/tnLMborqGOatv+8+MIfWb1L6V23WbuwXGTg68HNlaQIK8Dq43IN8c/XJj9nBVNk5t34bQ0HeC6r5k428CSkiRMsDW5KZj90QxA/9cUEI5OVAs44q8kpV/U3skc+MzgLU+ae8Oby4EgsBowZZNlzJ1XHICNig8f9y2z6sWjMGODpS0fd+EN/6sTG6S2JahGpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TJpWO1b+y1xgSTKGErlf+Ko5VBhG1eXCqxOhnu23qAM=;
 b=JfKNKD/cGAE0TsiHJ3sfBaYCStrykNNo6ZRdYeZclDfyeRTN9yjbpPEWdX8+8IM8/HMZBBrZsEocUmiJfIIXW0wqu01YorVa7cUuUWYUSy7zMGfgZ4AlI71VaKt33XhRmBKSNfDqegn9pmZlzHSrY+TftzlRAbnnrLouAUMN3GAas3GG5U0qHKLrjFryd7cLuHN4oeILjG4Xas1MEagiFX19HFZUbZ8xJkXoBpMQVjadIWBYwBcDfxgF+QO7bMMc6tSYU1Acpibih6TQoPvU8aw6VAfeoEI4alnh9GoIRo9a1JC7bLHhfTNOt9uNtYr6QVdi9/ZE4482UOkPPjyH9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 SA2PR11MB4969.namprd11.prod.outlook.com (2603:10b6:806:111::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.33; Tue, 24 Oct
 2023 15:21:42 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::f723:f4d9:c12a:5b62]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::f723:f4d9:c12a:5b62%4]) with mapi id 15.20.6907.028; Tue, 24 Oct 2023
 15:21:42 +0000
Date: Tue, 24 Oct 2023 08:21:39 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Message-ID: <20231024152139.GU5757@mdroper-desk1.amr.corp.intel.com>
References: <20231019163913.2097183-2-matthew.d.roper@intel.com>
 <20231019170241.2102037-2-matthew.d.roper@intel.com>
 <ZTeySSFGbBpmfn-7@ashyti-mobl2.lan>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <ZTeySSFGbBpmfn-7@ashyti-mobl2.lan>
X-ClientProxiedBy: BYAPR02CA0002.namprd02.prod.outlook.com
 (2603:10b6:a02:ee::15) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|SA2PR11MB4969:EE_
X-MS-Office365-Filtering-Correlation-Id: 6048ce67-cdbf-4087-0aaf-08dbd4a4ecf4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: p9FQ2s4hfGlOi/Yo/3F4pEqjCTboxwKzYBe4F5uS9xpkkr0mJEyQY0ywBx6yD3cEGIkbYqlYN21zAn5mUOUOeiP58ALuQxafNebCmy3eMu5XJLmj6wbfrGOVPlZe688rWfUIK2gZnRZ6ViE9JpcmPqa6OVy8OWpFsH/VbvRC5gVOFjnNfzN7I0MByOhYI5UdnjAAWcC5fSRbmRFqdA3aOerP0XHiigqn2D4eQ2fUWIw/VNgBGBC6mvGgn0wwOtUZRfr9pA7bnHCZUvUwoksYylDMFLMMBKIvnILArxLmY5J2g3qyZNKlvPhmqaPi6KX500vKcYfYQ/IRnO2bOMiCQ3qVDlEFGT8UM9Lgh3+aAZzu98h3NnQl8OYbeKLa4CPvR6OWWbWGLO0RNPPivDWSRb5puReKV38fXem16n0xKohFZ3xrPjG9JHH4krPZYLlschGKKzmigU93OBGCrUwYsYPXl84Qaxs4dB/4uvQTpQ1nXWVmNeeOUeHQDfYz6GtIQtYfTYTWcmFAYhfF0sKvzKheFc5vlmXtsw2+dg3Cr7m3e1WTOfD6rGEw1THutArT
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(136003)(346002)(376002)(396003)(230922051799003)(451199024)(186009)(64100799003)(1800799009)(6506007)(2906002)(38100700002)(316002)(66476007)(66946007)(6666004)(66556008)(478600001)(82960400001)(6916009)(1076003)(6512007)(6486002)(83380400001)(86362001)(41300700001)(4326008)(5660300002)(33656002)(8936002)(8676002)(26005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?AOaguUOZR4ci9xIkVt0PFHf3CjFVnw1IVerdFKqYGwq3P+Y6GT0yTp40N2t9?=
 =?us-ascii?Q?y0VJO+HGHZtphmAmtdb2EaVN6f8udSZ/uSytH1rVImWTjGJtFp1UEzwLCfcb?=
 =?us-ascii?Q?wdIjKmofOEAOv+TRTqLgQLO9JAqI1bDuwc3WBlmmPD0/nMoZWhoOEAu7g6m5?=
 =?us-ascii?Q?94zvy0WWCt6Lo8mn8twpA6D3Mp2cqeuPL0g+ekRa5+qtIIEeCeEm3vDST/tN?=
 =?us-ascii?Q?2jEl+GNPyhKI3ZB0a3sJAUlwYxvJm+ITorVTwdRcxS5iGifXDSXsyjOB1fkj?=
 =?us-ascii?Q?Wd46I5HzyRMuB1PzM2y1i4xhIuLVe/VZ0X9Qtl75XgEEDsvvFKaLoG9FOC+i?=
 =?us-ascii?Q?sHMGqxOZvz6JQIo1xECnBoF9WDim8ZpXuRXmoqEUIhEW/gqAdlylU3OOrrEd?=
 =?us-ascii?Q?C+9euCG65AjI76BXI+61uMVAHRoxV/QQkAvLKdGpC0oFcW6VqRMHmXpzmNsj?=
 =?us-ascii?Q?5V5OB8lyt1vFD9SXGs2DYSuDNCsKU03byaHuBJr2/v+x7pd5hvwN9XqGP7Rz?=
 =?us-ascii?Q?oB6DTtTdmG8m3vmQMMR3zRjVa7fSDnRcd67AJ7kSkd4rFOaj3ipbXi4euYac?=
 =?us-ascii?Q?oFyZYjOm28dEcxbeldQk938PcjeXKaqqzWbti57u9k0O4en+QK2dSLwIDi8/?=
 =?us-ascii?Q?8Y4pGTREl2/vk1Gh/XsQUhg5qiYq6P5M404fpBssR95i2QpP4Sng5GbDMDqN?=
 =?us-ascii?Q?Q1aj7EI5KtQB/BJIoexsBeZArR0M46aO+VzXGS+FugLgB+a3nFlAYd6EvK9W?=
 =?us-ascii?Q?wObnOCvwBeNcfTsp7COe7tb6FpY1Nl4jjXcktidwGiy51D/kyXFngJTNTLnc?=
 =?us-ascii?Q?vjFSTQQ4g7ZPPEEHmZDFXLh1AevG1Li8uENUbyodT9oLSmRalMxC+Cg5Yguc?=
 =?us-ascii?Q?5vkGnT4wbzPSE0GHeFl4mFN+1Wd0G2UmTfTIpelP+AAiGzNeD6ePYn2rGEuq?=
 =?us-ascii?Q?C7+RttBkCitfpqOe3HS21wgzOPfLCCu95MZDU3FZJnXegtpfUMiwN3R+pAuH?=
 =?us-ascii?Q?CGT7Zee5FV7kh9JwRktr9EvqzD0+bXo0iAKv6/GGAW3wTIR4M6cwpnQvVvYG?=
 =?us-ascii?Q?3XKszvbUO5/4/Yg8MeaWo4Fh8GSZ6wEaAoPj/8uNWYpXuY/HbHVFILqwZzWG?=
 =?us-ascii?Q?EOmx4QTx5WxT3X9aY4ztHujTu7O1NpIuGLNgZ7bYRXS2aeL8rCNqEN9io5v3?=
 =?us-ascii?Q?GpWmDNrmRXWOOjraKnLYWEYMpyLkUYyVGyc7cWqWm7QvbW8ci5rrpt0JrWCS?=
 =?us-ascii?Q?HQaAOgqK63MAlx1Ryt9qAAvkljh7VVms5Ci0p+cVwugfZsMTxUa1Lto84Ozf?=
 =?us-ascii?Q?yjyYNAqUIuXQT5R08krpdp1qcuhq1qgXw9/H9czFq/mEyRGdn93Jg5cpeaRM?=
 =?us-ascii?Q?qeuBk34QI3d5sJ7Yow1tUmur4Ht9nHRbdKjpo2TWiU2kBghKJWDIJs9B+moy?=
 =?us-ascii?Q?Mo6GlFpEFtGMkk6Qz5RRoix2v1GjgKgPTPfCOVvJTj2SljOUZmS9CFevn35a?=
 =?us-ascii?Q?yIomHlfauJRFt0eLQkZlvVUjIGMt9dRRd4ylKXOFC7QD5TjM/enN4o5F/dTo?=
 =?us-ascii?Q?3YO6Km+Ag6aAeOJM1ZgSNOHyYuLTFzIgEcZtE0Mm2ZDAP05yGXz/aWTBX9a1?=
 =?us-ascii?Q?GA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6048ce67-cdbf-4087-0aaf-08dbd4a4ecf4
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2023 15:21:41.9984 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lufHwskptSs++3xPrAkPAslItbWSDVI5hEI9XNBH02nS+jyrahjFQbsYscJHVio8v/Jp9271gW1U72s8cgLbgj4DjVom2aAiX4Vi+qb+fWg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4969
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/mcr: Hold GT forcewake during
 steering operations
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
 Jonathan Cavitt <jonathan.cavitt@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Oct 24, 2023 at 02:02:17PM +0200, Andi Shyti wrote:
> Hi Matt,
> 
> On Thu, Oct 19, 2023 at 10:02:42AM -0700, Matt Roper wrote:
> > The steering control and semaphore registers are inside an "always on"
> > power domain with respect to RC6.  However there are some issues if
> > higher-level platform sleep states are entering/exiting at the same time
> > these registers are accessed.  Grabbing GT forcewake and holding it over
> > the entire lock/steer/unlock cycle ensures that those sleep states have
> > been fully exited before we access these registers.
> > 
> > This is expected to become a formally documented/numbered workaround
> > soon.
> > 
> > Note that this patch alone isn't expected to have an immediately
> > noticeable impact on MCR (mis)behavior; an upcoming pcode firmware
> > update will also be necessary to provide the other half of this
> > workaround.
> 
> right... I did try this, but so fare we hold the forcewake when
> calling mcr_lock().
> 
> > v2:
> >  - Move the forcewake inside the Xe_LPG-specific IP version check.  This
> >    should only be necessary on platforms that have a steering semaphore.
> > 
> > Fixes: 4186e2185b4f ("drm/i915/gt: Add dedicated MCR lock")
> 
> Is this the right Fixes tag? This is adding the spinlock around
> MCR, but the power domain needs to be taken independently from
> the lock... I think the right fix here is
> 
> Fixes: 3100240bf846 ("drm/i915/mtl: Add hardware-level lock for steering")

Yeah, good point, this is a better target.

> Cc: <stable@vger.kernel.org> # v6.3+

No stable kernels support MTL (even if they have some of the commits,
it's all dead code).  We don't want to tag things for stable if they
don't meet the stable kernel requirements.

> 
> When the access to the hardware was added.
> 
> BTW, given that currently we hold the forcewake already, is this
> really a fix or is this more looking at the future? Is the Fixes
> tag necessary?

I'm not 100% sure we hold forcewake in all the cases where we work with
MCR registers.  For example, some of the big ones like wa_list_apply()
don't grab forcewake until after we've already acquired the MCR
semaphore.


Matt

> 
> > Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> > Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>
> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> 
> In any case,
> 
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
> 
> Andi

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
