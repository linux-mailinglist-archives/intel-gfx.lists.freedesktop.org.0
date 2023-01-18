Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AEFC2672056
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 15:56:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2449610E762;
	Wed, 18 Jan 2023 14:56:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2184B10E761;
 Wed, 18 Jan 2023 14:56:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674053790; x=1705589790;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ppacL10B9CJfkWOwyfu1rpq320E1fOqJoAOs49v3lp4=;
 b=DZKHSRoPtk0rJfcmlc/sAHJVcMyLw18WlTgVgjOwvh4M1X2FVYhMdy8j
 EOJOOXfjAmKhwZBVxevoNtC5HkwwnB7lRvAkvFAIkZ7eMUwoF9i5zj14f
 g8M+46hzRd8PC1bMiQJDkci0HP6xp7tBHmnGHszSOKrXwAIMSp8JNdKKi
 yFFDdMBMrC+tWhgtoBIpMeKSwvbMaXvAz9sUbaGmAMWzFB8svx1D3zCQ5
 zKjMWZemBFqL7ocHC0ZBxLQbFFK5sRcRDjU8R4czV27QZB9erg2TShtcp
 JNjlz+M6zlExoZ+6J4etjG/f+aqCOes4z3F5f7W2uhkY+v/yG+oUazzUh g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="327072748"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="327072748"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 06:56:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="637318168"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="637318168"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga006.jf.intel.com with SMTP; 18 Jan 2023 06:56:26 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 Jan 2023 16:56:26 +0200
Date: Wed, 18 Jan 2023 16:56:26 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Y8gImnTq8+e/Gt95@intel.com>
References: <cover.1672826282.git.jani.nikula@intel.com>
 <c3e78cc6d01ed237f71ad0038826b08d83d75eef.1672826282.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <c3e78cc6d01ed237f71ad0038826b08d83d75eef.1672826282.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v7 01/22] drm/edid: fix AVI infoframe aspect
 ratio handling
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
Cc: stable@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 William Tseng <william.tseng@intel.com>, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 04, 2023 at 12:05:16PM +0200, Jani Nikula wrote:
> We try to avoid sending VICs defined in the later specs in AVI
> infoframes to sinks that conform to the earlier specs, to not upset
> them, and use 0 for the VIC instead. However, we do this detection and
> conversion to 0 too early, as we'll need the actual VIC to figure out
> the aspect ratio.
> 
> In particular, for a mode with 64:27 aspect ratio, 0 for VIC fails the
> AVI infoframe generation altogether with -EINVAL.
> 
> Separate the VIC lookup from the "filtering", and postpone the
> filtering, to use the proper VIC for aspect ratio handling, and the 0
> VIC for the infoframe video code as needed.
> 
> Reported-by: William Tseng <william.tseng@intel.com>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6153
> References: https://lore.kernel.org/r/20220920062316.43162-1-william.tseng@intel.com
> Cc: <stable@vger.kernel.org>
> Cc: Ville Syrj�l� <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrj�l� <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/drm_edid.c | 21 ++++++++++++---------
>  1 file changed, 12 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
> index 3841aba17abd..23f7146e6a9b 100644
> --- a/drivers/gpu/drm/drm_edid.c
> +++ b/drivers/gpu/drm/drm_edid.c
> @@ -6885,8 +6885,6 @@ static u8 drm_mode_hdmi_vic(const struct drm_connector *connector,
>  static u8 drm_mode_cea_vic(const struct drm_connector *connector,
>  			   const struct drm_display_mode *mode)
>  {
> -	u8 vic;
> -
>  	/*
>  	 * HDMI spec says if a mode is found in HDMI 1.4b 4K modes
>  	 * we should send its VIC in vendor infoframes, else send the
> @@ -6896,13 +6894,18 @@ static u8 drm_mode_cea_vic(const struct drm_connector *connector,
>  	if (drm_mode_hdmi_vic(connector, mode))
>  		return 0;
>  
> -	vic = drm_match_cea_mode(mode);
> +	return drm_match_cea_mode(mode);
> +}
>  
> -	/*
> -	 * HDMI 1.4 VIC range: 1 <= VIC <= 64 (CEA-861-D) but
> -	 * HDMI 2.0 VIC range: 1 <= VIC <= 107 (CEA-861-F). So we
> -	 * have to make sure we dont break HDMI 1.4 sinks.
> -	 */
> +/*
> + * Avoid sending VICs defined in HDMI 2.0 in AVI infoframes to sinks that
> + * conform to HDMI 1.4.
> + *
> + * HDMI 1.4 (CTA-861-D) VIC range: [1..64]
> + * HDMI 2.0 (CTA-861-F) VIC range: [1..107]
> + */
> +static u8 vic_for_avi_infoframe(const struct drm_connector *connector, u8 vic)
> +{
>  	if (!is_hdmi2_sink(connector) && vic > 64)
>  		return 0;
>  
> @@ -6978,7 +6981,7 @@ drm_hdmi_avi_infoframe_from_display_mode(struct hdmi_avi_infoframe *frame,
>  		picture_aspect = HDMI_PICTURE_ASPECT_NONE;
>  	}
>  
> -	frame->video_code = vic;
> +	frame->video_code = vic_for_avi_infoframe(connector, vic);
>  	frame->picture_aspect = picture_aspect;
>  	frame->active_aspect = HDMI_ACTIVE_ASPECT_PICTURE;
>  	frame->scan_mode = HDMI_SCAN_MODE_UNDERSCAN;
> -- 
> 2.34.1

-- 
Ville Syrj�l�
Intel
