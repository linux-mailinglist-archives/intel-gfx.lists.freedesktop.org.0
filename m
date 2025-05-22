Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ED5DAC048B
	for <lists+intel-gfx@lfdr.de>; Thu, 22 May 2025 08:25:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99CEB968A5;
	Thu, 22 May 2025 06:25:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WAfW3G9r";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2802498ADC
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 May 2025 06:25:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747895111; x=1779431111;
 h=mime-version:content-transfer-encoding:in-reply-to:
 references:subject:from:cc:to:date:message-id;
 bh=0OpDu4mfLK/fXf5TP/6HJpfpWlpclutvSDFscpWpd+Y=;
 b=WAfW3G9r6GcmaSSH7H3FetDs9UyFvqpLGQ86p/65K0HkpGsO7zDwtsnk
 G80tf5B9s2TNQLXQlZvAryP0UmDtDfGLIwJW+W6XB7EU53bXHkf3sfH3Z
 b/E8hujE0fryCsBeUZFnVlZUO7uBS+BmaODOGl3g2t/Lvu2Tdaclj5O/h
 raUqX72PCKIh+dLMrd2Nd6XF9VcDeqtB+ciS/RTalCpW0W9DPBbPDi7yC
 RKBlPGqdJmqnjlTnQ7w+MIPxxhpbHKxNfsg+5EPaus242FBR15ULk0Lht
 hUNSFahuluJrYeHdFHXho2DH79AHR/5oh4oyzy4M4Bu/OlD0APLIHOJg5 w==;
X-CSE-ConnectionGUID: NTUAYo6KScKoQlx7lMZbBw==
X-CSE-MsgGUID: SvwdjImRQu2AJ8WvzyCmYw==
X-IronPort-AV: E=McAfee;i="6700,10204,11440"; a="53568856"
X-IronPort-AV: E=Sophos;i="6.15,305,1739865600"; d="scan'208";a="53568856"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2025 23:25:10 -0700
X-CSE-ConnectionGUID: Fac2xIPORPuS/0qzC2CTYQ==
X-CSE-MsgGUID: LiRbShtvQtukUpGeQtqNbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,305,1739865600"; d="scan'208";a="140208257"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.245.66])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2025 23:25:07 -0700
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250411144313.11660-2-ville.syrjala@linux.intel.com>
References: <20250411144313.11660-1-ville.syrjala@linux.intel.com>
 <20250411144313.11660-2-ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v2 1/2] drm/i915/gem: Allow EXEC_CAPTURE on recoverable
 contexts on DG1
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: stable@vger.kernel.org, Matthew Auld <matthew.auld@intel.com>,
 Thomas =?utf-8?q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, Tvrtko Ursulin <tursulin@ursulin.net>
Date: Thu, 22 May 2025 09:25:04 +0300
Message-ID: <174789510455.12498.1410930072009074388@jlahtine-mobl>
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

(+ Tvrkto)

Quoting Ville Syrjala (2025-04-11 17:43:12)
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>=20
> The intel-media-driver is currently broken on DG1 because
> it uses EXEC_CAPTURE with recovarable contexts. Relax the
> check to allow that.
>=20
> I've also submitted a fix for the intel-media-driver:
> https://github.com/intel/media-driver/pull/1920
>=20
> Cc: stable@vger.kernel.org
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Thomas Hellstr=C3=B6m <thomas.hellstrom@linux.intel.com>
> Testcase: igt/gem_exec_capture/capture-invisible
> Fixes: 71b1669ea9bd ("drm/i915/uapi: tweak error capture on recoverable c=
ontexts")
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu=
/drm/i915/gem/i915_gem_execbuffer.c
> index ca7e9216934a..ea9d5063ce78 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -2013,7 +2013,7 @@ static int eb_capture_stage(struct i915_execbuffer =
*eb)
>                         continue;
> =20
>                 if (i915_gem_context_is_recoverable(eb->gem_context) &&
> -                   (IS_DGFX(eb->i915) || GRAPHICS_VER_FULL(eb->i915) > I=
P_VER(12, 0)))
> +                   GRAPHICS_VER_FULL(eb->i915) > IP_VER(12, 10))

The IS_DGFX check was there because the error capture is expected to be
broken on anything with VRAM.

If we have already submitted an userspace fix to remove that flag, that
would be the right way to go.

So reverting this for now.

Regards, Joonas

>                         return -EINVAL;
> =20
>                 for_each_batch_create_order(eb, j) {
> --=20
> 2.49.0
>
