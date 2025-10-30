Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 644A4C1EE6D
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 09:04:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2F9310E252;
	Thu, 30 Oct 2025 08:04:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B79A10E252;
 Thu, 30 Oct 2025 08:04:45 +0000 (UTC)
Received: from mobile-access-b04845-99.dhcp.inet.fi ([176.72.69.99]
 helo=[192.168.8.139])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1vENeD-00000001vpH-08dL; Thu, 30 Oct 2025 10:04:43 +0200
Message-ID: <85acf9f93f35896e9cfb4848ae50be0759f3b83a.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Date: Thu, 30 Oct 2025 10:04:40 +0200
In-Reply-To: <c02f82e45f31caf95bd1339080b9099c3b7190be.1761146196.git.jani.nikula@intel.com>
References: <cover.1761146196.git.jani.nikula@intel.com>
 <c02f82e45f31caf95bd1339080b9099c3b7190be.1761146196.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-5 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-25) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham autolearn_force=no version=4.0.1
Subject: Re: [PATCH 6/6] drm/xe/compat: reduce i915_utils.[ch]
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

On Wed, 2025-10-22 at 18:17 +0300, Jani Nikula wrote:
> Reduce the compat i915_utils.h to only cover the requirements of
> MISSING_CASE() in soc/ and the few i915_inject_probe_failure()
> instances, instead of including the entire i915_utils.h from i915. This
> prevents new users for the utilities from cropping up.
>=20
> With this, we can remove the xe/display/ext/i915_utils.c altogether.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.


>  drivers/gpu/drm/xe/Makefile                     |  1 -
>  .../gpu/drm/xe/compat-i915-headers/i915_utils.h |  9 ++++++++-
>  drivers/gpu/drm/xe/display/ext/i915_utils.c     | 17 -----------------
>  3 files changed, 8 insertions(+), 19 deletions(-)
>  delete mode 100644 drivers/gpu/drm/xe/display/ext/i915_utils.c
>=20
> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> index feb8225d4d79..a7bcc3948a31 100644
> --- a/drivers/gpu/drm/xe/Makefile
> +++ b/drivers/gpu/drm/xe/Makefile
> @@ -205,7 +205,6 @@ $(obj)/i915-display/%.o: $(srctree)/drivers/gpu/drm/i=
915/display/%.c FORCE
>  # Display code specific to xe
>  xe-$(CONFIG_DRM_XE_DISPLAY) +=3D \
>  	display/ext/i915_irq.o \
> -	display/ext/i915_utils.o \
>  	display/intel_bo.o \
>  	display/intel_fb_bo.o \
>  	display/intel_fbdev_fb.o \
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_utils.h b/driver=
s/gpu/drm/xe/compat-i915-headers/i915_utils.h
> index 1d7c4360e5c0..bcd441dc0fce 100644
> --- a/drivers/gpu/drm/xe/compat-i915-headers/i915_utils.h
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_utils.h
> @@ -3,4 +3,11 @@
>   * Copyright =C2=A9 2023 Intel Corporation
>   */
> =20
> -#include "../../i915/i915_utils.h"
> +/* for soc/ */
> +#ifndef MISSING_CASE
> +#define MISSING_CASE(x) WARN(1, "Missing case (%s =3D=3D %ld)\n", \
> +			     __stringify(x), (long)(x))
> +#endif
> +
> +/* for a couple of users under i915/display */
> +#define i915_inject_probe_failure(unused) ((unused) && 0)
> diff --git a/drivers/gpu/drm/xe/display/ext/i915_utils.c b/drivers/gpu/dr=
m/xe/display/ext/i915_utils.c
> deleted file mode 100644
> index af9ec2abbaa1..000000000000
> --- a/drivers/gpu/drm/xe/display/ext/i915_utils.c
> +++ /dev/null
> @@ -1,17 +0,0 @@
> -// SPDX-License-Identifier: MIT
> -/*
> - * Copyright =C2=A9 2023 Intel Corporation
> - */
> -
> -#include "i915_utils.h"
> -
> -#if IS_ENABLED(CONFIG_DRM_I915_DEBUG)
> -
> -/* i915 specific, just put here for shutting it up */
> -int __i915_inject_probe_error(struct drm_i915_private *i915, int err,
> -			      const char *func, int line)
> -{
> -	return 0;
> -}
> -
> -#endif
