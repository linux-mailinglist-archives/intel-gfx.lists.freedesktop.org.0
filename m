Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 199945F9DF4
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Oct 2022 13:51:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D959910E1AD;
	Mon, 10 Oct 2022 11:51:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 837E410E1AD
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Oct 2022 11:51:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665402664; x=1696938664;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=CMmbd97DK8HwOCQ+2p8UOhfhYab8+BMCNsPGv04v56s=;
 b=UhCrMLwSdDEHKB8s+mJO+d1iwXrjYnMKzFhLC8oCvGB3g7epItDmhTnE
 BLfcsjG6MrgFYZGWPxT7IlQUOSSSdSvmbR0sdXjCWj0bjV7bZ7vRiXZPb
 /zA3xZ/PRqavqCM4LE3rweYwmb8/26FM30Boar70+Ju9TDlHIJVTUOEWY
 ZPzzJL4yRYWlUGdptvY36/CRRPCKje2bNHVxaFQ2Jpk1JJTfMoa9Prr0i
 b3NW33XtByz2BQfzudBZtrA3kfdpXmFeCv7Sl7gv5u2SOaQc6W9/6a77M
 DyeKXUXTLUPeA5Yg2N74K1AJIzSmamX7J4jHzpT1BhGY61IjyvPVC4jnU g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10495"; a="284585139"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; d="scan'208";a="284585139"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2022 04:51:04 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10495"; a="871075280"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; d="scan'208";a="871075280"
Received: from iolejnic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.41.51])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2022 04:51:02 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221007211108.3883-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221007211108.3883-1-ville.syrjala@linux.intel.com>
 <20221007211108.3883-2-ville.syrjala@linux.intel.com>
Date: Mon, 10 Oct 2022 14:51:00 +0300
Message-ID: <87a663zyl7.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Enable atomic by default on
 ctg/elk
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

On Sat, 08 Oct 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> The watermark code for ctg/elk has been atomic ready for a long time
> so let's just flip the switch now that some of the last CxSR issues
> have been sorted out (which granted was a problem for vlv/chv as well
> despite them already having atomic enabled by default).
>
> v2: Rebase
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

I'll take your word for it.

Acked-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/intel_device_info.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i=
915/intel_device_info.c
> index b691b7c8c254..090097bb3c0a 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -508,8 +508,9 @@ void intel_device_info_runtime_init(struct drm_i915_p=
rivate *dev_priv)
>  		runtime->has_dsc =3D false;
>  	}
>=20=20
> -	/* Disable nuclear pageflip by default on pre-ILK */
> -	if (!dev_priv->params.nuclear_pageflip && DISPLAY_VER(dev_priv) < 5)
> +	/* Disable nuclear pageflip by default on pre-g4x */
> +	if (!dev_priv->params.nuclear_pageflip &&
> +	    DISPLAY_VER(dev_priv) < 5 && !IS_G4X(dev_priv))
>  		dev_priv->drm.driver_features &=3D ~DRIVER_ATOMIC;
>  }

--=20
Jani Nikula, Intel Open Source Graphics Center
