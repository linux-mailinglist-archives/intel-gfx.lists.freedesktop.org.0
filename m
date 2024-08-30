Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C8F9965D54
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2024 11:51:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3F7310EA1D;
	Fri, 30 Aug 2024 09:51:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 367 seconds by postgrey-1.36 at gabe;
 Fri, 30 Aug 2024 09:51:31 UTC
Received: from weierstrass.telenet-ops.be (weierstrass.telenet-ops.be
 [195.130.137.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B67510EA1D
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Aug 2024 09:51:31 +0000 (UTC)
Received: from andre.telenet-ops.be (andre.telenet-ops.be
 [IPv6:2a02:1800:120:4::f00:15])
 by weierstrass.telenet-ops.be (Postfix) with ESMTPS id 4WwCtp6qNJz4xchH
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Aug 2024 11:45:22 +0200 (CEST)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed80:f0d5:75e3:232:dfed])
 by andre.telenet-ops.be with cmsmtp
 id 69lM2D00L4wyYGe019lMm3; Fri, 30 Aug 2024 11:45:22 +0200
Received: from geert (helo=localhost)
 by ramsan.of.borg with local-esmtp (Exim 4.95)
 (envelope-from <geert@linux-m68k.org>) id 1sjyC1-001KOP-Bj;
 Fri, 30 Aug 2024 11:45:21 +0200
Date: Fri, 30 Aug 2024 11:45:21 +0200 (CEST)
From: Geert Uytterhoeven <geert@linux-m68k.org>
To: Thomas Zimmermann <tzimmermann@suse.de>
cc: daniel@ffwll.ch, airlied@gmail.com, jfalempe@redhat.com, 
 javierm@redhat.com, dri-devel@lists.freedesktop.org, 
 amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, nouveau@lists.freedesktop.org, 
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
Subject: Re: [PATCH v3 04/81] drm: Add client-agnostic setup helper
In-Reply-To: <20240830084456.77630-5-tzimmermann@suse.de>
Message-ID: <6c78eb72-c555-1fa8-18f9-c1e671a8b12@linux-m68k.org>
References: <20240830084456.77630-1-tzimmermann@suse.de>
 <20240830084456.77630-5-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
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

 	Hi Thomas,

On Fri, 30 Aug 2024, Thomas Zimmermann wrote:
> DRM may support multiple in-kernel clients that run as soon as a DRM
> driver has been registered. To select the client(s) in a single place,
> introduce drm_client_setup().
>
> Drivers that call the new helper automatically instantiate the kernel's
> configured default clients. Only fbdev emulation is currently supported.
> Later versions can add support for DRM-based logging, a boot logo or even
> a console.
>
> Some drivers handle the color mode for clients internally. Provide the
> helper drm_client_setup_with_color_mode() for them.
>
> v3:
> - fix build error
> v2:
> - add drm_client_setup_with_fourcc() (Laurent)
> - push default-format handling into actual clients
>
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> Reviewed-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>

Thanks for your patch!

> --- /dev/null
> +++ b/drivers/gpu/drm/drm_client_setup.c

> +/**
> + * drm_client_setup_with_fourcc() - Setup in-kernel DRM clients for color mode
> + * @dev: DRM device
> + * @fourcc: Preferred pixel format as 4CC code for the device
> + *
> + * This function sets up the in-kernel DRM clients. It is equivalent
> + * to drm_client_setup(), but expects a 4CC code as second argument.
> + *
> + * Do not use this function in new drivers. Prefer drm_client_setup() with a
> + * format of NULL.

Why? To me this looks like the right function to call on hardware
that does not support ARGB8888 natively.

BTW, once this series is applied, I plan to check again how to wire up
native fbcon support for monochrome (DRM_FORMAT_R1) and grayscale
(DRM_FORMAT_R8), as used by the Solomon driver.

> + */
> +void drm_client_setup_with_fourcc(struct drm_device *dev, u32 fourcc)
> +{
> +	drm_client_setup(dev, drm_format_info(fourcc));
> +}
> +EXPORT_SYMBOL(drm_client_setup_with_fourcc);
> +
> +/**
> + * drm_client_setup_with_color_mode() - Setup in-kernel DRM clients for color mode
> + * @dev: DRM device
> + * @color_mode: Preferred color mode for the device
> + *
> + * This function sets up the in-kernel DRM clients. It is equivalent
> + * to drm_client_setup(), but expects a color mode as second argument.
> + *
> + * Do not use this function in new drivers. Prefer drm_client_setup() with a


Yeah, this is definitely not to be used in new drivers, as color_mode is
ambiguous.

> + * format of NULL.

or drm_client_setup_with_fourcc().

> + */
> +void drm_client_setup_with_color_mode(struct drm_device *dev, unsigned int color_mode)
> +{
> +	u32 fourcc = drm_driver_color_mode_format(dev, color_mode);
> +
> +	drm_client_setup_with_fourcc(dev, fourcc);
> +}
> +EXPORT_SYMBOL(drm_client_setup_with_color_mode);

Gr{oetje,eeting}s,

 						Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
 							    -- Linus Torvalds
