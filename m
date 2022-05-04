Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E7E0D51B1A4
	for <lists+intel-gfx@lfdr.de>; Thu,  5 May 2022 00:11:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE5BB10F403;
	Wed,  4 May 2022 22:11:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 238E910F403
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 May 2022 22:11:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651702284; x=1683238284;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=o7K6hzWC1e40ID/OBo9JMcCwYpy5au1onCVnQZD+ZEg=;
 b=kdZZ75czyJOTGufDFg5MP3B21iSwDO9u0C9jUNxXiX8Ps4MNtWEAcXM/
 xsCoEU/ze31xfIW1VFvJlol4JYugupxgMhdh02hfHlEso5/IRphGDr306
 GxRWF63rx8EoeKe1s+TzgnoX1qIz/JC7VrPEpBic+ui3jBEvsnlGVMw4y
 6Yd7t28qHKOz/MYhqbWkBQwhMkkn+ZvH72b2rfaafxBzUw6HjUQ3BQvgG
 l6xM4slsy66339I5lxcYIAvgtcml7FffCHI3xP6n2QO/i+/4uhRfSFian
 2V6SG1kUh5oLcAoJWibZa72SZI8D41MBvFoBEZ1uzpmL4qRVDu6pf0KgY w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10337"; a="293109986"
X-IronPort-AV: E=Sophos;i="5.91,199,1647327600"; d="scan'208";a="293109986"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 15:11:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,199,1647327600"; d="scan'208";a="562936532"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga007.jf.intel.com with SMTP; 04 May 2022 15:11:21 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 05 May 2022 01:11:20 +0300
Date: Thu, 5 May 2022 01:11:20 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YnL6CGr+RqDiLr1A@intel.com>
References: <cover.1651569697.git.jani.nikula@intel.com>
 <a137d2e272ad1eac5b286784008a4baf91bc2799.1651569697.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <a137d2e272ad1eac5b286784008a4baf91bc2799.1651569697.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 18/20] drm/edid: detect color formats and
 CTA revision in all CTA extensions
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

On Tue, May 03, 2022 at 12:24:03PM +0300, Jani Nikula wrote:
> Convert drm_find_cea_extension() to EDID block iterator in color format
> and CTA revision detection. Detect them in all CTA extensions.
> 
> Also parse CTA Data Blocks in DisplayID even if there's no CTA EDID
> extension.
> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/drm_edid.c | 24 ++++++++++++++++--------
>  1 file changed, 16 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
> index 3b18a6e501df..41f24f4c2d23 100644
> --- a/drivers/gpu/drm/drm_edid.c
> +++ b/drivers/gpu/drm/drm_edid.c
> @@ -5447,32 +5447,40 @@ static void drm_parse_cea_ext(struct drm_connector *connector,
>  			      const struct edid *edid)
>  {
>  	struct drm_display_info *info = &connector->display_info;
> +	struct drm_edid_iter edid_iter;
>  	const struct cea_db *db;
>  	struct cea_db_iter iter;
>  	const u8 *edid_ext;
>  
> -	edid_ext = drm_find_cea_extension(edid);
> -	if (!edid_ext)
> -		return;
> +	drm_edid_iter_begin(edid, &edid_iter);
> +	drm_edid_iter_for_each(edid_ext, &edid_iter) {
> +		if (edid_ext[0] != CEA_EXT)
> +			continue;
>  
> -	info->cea_rev = edid_ext[1];
> +		if (!info->cea_rev)
> +			info->cea_rev = edid_ext[1];
>  
> -	/* The existence of a CEA block should imply RGB support */
> -	info->color_formats = DRM_COLOR_FORMAT_RGB444;
> +		if (info->cea_rev != edid_ext[1])
> +			DRM_DEBUG_KMS("CEA extension version mismatch %u != %u\n",
> +				      info->cea_rev, edid_ext[1]);
>  
> -	/* CTA DisplayID Data Block does not have byte #3 */
> -	if (edid_ext[0] == CEA_EXT) {
> +		/* The existence of a CTA extension should imply RGB support */
> +		info->color_formats = DRM_COLOR_FORMAT_RGB444;
>  		if (edid_ext[3] & EDID_CEA_YCRCB444)
>  			info->color_formats |= DRM_COLOR_FORMAT_YCBCR444;
>  		if (edid_ext[3] & EDID_CEA_YCRCB422)
>  			info->color_formats |= DRM_COLOR_FORMAT_YCBCR422;
>  	}
> +	drm_edid_iter_end(&edid_iter);
>  
>  	cea_db_iter_edid_begin(edid, &iter);
>  	cea_db_iter_for_each(db, &iter) {
>  		/* FIXME: convert parsers to use struct cea_db */
>  		const u8 *data = (const u8 *)db;
>  
> +		/* The existence of a CTA block should imply RGB support */
> +		info->color_formats = DRM_COLOR_FORMAT_RGB444;

This part seems a bit iffy. DisplayID has its own way to specify the
supported color depths/encodings. So I think eventually we'll just
want to split this into three logical parts: parse CTA ext block,
parse DispID color stuff, parse CTA data blocks.

> +
>  		if (cea_db_is_hdmi_vsdb(db))
>  			drm_parse_hdmi_vsdb_video(connector, data);
>  		if (cea_db_is_hdmi_forum_vsdb(db) ||
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel
