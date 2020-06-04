Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1C6F1EE7D6
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 17:34:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFD026E44E;
	Thu,  4 Jun 2020 15:34:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D0166E44E
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jun 2020 15:34:21 +0000 (UTC)
IronPort-SDR: nATkz9I1SrWNA4wz47j5zp8KoS3qEwS6Kw2kUkI3wYkbrKNg3vRI/nitKiZhGydT5PD9tn+Hgt
 vyPD1vok3BMQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2020 08:34:08 -0700
IronPort-SDR: K8SVl+iqBfj6VPqLStT2OsyNb/dubt6WBe24Yj/ZVBf6trQkydAkUFYPMAoSHal2vJOkPZtOHD
 43XJew74/qgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,472,1583222400"; d="scan'208";a="304745290"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 04 Jun 2020 08:34:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 04 Jun 2020 18:34:05 +0300
Date: Thu, 4 Jun 2020 18:34:05 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20200604153405.GV6112@intel.com>
References: <20200603211529.3005059-1-matthew.d.roper@intel.com>
 <20200603211529.3005059-2-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200603211529.3005059-2-matthew.d.roper@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v3 01/15] drm/i915/rkl: Set transcoder mask
 properly
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

On Wed, Jun 03, 2020 at 02:15:15PM -0700, Matt Roper wrote:
> Although we properly captured RKL's three pipes in the device info
> structure, we forgot to make the corresponding update to the transcoder
> mask.  Set this field so that our transcoder loops will operate
> properly.
> =

> Fixes: 123f62de419f ("drm/i915/rkl: Add RKL platform info and PCI ids")
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Matches what I see in the spec.
Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/i915_pci.c | 2 ++
>  1 file changed, 2 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_=
pci.c
> index 07b09af3a9c3..0ed586ee2047 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -881,6 +881,8 @@ static const struct intel_device_info rkl_info =3D {
>  	GEN12_FEATURES,
>  	PLATFORM(INTEL_ROCKETLAKE),
>  	.pipe_mask =3D BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
> +	.cpu_transcoder_mask =3D BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
> +		BIT(TRANSCODER_C),
>  	.require_force_probe =3D 1,
>  	.engine_mask =3D
>  		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0),
> -- =

> 2.24.1
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
