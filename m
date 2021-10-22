Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C192D437FCE
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Oct 2021 23:09:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81E196E570;
	Fri, 22 Oct 2021 21:09:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from so254-9.mailgun.net (so254-9.mailgun.net [198.61.254.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39CB36E5AE
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Oct 2021 21:08:58 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1634936942; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=PXW3o4AZmsJh5ii/yOZhTQ1+5uA4Slexg39ac4jUnUM=;
 b=wChW7lRRBKF2nwYkIt3SOQV/UP4o/5WJZW8+oNViC+yyfwzlbOwhqqAHHDci76gZZp+aFHYi
 FDcec7MG8SY6EIT/qQ+rYgyq5k3vw7/nHnnWbQWjXvvYmar6ADE5vW6hlKSJhwgE1qyfoac/
 dF62D8jfkIRfCZlrYnqBpueVVqw=
X-Mailgun-Sending-Ip: 198.61.254.9
X-Mailgun-Sid: WyI5MzZmYyIsICJpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n05.prod.us-west-2.postgun.com with SMTP id
 617328555ca800b6c1ef07d1 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 22 Oct 2021 21:08:37
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id E5A89C43619; Fri, 22 Oct 2021 21:08:37 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: abhinavk)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id E4BF7C4338F;
 Fri, 22 Oct 2021 21:08:36 +0000 (UTC)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date: Fri, 22 Oct 2021 14:08:36 -0700
From: abhinavk@codeaurora.org
To: Sean Paul <sean@poorly.run>
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, swboyd@chromium.org,
 jani.nikula@linux.intel.com, Sean Paul <seanpaul@chromium.org>, Jani Nikula
 <jani.nikula@intel.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>
In-Reply-To: <20211001151145.55916-4-sean@poorly.run>
References: <20211001151145.55916-1-sean@poorly.run>
 <20211001151145.55916-4-sean@poorly.run>
Message-ID: <a8463acc876a6c16ec49ecb35d553947@codeaurora.org>
X-Sender: abhinavk@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
Subject: Re: [Intel-gfx] [Freedreno] [PATCH v3 03/14] drm/hdcp: Update
 property value on content type and user changes
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

On 2021-10-01 08:11, Sean Paul wrote:
> From: Sean Paul <seanpaul@chromium.org>
> 
> This patch updates the connector's property value in 2 cases which were
> previously missed:
> 
> 1- Content type changes. The value should revert back to DESIRED from
>    ENABLED in case the driver must re-authenticate the link due to the
>    new content type.
> 
> 2- Userspace sets value to DESIRED while ENABLED. In this case, the
>    value should be reset immediately to ENABLED since the link is
>    actively being encrypted.
> 
> To accommodate these changes, I've split up the conditionals to make
> things a bit more clear (as much as one can with this mess of state).
> 
> Acked-by: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Sean Paul <seanpaul@chromium.org>
Reviewed-by: Abhinav Kumar <abhinavk@codeaurora.org>
> Link:
> https://patchwork.freedesktop.org/patch/msgid/20210913175747.47456-4-sean@poorly.run
> #v1
> Link:
> https://patchwork.freedesktop.org/patch/msgid/20210915203834.1439-4-sean@poorly.run
> #v2
> 
> Changes in v2:
> -None
> Changes in v3:
> -Fixed indentation issue identified by 0-day
> ---
>  drivers/gpu/drm/drm_hdcp.c | 26 +++++++++++++++++---------
>  1 file changed, 17 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_hdcp.c b/drivers/gpu/drm/drm_hdcp.c
> index dd8fa91c51d6..8c851d40cd45 100644
> --- a/drivers/gpu/drm/drm_hdcp.c
> +++ b/drivers/gpu/drm/drm_hdcp.c
> @@ -487,21 +487,29 @@ bool drm_hdcp_atomic_check(struct drm_connector
> *connector,
>  		return true;
> 
>  	/*
> -	 * Nothing to do if content type is unchanged and one of:
> -	 *  - state didn't change
> +	 * Content type changes require an HDCP disable/enable cycle.
> +	 */
> +	if (new_conn_state->hdcp_content_type != 
> old_conn_state->hdcp_content_type) {
> +		new_conn_state->content_protection =
> +			DRM_MODE_CONTENT_PROTECTION_DESIRED;
> +		return true;
> +	}
> +
> +	/*
> +	 * Ignore meaningless state changes:
>  	 *  - HDCP was activated since the last commit
> -	 *  - attempting to set to desired while already enabled
> +	 *  - Attempting to set to desired while already enabled
>  	 */
> -	if (old_hdcp == new_hdcp ||
> -	    (old_hdcp == DRM_MODE_CONTENT_PROTECTION_DESIRED &&
> +	if ((old_hdcp == DRM_MODE_CONTENT_PROTECTION_DESIRED &&
>  	     new_hdcp == DRM_MODE_CONTENT_PROTECTION_ENABLED) ||
>  	    (old_hdcp == DRM_MODE_CONTENT_PROTECTION_ENABLED &&
>  	     new_hdcp == DRM_MODE_CONTENT_PROTECTION_DESIRED)) {
> -		if (old_conn_state->hdcp_content_type ==
> -				new_conn_state->hdcp_content_type)
> -			return false;
> +		new_conn_state->content_protection =
> +			DRM_MODE_CONTENT_PROTECTION_ENABLED;
> +		return false;
>  	}
> 
> -	return true;
> +	/* Finally, if state changes, we need action */
> +	return old_hdcp != new_hdcp;
>  }
>  EXPORT_SYMBOL(drm_hdcp_atomic_check);
