Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69E3C7147B2
	for <lists+intel-gfx@lfdr.de>; Mon, 29 May 2023 12:04:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBA1010E271;
	Mon, 29 May 2023 10:04:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F1F110E271
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 May 2023 10:04:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685354688; x=1716890688;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=pFPxTmUeR4k15eiFkLVCz7znc+4svnROv7IKhLddWFE=;
 b=e3KWfr/O878y6bQDnCEUxdK9+QSdkr4D3fp+aVukgLgux8IW96iuAXEo
 mmVWDhYTkhkpfls4CYpUoEUjUA+LvIxSsqmRocBFvzo2rjHdX5wLnnvK+
 kppOcAZtl/SqFy9t2ztpVbCNxr1+YSbSuNvxun4E+5rDl+6NnG/j+VX8i
 BCr89lq/PktY5mxkxE1EI5wLYe5vE9dSM5ZYmW3NbHSj87f/RaeTpgFYB
 mQJvalATj0RPKS738G08Jp3UHRBKR+WvFxwS7vCMmjz/Hp9BwWdEh58cT
 uy0IFX6NOqYJjQbeU1l3ilUUUcjodopHP/aVG0qi5EJJlg6u8kQGPeRVM A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10724"; a="357922662"
X-IronPort-AV: E=Sophos;i="6.00,201,1681196400"; d="scan'208";a="357922662"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2023 03:04:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10724"; a="850341362"
X-IronPort-AV: E=Sophos;i="6.00,201,1681196400"; d="scan'208";a="850341362"
Received: from iswiersz-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.191])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2023 03:04:44 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Dan Carpenter <dan.carpenter@linaro.org>, oe-kbuild@lists.linux.dev,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <67cd1180-7ffb-46f6-ab30-717219a654fe@kili.mountain>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <67cd1180-7ffb-46f6-ab30-717219a654fe@kili.mountain>
Date: Mon, 29 May 2023 13:04:41 +0300
Message-ID: <87zg5nh2rq.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 01/15] drm/i915/plane: warn on non-zero
 plane offset
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
Cc: oe-kbuild-all@lists.linux.dev
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 29 May 2023, Dan Carpenter <dan.carpenter@linaro.org> wrote:
> Hi Jani,
>
> kernel test robot noticed the following build warnings:

Thanks, v2 already on the list:

https://patchwork.freedesktop.org/patch/msgid/20230526172218.1597394-1-jani=
.nikula@intel.com


>
> url:    https://github.com/intel-lab-lkp/linux/commits/Jani-Nikula/drm-i9=
15-plane-warn-on-non-zero-plane-offset/20230527-003951
> base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
> patch link:    https://lore.kernel.org/r/0988d237e56c56568f035053da8e2e23=
08a17d3a.1685119007.git.jani.nikula%40intel.com
> patch subject: [Intel-gfx] [PATCH 01/15] drm/i915/plane: warn on non-zero=
 plane offset
