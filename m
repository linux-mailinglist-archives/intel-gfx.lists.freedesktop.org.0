Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D0759A9CAB
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 10:32:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58B5510E61B;
	Tue, 22 Oct 2024 08:32:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="atIPv8l0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D78D310E61B
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2024 08:32:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729585922; x=1761121922;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=BabMJ9LfexN5c9oBPq6x8BXqu2FVAI6lRttj3fSgN7g=;
 b=atIPv8l0P4mjtS4zXUyTNqJI7z3XqGKe2grtwlP+SlcU1hwaKbVSBFiC
 x3ux4Zi9rx/aIH9Wth3uF//6n1CU6vPSNKlrE6UftMOjmlsIp1pKulk30
 fLpqr4Z+7N3CBO3qG/rIrlyNe6rV0FjZfrVxzZRsGMdzM5f8k44goM3o3
 klRY4waA5ILi6eIW8z1Qa6xqYZCRLjBD71X7vo3Ni9L0TEqT78/+0iZ9j
 6wFG68N8kEwc+H9OORHCs2U2fIvLMMcQrW3p73NTL5lnihs0LUAenERd6
 jqrL9NK2rRGORjR9cm1eZqzuHUWoBMf77yskt3XeqeNlqMOGMOpHWDaIY g==;
X-CSE-ConnectionGUID: MQI/H3oWRCifZZ2TEQQIlg==
X-CSE-MsgGUID: EXoMy2/ASWeu1heJzx2/LQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11232"; a="29216819"
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="29216819"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 01:32:01 -0700
X-CSE-ConnectionGUID: d6UjjnR8Rn2RxXLYUwYl7g==
X-CSE-MsgGUID: OMgqeMGVRnSzKXRSrmrgtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="79357614"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.4])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 01:32:00 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 8/9] drm/i915/pfit: Extract intel_pfit.c
In-Reply-To: <20241016143134.26903-9-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241016143134.26903-1-ville.syrjala@linux.intel.com>
 <20241016143134.26903-9-ville.syrjala@linux.intel.com>
Date: Tue, 22 Oct 2024 11:31:57 +0300
Message-ID: <875xpkwnb6.fsf@intel.com>
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

On Wed, 16 Oct 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> diff --git a/drivers/gpu/drm/i915/display/intel_pfit.h b/drivers/gpu/drm/=
i915/display/intel_pfit.h
> new file mode 100644
> index 000000000000..add8d78de2c9
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_pfit.h
> @@ -0,0 +1,15 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright =C2=A9 2024 Intel Corporation
> + */
> +
> +#ifndef __INTEL_PFIT_H__
> +#define __INTEL_PFIT_H__
> +
> +struct drm_connector_state;
> +struct intel_crtc_state;
> +
> +int intel_panel_fitting(struct intel_crtc_state *crtc_state,
> +			const struct drm_connector_state *conn_state);

Nitpick, would be nice to rename this to intel_pfit_something() in
follow-up.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

--=20
Jani Nikula, Intel
