Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EC291A143F
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 20:38:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 527066E8D7;
	Tue,  7 Apr 2020 18:38:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from asavdk4.altibox.net (asavdk4.altibox.net [109.247.116.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBEC66E8D4;
 Tue,  7 Apr 2020 18:38:53 +0000 (UTC)
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id 259AA80536;
 Tue,  7 Apr 2020 20:38:52 +0200 (CEST)
Date: Tue, 7 Apr 2020 20:38:50 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200407183850.GG6356@ravnborg.org>
References: <20200403204008.14864-1-ville.syrjala@linux.intel.com>
 <20200403204008.14864-8-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200403204008.14864-8-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=XpTUx2N9 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=8nJEP1OIZ-IA:10 a=QyXUC8HyAAAA:8
 a=QX4gbG5DAAAA:8 a=7gkXJVJtAAAA:8 a=e5mUnYsNAAAA:8 a=wmNYc3pJvU4XYw7MKMQA:9
 a=wPNLvfGTeEIA:10 a=AbAUZ8qAyYyZVLSsDulk:22 a=E9Po1WZjFZOl8hwRPBS3:22
 a=Vxmtnl_E_bksehYqCbjh:22
Subject: Re: [Intel-gfx] [PATCH v2 07/17] drm: Make mode->flags u32
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Emil Velikov <emil.velikov@collabora.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Apr 03, 2020 at 11:39:58PM +0300, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> The mode flags are direclty exposed in the uapi as u32. Use the
> same size type to store them internally.
> =

> Reviewed-by: Emil Velikov <emil.velikov@collabora.com>
> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
> ---
>  include/drm/drm_modes.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/include/drm/drm_modes.h b/include/drm/drm_modes.h
> index f4507b987038..da7db74a215e 100644
> --- a/include/drm/drm_modes.h
> +++ b/include/drm/drm_modes.h
> @@ -322,7 +322,7 @@ struct drm_display_mode {
>  	 *  - DRM_MODE_FLAG_3D_SIDE_BY_SIDE_HALF: frame split into left and
>  	 *    right parts.
>  	 */
> -	unsigned int flags;
> +	u32 flags;
>  =

>  	/**
>  	 * @width_mm:
> -- =

> 2.24.1
> =

> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
