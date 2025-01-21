Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBDB8A185AD
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2025 20:38:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7272C10E627;
	Tue, 21 Jan 2025 19:38:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nYVxuRFU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E100A10E626;
 Tue, 21 Jan 2025 19:38:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737488299; x=1769024299;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ppAvvwD1gkqA5LM+IHluDHOv9LwIr8E1otOtniMDLhE=;
 b=nYVxuRFUYM/mfgO9v1W/kcInBE56jaaS4jEO6L37Eh5vfz+DZxX2MSUF
 feQBEvy52WonwFHCYChHQqCKruiB4TS9Qe5Ua5hGTi5n6Nvfn9C6evCjf
 31O8a4pPSpKb1KTlD7o5KybpdXywKh++H72piKH4I/qFff9BjCdK+Jkdh
 iFwYzOvpnXS/i6vUXsfHCk8OGlTY3E3vwEH6riLRwXcaK2ecqr4gOoLO2
 wLUYZgIToFztIiUj1OlVOXJgG73cUvhA0BiI0UbjqPA9Fk/Gr2YWMExzj
 mZibGlwHz/yMwDHTJcy+9hVjJMPXYXm2/gULD1Ih3vwb66JgGNh6VS5SW g==;
X-CSE-ConnectionGUID: QpqKZjYwSTiAnzvXEfv/1w==
X-CSE-MsgGUID: EZefHP6sTmGuf6QKdDCr3Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11322"; a="63280645"
X-IronPort-AV: E=Sophos;i="6.13,222,1732608000"; d="scan'208";a="63280645"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2025 11:38:18 -0800
X-CSE-ConnectionGUID: qAQzchDWRE6KjQ57PD+LgA==
X-CSE-MsgGUID: W7TadR2WR+O7rvyu6xq6Bg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="111989724"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Jan 2025 11:38:10 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 21 Jan 2025 11:38:09 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 21 Jan 2025 11:38:09 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 21 Jan 2025 11:38:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ee2W/cztu+Y0saaHeF1ozR1to2mVBhCub/JMxSYmYzyckOP4PdmDZexYGZV2o8RkWuCfwdK9nbyFU7ToC/eCDBYicoP17QEJDoKI2mYd+6lKpv8pVxtHcYil/MFO+usGMYSOIDyBujtNcEW1c8F7lgoJIj0K+N4nIWdkVOYF3C/lW2SZFU02EdoV4K79iGkPQeGwk3LT4e/f+OYVu70xY0mqoZte6Lg7436HG7K5O2IHtw1Wo1pjg/GfWRH5Tx73irysevs84RGxkuZ4FLl809wa25AgRP5Xedmy/cM4GvXN+6yLP0KV+8x0oQPK8xbLDdYIwylXYX4CKxEiOYR8Tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QyMwlQDIPMoS/CluvdyYHNtcuKbK8ZfGKX7mkJMbgLg=;
 b=iXbkVPrfo/Y6aLDzLVnle78HEZgOYrGKuA1NWh+HWtR4CAeMDA6WpyrafPNkFtRMvN5ceimKUQnia7z9kbrVyQMhXsFMBBF/08AzvmRfzHWI+KqgJgisH3OKwsPWnYIwCTXDBVqy4+oFxm8OakssqzTpeoWqZTSEFDon0sAyxiT07SVqrNUWbSruHkCRmiiBpPy+bIyB8GO1FkxQIw3fb6ojStOINtWr5t4Pb0FhsHgYZEejIsvhOCtNCOFA0V3enEwjXny+/jeChm1acwSxvz7JJxcJb+Fvep8RPsaA1L6vVxlj54PQLF23Z9lCdz+l6svxGti7J/b+i/RDLFFOOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7SPRMB0046.namprd11.prod.outlook.com (2603:10b6:510:1f6::20)
 by PH7PR11MB5958.namprd11.prod.outlook.com (2603:10b6:510:1e1::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.16; Tue, 21 Jan
 2025 19:37:52 +0000
Received: from PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc]) by PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc%6]) with mapi id 15.20.8356.020; Tue, 21 Jan 2025
 19:37:52 +0000
Date: Tue, 21 Jan 2025 14:37:48 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 Jonathan Cavitt <jonathan.cavitt@intel.com>
Subject: Re: [PATCH 3/3] drm/xe: Use i915-display shutdown sequence directly
Message-ID: <Z4_3jP-dko-WzkFZ@intel.com>
References: <20250117220943.506991-1-rodrigo.vivi@intel.com>
 <20250117220943.506991-3-rodrigo.vivi@intel.com>
 <90840106-de7b-4cf7-a74c-455146ddb2d9@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <90840106-de7b-4cf7-a74c-455146ddb2d9@linux.intel.com>
