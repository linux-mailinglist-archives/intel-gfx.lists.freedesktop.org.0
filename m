Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AB6896E0B9
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2024 19:02:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51C7210E91A;
	Thu,  5 Sep 2024 17:02:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WaCqr3UW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5880310E91A;
 Thu,  5 Sep 2024 17:02:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725555725; x=1757091725;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=SSmsRCIP5YuY48kXj270JggINjHHIvJhJmfZdbyokl0=;
 b=WaCqr3UWImpD4vVFZ3SFOqqHPpjgm/5npnYS8Izexw98JwlETm8XjyEQ
 fx9076zvHkF2RFOMQ2axF5JwfaDjtN4F5Rs/fpxDZZ54+kotW+MGnV7G4
 kwYh9s/IvWwEbYprfcja9EH+vrvrQR5jMv886oPPR0vo0XuxV71ZPYmOx
 bvVLiHknM0tf2NLmPYFVPZXdUk6PHey5U7nj2Oec0lJW7sO6t79snW5Xq
 YWQKdrwrC1UzM/9U/fi0b8OB2p/vrYUWgvDUvjeJQKmUSTl2MWsVIYJMJ
 xf3CAXwJdhgte4JmZcf4cIq/u7FLSy6x0lYdOtFtCycNlI4+nJOWgbV/S A==;
X-CSE-ConnectionGUID: BF6IeKETQDWKAxIRl9IGkQ==
X-CSE-MsgGUID: eD3Sx2NcQga2za3/MlqwvA==
X-IronPort-AV: E=McAfee;i="6700,10204,11186"; a="13393160"
X-IronPort-AV: E=Sophos;i="6.10,205,1719903600"; d="scan'208";a="13393160"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2024 10:02:04 -0700
X-CSE-ConnectionGUID: LOsIZ9x/QVCnTZwcnAAiaA==
X-CSE-MsgGUID: eBGf1/lRT0OIoQwlnpy25Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,205,1719903600"; d="scan'208";a="88929474"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Sep 2024 10:02:04 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 5 Sep 2024 10:02:03 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 5 Sep 2024 10:02:03 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.174)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 5 Sep 2024 10:02:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Myw04Jlxx4ytdzMkVZk1IM6NiXSsxMFzbrzG8ZAiHg4iO1Oc/3cslr0rLPTpDthZZJzCBQzqRxBej1lT2eTl8g4swE6DEpz4kprNGyZBnuieqPuTETEZPT/tLNUO35iztnoHNiAs8gZe8IlXj+EFx6ZU2AjF0rhIfFSttEI5GACNrvgZAFY6Hn83E7d7fWRQoG0O1Thj60NZBy12q0jDvrg1asByQD6H9h58UQXTdilVVcAhwXSNn7a2a/NEl3LlC24NHiVIYrI9MLBUcB1fhib900bIU6sdoidF3bqxaHuI72N6V7nBYhPv47NIcU+2SzP1gxPAmnvCC8taQAOlOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/jpPeAjWwonwbDymApOyO37d+j6uQI4ZHSuJoq3rix4=;
 b=QhgPd8aZp8077tmr4h2937q34S0g8fHnnreZXxmOH6M2rV2h43rM/NjBPjWGLgnHM942mSGSOQgbvCvMs85ArVXYer2SAnohjNtZD9ajbUCKzRWTHnRO0x6aPU4MNHAHqXiCCIFBIvYz42iyJWCpCJl+nO1hJ+OMlxkUSXE68rURaC75QFGuMWhLly+0RHHSNNPJUSrX8B5jGkTMO7nuiehncHHAzV9EWUvoDL4qK0q96Mcoyhc1smXBblKs33a6C4oNYHBD2xOtBnrV2f2jUujStZPtzKuedD9+eCiVbqjNaOsuOqynkWdVjU26h3nHW5tQCrVngkJvOA6Rz/dTgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SN7PR11MB6995.namprd11.prod.outlook.com (2603:10b6:806:2ae::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.25; Thu, 5 Sep
 2024 17:02:00 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7918.024; Thu, 5 Sep 2024
 17:02:00 +0000
Date: Thu, 5 Sep 2024 13:01:57 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 0/4] drm/i915/display: add snapshot capture/print infra
Message-ID: <ZtnkBd9k4zGM6DRo@intel.com>
References: <cover.1725372032.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <cover.1725372032.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR03CA0192.namprd03.prod.outlook.com
 (2603:10b6:303:b8::17) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SN7PR11MB6995:EE_
