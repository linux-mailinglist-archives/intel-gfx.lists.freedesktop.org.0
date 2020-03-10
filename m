Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 528601803A9
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 17:38:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8C976E896;
	Tue, 10 Mar 2020 16:37:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BAB26E896
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 16:37:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20512203-1500050 for multiple; Tue, 10 Mar 2020 16:37:53 +0000
MIME-Version: 1.0
In-Reply-To: <20200310004911.1723239-4-matthew.d.roper@intel.com>
References: <20200310004911.1723239-1-matthew.d.roper@intel.com>
 <20200310004911.1723239-4-matthew.d.roper@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
Message-ID: <158385827294.28297.8711716968055646564@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 10 Mar 2020 16:37:52 +0000
Subject: Re: [Intel-gfx] [PATCH 3/7] drm/i915: Add Wa_1604278689:icl,ehl
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Matt Roper (2020-03-10 00:49:07)
> The bspec description for this workaround tells us to program
> 0xFFFF_FFFF into both FBC_RT_BASE_ADDR_REGISTER_* registers, but we've
> previously found that this leads to failures in CI.  Our suspicion is
> that the failures are caused by this valid turning on the "address valid
> bit" even though we're intentionally supplying an invalid address.
> Experimentation has shown that setting all bits _except_ for the
> RT_VALID bit seems to avoid these failures.
> 
> v2:
>  - Mask off the RT_VALID bit.  Experimentation with CI trybot indicates
>    that this is necessary to avoid reset failures on BCS.

What reset failures?
 
> Bspec: 11388
> Bspec: 33451
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 6 ++++++
>  drivers/gpu/drm/i915/i915_reg.h             | 1 +
>  2 files changed, 7 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 3e352e2a5b79..1cf931dde0ca 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -575,6 +575,12 @@ static void icl_ctx_workarounds_init(struct intel_engine_cs *engine,
>         /* allow headerless messages for preemptible GPGPU context */
>         WA_SET_BIT_MASKED(GEN10_SAMPLER_MODE,
>                           GEN11_SAMPLER_ENABLE_HEADLESS_MSG);
> +
> +       /* Wa_1604278689:icl,ehl */
> +       wa_write_masked_or(wal, IVB_FBC_RT_BASE_UPPER,
> +                          0, /* write-only register; skip validation */
> +                          0xFFFFFFFF);
> +       wa_write(wal, IVB_FBC_RT_BASE, 0xFFFFFFFF & ~ILK_FBC_RT_VALID);

Disable first.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
