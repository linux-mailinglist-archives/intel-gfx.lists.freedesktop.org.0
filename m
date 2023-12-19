Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 326DB8187ED
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Dec 2023 13:50:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D526410E12C;
	Tue, 19 Dec 2023 12:50:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E4EA10E12C
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Dec 2023 12:50:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702990216; x=1734526216;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=/eYYHVltaPFOcAv+5q5uMZYcG9GBwQ7qK9FijOmolX4=;
 b=ZgNb+aW1JFN5ALlBqQgahd13ykRBR33GnITom4qdaoD9oS5Cl8tcjajS
 M9mfOI1MgfMNLr5/GtNYCf3EgCPGRLPtLMWk+SzlpA8eLUVtBE8IRYbk9
 9IF7lQSUpoCHDnFQHh3selVuwNY5uhMR+nGCgXVSbQaxGUlLDdm/jGOmn
 xZjyqwlNjcSYhx5tD4idyUeW8aWMPjyzAEyxq+4xdcfOVgXqWK4Db8/cp
 y08lQnOMUL9LFgtjgtAO5YFhIzip0ZheOGIVmsaO38VRYUF5NPAj3tI18
 AmmJlSr0a4+O7LZsl3gmdwHmK4SnKYiIJ7ZfBEysjX8T3gv4byiMX1JhM Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="17210554"
X-IronPort-AV: E=Sophos;i="6.04,288,1695711600"; d="scan'208";a="17210554"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2023 04:50:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="769226321"
X-IronPort-AV: E=Sophos;i="6.04,288,1695711600"; d="scan'208";a="769226321"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 19 Dec 2023 04:50:13 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 19 Dec 2023 14:50:12 +0200
Date: Tue, 19 Dec 2023 14:50:12 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Subject: Re: [PATCH 1/2] drm/i915/hdcp: unify connector logging format
Message-ID: <ZYGRhEDnN-WxFtdy@intel.com>
References: <20231219104746.1065431-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231219104746.1065431-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
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

