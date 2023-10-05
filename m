Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FFB57B9C3C
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Oct 2023 11:42:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 184F710E1D3;
	Thu,  5 Oct 2023 09:42:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D4F010E1D3
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Oct 2023 09:42:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696498938; x=1728034938;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=qhLsBsdOF+PTs+tmoEjPHs2mxwdopmbUsQqjQ06CRtE=;
 b=aVTx53CLThyb4q2dM5g7l3ahDWu0QTi/Wl9698EG7jb9DvU7UQ+tnqFC
 ch1zzn6pFLBsMPTSyaVBfUUyqam2eI4FiTEAkWNPdHTKaslJalA12tvgI
 gXm+n1XqpopzPPF7Pqzza8++x8h980eer53KGDrta1oleP3qoq1ghOXBT
 K0LUGF+JBhYei/4ivIt3I4ezjIeCbTa/CwttTclPz7WXJlTP3ppvt+Q9r
 Q9PR2fDWLv6V/09ERSpHbDOWU+Q/8h0AVjt9VeoG6UkfRycwN4x+FffU9
 O0ZxQiwlkAG69ZFneHvCwzcIhm+t0hJZRHZf2g4jkJc6rBIyziHnNbBLg Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="387330034"
X-IronPort-AV: E=Sophos;i="6.03,202,1694761200"; d="scan'208";a="387330034"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2023 02:42:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="842324206"
X-IronPort-AV: E=Sophos;i="6.03,202,1694761200"; d="scan'208";a="842324206"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by FMSMGA003.fm.intel.com with SMTP; 05 Oct 2023 02:42:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 05 Oct 2023 12:42:14 +0300
Date: Thu, 5 Oct 2023 12:42:14 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
Message-ID: <ZR6E9jqTJzVWFwqi@intel.com>
References: <20231005064257.570671-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231005064257.570671-1-suraj.kandpal@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ddi: Fix i2c_adapter assignment
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

On Thu, Oct 05, 2023 at 12:12:58PM +0530, Suraj Kandpal wrote:
> i2c_adapter is being assigned using intel_connector even before the
> NULL check occurs and even though it shouldn't be a problem
> lets just clean this up as logically it does not make sense to check
> the connector for NULL but dereference it before that.
> 
> Fixes: e046d1562491 ("drm/i915/hdmi: Use connector->ddc everwhere")
> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 4668de45d6fe..6b658faf1fc3 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4326,7 +4326,7 @@ static int intel_hdmi_reset_link(struct intel_encoder *encoder,
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	struct intel_hdmi *hdmi = enc_to_intel_hdmi(encoder);
>  	struct intel_connector *connector = hdmi->attached_connector;
> -	struct i2c_adapter *ddc = connector->base.ddc;
> +	struct i2c_adapter *ddc;
>  	struct drm_connector_state *conn_state;
>  	struct intel_crtc_state *crtc_state;
>  	struct intel_crtc *crtc;
> @@ -4336,6 +4336,8 @@ static int intel_hdmi_reset_link(struct intel_encoder *encoder,
>  	if (!connector || connector->base.status != connector_status_connected)
>  		return 0;

The connector is never NULL here. So the check is just nonsense.

>  
> +	ddc = connector->base.ddc;
> +
>  	ret = drm_modeset_lock(&dev_priv->drm.mode_config.connection_mutex,
>  			       ctx);
>  	if (ret)
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
