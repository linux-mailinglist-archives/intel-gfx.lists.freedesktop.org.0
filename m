Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB2A72DE52B
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Dec 2020 15:55:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A2856E156;
	Fri, 18 Dec 2020 14:55:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C327A6E156
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Dec 2020 14:55:19 +0000 (UTC)
IronPort-SDR: BkqBfZfcJ8fvUl05EkaulDDOFL3TIHI5615x4/oQfyl1qjerUv2+7mnc3kSf4lQl/w2smHVGyy
 wWGx6Vn0MJdQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9839"; a="174677199"
X-IronPort-AV: E=Sophos;i="5.78,430,1599548400"; d="scan'208";a="174677199"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2020 06:55:19 -0800
IronPort-SDR: 84z16dv8NRDYgcZCQ9zgkqTGdZDwYeTypf4ust3LK8K0e31jGEvBPrefOtIquIlQd8Ya1ndiOG
 wFtEAsd6gKPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,430,1599548400"; d="scan'208";a="370616023"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 18 Dec 2020 06:55:17 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 18 Dec 2020 16:55:16 +0200
Date: Fri, 18 Dec 2020 16:55:16 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Dave Airlie <airlied@gmail.com>
Message-ID: <X9zC1GM5iWbUr7Gh@intel.com>
References: <20201218060420.3203-1-airlied@gmail.com>
 <20201218060420.3203-6-airlied@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201218060420.3203-6-airlied@gmail.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 05/13] drm/i915: refactor i915 plane code
 into separate file.
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

On Fri, Dec 18, 2020 at 04:04:12PM +1000, Dave Airlie wrote:
> From: Dave Airlie <airlied@redhat.com>
> =

> Ville suggested this as a good idea, let's move this before moving
> the crtc code.
> =

> Signed-off-by: Dave Airlie <airlied@redhat.com>
> ---
>  drivers/gpu/drm/i915/Makefile                |   3 +-
>  drivers/gpu/drm/i915/display/i9xx_plane.c    | 704 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/i9xx_plane.h    |  21 +
>  drivers/gpu/drm/i915/display/intel_display.c | 689 +-----------------
>  drivers/gpu/drm/i915/display/intel_display.h |   4 -
>  drivers/gpu/drm/i915/display/intel_sprite.c  |   1 +
>  6 files changed, 729 insertions(+), 693 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/i9xx_plane.c
>  create mode 100644 drivers/gpu/drm/i915/display/i9xx_plane.h
<snip>
> +struct intel_plane *
> +intel_primary_plane_create(struct drm_i915_private *dev_priv, enum pipe =
pipe)
> +{
> +	struct intel_plane *plane;
> +	const struct drm_plane_funcs *plane_funcs;
> +	unsigned int supported_rotations;
> +	const u32 *formats;
> +	int num_formats;
> +	int ret, zpos;
> +
> +	if (INTEL_GEN(dev_priv) >=3D 9)
> +		return skl_universal_plane_create(dev_priv, pipe,
> +						  PLANE_PRIMARY);
> +

A further followup idea:

intel_primary_plane_create()
{
	if (gen>=3D9)
		skl_universal_plane_create();
	else
		i9xx_primary_plane_create();
}

so we don't have this silly rountrip through i9xx_plane.c for
skl+.

Another thing we probably want is to move all the pre-skl sprite
plane code into this file as well since quite a bit of the code/etc.
can actually be shared between the primary and sprite planes.

Anyways, this seems like a good way to start so
Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
