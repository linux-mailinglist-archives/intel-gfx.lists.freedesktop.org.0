Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8901B12F8CD
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2020 14:35:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A11C6E316;
	Fri,  3 Jan 2020 13:34:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7AAC6E316
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jan 2020 13:34:57 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jan 2020 05:34:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,390,1571727600"; d="scan'208";a="270583418"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by FMSMGA003.fm.intel.com with ESMTP; 03 Jan 2020 05:34:55 -0800
Date: Fri, 3 Jan 2020 19:04:23 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20200103133423.GA9813@intel.com>
References: <20200103130021.15992-1-anshuman.gupta@intel.com>
 <20200103130021.15992-2-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200103130021.15992-2-anshuman.gupta@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/hdcp: restore hdcp state same
 as previous
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2020-01-03 at 18:30:21 +0530, Anshuman Gupta wrote:
> When port is disabled due to modeset or DPMS off actually
> it disables the HDCP encryption keeping its state to
> CP_ENABLED this doesn't enable HDCP again while port
> gets enable again. HDCP state should set accordingly
> when port is disabled.
> 
> CC: Ramalingam C <ramalingam.c@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 07acd0daca25..b1b79073e3f9 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4137,7 +4137,14 @@ static void intel_disable_ddi(struct intel_encoder *encoder,
>  			      const struct intel_crtc_state *old_crtc_state,
>  			      const struct drm_connector_state *old_conn_state)
>  {
> -	intel_hdcp_disable(to_intel_connector(old_conn_state->connector));
> +	int ret;
> +
> +	ret = intel_hdcp_disable(to_intel_connector(old_conn_state->connector));
> +
> +	if (old_conn_state->content_protection ==
> +	    DRM_MODE_CONTENT_PROTECTION_ENABLED && !ret)
while relooking at it, locking is missing. 

                mutex_lock(&hdcp->mutex);
                hdcp->value = DRM_MODE_CONTENT_PROTECTION_DESIRED;
                schedule_work(&hdcp->prop_work);
                mutex_unlock(&hdcp->mutex);

-Ram

> +		drm_hdcp_update_content_protection(old_conn_state->connector,
> +						   DRM_MODE_CONTENT_PROTECTION_DESIRED);
>  
>  	if (intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_HDMI))
>  		intel_disable_ddi_hdmi(encoder, old_crtc_state, old_conn_state);
> -- 
> 2.24.0
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
