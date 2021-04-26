Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D7D536B676
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Apr 2021 18:05:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D69186E169;
	Mon, 26 Apr 2021 16:05:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D8BC6E169
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Apr 2021 16:05:45 +0000 (UTC)
IronPort-SDR: kSCi80RCzFJDzJOajX0/hR9UJPJjDWnSSVLQ/bP5ZfED5byimfIFxqypjZyjFE+JnTSWMsWNy2
 kU7EOR+9Tyag==
X-IronPort-AV: E=McAfee;i="6200,9189,9966"; a="193171911"
X-IronPort-AV: E=Sophos;i="5.82,252,1613462400"; d="scan'208";a="193171911"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2021 09:05:44 -0700
IronPort-SDR: MIhOrLGLZszdQerFRinPltdfl+IYoN+ZjzX72A0CZR8XMwedKMg5BfIeLQ8TjGL+LZWDxh7PXG
 ib5Qh66qfbtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,252,1613462400"; d="scan'208";a="429444625"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 26 Apr 2021 09:05:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 26 Apr 2021 19:05:40 +0300
Date: Mon, 26 Apr 2021 19:05:40 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Simon Rettberg <simon.rettberg@rz.uni-freiburg.de>
Message-ID: <YIbk1BS1dgkPSu5i@intel.com>
References: <20210426161124.2b7fd708@dellnichtsogutkiste>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210426161124.2b7fd708@dellnichtsogutkiste>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Disable HiZ Raw Stall
 Optimization on broken gen7
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
Cc: intel-gfx@lists.freedesktop.org, development@manuel-bentele.de
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Apr 26, 2021 at 04:11:24PM +0200, Simon Rettberg wrote:
> When resetting CACHE_MODE registers, don't enable HiZ Raw Stall
> Optimization on Ivybridge GT1 and Baytrail, as it causes severe glitches
> when rendering any kind of 3D accelerated content.
> This optimization is disabled on these platforms by default according to
> official documentation from 01.org.
> =

> Fixes: ef99a60ffd9b ("drm/i915/gt: Clear CACHE_MODE prior to clearing res=
iduals")
> Fixes: 520d05a77b28 ("drm/i915/gt: Clear CACHE_MODE prior to clearing res=
iduals")
> BugLink: https://gitlab.freedesktop.org/drm/intel/-/issues/3081
> BugLink: https://gitlab.freedesktop.org/drm/intel/-/issues/3404
> BugLink: https://gitlab.freedesktop.org/drm/intel/-/issues/3071
> Reviewed-By: Manuel Bentele <development@manuel-bentele.de>
> Signed-off-by: Simon Rettberg <simon.rettberg@rz.uni-freiburg.de>
> ---
>  drivers/gpu/drm/i915/gt/gen7_renderclear.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/gt/gen7_renderclear.c b/drivers/gpu/drm=
/i915/gt/gen7_renderclear.c
> index de575fdb0..21f08e538 100644
> --- a/drivers/gpu/drm/i915/gt/gen7_renderclear.c
> +++ b/drivers/gpu/drm/i915/gt/gen7_renderclear.c
> @@ -397,7 +397,10 @@ static void emit_batch(struct i915_vma * const vma,
>  	gen7_emit_pipeline_invalidate(&cmds);
>  	batch_add(&cmds, MI_LOAD_REGISTER_IMM(2));
>  	batch_add(&cmds, i915_mmio_reg_offset(CACHE_MODE_0_GEN7));
> -	batch_add(&cmds, 0xffff0000);
> +	batch_add(&cmds, 0xffff0000 |
> +			((IS_IVB_GT1(i915) || IS_VALLEYVIEW(i915)) ?
> +			 HIZ_RAW_STALL_OPT_DISABLE :
> +			 0));
>  	batch_add(&cmds, i915_mmio_reg_offset(CACHE_MODE_1));
>  	batch_add(&cmds, 0xffff0000 | PIXEL_SUBSPAN_COLLECT_OPT_DISABLE);
>  	gen7_emit_pipeline_invalidate(&cmds);

CACHE_MODE* should be context saved. So there seems to be some kind
of more fundemental bug in this code if it manages to clobber
application contexts. Looking at the code it at least tries to
switch to the kernel context before emitting the w/a batch.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
