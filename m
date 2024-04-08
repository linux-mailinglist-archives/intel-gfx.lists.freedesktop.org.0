Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED67B89CD30
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Apr 2024 23:08:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 060E511287C;
	Mon,  8 Apr 2024 21:08:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b3drLPSh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BED9810E795;
 Mon,  8 Apr 2024 21:08:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712610481; x=1744146481;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=UsArmlxfNy9Vb4LxWefqI8x9ktt305kW/PW3DF703N4=;
 b=b3drLPShjl0sOhA0/JDj3C8iZ4VXtVrcPlaTuTuxEAnWwDJhgSt7xctf
 JvWo4J4xoswQxyKmuPMPsAFpG2nkUN6n2aIouzFeSs+f9MQJwbNvVFjpP
 wzaCvgozoCJoAAAJjew44FywsjArLzbLW5c8FZO8RT9s8G+ETMeHpO26U
 7BzYQWGz0M402VTGYhyqTHdnPhAL0CAsSFvAGY0TWSMSCf/0fvRF1WLJS
 CvWw4uyKBb1xzln0Zbwuv7Zav3SRhCSEwZCnQVeOCaG4GrA6H6PQ0QAnO
 cBMVGyaGK9fHJZC9s+3hyUvtocIT7Df3rY7RMa5QXV36s3U1V+kS/TYkt g==;
X-CSE-ConnectionGUID: WIU6ufyYRb6yQ6vfa9bUZw==
X-CSE-MsgGUID: qr1y446+SU+AnwG6HgHzdw==
X-IronPort-AV: E=McAfee;i="6600,9927,11038"; a="7763956"
X-IronPort-AV: E=Sophos;i="6.07,187,1708416000"; 
   d="scan'208";a="7763956"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 14:08:00 -0700
X-CSE-ConnectionGUID: L8vg2L3jTcuQBv7Y7uMtSQ==
X-CSE-MsgGUID: vev36C4HTtWWBSCMWAZumw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,187,1708416000"; d="scan'208";a="19958947"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Apr 2024 14:08:00 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 8 Apr 2024 14:08:00 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 8 Apr 2024 14:08:00 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 8 Apr 2024 14:08:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RzJo4AcJsxEBhWgGAX8IPTilRvzyC+It/jj7tCUtALVFgAqvCVOH6NuJ7lKMkBGAsp5xwToo5Y2qtYtV/8n5+oeL3bLCWArgne+ks0Jnv1KHEE8fMddkxF2Aw/n9bmXBl4TOL7e7wl44yj4cFRAKfy60LZGyR4jwwX/n2WH4iSweUbO9/wZ2ql5YnaR0iiIltkCnhH55SJiDAvMbIJweVTJ+FOuVRljjF9dJ1qzZ2Ns8+30ZG1wZ1ZQQ3oV37ygu3gq8IdisTzHnYQw1u7y9skuZouGxxQVKMf3cEtSlRJE23AxuAJg5zmxURdjjPzunUSMdiknaRccP4kudib4ezg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Sn71RKDfXdJ+ZG4WjifQteR1X7+jvcfcDNT7nEpAtto=;
 b=MlYf07Uh7YNkoepMj7D2e0F/qfI67epbFomS6l8S2ACwZ54nFAr2ONaGBvd/WSoagpMGymAiVf331/be1f3dajnKhh8SjHglplJ4vVSOplPkRBur7aPMcxoV/0i5l9KY8Kr9CR5rdTRglWAEjUS7vQFy3yEYMgnjU3/NB9Is5rpaHpVrku0mGRTU5GCmp3lSrGhP+VVLLhPrVLTU6XLwzzV+ut0gfGCi4v+ewm8oi0wtyX7wNWeEDdPFuXF8Bzi6SK6oT8gLVzAEnMTqNpAUoUD2HJs8q7ZUEY/gPBNtsmyrJNscQstRxxeNJmy/sQAacE129hcg7dzpat38o2qRxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by IA0PR11MB8302.namprd11.prod.outlook.com (2603:10b6:208:482::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.25; Mon, 8 Apr
 2024 21:07:57 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257%4]) with mapi id 15.20.7452.019; Mon, 8 Apr 2024
 21:07:56 +0000
