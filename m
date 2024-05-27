Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73F108CFA43
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2024 09:37:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 374C210F3A2;
	Mon, 27 May 2024 07:37:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mSYoNAe/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD67310F3A2
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2024 07:37:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716795469; x=1748331469;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=fZMqPfJqCUg/SlLncVNbmA1qWJZqwal7dr1M/6bJxMA=;
 b=mSYoNAe/C2YRJoRPpElpoGUMyUMkhvpRfgzZY2jW26zT4byS5XYOQsBT
 LKNKKIWn9BFzreMKhK6LBP4KCU+OyrbwH10dMau4CFv4dDOr2U5OvhYxd
 XBVVwrzxuMBegeMlsnouEIMB9vgiFfKMrfEDMHv/IiLUhGXGl6L5tMSk2
 DPiyCbOqTdxHQ3Qbfpi/k3Tomfo7zPvZN0gEqqImimVOunCI3OEVRugQ9
 24q1la6xEguWi/6my18o/wENqQ/FHjoZxXjDn7VasNh7ElsTrmi2TtuBY
 UOTYptIhcB4iQt4JgWhCZ2xnLmeYZauPXiMenwN4DzNH+21mImZh0sUEm w==;
X-CSE-ConnectionGUID: JehA+FQGRpyk9W17dhQAyg==
X-CSE-MsgGUID: gbZDBNrUS++AZ5NtN5A1Kg==
X-IronPort-AV: E=McAfee;i="6600,9927,11084"; a="11710493"
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="11710493"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 00:37:48 -0700
X-CSE-ConnectionGUID: DhpN3/rBQJypK8rNKDyT5Q==
X-CSE-MsgGUID: 4HA9OeD+SEW5kuVnplz+4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="39109090"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.200])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 00:37:47 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915: Fix SEL_FETCH_{SIZE,OFFSET} registers
In-Reply-To: <20240524155000.13358-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240524155000.13358-1-ville.syrjala@linux.intel.com>
Date: Mon, 27 May 2024 10:37:43 +0300
Message-ID: <874jajogc8.fsf@intel.com>
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

On Fri, 24 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Fix up the SEL_FETCH_{SIZE,OFFSET} registers. A classic
> copy-paste fail on my part.
>
> I even had a small test to confirm that the old and new register
> offsets match, but somehow I must have screwed things up when
> running it, and likely just ended up comparing the old defines
> against themselves :/
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Fixes: 4bfa8a140db3 ("drm/i915: Define SEL_FETCH_PLANE registers via PICK=
_EVEN_2RANGES()")
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Ugh. And here I thought I did a pretty thorough job reviewing that
series. :(

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  .../drm/i915/display/skl_universal_plane_regs.h  | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h b/dr=
ivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> index 9904ecc54128..4ddcd7d46bbd 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> @@ -419,10 +419,10 @@
>  #define _SEL_FETCH_PLANE_SIZE_5_B		0x71928
>  #define _SEL_FETCH_PLANE_SIZE_6_B		0x71948
>  #define SEL_FETCH_PLANE_SIZE(pipe, plane)	_MMIO_SEL_FETCH((pipe), (plane=
),\
> -								_SEL_FETCH_PLANE_POS_1_A, _SEL_FETCH_PLANE_POS_1_B, \
> -								_SEL_FETCH_PLANE_POS_2_A, _SEL_FETCH_PLANE_POS_2_B, \
> -								_SEL_FETCH_PLANE_POS_5_A, _SEL_FETCH_PLANE_POS_5_B, \
> -								_SEL_FETCH_PLANE_POS_6_A, _SEL_FETCH_PLANE_POS_6_B)
> +								_SEL_FETCH_PLANE_SIZE_1_A, _SEL_FETCH_PLANE_SIZE_1_B, \
> +								_SEL_FETCH_PLANE_SIZE_2_A, _SEL_FETCH_PLANE_SIZE_2_B, \
> +								_SEL_FETCH_PLANE_SIZE_5_A, _SEL_FETCH_PLANE_SIZE_5_B, \
> +								_SEL_FETCH_PLANE_SIZE_6_A, _SEL_FETCH_PLANE_SIZE_6_B)
>=20=20
>  /* tgl+ */
>  #define _SEL_FETCH_PLANE_OFFSET_1_A		0x7089c
> @@ -434,9 +434,9 @@
>  #define _SEL_FETCH_PLANE_OFFSET_5_B		0x7192c
>  #define _SEL_FETCH_PLANE_OFFSET_6_B		0x7194c
>  #define SEL_FETCH_PLANE_OFFSET(pipe, plane)	_MMIO_SEL_FETCH((pipe), (pla=
ne),\
> -								_SEL_FETCH_PLANE_POS_1_A, _SEL_FETCH_PLANE_POS_1_B, \
> -								_SEL_FETCH_PLANE_POS_2_A, _SEL_FETCH_PLANE_POS_2_B, \
> -								_SEL_FETCH_PLANE_POS_5_A, _SEL_FETCH_PLANE_POS_5_B, \
> -								_SEL_FETCH_PLANE_POS_6_A, _SEL_FETCH_PLANE_POS_6_B)
> +								_SEL_FETCH_PLANE_OFFSET_1_A, _SEL_FETCH_PLANE_OFFSET_1_B, \
> +								_SEL_FETCH_PLANE_OFFSET_2_A, _SEL_FETCH_PLANE_OFFSET_2_B, \
> +								_SEL_FETCH_PLANE_OFFSET_5_A, _SEL_FETCH_PLANE_OFFSET_5_B, \
> +								_SEL_FETCH_PLANE_OFFSET_6_A, _SEL_FETCH_PLANE_OFFSET_6_B)
>=20=20
>  #endif /* __SKL_UNIVERSAL_PLANE_REGS_H__ */

--=20
Jani Nikula, Intel
