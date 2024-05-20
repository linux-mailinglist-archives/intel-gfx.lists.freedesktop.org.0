Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B49FD8C9B9B
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 12:47:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5E6F10E4FC;
	Mon, 20 May 2024 10:47:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZSP5w+lL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A41A10E577
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2024 10:47:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716202059; x=1747738059;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=dBRsaBcs5owcgFMgjY+0yBXd8hiZKxl6GTEwo66e3Ak=;
 b=ZSP5w+lLdwTtXtVbhz9sd9Piikuolhdl/cjE7mN71xFK4/sSyUqYVypg
 jbpsH9ZeYgEGvS9kNg5vsummGxXucLRHBjH8U3ga32uyvsVRZJxTS6cAS
 KMuX7oZG12TYQfL58mvOhVaGckPCqXihCEMM690Ubge6cJLyqdzdwxKwh
 tjI4mujpOzg10VrPoY6FYhIyHoGLQwAt4fdWnSBuZm7APVhnUBDTpb9Ia
 pZhSKukCCX0aQ/jaFB0fnKvgVD9V3MdczUEuoKu1B9ROEWaZ/1GhixW50
 DDIySOyhcVVV57lkU+XgtMGQZ1iUpKxy5v7UbQJk8NZXYi2Zn7hviCZwS A==;
X-CSE-ConnectionGUID: C8eY94wZRnqUbRX8TgzIIQ==
X-CSE-MsgGUID: dB1E66hGTrWKFgy2IKFFcw==
X-IronPort-AV: E=McAfee;i="6600,9927,11077"; a="37699966"
X-IronPort-AV: E=Sophos;i="6.08,174,1712646000"; d="scan'208";a="37699966"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 03:47:38 -0700
X-CSE-ConnectionGUID: ji8bajf0T9Gs7Rjw3SLQuw==
X-CSE-MsgGUID: eH9r3rpCTeGL4D0/0p+6pQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,174,1712646000"; d="scan'208";a="55729370"
Received: from unknown (HELO localhost) ([10.245.246.99])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 03:47:37 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 2/7] drm/i915: Extract intel_dp_has_dsc()
In-Reply-To: <20240517145356.26103-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240517145356.26103-1-ville.syrjala@linux.intel.com>
 <20240517145356.26103-3-ville.syrjala@linux.intel.com>
Date: Mon, 20 May 2024 13:47:34 +0300
Message-ID: <87h6esu5dl.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Fri, 17 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Extract a helper to check whether the source+sink combo
> supports DSC. That basic check is needed both during mode
> validation and compute config. We'll also need to add extra
> checks to both places, so having a single place for it is nicer.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 16 ++++++++++++++--
>  1 file changed, 14 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 1e88449fe5f2..7bf283b4df7f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1220,6 +1220,19 @@ bool intel_dp_need_bigjoiner(struct intel_dp *inte=
l_dp,
>  	       connector->force_bigjoiner_enable;
>  }
>=20=20
> +static bool intel_dp_has_dsc(struct intel_connector *connector)

Why not const?

> +{
> +	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +
> +	if (!HAS_DSC(i915))
> +		return false;
> +
> +	if (!drm_dp_sink_supports_dsc(connector->dp.dsc_dpcd))
> +		return false;
> +
> +	return true;
> +}
> +
>  static enum drm_mode_status
>  intel_dp_mode_valid(struct drm_connector *_connector,
>  		    struct drm_display_mode *mode)
> @@ -1274,8 +1287,7 @@ intel_dp_mode_valid(struct drm_connector *_connecto=
r,
>  	mode_rate =3D intel_dp_link_required(target_clock,
>  					   intel_dp_mode_min_output_bpp(connector, mode));
>=20=20
> -	if (HAS_DSC(dev_priv) &&
> -	    drm_dp_sink_supports_dsc(connector->dp.dsc_dpcd)) {
> +	if (intel_dp_has_dsc(connector)) {
>  		enum intel_output_format sink_format, output_format;
>  		int pipe_bpp;

--=20
Jani Nikula, Intel
