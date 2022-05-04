Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96C5551B1AF
	for <lists+intel-gfx@lfdr.de>; Thu,  5 May 2022 00:14:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC23B10F4D2;
	Wed,  4 May 2022 22:14:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 977B310F4C6
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 May 2022 22:14:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651702483; x=1683238483;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ADXl3jM26OEsIKiU34B3Ivn8VxVId1finYVFs7E/fQo=;
 b=ZOGQoT0UjTtllIz4IjMsoceobLdcHQhhYeEUl34VAbUK4HYMgslFQQcu
 Yu+0/YT1dzem2+ugJ6rlBVMeHEIhb1Zqze4uDIlZwn/NDNUO1q4wwD+pB
 4dXmME+QNRCdqiBWSgjLnfLGBwMqJE7yNts9Zgye6vskBd9M0HtE3cFGx
 WVPpOog+oNFYk1oFuV+N+agfPBjfsVGBvVVAuX4oT/Wbj7u5IScAJkVMd
 h+iPHu4NI7kp3AUPVbruheoGuZoI09ZBbLuI+bij3PF/iwNu5Z2RHnuSY
 GJsmGOcGR9yNGHHdU6VayISVeRq3HXMkct+97ihzkVm+x3uWH0sDpe/xQ w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10337"; a="248450288"
X-IronPort-AV: E=Sophos;i="5.91,199,1647327600"; d="scan'208";a="248450288"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 15:14:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,199,1647327600"; d="scan'208";a="537041072"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga006.jf.intel.com with SMTP; 04 May 2022 15:14:40 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 05 May 2022 01:14:40 +0300
Date: Thu, 5 May 2022 01:14:40 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YnL60C4e63/fFqDB@intel.com>
References: <cover.1651569697.git.jani.nikula@intel.com>
 <7400792525c13f58652f288b891d6057637ed4c8.1651569697.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <7400792525c13f58652f288b891d6057637ed4c8.1651569697.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 13/20] drm/edid: convert
 drm_parse_cea_ext() to use cea db iter
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

On Tue, May 03, 2022 at 12:23:58PM +0300, Jani Nikula wrote:
> Iterate through all CTA data blocks across all CTA Extensions and
> DisplayID data blocks.
> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/drm_edid.c | 25 +++++++++++++------------
>  1 file changed, 13 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
> index 3433d9fa4799..98b2e6164468 100644
> --- a/drivers/gpu/drm/drm_edid.c
> +++ b/drivers/gpu/drm/drm_edid.c
> @@ -5497,8 +5497,9 @@ static void drm_parse_cea_ext(struct drm_connector *connector,
>  			      const struct edid *edid)
>  {
>  	struct drm_display_info *info = &connector->display_info;
> +	const struct cea_db *db;
> +	struct cea_db_iter iter;
>  	const u8 *edid_ext;
> -	int i, start, end;
>  
>  	edid_ext = drm_find_cea_extension(edid);
>  	if (!edid_ext)
> @@ -5517,26 +5518,26 @@ static void drm_parse_cea_ext(struct drm_connector *connector,
>  			info->color_formats |= DRM_COLOR_FORMAT_YCBCR422;
>  	}
>  
> -	if (cea_db_offsets(edid_ext, &start, &end))
> -		return;
> -
> -	for_each_cea_db(edid_ext, i, start, end) {
> -		const u8 *db = &edid_ext[i];
> +	cea_db_iter_edid_begin(edid, &iter);
> +	cea_db_iter_for_each(db, &iter) {
> +		/* FIXME: convert parsers to use struct cea_db */
> +		const u8 *data = (const u8 *)db;
>  
>  		if (cea_db_is_hdmi_vsdb(db))
> -			drm_parse_hdmi_vsdb_video(connector, db);
> +			drm_parse_hdmi_vsdb_video(connector, data);
>  		if (cea_db_is_hdmi_forum_vsdb(db) ||
>  		    cea_db_is_hdmi_forum_scdb(db))

BTW looks like all of these could be 'else if'. Dunno if that actually
affects the generated code though, or if the compiler is smart enough
to see only one condition can by true.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> -			drm_parse_hdmi_forum_scds(connector, db);
> +			drm_parse_hdmi_forum_scds(connector, data);
>  		if (cea_db_is_microsoft_vsdb(db))
> -			drm_parse_microsoft_vsdb(connector, db);
> +			drm_parse_microsoft_vsdb(connector, data);
>  		if (cea_db_is_y420cmdb(db))
> -			drm_parse_y420cmdb_bitmap(connector, db);
> +			drm_parse_y420cmdb_bitmap(connector, data);
>  		if (cea_db_is_vcdb(db))
> -			drm_parse_vcdb(connector, db);
> +			drm_parse_vcdb(connector, data);
>  		if (cea_db_is_hdmi_hdr_metadata_block(db))
> -			drm_parse_hdr_metadata_block(connector, db);
> +			drm_parse_hdr_metadata_block(connector, data);
>  	}
> +	cea_db_iter_end(&iter);
>  }
>  
>  static
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel
