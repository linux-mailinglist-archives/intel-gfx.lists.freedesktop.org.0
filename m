Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B6530FE6D
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Feb 2021 21:35:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB9A66E120;
	Thu,  4 Feb 2021 20:35:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A985A6E120
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Feb 2021 20:35:22 +0000 (UTC)
IronPort-SDR: Nd3N6WTWaQNBrdVYjsmXSS0rKfYrO6q7KpvQpldNIZJ7nGRQd5TkbhwURcNjGvyN20JnO9vW9n
 YfT5oMgWKWpA==
X-IronPort-AV: E=McAfee;i="6000,8403,9885"; a="200318247"
X-IronPort-AV: E=Sophos;i="5.81,153,1610438400"; d="scan'208";a="200318247"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2021 12:35:22 -0800
IronPort-SDR: wDKlM7hLbKRjQK9kx0jHZAzbCZrpYlZJv0u1Cmc8Fmq3aD4nvhPlMjX5Uyh5hnMrHHSZIE62U7
 ElIBPr1vRu6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,153,1610438400"; d="scan'208";a="483700696"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 04 Feb 2021 12:35:19 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 04 Feb 2021 22:35:18 +0200
Date: Thu, 4 Feb 2021 22:35:18 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YBxahr/DGQKmWxS1@intel.com>
References: <cover.1612467466.git.jani.nikula@intel.com>
 <926cbdfc0bf4bc0ac7dee1b330dc1176dc50f391.1612467466.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <926cbdfc0bf4bc0ac7dee1b330dc1176dc50f391.1612467466.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v11 09/10] drm/i915: refactor skylake scaler
 code into new file.
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
Cc: Dave Airlie <airlied@redhat.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 04, 2021 at 09:43:26PM +0200, Jani Nikula wrote:
>  static void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);

Missed all the skl_pfit*().

> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/dr=
m/i915/display/intel_sprite.c
> index 46fcb5b9983f..4cbdb8fd4bb1 100644
> --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> @@ -138,68 +138,6 @@ int intel_plane_check_src_coordinates(struct intel_p=
lane_state *plane_state)
>  	return 0;
>  }
>  =

> -void
> -skl_program_scaler(struct intel_plane *plane,
> -		   const struct intel_crtc_state *crtc_state,
> -		   const struct intel_plane_state *plane_state)

If we move this we should rename it to skl_program_plane_scaler() or
something along those lines. Ideally I'd like to have a single
function that works for both pipe and plane scaling but that might
require some actual thought so not going to be a trivial rename/move.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