X-ClientProxiedBy: MW3PR05CA0008.namprd05.prod.outlook.com
 (2603:10b6:303:2b::13) To PH7SPRMB0046.namprd11.prod.outlook.com
 (2603:10b6:510:1f6::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7SPRMB0046:EE_|PH7PR11MB5958:EE_
X-MS-Office365-Filtering-Correlation-Id: 96cc0194-d642-447e-6c9e-08dd3a531826
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?sV4PnBY9MC1Omffny6yJ9KKarwId5EZmkfPZLwRMZFl5zeBIxKiHmn+ET9b8?=
 =?us-ascii?Q?sTHAfVvYq2aeA7Io0CjeRsQAcJED0JQkE5aeRaYdBPxEdLGhysKyB+ht5BxF?=
 =?us-ascii?Q?/+Xd0gipzJ5GQHTTu5KxGkSaS4pFVwOmsvfXFfmR6K78P8NFHBLd4Msf7JqZ?=
 =?us-ascii?Q?ViHoDPfQHerYVyWSBgJFHgDk+GjK4vbIjpg5auRbf/Wd9DV3Dg3jQsmuI01X?=
 =?us-ascii?Q?TQVUk0595a4Rsbn20m/aE+eI7UjUNqOtTiEvP3zC3iu+ZR4rVoCYBGSrup4s?=
 =?us-ascii?Q?YltivYNFT5NKo6tRE8bw1OLVY+S1R0nqQLmu9U33OXF0k9S549p5QSrh7faI?=
 =?us-ascii?Q?tH6ZmdHl7tv39CwzZnnD7l8m4rNGYT4WAIicgzHNYYQTTqMxaV1aW3SYzvDY?=
 =?us-ascii?Q?gpJlXzJNnZy7uWivXdlcRxwSE5B1PPDem4lquajG8p2T4M2ZlWczsbmvuMRd?=
 =?us-ascii?Q?Hcm7bTVZxjbMwRBRffZLyrM9mhRG1DtcaCYI4fQEiC/rTuP9F+E1RQuc4tYp?=
 =?us-ascii?Q?d52OH4yG6RrCL2lE1djOijA74lHEkvds79uOiTBfFbDYd5gp1BavHj4usIua?=
 =?us-ascii?Q?VOLJcLUwze/BL2bvafcIcgo0cicElmi8EeS28qnt6/hMDiCDlu6jUZCgq3Qw?=
 =?us-ascii?Q?wu8eaP30G+r+0QBFlZBKbYVhpSvPQStyhGD3xsmlOOmWRSRYY0vAGpwbKffK?=
 =?us-ascii?Q?p0unLnT/LoZLUcu+VrEU8sOVrpzU6A3+H4s/nlcASVayVOYLU/mQePxA2IDX?=
 =?us-ascii?Q?KF+3Hy3hCOj3cWY8wjMg2hQIpeEPAiU69vQQ845DliLzd4RgYnRcR3IuxsUy?=
 =?us-ascii?Q?gDgnw7lI50EvGj77tuBlFE+5Q2kgS7MvDY3XuyhDR4F4xYZ4QfhvHTGE+HxX?=
 =?us-ascii?Q?rXm06FqYarVq2KFrulKw2UVOWuncp6VD63+Fd7TQLJZ5MR0K49PYdU0GCUSg?=
 =?us-ascii?Q?5Hn2j+V+AsoGnJocLmmsgZmiaW855ytoDh5v4rdj/zrcS4qoJGDoPmVxtDnk?=
 =?us-ascii?Q?46OivQrYNhzu4uq27gYVgVih4uHzJxC4kjyqa2ffwHLIa16dlb6yEwDTSDAF?=
 =?us-ascii?Q?sPY2CW9wJNPMOyqF/Y2fHJnfLYvbtWeoM3wg9z9S1BfMDmBaSeZGpJAtFgSC?=
 =?us-ascii?Q?uXPr2niKB1JPsbOhKsl9NyIFs/QDGMOUk+lPelCiKBSymEScf0JGZusLULMw?=
 =?us-ascii?Q?B0/cgwOJD8qtYqdWEhkrew9r9wr9WYpPvIOoCC7RSUDTpYIgCmo8URjFQbUW?=
 =?us-ascii?Q?kcHhsIgPcK4MIrmF9JvXZ0cU9DC/OSs8krT61+uwtp/MHFf7ObcrGeDpEj5w?=
 =?us-ascii?Q?ST9T/7GMl+ziSJIdWPGsSU1VgGvZ0KAHM8cHPFi80VYvF+zq0hzHzhjJrTLC?=
 =?us-ascii?Q?G2wV+H4l/ApK10QH3YHfFtVWC1jh?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7SPRMB0046.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?DiVJ8KS2IlOuR9B6tCBxPsYYE4X7Nc+PI3s23ytRloy2uQGQsETiFtEtBRPx?=
 =?us-ascii?Q?KT6ZDYQtrw2uZfhDdDgIdPi4PO/3V60PpDInI2I38xJu06YEV7028mMf/xlC?=
 =?us-ascii?Q?tf/HjpEo/7t9XEao/1aFmoNeCQ1smmN6kaifumA8rt8C31ZhF3yoEI9sS9GH?=
 =?us-ascii?Q?5ozzRv1vEDObGZVErtHvEALVBZF7NZ4IEVrEW8Vd6K7PG9nPFZXCEp9b6kQF?=
 =?us-ascii?Q?VlLJ6jVrwnmK7saByf6Wx5T/qQrotNqI5dQchBBnB1gHP1JoP1qDSWglCvD1?=
 =?us-ascii?Q?hy/WhOcAaxLrIOobNVtBzSfh3I5bpXZC9aLzH8O/qoDvJJQRXpLITbCsRpa4?=
 =?us-ascii?Q?hon4rk9y0tPiZhRMoxtWU5puQsr+hRQ6myC+nllI+tl2BavOTVvcP3zqbopI?=
 =?us-ascii?Q?VPTDIgpApzgOHVxRTgyLrchBBZUjze0jgm9rdTzymjhV/0jvFwP274nVTUz7?=
 =?us-ascii?Q?hr202314pweVLKCDBcWCIcS3drPoWCxIItK0DWEJ0I4B+mhtCjRa3XbydBtm?=
 =?us-ascii?Q?dpbn0tyDtK4a1Vg5PJrymkI3nuo2M0SSaitCT+yD8M5WkSYNhoeFlzqy2uIe?=
 =?us-ascii?Q?RkbDMUkiV/pkuhICdmu84gSZaU98wowM8SO/MHXvbRdcrFIHNW4k2CTnWfRD?=
 =?us-ascii?Q?dXXtYHxrHd+UoQg0SsF7OnvrLOgNzfHkeLD5eo81noXDWOjzxbAtzZcpRio4?=
 =?us-ascii?Q?1nWNobJ5KKIqCFgRkT9BvN90DVXtvwyWw5SbxhT8DcWXBSyaM3RR4CtZ7xp+?=
 =?us-ascii?Q?oxybNVCnxyPZK0sxi622qrKjAG2BS2IL31wgVDLyvYyJPgUuMFawgwVTPIys?=
 =?us-ascii?Q?b3NVpfTk5ROXg1YWQu/RaNWB43fGY8Ibsyn4p91i0/6dz19bXniYgdVXiHxu?=
 =?us-ascii?Q?r6lbega5h0RYp94uo0mTHbF6xUEfClgz8JMNXWbIYwI1V0hyp73OQ1BgPSx4?=
 =?us-ascii?Q?rl1RhGdXHNWNbenAtxQ/KIpYdOrOWjjx8FMQIlWPvYg90Y5p6dKGITqmwfA7?=
 =?us-ascii?Q?uH4bXkA6+NCL5NbrRxr+c5rD4sUSeHbhgg+sr5rLVtDvhCW3SssOlXZLfcq2?=
 =?us-ascii?Q?8KBRAfOc0QgleFk7RZff/BmuVUQ1bvpAdGJ9ONU9VyHfEW+NMNEu0Z4wP3AC?=
 =?us-ascii?Q?/QjBeFYduxkORoatoksS/q50/T8VF4RkL9Q1sLEDPT62FicI/o+uGr36SSkU?=
 =?us-ascii?Q?2DS5ZceJ3pPj2K0Fcg8sMk3KEZqKDFoth5+NwrrpzSX7BZd1f1a8FGv4FGlI?=
 =?us-ascii?Q?GSZvVT+TG5f29aIp2d3T3tEphAQ9htFxCSUiH2TOIJ3KWaXZ7avNXv0Qgxf2?=
 =?us-ascii?Q?rS+CGoNxJ0pkVjEkVBcvUVLz58w9/yN8eKnSPZs82RtzPmTUNM1xYiN2xcAi?=
 =?us-ascii?Q?JXnpoVA/DZHvUalS6fEnEGYB+oXRN3amrOgDn10YaZkRg3l6SFH0IEli5tID?=
 =?us-ascii?Q?lOkZ3wmrK12AGD/wYsP56F+y1A57fNW5ip/37bAhfTgGx75eb7yM1MNCn/Ev?=
 =?us-ascii?Q?EsY5zbMpfcVULzZduXJRxqmXncJ4Rvzl/w6hZ6ZPZ8qxEYnFFoxya0u7G3zu?=
 =?us-ascii?Q?6N0vt7gsZVFm2WEbF3XiBc4VTeiKqAFMLteDmUV+ujFgW3k/vkSNE3ow3qK1?=
 =?us-ascii?Q?Tg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 96cc0194-d642-447e-6c9e-08dd3a531826
X-MS-Exchange-CrossTenant-AuthSource: PH7SPRMB0046.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jan 2025 19:37:52.0547 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fsMyCsQ0wukDWqgM5cyT7jZq6lXM1S6s86LyYUIh/EcgwRBAljJqDXsWdaqNbEwYFy4L/kIeDZ2l5jci7kpYbA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5958
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

On Mon, Jan 20, 2025 at 02:42:14PM +0100, Maarten Lankhorst wrote:
> Hey,
> 
> Den 2025-01-17 kl. 23:09, skrev Rodrigo Vivi:
> > Start the xe-i915-display reconciliation by using the same
> > shutdown sequences.
> > 
> > v2: include the stubs for !CONFIG_DRM_XE_DISPLAY (Kunit)
> > 
> > Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> > Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > ---
> >   drivers/gpu/drm/xe/display/xe_display.c | 48 +++++++------------------
> >   drivers/gpu/drm/xe/display/xe_display.h | 10 +++---
> >   drivers/gpu/drm/xe/xe_device.c          |  4 ++-
> >   3 files changed, 22 insertions(+), 40 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> > index 4f60d7bd7742..e1ce9eb3332d 100644
> > --- a/drivers/gpu/drm/xe/display/xe_display.c
> > +++ b/drivers/gpu/drm/xe/display/xe_display.c
> > @@ -10,7 +10,6 @@
> >   #include <drm/drm_drv.h>
> >   #include <drm/drm_managed.h>
> > -#include <drm/drm_atomic_helper.h>
> >   #include <drm/drm_probe_helper.h>
> >   #include <uapi/drm/xe_drm.h>
> > @@ -369,32 +368,26 @@ void xe_display_pm_suspend(struct xe_device *xe)
> >   void xe_display_pm_shutdown(struct xe_device *xe)
> >   {
> > -	struct intel_display *display = &xe->display;
> > -
> >   	if (!xe->info.probe_display)
> >   		return;
> > -	intel_power_domains_disable(display);
> > -	intel_fbdev_set_suspend(&xe->drm, FBINFO_STATE_SUSPENDED, true);
> > -	if (has_display(xe)) {
> > -		drm_kms_helper_poll_disable(&xe->drm);
> > -		intel_display_driver_disable_user_access(display);
> > -
> > -		drm_atomic_helper_shutdown(display->drm);
> > -	}
> > -
> > -	intel_dp_mst_suspend(display);
> > -	intel_hpd_cancel_work(xe);
> > +	intel_display_driver_shutdown(&xe->display);
> > +}
> > -	if (has_display(xe))
> > -		intel_display_driver_suspend_access(display);
> > +void xe_display_pm_shutdown_noirq(struct xe_device *xe)
> > +{
> > +	if (!xe->info.probe_display)
> > +		return;
> > -	intel_encoder_suspend_all(display);
> > -	intel_encoder_shutdown_all(display);
> > +	intel_display_driver_shutdown_noirq(&xe->display);
> > +}
> > -	intel_opregion_suspend(display, PCI_D3cold);
> > +void xe_display_pm_shutdown_noaccel(struct xe_device *xe)
> > +{
> > +	if (!xe->info.probe_display)
> > +		return;
> > -	intel_dmc_suspend(display);
> > +	intel_display_driver_shutdown_nogem(&xe->display);
> >   }
> >   void xe_display_pm_runtime_suspend(struct xe_device *xe)
> > @@ -439,21 +432,6 @@ void xe_display_pm_runtime_suspend_late(struct xe_device *xe)
> >   	intel_dmc_wl_flush_release_work(display);
> >   }
> > -void xe_display_pm_shutdown_late(struct xe_device *xe)
> > -{
> > -	struct intel_display *display = &xe->display;
> > -
> > -	if (!xe->info.probe_display)
> > -		return;
> > -
> > -	/*
> > -	 * The only requirement is to reboot with display DC states disabled,
> > -	 * for now leaving all display power wells in the INIT power domain
> > -	 * enabled.
> > -	 */
> > -	intel_power_domains_driver_remove(display);
> > -}
> > -
> >   void xe_display_pm_resume_early(struct xe_device *xe)
> >   {
> >   	struct intel_display *display = &xe->display;
> > diff --git a/drivers/gpu/drm/xe/display/xe_display.h b/drivers/gpu/drm/xe/display/xe_display.h
> > index 233f81a26c25..a15ec29b862b 100644
> > --- a/drivers/gpu/drm/xe/display/xe_display.h
> > +++ b/drivers/gpu/drm/xe/display/xe_display.h
> > @@ -35,9 +35,10 @@ void xe_display_irq_reset(struct xe_device *xe);
> >   void xe_display_irq_postinstall(struct xe_device *xe, struct xe_gt *gt);
> >   void xe_display_pm_suspend(struct xe_device *xe);
> > -void xe_display_pm_shutdown(struct xe_device *xe);
> >   void xe_display_pm_suspend_late(struct xe_device *xe);
> > -void xe_display_pm_shutdown_late(struct xe_device *xe);
> > +void xe_display_pm_shutdown(struct xe_device *xe);
> > +void xe_display_pm_shutdown_noirq(struct xe_device *xe);
> > +void xe_display_pm_shutdown_noaccel(struct xe_device *xe);
> >   void xe_display_pm_resume_early(struct xe_device *xe);
> >   void xe_display_pm_resume(struct xe_device *xe);
> >   void xe_display_pm_runtime_suspend(struct xe_device *xe);
> > @@ -69,9 +70,10 @@ static inline void xe_display_irq_reset(struct xe_device *xe) {}
> >   static inline void xe_display_irq_postinstall(struct xe_device *xe, struct xe_gt *gt) {}
> >   static inline void xe_display_pm_suspend(struct xe_device *xe) {}
> > -static inline void xe_display_pm_shutdown(struct xe_device *xe) {}
> >   static inline void xe_display_pm_suspend_late(struct xe_device *xe) {}
> > -static inline void xe_display_pm_shutdown_late(struct xe_device *xe) {}
> > +static inline void xe_display_pm_shutdown(struct xe_device *xe) {}
> > +static inline void xe_display_pm_shutdown_noirq(struct xe_device *xe) {}
> > +static inline void xe_display_pm_shutdown_noaccel(struct xe_device *xe) {}
> >   static inline void xe_display_pm_resume_early(struct xe_device *xe) {}
> >   static inline void xe_display_pm_resume(struct xe_device *xe) {}
> >   static inline void xe_display_pm_runtime_suspend(struct xe_device *xe) {}
> > diff --git a/drivers/gpu/drm/xe/xe_device.c b/drivers/gpu/drm/xe/xe_device.c
> > index 0966d9697caf..53cac055a2a9 100644
> > --- a/drivers/gpu/drm/xe/xe_device.c
> > +++ b/drivers/gpu/drm/xe/xe_device.c
> > @@ -934,10 +934,12 @@ void xe_device_shutdown(struct xe_device *xe)
> >   		xe_irq_suspend(xe);
> > +		xe_display_pm_shutdown_noirq(xe);
> > +
> >   		for_each_gt(gt, xe, id)
> >   			xe_gt_shutdown(gt);
> > -		xe_display_pm_shutdown_late(xe);
> > +		xe_display_pm_shutdown_noaccel(xe);
> From the xe point of view, it shouldn't matter whether we call the noirq
> part before or after gt shutdown. I like the integration into xe_device to
> be as simple as possible, so could we keep the single
> xe_display_pm_shutdown_late() call?

I prefer that we make the xe_display entirely an wrapper to i915/display,
It should only check for the Xe's display module parameter, and then call
the equivalent function there directly.

Then, whatever differences we might have we move to xe_device itself.

And in this case _noaccel is just a generic name for _nogem which is a name
that would works for both i915 and xe...

> 
> Which reminds me to send out xe_display simplification once more to do the
> same for init..

On that too, I know I reviewed, but Jani also had concerns with that on the
sense that that deviates from removing display differences between drivers.

Although I still believe it is possible to take that patch in, but later
move the differences out of xe_display ?!

> >   	} else {
> >   		/* BOOM! */
> >   		__xe_driver_flr(xe);
> Completely unrelated, do you happen to know if we need to call
> encoder_suspend/shutdown in the FLR path, whether it affects logic not on
> the chip itself?
> 
> Cheers,
> ~Maarten
> 
