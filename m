Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C49705C00D7
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Sep 2022 17:13:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2A2F10E7A8;
	Wed, 21 Sep 2022 15:13:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1AAF10E7A8
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Sep 2022 15:13:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663773215; x=1695309215;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=KX5a/TxwDPyNnk6Jp34FC8ahViVBngZ0pGmgXg+It6c=;
 b=VE+rqUvsH2+vt0VgqI+6Cdb3tYjIL2YoA8nGLlJQPokI0JPZaA+w6GTX
 99AzhFhoPzS0ww2S1FNyxCcE/0ItwA2hIyzAghWs5qFW50Gq4Ovd6qidI
 1Vs7a46ZvIAh5GLFRHtdb0tOEALHU/opiwB5lcD70lLS0DjoUW96nS2EN
 AWotY1Y0xnM5xDCNKKjA8Ik9f/+HFdtHuQ/ynYU3P4Jaf7S7ucLJTpTWW
 IYs1Nq2E9e2y3Uzjor39Suv74A84e7CNYyO/tvbPhccKwxWi6gdlkbT7k
 qNW1zpeEW4pwZOhrmqZ06m/ObqUf+0rMjjZFw6JxZ5rGf00p86PGImqqr g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10477"; a="301431633"
X-IronPort-AV: E=Sophos;i="5.93,333,1654585200"; d="scan'208";a="301431633"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 08:13:34 -0700
X-IronPort-AV: E=Sophos;i="5.93,333,1654585200"; d="scan'208";a="619387881"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 08:13:33 -0700
Date: Wed, 21 Sep 2022 18:14:27 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <YysqUzQlsppGTiYp@intel.com>
References: <20220622155452.32587-1-ville.syrjala@linux.intel.com>
 <20220622155452.32587-6-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220622155452.32587-6-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 5/9] drm/i915: Add missing invalidate to
 g4x wm readout
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

On Wed, Jun 22, 2022 at 06:54:48PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Let's not forget to mark the unused watermark levels as invalid
> after the readout. The vlv/chv codepath has this but the g4x
> didn't for some reason.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/intel_pm.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 45ec00e2e3c4..734deb0bd867 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -6915,6 +6915,8 @@ void g4x_wm_get_hw_state(struct drm_i915_private *dev_priv)
>  					     plane_id, USHRT_MAX);
>  		g4x_raw_fbc_wm_set(crtc_state, level, USHRT_MAX);
>  
> +		g4x_invalidate_wms(crtc, active, level);
> +
>  		crtc_state->wm.g4x.optimal = *active;
>  		crtc_state->wm.g4x.intermediate = *active;
>  
> -- 
> 2.35.1
> 
