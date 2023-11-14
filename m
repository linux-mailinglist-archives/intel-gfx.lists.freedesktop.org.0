Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D0E37EABFF
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Nov 2023 09:48:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 538C510E1D3;
	Tue, 14 Nov 2023 08:48:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22E2F10E1D3
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Nov 2023 08:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699951696; x=1731487696;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=UpyYbV0Re4uAtQhKP+Tm+igKXWaRxGo0d3ZKbrOp76I=;
 b=oBC4BkOI0NOyUYuoljbU1Wyq4R8dRckCpoJi3nd502F2YUjLlbIGh4E/
 PFanWFbYb9Zcq4TTKQPznIfr4so7W/hpnuvr3440txuoApkaiMymiitaL
 6gYJRiKTvUI4OcoOoz3mUnNKlC1GY11Lj4lL6P+3JMWk2oUXCRWjl6/E1
 gAH687CX9sbHugIuzwwZkNJJpXBsxJ+Sj5SE5uZtBbdzHkJOcG4hajosm
 Kgw5Q9Phrg1PMTQMOQH64FLl6D2jvPRByIvWoJ+qYrkWmFbIxoOH/jseW
 Kk1SQEm4w+o/hP0hPdMWGVXDx03roAoNsT+8hij7XKbtdEX9E0MVwg1QN w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="389471567"
X-IronPort-AV: E=Sophos;i="6.03,301,1694761200"; d="scan'208";a="389471567"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2023 00:48:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="758103751"
X-IronPort-AV: E=Sophos;i="6.03,301,1694761200"; d="scan'208";a="758103751"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 14 Nov 2023 00:48:13 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 14 Nov 2023 10:48:12 +0200
Date: Tue, 14 Nov 2023 10:48:12 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Message-ID: <ZVM0TAMROaONQWEF@intel.com>
References: <20231110082455.3061913-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231110082455.3061913-1-jouni.hogander@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Remove dead code around
 intel_atomic_helper->free_list
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

On Fri, Nov 10, 2023 at 10:24:55AM +0200, Jouni Högander wrote:
> After switching to directly using dma_fence instead of i915_sw_fence we
> have left some dead code around intel_atomic_helper->free_list. Remove that
> dead code.
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  | 20 -------------------
>  .../gpu/drm/i915/display/intel_display_core.h |  6 ------
>  .../drm/i915/display/intel_display_driver.c   |  7 -------
>  3 files changed, 33 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 3effafcbb411..387acf21b794 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7086,24 +7086,6 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
>  	drm_WARN_ON(&dev_priv->drm, update_pipes);
>  }
>  
> -static void intel_atomic_helper_free_state(struct drm_i915_private *dev_priv)
> -{
> -	struct intel_atomic_state *state, *next;
> -	struct llist_node *freed;
> -
> -	freed = llist_del_all(&dev_priv->display.atomic_helper.free_list);
> -	llist_for_each_entry_safe(state, next, freed, freed)

state.freed is also dead.

-- 
Ville Syrjälä
Intel
