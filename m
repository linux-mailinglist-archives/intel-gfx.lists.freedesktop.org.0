Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 530CB15C9C8
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2020 18:58:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B50D46E3B7;
	Thu, 13 Feb 2020 17:58:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 334356E3B7
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Feb 2020 17:58:00 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Feb 2020 09:57:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,437,1574150400"; d="scan'208";a="228210530"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 13 Feb 2020 09:57:57 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 13 Feb 2020 19:57:56 +0200
Date: Thu, 13 Feb 2020 19:57:56 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200213175756.GH13686@intel.com>
References: <20200213154759.3641671-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200213154759.3641671-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Ensure 'ENABLE_BOOT_FETCH' is
 enabled before ppGTT
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 13, 2020 at 03:47:59PM +0000, Chris Wilson wrote:
> Cryptic notes in bspec say that "The MBC Driver Boot Enable bit in MBCTL
> register must be set before this register is written to upon boot up
> (including S3 exit)."
> =

> We tried adding it to our list of verified workarounds, but our
> self checks spot that the bit does not stick. It's only meant to be
> cleared after a FLR. As it fails our verification, just blindly apply
> the bit prior to loading the ppGTT.
> =

> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_ring_submission.c | 3 +++
>  1 file changed, 3 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gp=
u/drm/i915/gt/intel_ring_submission.c
> index f70b903a98bc..e41a329d435a 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> @@ -642,6 +642,9 @@ static void set_pp_dir(struct intel_engine_cs *engine)
>  	if (vm) {
>  		struct i915_ppgtt *ppgtt =3D i915_vm_to_ppgtt(vm);
>  =

> +		intel_uncore_rmw(engine->uncore, GEN6_MBCTL,
> +				 0, GEN6_MBCTL_ENABLE_BOOT_FETCH)

Wasn't setting this bit implicated in some regressions long ago?

> +
>  		ENGINE_WRITE(engine, RING_PP_DIR_DCLV, PP_DIR_DCLV_2G);
>  		ENGINE_WRITE(engine, RING_PP_DIR_BASE,
>  			     px_base(ppgtt->pd)->ggtt_offset << 10);
> -- =

> 2.25.0
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
