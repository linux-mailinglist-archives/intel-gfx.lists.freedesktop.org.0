Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1860B1C4B3D
	for <lists+intel-gfx@lfdr.de>; Tue,  5 May 2020 03:06:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0015B89CF8;
	Tue,  5 May 2020 01:06:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 581 seconds by postgrey-1.36 at gabe;
 Tue, 05 May 2020 01:06:51 UTC
Received: from smtp90.iad3b.emailsrvr.com (smtp90.iad3b.emailsrvr.com
 [146.20.161.90])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A09B989CF8
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 May 2020 01:06:51 +0000 (UTC)
X-Auth-ID: kenneth@whitecape.org
Received: by smtp12.relay.iad3b.emailsrvr.com (Authenticated sender:
 kenneth-AT-whitecape.org) with ESMTPSA id 83726C0133; 
 Mon,  4 May 2020 20:57:09 -0400 (EDT)
X-Sender-Id: kenneth@whitecape.org
Received: from mizzik.localnet (50-39-162-34.bvtn.or.frontiernet.net
 [50.39.162.34]) (using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384)
 by 0.0.0.0:465 (trex/5.7.12); Mon, 04 May 2020 20:57:09 -0400
From: Kenneth Graunke <kenneth@whitecape.org>
To: intel-gfx@lists.freedesktop.org,
 D Scott Phillips <d.scott.phillips@intel.com>
Date: Mon, 04 May 2020 17:57:05 -0700
Message-ID: <2650835.mvXUDI8C0e@mizzik>
In-Reply-To: <20200505000146.2295525-1-d.scott.phillips@intel.com>
References: <20200505000146.2295525-1-d.scott.phillips@intel.com>
MIME-Version: 1.0
X-Classification-ID: e6077747-36d2-49b6-9974-5b775c7eeadd-1-1
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Put HDC flush pipe_control
 bit in the right dword
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: multipart/mixed; boundary="===============0915026900=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0915026900==
Content-Type: multipart/signed; boundary="nextPart11637060.O9o76ZdvQC"; micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart11637060.O9o76ZdvQC
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday, May 4, 2020 5:01:46 PM PDT D Scott Phillips wrote:
> Previously we set HDC_PIPELINE_FLUSH in dword 1 of gen12
> pipe_control commands. HDC Pipeline flush actually resides in
> dword 0, and the bit we were setting in dword 1 was Indirect State
> Pointers Disable, which invalidates indirect state in the render
> context. This causes failures for userspace, as things like push
> constant state gets invalidated.
> 
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Signed-off-by: D Scott Phillips <d.scott.phillips@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_engine.h | 23 +++++++++++++++++------
>  drivers/gpu/drm/i915/gt/intel_lrc.c    | 11 ++++++-----
>  2 files changed, 23 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
> index 19d0b8830905..8338be338ec8 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine.h
> @@ -241,19 +241,24 @@ void intel_engine_fini_breadcrumbs(struct intel_engine_cs *engine);
>  void intel_engine_print_breadcrumbs(struct intel_engine_cs *engine,
>  				    struct drm_printer *p);
>  
> -static inline u32 *gen8_emit_pipe_control(u32 *batch, u32 flags, u32 offset)
> +static inline u32 *gen12_emit_pipe_control(u32 *batch, u32 flags0, u32 flags1, u32 offset)

Great find!  It looks like HDC_PIPELINE_FLUSH moved from bit 41 to bit 9
even on Icelake / Gen11 - so it might make sense to call this
gen11_emit_pipe_control() and use it on the Icelake functions.

That said, i915 never sets HDC_PIPELINE_FLUSH until Gen12, so we don't
actually have a bug to fix on Icelake today.  But if someone started
trying to set it on Gen11, we would have a bug - hence the suggestion.

With or without any changes,

Reviewed-by: Kenneth Graunke <kenneth@whitecape.org>

and thanks so much for tracking this down!

--nextPart11637060.O9o76ZdvQC
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE6OtbNAgc4e6ibv4ZW1vaBx1JzDgFAl6wueEACgkQW1vaBx1J
zDi7vg/5AWn/8/+hWZEfr/2ArL9bWIF6pMQAT95iDVKz/xsCz4kQ2smQalj/aFEd
nXQIlctPqLcjYPLdsDepyj7h4pAzfdcCepMbJtxBArNvYADWQ2UKTOZwH/hTty8J
a/EPY0yFRJ3umDAHunhdNP63APCb09w+dyx35LusbfQr4Rauu3+42sKqGvhO7Rt5
sokotaVQ07Vsx7Vj4EVpZugYEs80luHTjzEFokfG4Z0Rx6UJ7xb5FSFykQhXW9AV
s7pcNoKUO+fvFTl2SiuCXkkfc4aGcVzSuwN0KUZGRBsP6o54XFEFSwfxASUesE6H
hIDv4l8L+OmXdZ58ISr/bikO923grfnPpJW9Rr8uj6C98+6SfA8bB8D1CIx2P65d
gW3PpFQx3YC5hJmpjCifq94nmX4k+2DbloyL/aYiWUjVEFj4qNLyCMyb6tBfO6Yw
cq97S2GkbTXHBxKkrxxXlPiSPkzJWjLHN+1pH1GpfRsPld3lM7WgC8jtlRCK6D8u
CNinEQhNe48bUBsLqQQtAgLgXO1so3M8pXk4FR+GqgUSygEfMmqp+Ooa08MmUfsk
c15SSncQdT9HAYDOqXoZKgZ+ehFg/7JB5mQhw7vDyWEFPqVB3v0bHZLQk/nFa2Ew
zh6pb/Za1nuTnAhmOo4P4Cp+5/4RhQorpnvsXnNn0FFzDpI/YGk=
=ZfUS
-----END PGP SIGNATURE-----

--nextPart11637060.O9o76ZdvQC--




--===============0915026900==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0915026900==--



