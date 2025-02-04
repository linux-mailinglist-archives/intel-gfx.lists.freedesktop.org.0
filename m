Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6112DA26DED
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2025 10:08:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06A0F10E2BF;
	Tue,  4 Feb 2025 09:08:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m/Uuf4H6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EC5410E2BF;
 Tue,  4 Feb 2025 09:08:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738660106; x=1770196106;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Gi25TnoPymAcShEegDzURm88XyeUkJ6qzGHgyKPhSrM=;
 b=m/Uuf4H6cE6cMm9RPyeKLU6ktEn8A2VH+0gZyUMwuXgxHOrVx3gQsccl
 ymSNvhlYljd8RXo+DonpLS2jXYQ/Y+UZYHHZORy/fVrzZHFiVddMzRvWo
 xm3xc4YtqDregDBHs8qMEJ9Y4O67bC6ktS9U5F7pVHBL+YFg6McLfNyQg
 vJZC5F1SyYIqx3KPV49Odsksy5f7sere3sIinUpqOfADI+bNXImLf3yTd
 Q8Lr5JSdIAg3rnwIaSpItCIyfthsbyC+3NAEEJKAC4m91InLzrVsYaIph
 XB8QnzJXCCeJBwEvlPChjbrODEH6fAohfEKPWNOI9REacHaHCNNcaIDtz w==;
X-CSE-ConnectionGUID: KfvyUc3PTuSM5htpxTNKVw==
X-CSE-MsgGUID: 7N3ePmfCTH+tvl9Ou11rbg==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="39278887"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="39278887"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 01:08:25 -0800
X-CSE-ConnectionGUID: DXskLADMT2aIfrleQnGEcw==
X-CSE-MsgGUID: 9LxNDVPLTz2ajQnNd9lMBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="115540023"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.139])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 01:08:23 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 santhosh.reddy.guddati@intel.com, jani.saarinen@intel.com
Subject: Re: [PATCH v6 3/7] drm/damage-helper: add const qualifier in
 drm_atomic_helper_damage_merged()
In-Reply-To: <20250130210027.591927-4-vinod.govindapillai@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250130210027.591927-1-vinod.govindapillai@intel.com>
 <20250130210027.591927-4-vinod.govindapillai@intel.com>
Date: Tue, 04 Feb 2025 11:08:19 +0200
Message-ID: <878qqm6prw.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Thu, 30 Jan 2025, Vinod Govindapillai <vinod.govindapillai@intel.com> wrote:
> Add a const qualifier for the "state" parameter as well as we could
> use this helper to get the combined damage in cases of const
> drm_plane_state as well. Needed mainly for xe driver big joiner cases
> where we need to track the damage from immutable plane state.

Needs to be sent to dri-devel.

>
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/drm_damage_helper.c | 2 +-
>  include/drm/drm_damage_helper.h     | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/drm_damage_helper.c b/drivers/gpu/drm/drm_damage_helper.c
> index afb02aae707b..44a5a36806e3 100644
> --- a/drivers/gpu/drm/drm_damage_helper.c
> +++ b/drivers/gpu/drm/drm_damage_helper.c
> @@ -308,7 +308,7 @@ EXPORT_SYMBOL(drm_atomic_helper_damage_iter_next);
>   * True if there is valid plane damage otherwise false.
>   */
>  bool drm_atomic_helper_damage_merged(const struct drm_plane_state *old_state,
> -				     struct drm_plane_state *state,
> +				     const struct drm_plane_state *state,
>  				     struct drm_rect *rect)
>  {
>  	struct drm_atomic_helper_damage_iter iter;
> diff --git a/include/drm/drm_damage_helper.h b/include/drm/drm_damage_helper.h
> index effda42cce31..a58cbcd11276 100644
> --- a/include/drm/drm_damage_helper.h
> +++ b/include/drm/drm_damage_helper.h
> @@ -78,7 +78,7 @@ bool
>  drm_atomic_helper_damage_iter_next(struct drm_atomic_helper_damage_iter *iter,
>  				   struct drm_rect *rect);
>  bool drm_atomic_helper_damage_merged(const struct drm_plane_state *old_state,
> -				     struct drm_plane_state *state,
> +				     const struct drm_plane_state *state,
>  				     struct drm_rect *rect);
>  
>  #endif

-- 
Jani Nikula, Intel
