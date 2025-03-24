Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCC3AA6D9AB
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Mar 2025 13:01:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AC2010E2D4;
	Mon, 24 Mar 2025 12:01:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OQ/wUFwa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F03A10E2D4;
 Mon, 24 Mar 2025 12:01:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742817684; x=1774353684;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=s8DzCwj2SdCg7g2ep2uT6FQLJYd9V9w6zzVrjDYdjr0=;
 b=OQ/wUFwa5oTRGhk814ZrWayIIjJB+gqKwwHB6rvEt4rk5iYkKvwjMni6
 DSZX13FvHRjdFUnGMoVCQ0sLyskiiFpF0rKvz/g+l2virWKp5ZXjhKy9C
 clZAK9ZIACN3ua1dHPpRYWTRu2vv6qCaHeXl70F9SkwUHxpYRPS9yTBVm
 mx9nu+B6oST71lh0JHj8ztkP5Au/mBNlNQY97DJqZFIFFDSWTD7RQlBWV
 PBWB6YjlLaPbKNHU5jT3Ca/+MxtOwOtl6SYVvGSeQGzh+KvpYE7JKL+AJ
 Ls1ZIKkGzchv4GzijZOwY+Hfd1ETpqlipV8vr84m4pebmeroKZIZRoiRx g==;
X-CSE-ConnectionGUID: aSs9oDpnTQiosTIbCpa7OA==
X-CSE-MsgGUID: q7QvFEZcSZC1DghPeyHw4w==
X-IronPort-AV: E=McAfee;i="6700,10204,11382"; a="43894862"
X-IronPort-AV: E=Sophos;i="6.14,271,1736841600"; d="scan'208";a="43894862"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 05:01:24 -0700
X-CSE-ConnectionGUID: C/jhImL6SxqH3ZnnffLdCg==
X-CSE-MsgGUID: 7TfyWVJNQQq4tNEGrO8gTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,271,1736841600"; d="scan'208";a="124551639"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Mar 2025 05:01:24 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 24 Mar 2025 05:01:23 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 24 Mar 2025 05:01:23 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 24 Mar 2025 05:01:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KX6W8RGV3e/kUx0DI2h/idye/sQtwmEh9LHYiGbQybg6g9mxnvBaJ2rBzsEbVnmRSYbjD5fCsEnvMXoDJLzExUqEfLA3Mc2bSjIxjQQh9UMpDSm3BJSTcqbh0NBKTFe1QK2BKVHLQAEtlyDJPikUkhSHV0IF45DNmFIhGlwivvlTqNDqsivDPaImuBm6YxoI8+oPy64jFTceLZMDRU633F8jvSJ5Xeb2lSmTlWZIGKl/I5pTKU0iC1Jz7H9CkbYyLBEvolsq00UXOFqqCAQYMigy15VOwJFxKcmuXbaI9vF6pbLhl5sJ8CrHXCQZ5t4Z6ET2A55ZxAR1nzJSDgmBtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TZyUzFI6N9lAq+c8+LK2pdFGn6HkFbCSrD3tW7QX6Ow=;
 b=mYfVgsER8CwY+n9j5YRCJrMZUJ0Up8Xia6+wi1Az5IrIQQwjPswLDu+CIb4ryTFGXZHyZNvaIaY9nrHtZQzyHQN93nFnlzeCtKsKrULQz/apj+tbMudstByt5QTcu2UjzGeq3OX0Xu7HmjTUDZGGQW949wlzy/LLmfAnL167YuSYPvsfZZ0p/5Pt6p51siyx/lGPpOMk8SfHV0sYNds4Ml//WdI1HkgyILv6HR1tAh6KUASx2fiSa0DpRlmsDrtFtkkHWRg8sCIUyxWHnrwwSJ2XJgD2Uz2e4JNuJQBZdOS/3LH0/U74cB626leG3DaTs2aCrIXTVGOmLFmudfsYWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DM4PR11MB6094.namprd11.prod.outlook.com (2603:10b6:8:ab::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.42; Mon, 24 Mar
 2025 12:01:20 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8534.040; Mon, 24 Mar 2025
 12:01:18 +0000
