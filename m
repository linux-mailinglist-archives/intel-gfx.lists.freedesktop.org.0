Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B29028A85F6
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Apr 2024 16:32:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF36A1135B9;
	Wed, 17 Apr 2024 14:32:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MaheUPSy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62ACE1135B7;
 Wed, 17 Apr 2024 14:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713364328; x=1744900328;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=PsUB8P9NNxtOZFM1bPiDeIhMG6VZt8QUlkWah7yzx/o=;
 b=MaheUPSy2DP2HlgC+QUs5QaKMJh/QIpXWGHFcMd1ZaNdPbgWqPUsC9Ry
 C5zug1YQGUGSsFWP2jKtM2Ou2vBZJw1ZI2QoRCWafFJb104sDT4Rnx7cB
 55ZSUp8HhUcG80fLlTi4qpSpyF6AkTf7hk7pHoIZXmtLQdIPTxIkfNrDM
 mZcDclMon00kTpUSaWbIEPaaKLvabbgJHiqWNCpQki4vyAESomggeE9lv
 JXbR+uIbch4+914mJIvcsrfhJsYtECGIPm8grd4yI2fYKPkxWuh2XlUR3
 7kY5Whb6bW73pahTOC9hWuexKnQ5zYjfWpLen1U9lCVSwsRJC3NtXVCYg w==;
X-CSE-ConnectionGUID: VgVRHzn3T86JE9gFs1vnYQ==
X-CSE-MsgGUID: 6tUdElTkSKStLq+Rap2Irw==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="8722496"
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; 
   d="scan'208";a="8722496"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 07:31:58 -0700