X-MS-Office365-Filtering-Correlation-Id: e3b7c443-0f1a-48b1-98cf-08dccdcc753a
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?y9pygcoDXsjNOirglPKmvzz4OoH7fxcHSkRs6y8dp9PsbptlcVw1oCqRBABi?=
 =?us-ascii?Q?eH4CMoD0UHopRCkVL33GX1cBYnK9GC3jOCOK8yJ4qv9CTVspsDFY/hBGzvnK?=
 =?us-ascii?Q?p45tjLdTm0SINWFd7XonaLVaLPt+0Od/01On/Xmcib7tlzGR08lQn6vsTmEu?=
 =?us-ascii?Q?Qy/zf5dcICjls8eWbgDtLsJzYz2hasTKqrxl8V9efhMmYhrWait27XjeVWtR?=
 =?us-ascii?Q?8V7Dn+wULJCx1SUEbwQ6rln8StahqmesS16iyuBHkZhsWQgkv0XLYT0OEwf0?=
 =?us-ascii?Q?kSofq0AGe0hxh0G/QgTNO9ue5fWgPq0UeaQtsid/C8tFCD4TroryQDs544pQ?=
 =?us-ascii?Q?mXE2771whcZyx/MeR1h5H7ywcGWdV9Va8Gk5BXtrstElnnQhtqG4RNB4EvYj?=
 =?us-ascii?Q?rGXMoKyrGy7cpGoYD2BSUMFpXS2aWR5xWqqlZSrJoWE8XLfiPv6yF/Ug8X51?=
 =?us-ascii?Q?EWsyl2OSEDQjLiMwz3qyUb0cozvVz/54q8uukVDsoJXnSrHPPKgdWIPLCGO6?=
 =?us-ascii?Q?lRaPgMOddlxb7jxwJyGakvyNBYuCl60BLPA/ALStR2lATGeRy7h/UpBLvLGm?=
 =?us-ascii?Q?kP+aRzcEbw8jPsg7jUGxWB3fG0MxPUF47nFg2frabwz9S7t2/reF666W9sBK?=
 =?us-ascii?Q?faq8ppo3graRpdRfHXkOqu9ADZ2y26a+zJ2wOGLPpW5tsaeH9KDnAqPbjYO1?=
 =?us-ascii?Q?3kwVF96qKKfVqJ3qnZEEQc5NjHdHPbNoAcfEuPRjd7Dc0sfdKPJLlriN/rrW?=
 =?us-ascii?Q?pRVnJRvgHU/FQtTfQy7XqzdGe2vDDPQDrOwD1LrfnAZMU1It/lBdVo/jX179?=
 =?us-ascii?Q?zoOshkFF/2HAm0eeD2RKxd7r9iEBuAVG81rI2bpEgrPAJPBv7xCoqRPCx0Ut?=
 =?us-ascii?Q?Zj2jnQm6G2z/Vki3vn3OdN2IV3I++8xywWDup0j6aRgqoq1870bf9ShJdD5y?=
 =?us-ascii?Q?Apx6fdQdgVdQkstn9KTQ+9L9iK5NBk5Vca9+DxWOxJTeOh9r66BMnQ2GVEEs?=
 =?us-ascii?Q?RvLj3TnZQ6GJ0WtCSMpoErYbfjpVJ3sjQ8gIxJxP6/toC44jyfe+1zIQR+eL?=
 =?us-ascii?Q?od2ckTvwSueFZAv8pky+cxJKx9lP6Wd2xOB6Et5WCnfLzVBh5jm1qKgW+hTF?=
 =?us-ascii?Q?kALaHxkldlqbU+SApcKNhSMpP+Xk9Tovza8ZG6+MyrCtegm5ITgolA5r9Sc5?=
 =?us-ascii?Q?U5gnaqP9y1gmHtcsWDOLAaa5wmGmOtMRMV1A4mDoPLnAnuzXWkzl9It/ocAw?=
 =?us-ascii?Q?buKKNVfcIHoQKhkVHGvgBP2bFKWHkTGz3XTa39AwlC7uXUOXxh3IfVO7wI3q?=
 =?us-ascii?Q?e7NalDs1IjwtSRmYNiTMPtsSRMt2shV9nXoimHmW/seAQw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?BfGaVDRV5BT+XncGy+BrFoRahdfu67bIqHvbnqOLGwT34sAytH+rdU3Bmi+D?=
 =?us-ascii?Q?B72JQ9htVRmnfR23s0KBm+KLSjVOTeYtUgzGZuM3BXW4VJ45MdRFUqqbfPGe?=
 =?us-ascii?Q?oz6EqIbwgCwmWEvoXxLChgGwAkLFed0I4i3YZG5zIVg9J6gw9D49qy9dYWMe?=
 =?us-ascii?Q?7+W0mGrOz5qgQy3HN7zMPIhZt7oxPHee5E6rRFgrMfilznYyZguRBhHlHf9j?=
 =?us-ascii?Q?F51lMHHFjiZM1QMQk5BJ6IFWhjQehEhvi9ZwLOQjWQDRzi576Ht8ffAaEZ5a?=
 =?us-ascii?Q?J9xD5pdmQSyZIQTBJoABEn4X+x5X9Vu448HyrCXIGjdn3OrRM218ShgsmJuX?=
 =?us-ascii?Q?pNBwKBRYNjKy4V1Q1lBvIec8Wrnk92aUqTsVCfFHygxuSgEW1NgRD1dX9iop?=
 =?us-ascii?Q?MplSHBbIkTLvIzzaf4rJD9UX+ZMFTFm45a+mhdv84zVc6YTCC0FRhR3NCUY3?=
 =?us-ascii?Q?46BO1Q27+k0rypLubqo0rNvHENIle988u8Oa0reGX6hdNrGrrbM34inO40iV?=
 =?us-ascii?Q?K8xVUSdpnVLCcaxDdby2n4UBsBtTum5hPxs8QLIgJYJckd94lJ6tfdKD5LGy?=
 =?us-ascii?Q?3+JIQnZTpDrzZHA0kL9oJjpuw6DVHzrmNB1gx61MrsQW7h3GocAt0cjtnogW?=
 =?us-ascii?Q?RTsXug0VvIFpXg+BHl54g9qY1b4XJM4UizSdfAN3Pjte/ZL1h91TlGm5zu1d?=
 =?us-ascii?Q?lpmsq8RR/wqbpDPnDA7mELPDjhelN8mUQVt5EJXo6rvtCaBrmiygGSt22h7d?=
 =?us-ascii?Q?vBI7mHJxq2iF9Uk82hrdj4lEeuG3eJCEBiQ1bBRzITuto/it/kqEUXzTCkQv?=
 =?us-ascii?Q?FkkgC8YBehkmlyHdSdhcM9StYtVziNkhqnRP+kxjJL404jKZ2t8PIhVghQKW?=
 =?us-ascii?Q?fyh37ydMcpRZ+eKQ+KUyUrEfM+X7PGjrzzAL/4zFqDl/hfSMVynaF/2pgk3T?=
 =?us-ascii?Q?bC4TrIugb0SYgvD6KaTRnCcjx+3X4Owl62kywNxC0+yneI7AGpNWy7pBaf6Z?=
 =?us-ascii?Q?JpyUqHskwBoT0cnMiyrFon8XjDPHLb/Ek1HawTgLHQD7A4RdM+jj+Ma6m7QT?=
 =?us-ascii?Q?cjLc0ZsjYQaTM+shdDmFwV8Z7cifT/xX/jXtH5rUQZK5N1W90bV+UGYH57zu?=
 =?us-ascii?Q?sDxsDB5mjSR8U6tz1gLZ0ziSXmMNaN+d12DNcf6uGM+SPvNC1ZWRAbzGtirZ?=
 =?us-ascii?Q?w9BzzUyy/b2CLlGRb+h/afctj0EXMyBm36964Gj9fnJa6UR6Vm8YMEDxq/wa?=
 =?us-ascii?Q?m/6p3IrgsErrPOZpp6khtBj9Wu0/6ojcL1clCmh+igCU70OC1pKcVCquwoKn?=
 =?us-ascii?Q?VzrLJb3eh0/XkMunUKork78p3OlBD2+RzVb1U132os06WQSKwgkm1WGE/1pI?=
 =?us-ascii?Q?2v/QEU2TCUb6bJZuva1vAzHQJfof0G9GUVjCOKi+7NdaOS5zKr1Qmau4y4w7?=
 =?us-ascii?Q?VLUQbSWE+0JAXiiTEArD0y8S6Wbol+uFAk/mYytcfmWdD8l+80ij5e8LSigo?=
 =?us-ascii?Q?MrmKxR2qjx3uO9Q8NnzGBMLKV7jhNSE2EnbrkA6iQX92pnc/XsZQl+/dcSRZ?=
 =?us-ascii?Q?SAOq3uDRVfweHhMAgk9zjOkeCTOzZu46vKVke3Pao2db50AA9reg78BKFq2p?=
 =?us-ascii?Q?/Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e3b7c443-0f1a-48b1-98cf-08dccdcc753a
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Sep 2024 17:02:00.5987 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jgS5LigBUW8kZ4EMk+7m4IJem+0bmcCZah5/Crc/lY8R9CvgLl7KTCNvAig/T1xZpo55IsECL9RzsxPBkbi9HQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6995
X-OriginatorOrg: intel.com
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Sep 03, 2024 at 05:02:56PM +0300, Jani Nikula wrote:
> Add display capture/print infra to abstract it from i915 gpu error state
> capture, and prepare for perhaps bolting it into xe devcoredump in the
> future.

