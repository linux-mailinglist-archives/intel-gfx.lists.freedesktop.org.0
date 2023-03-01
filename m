Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BBC236A6919
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Mar 2023 09:49:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C82E10E20F;
	Wed,  1 Mar 2023 08:49:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B75E10E20F;
 Wed,  1 Mar 2023 08:49:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677660573; x=1709196573;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=9YEmsxwmmy9ff/1/Wf5iqo2wwS7mBnaOS+D0ssk02zQ=;
 b=aBzyFYBkGOkUKYHYQi9xeofsKtsqUXJMNxl+DWkeyWFj/lNBRRGo1sWs
 wGTNnZp2dXAYtalEhg9Cgd26kOzjKSTDtZJa0ErXdgk11wpURHJCZR6N3
 3B/vtdSx31MPZRmW5GOlmUGPdk39TQgg7rfaDuAss8ltvcNche0EC1tKl
 45BN9Zaze6xv6da5OdsBEx8elHamsweXQQKKBfTe/WS0/TNKzJZ1nDzFu
 izu0kGKyg9b6D0VOUr6szWtfC00CKHWI0zgqfdNwjhXNJWGcZm9xsOFJz
 5QzAc47hdTRIAKjqqArr6crNWzIvnVxkiv/GZ15EDNMThlB95PmKr2PUl Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="314024326"
X-IronPort-AV: E=Sophos;i="5.98,224,1673942400"; d="scan'208";a="314024326"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 00:49:31 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="651927064"
X-IronPort-AV: E=Sophos;i="5.98,224,1673942400"; d="scan'208";a="651927064"
Received: from dsvarnas-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.46.249])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 00:49:29 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 dri-devel@lists.freedesktop.org
In-Reply-To: <20230228213610.26283-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230227143648.7776-1-ville.syrjala@linux.intel.com>
 <20230228213610.26283-1-ville.syrjala@linux.intel.com>
Date: Wed, 01 Mar 2023 10:49:26 +0200
Message-ID: <87pm9sx3e1.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2] drm/edid: Fix csync detailed mode parsing
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

On Tue, 28 Feb 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Remove the bogus csync check and replace it with something that:
> - triggers for all forms of csync, not just the basic analog variant
> - actually populates the mode csync flags so that drivers can
>   decide what to do with the mode
>
> Originally the code tried to outright reject csync, but that
> apparently broke some bogus LCD monitor that claimed to have
> a detailed mode that uses analog csync, despite also claiming
> the monitor only support separate sync:
> https://bugzilla.redhat.com/show_bug.cgi?id=3D540024
> Potentially that monitor should just be quirked or something.
>
> Anyways, what we are dealing with now is some kind of funny i915
> JSL machine with eDP where the panel claims to support a sensible
> 60Hz separate sync mode, and a 50Hz mode with bipolar analog
> csync. The 50Hz mode does not work so we want to not use it.
> Easiest way is to just correctly flag it as csync and the driver
> will reject it.
>
> TODO: or should we just reject any form of csync (or at least
> the analog variants) for digital display interfaces?
>
> v2: Grab digital csync polarity from hsync polarity bit (Jani)
>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8146
> Reviewed-by: Jani Nikula <jani.nikula@intel.com> #v1

Yup. Fingers crossed.

> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/drm_edid.c | 29 +++++++++++++++++++++--------
>  include/drm/drm_edid.h     | 12 +++++++++---
>  2 files changed, 30 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
> index ebab862b8b1a..c18ec866678d 100644
> --- a/drivers/gpu/drm/drm_edid.c
> +++ b/drivers/gpu/drm/drm_edid.c
> @@ -3424,10 +3424,6 @@ static struct drm_display_mode *drm_mode_detailed(=
struct drm_connector *connecto
>  			    connector->base.id, connector->name);
>  		return NULL;
>  	}
> -	if (!(pt->misc & DRM_EDID_PT_SEPARATE_SYNC)) {
> -		drm_dbg_kms(dev, "[CONNECTOR:%d:%s] Composite sync not supported\n",
> -			    connector->base.id, connector->name);
> -	}
>=20=20
>  	/* it is incorrect if hsync/vsync width is zero */
>  	if (!hsync_pulse_width || !vsync_pulse_width) {
> @@ -3474,10 +3470,27 @@ static struct drm_display_mode *drm_mode_detailed=
(struct drm_connector *connecto
>  	if (info->quirks & EDID_QUIRK_DETAILED_SYNC_PP) {
>  		mode->flags |=3D DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_PVSYNC;
>  	} else {
> -		mode->flags |=3D (pt->misc & DRM_EDID_PT_HSYNC_POSITIVE) ?
> -			DRM_MODE_FLAG_PHSYNC : DRM_MODE_FLAG_NHSYNC;
> -		mode->flags |=3D (pt->misc & DRM_EDID_PT_VSYNC_POSITIVE) ?
> -			DRM_MODE_FLAG_PVSYNC : DRM_MODE_FLAG_NVSYNC;
> +		switch (pt->misc & DRM_EDID_PT_SYNC_MASK) {
> +		case DRM_EDID_PT_ANALOG_CSYNC:
> +		case DRM_EDID_PT_BIPOLAR_ANALOG_CSYNC:
> +			drm_dbg_kms(dev, "[CONNECTOR:%d:%s] Analog composite sync!\n",
> +				    connector->base.id, connector->name);
> +			mode->flags |=3D DRM_MODE_FLAG_CSYNC | DRM_MODE_FLAG_NCSYNC;
> +			break;
> +		case DRM_EDID_PT_DIGITAL_CSYNC:
> +			drm_dbg_kms(dev, "[CONNECTOR:%d:%s] Digital composite sync!\n",
> +				    connector->base.id, connector->name);
> +			mode->flags |=3D DRM_MODE_FLAG_CSYNC;
> +			mode->flags |=3D (pt->misc & DRM_EDID_PT_HSYNC_POSITIVE) ?
> +				DRM_MODE_FLAG_PCSYNC : DRM_MODE_FLAG_NCSYNC;
> +			break;
> +		case DRM_EDID_PT_DIGITAL_SEPARATE_SYNC:
> +			mode->flags |=3D (pt->misc & DRM_EDID_PT_HSYNC_POSITIVE) ?
> +				DRM_MODE_FLAG_PHSYNC : DRM_MODE_FLAG_NHSYNC;
> +			mode->flags |=3D (pt->misc & DRM_EDID_PT_VSYNC_POSITIVE) ?
> +				DRM_MODE_FLAG_PVSYNC : DRM_MODE_FLAG_NVSYNC;
> +			break;
> +		}
>  	}
>=20=20
>  set_size:
> diff --git a/include/drm/drm_edid.h b/include/drm/drm_edid.h
> index 70ae6c290bdc..571885d32907 100644
> --- a/include/drm/drm_edid.h
> +++ b/include/drm/drm_edid.h
> @@ -61,9 +61,15 @@ struct std_timing {
>  	u8 vfreq_aspect;
>  } __attribute__((packed));
>=20=20
> -#define DRM_EDID_PT_HSYNC_POSITIVE (1 << 1)
> -#define DRM_EDID_PT_VSYNC_POSITIVE (1 << 2)
> -#define DRM_EDID_PT_SEPARATE_SYNC  (3 << 3)
> +#define DRM_EDID_PT_SYNC_MASK              (3 << 3)
> +# define DRM_EDID_PT_ANALOG_CSYNC          (0 << 3)
> +# define DRM_EDID_PT_BIPOLAR_ANALOG_CSYNC  (1 << 3)
> +# define DRM_EDID_PT_DIGITAL_CSYNC         (2 << 3)
> +#  define DRM_EDID_PT_CSYNC_ON_RGB         (1 << 1) /* analog csync only=
 */
> +#  define DRM_EDID_PT_CSYNC_SERRATE        (1 << 2)
> +# define DRM_EDID_PT_DIGITAL_SEPARATE_SYNC (3 << 3)
> +#  define DRM_EDID_PT_HSYNC_POSITIVE       (1 << 1) /* also digital csyn=
c */
> +#  define DRM_EDID_PT_VSYNC_POSITIVE       (1 << 2)
>  #define DRM_EDID_PT_STEREO         (1 << 5)
>  #define DRM_EDID_PT_INTERLACED     (1 << 7)

--=20
Jani Nikula, Intel Open Source Graphics Center
