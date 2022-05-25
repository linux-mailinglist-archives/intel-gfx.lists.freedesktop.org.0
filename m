Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE4D1533B4C
	for <lists+intel-gfx@lfdr.de>; Wed, 25 May 2022 13:10:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89C9810E822;
	Wed, 25 May 2022 11:10:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A907810E822
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 May 2022 11:10:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653477002; x=1685013002;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=J1nmjzJk16Uj4fFvvDDHkfkVjlx7AypOzPM5HVYdwu8=;
 b=KjjKsjzHRXXFmyi7JA2HxmB7Y0lOuEvcxGEKG4L/4wsEbhTCUV1i6cOO
 v19YyaFnwppQLkKlQ+iiqhTfXM6s6csAW1GQBbI1ANYc9KfrRQbBj8en1
 pbcQAgjAekMgcQIvAVTbSzTaM+PaUizzuBGYAbTn3A/Yw8h4FTeyKxPsE
 kwrf2PxF9Ov/J39sPHSFJTgw7bodQhD4fSE/HMpR48grSJ+eKFcVQVjmc
 mB+bxsF3sbZk0zVAp3Dd4G+7DtDHSkKPFoASiXNgiQHm6IqqfWDu8Ff4n
 DaG3HHrTpcFJMYQLRMZKgApakUZY3ezY8OcNlx18LQmSJRhZ9HWXmq+3L w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10357"; a="253659459"
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="253659459"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 04:10:02 -0700
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="573185769"
Received: from mwardyn-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.249.149.191])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 04:10:00 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220503182242.18797-21-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
 <20220503182242.18797-21-ville.syrjala@linux.intel.com>
Date: Wed, 25 May 2022 14:09:58 +0300
Message-ID: <87o7zluaux.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 20/26] drm/i915: Check hw.enable and
 hw.active in intel_pipe_config_compare()
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

On Tue, 03 May 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Don't see a real reson not to check hw.active and hw.enable in
> intel_pipe_config_compare(). We do have some checks for them
> at a higher level, but I think better check them also in
> intel_pipe_config_compare() in case something else doesn't
> do a thorough enough job.
>
> Also shuffle the mst_master_transcoder check next to the
> cpu_transcoder check for a bit of consistency.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index a81d866bdb19..2acc5f3a2c0e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -6160,7 +6160,11 @@ intel_pipe_config_compare(const struct intel_crtc_=
state *current_config,
>  #define PIPE_CONF_QUIRK(quirk) \
>  	((current_config->quirks | pipe_config->quirks) & (quirk))
>=20=20
> +	PIPE_CONF_CHECK_I(hw.enable);
> +	PIPE_CONF_CHECK_I(hw.active);
> +
>  	PIPE_CONF_CHECK_I(cpu_transcoder);
> +	PIPE_CONF_CHECK_I(mst_master_transcoder);
>=20=20
>  	PIPE_CONF_CHECK_BOOL(has_pch_encoder);
>  	PIPE_CONF_CHECK_I(fdi_lanes);
> @@ -6333,8 +6337,6 @@ intel_pipe_config_compare(const struct intel_crtc_s=
tate *current_config,
>  	PIPE_CONF_CHECK_I(splitter.link_count);
>  	PIPE_CONF_CHECK_I(splitter.pixel_overlap);
>=20=20
> -	PIPE_CONF_CHECK_I(mst_master_transcoder);
> -
>  	PIPE_CONF_CHECK_BOOL(vrr.enable);
>  	PIPE_CONF_CHECK_I(vrr.vmin);
>  	PIPE_CONF_CHECK_I(vrr.vmax);

--=20
Jani Nikula, Intel Open Source Graphics Center
