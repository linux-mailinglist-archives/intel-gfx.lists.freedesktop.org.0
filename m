Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20EF67BD811
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 12:07:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F29410E0EB;
	Mon,  9 Oct 2023 10:07:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 074C210E0EB
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Oct 2023 10:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696846041; x=1728382041;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=h/QRC35zhXt8p/lbk8iebBeOCRZAPJOFqZiJ0NCp1Bo=;
 b=cBtZG/2OzEek370KqV9LXEsdgnn8t8xfOLxGmhPYyGuCydUlBXZMsHwR
 K5AW3yUXLWtb48Aa2Ewq0oAHwspb5o83jngpQJ0QFabRUPyXTIVUyhHB3
 I9yd37l6oP5KX6sshXihnDsHA0TbXmmdmoFNFxFRUUKxPY9iF3Gl9106I
 eOlQ8x9rpBbBih9/RFdEm7Xlsd5aGoI08kfR8K+hgAwuil3b8c2iQwvff
 DNMMCeIdNj/qAgCQ/KAJvz+WsMqxJflR4Wc3/z1YQnB3GUyaYiiDU2AXr
 ZaFHhS8kJPKzPfsCwRgWeRA4Ad+oyhiPmzoPvl24vjZl+qkQnoc2Qflfi Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10857"; a="415099603"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="415099603"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 03:07:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10857"; a="756662644"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="756662644"
Received: from eboyarsk-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.57.41])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 03:07:19 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20231009094254.653551-2-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231009094254.653551-1-suraj.kandpal@intel.com>
 <20231009094254.653551-2-suraj.kandpal@intel.com>
Date: Mon, 09 Oct 2023 13:07:16 +0300
Message-ID: <87a5ss6re3.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v5 1/2] drm/i915/hdcp: Move checks for gsc
 health status
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

On Mon, 09 Oct 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Move checks for gsc components required for HDCP 2.2
> to work into intel_hdcp_gsc.c. This will also help
> with XE refactor on HDCP's side.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c     |  8 +-------
>  drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 14 ++++++++++++++
>  drivers/gpu/drm/i915/display/intel_hdcp_gsc.h |  1 +
>  3 files changed, 16 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 8cca4793cf92..c89da3568ebd 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -173,14 +173,8 @@ bool intel_hdcp2_capable(struct intel_connector *connector)
>  
>  	/* If MTL+ make sure gsc is loaded and proxy is setup */
>  	if (intel_hdcp_gsc_cs_required(i915)) {
> -		struct intel_gt *gt = i915->media_gt;
> -		struct intel_gsc_uc *gsc = gt ? &gt->uc.gsc : NULL;
> -
> -		if (!gsc || !intel_uc_fw_is_running(&gsc->fw)) {
> -			drm_dbg_kms(&i915->drm,
> -				    "GSC components required for HDCP2.2 are not ready\n");
> +		if (!intel_hdcp_gsc_check_status(i915))

Naming nitpick, though not intended to block the patch:

I always stop at functions named "check" that return a value. What does
the return value mean? The above code reads, "if not check status".

So I usually try to name functions so that it's obvious on both sides
what it means, when you read it aloud. For example, "if not status ok".

Just something to consider for the future.


BR,
Jani.



>  			return false;
> -		}
>  	}
>  
>  	/* MEI/GSC interface is solid depending on which is used */
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> index d753db3eef15..d355d610bc9f 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> @@ -17,6 +17,20 @@ bool intel_hdcp_gsc_cs_required(struct drm_i915_private *i915)
>  	return DISPLAY_VER(i915) >= 14;
>  }
>  
> +bool intel_hdcp_gsc_check_status(struct drm_i915_private *i915)
> +{
> +	struct intel_gt *gt = i915->media_gt;
> +	struct intel_gsc_uc *gsc = gt ? &gt->uc.gsc : NULL;
> +
> +	if (!gsc || !intel_uc_fw_is_running(&gsc->fw)) {
> +		drm_dbg_kms(&i915->drm,
> +			    "GSC components required for HDCP2.2 are not ready\n");
> +		return false;
> +	}
> +
> +	return true;
> +}
> +
>  static int
>  gsc_hdcp_initiate_session(struct device *dev, struct hdcp_port_data *data,
>  			  struct hdcp2_ake_init *ake_data)
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> index cbf96551e534..eba2057c5a9e 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> @@ -23,5 +23,6 @@ ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
>  				size_t msg_out_len);
>  int intel_hdcp_gsc_init(struct drm_i915_private *i915);
>  void intel_hdcp_gsc_fini(struct drm_i915_private *i915);
> +bool intel_hdcp_gsc_check_status(struct drm_i915_private *i915);
>  
>  #endif /* __INTEL_HDCP_GCS_H__ */

-- 
Jani Nikula, Intel
