Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA349DF211
	for <lists+intel-gfx@lfdr.de>; Sat, 30 Nov 2024 17:49:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DBC510E10B;
	Sat, 30 Nov 2024 16:49:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=xry111.site header.i=@xry111.site header.b="hTUje02A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from xry111.site (xry111.site [89.208.246.23])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E911610EE42
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Nov 2024 13:45:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xry111.site;
 s=default; t=1732887911;
 bh=fqt73PL8niZVQUoikfti6Kgtqh4sV2CnyNWCHfrB+T0=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=hTUje02A2dVEDSV82kj33xW8SqDShVuKasU7hlfSNongJGHBEDYLYH7PnWrBlRcOH
 H2vtB5lQzYLLi5n33lJKhWWN1ojK4IoLTo2kL9yTCS8Ek+sLBghO+zUjC74gfm8GcA
 141ajYHoOUl5oBFfLep9eWZflpi+YvWP7D+xlIeU=
Received: from [192.168.124.9] (unknown [113.200.174.49])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (prime256v1) server-signature ECDSA (secp384r1)
 server-digest SHA384) (Client did not present a certificate)
 (Authenticated sender: xry111@xry111.site)
 by xry111.site (Postfix) with ESMTPSA id 68B9166AC7;
 Fri, 29 Nov 2024 08:45:10 -0500 (EST)
Message-ID: <f8e0aa133f1409b70d2f1526991a1ddcce3bc8a0.camel@xry111.site>
Subject: Re: [PATCH 1/4] drm/i915/fb: Relax clear color alignment to 64 bytes
From: Xi Ruoyao <xry111@xry111.site>
To: Ville Syrjala <ville.syrjala@linux.intel.com>, 
 intel-gfx@lists.freedesktop.org
Cc: stable@vger.kernel.org, Sagar Ghuge <sagar.ghuge@intel.com>, Nanley
 Chery	 <nanley.g.chery@intel.com>
Date: Fri, 29 Nov 2024 21:45:08 +0800
In-Reply-To: <20241129065014.8363-2-ville.syrjala@linux.intel.com>
References: <20241129065014.8363-1-ville.syrjala@linux.intel.com>
 <20241129065014.8363-2-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.2 
MIME-Version: 1.0
X-Mailman-Approved-At: Sat, 30 Nov 2024 16:49:51 +0000
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

On Fri, 2024-11-29 at 08:50 +0200, Ville Syrjala wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>=20
> Mesa changed its clear color alignment from 4k to 64 bytes
> without informing the kernel side about the change. This
> is now likely to cause framebuffer creation to fail.
>=20
> The only thing we do with the clear color buffer in i915 is:
> 1. map a single page
> 2. read out bytes 16-23 from said page
> 3. unmap the page
>=20
> So the only requirement we really have is that those 8 bytes
> are all contained within one page. Thus we can deal with the
> Mesa regression by reducing the alignment requiment from 4k
> to the same 64 bytes in the kernel. We could even go as low as
> 32 bytes, but IIRC 64 bytes is the hardware requirement on
> the 3D engine side so matching that seems sensible.
>=20
> Cc: stable@vger.kernel.org
> Cc: Sagar Ghuge <sagar.ghuge@intel.com>
> Cc: Nanley Chery <nanley.g.chery@intel.com>
> Reported-by: Xi Ruoyao <xry111@xry111.site>
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13057
> Closes: https://lore.kernel.org/all/45a5bba8de009347262d86a4acb27169d9ae0=
d9f.camel@xry111.site/
> Link: https://gitlab.freedesktop.org/mesa/mesa/-/commit/17f97a69c13832a6c=
1b0b3aad45b06f07d4b852f
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Tested-by: Xi Ruoyao <xry111@xry111.site>

> ---
> =C2=A0drivers/gpu/drm/i915/display/intel_fb.c | 2 +-
> =C2=A01 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i9=
15/display/intel_fb.c
> index 6a7060889f40..223c4218c019 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -1694,7 +1694,7 @@ int intel_fill_fb_info(struct drm_i915_private *i91=
5, struct intel_framebuffer *
> =C2=A0		 * arithmetic related to alignment and offset calculation.
> =C2=A0		 */
> =C2=A0		if (is_gen12_ccs_cc_plane(&fb->base, i)) {
> -			if (IS_ALIGNED(fb->base.offsets[i], PAGE_SIZE))
> +			if (IS_ALIGNED(fb->base.offsets[i], 64))
> =C2=A0				continue;
> =C2=A0			else
> =C2=A0				return -EINVAL;

--=20
Xi Ruoyao <xry111@xry111.site>
School of Aerospace Science and Technology, Xidian University