Date: Mon, 8 Apr 2024 16:07:53 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 6/8] drm/i915: move de_irq_mask to display substruct
Message-ID: <26ceyie76cigfzvfs37khj4bpf5ofsqedag6bktuejrthydywv@dkcmxwbulfft>
References: <cover.1712599670.git.jani.nikula@intel.com>
 <733fc96df9153c6af8979d9b23d3aa3734937b56.1712599670.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <733fc96df9153c6af8979d9b23d3aa3734937b56.1712599670.git.jani.nikula@intel.com>
X-ClientProxiedBy: BY3PR03CA0017.namprd03.prod.outlook.com
 (2603:10b6:a03:39a::22) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|IA0PR11MB8302:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1q/8vfGezTJsyY2p2nUP6LGKVBg1LmtqukwZvZEGx4hGggaBh7ULOJADZ2HrGOvoji+/CbV+pS2Umg9a23Al8okQuon+SaYMYSlUkGxI879FkHRDmb61ED7X3pSmUAGRhB4sxsP16OrOWXqF74kNoS5sOLRW473rMVoV22dc05q6Ex0DBU30/x3H+6ic48IG3iCybQU05SpkxmvIMdrQWkJzPMvPejZIixt1iUPG6R+3z12Zo0XtgE1/xn6zSJKvjMqHLYXUPqmqTUPCQIqZ1EUkjgF0Dc8xuKkDiceOO8nIqHEtQeIcNi0NBngR72nVuY3uFDKrHUxCeJ0+tyfBL02/F1poT7BCYd6jbeq7ys5xqn+erKTltTJVDjO9Y7qL0x8IBANN3QSf7HieP/6KB+4AympWN0Px0XT+iLqyUakcrYosYWFvD0/LHzr14wJsrEmsTqIt+tgyQbPmgHyts+pQHv8wCPEL4ik9ojwm9RGfjh6ryZqRKyBM2jcu4jiph4Tfo4mcYgtc4t29LPOfuwO6NfEVUys6H47GXzP/OmrdnJcvM2/7J4gfBbwpymuL43kztUzuuyoBnoVJS1gwvhchCcXl6UnYLB7JxwQbijBOjoyUlyZJopTm8IOWd0pWkYbUhZzi5ystI46AxC0AOP17oaZ0BqYK/l9UqyVaAoc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qcXtAWp1hvE3p2XpflTZciH/BCznat7qbpN7umsxTEyD8Fx9jeFpQjWyS7WK?=
 =?us-ascii?Q?4aWr5gx/CrdfvPZAj0jA4aCiJZdAH9VUjXDmOjp3VhweH55wn9JD6UnAlN0f?=
 =?us-ascii?Q?xoE0Qqc2A0g8QSEQ2sHjglCcPm1ktDt31DrGLNiymKwbIrLfX6z/MYWR30kg?=
 =?us-ascii?Q?mUu/oVyz/oQj7yIYHBhBITyVI8bOMVJK94D4Khup4zLqEq6wzavtwFLPn4Vv?=
 =?us-ascii?Q?KdaEvFEStHP0PEcVARwLxlNH1xYpk2rX7L2IuAVlRgPbzSJHHHcs2oEwkJxA?=
 =?us-ascii?Q?Qp5j8P3foyLL5qmAzBUaSfhaV0LVwPHjAjVk8zElR5dFJB+/ewzI42LRxPNd?=
 =?us-ascii?Q?gnluYJRCLiNclWs1++7y0oNSDxSXoeNd1qJDsrMsfggPX4x+ib8fh3imj1Sb?=
 =?us-ascii?Q?519cmYBN/3vhmRUxJ4ev9yASAg15/FSxjpUhSoq4HkqPLCms1gInV7h4I8JV?=
 =?us-ascii?Q?+bM+PVkvoVuoKuIt0ws38My88sJjUTsZi00NiySqgVoYBTQI6MrDjsNrr0LH?=
 =?us-ascii?Q?IJnXmv+yvoDa//5/O2vD11nEYqywygAku2js6zS+q6rpPq49SEUBjuXew5wM?=
 =?us-ascii?Q?Lr+rtZD5tvWSOVbDADT0Efzs1W7P+IOIeQHV391858V/pv+LwIkb16BJA+Ov?=
 =?us-ascii?Q?a6+NkPUMHz6Li6668J0g4ZgeE9xy7ewEOMIM5IHK+ze82/H9oOZ1poxU17jv?=
 =?us-ascii?Q?6IBrUrzWUEiCZhwYHQlhRo6XJxSBPSeaKbdXgr+CL16S+NEYDvGcC2sBj3np?=
 =?us-ascii?Q?+5qBF7Bh39ZmW+1rMkXD+20Ya3c9MDc9xuSJBCCCRs0IhemPU1bsgkf8pjdZ?=
 =?us-ascii?Q?PJhB0wBeXzCJInkUW9Jve46wUil50pvJ4YUkNVVJhEOD6MDF8kzFe8X7rIA9?=
 =?us-ascii?Q?KhvwLVpBEvvHcxWI6IJuanDm/dZIfxMQI5bRjLgaFQ6QWfFZcmR/WBpOz94N?=
 =?us-ascii?Q?0hRmeAJ3lj5Pa6+G7qm1/KMPGtEhnELzknyK9NHl0/ueR3IdXwDu4wnMTWfT?=
 =?us-ascii?Q?7KBBBV3WXR+rqINyLmZ/F0qyAs32hmGjYVDK2IIMjRZvriUTZ84xhVFF5JcA?=
 =?us-ascii?Q?FX2KZe4y+Fsl/G0O9DDubWlD6IcXneKa1VBnCgSLE/MbQ/YNF1AAqily4FoU?=
 =?us-ascii?Q?xIfT9t6A0gt0EP3llDrZ2R1nUJOr6QDC5zubQN7QMVdf9u6/dl++KGY89mIw?=
 =?us-ascii?Q?tBgE+saxQQZ96PVjKFyIfI8uab7p0cmQltDhIHZgQauBXPjtgDp8pOCl9a+r?=
 =?us-ascii?Q?yLgq4PRHTt9kYJlF+Vf8GZIVLg/6KHihvoZQtlIAvwwrFOOMc0FdgVZrCjcC?=
 =?us-ascii?Q?DPt+CFakZdL7jnfJ6k5qLOBBF3c8h0XfnaEZOfhIKswRaK8CBkr+n7uhX62F?=
 =?us-ascii?Q?w3TSp7gLdxzNu2eujZdYWXWuxnUpG90BOlhWIpAkikOC2qfDFaBXxhh2Kt6a?=
 =?us-ascii?Q?jaWRJ2ibLKBM6WOJ6NWs7c4l6tNdO67KnOlYPYcYTv27S/ICfxH/LAIWCNxV?=
 =?us-ascii?Q?S7iFuyMkUvh+4NCzMUQBsS9DmWrFx2MOTgW94ncxNFLt7kXYKrcNZHweYc35?=
 =?us-ascii?Q?hbRR9mHCtVyaTD8AXAdNPexYO+T38T1yfxbpfckhxWgyTx1QurF8nnGVnH3p?=
 =?us-ascii?Q?GA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 811e29a5-3c78-4f6f-08ac-08dc580ff638
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2024 21:07:56.0070 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: w1q7UXdICcZotE9XAkSqvYF2f7oL/IFPHkXhq7q32pT5lK3142AAwrvk2doeJEf/ay14cT/kJQeBtSOFXNoySw766RMUUIxF2QgF8zW/RkQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8302
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