One thing that just occurred to me now is that perhaps we don't want
to add that to the xe devcoredump itself, but make display having it's
own coredump virtual device?

Do we really need to dump only when GT is hang? Or perhaps adding more
useful information on display and print on display goof-ups?

But anyway, it could be orthogonal and Xe also use these display functions
on gpu hang as well. Nice work!

> 
> BR,
> Jani.
> 
> 
> Jani Nikula (4):
>   drm/i915: dump display parameters captured in error state, not current
>   drm/i915/display: add intel_display_snapshot abstraction
>   drm/i915/display: move device info and params handling to snapshot
>   drm/i915/display: move dmc snapshotting to new display snapshot
> 
>  drivers/gpu/drm/i915/Makefile                 |  1 +
>  .../drm/i915/display/intel_display_params.c   |  8 ++-
>  .../drm/i915/display/intel_display_params.h   |  5 +-
>  .../drm/i915/display/intel_display_snapshot.c | 72 +++++++++++++++++++
>  .../drm/i915/display/intel_display_snapshot.h | 16 +++++
>  drivers/gpu/drm/i915/display/intel_dmc.c      | 39 +++++++---
>  drivers/gpu/drm/i915/display/intel_dmc.h      |  7 +-
>  drivers/gpu/drm/i915/display/intel_overlay.c  | 16 +++--
>  drivers/gpu/drm/i915/display/intel_overlay.h  | 19 ++---
>  drivers/gpu/drm/i915/i915_debugfs.c           |  2 +-
>  drivers/gpu/drm/i915/i915_gpu_error.c         | 25 ++-----
>  drivers/gpu/drm/i915/i915_gpu_error.h         | 11 +--
>  12 files changed, 162 insertions(+), 59 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_display_snapshot.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_display_snapshot.h
> 
> -- 
> 2.39.2
> 