On Tue, Dec 19, 2023 at 12:47:45PM +0200, Jani Nikula wrote:
> It's customary to debug log connectors using [CONNECTOR:%d:%s]
> format. Make the HDCP code follow suit.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 68 +++++++++++------------
>  1 file changed, 34 insertions(+), 34 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 39b3f7c0c77c..f9010094ff29 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -853,8 +853,8 @@ static int intel_hdcp_auth(struct intel_connector *connector)
>  	if (shim->stream_encryption) {
>  		ret = shim->stream_encryption(connector, true);
>  		if (ret) {
> -			drm_err(&i915->drm, "[%s:%d] Failed to enable HDCP 1.4 stream enc\n",
> -				connector->base.name, connector->base.base.id);
> +			drm_err(&i915->drm, "[CONNECTOR:%d:%s] Failed to enable HDCP 1.4 stream enc\n",
> +				connector->base.base.id, connector->base.name);
>  			return ret;
>  		}
>  		drm_dbg_kms(&i915->drm, "HDCP 1.4 transcoder: %s stream encrypted\n",
> @@ -878,14 +878,14 @@ static int _intel_hdcp_disable(struct intel_connector *connector)
>  	u32 repeater_ctl;
>  	int ret;
>  
> -	drm_dbg_kms(&i915->drm, "[%s:%d] HDCP is being disabled...\n",
> -		    connector->base.name, connector->base.base.id);
> +	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] HDCP is being disabled...\n",
> +		    connector->base.base.id, connector->base.name);
>  
>  	if (hdcp->shim->stream_encryption) {
>  		ret = hdcp->shim->stream_encryption(connector, false);
>  		if (ret) {
> -			drm_err(&i915->drm, "[%s:%d] Failed to disable HDCP 1.4 stream enc\n",
> -				connector->base.name, connector->base.base.id);
> +			drm_err(&i915->drm, "[CONNECTOR:%d:%s] Failed to disable HDCP 1.4 stream enc\n",
> +				connector->base.base.id, connector->base.name);
>  			return ret;
>  		}
>  		drm_dbg_kms(&i915->drm, "HDCP 1.4 transcoder: %s stream encryption disabled\n",
> @@ -929,8 +929,8 @@ static int intel_hdcp1_enable(struct intel_connector *connector)
>  	struct intel_hdcp *hdcp = &connector->hdcp;
>  	int i, ret, tries = 3;
>  
> -	drm_dbg_kms(&i915->drm, "[%s:%d] HDCP is being enabled...\n",
> -		    connector->base.name, connector->base.base.id);
> +	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] HDCP is being enabled...\n",
> +		    connector->base.base.id, connector->base.name);
>  
>  	if (!hdcp_key_loadable(i915)) {
>  		drm_err(&i915->drm, "HDCP key Load is not possible\n");
> @@ -1027,8 +1027,8 @@ static int intel_hdcp_check_link(struct intel_connector *connector)
>  	if (drm_WARN_ON(&i915->drm,
>  			!intel_hdcp_in_use(i915, cpu_transcoder, port))) {
>  		drm_err(&i915->drm,
> -			"%s:%d HDCP link stopped encryption,%x\n",
> -			connector->base.name, connector->base.base.id,
> +			"[CONNECTOR:%d:%s] HDCP link stopped encryption,%x\n",
> +			connector->base.base.id, connector->base.name,
>  			intel_de_read(i915, HDCP_STATUS(i915, cpu_transcoder, port)));
>  		ret = -ENXIO;
>  		intel_hdcp_update_value(connector,
> @@ -1046,8 +1046,8 @@ static int intel_hdcp_check_link(struct intel_connector *connector)
>  	}
>  
>  	drm_dbg_kms(&i915->drm,
> -		    "[%s:%d] HDCP link failed, retrying authentication\n",
> -		    connector->base.name, connector->base.base.id);
> +		    "[CONNECTOR:%d:%s] HDCP link failed, retrying authentication\n",
> +		    connector->base.base.id, connector->base.name);
>  
>  	ret = _intel_hdcp_disable(connector);
>  	if (ret) {
> @@ -1731,8 +1731,8 @@ static int hdcp2_enable_stream_encryption(struct intel_connector *connector)
>  
>  	if (!(intel_de_read(i915, HDCP2_STATUS(i915, cpu_transcoder, port)) &
>  			    LINK_ENCRYPTION_STATUS)) {
> -		drm_err(&i915->drm, "[%s:%d] HDCP 2.2 Link is not encrypted\n",
> -			connector->base.name, connector->base.base.id);
> +		drm_err(&i915->drm, "[CONNECTOR:%d:%s] HDCP 2.2 Link is not encrypted\n",
> +			connector->base.base.id, connector->base.name);
>  		ret = -EPERM;
>  		goto link_recover;
>  	}
> @@ -1740,8 +1740,8 @@ static int hdcp2_enable_stream_encryption(struct intel_connector *connector)
>  	if (hdcp->shim->stream_2_2_encryption) {
>  		ret = hdcp->shim->stream_2_2_encryption(connector, true);
>  		if (ret) {
> -			drm_err(&i915->drm, "[%s:%d] Failed to enable HDCP 2.2 stream enc\n",
> -				connector->base.name, connector->base.base.id);
> +			drm_err(&i915->drm, "[CONNECTOR:%d:%s] Failed to enable HDCP 2.2 stream enc\n",
> +				connector->base.base.id, connector->base.name);
>  			return ret;
>  		}
>  		drm_dbg_kms(&i915->drm, "HDCP 2.2 transcoder: %s stream encrypted\n",
> @@ -1925,8 +1925,8 @@ static int _intel_hdcp2_enable(struct intel_connector *connector)
>  	struct intel_hdcp *hdcp = &connector->hdcp;
>  	int ret;
>  
> -	drm_dbg_kms(&i915->drm, "[%s:%d] HDCP2.2 is being enabled. Type: %d\n",
> -		    connector->base.name, connector->base.base.id,
> +	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] HDCP2.2 is being enabled. Type: %d\n",
> +		    connector->base.base.id, connector->base.name,
>  		    hdcp->content_type);
>  
>  	ret = hdcp2_authenticate_and_encrypt(connector);
> @@ -1936,8 +1936,8 @@ static int _intel_hdcp2_enable(struct intel_connector *connector)
>  		return ret;
>  	}
>  
> -	drm_dbg_kms(&i915->drm, "[%s:%d] HDCP2.2 is enabled. Type %d\n",
> -		    connector->base.name, connector->base.base.id,
> +	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] HDCP2.2 is enabled. Type %d\n",
> +		    connector->base.base.id, connector->base.name,
>  		    hdcp->content_type);
>  
>  	hdcp->hdcp2_encrypted = true;
> @@ -1953,14 +1953,14 @@ _intel_hdcp2_disable(struct intel_connector *connector, bool hdcp2_link_recovery
>  	struct intel_hdcp *hdcp = &connector->hdcp;
>  	int ret;
>  
> -	drm_dbg_kms(&i915->drm, "[%s:%d] HDCP2.2 is being Disabled\n",
> -		    connector->base.name, connector->base.base.id);
> +	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] HDCP2.2 is being Disabled\n",
> +		    connector->base.base.id, connector->base.name);
>  
>  	if (hdcp->shim->stream_2_2_encryption) {
>  		ret = hdcp->shim->stream_2_2_encryption(connector, false);
>  		if (ret) {
> -			drm_err(&i915->drm, "[%s:%d] Failed to disable HDCP 2.2 stream enc\n",
> -				connector->base.name, connector->base.base.id);
> +			drm_err(&i915->drm, "[CONNECTOR:%d:%s] Failed to disable HDCP 2.2 stream enc\n",
> +				connector->base.base.id, connector->base.name);
>  			return ret;
>  		}
>  		drm_dbg_kms(&i915->drm, "HDCP 2.2 transcoder: %s stream encryption disabled\n",
> @@ -2040,20 +2040,20 @@ static int intel_hdcp2_check_link(struct intel_connector *connector)
>  			goto out;
>  		}
>  		drm_dbg_kms(&i915->drm,
> -			    "[%s:%d] Repeater topology auth failed.(%d)\n",
> -			    connector->base.name, connector->base.base.id,
> +			    "[CONNECTOR:%d:%s] Repeater topology auth failed.(%d)\n",
> +			    connector->base.base.id, connector->base.name,
>  			    ret);
>  	} else {
>  		drm_dbg_kms(&i915->drm,
> -			    "[%s:%d] HDCP2.2 link failed, retrying auth\n",
> -			    connector->base.name, connector->base.base.id);
> +			    "[CONNECTOR:%d:%s] HDCP2.2 link failed, retrying auth\n",
> +			    connector->base.base.id, connector->base.name);
>  	}
>  
>  	ret = _intel_hdcp2_disable(connector, true);
>  	if (ret) {
>  		drm_err(&i915->drm,
> -			"[%s:%d] Failed to disable hdcp2.2 (%d)\n",
> -			connector->base.name, connector->base.base.id, ret);
> +			"[CONNECTOR:%d:%s] Failed to disable hdcp2.2 (%d)\n",
> +			connector->base.base.id, connector->base.name, ret);
>  		intel_hdcp_update_value(connector,
>  				DRM_MODE_CONTENT_PROTECTION_DESIRED, true);
>  		goto out;
> @@ -2062,8 +2062,8 @@ static int intel_hdcp2_check_link(struct intel_connector *connector)
>  	ret = _intel_hdcp2_enable(connector);
>  	if (ret) {
>  		drm_dbg_kms(&i915->drm,
> -			    "[%s:%d] Failed to enable hdcp2.2 (%d)\n",
> -			    connector->base.name, connector->base.base.id,
> +			    "[CONNECTOR:%d:%s] Failed to enable hdcp2.2 (%d)\n",
> +			    connector->base.base.id, connector->base.name,
>  			    ret);
>  		intel_hdcp_update_value(connector,
>  					DRM_MODE_CONTENT_PROTECTION_DESIRED,
> @@ -2341,8 +2341,8 @@ static int _intel_hdcp_enable(struct intel_atomic_state *state,
>  		return -ENOENT;
>  
>  	if (!connector->encoder) {
> -		drm_err(&i915->drm, "[%s:%d] encoder is not initialized\n",
> -			connector->base.name, connector->base.base.id);
> +		drm_err(&i915->drm, "[CONNECTOR:%d:%s] encoder is not initialized\n",
> +			connector->base.base.id, connector->base.name);
>  		return -ENODEV;
>  	}
>  
> -- 
> 2.39.2

-- 
Ville Syrjälä
Intel
