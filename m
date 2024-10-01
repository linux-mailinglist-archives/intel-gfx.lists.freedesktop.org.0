Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A69D98BBC1
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2024 14:02:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3DB010E183;
	Tue,  1 Oct 2024 12:02:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FLILkEDN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1773C10E154;
 Tue,  1 Oct 2024 12:02:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727784149; x=1759320149;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=AoI1sQiTjWPVNmtPceslM3JGwi73Y0gaDb15s17KLcU=;
 b=FLILkEDNzHQ7Tz0iHUhCQUCA6MgkviDCTK1UEWLd3YAXfHyw2dzmLxJl
 4aMjHVYd6uPUQVRhA5olqwNaC3N1Qq/Qu7XpKmq4/DRMcUOXhEdGpLEwL
 C44wpk5P+kFCwnG/GjRoe/n+e0QnDvdJzY2BzCYoFNjknw+qG/m0mJ+Hh
 sId18OvZqzvwSjsXuHE2YG3VyCdNdTC8bFKcFwKGTSyQK+olDtFxUmmQW
 n7AcKyU1jpC2wWcsM0Fg35lhaA1ZowEaRjIggmAfl6YTC3MagCrDlcsiP
 hdqUCzFc2CN3dsOOtshc+0GKOzNLnokdVdtj9+2VJh9dOoMFE6y9GpNss g==;
X-CSE-ConnectionGUID: 3VUKvjoHS8ehppCeegLZng==
X-CSE-MsgGUID: RgwhZ2FvRjGj3lFgVZPyvA==
X-IronPort-AV: E=McAfee;i="6700,10204,11212"; a="37589966"
X-IronPort-AV: E=Sophos;i="6.11,167,1725346800"; d="scan'208";a="37589966"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2024 05:02:28 -0700
X-CSE-ConnectionGUID: ERScgVU4Rqukp+Dk7Xt7Wg==
X-CSE-MsgGUID: 2LCCtC/LTTCuyLACzkUgKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,167,1725346800"; d="scan'208";a="73302136"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.188])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2024 05:02:27 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: Re: [PATCH 03/13] drm/i915/display: Add macro HAS_ULTRAJOINER()
In-Reply-To: <20240930163549.416410-4-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240930163549.416410-1-ankit.k.nautiyal@intel.com>
 <20240930163549.416410-4-ankit.k.nautiyal@intel.com>
Date: Tue, 01 Oct 2024 15:02:12 +0300
Message-ID: <87ldz8uj3v.fsf@intel.com>
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

On Mon, 30 Sep 2024, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> Add macro to check if platform supports Ultrajoiner.
>
> v2:
> -Use check for DISPLAY_VER >=3D 20, and add bmg as a special case. (Ville)
> -Add check for HAS_DSC. (Ville)
>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_device.h | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/driver=
s/gpu/drm/i915/display/intel_display_device.h
> index 6a5bee59e6aa..220cca6333ee 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -154,6 +154,9 @@ enum intel_display_subplatform {
>  #define HAS_TRANSCODER(i915, trans)	((DISPLAY_RUNTIME_INFO(i915)->cpu_tr=
anscoder_mask & \
>  					  BIT(trans)) !=3D 0)
>  #define HAS_UNCOMPRESSED_JOINER(i915)	(DISPLAY_VER(i915) >=3D 13)
> +#define HAS_ULTRAJOINER(i915)		((DISPLAY_VER(i915) >=3D 20 || \
> +					  (IS_DGFX(i915) && DISPLAY_VER(i915) =3D=3D 14)) && \

Do we need to depend on IS_DGFX() here?

BR,
Jani.

> +					 HAS_DSC(i915))
>  #define HAS_VRR(i915)			(DISPLAY_VER(i915) >=3D 11)
>  #define HAS_AS_SDP(i915)		(DISPLAY_VER(i915) >=3D 13)
>  #define HAS_CMRR(i915)			(DISPLAY_VER(i915) >=3D 20)

--=20
Jani Nikula, Intel
