Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6664F19441D
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2020 17:17:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C281F6E8EE;
	Thu, 26 Mar 2020 16:17:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 383026E8EE
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2020 16:17:06 +0000 (UTC)
IronPort-SDR: Cqxip3m9KD8dGbIYcN0p1Zll+I2HrITf87Ds+QqC9RtYPn2WGkYm19OAbYcnTI6yJPF2SQKFlW
 I2xbeRf/FoEQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2020 09:17:05 -0700
IronPort-SDR: VC3NqqJlZPRR46YeGenVsp168IM3gv04JJnqeL/qMfod951pskOc6sqK4m6zlT5ddNcobIGgoT
 9UWo1d3wbrLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,309,1580803200"; d="scan'208";a="282552881"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 26 Mar 2020 09:17:02 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 26 Mar 2020 18:17:01 +0200
Date: Thu, 26 Mar 2020 18:17:01 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Uma Shankar <uma.shankar@intel.com>
Message-ID: <20200326161701.GD13686@intel.com>
References: <20200326074928.10395-1-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200326074928.10395-1-uma.shankar@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Fix mode private_flags
 comparison at atomic_check
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
Cc: SweeAun Khor <swee.aun.khor@intel.com>,
	intel-gfx@lists.freedesktop.org, Souza@freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 26, 2020 at 01:19:28PM +0530, Uma Shankar wrote:
> This patch fixes the private_flags of mode to be checked and
> compared against uapi.mode and not from hw.mode. This helps
> properly trigger modeset at boot if desired by driver.
> =

> It helps resolve audio_codec initialization issues if display
> is connected at boot. Initial discussion on this issue has happened
> on below thread:
> https://patchwork.freedesktop.org/series/74828/
> =

> Fixes: https://gitlab.freedesktop.org/drm/intel/issues/1363
> =

> Cc: Ville Syrj=E4 <ville.syrjala@linux.intel.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> Cc: Souza, Jose <jose.souza@intel.com>
> Suggested-by: Ville Syrj=E4 <ville.syrjala@linux.intel.com>

No one by that name here.

> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> Signed-off-by: SweeAun Khor <swee.aun.khor@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index fe55c7c713f1..e630429af2c0 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -14747,8 +14747,8 @@ static int intel_atomic_check(struct drm_device *=
dev,
>  	/* Catch I915_MODE_FLAG_INHERITED */
>  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
>  					    new_crtc_state, i) {
> -		if (new_crtc_state->hw.mode.private_flags !=3D
> -		    old_crtc_state->hw.mode.private_flags)
> +		if (new_crtc_state->uapi.mode.private_flags !=3D
> +		    old_crtc_state->uapi.mode.private_flags)
>  			new_crtc_state->uapi.mode_changed =3D true;
>  	}
>  =

> -- =

> 2.22.0

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