Date: Mon, 24 Mar 2025 14:01:17 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 "Ville Syrjala" <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 1/3] drm/i915/pps: Add helpers to lock PPS for AUX
 transfers
Message-ID: <Z-FJjXyOjHEvXZz7@ideak-desk.fi.intel.com>
References: <20250321145626.94101-1-imre.deak@intel.com>
 <20250321145626.94101-2-imre.deak@intel.com>
 <874izibtvx.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <874izibtvx.fsf@intel.com>
X-ClientProxiedBy: AM6P192CA0096.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:209:8d::37) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DM4PR11MB6094:EE_
X-MS-Office365-Filtering-Correlation-Id: ecdb27a6-892d-4678-2db7-08dd6acb95c2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?iVBKvP1ZDg4tSb7oEXi+LNj/nb9cuw1mCkCl67jBOKBqRozThTzrLGc/Pm86?=
 =?us-ascii?Q?rfbFR2UQdh0CEMzJ8oCmBsQxhohXQjr+gRBPw0FoSfhrY2snBKmgpAZdI+B/?=
 =?us-ascii?Q?OjxvSJaFp4GKZPyeFtjTyfLeMeF5zUtPVoSMo/cz+S7Pg5lhkzupwaKqCqfK?=
 =?us-ascii?Q?pcgOfWgQHLnpi8VybrauKZkQEKl7kqXAGCAiHj/OwI/aODBeZfEfRyPl3Tss?=
 =?us-ascii?Q?e1JghZy758IcYFD0GApkJxJjBC/ptp5CeLCmjgakonZksvSqNIiM7tT0Uf5A?=
 =?us-ascii?Q?KqI+md6yEJTVZ0KbOQM4P5ylhI7RgtDausYriAGjcKj2hZYI32RqhsOBn5q1?=
 =?us-ascii?Q?Io33c09tn3IVhvLkrlfReiThuZs9vx68ha2fYmilrlX5wdsJVTC1kHtoTCF6?=
 =?us-ascii?Q?mJEagEAQkOwAcHOzEkV2QkX6+oZeLAzTpsqUO9ay+h3o+mdFYzyeIOT22eyX?=
 =?us-ascii?Q?Zg1T0S+hCrO3Oo8C3vLukoAhbvr2DCFg1zgC1tqQ1jh0Nprrv7enlCbGj+Wp?=
 =?us-ascii?Q?vToqtj8/AfpI0a8oOU8jBxeGfpVVuj/uuYL5EwclmAOw/eYmeXWs37egSIN6?=
 =?us-ascii?Q?uToSlafTbWEZ0lvkgA3qaL1rt1W7VZSLe0PGY/KLZvBmh1rThfSVDIYqLANs?=
 =?us-ascii?Q?XIFrmhNvmoke18xHcbXp8djWi7QxLkgYbFUBEavPejIoEOlZG2T2JzfNveak?=
 =?us-ascii?Q?dWb4jFLw5KIhiv58AdFJZJBoXdRN7WrzoxnD6Zn4mPA8pZQ8ypIgQL0ApAXH?=
 =?us-ascii?Q?AAfMS55YjHoNbGZiT3jDx1VC994ZPLbffip7CW56yWWOZk37VhGFBTWeCb3R?=
 =?us-ascii?Q?xZSmKcFtBNoTv/UaksWsBn/6uB/RnujtTBhWNWP71UxkHr7gctHSQM1ZWths?=
 =?us-ascii?Q?efDUd4mXHsbu71sn7ygu1i0HFJxx8iWk5881pOtNIFQ4ZCmCsik2Sy2Pgtnu?=
 =?us-ascii?Q?pSCJiIIPDz94D5dN+ZqRjpFxB0nk30+24dmuRrcfkJOIVAJi38Esx/iGghQj?=
 =?us-ascii?Q?7a1+Bp9FkIAxFqI3Wbzc6PW59C/KQbL+vJZvoJILF89AExAPkpm1xbz/y6+Y?=
 =?us-ascii?Q?sdCZc+VeSLwqHcmmWDPPpeEnnAqqJfaZbhqUExDTaHWSDszihUeki9wTlZ85?=
 =?us-ascii?Q?eDYXdAZx5YLgt1NzKOA0bD67rJQq90Ceci8JKXnsrJ6zCSrl4K1vIG6jjiGG?=
 =?us-ascii?Q?o814aEyBx1zhmfwLLxKOi4mqKaOaUYIXl2o6G0Q45Qi1rRJy+9WEV5HNEcNI?=
 =?us-ascii?Q?r4L5PUDjb3d2nZNlztNSyiHAmhcw5JFPblLEtiGg6G4C88IxqRgWyTzPFZgo?=
 =?us-ascii?Q?qNe9B7BXRq6qq4Fllm8Z7O1rOpGTcaVqUNxByTzhJ/MXADvruta6q97clCD5?=
 =?us-ascii?Q?+Ejygmr6BJGvxG3s612O4B9v9c0M?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?h4sqVOWQPn1f/Iukxbk1+FzpM6jgWWhmANoWQrbGig5YTQABBH2A6WGMxcar?=
 =?us-ascii?Q?+t7GZAKFUvQidnWJ6/upnwRzrUECsCY5TEpMbAPzIRtKAp1b2+9jNUuKWJw2?=
 =?us-ascii?Q?hPNqwidI5fgW5C7AdWkQwuNkWdzkbn3liAKBVspx9L7fRY9sOzNcHZbT0rOT?=
 =?us-ascii?Q?KPw3Zt9f76nUQjFtK12yiWfkf00Lx2ph5jWhthnwHFdPSMLBjrOqRF1kwZm6?=
 =?us-ascii?Q?lsStZBW/HBmFiyEHvHRjg1iAoj3kmPXhSv+wHFWLDYIqAfu5nl3UXPI1eALX?=
 =?us-ascii?Q?jEEHDF8m85acXchrsXnfBNQGsjwNEbE6H1oN+80uwYLsVDKHNVLt/LBF9RQK?=
 =?us-ascii?Q?4harbltg3WRTk2vDrMrBns9R6QUcfn9F3dIKXQ8/tg6USj6npsrIolxqsz54?=
 =?us-ascii?Q?XuG6xDyDJW2JYKTJzwU+M4XX6hHpATvyThWhzl3emQnbNk26P2tvrJ5p63MS?=
 =?us-ascii?Q?mbbZrIpRofUn96fCOhFniLjHum7lLO1L97Cbtmq8hAOLn8c4UguCydrz2n4C?=
 =?us-ascii?Q?wexaViz4J8FBXzCmZVAF2pxwUaZXdsBjqPi6+hWBrNdYAXLn3G9uX3e6Nt/h?=
 =?us-ascii?Q?vUNvmiuaAfEZPcKg86iSjpse3Ug8DRWhuhIXznrg/DMbksp6AIhhhHcffFh2?=
 =?us-ascii?Q?QsDyKrZNi79QSaTIR9h/8I9GJ75sOzk5xTr4s1RL/NxdbzXGhvA1SqyRJTR/?=
 =?us-ascii?Q?uI1eJgbhW3yN69sdDmoWOBzBmbQNygEXN3jAMf5zJK59LFe+gcAOzkIuoBIb?=
 =?us-ascii?Q?12fXozbWlySskVa/Z0FtqWO3rDkDVQ1JhUAaPqbNMWEcU2ZVq7Lxd0dNTrrA?=
 =?us-ascii?Q?v7FjENhUvBxwAuVIjtPUdv1kccc1kmHIX/x2SBwIeXTVKD1Bb247UHRIM+qt?=
 =?us-ascii?Q?iuaSOgAdYgsEOsLWr5y0lT8sxQYmGcKqhOdSYqkh9oZJ6ZmX1QQShhbc7v2S?=
 =?us-ascii?Q?c4rX6mDcrEoWT+dBde/5TPSI7yjoKJbpvvr9HX3dFRF8Hs3UgLAPXsamG2m7?=
 =?us-ascii?Q?V7OZAkddZYzSB821wpL+fsOEXLtW+c9G60gMHlDjs0H/d4V1O8p+04Cukfwj?=
 =?us-ascii?Q?sbhNLr/TQVppcrJF/zxgj1qYgkgVNaNPVjky3OkEd4q2Myn7CrqT7lYslgsb?=
 =?us-ascii?Q?KMh/yw3XIC7beeOGxTI6s+i1ouvzewclAOH6d0v3OPZTJIbi6iannsIytukd?=
 =?us-ascii?Q?vlCoACWuAz86X/BvC0dZogL9AVfKtEYdJDJQDHvh6zeLy6RisDl5gZK3LmEB?=
 =?us-ascii?Q?/cs5XV8ybxJJ7Qfkf/AYY3cQZTef2k17WK0HmL5ZV/e0FHM6Ln597BUhJTjL?=
 =?us-ascii?Q?I9VYInqTtB6HwGvcWcfDclsfaZMWN+x+b48veWUGe1fqG3tEcjEYmRs5abCd?=
 =?us-ascii?Q?6Y4GnLX/gCs4aZVrxAaY9vBpZ7fYnSvR5rh9cewkPgiFvpyZr+NE9zwdKnYn?=
 =?us-ascii?Q?KDpDSIGjRv0PgjrgLb+0pMSMAgEDpXF5ULNGIMbRrt0RYPiFknIHRzyu0hgH?=
 =?us-ascii?Q?/lbukP1kbOS80X3hcGqs/2/I5140FMsm5HOsPPg4AANKjXq46QmeAMNxLIB0?=
 =?us-ascii?Q?WpSSOpVZ9n/ZUYkVmgS/rZ5/6cisuI/kzvp0SWbm?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ecdb27a6-892d-4678-2db7-08dd6acb95c2
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Mar 2025 12:01:18.1643 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Eil7qQCyKz0kBrS6+8bnqDp9Eu5bp3uDRbTf7PTp7VTqi2GzfUiO+ERN7Wr9Ocub5J1kL4GLmTozfeGvoJPFlA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6094
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 24, 2025 at 12:33:22PM +0200, Jani Nikula wrote:
> On Fri, 21 Mar 2025, Imre Deak <imre.deak@intel.com> wrote:
> > Factor out from the DP AUX transfer function the logic to lock/unlock
> > the Panel Power Sequencer state and enable/disable the VDD power
> > required for the AUX transfer, adding these to helpers in intel_pps.c .
> > This prepares for a follow-up change making these steps dependent on the
> > platform and output type.
> >
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp_aux.c | 16 ++----------
> >  drivers/gpu/drm/i915/display/intel_pps.c    | 29 ++++++++++++++++++++-
> >  drivers/gpu/drm/i915/display/intel_pps.h    |  3 ++-
> >  3 files changed, 32 insertions(+), 16 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > index ec27bbd70bcf0..bf5ccfa24ca0b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > @@ -272,15 +272,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
> >  	aux_domain = intel_aux_power_domain(dig_port);
> >  
> >  	aux_wakeref = intel_display_power_get(display, aux_domain);
> > -	pps_wakeref = intel_pps_lock(intel_dp);
> > -
> > -	/*
> > -	 * We will be called with VDD already enabled for dpcd/edid/oui reads.
> > -	 * In such cases we want to leave VDD enabled and it's up to upper layers
> > -	 * to turn it off. But for eg. i2c-dev access we need to turn it on/off
> > -	 * ourselves.
> > -	 */
> > -	vdd = intel_pps_vdd_on_unlocked(intel_dp);
> > +	pps_wakeref = intel_pps_lock_for_aux(intel_dp, &vdd);
> >  
> >  	/*
> >  	 * dp aux is extremely sensitive to irq latency, hence request the
> > @@ -289,8 +281,6 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
> >  	 */
> >  	cpu_latency_qos_update_request(&intel_dp->pm_qos, 0);
> >  
> > -	intel_pps_check_power_unlocked(intel_dp);
> > -
> >  	/*
> >  	 * FIXME PSR should be disabled here to prevent
> >  	 * it using the same AUX CH simultaneously
> > @@ -427,10 +417,8 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
> >  out:
> >  	cpu_latency_qos_update_request(&intel_dp->pm_qos, PM_QOS_DEFAULT_VALUE);
> >  
> > -	if (vdd)
> > -		intel_pps_vdd_off_unlocked(intel_dp, false);
> > +	intel_pps_unlock_for_aux(intel_dp, pps_wakeref, vdd);
> >  
> > -	intel_pps_unlock(intel_dp, pps_wakeref);
> >  	intel_display_power_put_async(display, aux_domain, aux_wakeref);
> >  out_unlock:
> >  	intel_digital_port_unlock(encoder);
> > diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> > index 617ce49931726..3c078fd53fbfa 100644
> > --- a/drivers/gpu/drm/i915/display/intel_pps.c
> > +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> > @@ -571,7 +571,7 @@ static bool edp_have_panel_vdd(struct intel_dp *intel_dp)
> >  	return intel_de_read(display, _pp_ctrl_reg(intel_dp)) & EDP_FORCE_VDD;
> >  }
> >  
> > -void intel_pps_check_power_unlocked(struct intel_dp *intel_dp)
> > +static void intel_pps_check_power_unlocked(struct intel_dp *intel_dp)
> >  {
> >  	struct intel_display *display = to_intel_display(intel_dp);
> >  	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> > @@ -955,6 +955,33 @@ void intel_pps_vdd_off(struct intel_dp *intel_dp)
> >  		intel_pps_vdd_off_unlocked(intel_dp, false);
> >  }
> >  
> > +intel_wakeref_t intel_pps_lock_for_aux(struct intel_dp *intel_dp, bool *vdd_ref)
> > +{
> > +	intel_wakeref_t wakeref;
> > +
> > +	wakeref = intel_pps_lock(intel_dp);
> > +
> > +	/*
> > +	 * We will be called with VDD already enabled for dpcd/edid/oui reads.
> > +	 * In such cases we want to leave VDD enabled and it's up to upper layers
> > +	 * to turn it off. But for eg. i2c-dev access we need to turn it on/off
> > +	 * ourselves.
> > +	 */
> > +	*vdd_ref = intel_pps_vdd_on_unlocked(intel_dp);
> > +
> > +	intel_pps_check_power_unlocked(intel_dp);
> > +
> > +	return wakeref;
> > +}
> > +
> > +void intel_pps_unlock_for_aux(struct intel_dp *intel_dp, intel_wakeref_t wakeref, bool vdd_ref)
> > +{
> > +	if (vdd_ref)
> > +		intel_pps_vdd_off_unlocked(intel_dp, false);
> > +
> > +	intel_pps_unlock(intel_dp, wakeref);
> > +}
> 
> It took me a while to pinpoint what exactly I don't like about this
> interface.
> 
> And I mean the whole intel_pps.h interface is already really difficult
> to understand.
> 
> This flips the lock/unlock and vdd on/off logic inside out.
> 
> Normally you have functions for doing vdd or power or backlight, or
> anything PPS really, and they're either unlocked (assuming the caller
> handles PPS lock) or locked (the function itself takes the lock).

The PPS and VDD handling steps are dependent (PPS must be locked for
enabling VDD) and both are skipped for the same reason during AUX
transfers. So I thought it makes sense to move these to a separate
function and skip both based on the same platform/output type check.

> This one purports to be an interface for lock/unlock, but in reality it
> also does VDD internally. And that feels really quite wrong to me.
> 
> ---
> 
> These are a single-use interface that I think make intel_pps.[ch] more
> difficult to understand. I'd suggest checking how you'd implement this
> logic inside intel_dp_aux_xfer() *without* changing the intel_pps.[ch]
> interface at all.
> 
> Okay, took a quick stab at it, and unless I'm missing something it's
> super easy:

I still think it'd be better to have a separate function for both
locking PPS and enabling VDD for the reason I described above, that is
to clarify that the PPS state must be locked to enable VDD.

I guess the above could be done separately later in any case, so I can
inline the fix as you suggest.

> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> index ec27bbd70bcf..a5608659df59 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> @@ -247,7 +247,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
>  	u32 aux_clock_divider;
>  	enum intel_display_power_domain aux_domain;
>  	intel_wakeref_t aux_wakeref;
> -	intel_wakeref_t pps_wakeref;
> +	intel_wakeref_t pps_wakeref = NULL;
>  	int i, ret, recv_bytes;
>  	int try, clock = 0;
>  	u32 status;
> @@ -272,7 +272,10 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
>  	aux_domain = intel_aux_power_domain(dig_port);
>  
>  	aux_wakeref = intel_display_power_get(display, aux_domain);
> -	pps_wakeref = intel_pps_lock(intel_dp);
> +
> +	if (intel_dp_is_edp(intel_dp) ||
> +	    (display->platform.valleyview || display->platform.cherryview))
> +		pps_wakeref = intel_pps_lock(intel_dp);
>  
>  	/*
>  	 * We will be called with VDD already enabled for dpcd/edid/oui reads.
> @@ -430,7 +433,8 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
>  	if (vdd)
>  		intel_pps_vdd_off_unlocked(intel_dp, false);
>  
> -	intel_pps_unlock(intel_dp, pps_wakeref);
> +	if (pps_wakeref)
> +		intel_pps_unlock(intel_dp, pps_wakeref);
>  	intel_display_power_put_async(display, aux_domain, aux_wakeref);
>  out_unlock:
>  	intel_digital_port_unlock(encoder);
> 
> 
> Please let's not make intel_pps.[ch] harder to understand.
> 
> 
> BR,
> Jani.
> 
> 
> > +
> >  void intel_pps_on_unlocked(struct intel_dp *intel_dp)
> >  {
> >  	struct intel_display *display = to_intel_display(intel_dp);
> > diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/i915/display/intel_pps.h
> > index c83007152f07d..4390d05892325 100644
> > --- a/drivers/gpu/drm/i915/display/intel_pps.h
> > +++ b/drivers/gpu/drm/i915/display/intel_pps.h
> > @@ -31,10 +31,11 @@ bool intel_pps_vdd_on_unlocked(struct intel_dp *intel_dp);
> >  void intel_pps_vdd_off_unlocked(struct intel_dp *intel_dp, bool sync);
> >  void intel_pps_on_unlocked(struct intel_dp *intel_dp);
> >  void intel_pps_off_unlocked(struct intel_dp *intel_dp);
> > -void intel_pps_check_power_unlocked(struct intel_dp *intel_dp);
> >  
> >  void intel_pps_vdd_on(struct intel_dp *intel_dp);
> >  void intel_pps_vdd_off(struct intel_dp *intel_dp);
> > +intel_wakeref_t intel_pps_lock_for_aux(struct intel_dp *intel_dp, bool *vdd_ref);
> > +void intel_pps_unlock_for_aux(struct intel_dp *intel_dp, intel_wakeref_t wakeref, bool vdd_ref);
> >  void intel_pps_on(struct intel_dp *intel_dp);
> >  void intel_pps_off(struct intel_dp *intel_dp);
> >  void intel_pps_vdd_off_sync(struct intel_dp *intel_dp);
> 
> -- 
> Jani Nikula, Intel
