Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 719376074F0
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Oct 2022 12:21:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D1C110E066;
	Fri, 21 Oct 2022 10:21:46 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DF5B10E066
 for <Intel-gfx@lists.freedesktop.org>; Fri, 21 Oct 2022 10:21:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666347698; x=1697883698;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=tCgRB7FyV50lpae+fW9Hgb5ZSu7wq+qRpizcl6LY29Q=;
 b=Zu1Zd3C6AUHL+q/p9xAGlqD7+Ncg5grvz0Pu2aAnmpd+6ZGjJ9TxtxCu
 OjcmvS/11YPbVDG2zwIRG0LsMJFdzvYzVAXya1d1Jtg05oVIoYZAOSVmm
 JNKuwWZu+u4NpPqTm75yRnFGNyNR98qs50cTYGBt1FfqajzZKwF2EbhT7
 m6t7Yh0zW0Qnzl4oTYaApuW09jF8gxYa4BAmElTjwEIeJujr6UNNAN1xb
 nT+g+3gCcTM8nHtzhgQ6CSwrLfWbgaEVluPvtaTFmxpjK1H5GP0s1FXR6
 vM0bME2VfJUcY8nymzzuFx3MnwVvuErUh4tUkdjuxIjuDq2MHM+DeEDsM Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="369014721"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="369014721"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 03:21:28 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="693635118"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="693635118"
Received: from avilla3-mobl2.amr.corp.intel.com (HELO localhost)
 ([10.252.53.153])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 03:21:26 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Taylor, Clinton A" <clinton.a.taylor@intel.com>,
 Intel-gfx@lists.freedesktop.org
In-Reply-To: <20221019203527.1682301-1-clinton.a.taylor@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221019203527.1682301-1-clinton.a.taylor@intel.com>
Date: Fri, 21 Oct 2022 13:21:24 +0300
Message-ID: <877d0tfpej.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/hdmi: SPD infoframe updated for
 discrete
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

On Wed, 19 Oct 2022, "Taylor, Clinton A" <clinton.a.taylor@intel.com> wrote:
> Replace internal with discrete on dgfx platforms

Please use the imperative mood in the commit subject, i.e. "update" not
"updated".

>
> Signed-off-by: Taylor, Clinton A <clinton.a.taylor@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdmi.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 93519fb23d9d..9070da469bdd 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -766,6 +766,7 @@ intel_hdmi_compute_spd_infoframe(struct intel_encoder *encoder,
>  				 struct intel_crtc_state *crtc_state,
>  				 struct drm_connector_state *conn_state)
>  {
> +	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);

Always struct drm_i915_private *i915 for new code please.

>  	struct hdmi_spd_infoframe *frame = &crtc_state->infoframes.spd.spd;
>  	int ret;
>  
> @@ -775,7 +776,10 @@ intel_hdmi_compute_spd_infoframe(struct intel_encoder *encoder,
>  	crtc_state->infoframes.enable |=
>  		intel_hdmi_infoframe_enable(HDMI_INFOFRAME_TYPE_SPD);
>  
> -	ret = hdmi_spd_infoframe_init(frame, "Intel", "Integrated gfx");
> +	if (IS_DGFX(dev_priv))
> +		ret = hdmi_spd_infoframe_init(frame, "Intel", "Discrete gfx");
> +	else
> +		ret = hdmi_spd_infoframe_init(frame, "Intel", "Integrated gfx");
>  	if (drm_WARN_ON(encoder->base.dev, ret))
>  		return false;

-- 
Jani Nikula, Intel Open Source Graphics Center
