Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7723EC1EDE3
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 08:57:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 294C210E8F2;
	Thu, 30 Oct 2025 07:57:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C707810E8F2;
 Thu, 30 Oct 2025 07:57:29 +0000 (UTC)
Received: from mobile-access-b04845-99.dhcp.inet.fi ([176.72.69.99]
 helo=[192.168.8.139])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1vENXB-00000001vnr-3Jd2; Thu, 30 Oct 2025 09:57:27 +0200
Message-ID: <309c3611169c5362c132ee8496150c74faf22497.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Date: Thu, 30 Oct 2025 09:57:24 +0200
In-Reply-To: <469f9c41e0c3e3099314a3cf1a7671bf36ec8ffd.1761146196.git.jani.nikula@intel.com>
References: <cover.1761146196.git.jani.nikula@intel.com>
 <469f9c41e0c3e3099314a3cf1a7671bf36ec8ffd.1761146196.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-5 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-25) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham autolearn_force=no version=4.0.1
Subject: Re: [PATCH 3/6] drm/i915/display: add intel_display_run_as_guest()
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
> Add intel_display_utils.c for display utilities that need more than a
> header.
>=20
> Start off with intel_display_run_as_guest(). The implementation is
> intentional duplication of the i915_utils.h i915_run_as_guest(), with
> the idea that it's small enough to not matter.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---



>  drivers/gpu/drm/i915/Makefile                  |  1 +
>  .../gpu/drm/i915/display/intel_display_utils.c | 18 ++++++++++++++++++
>  .../gpu/drm/i915/display/intel_display_utils.h |  6 ++++++
>  drivers/gpu/drm/i915/display/intel_pch.c       |  4 ++--
>  drivers/gpu/drm/xe/Makefile                    |  1 +
>  5 files changed, 28 insertions(+), 2 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_display_utils.c
>=20
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefil=
e
> index 47bac9b2c611..046f9282fb65 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -255,6 +255,7 @@ i915-y +=3D \
>  	display/intel_display_rpm.o \
>  	display/intel_display_rps.o \
>  	display/intel_display_snapshot.o \
> +	display/intel_display_utils.o \
>  	display/intel_display_wa.o \
>  	display/intel_dmc.o \
>  	display/intel_dmc_wl.o \
> diff --git a/drivers/gpu/drm/i915/display/intel_display_utils.c b/drivers=
/gpu/drm/i915/display/intel_display_utils.c
> new file mode 100644
> index 000000000000..13d3999dd580
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_display_utils.c
> @@ -0,0 +1,18 @@
> +// SPDX-License-Identifier: MIT
> +/* Copyright =C2=A9 2025 Intel Corporation */
> +
> +#ifdef CONFIG_X86
> +#include <asm/hypervisor.h>
> +#endif
> +
> +#include "intel_display_utils.h"
> +
> +bool intel_display_run_as_guest(struct intel_display *display)
> +{
> +#if IS_ENABLED(CONFIG_X86)
> +	return !hypervisor_is_type(X86_HYPER_NATIVE);
> +#else
> +	/* Not supported yet */
> +	return false;
> +#endif
> +}

Why can't this be an inline in the header file?

--
Cheers,
Luca.


> diff --git a/drivers/gpu/drm/i915/display/intel_display_utils.h b/drivers=
/gpu/drm/i915/display/intel_display_utils.h
> index 0a2b603ea856..e54e69afd959 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_utils.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_utils.h
> @@ -4,7 +4,13 @@
>  #ifndef __INTEL_DISPLAY_UTILS__
>  #define __INTEL_DISPLAY_UTILS__
> =20
> +#include <linux/types.h>
> +
> +struct intel_display;
> +
>  #define KHz(x) (1000 * (x))
>  #define MHz(x) KHz(1000 * (x))
> =20
> +bool intel_display_run_as_guest(struct intel_display *display);
> +
>  #endif /* __INTEL_DISPLAY_UTILS__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_pch.c b/drivers/gpu/drm/i=
915/display/intel_pch.c
> index 469e8a3cfb49..65359a36df48 100644
> --- a/drivers/gpu/drm/i915/display/intel_pch.c
> +++ b/drivers/gpu/drm/i915/display/intel_pch.c
> @@ -5,8 +5,8 @@
> =20
>  #include <drm/drm_print.h>
> =20
> -#include "i915_utils.h"
>  #include "intel_display_core.h"
> +#include "intel_display_utils.h"
>  #include "intel_pch.h"
> =20
>  #define INTEL_PCH_DEVICE_ID_MASK		0xff80
> @@ -328,7 +328,7 @@ void intel_pch_detect(struct intel_display *display)
>  			    "Display disabled, reverting to NOP PCH\n");
>  		display->pch_type =3D PCH_NOP;
>  	} else if (!pch) {
> -		if (i915_run_as_guest() && HAS_DISPLAY(display)) {
> +		if (intel_display_run_as_guest(display) && HAS_DISPLAY(display)) {
>  			intel_virt_detect_pch(display, &id, &pch_type);
>  			display->pch_type =3D pch_type;
>  		} else {
> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> index 82c6b3d29676..feb8225d4d79 100644
> --- a/drivers/gpu/drm/xe/Makefile
> +++ b/drivers/gpu/drm/xe/Makefile
> @@ -257,6 +257,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) +=3D \
>  	i915-display/intel_display_power_map.o \
>  	i915-display/intel_display_power_well.o \
>  	i915-display/intel_display_trace.o \
> +	i915-display/intel_display_utils.o \
>  	i915-display/intel_display_wa.o \
>  	i915-display/intel_dkl_phy.o \
>  	i915-display/intel_dmc.o \
