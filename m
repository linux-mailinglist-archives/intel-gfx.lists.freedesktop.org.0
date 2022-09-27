Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 971F35EBF14
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Sep 2022 11:56:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F96710E105;
	Tue, 27 Sep 2022 09:56:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52A8710E105
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Sep 2022 09:56:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664272567; x=1695808567;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=+m911kagB50za0zB2TMMhgXzyoSHoVAddnHoXdsdFGM=;
 b=J0AeWmwzia/p5jFciCyopvyfrX2hqCOYlJbkfFoEVLHO0wlqgHgCg8Pb
 ozR7lJpf9JRMRBr/U2lNikoMSPZhHdB23dQjKk/v7omsxgspPD0AGAUYH
 Ca7Mu7EGSWaHM8OPD1hkpJgk/ioimuij5GBR74nVTk+vXP/H3ffSVJD7l
 jXOxJafF0OyQmK5f6xrOoOjEZmK+UoTkZFE0Ft1f/CRhY7McM5LVnQSCk
 fKAXxnxky5w8oYaf/ee87hOoEn8pk9G65aVt0A/oUymlwsKbRdItoh1Ed
 RUl762AqPQ+URIeD57ayS3kzB8JkqIy+zhm1jP2VpAY00LAIvoVi0Bm6E g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="327630408"
X-IronPort-AV: E=Sophos;i="5.93,349,1654585200"; d="scan'208";a="327630408"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 02:56:06 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="725449356"
X-IronPort-AV: E=Sophos;i="5.93,349,1654585200"; d="scan'208";a="725449356"
Received: from aakhmylo-mobl2.ccr.corp.intel.com (HELO localhost)
 ([10.252.36.103])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 02:56:05 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220926193021.23287-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220926193021.23287-1-ville.syrjala@linux.intel.com>
Date: Tue, 27 Sep 2022 12:55:45 +0300
Message-ID: <87bkr116qm.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Round to closest in g4x+ HDMI
 clock readout
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

On Mon, 26 Sep 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> On pre-ddi platforms we have slightly different code being
> used for HDMI TMDS clock to dotclock conversion between the
> state computation and state readout. Both of these need to
> round the same way in order to not get a mismatch between
> the computed and read out states. Fix up the rounding
> direction in the readout path to match what is used during
> state computation.
>
> Another option would to just use intel_crtc_dotclock()
> in the readout path as well, but I don't really want to
> do that as the current code more accurately represents
> how the hardware really works; The HDMI port register
> defines whether we're actually outputting 8bpc or 12bpc
> over HDMI, and the PIPECONF bpc setting just defines what
> goes over FDI between the CPU and PCH. The fact that we
> try to cram all that into a single pipe_bpp during state
> computation is perhaps not entirely great...
>
> Fixes: f2c9df101095 ("drm/i915: Round TMDS clock to nearest")
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/g4x_hdmi.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i9=
15/display/g4x_hdmi.c
> index 5606c667e422..8aadf96fa5e9 100644
> --- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> @@ -120,7 +120,7 @@ static void intel_hdmi_get_config(struct intel_encode=
r *encoder,
>  	pipe_config->hw.adjusted_mode.flags |=3D flags;
>=20=20
>  	if ((tmp & SDVO_COLOR_FORMAT_MASK) =3D=3D HDMI_COLOR_FORMAT_12bpc)
> -		dotclock =3D pipe_config->port_clock * 2 / 3;
> +		dotclock =3D DIV_ROUND_CLOSEST(pipe_config->port_clock * 2, 3);
>  	else
>  		dotclock =3D pipe_config->port_clock;

--=20
Jani Nikula, Intel Open Source Graphics Center
