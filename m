Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBA8B9B622C
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 12:47:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5255E10E78D;
	Wed, 30 Oct 2024 11:46:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B0zcVVsA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCA0010E78D
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2024 11:46:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730288817; x=1761824817;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=6B94MYFOQOi9oqBwYYChbu5XT/brNWDtRdoSCYjoD+E=;
 b=B0zcVVsA9dEn/OPpdxI6bpclIMqRQd+5tHFwopv/QNxoVRJWgThuDm7o
 fK4f4rMHxydTj/LlkcmEjCVwCddBOGKAjWQaZa37Jl/U0yrOxYcJ6XYmQ
 UfqWKZ2hknf0t3/jgm5YaRVBpMwi/DNOwSmysnmB1uPhdSaqr6+sMf0T8
 TklWalbELnjPbGNjiTXWzlbXznxx45WmUwjvz671cj3APdHMXc/kf01G7
 Xs9bBeXM7nV01HRsQ/w255XivTkPoHXPmIulDHurgX4yzmxeeWx2es8Ag
 +bVdKE845P/H91cOfkuT72mnr7uNdlKfFs9p3y1zk1v6ra+0E71Eh74dD g==;
X-CSE-ConnectionGUID: ikRjahCgQlabITBqPBnWMw==
X-CSE-MsgGUID: TAPo9SYXRAiREtRuf7iLaA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="40516231"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="40516231"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 04:46:57 -0700
X-CSE-ConnectionGUID: k2/yyC9hQRayAfMZC4tskQ==
X-CSE-MsgGUID: nP97CZBLS0ScSSFg3Vi27Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="87066572"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.122])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 04:46:56 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 2/9] drm/i915/scaler: Remove redudant junk from
 skl_scaler.h
In-Reply-To: <20241029211030.13255-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241029211030.13255-1-ville.syrjala@linux.intel.com>
 <20241029211030.13255-3-ville.syrjala@linux.intel.com>
Date: Wed, 30 Oct 2024 13:46:53 +0200
Message-ID: <87v7x9lsnm.fsf@intel.com>
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

On Tue, 29 Oct 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Nuke some redundant includes and forward declarations from
> skl_scaler.h.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/skl_scaler.h | 4 ----
>  1 file changed, 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.h b/drivers/gpu/drm/=
i915/display/skl_scaler.h
> index 7a9ccdfd1cbb..73fa59da09f9 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.h
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.h
> @@ -5,10 +5,6 @@
>  #ifndef INTEL_SCALER_H
>  #define INTEL_SCALER_H
>=20=20
> -#include <linux/types.h>
> -
> -enum drm_scaling_filter;
> -enum pipe;
>  struct drm_i915_private;
>  struct intel_crtc;
>  struct intel_crtc_state;

--=20
Jani Nikula, Intel
