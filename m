Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C20387FBAD
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Mar 2024 11:21:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7417510F980;
	Tue, 19 Mar 2024 10:21:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Lm9ngDmc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53C4610F990
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Mar 2024 10:21:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710843664; x=1742379664;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=DC+VtjdRZNdTlbeX6ZcDyuWuVtG1ohPRLo+nd6RrXJk=;
 b=Lm9ngDmcB5zd3PX84vUsuG5mBrCD05yOulZdMuvaAwqrmJ7HUllyh0kH
 YO5JZGyXvtS1JGLwKfXBSVPUvh9oUoYzvyTgAeC1Hod1eGUNE6mIIyL8v
 Ujp22MfoGUnudbzAXGV8Ro5dX+I/wy0umfFt9FVobp1eeHtVG0hfLfEcM
 y+73rQPWga0DCqxpLLTf4fJE11DhkwzoxmXM1O1H/2HnFrEJ4a2Bbj3Jr
 Fb+0bwisoUCAqui/kXKrRfgHCnZsnub8UbmvZnrujpa9K0ZzXs82trw+2
 UDEpES5U002l+XpRjHMe8qVFPxyoD+8j4ICAT8MlIgxjXFqS9moddMMtD A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11017"; a="8644556"
X-IronPort-AV: E=Sophos;i="6.07,136,1708416000"; 
   d="scan'208";a="8644556"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2024 03:21:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,136,1708416000"; d="scan'208";a="13662389"
Received: from rcritchl-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.36.139])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2024 03:21:01 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 2/2] drm/i915/bios: Use the platform's port_mask when
 there is no VBT
In-Reply-To: <20240319092443.15769-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240319092443.15769-1-ville.syrjala@linux.intel.com>
 <20240319092443.15769-2-ville.syrjala@linux.intel.com>
Date: Tue, 19 Mar 2024 12:20:58 +0200
Message-ID: <87h6h2o73p.fsf@intel.com>
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

On Tue, 19 Mar 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> When we have no VBT we currently assume ports A-F are
> all pontially valid for every platform. That is nonsense.
> Grab the bitmask of valid ports from the runtime info
> instead.
>
> Although the defaults we actually fill here look semi-sensible
> only for hsw-skl era hardware. Dunno if we should try to do
> something more appropriate here for other platforms,
> or just try to nuke the whole thing?

Seems like doing something appropriate is an endless task. We should
never have added the defaults, but here we are. Can we remove them for
newer platforms? There's only one way to find out...

Commit 828ccb31cf41 ("drm/i915/icl: Add TypeC ports only if VBT is
present") fails to mention if this was to address a real issue on ICL
without VBT, or just playing it safe.

> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index c13a98431a7b..2abd2d7ceda2 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2890,9 +2890,8 @@ init_vbt_panel_defaults(struct intel_panel *panel)
>  static void
>  init_vbt_missing_defaults(struct drm_i915_private *i915)
>  {
> +	unsigned int ports =3D DISPLAY_RUNTIME_INFO(i915)->port_mask;
>  	enum port port;
> -	int ports =3D BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) |
> -		    BIT(PORT_D) | BIT(PORT_E) | BIT(PORT_F);

I was wondering why we don't just

-#define for_each_port(__port) \
-	for ((__port) =3D PORT_A; (__port) < I915_MAX_PORTS; (__port)++)
+#define for_each_port(__i915, __port)					\
+	for_each_set_bit(__port, &DISPLAY_RUNTIME_INFO(__i915)->port_mask, sizeof=
(DISPLAY_RUNTIME_INFO(__i915)->port_mask))

but then we have DSI code that relies on it returning PORT_A for DSI.

Ugh. It's all so brittle.

Anyway, the patch is

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>=20=20
>  	if (!HAS_DDI(i915) && !IS_CHERRYVIEW(i915))
>  		return;

--=20
Jani Nikula, Intel
