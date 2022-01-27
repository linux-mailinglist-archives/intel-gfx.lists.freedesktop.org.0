Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57B4B49DC59
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jan 2022 09:16:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96CE010E54F;
	Thu, 27 Jan 2022 08:15:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 434C010E54F
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jan 2022 08:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643271358; x=1674807358;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=DhB8qBf4/8T0ng4ZSBnqL0hTr8tqr8tb8SCy+WkO/Sk=;
 b=Wk9MXAhz+VdAlpNituzZQkBjUFZ8Z3gTXe5sLctgmtGz+oDoINu+fOcY
 ysMbyR2rQTOeX7rAI77TTzVkM0V2rnVy27QqldE4sNZqo0wpXpIrHwlDp
 wkrUmgcP7m3KfecqGwdRJGl9YIdKP00PnYBHyCDyUVfN71SndesxZK/vA
 fFuqL9jakLG2we2QfNcvnJKvFP7u0iigF2YDBVxKN4SyLcaN+8t2OLZfb
 H3eDEXMgz+fikRw1NFQtCVEx+zIiLIPEEsYMqsAO+HGKgzLftKYr/2ixW
 qDrQHhXEugSaQYa6AWxiLVVi/1++fM05fLsA+xWTad0Q4F+o8uoZqNGmL A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="230358717"
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="230358717"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 00:15:57 -0800
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="495648209"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 00:15:56 -0800
Date: Thu, 27 Jan 2022 10:15:59 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220127081559.GA31846@intel.com>
References: <20220118092354.11631-1-ville.syrjala@linux.intel.com>
 <20220118092354.11631-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220118092354.11631-2-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 01/15] drm/i915: Drop pointless dev_priv
 argument
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

On Tue, Jan 18, 2022 at 11:23:40AM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> skl_ddb_entry_init_from_hw() has no need for dev_priv.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/intel_pm.c | 11 +++++------
>  1 file changed, 5 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 62fde21fac39..7185af0ff205 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -4289,8 +4289,7 @@ skl_cursor_allocation(const struct intel_crtc_state *crtc_state,
>  	return max(num_active == 1 ? 32 : 8, min_ddb_alloc);
>  }
>  
> -static void skl_ddb_entry_init_from_hw(struct drm_i915_private *dev_priv,
> -				       struct skl_ddb_entry *entry, u32 reg)
> +static void skl_ddb_entry_init_from_hw(struct skl_ddb_entry *entry, u32 reg)
>  {
>  	entry->start = REG_FIELD_GET(PLANE_BUF_START_MASK, reg);
>  	entry->end = REG_FIELD_GET(PLANE_BUF_END_MASK, reg);
> @@ -4311,7 +4310,7 @@ skl_ddb_get_hw_plane_state(struct drm_i915_private *dev_priv,
>  	/* Cursor doesn't support NV12/planar, so no extra calculation needed */
>  	if (plane_id == PLANE_CURSOR) {
>  		val = intel_uncore_read(&dev_priv->uncore, CUR_BUF_CFG(pipe));
> -		skl_ddb_entry_init_from_hw(dev_priv, ddb_y, val);
> +		skl_ddb_entry_init_from_hw(ddb_y, val);
>  		return;
>  	}
>  
> @@ -4325,7 +4324,7 @@ skl_ddb_get_hw_plane_state(struct drm_i915_private *dev_priv,
>  
>  	if (DISPLAY_VER(dev_priv) >= 11) {
>  		val = intel_uncore_read(&dev_priv->uncore, PLANE_BUF_CFG(pipe, plane_id));
> -		skl_ddb_entry_init_from_hw(dev_priv, ddb_y, val);
> +		skl_ddb_entry_init_from_hw(ddb_y, val);
>  	} else {
>  		val = intel_uncore_read(&dev_priv->uncore, PLANE_BUF_CFG(pipe, plane_id));
>  		val2 = intel_uncore_read(&dev_priv->uncore, PLANE_NV12_BUF_CFG(pipe, plane_id));
> @@ -4334,8 +4333,8 @@ skl_ddb_get_hw_plane_state(struct drm_i915_private *dev_priv,
>  		    drm_format_info_is_yuv_semiplanar(drm_format_info(fourcc)))
>  			swap(val, val2);
>  
> -		skl_ddb_entry_init_from_hw(dev_priv, ddb_y, val);
> -		skl_ddb_entry_init_from_hw(dev_priv, ddb_uv, val2);
> +		skl_ddb_entry_init_from_hw(ddb_y, val);
> +		skl_ddb_entry_init_from_hw(ddb_uv, val2);
>  	}
>  }
>  
> -- 
> 2.32.0
> 
