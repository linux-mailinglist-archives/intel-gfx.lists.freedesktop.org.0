Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03445B488E3
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Sep 2025 11:45:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83A7510E076;
	Mon,  8 Sep 2025 09:45:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jsXn2HSj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EBE610E076
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Sep 2025 09:45:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757324703; x=1788860703;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=HTuzu3NFcxDpeRd3cenVTbTxZV2dCdIKZHJgYNgpgMA=;
 b=jsXn2HSjAd0g+s70QX/bzPWdUFCGSfNitRG00CxuL17kQkDmIMIYiV+1
 rUBRWtpWMRFW0538EICk6TaIIiWasqeLsNRrjW75R9ikBBD8i4AFn+cos
 haLZQsaw6FR1txIRwnkMv147ZuwKX4D93u+MyeJRPeE173aHn71O7ksZD
 7UIEsxIJJqQiy0fIafCDr7Cz4fUJkv6/VH04MDS9FUwBkFRYLroP2/BpF
 XG4ym9Zxgm81bjen9H5/pAFuH+QTb1fr3IploVxVAws3BZc53BNVh6DIV
 7Yb/fLVbHSVWMzpb9Pt3eG7WOO+XpqImQtw9YTQAQFSCrCvbOdEijiqHG g==;
X-CSE-ConnectionGUID: 5AcLNCVVQgalw84dLcwsaw==
X-CSE-MsgGUID: H+wwNyk0SJm0yt/yeFjzQQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11546"; a="63402827"
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="63402827"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 02:45:03 -0700
X-CSE-ConnectionGUID: F3eZJzafSN6RrFmJNSty+Q==
X-CSE-MsgGUID: wVNFe4xoQ66eErlq0dx4qw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="203714895"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.204])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 02:44:59 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Thomas Zimmermann <tzimmermann@suse.de>, Noralf =?utf-8?Q?Tr=C3=B8nnes?=
 <noralf@tronnes.org>, Simona Vetter <simona.vetter@ffwll.ch>, Andi Shyti
 <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Krzysztof Karas <krzysztof.karas@intel.com>
Subject: Re: [PATCH 6/6] drm: Avoid undefined behavior on u16 multiplication
In-Reply-To: <9a7a56a1a958f7aa0389bb5732f4b716bf2be0f6.1756995162.git.krzysztof.karas@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1756995162.git.krzysztof.karas@intel.com>
 <9a7a56a1a958f7aa0389bb5732f4b716bf2be0f6.1756995162.git.krzysztof.karas@intel.com>
Date: Mon, 08 Sep 2025 12:44:56 +0300
Message-ID: <bc353160d0c3d7f662f66edd8b33ecee2b851b67@intel.com>
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

On Mon, 08 Sep 2025, Krzysztof Karas <krzysztof.karas@intel.com> wrote:
> Fields hdiplay and vdisplay are defined as u16. Their
> multiplication causes implicit promotion to signed 32-bit value,
> which may overflow and cause undefined behavior.
>
> The same goes for vpos, which is multiplied by signed integer.
>
> Prevent possible undefined behavior by explicitly casting one of
> the operands to (unsigned int) type.
>
> Fixes: 3ed4351a83ca ("drm: Extract drm_vblank.[hc]")
> Fixes: cc4312127108 ("drm/tinydrm/mipi-dbi: Add mipi_dbi_init_with_format=
s()")
> Fixes: 80f7c3f77697 ("drm/vram: Add helpers to validate a display mode's =
memory requirements")
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Noralf Tr=C3=B8nnes <noralf@tronnes.org>
> Cc: Simona Vetter <simona.vetter@ffwll.ch>
> Cc: <stable@vger.kernel.org> # v4.13+
> Cc: <stable@vger.kernel.org> # v5.4+
> Cc: <stable@vger.kernel.org> # v5.7+

The multitude of files, Fixes and subsequent Cc: stables with different
target kernels is just an indication this should be three separate
patches.

The cause may be the same, but they're still unrelated fixes.

Moreover, imagine the consequences of one of these fixes ending up being
incorrect, and you have to revert or fix it. It's a logistics PITA.


BR,
Jani.


> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
> ---
>  drivers/gpu/drm/drm_gem_vram_helper.c | 2 +-
>  drivers/gpu/drm/drm_mipi_dbi.c        | 2 +-
>  drivers/gpu/drm/drm_vblank.c          | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/drm_gem_vram_helper.c b/drivers/gpu/drm/drm_=
gem_vram_helper.c
> index b04cde4a60e7..4b144e9603b8 100644
> --- a/drivers/gpu/drm/drm_gem_vram_helper.c
> +++ b/drivers/gpu/drm/drm_gem_vram_helper.c
> @@ -967,7 +967,7 @@ drm_vram_helper_mode_valid_internal(struct drm_device=
 *dev,
>=20=20
>  	max_fbpages =3D (vmm->vram_size / 2) >> PAGE_SHIFT;
>=20=20
> -	fbsize =3D mode->hdisplay * mode->vdisplay * max_bpp;
> +	fbsize =3D (unsigned int)mode->hdisplay * mode->vdisplay * max_bpp;
>  	fbpages =3D DIV_ROUND_UP(fbsize, PAGE_SIZE);
>=20=20
>  	if (fbpages > max_fbpages)
> diff --git a/drivers/gpu/drm/drm_mipi_dbi.c b/drivers/gpu/drm/drm_mipi_db=
i.c
> index e33c78fc8fbd..536741dd7690 100644
> --- a/drivers/gpu/drm/drm_mipi_dbi.c
> +++ b/drivers/gpu/drm/drm_mipi_dbi.c
> @@ -691,7 +691,7 @@ int mipi_dbi_dev_init(struct mipi_dbi_dev *dbidev,
>  		      const struct drm_simple_display_pipe_funcs *funcs,
>  		      const struct drm_display_mode *mode, unsigned int rotation)
>  {
> -	size_t bufsize =3D mode->vdisplay * mode->hdisplay * sizeof(u16);
> +	size_t bufsize =3D (unsigned int)mode->vdisplay * mode->hdisplay * size=
of(u16);
>=20=20
>  	dbidev->drm.mode_config.preferred_depth =3D 16;
>=20=20
> diff --git a/drivers/gpu/drm/drm_vblank.c b/drivers/gpu/drm/drm_vblank.c
> index 46f59883183d..8a3a82962494 100644
> --- a/drivers/gpu/drm/drm_vblank.c
> +++ b/drivers/gpu/drm/drm_vblank.c
> @@ -779,7 +779,7 @@ drm_crtc_vblank_helper_get_vblank_timestamp_internal(
>  	 * since start of scanout at first display scanline. delta_ns
>  	 * can be negative if start of scanout hasn't happened yet.
>  	 */
> -	delta_ns =3D div_s64(1000000LL * (vpos * mode->crtc_htotal + hpos),
> +	delta_ns =3D div_s64(1000000LL * ((unsigned int)vpos * mode->crtc_htota=
l + hpos),
>  			   mode->crtc_clock);
>=20=20
>  	/* Subtract time delta from raw timestamp to get final

--=20
Jani Nikula, Intel
