Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F33FE4A59E6
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Feb 2022 11:21:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B7F410E7C2;
	Tue,  1 Feb 2022 10:21:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 939C910E7C2
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Feb 2022 10:21:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1643710910;
 bh=rhMjI8y3jysXslMLlHfAxQLeYg7orlmWhVUeBoVQ60g=;
 h=X-UI-Sender-Class:Date:Subject:To:Cc:References:From:In-Reply-To;
 b=iap4MJlBOw2fBp3IpPFi/8DCxTNO047yLLlUoLnRX956KWpuZihpn74LcB1dMN+4V
 IIVUPiX7qQ+44BStDsM94H4uBycl2KNP0hDN9TsARR4ITaXig4zi7XsksoVAvD03No
 1RonTz72fPmTZ7JDijKo1bonfVSKILtGfCUZFQhE=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.20.60] ([92.116.146.124]) by mail.gmx.net (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1Mof9F-1mQ9RW4Ayf-00p4Jh; Tue, 01
 Feb 2022 11:16:08 +0100
Message-ID: <9c22b709-cbcf-6a29-a45e-5a57ba0b9c14@gmx.de>
Date: Tue, 1 Feb 2022 11:16:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Content-Language: en-US
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>
References: <20220131210552.482606-1-daniel.vetter@ffwll.ch>
 <20220131210552.482606-4-daniel.vetter@ffwll.ch>
From: Helge Deller <deller@gmx.de>
In-Reply-To: <20220131210552.482606-4-daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:jflhoCckVNnaLnLLGcsVr23sboAIiW9Oegx+vqwH4cE9RiJn0so
 xERIAfckdKuldjuruwmA2wOLubXdgZ3NtxcE+TMECbSWiMLqDLTTbt3bRgJwxZc5Z9rPY4z
 sZNAgJgYGcwPZx+Do1gWwD2BpeKgoQIPwNq514BedbfSk7eNeKR3F0rCRCiM6qYjXB1hP1c
 hJUm8fT1IUjX8yDqBslZg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ldWvst1vMrw=:ZHUAMUCVCOcX29puGDZjH6
 V/QgZ0yqSJBZNkrGEHnG80qETir2kYgKsoVURK7d1tjDzjtQojQX3m8RBdFmMuqtHmhKLapl3
 jqEyuWu5k7Yk5BSrC7+A8E0oFllElUvvKc83QDieaUyWsJjV0oyHcz5JILPTmoSNo+bJ+hj3s
 BTFS938lTnh9kt6ut/CUlr1vpSjg2s44nl/2hVtSABiShvpwFkYefSMYwTzKfoaMoueq9NDHr
 XSrh9bXN/EX4Y1I0vyshySoE7+KwR+y66rW8EgxBwjS+epfPbdK9x4UBSXVNo9HSrMb3GEG8X
 bZw5BjYBB0+DBAo/CG/C11YYAwecxLq8dv+Hq2A8AU/ojSyTj5T8aOsTczviUaOVQBD/hMe1A
 Imidl8QVgLr+J5LLs0Ec0UppVHFcSdpakQRzBsWQPkYbSkolUR9Q8UyHcttQgBD02X+kB6p38
 17oPTtwPvBC5MnwfO1vnyIrp9fMBTiS97jGLsyjtpkodi56V49faef9iuEeRaQQWjk5Evgh++
 mDNkqxy5uHL+DYI5lQw1q2Fd5rr47u0ll6Xv3bEtClc6MsdYRwPU4wqMENeqVIIFSINTZByfD
 Uy7lKLF6mW9vZ7j2VCE91O3oH9unsdbTJGDbSMYuNH7FHgh12Qicn8eOWMhm/bE7tA5vMYWXl
 B+jsrov5VHSfXGCU5LiND+OGyOl1r8UlT43KA4yxuSsDeMktaGcYUDWDKtAlb230PlXmbZKiz
 8Q3WdK5ckI/idwX018r1sHnZLQ2iTfTb2w2nEXmkKqt+Q4B/hJeU4KoKyENyBreA6RJmk67Zo
 oRzJ9QDv55VBMqJvy2Gy+iggCWCspqmjaIt3u55XvUQyGk1YUCMvAMtZE48ciGUkN9K9NDKDY
 qJKFkHc5784Fplwu5wqe3pFxS/hYBiKqVN2JLC2eBvgCF963Y1QnT8xvwFSdHPPcH/Iw2S/2y
 CDwcGY7ji24mxbMVABqeTpV/kzxhVTFr2qncm4U7x1ky8O3CF2P3ieYxj5LqGB+wOHiWme0IU
 EUNRgbUa1HL74szTmj1/yHrnpJHU/qWntCrbHI2+I4Wm1rn9hEmaEIqcxYTCtij9RZ4PHetyN
 i4eUIUGNCY4Fd0=
Subject: Re: [Intel-gfx] [PATCH 03/21] fbcon: Restore fbcon scrolling
 acceleration
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
Cc: linux-fbdev@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Sam Ravnborg <sam@ravnborg.org>, Daniel Vetter <daniel.vetter@intel.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>, stable@vger.kernel.org,
 Javier Martinez Canillas <javierm@redhat.com>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, Pavel Machek <pavel@ucw.cz>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Dave Airlie <airlied@gmail.com>,
 Sven Schnelle <svens@stackframe.org>, Gerd Hoffmann <kraxel@redhat.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 1/31/22 22:05, Daniel Vetter wrote:
> This functionally undoes 39aead8373b3 ("fbcon: Disable accelerated
> scrolling"), but behind the FRAMEBUFFER_CONSOLE_LEGACY_ACCELERATION
> option.

you have two trivial copy-n-paste errors in this patch which still prevent=
 the
console acceleration.

> diff --git a/drivers/video/fbdev/core/fbcon.c b/drivers/video/fbdev/core=
/fbcon.c
> index 2ff90061c7f3..39dc18a5de86 100644
> --- a/drivers/video/fbdev/core/fbcon.c
> +++ b/drivers/video/fbdev/core/fbcon.c
> @@ -1125,13 +1125,15 @@ static void fbcon_init(struct vc_data *vc, int i=
nit)
>
>  	ops->graphics =3D 0;
>
> -	/*
> -	 * No more hw acceleration for fbcon.
> -	 *
> -	 * FIXME: Garbage collect all the now dead code after sufficient time
> -	 * has passed.
> -	 */
> +#ifdef CONFIG_FRAMEBUFFER_CONSOLE_ROTATION

should be:
#ifdef CONFIG_FRAMEBUFFER_CONSOLE_LEGACY_ACCELERATION


> +	if ((info->flags & FBINFO_HWACCEL_COPYAREA) &&
> +	    !(info->flags & FBINFO_HWACCEL_DISABLED))
> +		p->scrollmode =3D SCROLL_MOVE;
> +	else /* default to something safe */
> +		p->scrollmode =3D SCROLL_REDRAW;
> +#else
>  	p->scrollmode =3D SCROLL_REDRAW;
> +#endif
>
>  	/*
>  	 *  ++guenther: console.c:vc_allocate() relies on initializing
> @@ -1971,15 +1973,49 @@ static void updatescrollmode(struct fbcon_displa=
y *p,
>  {
>  	struct fbcon_ops *ops =3D info->fbcon_par;
>  	int fh =3D vc->vc_font.height;
> +	int cap =3D info->flags;
> +	u16 t =3D 0;
> +	int ypan =3D FBCON_SWAP(ops->rotate, info->fix.ypanstep,
> +			      info->fix.xpanstep);
> +	int ywrap =3D FBCON_SWAP(ops->rotate, info->fix.ywrapstep, t);
>  	int yres =3D FBCON_SWAP(ops->rotate, info->var.yres, info->var.xres);
>  	int vyres =3D FBCON_SWAP(ops->rotate, info->var.yres_virtual,
>  				   info->var.xres_virtual);
> +	int good_pan =3D (cap & FBINFO_HWACCEL_YPAN) &&
> +		divides(ypan, vc->vc_font.height) && vyres > yres;
> +	int good_wrap =3D (cap & FBINFO_HWACCEL_YWRAP) &&
> +		divides(ywrap, vc->vc_font.height) &&
> +		divides(vc->vc_font.height, vyres) &&
> +		divides(vc->vc_font.height, yres);
> +	int reading_fast =3D cap & FBINFO_READS_FAST;
> +	int fast_copyarea =3D (cap & FBINFO_HWACCEL_COPYAREA) &&
> +		!(cap & FBINFO_HWACCEL_DISABLED);
> +	int fast_imageblit =3D (cap & FBINFO_HWACCEL_IMAGEBLIT) &&
> +		!(cap & FBINFO_HWACCEL_DISABLED);
>
>  	p->vrows =3D vyres/fh;
>  	if (yres > (fh * (vc->vc_rows + 1)))
>  		p->vrows -=3D (yres - (fh * vc->vc_rows)) / fh;
>  	if ((yres % fh) && (vyres % fh < yres % fh))
>  		p->vrows--;
> +
> +	if (good_wrap || good_pan) {
> +		if (reading_fast || fast_copyarea)
> +			p->scrollmode =3D good_wrap ?
> +				SCROLL_WRAP_MOVE : SCROLL_PAN_MOVE;
> +		else
> +			p->scrollmode =3D good_wrap ? SCROLL_REDRAW :
> +				SCROLL_PAN_REDRAW;
> +	} else {
> +		if (reading_fast || (fast_copyarea && !fast_imageblit))
> +			p->scrollmode =3D SCROLL_MOVE;
> +		else
> +			p->scrollmode =3D SCROLL_REDRAW;
> +	}
> +
> +#ifndef CONFIG_FRAMEBUFFER_CONSOLE_ROTATION

same here... it needs to be:
#ifdef CONFIG_FRAMEBUFFER_CONSOLE_LEGACY_ACCELERATION


> +	p->scrollmode =3D SCROLL_REDRAW;
> +#endif
>  }
>
>  #define PITCH(w) (((w) + 7) >> 3)
>

still reviewing the other patches...

Helge
