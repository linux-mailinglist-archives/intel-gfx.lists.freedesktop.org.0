Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93EC098D160
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2024 12:35:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1E7810E332;
	Wed,  2 Oct 2024 10:34:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kHVA58cz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D336210E332
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2024 10:34:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727865298; x=1759401298;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=hdpyDPPbqkoxLARP3SWKMg81sUybuofQuuSzqp9p2Ps=;
 b=kHVA58czI2i8MILUkV22UH5REaui64S5o1Bs41n7D8PtFdeH8flCp/Pj
 dKyd0YlhLQRHOXp2Bvl9UNIuh9fZRuP7dHEdjdLQSTeyVFwB53Z1JwFYx
 vV1PbaJ+vWhB9rWjT1FVdPQuyh1eozPTLQJEhH4nDkik5QftcB1VhltQj
 KCN2NsZUGyCQmCuuy3NUq7e5J3Y2LivvknkpvwKbmrpfvAqfTAnbpyM1A
 l2eBVnrtVGpAqt47/YRD7yjwvBBAyIo4v4h2D5FWDz9hwOokmYOIRs659
 +HlRuZGtDJ9imSWGg5XQ0jlTKmMuSvpxIzuJTL93qU+v/PlxGupfCaGqu g==;
X-CSE-ConnectionGUID: vY24JEfSROikGPKht4WO6Q==
X-CSE-MsgGUID: kW5ERU9jSZKXKnuyC9C0Vg==
X-IronPort-AV: E=McAfee;i="6700,10204,11212"; a="26897884"
X-IronPort-AV: E=Sophos;i="6.11,171,1725346800"; d="scan'208";a="26897884"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2024 03:34:58 -0700
X-CSE-ConnectionGUID: 5zOu1UjzTt6Yj4K8wnCUVg==
X-CSE-MsgGUID: 9FrGHcpGTz+T2MHp+9jbOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,171,1725346800"; d="scan'208";a="73985497"
Received: from lbogdanm-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.49])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2024 03:34:57 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 1/4] drm/i915/irq: Nuke stale comments
In-Reply-To: <20241001195803.3371-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241001195803.3371-1-ville.syrjala@linux.intel.com>
 <20241001195803.3371-2-ville.syrjala@linux.intel.com>
Date: Wed, 02 Oct 2024 13:34:53 +0300
Message-ID: <87ttduu71u.fsf@intel.com>
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

On Tue, 01 Oct 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Remove the tall tales about getting passed pipe indices into
> the .vblank_{enable,disable}() hooks. This hasn't been true since
> commit 08fa8fd0faa5 ("drm/i915: Switch to per-crtc vblank vfuncs").
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_irq.c | 6 ------
>  1 file changed, 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/g=
pu/drm/i915/display/intel_display_irq.c
> index 8c548ee56c12..0ea1fcc61dde 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -1259,9 +1259,6 @@ void gen11_display_irq_handler(struct drm_i915_priv=
ate *i915)
>  	enable_rpm_wakeref_asserts(&i915->runtime_pm);
>  }
>=20=20
> -/* Called from drm generic code, passed 'crtc' which
> - * we use as a pipe index
> - */
>  int i8xx_enable_vblank(struct drm_crtc *crtc)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->dev);
> @@ -1394,9 +1391,6 @@ int bdw_enable_vblank(struct drm_crtc *_crtc)
>  	return 0;
>  }
>=20=20
> -/* Called from drm generic code, passed 'crtc' which
> - * we use as a pipe index
> - */
>  void i8xx_disable_vblank(struct drm_crtc *crtc)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->dev);

--=20
Jani Nikula, Intel
