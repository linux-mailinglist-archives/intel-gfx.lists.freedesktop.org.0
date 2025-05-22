Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE3F2AC0A3E
	for <lists+intel-gfx@lfdr.de>; Thu, 22 May 2025 13:02:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDE4B10EC1B;
	Thu, 22 May 2025 11:02:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CXMxlgM6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0FB810E7B9
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 May 2025 11:02:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747911744; x=1779447744;
 h=mime-version:content-transfer-encoding:in-reply-to:
 references:subject:from:cc:to:date:message-id;
 bh=tmguASBkmvy1X8vf7OH+HA6E0Ma7HhaEFYbHMjf21jE=;
 b=CXMxlgM6h7IT6E5oxTOE53h45tTrYzEyU3AArZsr4voN4IrbIYLLwPhI
 xIsjba6n8fkaZUqt4SAkSSQTsug3Atbws8+gDTBQT2PklO5Js6dmnmFx5
 +us5Qhv8UrS5IVvVdjEmIz/fD+lFm5mLAz0q/O0+fRu/D4jviXSUWyxV7
 a/rEcssCPvdlAkzk+6MBM2xO8ogEAOI9WhKGL8awWSHu5bijGDOJfaBLc
 OvmRBj0vzfot7J8S6VkAzfUdFNwix/Q2B6WhCbytojBmJCfA0ENiMic9w
 p83rrBahOgeRKhNrBTLxSjo5rcbxMV4AWSFYNpxIL0qbPJ07R85elt6dW g==;
X-CSE-ConnectionGUID: pHK4tp3kRJyMJ7N7/IyACA==
X-CSE-MsgGUID: 1DrKDflrTbycP9vvXr2WOg==
X-IronPort-AV: E=McAfee;i="6700,10204,11440"; a="67487029"
X-IronPort-AV: E=Sophos;i="6.15,305,1739865600"; d="scan'208";a="67487029"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 04:02:10 -0700
X-CSE-ConnectionGUID: FN/O0HOBTIWdnXIg1jkvkA==
X-CSE-MsgGUID: OfbRVKFPRUyuZ7bOEkC/Bw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,305,1739865600"; d="scan'208";a="140616926"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.245.66])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 04:02:07 -0700
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250522064127.24293-1-joonas.lahtinen@linux.intel.com>
References: <20250522064127.24293-1-joonas.lahtinen@linux.intel.com>
Subject: Re: [PATCH] Revert "drm/i915/gem: Allow EXEC_CAPTURE on recoverable
 contexts on DG1"
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: stable@vger.kernel.org,
 Ville =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>, Matthew Auld <matthew.auld@intel.com>,
 Thomas =?utf-8?q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>
To: Intel graphics driver community testing & development
 <intel-gfx@lists.freedesktop.org>
Date: Thu, 22 May 2025 14:02:04 +0300
Message-ID: <174791172419.46844.6949522430334944164@jlahtine-mobl>
User-Agent: alot/0.12.dev7+g16b50e5f
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

Quoting Joonas Lahtinen (2025-05-22 09:41:27)
> This reverts commit d6e020819612a4a06207af858e0978be4d3e3140.
>=20
> The IS_DGFX check was put in place because error capture of buffer
> objects is expected to be broken on devices with VRAM.
>=20
> We seem to have already submitted the userspace fix to remove that
> flag, so lets just rely on that for DG1.

Further, it seems that the userspace fix[1] has already been pushed and
released as part of media-driver 25.2.3, so really no reason to unblock
the broken codepath.

[1] https://github.com/intel/media-driver/commit/93c07d9b4b96a78bab21f6acd4=
eb863f4313ea4a

Regards, Joonas

>=20
> Cc: stable@vger.kernel.org # v6.0+
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Thomas Hellstr=C3=B6m <thomas.hellstrom@linux.intel.com>
> Cc: Tvrtko Ursulin <tursulin@ursulin.net>
> Signed-off-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu=
/drm/i915/gem/i915_gem_execbuffer.c
> index 7d44aadcd5a5..02c59808cbe4 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -2013,7 +2013,7 @@ static int eb_capture_stage(struct i915_execbuffer =
*eb)
>                         continue;
> =20
>                 if (i915_gem_context_is_recoverable(eb->gem_context) &&
> -                   GRAPHICS_VER_FULL(eb->i915) > IP_VER(12, 10))
> +                   (IS_DGFX(eb->i915) || GRAPHICS_VER_FULL(eb->i915) > I=
P_VER(12, 0)))
>                         return -EINVAL;
> =20
>                 for_each_batch_create_order(eb, j) {
> --=20
> 2.49.0
>
