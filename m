Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MCH0LQiPrmnVGAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Mar 2026 10:12:40 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E6F8235F5B
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Mar 2026 10:12:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B4E110E4AD;
	Mon,  9 Mar 2026 09:12:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C0F410E4AD;
 Mon,  9 Mar 2026 09:12:37 +0000 (UTC)
Received: from 37-33-19-16.bb.dnainternet.fi ([37.33.19.16]
 helo=[192.168.101.111])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1vzWfD-000000039ok-05Kk; Mon, 09 Mar 2026 11:12:35 +0200
Message-ID: <6c59ab2bbe6341839174ec69f364f44ffea93291.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Date: Mon, 09 Mar 2026 11:12:34 +0200
In-Reply-To: <58f557b8c12ab29acf3a2095890314b7e438f649.1772635152.git.jani.nikula@intel.com>
References: <cover.1772635152.git.jani.nikula@intel.com>
 <58f557b8c12ab29acf3a2095890314b7e438f649.1772635152.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-8 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.2 (2025-08-27) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=4.0.2
Subject: Re: [PATCH 8/8] drm/i915/display: switch to including common step
 file directly
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
X-Rspamd-Queue-Id: 2E6F8235F5B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.61 / 15.00];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[coelho.fi:mid,intel.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca@coelho.fi,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	NEURAL_SPAM(0.00)[0.489];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[coelho.fi];
	RCPT_COUNT_THREE(0.00)[3]
X-Rspamd-Action: no action

On Wed, 2026-03-04 at 16:40 +0200, Jani Nikula wrote:
> Instead of using the proxy intel_step.h in display, just include the
> common step file directly where needed. This allows us to remove the
> compat intel_step.h header.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.


>  drivers/gpu/drm/i915/display/intel_cdclk.c          |  2 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c            |  2 +-
>  drivers/gpu/drm/i915/display/intel_display_device.c |  2 +-
>  drivers/gpu/drm/i915/display/intel_display_power.c  |  2 +-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c         |  2 +-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c       |  2 +-
>  drivers/gpu/drm/i915/display/intel_fbc.c            |  2 +-
>  drivers/gpu/drm/i915/display/intel_flipq.c          |  2 +-
>  drivers/gpu/drm/i915/display/intel_hdcp.c           |  2 +-
>  drivers/gpu/drm/i915/display/intel_pmdemand.c       |  2 +-
>  drivers/gpu/drm/i915/display/intel_psr.c            |  2 +-
>  drivers/gpu/drm/i915/display/skl_universal_plane.c  |  2 +-
>  drivers/gpu/drm/xe/compat-i915-headers/intel_step.h | 11 -----------
>  13 files changed, 12 insertions(+), 23 deletions(-)
>  delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/intel_step.h
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm=
/i915/display/intel_cdclk.c
> index 38331e899519..fcee3b1bfdcc 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -28,6 +28,7 @@
>  #include <drm/drm_fixed.h>
>  #include <drm/drm_print.h>
>  #include <drm/intel/intel_pcode_regs.h>
> +#include <drm/intel/step.h>
> =20
>  #include "hsw_ips.h"
>  #include "intel_atomic.h"
> @@ -46,7 +47,6 @@
>  #include "intel_pci_config.h"
>  #include "intel_plane.h"
>  #include "intel_psr.h"
> -#include "intel_step.h"
>  #include "intel_vdsc.h"
>  #include "skl_watermark.h"
>  #include "skl_watermark_regs.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 94ae583e907f..b4c84528ce5c 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -33,6 +33,7 @@
>  #include <drm/display/drm_scdc_helper.h>
>  #include <drm/drm_print.h>
>  #include <drm/drm_privacy_screen_consumer.h>
> +#include <drm/intel/step.h>
> =20
>  #include "icl_dsi.h"
>  #include "intel_alpm.h"
> @@ -80,7 +81,6 @@
>  #include "intel_psr.h"
>  #include "intel_quirks.h"
>  #include "intel_snps_phy.h"
> -#include "intel_step.h"
>  #include "intel_tc.h"
>  #include "intel_vdsc.h"
>  #include "intel_vdsc_regs.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/driver=
s/gpu/drm/i915/display/intel_display_device.c
> index f716e9a51532..361a2fca58a3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -9,6 +9,7 @@
>  #include <drm/drm_drv.h>
>  #include <drm/drm_print.h>
>  #include <drm/intel/pciids.h>
> +#include <drm/intel/step.h>
> =20
>  #include "intel_cx0_phy_regs.h"
>  #include "intel_de.h"
> @@ -20,7 +21,6 @@
>  #include "intel_display_regs.h"
>  #include "intel_display_types.h"
>  #include "intel_fbc.h"
> -#include "intel_step.h"
> =20
>  __diag_push();
>  __diag_ignore_all("-Woverride-init", "Allow field initialization overrid=
es for display info");
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers=
/gpu/drm/i915/display/intel_display_power.c
> index 755935dcfe23..fa76a3ed6559 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -8,6 +8,7 @@
> =20
>  #include <drm/drm_print.h>
>  #include <drm/intel/intel_pcode_regs.h>
> +#include <drm/intel/step.h>
> =20
>  #include "intel_backlight_regs.h"
>  #include "intel_cdclk.h"
> @@ -29,7 +30,6 @@
>  #include "intel_pmdemand.h"
>  #include "intel_pps_regs.h"
>  #include "intel_snps_phy.h"
> -#include "intel_step.h"
>  #include "skl_watermark.h"
>  #include "skl_watermark_regs.h"
>  #include "vlv_sideband.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.c
> index 0bb39f9bd74e..262fd2ed278e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -32,6 +32,7 @@
>  #include <drm/drm_fixed.h>
>  #include <drm/drm_print.h>
>  #include <drm/drm_probe_helper.h>
> +#include <drm/intel/step.h>
> =20
>  #include "intel_atomic.h"
>  #include "intel_audio.h"
> @@ -55,7 +56,6 @@
>  #include "intel_link_bw.h"
>  #include "intel_pfit.h"
>  #include "intel_psr.h"
> -#include "intel_step.h"
>  #include "intel_vdsc.h"
>  #include "intel_vrr.h"
>  #include "skl_scaler.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/=
drm/i915/display/intel_dpll_mgr.c
> index f35a9252f4e1..908a90804881 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -25,6 +25,7 @@
>  #include <linux/string_helpers.h>
> =20
>  #include <drm/drm_print.h>
> +#include <drm/intel/step.h>
> =20
>  #include "bxt_dpio_phy_regs.h"
>  #include "intel_cx0_phy.h"
> @@ -41,7 +42,6 @@
>  #include "intel_lt_phy.h"
>  #include "intel_mg_phy_regs.h"
>  #include "intel_pch_refclk.h"
> -#include "intel_step.h"
>  #include "intel_tc.h"
> =20
>  /**
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i=
915/display/intel_fbc.c
> index 3e9b3e532499..a9de9fe6fa28 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -44,6 +44,7 @@
>  #include <drm/drm_blend.h>
>  #include <drm/drm_fourcc.h>
>  #include <drm/drm_print.h>
> +#include <drm/intel/step.h>
> =20
>  #include "i9xx_plane_regs.h"
>  #include "intel_de.h"
> @@ -58,7 +59,6 @@
>  #include "intel_fbc_regs.h"
>  #include "intel_frontbuffer.h"
>  #include "intel_parent.h"
> -#include "intel_step.h"
> =20
>  #define for_each_fbc_id(__display, __fbc_id) \
>  	for ((__fbc_id) =3D INTEL_FBC_A; (__fbc_id) < I915_MAX_FBCS; (__fbc_id)=
++) \
> diff --git a/drivers/gpu/drm/i915/display/intel_flipq.c b/drivers/gpu/drm=
/i915/display/intel_flipq.c
> index 1e9550cb66a3..d2c69a666f0b 100644
> --- a/drivers/gpu/drm/i915/display/intel_flipq.c
> +++ b/drivers/gpu/drm/i915/display/intel_flipq.c
> @@ -6,6 +6,7 @@
>  #include <linux/pci.h>
> =20
>  #include <drm/drm_print.h>
> +#include <drm/intel/step.h>
> =20
>  #include "intel_crtc.h"
>  #include "intel_de.h"
> @@ -16,7 +17,6 @@
>  #include "intel_dmc_regs.h"
>  #include "intel_dsb.h"
>  #include "intel_flipq.h"
> -#include "intel_step.h"
>  #include "intel_vblank.h"
>  #include "intel_vrr.h"
> =20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/=
i915/display/intel_hdcp.c
> index 116d2e0af878..6e86d97f8ea9 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -18,6 +18,7 @@
>  #include <drm/drm_print.h>
>  #include <drm/intel/i915_component.h>
>  #include <drm/intel/intel_pcode_regs.h>
> +#include <drm/intel/step.h>
> =20
>  #include "intel_connector.h"
>  #include "intel_de.h"
> @@ -33,7 +34,6 @@
>  #include "intel_hdcp_regs.h"
>  #include "intel_hdcp_shim.h"
>  #include "intel_parent.h"
> -#include "intel_step.h"
> =20
>  #define USE_HDCP_GSC(__display)		(DISPLAY_VER(__display) >=3D 14)
> =20
> diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/=
drm/i915/display/intel_pmdemand.c
> index f3db55710010..a41ff04a183c 100644
> --- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
> +++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
> @@ -6,6 +6,7 @@
>  #include <linux/bitops.h>
> =20
>  #include <drm/drm_print.h>
> +#include <drm/intel/step.h>
> =20
>  #include "intel_atomic.h"
>  #include "intel_bw.h"
> @@ -16,7 +17,6 @@
>  #include "intel_display_trace.h"
>  #include "intel_display_utils.h"
>  #include "intel_pmdemand.h"
> -#include "intel_step.h"
>  #include "skl_watermark.h"
> =20
>  struct pmdemand_params {
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i=
915/display/intel_psr.c
> index 9296ca3a4ff4..a38d872dcb80 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -28,6 +28,7 @@
>  #include <drm/drm_debugfs.h>
>  #include <drm/drm_print.h>
>  #include <drm/drm_vblank.h>
> +#include <drm/intel/step.h>
> =20
>  #include "intel_alpm.h"
>  #include "intel_atomic.h"
> @@ -49,7 +50,6 @@
>  #include "intel_psr.h"
>  #include "intel_psr_regs.h"
>  #include "intel_snps_phy.h"
> -#include "intel_step.h"
>  #include "intel_vblank.h"
>  #include "intel_vdsc.h"
>  #include "intel_vrr.h"
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers=
/gpu/drm/i915/display/skl_universal_plane.c
> index 677f1339b7f8..91e2950c3741 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -8,6 +8,7 @@
>  #include <drm/drm_damage_helper.h>
>  #include <drm/drm_fourcc.h>
>  #include <drm/drm_print.h>
> +#include <drm/intel/step.h>
> =20
>  #include "intel_bo.h"
>  #include "intel_color.h"
> @@ -24,7 +25,6 @@
>  #include "intel_plane.h"
>  #include "intel_psr.h"
>  #include "intel_psr_regs.h"
> -#include "intel_step.h"
>  #include "skl_scaler.h"
>  #include "skl_universal_plane.h"
>  #include "skl_universal_plane_regs.h"
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_step.h b/driver=
s/gpu/drm/xe/compat-i915-headers/intel_step.h
> deleted file mode 100644
> index cb55a659856b..000000000000
> --- a/drivers/gpu/drm/xe/compat-i915-headers/intel_step.h
> +++ /dev/null
> @@ -1,11 +0,0 @@
> -/* SPDX-License-Identifier: MIT */
> -/*
> - * Copyright =C2=A9 2023 Intel Corporation
> - */
> -
> -#ifndef __INTEL_STEP_H__
> -#define __INTEL_STEP_H__
> -
> -#include <drm/intel/step.h>
> -
> -#endif /* __INTEL_STEP_H__ */
