Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53D502D5F02
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 16:08:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8A296E580;
	Thu, 10 Dec 2020 15:08:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E37C6E580
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Dec 2020 15:08:19 +0000 (UTC)
IronPort-SDR: A0IxM1u/LqWohgvdrZysachLzFo13UIHH5i/SUrDVJ+2GqAtvsi4xh7eMVZ0VCYOQIGXY9HNfk
 zyhCBcZcgjAQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9830"; a="154077681"
X-IronPort-AV: E=Sophos;i="5.78,408,1599548400"; d="scan'208";a="154077681"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2020 07:08:18 -0800
IronPort-SDR: Uf5pz7cQMWonVPDMByemsGpjQ0mWUV80cekdOgBrRULX7RfXB3p5dhR3I0mbR8rgn7nGmwLmkM
 ZJ+EhMY+7skg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,408,1599548400"; d="scan'208";a="319414748"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 10 Dec 2020 07:08:16 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Dec 2020 17:08:15 +0200
Date: Thu, 10 Dec 2020 17:08:15 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Dave Airlie <airlied@gmail.com>
Message-ID: <X9I531RO6hvP/9py@intel.com>
References: <20201210041755.29088-1-airlied@gmail.com>
 <20201210041755.29088-2-airlied@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201210041755.29088-2-airlied@gmail.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/9] drm/i915/display: move needs_modeset to
 an inline in header
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Dec 10, 2020 at 02:17:47PM +1000, Dave Airlie wrote:
> From: Dave Airlie <airlied@redhat.com>
> =

> This function is going to be used in a later change, so clean it
> up first before moving it.
> =

> Signed-off-by: Dave Airlie <airlied@redhat.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  | 78 +++++++++----------
>  .../drm/i915/display/intel_display_types.h    |  6 ++
>  2 files changed, 42 insertions(+), 42 deletions(-)
> =

<snip>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 5bc5bfbc4551..8c4afad68a44 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1777,6 +1777,12 @@ intel_crtc_has_dp_encoder(const struct intel_crtc_=
state *crtc_state)
>  		 (1 << INTEL_OUTPUT_EDP));
>  }
>  =

> +static inline bool
> +intel_crtc_needs_modeset(const struct intel_crtc_state *state)

s/state/crtc_state/ please.

With that
Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> +{
> +	return drm_atomic_crtc_needs_modeset(&state->uapi);
> +}
> +
>  static inline void
>  intel_wait_for_vblank(struct drm_i915_private *dev_priv, enum pipe pipe)
>  {
> -- =

> 2.27.0
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
