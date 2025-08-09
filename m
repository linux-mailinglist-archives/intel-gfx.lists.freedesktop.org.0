Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD9B5B1F175
	for <lists+intel-gfx@lfdr.de>; Sat,  9 Aug 2025 02:27:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BD4F10E087;
	Sat,  9 Aug 2025 00:27:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="tasGbUrB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC7F310E087
 for <intel-gfx@lists.freedesktop.org>; Sat,  9 Aug 2025 00:27:07 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 354C15C5BCD;
 Sat,  9 Aug 2025 00:27:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 26FC5C4CEF4;
 Sat,  9 Aug 2025 00:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1754699226;
 bh=08JI7mEnF2vr38GyjHlisb1uIp4RlRgXnsbEUI1+cQ8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tasGbUrB95h2GuNu/DDZmkJaLsSFxV1Dciv5E8mPK8sEGe943ksNHwl6sGk4cRyki
 KW6oaMabvC6WFIlphcsAd4NcIwsmQ2ttw+VNhrIuU3pNO09WUDb7lDK18S5rzq53xl
 /af6bNPRDaxX9ozRz1pX9I8BvXSo+/9e6dxvJ0QhGNiI/VcOFWFoSp0fwYM0rrj1w7
 bHzfcGBR1tTaNszuIhZZwNno26REXF4c5oAsSzzdEVGii5/q2bjQ5dnsqXES0JM+sT
 OIsW6hSWXSzpU+A5zEyg6zYaBd1nKiFtxQpgyeRd3r2RfVZalMWtfutctlAdlJcxJH
 ieIUH55bf9wLw==
Date: Fri, 8 Aug 2025 23:27:00 -0100
From: Andi Shyti <andi.shyti@kernel.org>
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Cc: intel-gfx@lists.freedesktop.org, krzysztof.karas@intel.com, 
 andi.shyti@linux.intel.com, ville.syrjala@linux.intel.com
Subject: Re: [PATCH 1/3] drm/i915/gt: Relocate compression repacking WA for
 JSL/EHL
Message-ID: <oep4xu52kke3xfs4xkm227ix33vw2xinjo6ll5yarqvnqoo4ns@wy5j4u4bgjhm>
References: <cover.1754041191.git.sebastian.brzezinka@intel.com>
 <edc6d2df651f5990c1d70ca78e8704b60e06adb2.1754041191.git.sebastian.brzezinka@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <edc6d2df651f5990c1d70ca78e8704b60e06adb2.1754041191.git.sebastian.brzezinka@intel.com>
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

Hi Sebastian,

On Fri, Aug 01, 2025 at 09:48:54AM +0000, Sebastian Brzezinka wrote:
> Relocated the workaround for "Disable Repacking for Compression" from
> rcs_engine_wa_init() to icl_ctx_workarounds_init() for Jasper Lake and
> Elkhart Lake platforms. This ensures the WA is applied during context
> initialization.

I would re-write this to make it a bit more understandable:

   CACHE_MODE_0 registers should be saved and restored as part of
   the context, not during engine reset. Move the related workaround
   from rcs_engine_wa_init() to icl_ctx_workarounds_init() for
   Jasper Lake and Elkhart Lake platforms. This ensures the WA is
   applied during context initialisation.

How does it look to you?

> Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
 
BSPEC: 55884

Fixes: 0ddae025ab6c ("drm/i915: Disable compression tricks on JSL")
Closes: Fixes: 0ddae025ab6c ("drm/i915: Disable compression tricks on JSL")
Cc: <stable@vger.kernel.org> # v6.13+

> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 20 +++++++++++---------
>  1 file changed, 11 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index b37e400f74e5..79298618cda6 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -634,6 +634,8 @@ static void cfl_ctx_workarounds_init(struct intel_engine_cs *engine,
>  static void icl_ctx_workarounds_init(struct intel_engine_cs *engine,
>  				     struct i915_wa_list *wal)
>  {
> +	struct drm_i915_private *i915 = engine->i915;
> +
>  	/* Wa_1406697149 (WaDisableBankHangMode:icl) */
>  	wa_write(wal, GEN8_L3CNTLREG, GEN8_ERRDETBCTRL);
>  
> @@ -669,6 +671,15 @@ static void icl_ctx_workarounds_init(struct intel_engine_cs *engine,
>  
>  	/* Wa_1406306137:icl,ehl */
>  	wa_mcr_masked_en(wal, GEN9_ROW_CHICKEN4, GEN11_DIS_PICK_2ND_EU);
> +
> +	if (IS_JASPERLAKE(i915) || IS_ELKHARTLAKE(i915)) {
> +		/*
> +		 * "Disable Repacking for Compression (masked R/W access)
> +		 *  before rendering compressed surfaces for display."

As we are here, I would remove the quotes here, they don't mean
much.

With all the above:

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
