Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DBFF4C51E7
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Feb 2022 00:03:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09A9C10E179;
	Fri, 25 Feb 2022 23:03:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5261A10E179
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Feb 2022 23:03:39 +0000 (UTC)
Date: Sat, 26 Feb 2022 00:03:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1645830215;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=LGavQJcyxtdypPh/sOUJgnjVuKvImNMokMsQ6IO1gD0=;
 b=ySl+NoAF93RCkLmtV2kZlkLJOuxa7iR4qJD2Z4k6ffWUsHtokDzYMD5PltltSfDvVINDra
 vGhklpjalYhhyBOJFydqmKFTuTnKP6vLTi8HEk1qLBpVXuhMwHGNPzOQHOohZFusw16tif
 2sT88KmA8rUrHQexH8Q/l+yv6Xlo6TfDw2MMmF1/ZiyGbrEDvkmc8mSR90tW44DO9QKDk3
 wd6ILftO8amqi4LvWwLpxbOndhRABywU5JWyosWm3mXW4lbRYYHKJH4ZpBU8dTioSw0Ctt
 NMt1VvUd9lsw6EYS6Rn5aCIuricNiY2aXZtDg3zoDiU8ux7EROwuMiZyM9PegA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1645830215;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=LGavQJcyxtdypPh/sOUJgnjVuKvImNMokMsQ6IO1gD0=;
 b=puEcnY1rzUfKwAIEx3RmdZy/PxKg9eYMyF04Y0w3kDAWQfr8c/lgvy7z6CGxKP6hWt7L2i
 XeRy0soiTIZ75YDQ==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Message-ID: <YhlgRb1lZO38gAz5@linutronix.de>
References: <YgqmfKhwU5spS069@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <YgqmfKhwU5spS069@linutronix.de>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Depend on !PREEMPT_RT.
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
Cc: David Airlie <airlied@linux.ie>, Thomas Gleixner <tglx@linutronix.de>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2022-02-14 19:59:08 [+0100], To intel-gfx@lists.freedesktop.org wrote:
> There are a few sections in the driver which are not compatible with
> PREEMPT_RT. They trigger warnings and can lead to deadlocks at runtime.
> 
> Disable the i915 driver on a PREEMPT_RT enabled kernel. This way
> PREEMPT_RT itself can be enabled without needing to address the i915
> issues first. The RT related patches are still in RT queue and will be
> handled later.
> 
> Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>

A gentle ping ;)

> ---
>  drivers/gpu/drm/i915/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
> index a4c94dc2e2164..3aa719d5a0f0d 100644
> --- a/drivers/gpu/drm/i915/Kconfig
> +++ b/drivers/gpu/drm/i915/Kconfig
> @@ -3,6 +3,7 @@ config DRM_I915
>  	tristate "Intel 8xx/9xx/G3x/G4x/HD Graphics"
>  	depends on DRM
>  	depends on X86 && PCI
> +	depends on !PREEMPT_RT
>  	select INTEL_GTT
>  	select INTERVAL_TREE
>  	# we need shmfs for the swappable backing store, and in particular

Sebastian