> config: x86_64-randconfig-m031-20230526 (https://download.01.org/0day-ci/=
archive/20230528/202305280453.8yzCMS2i-lkp@intel.com/config)
> compiler: gcc-11 (Debian 11.3.0-12) 11.3.0
>
> If you fix the issue, kindly add following tag where applicable
> | Reported-by: kernel test robot <lkp@intel.com>
> | Reported-by: Dan Carpenter <error27@gmail.com>
> | Closes: https://lore.kernel.org/r/202305280453.8yzCMS2i-lkp@intel.com/
>
> smatch warnings:
> drivers/gpu/drm/i915/display/i9xx_plane.c:1040 i9xx_get_initial_plane_con=
fig() error: uninitialized symbol 'offset'.
>
> vim +/offset +1040 drivers/gpu/drm/i915/display/i9xx_plane.c
>
> 2a3014490cd18a Dave Airlie   2021-02-05   974  void
> 2a3014490cd18a Dave Airlie   2021-02-05   975  i9xx_get_initial_plane_con=
fig(struct intel_crtc *crtc,
> 2a3014490cd18a Dave Airlie   2021-02-05   976  			      struct intel_init=
ial_plane_config *plane_config)
> 2a3014490cd18a Dave Airlie   2021-02-05   977  {
> 2a3014490cd18a Dave Airlie   2021-02-05   978  	struct drm_device *dev =
=3D crtc->base.dev;
> 2a3014490cd18a Dave Airlie   2021-02-05   979  	struct drm_i915_private *=
dev_priv =3D to_i915(dev);
> 2a3014490cd18a Dave Airlie   2021-02-05   980  	struct intel_plane *plane=
 =3D to_intel_plane(crtc->base.primary);
> 2a3014490cd18a Dave Airlie   2021-02-05   981  	enum i9xx_plane_id i9xx_p=
lane =3D plane->i9xx_plane;
> 2a3014490cd18a Dave Airlie   2021-02-05   982  	enum pipe pipe;
> 2a3014490cd18a Dave Airlie   2021-02-05   983  	u32 val, base, offset;
> 2a3014490cd18a Dave Airlie   2021-02-05   984  	int fourcc, pixel_format;
> 2a3014490cd18a Dave Airlie   2021-02-05   985  	unsigned int aligned_heig=
ht;
> 2a3014490cd18a Dave Airlie   2021-02-05   986  	struct drm_framebuffer *f=
b;
> 2a3014490cd18a Dave Airlie   2021-02-05   987  	struct intel_framebuffer =
*intel_fb;
> 2a3014490cd18a Dave Airlie   2021-02-05   988=20=20
> 2a3014490cd18a Dave Airlie   2021-02-05   989  	if (!plane->get_hw_state(=
plane, &pipe))
> 2a3014490cd18a Dave Airlie   2021-02-05   990  		return;
> 2a3014490cd18a Dave Airlie   2021-02-05   991=20=20
> 2a3014490cd18a Dave Airlie   2021-02-05   992  	drm_WARN_ON(dev, pipe !=
=3D crtc->pipe);
> 2a3014490cd18a Dave Airlie   2021-02-05   993=20=20
> 2a3014490cd18a Dave Airlie   2021-02-05   994  	intel_fb =3D kzalloc(size=
of(*intel_fb), GFP_KERNEL);
> 2a3014490cd18a Dave Airlie   2021-02-05   995  	if (!intel_fb) {
> 2a3014490cd18a Dave Airlie   2021-02-05   996  		drm_dbg_kms(&dev_priv->d=
rm, "failed to alloc fb\n");
> 2a3014490cd18a Dave Airlie   2021-02-05   997  		return;
> 2a3014490cd18a Dave Airlie   2021-02-05   998  	}
> 2a3014490cd18a Dave Airlie   2021-02-05   999=20=20
> 2a3014490cd18a Dave Airlie   2021-02-05  1000  	fb =3D &intel_fb->base;
> 2a3014490cd18a Dave Airlie   2021-02-05  1001=20=20
> 2a3014490cd18a Dave Airlie   2021-02-05  1002  	fb->dev =3D dev;
> 2a3014490cd18a Dave Airlie   2021-02-05  1003=20=20
> 2a3014490cd18a Dave Airlie   2021-02-05  1004  	val =3D intel_de_read(dev=
_priv, DSPCNTR(i9xx_plane));
> 2a3014490cd18a Dave Airlie   2021-02-05  1005=20=20
> 005e95377249cb Matt Roper    2021-03-19  1006  	if (DISPLAY_VER(dev_priv)=
 >=3D 4) {
> 428cb15d5b0031 Ville Syrj=C3=A4l=C3=A4 2022-01-21  1007  		if (val & DISP=
_TILED) {
> 2a3014490cd18a Dave Airlie   2021-02-05  1008  			plane_config->tiling =
=3D I915_TILING_X;
> 2a3014490cd18a Dave Airlie   2021-02-05  1009  			fb->modifier =3D I915_F=
ORMAT_MOD_X_TILED;
> 2a3014490cd18a Dave Airlie   2021-02-05  1010  		}
> 2a3014490cd18a Dave Airlie   2021-02-05  1011=20=20
> 428cb15d5b0031 Ville Syrj=C3=A4l=C3=A4 2022-01-21  1012  		if (val & DISP=
_ROTATE_180)
> 2a3014490cd18a Dave Airlie   2021-02-05  1013  			plane_config->rotation =
=3D DRM_MODE_ROTATE_180;
> 2a3014490cd18a Dave Airlie   2021-02-05  1014  	}
> 2a3014490cd18a Dave Airlie   2021-02-05  1015=20=20
> 2a3014490cd18a Dave Airlie   2021-02-05  1016  	if (IS_CHERRYVIEW(dev_pri=
v) && pipe =3D=3D PIPE_B &&
> 428cb15d5b0031 Ville Syrj=C3=A4l=C3=A4 2022-01-21  1017  	    val & DISP_=
MIRROR)
> 2a3014490cd18a Dave Airlie   2021-02-05  1018  		plane_config->rotation |=
=3D DRM_MODE_REFLECT_X;
> 2a3014490cd18a Dave Airlie   2021-02-05  1019=20=20
> 428cb15d5b0031 Ville Syrj=C3=A4l=C3=A4 2022-01-21  1020  	pixel_format =
=3D val & DISP_FORMAT_MASK;
> 2a3014490cd18a Dave Airlie   2021-02-05  1021  	fourcc =3D i9xx_format_to=
_fourcc(pixel_format);
> 2a3014490cd18a Dave Airlie   2021-02-05  1022  	fb->format =3D drm_format=
_info(fourcc);
> 2a3014490cd18a Dave Airlie   2021-02-05  1023=20=20
> 2a3014490cd18a Dave Airlie   2021-02-05  1024  	if (IS_HASWELL(dev_priv) =
|| IS_BROADWELL(dev_priv)) {
> 2a3014490cd18a Dave Airlie   2021-02-05  1025  		offset =3D intel_de_read=
(dev_priv, DSPOFFSET(i9xx_plane));
> 428cb15d5b0031 Ville Syrj=C3=A4l=C3=A4 2022-01-21  1026  		base =3D intel=
_de_read(dev_priv, DSPSURF(i9xx_plane)) & DISP_ADDR_MASK;
> 005e95377249cb Matt Roper    2021-03-19  1027  	} else if (DISPLAY_VER(de=
v_priv) >=3D 4) {
> 2a3014490cd18a Dave Airlie   2021-02-05  1028  		if (plane_config->tiling)
> 2a3014490cd18a Dave Airlie   2021-02-05  1029  			offset =3D intel_de_rea=
d(dev_priv,
> 2a3014490cd18a Dave Airlie   2021-02-05  1030  					       DSPTILEOFF(i9x=
x_plane));
> 2a3014490cd18a Dave Airlie   2021-02-05  1031  		else
> 2a3014490cd18a Dave Airlie   2021-02-05  1032  			offset =3D intel_de_rea=
d(dev_priv,
> 2a3014490cd18a Dave Airlie   2021-02-05  1033  					       DSPLINOFF(i9xx=
_plane));
> 428cb15d5b0031 Ville Syrj=C3=A4l=C3=A4 2022-01-21  1034  		base =3D intel=
_de_read(dev_priv, DSPSURF(i9xx_plane)) & DISP_ADDR_MASK;
> 2a3014490cd18a Dave Airlie   2021-02-05  1035  	} else {
> 2a3014490cd18a Dave Airlie   2021-02-05  1036  		base =3D intel_de_read(d=
ev_priv, DSPADDR(i9xx_plane));
>
> offset not initialized on this path.
>
> 2a3014490cd18a Dave Airlie   2021-02-05  1037  	}
> 2a3014490cd18a Dave Airlie   2021-02-05  1038  	plane_config->base =3D ba=
se;
> 2a3014490cd18a Dave Airlie   2021-02-05  1039=20=20
> 40c3d9e9221e23 Jani Nikula   2023-05-26 @1040  	drm_WARN_ON(&dev_priv->dr=
m, offset !=3D 0);

--=20
Jani Nikula, Intel Open Source Graphics Center
