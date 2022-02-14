Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6162C4B590A
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Feb 2022 18:46:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9217F10E273;
	Mon, 14 Feb 2022 17:46:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DEEF10E273
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Feb 2022 17:46:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644860781; x=1676396781;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=fIK9iU97/rRfwZfWd05b8RGBxHeL8wUlPCZNwzMLaV4=;
 b=V+FAB0eHqISU026eLcj4S4B4vnK4K+Y9uCl3YRH5DFIoFzOQstzpE8FA
 G1kxqBFs2R7WGoY0qXKzVGk8W5siQS5OLL2XycSzaPopGr/xZwlAMBFQ0
 jJhEk0UGI2jgj/efEVvf3iH6cjBGWG7esKtuRGSvm/GXlx/V6JH9JslbZ
 2wuzcErjeUjI32npZnEA4Pw22Uo8AG9dZXSEZOJPvglrN7blTpkKVfH7Y
 mJCSyt2y060L75mi5DH2JBHNl4NDfiow8SLdBGNnTezQErzmT3u4Kkvg1
 5pUDNpgFruRoS0hKGwfRy/NzJ5MMBNK5D2+c8a2EFZgcUXsyJDxYJt5Gr w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10258"; a="336573260"
X-IronPort-AV: E=Sophos;i="5.88,368,1635231600"; d="scan'208";a="336573260"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 09:43:30 -0800
X-IronPort-AV: E=Sophos;i="5.88,368,1635231600"; d="scan'208";a="495868605"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 09:43:29 -0800
Date: Mon, 14 Feb 2022 19:43:42 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220214174342.GA25879@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: [Intel-gfx] [stanislav.lisovskiy@intel.com: Re: [PATCH 4/6]
 drm/i915: Unconfuse pre-icl vs. icl+ intel_sagv_{pre, post}_plane_update()]
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

Date: Mon, 14 Feb 2022 19:39:28 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 4/6] drm/i915: Unconfuse pre-icl vs. icl+ intel_sagv_{pre,post}_plane_update()
User-Agent: Mutt/1.9.4 (2018-02-28)

On Mon, Feb 14, 2022 at 11:18:09AM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> intel_sagv_{pre,post}_plane_update() can accidentally forget
> to bail out early on pre-icl and proceed down the icl+ codepath
> at the end of the function. Fortunately it'll bail out before
> it gets too far due to old_qgv_mask==new_qgv_mask==0 so no real
> bug here. But lets make the code less confusing anyway.
> 
> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pm.c | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index d8eb553ffad3..068870b17c43 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -3806,8 +3806,9 @@ void intel_sagv_pre_plane_update(struct intel_atomic_state *state)
>  	if (!new_bw_state)
>  		return;
>  
> -	if (DISPLAY_VER(dev_priv) < 11 && !intel_can_enable_sagv(dev_priv, new_bw_state)) {
> -		intel_disable_sagv(dev_priv);
> +	if (DISPLAY_VER(dev_priv) < 11) {
> +		if (!intel_can_enable_sagv(dev_priv, new_bw_state))
> +			intel_disable_sagv(dev_priv);
>  		return;
>  	}

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Agree, I think that was my original code as well. However to be honest, don't like
the whole idea of splitting the code flow and bailing our prematurely for gen < 11 here.
Would be nice to have some unified approach, so that we have common main logic for all platforms,
like 
if (intel_bw_state_equals(new, old))
	return

intel_bw_state_apply_restrictions(...)  -> here we would add intel_enable/disable_sagv for gen <11 and
                                           qgv point restrictions for gen >= 11

Stan

>  
> @@ -3857,8 +3858,9 @@ void intel_sagv_post_plane_update(struct intel_atomic_state *state)
>  	if (!new_bw_state)
>  		return;
>  
> -	if (DISPLAY_VER(dev_priv) < 11 && intel_can_enable_sagv(dev_priv, new_bw_state)) {
> -		intel_enable_sagv(dev_priv);
> +	if (DISPLAY_VER(dev_priv) < 11) {
> +		if (intel_can_enable_sagv(dev_priv, new_bw_state))
> +			intel_enable_sagv(dev_priv);
>  		return;
>  	}
>  
> -- 
> 2.34.1
> 

----- End forwarded message -----
