Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4NUQEeqp2GkhgggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 09:42:34 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C69293D37CA
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 09:42:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22EAA10E8DF;
	Fri, 10 Apr 2026 07:42:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N2IpB8c1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BBD910E8D5;
 Fri, 10 Apr 2026 07:42:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775806951; x=1807342951;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=mYmmxW/EXWMkV6GRyFsuPs4Gdj3Gk5+dq9yVdSF0KG4=;
 b=N2IpB8c1rkCCnaEHlz6d95e7YLXFzwE2u3XAX7OINxP2tRYm5NwJGN7I
 MEoEQkBDyLGTPHUwJTURFSxM682EMLnF1tizwKrElghzrBQbI9CnRbCUh
 PpQ0mrawBgLd6MIcLMEk8yStu80XKPJD5sj0VNMDg5EKTZaD3aXI9DCh+
 R2a1Zciaurb2Kk3wZ8dfDfjTrcBEQCI6qfRpp7p0et5N6lnFGjgHICJDG
 8B7qMK6fBelb05Ews5wXQPGSkyEK/rNa5hY8JpZd3D0H09vTauezCfsol
 TMH7g2K7QpKM4Of+JHzdluvc08L4o72f2rdWJ62bANSEJ9v5TIEZx0MJc g==;
X-CSE-ConnectionGUID: botGb0utS8O3MlP14kTkFQ==
X-CSE-MsgGUID: a8SZBR2LSrW/dQ4E3hpooA==
X-IronPort-AV: E=McAfee;i="6800,10657,11754"; a="80710531"
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="80710531"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 00:42:30 -0700
X-CSE-ConnectionGUID: bTI+kpraTQmI34qv1NcZQQ==
X-CSE-MsgGUID: HOcXLNbNRBeegXJbEcM2hg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="266985436"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.110])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 00:42:26 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, Jouni =?utf-8?Q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>
Subject: Re: [PATCH 4/4] drm/i915/reset: Add "display_reset_count" debugfs file
In-Reply-To: <20260410073500.32308-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260410073500.32308-1-ville.syrjala@linux.intel.com>
 <20260410073500.32308-5-ville.syrjala@linux.intel.com>
Date: Fri, 10 Apr 2026 10:42:23 +0300
Message-ID: <b059bb9ef0df9a2ab98ee9e4f900f8e6e3e82e57@intel.com>
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: C69293D37CA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 10 Apr 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Expose the number of display resets performed in a new
> "display_reset_count" debugfs file. kms_busy can use this to
> confirm that the kernel actually took the full display reset path.
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_core.h    |  4 ++++
>  drivers/gpu/drm/i915/display/intel_display_debugfs.c |  2 ++
>  drivers/gpu/drm/i915/display/intel_display_reset.c   | 10 ++++++++++
>  drivers/gpu/drm/i915/display/intel_display_reset.h   |  2 ++
>  drivers/gpu/drm/xe/Makefile                          |  1 +
>  5 files changed, 19 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/=
gpu/drm/i915/display/intel_display_core.h
> index 9e77003addd0..38535d1056d1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -556,6 +556,10 @@ struct intel_display {
>  		unsigned long mask;
>  	} quirks;
>=20=20
> +	struct {
> +		u32 count;
> +	} reset;
> +
>  	struct {
>  		/* restore state for suspend/resume and display reset */
>  		struct drm_atomic_state *modeset_state;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drive=
rs/gpu/drm/i915/display/intel_display_debugfs.c
> index f244a2b5d139..81bef000a4e3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -27,6 +27,7 @@
>  #include "intel_display_power.h"
>  #include "intel_display_power_well.h"
>  #include "intel_display_regs.h"
> +#include "intel_display_reset.h"
>  #include "intel_display_rpm.h"
>  #include "intel_display_types.h"
>  #include "intel_dmc.h"
> @@ -838,6 +839,7 @@ void intel_display_debugfs_register(struct intel_disp=
lay *display)
>=20=20
>  	intel_bios_debugfs_register(display);
>  	intel_cdclk_debugfs_register(display);
> +	intel_display_reset_debugfs_register(display);
>  	intel_dmc_debugfs_register(display);
>  	intel_dp_test_debugfs_register(display);
>  	intel_fbc_debugfs_register(display);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.c b/drivers=
/gpu/drm/i915/display/intel_display_reset.c
> index ca15dc18ef0f..79c2e77ca137 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_reset.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_reset.c
> @@ -3,6 +3,8 @@
>   * Copyright =C2=A9 2023 Intel Corporation
>   */
>=20=20
> +#include <linux/debugfs.h>
> +
>  #include <drm/drm_atomic_helper.h>
>  #include <drm/drm_print.h>
>=20=20
> @@ -66,6 +68,7 @@ void intel_display_reset_prepare(struct intel_display *=
display)
>  		return;
>  	}
>=20=20
> +	display->reset.count++;
>  	display->restore.modeset_state =3D state;
>  	state->acquire_ctx =3D ctx;
>  }
> @@ -114,3 +117,10 @@ void intel_display_reset_finish(struct intel_display=
 *display, bool test_only)
>  	drm_modeset_acquire_fini(ctx);
>  	mutex_unlock(&display->drm->mode_config.mutex);
>  }
> +
> +void intel_display_reset_debugfs_register(struct intel_display *display)
> +{
> +	debugfs_create_u32("display_reset_count", 0400,
> +			   display->drm->debugfs_root,
> +			   &display->reset.count);

I'm wondering about the names of the debugfs files. We've used the i915_
prefix so far, but it's obviously misleading nowadays. I've started
using intel_ in some places.

I primarily worry about the potential clash with drm core debugfs files,
which leads to failures to create the file, and clash with other
drivers, where the files are created all right, but the contents differ
driver to driver.

*shrug*

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.h b/drivers=
/gpu/drm/i915/display/intel_display_reset.h
> index a8aa7729d33f..b88c330a3441 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_reset.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_reset.h
> @@ -15,4 +15,6 @@ bool intel_display_reset_test(struct intel_display *dis=
play);
>  void intel_display_reset_prepare(struct intel_display *display);
>  void intel_display_reset_finish(struct intel_display *display, bool test=
_only);
>=20=20
> +void intel_display_reset_debugfs_register(struct intel_display *display);
> +
>  #endif /* __INTEL_RESET_H__ */
> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> index 110fef511fe2..1a85dfe457f0 100644
> --- a/drivers/gpu/drm/xe/Makefile
> +++ b/drivers/gpu/drm/xe/Makefile
> @@ -262,6 +262,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) +=3D \
>  	i915-display/intel_display_power.o \
>  	i915-display/intel_display_power_map.o \
>  	i915-display/intel_display_power_well.o \
> +	i915-display/intel_display_reset.o \
>  	i915-display/intel_display_rpm.o \
>  	i915-display/intel_display_rps.o \
>  	i915-display/intel_display_trace.o \

--=20
Jani Nikula, Intel
