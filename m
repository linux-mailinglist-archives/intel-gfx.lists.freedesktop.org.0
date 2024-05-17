Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA64C8C8964
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2024 17:33:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6685510E240;
	Fri, 17 May 2024 15:33:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eGNTK39e";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16C1C10E240
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2024 15:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715960033; x=1747496033;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=lMP1feXYMayAvnde6jmhVroF00yspiNiY36XNC7vGOA=;
 b=eGNTK39erkn4ViSi9d0FOkU01nCWBOgcAZfg3gGdvpUxbmwd+11WGlTK
 U71tj88Zdid5n0FdS78GLNgkwJYFh4X8m07W+86eKyHFZJBF++84ilF7L
 QODmCjP25YwWPkEEY8WaKL2ZxnTSX6xX8tspQMncsq8Lide0w87MJhn10
 RzshqiPpC2XyAghEoArZ8NGUdrZTAcqwuI3tLemXt1EOfvfkyVefnYRCc
 b56TUCSQjHFtkoDpKkNxtNC4dx2Htpf9pGXfE3W543Aj4SnBa7iba8iJp
 NRvjFCuCom3SENAbxUGjX7IVG4bZp1cqJyjv/rmknYgy3pz6ZNWby1W5t w==;
X-CSE-ConnectionGUID: MsslTjLPSOqZEJwiLbiDhg==
X-CSE-MsgGUID: QQzZZh/uQWmsNccDK4iGLg==
X-IronPort-AV: E=McAfee;i="6600,9927,11075"; a="11990842"
X-IronPort-AV: E=Sophos;i="6.08,168,1712646000"; d="scan'208";a="11990842"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2024 08:33:52 -0700
X-CSE-ConnectionGUID: fIRZgwbPQkSClSrxGio7uA==
X-CSE-MsgGUID: M1AOxDzOTnqsHN7WsHtGKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,168,1712646000"; d="scan'208";a="36628675"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.32])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2024 08:33:51 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 01/13] drm/i915: Add skl+ plane name aliases to enum
 plane_id
In-Reply-To: <20240516135622.3498-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240516135622.3498-1-ville.syrjala@linux.intel.com>
 <20240516135622.3498-2-ville.syrjala@linux.intel.com>
Date: Fri, 17 May 2024 18:33:46 +0300
Message-ID: <87jzjsa1wl.fsf@intel.com>
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

On Thu, 16 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Using PLANE_PRIMARY + PLANE_SPRITE? on skl+ results in a bunch
> of unnecessary head scratching. Add aliases using the skl+ plane
> names.
> And for pre-skl we only need to keep PRIMARY,SPRITE0,SPRITE1
> as we only ever have 0-2 sprites per pipe on those platforms.

Should these be changed too?

- intel_plane_set_ckey()
- for_each_plane_id_on_crtc()

I'm not sure. But there's one real issue:

> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers=
/gpu/drm/i915/display/skl_universal_plane.c
> index 32d10e62b2b9..d0bfee2ca643 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -238,9 +238,9 @@ int skl_format_to_fourcc(int format, bool rgb_order, =
bool alpha)
>  static u8 icl_nv12_y_plane_mask(struct drm_i915_private *i915)
>  {
>  	if (DISPLAY_VER(i915) >=3D 13 || HAS_D12_PLANE_MINIMIZATION(i915))
> -		return BIT(PLANE_SPRITE2) | BIT(PLANE_SPRITE3);
> +		return BIT(PLANE_6) | BIT(PLANE_7);
>  	else
> -		return BIT(PLANE_SPRITE4) | BIT(PLANE_SPRITE5);
> +		return BIT(PLANE_4) | BIT(PLANE_5);

The if branches got swapped?

BR,
Jani.


--=20
Jani Nikula, Intel
