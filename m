Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D664C1ED8F
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 08:51:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0316F10E93B;
	Thu, 30 Oct 2025 07:51:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BC5A10E934;
 Thu, 30 Oct 2025 07:51:17 +0000 (UTC)
Received: from mobile-access-b04845-99.dhcp.inet.fi ([176.72.69.99]
 helo=[192.168.8.139])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1vENRA-00000001vn3-3S8b; Thu, 30 Oct 2025 09:51:15 +0200
Message-ID: <4945d033eb404b2591efd1c3f72357fa5946d66d.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Date: Thu, 30 Oct 2025 09:51:11 +0200
In-Reply-To: <dbdd1915466850293b9737b751170dd225197873.1761146196.git.jani.nikula@intel.com>
References: <cover.1761146196.git.jani.nikula@intel.com>
 <dbdd1915466850293b9737b751170dd225197873.1761146196.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-5 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-25) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham autolearn_force=no version=4.0.1
Subject: Re: [PATCH 2/6] drm/i915/display: create intel_display_utils.h
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
> Start a file for display specific generic utilities.
>=20
> Move KHz() and MHz() helpers there first.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.


>  drivers/gpu/drm/i915/display/intel_backlight.c     |  2 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c           |  1 +
>  drivers/gpu/drm/i915/display/intel_display_utils.h | 10 ++++++++++
>  drivers/gpu/drm/i915/display/intel_dp_mst.c        |  2 +-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c      |  1 +
>  drivers/gpu/drm/i915/i915_utils.h                  |  3 ---
>  6 files changed, 14 insertions(+), 5 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_display_utils.h
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu=
/drm/i915/display/intel_backlight.c
> index 3b14f929825a..a68fdbd2acb9 100644
> --- a/drivers/gpu/drm/i915/display/intel_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_backlight.c
> @@ -13,7 +13,6 @@
>  #include <drm/drm_print.h>
> =20
>  #include "i915_reg.h"
> -#include "i915_utils.h"
>  #include "intel_backlight.h"
>  #include "intel_backlight_regs.h"
>  #include "intel_connector.h"
> @@ -21,6 +20,7 @@
>  #include "intel_display_regs.h"
>  #include "intel_display_rpm.h"
>  #include "intel_display_types.h"
> +#include "intel_display_utils.h"
>  #include "intel_dp_aux_backlight.h"
>  #include "intel_dsi_dcs_backlight.h"
>  #include "intel_panel.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 870140340342..cd9fc3d1f36a 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -53,6 +53,7 @@
>  #include "intel_display_power.h"
>  #include "intel_display_regs.h"
>  #include "intel_display_types.h"
> +#include "intel_display_utils.h"
>  #include "intel_dkl_phy.h"
>  #include "intel_dkl_phy_regs.h"
>  #include "intel_dp.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_display_utils.h b/drivers=
/gpu/drm/i915/display/intel_display_utils.h
> new file mode 100644
> index 000000000000..0a2b603ea856
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_display_utils.h
> @@ -0,0 +1,10 @@
> +/* SPDX-License-Identifier: MIT */
> +/* Copyright =C2=A9 2025 Intel Corporation */
> +
> +#ifndef __INTEL_DISPLAY_UTILS__
> +#define __INTEL_DISPLAY_UTILS__
> +
> +#define KHz(x) (1000 * (x))
> +#define MHz(x) KHz(1000 * (x))
> +
> +#endif /* __INTEL_DISPLAY_UTILS__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.c
> index a845b2612a3f..8d11a989cf79 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -33,7 +33,6 @@
>  #include <drm/drm_print.h>
>  #include <drm/drm_probe_helper.h>
> =20
> -#include "i915_utils.h"
>  #include "intel_atomic.h"
>  #include "intel_audio.h"
>  #include "intel_connector.h"
> @@ -43,6 +42,7 @@
>  #include "intel_display_driver.h"
>  #include "intel_display_regs.h"
>  #include "intel_display_types.h"
> +#include "intel_display_utils.h"
>  #include "intel_dp.h"
>  #include "intel_dp_hdcp.h"
>  #include "intel_dp_link_training.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/=
drm/i915/display/intel_dpll_mgr.c
> index 8ea96cc524a1..900a945ff8ab 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -32,6 +32,7 @@
>  #include "intel_de.h"
>  #include "intel_display_regs.h"
>  #include "intel_display_types.h"
> +#include "intel_display_utils.h"
>  #include "intel_dkl_phy.h"
>  #include "intel_dkl_phy_regs.h"
>  #include "intel_dpio_phy.h"
> diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i91=
5_utils.h
> index 44de4a4aa84a..c1f978a7c141 100644
> --- a/drivers/gpu/drm/i915/i915_utils.h
> +++ b/drivers/gpu/drm/i915/i915_utils.h
> @@ -100,9 +100,6 @@ static inline bool is_power_of_2_u64(u64 n)
>  	return (n !=3D 0 && ((n & (n - 1)) =3D=3D 0));
>  }
> =20
> -#define KHz(x) (1000 * (x))
> -#define MHz(x) KHz(1000 * (x))
> -
>  void add_taint_for_CI(struct drm_i915_private *i915, unsigned int taint)=
;
>  static inline void __add_taint_for_CI(unsigned int taint)
>  {
