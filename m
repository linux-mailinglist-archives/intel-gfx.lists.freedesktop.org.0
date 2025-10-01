Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51740BAF738
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 09:40:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D841310E69A;
	Wed,  1 Oct 2025 07:40:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W9dEne/a";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79EAD10E693;
 Wed,  1 Oct 2025 07:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759304453; x=1790840453;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=lXcjVXl8ERMTvL1DHw++dgART03pTpzOcxWZJx2XoSg=;
 b=W9dEne/a9YCVoLYDoCCrD0ybJHBiDlEug92n1fxo0rHX+d87n+SzEhbd
 /oxLLli+WUXUtcdyIgo+3Ura5GnbxZsoz+V6dZSKOufqJaqJ7IUalpcBQ
 9phzMpd9JdGJplygTj0I/OmuXippJh4JCNP1sq0sInUZYv86JmFJZ+6sr
 VD4C28Fq4wPujwzrnFx6ngJofkNM7UqwjmlNAi0MxQVE0AJktRmRBUFcT
 N0q5d7uGO81KBBDHKBREg36g5CO426KhUPglij3pdySiZLKZKZNa7TbBG
 iWXNP9O+p5j5CqKGgOABzRrCvb+kffc2F2HcXVqyvcvViFCysPm/3ueJb g==;
X-CSE-ConnectionGUID: r9hSHSvdQGu9QDE3bGICJA==
X-CSE-MsgGUID: t2n1HLnPSYiHOPS4UdtHhA==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="61280223"
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="61280223"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 00:40:53 -0700
X-CSE-ConnectionGUID: 5oOKmsmyRsOgNoRHWI21eQ==
X-CSE-MsgGUID: 5WIYD1X5QJ+QTJMWFpen8g==
X-ExtLoop1: 1
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.217])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 00:40:50 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Khaled Almahallawy <khaled.almahallawy@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Khaled Almahallawy <khaled.almahallawy@intel.com>, Ville
 =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, Imre
 Deak <imre.deak@intel.com>
Subject: Re: [PATCH v2] drm/i915/display: Extend i915_display_info with
 Type-C port details
In-Reply-To: <20250930221918.2224702-1-khaled.almahallawy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250930221918.2224702-1-khaled.almahallawy@intel.com>
Date: Wed, 01 Oct 2025 10:40:47 +0300
Message-ID: <05a4153c7159555bccd403cdbae919a822a8ac54@intel.com>
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

On Tue, 30 Sep 2025, Khaled Almahallawy <khaled.almahallawy@intel.com> wrot=
e:
> Expose key Type-C port data in i915_display_info to make it easier to
> understand the port configuration and active mode, especially whether
> the link is in DP-Alt or TBT-Alt, without having to scan kernel logs.
>
> Tested in DP-Alt, TBT-Alt, SST, and MST.
>
> Expected output:
>
> [CONNECTOR:290:DP-2]: status: connected
> 	TC Port: E/TC#2 mode: tbt-alt pin assignment: - max lanes: 4
> 	physical dimensions: 600x340mm
> ...
> [CONNECTOR:263:DP-5]: status: connected
> 	TC Port: G/TC#4 mode: dp-alt pin assignment: C max lanes: 4
> 	physical dimensions: 610x350mm
>
> v2: Use drm_printer (Ville)
>     Lock/Unlock around the printf (Imre)
>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_debugfs.c   |  5 +++++
>  drivers/gpu/drm/i915/display/intel_tc.c            | 14 ++++++++++++--
>  drivers/gpu/drm/i915/display/intel_tc.h            |  3 +++
>  3 files changed, 20 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drive=
rs/gpu/drm/i915/display/intel_display_debugfs.c
> index 10dddec3796f..5f5f1c50adfa 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -47,6 +47,7 @@
>  #include "intel_psr_regs.h"
>  #include "intel_vdsc.h"
>  #include "intel_wm.h"
> +#include "intel_tc.h"
>=20=20
>  static struct intel_display *node_to_intel_display(struct drm_info_node =
*node)
>  {
> @@ -246,6 +247,7 @@ static void intel_connector_info(struct seq_file *m,
>  {
>  	struct intel_connector *intel_connector =3D to_intel_connector(connecto=
r);
>  	const struct drm_display_mode *mode;
> +	struct drm_printer p =3D drm_seq_file_printer(m);
>=20=20
>  	seq_printf(m, "[CONNECTOR:%d:%s]: status: %s\n",
>  		   connector->base.id, connector->name,
> @@ -254,6 +256,9 @@ static void intel_connector_info(struct seq_file *m,
>  	if (connector->status =3D=3D connector_status_disconnected)
>  		return;
>=20=20
> +	if (intel_encoder_is_tc(intel_attached_encoder(intel_connector)))
> +		intel_tc_info(&p, intel_attached_dig_port(intel_connector));
> +
>  	seq_printf(m, "\tphysical dimensions: %dx%dmm\n",
>  		   connector->display_info.width_mm,
>  		   connector->display_info.height_mm);
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i9=
15/display/intel_tc.c
> index c4a5601c5107..04946b7b8662 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -5,8 +5,6 @@
>=20=20
>  #include <linux/iopoll.h>
>=20=20
> -#include <drm/drm_print.h>
> -
>  #include "i915_reg.h"
>  #include "i915_utils.h"
>  #include "intel_atomic.h"
> @@ -1703,6 +1701,18 @@ void intel_tc_port_sanitize_mode(struct intel_digi=
tal_port *dig_port,
>  	mutex_unlock(&tc->lock);
>  }
>=20=20
> +void intel_tc_info(struct drm_printer *p,  struct intel_digital_port *di=
g_port)
> +{
> +	struct intel_tc_port *tc =3D to_tc_port(dig_port);
> +
> +	mutex_lock(&tc->lock);
> +	drm_printf(p, "\tTC Port: %s mode: %s pin assignment: %c max lanes: %d\=
n", tc->port_name,
> +		   tc_port_mode_name(tc->mode),
> +		   pin_assignment_name(tc->pin_assignment),
> +		   tc->max_lane_count);
> +	mutex_unlock(&tc->lock);
> +}
> +
>  /*
>   * The type-C ports are different because even when they are connected, =
they may
>   * not be available/usable by the graphics driver: see the comment on
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.h b/drivers/gpu/drm/i9=
15/display/intel_tc.h
> index fff8b96e4972..81043829a270 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.h
> +++ b/drivers/gpu/drm/i915/display/intel_tc.h
> @@ -7,6 +7,7 @@
>  #define __INTEL_TC_H__
>=20=20
>  #include <linux/types.h>
> +#include <drm/drm_print.h>

Please don't include headers from headers when a simple forward
declaration will do.

>=20=20
>  struct intel_crtc_state;
>  struct intel_digital_port;
> @@ -113,4 +114,6 @@ void intel_tc_port_cleanup(struct intel_digital_port =
*dig_port);
>=20=20
>  bool intel_tc_cold_requires_aux_pw(struct intel_digital_port *dig_port);
>=20=20
> +void intel_tc_info(struct drm_printer *p,  struct intel_digital_port *di=
g_port);
> +
>  #endif /* __INTEL_TC_H__ */

--=20
Jani Nikula, Intel
