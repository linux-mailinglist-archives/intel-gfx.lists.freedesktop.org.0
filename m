Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E85C15CCF5
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2020 22:08:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB73C6E413;
	Thu, 13 Feb 2020 21:08:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 736B16E413
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Feb 2020 21:08:33 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Feb 2020 13:08:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,438,1574150400"; d="scan'208";a="252406869"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga002.jf.intel.com with ESMTP; 13 Feb 2020 13:08:32 -0800
Date: Thu, 13 Feb 2020 13:08:32 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200213210832.GL2014153@mdroper-desk1.amr.corp.intel.com>
References: <20200213140412.32697-1-stanislav.lisovskiy@intel.com>
 <20200213140412.32697-4-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200213140412.32697-4-stanislav.lisovskiy@intel.com>
Subject: Re: [Intel-gfx] [PATCH v1 3/3] drm/i915: Force state->modeset=true
 when distrust_bios_wm==true
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 13, 2020 at 04:04:12PM +0200, Stanislav Lisovskiy wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Currently when we load the driver we set distrust_bios_wm=3Dtrue, which
> will cause active_pipe_changes to get flagged even when we're not
> toggling any pipes on/off. The reason being that we want to fully
> redistribute the dbuf among the active pipes and ignore whatever
> state the firmware left behind.
> =

> Unfortunately when the code flags active_pipe_changes it doesn't
> set state->modeset to true, which means the hardware dbuf state
> won't actually get updated. Hence the hardware and software
> states go out of sync, which can result in planes trying to use a
> disabled dbuf slice. Suprisingly that only seems to corrupt the
> display rather than making the whole display engine keel over.
> =

> Let's fix this for now by flagging state->modeset whenever
> distrust_bios_wm is set.
> =

> Eventually we'll likely want to rip out all of this mess and
> introduce proper statye tracking for dbuf. But that requires
> more work. Toss in a FIXME to that effect.
> =

> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Fixes: ff2cd8635e41 ("drm/i915: Correctly map DBUF slices to pipes")
> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 1e3f2cc27db8..df47b2fdfa38 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -15027,6 +15027,20 @@ static int intel_atomic_check(struct drm_device =
*dev,
>  	if (new_cdclk_state && new_cdclk_state->force_min_cdclk_changed)
>  		any_ms =3D true;
>  =

> +	/*
> +	 * distrust_bios_wm will force a full dbuf recomputation
> +	 * but the hardware state will only get updated accordingly
> +	 * if state->modeset=3D=3Dtrue. Hence distrust_bios_wm=3D=3Dtrue &&
> +	 * state->modeset=3D=3Dfalse is an invalid combination which
> +	 * would cause the hardware and software dbuf state to get
> +	 * out of sync. We must prevent that.
> +	 *
> +	 * FIXME clean up this mess and introduce better
> +	 * state tracking for dbuf.
> +	 */
> +	if (dev_priv->wm.distrust_bios_wm)
> +		any_ms =3D true;
> +
>  	if (any_ms) {
>  		ret =3D intel_modeset_checks(state);
>  		if (ret)
> -- =

> 2.24.1.485.gad05a3d8e5
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