X-CSE-ConnectionGUID: 3p7zJvtLRLm2oZNOd3HjDQ==
X-CSE-MsgGUID: QK9j67o8QFKye3OaEB2OFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; d="scan'208";a="22695451"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Apr 2024 07:31:58 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 17 Apr 2024 07:31:57 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 17 Apr 2024 07:31:57 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 17 Apr 2024 07:31:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U/KbZS/8tk//YG8vLGy7WPcpN7jbhdHowPG9qWUaGIrWiYkyGk3uwPELZDtfiNd0PLTupqVTsz7fVGeTm5hARsNBDQqPmq0qbMp2D0I5PM3zBCKuUlP5Nky2usxjjbJ3TYN+ny4jNLO9kNeD/gzAMNubkWysuJ3nwJgZ5v2uFRwYwr+fdKbmAk2hNU1N9JRh2nxhEzoSfN6snzvkrDhsX9UlWXezMDRMY4pztGTtnyVSKwJZFUViOJegR0KbMuyXsR0onI6eFJOxkRmnM+WksanV5MWvc05B9xCDmKhN0KPRKd3PQXwgsvhCugoX8wxQBnGSXmXaE+7ZSoRu2Qyn0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J+Kr541oU0rh57qNue9OT7do2h8Ml2/myW7SQmDaLvE=;
 b=KvbEwXUWfiaFoQgeaeQ3u8ttjHK+cJEAPEcVOpMxfly0IrJwToBRNoGjdtH+xerQVH6ZrCVCGeqEEltEonEQ8CejnLp2RqWXWSnIg/xLu7Ug46gnJ8NnIbv0kq1X4ROCaZ9dmCiP50k6Rps6nzERQ4C87Ve/gByeMKM6BulCNeF0TCLZ71L+g3/zr+pJGGVlJEv/AYbPC3w+CQeY0injMbfLhIh4LLeKZOjKdIsAu7sBhU0HVdyUAJWYoFPe8DlDimkMO8Z5/d08ppaVHsZBFs5ihGm6da2kuYi4zYUfc6LJqc0lPDmDfGQqnqVUFs/ifa3K/tPztFRHjBUebC2Z1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH7PR11MB6793.namprd11.prod.outlook.com (2603:10b6:510:1b7::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.39; Wed, 17 Apr
 2024 14:31:54 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7472.037; Wed, 17 Apr 2024
 14:31:54 +0000
Date: Wed, 17 Apr 2024 10:31:50 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Luca
 Coelho" <luciano.coelho@intel.com>
Subject: Re: [PATCH v4 9/9] drm/i915/dmc: use struct intel_display more
Message-ID: <Zh_dVoy11dTY1IaM@intel.com>
References: <cover.1713358679.git.jani.nikula@intel.com>
 <06bc9fd9d0472e899bd9d50f3b10a6066c1a0238.1713358679.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <06bc9fd9d0472e899bd9d50f3b10a6066c1a0238.1713358679.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0292.namprd03.prod.outlook.com
 (2603:10b6:a03:39e::27) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH7PR11MB6793:EE_
X-MS-Office365-Filtering-Correlation-Id: bb94ee39-6f03-491f-e709-08dc5eeb20db
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XrUhShcQBnk4jA1fLydvLmbhOxYKDsh4cNr57aFfcGwJTIe0FV9Cttj4rbUZ69mqpmfIuUKAUC87QSj8ozJBGY16fps05WIC5SNq9eF1JEkaScEFfoDNVWA7WbbcB0E+h9fh2I5BVZCZnr6feUCo3gIRDF90zwgzN3dz41bNgu5i1VQ7V4R6iMuVxY1NQXCCGzz0kqVyB+ocrzJGaEWX3eTgjyweyCVGnMJltWemaIAZIhgVKssDrxeuqQyZyAW1PA9sDA0GjAShybfN8oWD0vYHjty50Ix/qCJhVQ5BfmrieVk+8Mv/NerBjCQsRzRKsQDXP+moKmUEBIA0hMNc92SaPbxcXOyS9ComAYeShszyHvB1LUwn4/vh8ZQPcDwAJEo5zNkmOUAC97CC+1sALrAMsohqObCWREvKFQfSBx6LiugLXwIxxhDTQds0dsDVE2dysv2+RPnLw4Hl6/VusNyEEcDuSdSZJtWgjOnQzmxQ0enPiRdDNn4ybz33VxpgE+9Zb42iidNd52KSrAtzxW534aEGfyJWC2UUCmTo1r3tn92HwCxUD8vMUSdpjSdGUFUv0bR3zUWiCSj/C0HirM/+AbVAZgZcPIoA/J8u89Hzi00NnpsVaxIFtrEeHK4zV1pOaJP2fNm+4X7VFr+EvdZ2bhtuOUqLbU7BkvfoLAU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?WrtHodPmsJKmMJHbSv/t+TgeTACQx9onyFKdbmwZOOqJjfpLmiwwO//Joanp?=
 =?us-ascii?Q?iZYoKhmQvQUG0gBEs9CnP78FfhsNr8l6VHTxaISGdLHs+SrV3UMNLki9A81L?=
 =?us-ascii?Q?hl7gzoYaBbN2pU7zm6FIGVCC4pipybsudZLj3Eetz6rETez+mfOclMU+PIOR?=
 =?us-ascii?Q?/uzRxC0JrpWy0lBNJ6alh0FKMHoWjnOV3Qb6Eaobaggwzce7vWBVCIeQrmrf?=
 =?us-ascii?Q?Z/2hdVV7TSmefuCJisDU/ZYK84h5FRyZWQORnq7GDwwyE2aV2B9WGTpw9KOa?=
 =?us-ascii?Q?mkGXiF68fRKpR8e0WiYISx7t0X+4vtuQWGqOHKMVFD+ebpDvc00+jN9zpKao?=
 =?us-ascii?Q?JPT6OpbQM6Uw2SUt3K52IO/+34hXgCCrstgK0S8m49aO28awTtJd810jQ32o?=
 =?us-ascii?Q?jpHB0uw96I2ioScpAvSUoRXuRhsb5uCjphfAodh2y4OwzM6wXrNwG41x/AOq?=
 =?us-ascii?Q?iSJeds1d1LjgK+zlNtN7uadgfXLidQ+7MQ2XD7kDPtgixJF5bZoYLuuamWiH?=
 =?us-ascii?Q?Y2UPa6NTrnt/v/BJvGAz6GSrdRhtr4JqPd9DY7Jxm2lCPaLnl1wDk9Za0+su?=
 =?us-ascii?Q?e6Sxm0lK6m3W4BT6awTi27DB6q1+/3HtSngRRnGMW5U4avOEsDwWgZeRvVZS?=
 =?us-ascii?Q?qwAz+9Wj7gNx9BouUxQmkDgh1sUflm+1xntdQfCPZVTCOE2/kPsre1b+E4iE?=
 =?us-ascii?Q?ped/+VqqnBejbbO43za7rwVpMjjsI1xB5QE5bC8u49znMMyvnW6sIXxQC6/G?=
 =?us-ascii?Q?2XLstCz/NgopVlJ2SE5zMx481e9MW57ygFKsfQGRdC0IsL1NJr85RcpYvFCh?=
 =?us-ascii?Q?dXLD3chMiBRP1XxK+f4nyzsaE27Hh3sKomuvw7KiAq65+PPzM+wxIlnIP1Xd?=
 =?us-ascii?Q?SLlOfdwCAz+ZFVJdgj3EPPRW10x2hdCTEAQA1HjdJNh6IoqAqbZBFj7HOC7o?=
 =?us-ascii?Q?IF920N9otSS5o01AxFy6WLW9Rzavg6AN0xB8J5WXzmtgYIW5M3WLWnzc4Y9E?=
 =?us-ascii?Q?F7YfgsNSxh58xG654dSlb1KZIRvXvHtJSipLxxblu0W6uQnf+yPMd67jBn6y?=
 =?us-ascii?Q?GRxH/D3xXxuGCzN4g0N2mVR/V4L9WlnPwxgmlv0zjwRekNB65XtubkucOxcL?=
 =?us-ascii?Q?fuO79LuLM0JSjvgZtJgqSUOiQkMmXIeH9eVbE72cQgHRKEHDeXRUaJ1nRZrd?=
 =?us-ascii?Q?Sbu0LYkAKg0E4fKloCilDB6yrOpfvqpOMKqNb65ZSGRAadsQ0VgVsMNbi16R?=
 =?us-ascii?Q?gAIvfEwR9LNdpYZzWMbLw2ytye7MpdD5qSM6j50RLClc1wc9KKg3Ezpc2cOJ?=
 =?us-ascii?Q?NxQMDEUFEWqpAHOYrzq0Cw/Nba53liboEs4z57AqXQUAY6JFqiNUFrdMV5hv?=
 =?us-ascii?Q?Cy23SuDp+NQSnlFydLTtB6JJpMiA2dQttEQD6KPTjMDpOOqprXZcOUA0DAW/?=
 =?us-ascii?Q?bDYGcGCyEiCWyOXiGWL8XHK/tV39a69sjHysgQysxFt5/tFF8ENC/KZB9CoJ?=
 =?us-ascii?Q?7pXE6XV6q5fLASXgvqEAKPmCfaDlpqAhmUSuIPO5H1KisjYno2b1IMw2WlG4?=
 =?us-ascii?Q?ePIQCBLczHdG2PhxOZR1e/GH94PX/aNx3fDhJ/BO7Y1JmE3HKq5tXb2LeVCe?=
 =?us-ascii?Q?sA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bb94ee39-6f03-491f-e709-08dc5eeb20db
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Apr 2024 14:31:54.4259 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ECl09snmYHjXQ3MpIIKbroIJesbosePEiZMNfi2Cyg/fjPj3Z4EeBtcneFkXjFvMu5z7O3cuH25t78KUEAx55w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6793
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

On Wed, Apr 17, 2024 at 04:02:47PM +0300, Jani Nikula wrote:
> Now that the intel_de_ functions and DISPLAY_VER() accept struct
> intel_display *, use it more.
> 
> Cc: Luca Coelho <luciano.coelho@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dmc_wl.c | 24 +++++++++------------
>  1 file changed, 10 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> index e79c45e36722..d9864b9cc429 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> @@ -66,8 +66,8 @@ static void intel_dmc_wl_work(struct work_struct *work)
>  {
>  	struct intel_dmc_wl *wl =
>  		container_of(work, struct intel_dmc_wl, work.work);
> -	struct drm_i915_private *i915 =
> -		container_of(wl, struct drm_i915_private, display.wl);
> +	struct intel_display *display =
> +		container_of(wl, struct intel_display, wl);
>  	unsigned long flags;
>  
>  	spin_lock_irqsave(&wl->lock, flags);
> @@ -76,9 +76,9 @@ static void intel_dmc_wl_work(struct work_struct *work)
>  	if (!refcount_read(&wl->refcount))
>  		goto out_unlock;
>  
> -	__intel_de_rmw_nowl(i915, DMC_WAKELOCK1_CTL, DMC_WAKELOCK_CTL_REQ, 0);
> +	__intel_de_rmw_nowl(display, DMC_WAKELOCK1_CTL, DMC_WAKELOCK_CTL_REQ, 0);
>  
> -	if (__intel_de_wait_for_register_nowl(i915, DMC_WAKELOCK1_CTL,
> +	if (__intel_de_wait_for_register_nowl(display, DMC_WAKELOCK1_CTL,
>  					      DMC_WAKELOCK_CTL_ACK, 0,
>  					      DMC_WAKELOCK_CTL_TIMEOUT)) {
>  		WARN_RATELIMIT(1, "DMC wakelock release timed out");
> @@ -111,7 +111,7 @@ static bool __intel_dmc_wl_supported(struct intel_display *display)
>  {
>  	struct drm_i915_private *i915 = to_i915(display->drm);
>  
> -	if (DISPLAY_VER(i915) < 20 ||
> +	if (DISPLAY_VER(display) < 20 ||
>  	    !intel_dmc_has_payload(i915) ||
>  	    !display->params.enable_dmc_wl)
>  		return false;
> @@ -121,11 +121,10 @@ static bool __intel_dmc_wl_supported(struct intel_display *display)
>  
>  void intel_dmc_wl_init(struct intel_display *display)
>  {
> -	struct drm_i915_private *i915 = to_i915(display->drm);
>  	struct intel_dmc_wl *wl = &display->wl;
>  
>  	/* don't call __intel_dmc_wl_supported(), DMC is not loaded yet */
> -	if (DISPLAY_VER(i915) < 20 || !display->params.enable_dmc_wl)
> +	if (DISPLAY_VER(display) < 20 || !display->params.enable_dmc_wl)
>  		return;
>  
>  	INIT_DELAYED_WORK(&wl->work, intel_dmc_wl_work);
> @@ -135,7 +134,6 @@ void intel_dmc_wl_init(struct intel_display *display)
>  
>  void intel_dmc_wl_enable(struct intel_display *display)
>  {
> -	struct drm_i915_private *i915 = to_i915(display->drm);
>  	struct intel_dmc_wl *wl = &display->wl;
>  	unsigned long flags;
>  
> @@ -152,7 +150,7 @@ void intel_dmc_wl_enable(struct intel_display *display)
>  	 * wakelock, because we're just enabling it, so call the
>  	 * non-locking version directly here.
>  	 */
> -	__intel_de_rmw_nowl(i915, DMC_WAKELOCK_CFG, 0, DMC_WAKELOCK_CFG_ENABLE);
> +	__intel_de_rmw_nowl(display, DMC_WAKELOCK_CFG, 0, DMC_WAKELOCK_CFG_ENABLE);
>  
>  	wl->enabled = true;
>  	wl->taken = false;
> @@ -163,7 +161,6 @@ void intel_dmc_wl_enable(struct intel_display *display)
>  
>  void intel_dmc_wl_disable(struct intel_display *display)
>  {
> -	struct drm_i915_private *i915 = to_i915(display->drm);
>  	struct intel_dmc_wl *wl = &display->wl;
>  	unsigned long flags;
>  
> @@ -178,7 +175,7 @@ void intel_dmc_wl_disable(struct intel_display *display)
>  		goto out_unlock;
>  
>  	/* Disable wakelock in DMC */
> -	__intel_de_rmw_nowl(i915, DMC_WAKELOCK_CFG, DMC_WAKELOCK_CFG_ENABLE, 0);
> +	__intel_de_rmw_nowl(display, DMC_WAKELOCK_CFG, DMC_WAKELOCK_CFG_ENABLE, 0);
>  
>  	refcount_set(&wl->refcount, 0);
>  	wl->enabled = false;
> @@ -190,7 +187,6 @@ void intel_dmc_wl_disable(struct intel_display *display)
>  
>  void intel_dmc_wl_get(struct intel_display *display, i915_reg_t reg)
>  {
> -	struct drm_i915_private *i915 = to_i915(display->drm);
>  	struct intel_dmc_wl *wl = &display->wl;
>  	unsigned long flags;
>  
> @@ -219,10 +215,10 @@ void intel_dmc_wl_get(struct intel_display *display, i915_reg_t reg)
>  	 * run yet.
>  	 */
>  	if (!wl->taken) {
> -		__intel_de_rmw_nowl(i915, DMC_WAKELOCK1_CTL, 0,
> +		__intel_de_rmw_nowl(display, DMC_WAKELOCK1_CTL, 0,
>  				    DMC_WAKELOCK_CTL_REQ);
>  
> -		if (__intel_de_wait_for_register_nowl(i915, DMC_WAKELOCK1_CTL,
> +		if (__intel_de_wait_for_register_nowl(display, DMC_WAKELOCK1_CTL,
>  						      DMC_WAKELOCK_CTL_ACK,
>  						      DMC_WAKELOCK_CTL_ACK,
>  						      DMC_WAKELOCK_CTL_TIMEOUT)) {
> -- 
> 2.39.2
> 
