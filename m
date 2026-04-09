Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SK9NKSFh12keNQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 10:19:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 567533C7AB0
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 10:19:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58A5210E794;
	Thu,  9 Apr 2026 08:19:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dAmPCgZI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 408BC10E75B;
 Thu,  9 Apr 2026 08:19:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775722782; x=1807258782;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=JR0GVFDbGJ0G9dYjZrpnwHo7xjm9Nm7FfOJqqUlUImo=;
 b=dAmPCgZIxbMt3w4xJQlpDPlGpadcfugi13T3gU/914dXZdpLf5c/vnnC
 iIeF3+3QYWOqaPp3DHjYsl6inCvn6GAvejSN+FY/rTWblONUE4lDVZGhO
 8ykTJIsIBHdaCjNLw+prl13ilZB8yW/jhn3GlH2oThyNbI6wVBpR1uiJI
 Bwa9ItdUJMdIGwHSeOZpBVpbiEc1EXrFB8MMU7dxGGAwXvsKY0CAbkAyy
 sjaqclczUDDADRfW2u5l7ji2SbHeSYLn5JCUbOlVstQy46Fj+5e48IUqG
 IPud9SiwfQfyMLf8DrE2yOp+9eAuMTDy/NseSQxvfAGPU9bjj8EUZf2aH g==;
X-CSE-ConnectionGUID: uCObA4y3TYCK+nhaz8cjKQ==
X-CSE-MsgGUID: 0GUDIQcTSLu4qRQig8Lurw==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="99348618"
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="99348618"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 01:19:41 -0700
X-CSE-ConnectionGUID: WNr0kcRcQ2i9g22TpOg7jQ==
X-CSE-MsgGUID: N/jIsO72QUS7bPOtCwibvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="227848179"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.62])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 01:19:38 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org, Simona
 Vetter <simona.vetter@ffwll.ch>, Christian =?utf-8?Q?K=C3=B6nig?=
 <christian.koenig@amd.com>, Jouni =?utf-8?Q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, Maarten
 Lankhorst <maarten.lankhorst@linux.intel.com>
Subject: Re: [PATCH 4/6] drm/xe/display: Add init_clock_gating.h stubs
In-Reply-To: <20260408233458.22666-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260408233458.22666-1-ville.syrjala@linux.intel.com>
 <20260408233458.22666-5-ville.syrjala@linux.intel.com>
Date: Thu, 09 Apr 2026 11:19:35 +0300
Message-ID: <18e62e1e87137e08a4101a0f661e2b33e99d42d7@intel.com>
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,ffwll.ch:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 567533C7AB0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 09 Apr 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Add static inline stubs for init_clock_gating.h functions
> so that we don't need ifdefs in the actual code. We already
> have one in intel_display_power.c, and now I need to bring
> over intel_display_reset.c.
>
> Cc: Simona Vetter <simona.vetter@ffwll.ch>
> Cc: Christian K=C3=B6nig <christian.koenig@amd.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Hopefully short-lived,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c     |  2 --
>  .../drm/xe/compat-i915-headers/intel_clock_gating.h    | 10 +++++++++-
>  2 files changed, 9 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers=
/gpu/drm/i915/display/intel_display_power.c
> index 4091b7c4914f..5ba3969e9ed6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1420,9 +1420,7 @@ static void hsw_disable_pc8(struct intel_display *d=
isplay)
>  	intel_init_pch_refclk(display);
>=20=20
>  	/* Many display registers don't survive PC8+ */
> -#ifdef I915 /* FIXME */
>  	intel_clock_gating_init(display->drm);
> -#endif
>  }
>=20=20
>  static void intel_pch_reset_handshake(struct intel_display *display,
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_clock_gating.h =
b/drivers/gpu/drm/xe/compat-i915-headers/intel_clock_gating.h
> index ce986f0e8f38..552975a30ba2 100644
> --- a/drivers/gpu/drm/xe/compat-i915-headers/intel_clock_gating.h
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_clock_gating.h
> @@ -3,4 +3,12 @@
>   * Copyright =C2=A9 2023 Intel Corporation
>   */
>=20=20
> -#include "../../i915/intel_clock_gating.h"
> +#ifndef __INTEL_CLOCK_GATING_H__
> +#define __INTEL_CLOCK_GATING_H__
> +
> +struct drm_device;
> +
> +static inline void intel_clock_gating_init(struct drm_device *drm) {}
> +static inline void intel_clock_gating_hooks_init(struct drm_device *drm)=
 {}
> +
> +#endif /* __INTEL_CLOCK_GATING_H__ */

--=20
Jani Nikula, Intel
