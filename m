Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C8C96D4689
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Apr 2023 16:09:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEB7E10E49A;
	Mon,  3 Apr 2023 14:09:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07C1F10E49E
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Apr 2023 14:09:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680530975; x=1712066975;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=V4VxsIApZPFm/ACSOvilOac86ah1+fTzOw/9riSte3w=;
 b=Cu52KikVxNxb45UOK5+vxFeoZgkPEkwXWhcMEYoqkj4fAKdJdF7ye5Mm
 6jZipvIS+8hXx897j70S4RHrbrQ1v872EIUITTfV2xIgsy32bMIpdWu/P
 7dQUZ6R2ZYAq5TztAjG+FRJ+4dBR/3No3Tz7YYIsvsFjmZbYEmJQheUr2
 PY7d4jSxOO2z0wHiXFk+Q5J1GvKeWM+YTPRKrIXF597/ruvo4Znf8X1uo
 6kaJc0GUfBauP1wVMDuZlfNnMVlJCYxsl0ZKVLhofWzls/NGeiY7iHtcn
 Tc8cmoGi+rNndhFEqXidJ0yq6Ja5NtMYTgl9M74lObvZfPokv38JuEmDG A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="321568836"
X-IronPort-AV: E=Sophos;i="5.98,314,1673942400"; d="scan'208";a="321568836"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2023 07:09:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="685986288"
X-IronPort-AV: E=Sophos;i="5.98,314,1673942400"; d="scan'208";a="685986288"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 03 Apr 2023 07:09:24 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 03 Apr 2023 17:09:24 +0300
Date: Mon, 3 Apr 2023 17:09:24 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
Message-ID: <ZCreFMId3fKGjOYx@intel.com>
References: <20230403070125.1127830-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230403070125.1127830-1-suraj.kandpal@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/hdcp: Remove drm_modeset_lock
 in intel_conn_to_vcpi
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
Cc: intel-gfx@lists.freedesktop.org, ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Apr 03, 2023 at 12:31:25PM +0530, Suraj Kandpal wrote:
> Remove drm_modeset_lock in intel_conn_to_vcpi as we don't need it
> anymore since all the required locks are taken in atomic check and
> prepare phases.
> 
> --v2
> -take lock if hdcp function is called from legacy path [Ville]
> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 650232c4892b..65cfc4afbcaa 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -36,13 +36,16 @@ static int intel_conn_to_vcpi(struct intel_connector *connector)
>  	struct drm_dp_mst_atomic_payload *payload;
>  	struct drm_dp_mst_topology_state *mst_state;
>  	int vcpi = 0;
> +	bool is_locked;
>  
>  	/* For HDMI this is forced to be 0x0. For DP SST also this is 0x0. */
>  	if (!connector->port)
>  		return 0;
>  	mgr = connector->port->mgr;
> +	is_locked = drm_modeset_is_locked(&mgr->base.lock);

The fact that *someone* is holding the lock doesn't mean you
can just skip taking it yourself.

> +	if (!is_locked)
> +		drm_modeset_lock(&mgr->base.lock, NULL);
>  
> -	drm_modeset_lock(&mgr->base.lock, NULL);
>  	mst_state = to_drm_dp_mst_topology_state(mgr->base.state);
>  	payload = drm_atomic_get_mst_payload_state(mst_state, connector->port);
>  	if (drm_WARN_ON(mgr->dev, !payload))
> @@ -54,7 +57,9 @@ static int intel_conn_to_vcpi(struct intel_connector *connector)
>  		goto out;
>  	}
>  out:
> -	drm_modeset_unlock(&mgr->base.lock);
> +	if (!is_locked)
> +		drm_modeset_unlock(&mgr->base.lock);
> +
>  	return vcpi;
>  }
>  
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
