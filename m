Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FEF6BC900C
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Oct 2025 14:25:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DE9410EA07;
	Thu,  9 Oct 2025 12:24:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="ObhGEuBS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10DED10EA08
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Oct 2025 12:24:57 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 2BEFC612A4;
 Thu,  9 Oct 2025 12:24:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 695B0C4CEE7;
 Thu,  9 Oct 2025 12:24:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1760012695;
 bh=nyz4BhkH9OlAERufkMsmHchLXyFLIStnoROq6YOLbto=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ObhGEuBSKjI0KODwbIbWauq3cYVAQIJKuEtpdeS+asnZW0j5sFTfu4L1MpagFHwLX
 Z4tslMolFunTfzMlEpzW/Uy+Z1N3iFk2Xt5C14P91bgChnQyfABC3LXpiEjskMWXe3
 qrOzVRCJirfxRQU576G133e4vD1zpuo1stw34Q5x66wBM6C5oHndrNwRjrg42BUo/C
 oioRHsPT06PW1Bfo88puitlO42kaVoIoAcxU3/JU/GUabyLOhajOUv0BdJ3KeZHwXW
 oSx2dNXtbR0GfBpWEG8crdM97G2jBiZUCsbr6sXwc7cSD4gxW9DIkrd9BADxf/fBir
 7l9r40LigxisA==
Date: Thu, 9 Oct 2025 14:24:52 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Cc: intel-gfx@lists.freedesktop.org, lucas.demarchi@intel.com, 
 riana.tauro@intel.com, matthew.brost@intel.com
Subject: Re: [PATCH] drm/i915: Fix conversion between clock ticks and
 nanoseconds
Message-ID: <itxmibglcduar4qqnc3iwwzumskfw522fbioubyzfbibb7tdrg@tz2mvn6c2mru>
References: <20251007233543.635130-2-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251007233543.635130-2-umesh.nerlige.ramappa@intel.com>
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

Hi Umesh,

...

> @@ -171,7 +173,12 @@ static u32 read_clock_frequency(struct intel_uncore *uncore)
>  
>  void intel_gt_init_clock_frequency(struct intel_gt *gt)
>  {
> +	unsigned long clock_period_scale;
> +
>  	gt->clock_frequency = read_clock_frequency(gt->uncore);

Shall we add a paranoid check here to raise a warning if
clock_frequency is '0'?

It should never happen, but for robustness I would suggest:

        GEM_WARN_ON(!gt->clock_frequency);

(or even BUG_ON, though that might be overkill).

Andi

> +	clock_period_scale = gcd(NSEC_PER_SEC, gt->clock_frequency);
> +	gt->clock_nsec_scaled = NSEC_PER_SEC / clock_period_scale;
> +	gt->clock_freq_scaled = gt->clock_frequency / clock_period_scale;
>  
>  	/* Icelake appears to use another fixed frequency for CTX_TIMESTAMP */
>  	if (GRAPHICS_VER(gt->i915) == 11)