On Mon, Apr 08, 2024 at 09:08:41PM +0300, Jani Nikula wrote:
>The info is related to display, and should be placed under
>i915->display.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>---
> .../gpu/drm/i915/display/intel_display_core.h   |  2 ++
> .../gpu/drm/i915/display/intel_display_irq.c    | 17 +++++++++--------
> drivers/gpu/drm/i915/i915_drv.h                 |  5 +----
> drivers/gpu/drm/xe/xe_device_types.h            |  7 ++-----
> 4 files changed, 14 insertions(+), 17 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
>index 68aee44b4822..7a70b162b015 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_core.h
>+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>@@ -452,6 +452,8 @@ struct intel_display {
>
> 		/* For i915gm/i945gm vblank irq workaround */
> 		u8 vblank_enabled;
>+
>+		u32 de_irq_mask[I915_MAX_PIPES];
> 	} irq;
>
> 	struct {
>diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
>index e9fcdac90efd..9b9548ae9797 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
>@@ -117,13 +117,14 @@ static void bdw_update_pipe_irq(struct drm_i915_private *dev_priv,
> 	if (drm_WARN_ON(&dev_priv->drm, !intel_irqs_enabled(dev_priv)))
> 		return;
>
>-	new_val = dev_priv->de_irq_mask[pipe];
>+	new_val = dev_priv->display.irq.de_irq_mask[pipe];


is this a good name though?  I'd expect to see something like
display.irq.mask in the code.

Lucas De Marchi
