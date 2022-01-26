Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A1CA49C9D9
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jan 2022 13:37:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71DD210E54E;
	Wed, 26 Jan 2022 12:37:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5781810E54E
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jan 2022 12:37:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643200636; x=1674736636;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=UD6thkSngbBnqsSCaiahfZKLyeIyi2cCh9WPKbT9k0g=;
 b=h81rg34TJ5MdTwVyIf7lwNu6sXTaMtQNVOag4x7wjVIQmmCAjUpGqalh
 9r0bWPpae8tC+P63FVcWarvehIfhj/6jgnhDbYam7pfxVQWjszR8vd01K
 qTkg2CrdVEganQK9i3fRxDKE+fpD5lCen1EBC93YBeUj51TYanDoOXH/v
 LKCmiGs1wY+pBvYoLhLmj/Gl3gJd5x8g7Ei9/mmxWdtcjTtXeOmdcXXU1
 VW4xgSOVKoD2qy5zBQ/LdJpLSZy7YbHxSvBPSecJH+MbhF4kL6FJS9jTq
 CxEfDZnYrrRL/HexaUHJZgwrXUiepHS+ZMyumarkDKiHARf35/3pnPURF w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10238"; a="245373288"
X-IronPort-AV: E=Sophos;i="5.88,318,1635231600"; d="scan'208";a="245373288"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 04:37:15 -0800
X-IronPort-AV: E=Sophos;i="5.88,318,1635231600"; d="scan'208";a="617952153"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 04:37:14 -0800
Date: Wed, 26 Jan 2022 14:37:10 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220126123710.GB1958725@ideak-desk.fi.intel.com>
References: <20220126081539.23227-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220126081539.23227-1-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Fix oops due to missing stack
 depot
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
Cc: intel-gfx@lists.freedesktop.org, Marco Elver <elver@google.com>,
 Dmitry Vyukov <dvyukov@google.com>, Vlastimil Babka <vbabka@suse.cz>,
 Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 26, 2022 at 10:15:38AM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> We call __save_depot_stack() unconditionally so the stack depot
> must always be initialized or else we'll oops on platforms without
> runtime pm support.
> 
> Presumably we've not seen this in CI due to stack_depot_init()
> already getting called via drm_mm_init()+CONFIG_DRM_DEBUG_MM.
> 
> Cc: Vlastimil Babka <vbabka@suse.cz>
> Cc: Dmitry Vyukov <dvyukov@google.com>
> Cc: Marco Elver <elver@google.com> # stackdepot
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Imre Deak <imre.deak@intel.com>
> Fixes: 2dba5eb1c73b ("lib/stackdepot: allow optional init and stack_table allocation by kvmalloc()")
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/intel_runtime_pm.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i915/intel_runtime_pm.c
> index 53f1ccb78849..64c2708efc9e 100644
> --- a/drivers/gpu/drm/i915/intel_runtime_pm.c
> +++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
> @@ -68,9 +68,7 @@ static noinline depot_stack_handle_t __save_depot_stack(void)
>  static void init_intel_runtime_pm_wakeref(struct intel_runtime_pm *rpm)
>  {
>  	spin_lock_init(&rpm->debug.lock);
> -
> -	if (rpm->available)
> -		stack_depot_init();
> +	stack_depot_init();
>  }
>  
>  static noinline depot_stack_handle_t
> -- 
> 2.34.1
> 
