Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 048EF88ADC8
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Mar 2024 19:21:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7486D10E682;
	Mon, 25 Mar 2024 18:21:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (4096-bit key; unprotected) header.d=alien8.de header.i=@alien8.de header.b="iEqPpj+b";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.alien8.de (mail.alien8.de [65.109.113.108])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9783310E682
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Mar 2024 18:21:51 +0000 (UTC)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by mail.alien8.de (SuperMail on ZX Spectrum 128k) with ESMTP id A469440E024C; 
 Mon, 25 Mar 2024 18:21:49 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at mail.alien8.de
Authentication-Results: mail.alien8.de (amavisd-new); dkim=fail (4096-bit key)
 reason="fail (body has been altered)"
 header.d=alien8.de
Received: from mail.alien8.de ([127.0.0.1])
 by localhost (mail.alien8.de [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id Evg5Lkkqr3bn; Mon, 25 Mar 2024 18:21:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=alien8;
 t=1711390905; bh=dQLIgUusAp6Ffn7xXoPfQLYtOT0Ljl4ZWIfsSbbUF3g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iEqPpj+bW8S4RMHisaTFXEzWdZ7iPmLjr0mLbmCdIqOQemCfjoR0jCdR8m4wDqdzR
 OR9yB/ApLHULhsoZwtI1ixsfa8S6oq/XGChIS0HB/caQaDnEt0iWuO3jPJ/9Rn2i+k
 RQxahsVSgT6IYE/V1PO4E7qeCPfC5ZWJBihXo/ti1B2lWW1JnJ6e4hIGyV8kxJp7oT
 +ctz+mHR8muuJOhM6Cp7CHyBbaRRAqsf+Hxf5i92LYhd630nFsnNWOUlSB70zuemtB
 AXTBQ4cBEu4JAw5uGKsHDZ8E19vYGJXA5CdlybqH2ofoJsK//DvtyHwKdv1k4r8QC+
 b7rxtDmZXvRRJnPvpQW/BlKEbcs5EngKEVCPykRoG3NiotFqRDlQBtYEw4Zd9o/WOF
 UHk+oMAlSFngLtnWSe+VN8iLSp20z0RPIUX7ApXLkegyPJmAconoW0A5zfCNxI18Fk
 TGlcJ9ciKrZuBrC3tQxw8BA2GvPO4hTovMkQo3cxfOx2QOe97bkHV6iCPlQuDutu7I
 Cz7WXXeuyqaelgvdSOZoru2J61qiPfZvo06Bci8RCBBGAldSzMmfaNkel7P7WBE+Wz
 hzKULpTauZ8kXMsaFkWf3+b+P9MyMsfPVD5CEWe52FIHBAxb1xVWY1ZvZnmVcv5IcX
 P25/GC2Osc0qM35dVk8gLzmo=
Received: from zn.tnic (p5de8ecf7.dip0.t-ipconnect.de [93.232.236.247])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature ECDSA (P-256) server-digest
 SHA256) (No client certificate requested)
 by mail.alien8.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 6FB4B40E0247;
 Mon, 25 Mar 2024 18:21:42 +0000 (UTC)
Date: Mon, 25 Mar 2024 19:21:35 +0100
From: Borislav Petkov <bp@alien8.de>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Subject: Re: [PATCH] drm/i915: Pre-populate the cursor physical dma address
Message-ID: <20240325182135.GGZgHAr9jz8I-geZff@fat_crate.local>
References: <20240325175738.3440-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240325175738.3440-1-ville.syrjala@linux.intel.com>
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

On Mon, Mar 25, 2024 at 07:57:38PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>=20
> Calling i915_gem_object_get_dma_address() from the vblank
> evade critical section triggers might_sleep().
>=20
> While we know that we've already pinned the framebuffer
> and thus i915_gem_object_get_dma_address() will in fact
> not sleep in this case, it seems reasonable to keep the
> unconditional might_sleep() for maximum coverage.
>=20
> So let's instead pre-populate the dma address during
> fb pinning, which all happens before we enter the
> vblank evade critical section.
>=20
> We can use u32 for the dma address as this class of
> hardware doesn't support >32bit addresses.
>=20
> Cc: stable@vger.kernel.org
> Fixes: 0225a90981c8 ("drm/i915: Make cursor plane registers unlocked")
> Link: https://lore.kernel.org/intel-gfx/20240227100342.GAZd2zfmYcPS_Snd=
tO@fat_crate.local/
> Reported-by: Borislav Petkov <bp@alien8.de>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks for the fix - splat is gone.

Tested-by: Borislav Petkov (AMD) <bp@alien8.de>

--=20
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette
