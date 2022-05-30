Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EDE6E537A8D
	for <lists+intel-gfx@lfdr.de>; Mon, 30 May 2022 14:20:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3428E10E732;
	Mon, 30 May 2022 12:20:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29CC410E732
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 May 2022 12:20:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653913229; x=1685449229;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=yAVmPK0BcM+R0mE8RC8/mux2OJhncSnTBFh8rpR+dso=;
 b=JBTCuZAxWAMxCRiOwi08lPmoiikdHLXbPMDyxnOoIszZUEwt/5RpIXSR
 zmtaOywnlF0g7DLXzE5tYgwXXXWjc5FTKHJP+Bp3tL74GpyfNG9MnYgd4
 3VjQScO22s1a+EtwYYYhL3IPvxIxXzmnMq3aJTRG62KVnbXXl0h8jHaQF
 YRcjm+8P1cCUe5ciXf5dnMSx/RZ1T30nujL/HgDVUmdZdLYfs95KcTSN1
 pV0WYqwyqXYudUs+JMiyzN9J+DDUWCIAU7p/HC5Iu0Vlit95YUZJY20Ok
 4obj1l6UAIqqZt3bKh27yyPVP+5t32txS3gk+jxl3XHgXx2eJoYWGR3MY A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10362"; a="300336275"
X-IronPort-AV: E=Sophos;i="5.91,262,1647327600"; d="scan'208";a="300336275"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2022 05:20:28 -0700
X-IronPort-AV: E=Sophos;i="5.91,262,1647327600"; d="scan'208";a="551325177"
Received: from jkuna-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.150.228])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2022 05:20:26 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220527204949.2264-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220527204949.2264-1-ville.syrjala@linux.intel.com>
 <20220527204949.2264-3-ville.syrjala@linux.intel.com>
Date: Mon, 30 May 2022 15:20:23 +0300
Message-ID: <87o7zfrz3s.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915: Print out rejected fixed modes
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

On Fri, 27 May 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> To help with debugging DRRS/VRR panel init let's dump out all
> the fixed modes we rejected for whatever reason.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_panel.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm=
/i915/display/intel_panel.c
> index d055e4118558..f55e4eafd74e 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -217,6 +217,10 @@ static void intel_panel_destroy_probed_modes(struct =
intel_connector *connector)
>  	struct drm_display_mode *mode, *next;
>=20=20
>  	list_for_each_entry_safe(mode, next, &connector->base.probed_modes, hea=
d) {
> +		drm_dbg_kms(&i915->drm,
> +			    "[CONNECTOR:%d:%s] not using EDID mode: " DRM_MODE_FMT "\n",
> +			    connector->base.base.id, connector->base.name,
> +			    DRM_MODE_ARG(mode));
>  		list_del(&mode->head);
>  		drm_mode_destroy(&i915->drm, mode);
>  	}

--=20
Jani Nikula, Intel Open Source Graphics Center
