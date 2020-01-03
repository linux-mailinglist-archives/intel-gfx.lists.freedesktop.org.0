Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5002F12FD28
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2020 20:38:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 138416E338;
	Fri,  3 Jan 2020 19:38:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 434AF6E334;
 Fri,  3 Jan 2020 19:38:30 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jan 2020 11:38:29 -0800
X-IronPort-AV: E=Sophos;i="5.69,391,1571727600"; d="scan'208";a="232196680"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com) ([10.7.196.150])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jan 2020 11:38:28 -0800
Date: Fri, 3 Jan 2020 11:38:29 -0800
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Hans de Goede <hdegoede@redhat.com>
Message-ID: <20200103193829.GD11904@intel.com>
References: <20191216115158.862404-1-hdegoede@redhat.com>
 <20191216115158.862404-3-hdegoede@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191216115158.862404-3-hdegoede@redhat.com>
Subject: Re: [Intel-gfx] [PATCH resend 2/2] drm/connector: Hookup the new
 drm_cmdline_mode panel_orientation member
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
Cc: dri-devel@lists.freedesktop.org,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Dec 16, 2019 at 12:51:58PM +0100, Hans de Goede wrote:
> If the new video=... panel_orientation option is set for a connector, honor
> it and setup a matching "panel orientation" property on the connector.
> 
> BugLink: https://gitlab.freedesktop.org/plymouth/plymouth/merge_requests/83
> Acked-by: Maxime Ripard <mripard@kernel.org>
> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
> ---
>  drivers/gpu/drm/drm_connector.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
> index f4fa5c59717d..d9d7fef26275 100644
> --- a/drivers/gpu/drm/drm_connector.c
> +++ b/drivers/gpu/drm/drm_connector.c
> @@ -140,6 +140,13 @@ static void drm_connector_get_cmdline_mode(struct drm_connector *connector)
>  		connector->force = mode->force;
>  	}
>  
> +	if (mode->panel_orientation != DRM_MODE_PANEL_ORIENTATION_UNKNOWN) {
> +		DRM_INFO("setting connector %s panel_orientation to %d\n",
> +			 connector->name, mode->panel_orientation);

Since this overrides the standard behavior should this deserve a debug that
is a bit more clear that we are forcing the mode with the cmdline?

> +		drm_connector_set_panel_orientation(connector,
> +						    mode->panel_orientation);
> +	}
> +
>  	DRM_DEBUG_KMS("cmdline mode for connector %s %s %dx%d@%dHz%s%s%s\n",
>  		      connector->name, mode->name,
>  		      mode->xres, mode->yres,
> -- 
> 2.23.0
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
