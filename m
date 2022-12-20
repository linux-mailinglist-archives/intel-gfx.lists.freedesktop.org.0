Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC9E9652128
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Dec 2022 14:02:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34FA410E0F4;
	Tue, 20 Dec 2022 13:02:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1A7C10E0C5;
 Tue, 20 Dec 2022 13:02:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671541359; x=1703077359;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=iJuDXObgpOg4YbTwOvaH7CZlJ4WHoY6j/Dq9FIgcIsM=;
 b=WrAuDx788p49Gtp/TGwih7eSW7vdQdxGNrEp3GgnhksaalBTBR/CG3Sz
 Vv1VNPvAKcW3ZQWkuC2PxOZExpSfaCWXmXh/EoVGRSEzh5M2emulE/KBQ
 wNE0Hp3ocBbxBqJoAU2MAxdfN9UQicTusE6rMJZ2vTUdPQaofpcpW3kOG
 YDnnumzUki/GPf4e4yTRc7boD4C806VVdD1shGOjY6ulx48y6J9pmUk8K
 VgDlBOkDiuEYtfGCt7J3Nvld4K/IRP4XpCot0v16UUXW1cLMwjVLoXuAX
 Reivopa8VbPP1xIM6esNEIiRcpfad/rk+zYGDrwxYWa/QKLeNN07bI/lF A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="307286119"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="307286119"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 05:02:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="653085043"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="653085043"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga007.fm.intel.com with SMTP; 20 Dec 2022 05:02:33 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 20 Dec 2022 15:02:33 +0200
Date: Tue, 20 Dec 2022 15:02:33 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Y6GyadM7DS6Z+Hvd@intel.com>
References: <cover.1671206131.git.jani.nikula@intel.com>
 <f35102562feb9ca63462a902a582c3494fccde4d.1671206131.git.jani.nikula@intel.com>
 <Y6GsQXvDKPKsHf30@intel.com> <87wn6m2q6m.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87wn6m2q6m.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v6 06/12] drm/edid: refactor
 _drm_edid_connector_update() and rename
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Dec 20, 2022 at 02:52:01PM +0200, Jani Nikula wrote:
> On Tue, 20 Dec 2022, Ville Syrj�l� <ville.syrjala@linux.intel.com> wrote:
> > On Fri, Dec 16, 2022 at 06:00:20PM +0200, Jani Nikula wrote:
> >> By moving update_display_info() out of _drm_edid_connector_update() we
> >> make the function purely about adding modes.
> >
> > I don't think that's quite true. The 4:2:0 stuff still updates
> > various display_info things from the mode parsing functions.
> 
> Right. I meant the top level. Will amend the commit message.

So what's going to happen with the 4:2:0 stuff? Are we just clobbering
it if/when someone calls the update_display_info() stuff w/o calling 
add_modes()?

> 
> BR,
> Jani.
> 
> 
> >
> >> Rename accordingly.
> >> 
> >> Cc: Imre Deak <imre.deak@intel.com>
> >> Cc: Ville Syrj�l� <ville.syrjala@linux.intel.com>
> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >> ---
> >>  drivers/gpu/drm/drm_edid.c | 25 ++++++++++++-------------
> >>  1 file changed, 12 insertions(+), 13 deletions(-)
> >> 
> >> diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
> >> index 15f69c362fc3..4ebfd7212bce 100644
> >> --- a/drivers/gpu/drm/drm_edid.c
> >> +++ b/drivers/gpu/drm/drm_edid.c
> >> @@ -6575,19 +6575,12 @@ static int add_displayid_detailed_modes(struct drm_connector *connector,
> >>  	return num_modes;
> >>  }
> >>  
> >> -static int _drm_edid_connector_update(struct drm_connector *connector,
> >> -				      const struct drm_edid *drm_edid)
> >> +static int _drm_edid_connector_add_modes(struct drm_connector *connector,
> >> +					 const struct drm_edid *drm_edid)
> >>  {
> >>  	const struct drm_display_info *info = &connector->display_info;
> >>  	int num_modes = 0;
> >>  
> >> -	/*
> >> -	 * CEA-861-F adds ycbcr capability map block, for HDMI 2.0 sinks.
> >> -	 * To avoid multiple parsing of same block, lets parse that map
> >> -	 * from sink info, before parsing CEA modes.
> >> -	 */
> >> -	update_display_info(connector, drm_edid);
> >> -
> >>  	if (!drm_edid)
> >>  		return 0;
> >>  
> >> @@ -6692,7 +6685,9 @@ int drm_edid_connector_update(struct drm_connector *connector,
> >>  {
> >>  	int count;
> >>  
> >> -	count = _drm_edid_connector_update(connector, drm_edid);
> >> +	update_display_info(connector, drm_edid);
> >> +
> >> +	count = _drm_edid_connector_add_modes(connector, drm_edid);
> >>  
> >>  	_drm_update_tile_info(connector, drm_edid);
> >>  
> >> @@ -6762,7 +6757,8 @@ EXPORT_SYMBOL(drm_connector_update_edid_property);
> >>   */
> >>  int drm_add_edid_modes(struct drm_connector *connector, struct edid *edid)
> >>  {
> >> -	struct drm_edid drm_edid;
> >> +	struct drm_edid _drm_edid;
> >> +	const struct drm_edid *drm_edid;
> >>  
> >>  	if (edid && !drm_edid_is_valid(edid)) {
> >>  		drm_warn(connector->dev, "[CONNECTOR:%d:%s] EDID invalid.\n",
> >> @@ -6770,8 +6766,11 @@ int drm_add_edid_modes(struct drm_connector *connector, struct edid *edid)
> >>  		edid = NULL;
> >>  	}
> >>  
> >> -	return _drm_edid_connector_update(connector,
> >> -					  drm_edid_legacy_init(&drm_edid, edid));
> >> +	drm_edid = drm_edid_legacy_init(&_drm_edid, edid);
> >> +
> >> +	update_display_info(connector, drm_edid);
> >> +
> >> +	return _drm_edid_connector_add_modes(connector, drm_edid);
> >>  }
> >>  EXPORT_SYMBOL(drm_add_edid_modes);
> >>  
> >> -- 
> >> 2.34.1
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Ville Syrj�l�
Intel
