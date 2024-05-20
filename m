Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADCB08C9BD8
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 13:03:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 603E110E5F7;
	Mon, 20 May 2024 11:03:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VQfP33Mz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4F9310E58E
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2024 11:03:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716203032; x=1747739032;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=7DnuKru6S9LfPHxjb7MNUoVoNn7fzKwxtSMA27iEclA=;
 b=VQfP33Mz1yKxExQp81+TrOM/zr2CoVzRbh2BwzszZ3FXFkQgzAV+KMcx
 Ai/zx7qzdOr623Iq7kvaL+GVfd7vJ6jhlBNBt2cNgX1KfZ5khhdObb8ve
 ldEcY8Rn8MhxeLjXYf3GZapggpihB1iGaJ7w0nyLBiIUwOsrAu/5ICsLe
 /U/ucQw0ggpmMGZRhK/yvwsb20GrI++iJOti2PouRvSkt2Vg4MGFk+bdV
 XFZsR+umNW89PHFcfJhbzk77suM1ioksP9nexEPb1XMmLT5eluB79Jlta
 IpkDKPwJjHNIuKgN1omyqbWXnlkcJwM39vioLRWpMKME65kEUdIASwBSG A==;
X-CSE-ConnectionGUID: Qz/vbXTrTf6HNAJD0lRiYg==
X-CSE-MsgGUID: 4QvfOdpMQ1aiTjPRDtnhRg==
X-IronPort-AV: E=McAfee;i="6600,9927,11077"; a="12166668"
X-IronPort-AV: E=Sophos;i="6.08,174,1712646000"; d="scan'208";a="12166668"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 04:03:51 -0700
X-CSE-ConnectionGUID: 97xeDxtySJqYvoyckRT8zg==
X-CSE-MsgGUID: Cg5OehkPRL2nEtJYxsOnFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,174,1712646000"; d="scan'208";a="32358949"
Received: from unknown (HELO localhost) ([10.245.246.99])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 04:03:49 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 0/7] drm/i915: DSC stuff
In-Reply-To: <20240517145356.26103-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240517145356.26103-1-ville.syrjala@linux.intel.com>
Date: Mon, 20 May 2024 14:03:46 +0300
Message-ID: <87a5kku4ml.fsf@intel.com>
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

On Fri, 17 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Respect the VBT's edp_disable_dsc bit, and do a bunch
> of refactoring around checking for DSC support.
>
> Also threw in a bonus cleanup to intel_dp_has_audio()
> that caught my eye.

The dropping of const here and there sticks out a bit, but with that
explained or fixed, the series is

Reviewed-by: Jani Nikula <jani.nikula@intel.com>



>
> Ville Syrj=C3=A4l=C3=A4 (7):
>   drm/i915: Drop redundant dsc_decompression_aux check
>   drm/i915: Extract intel_dp_has_dsc()
>   drm/i915: Handle MST in intel_dp_has_dsc()
>   drm/i915: Use intel_dp_has_dsc() during .compute_config()
>   drm/i915: Reuse intel_dp_supports_dsc() for MST
>   drm/i915: Utilize edp_disable_dsc from VBT
>   drm/i915: Remove bogus MST check in intel_dp_has_audio()
>
>  drivers/gpu/drm/i915/display/intel_bios.c     |  4 ++
>  .../drm/i915/display/intel_display_types.h    |  1 +
>  drivers/gpu/drm/i915/display/intel_dp.c       | 42 +++++++++++++------
>  drivers/gpu/drm/i915/display/intel_dp.h       |  4 ++
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   | 23 +++-------
>  5 files changed, 44 insertions(+), 30 deletions(-)

--=20
Jani Nikula, Intel
