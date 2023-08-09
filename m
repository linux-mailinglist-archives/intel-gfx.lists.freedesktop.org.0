Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3785677558F
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Aug 2023 10:38:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADCD910E3FD;
	Wed,  9 Aug 2023 08:38:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C827510E3FD
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Aug 2023 08:38:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691570294; x=1723106294;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=R/KPg4b+fzwi00raVQiTW8NZBno3MZsj/7iCKWaPnmI=;
 b=PEuvCzne9OKlUVYeSmdB/zdzPYGF1uRscynDFRbHFndGzA/FyiNVqIoS
 OXOrWfoLArygkZ4j8z9nZNGM0IRqbrDOEFjal8AUv6qS1HM6pfREkmqLN
 IsiKvnDjazkA3tAkI4zf53tPPFYWjZPjtpJWn33WZvaT6pe5dYL8K6S/D
 ucDEViQd6r2RU5fcngoNxDS1K0Az5CMWBQRuku7nq/TjGvh1QhMfPmg8h
 0/2SKvtHFO+ARZiBO6uBuV3rnDP4zcLsledA/VwnrK7jyoRjPdE4bCJam
 gBbezX8g8Q3VcNKxQO6c7ZzgortTXi0pgz+A24FvhnOBfecByn4G0kh+D g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="356031502"
X-IronPort-AV: E=Sophos;i="6.01,158,1684825200"; d="scan'208";a="356031502"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2023 01:38:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="801668382"
X-IronPort-AV: E=Sophos;i="6.01,158,1684825200"; d="scan'208";a="801668382"
Received: from hbockhor-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.40.102])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2023 01:38:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230809082918.18631-1-stanislav.lisovskiy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230809082918.18631-1-stanislav.lisovskiy@intel.com>
Date: Wed, 09 Aug 2023 11:38:08 +0300
Message-ID: <87sf8ssj9r.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix mistake in
 intel_modeset_all_pipes condition
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

On Wed, 09 Aug 2023, Stanislav Lisovskiy <stanislav.lisovskiy@intel.com> wrote:
> It is supposed to be "!intel_crtc_needs_modeset" - otherwise,
> we are active exactly vice versa for active pipes: skipping if modeset
> is needed and not skipping if not needed.

If the crtc *already* needs a full modeset, there's no need to force a
modeset on it.

BR,
Jani.

>
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 763ab569d8f32..4b1d7034078ca 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5439,7 +5439,7 @@ int intel_modeset_all_pipes(struct intel_atomic_state *state,
>  			return PTR_ERR(crtc_state);
>  
>  		if (!crtc_state->hw.active ||
> -		    intel_crtc_needs_modeset(crtc_state))
> +		    !intel_crtc_needs_modeset(crtc_state))
>  			continue;
>  
>  		drm_dbg_kms(&dev_priv->drm, "[CRTC:%d:%s] Full modeset due to %s\n",

-- 
Jani Nikula, Intel Open Source Graphics Center
