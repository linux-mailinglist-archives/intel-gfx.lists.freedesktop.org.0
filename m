Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE30A908AA1
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2024 13:05:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D000910ED01;
	Fri, 14 Jun 2024 11:05:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="QFU7igpQ";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="DXFjmJhj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 316C110E144;
 Fri, 14 Jun 2024 11:05:53 +0000 (UTC)
Date: Fri, 14 Jun 2024 13:05:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1718363149;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=wEBB6JSbcpjeUY3MSW0QoGc2O/ynmNn3S/Q407DVQtI=;
 b=QFU7igpQ5bojoHv9A0JJWfKTXX1kLnXkeihI4cKdDynJPEQDSItxgA+x5YWzEYip9E3iTe
 WZ307qbmLFs2wXpa6c1zCqUiohe7C9+R2DBpvPZ34JVQ4wBjs2khOrRBs6c9NpY2smCRYP
 pExW0G6h+vkqAA2CtUAkZRvOlwtnu69+Upr50GgU0SK9UibUZtRBc5XQ12aCGP1iljzslw
 OcT+iPNpB1rni9gUO+UO3uqnmnF8BIerNOyl80+7pp0KK3ITfsrI/PHa/b54xZSqrDAupA
 CvNuNX0TBxfllCyvB1zal22+oReevInz9fkpTywFhI8hvxem6+RrGfq16OV3PA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1718363149;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=wEBB6JSbcpjeUY3MSW0QoGc2O/ynmNn3S/Q407DVQtI=;
 b=DXFjmJhj6bXA7JtRy7DVE8/61SutmSfEU03+gpMewXza02i0SsDWKGrKGW7/AwcFydeMzr
 gV5uBLqVD2Dy/YBw==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Tvrtko Ursulin <tursulin@ursulin.net>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [PATCH v2 3/8] drm/i915: Don't check for atomic context on
 PREEMPT_RT
Message-ID: <20240614110548.m3lloBjv@linutronix.de>
References: <20240613102818.4056866-1-bigeasy@linutronix.de>
 <20240613102818.4056866-4-bigeasy@linutronix.de>
 <94423591-adba-46d4-a9ba-f377dfab369f@ursulin.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <94423591-adba-46d4-a9ba-f377dfab369f@ursulin.net>
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

On 2024-06-14 09:32:07 [+0100], Tvrtko Ursulin wrote:
> I think this could be okay-ish in principle, but the commit text is not
> entirely accurate because there is no direct coupling between the wait
> helpers and the uncore lock. They can be used from any atomic context.
> 
> Okay-ish in principle because there is sufficient testing in Intel's CI on
> non-PREEMPT_RT kernels to catch any conceptual misuses.

You just avoid disabling preemption if you expect to be in atomic
context to save a few cycles. It wouldn't hurt to disable it anyway. The
only reason you need it is to remain on the same CPU while reading the
clock because it is not guaranteed otherwise.

Delays > 50ms are detected at build time.

> But see also the caller in skl_pcode_request. It is a bit harder to hit
> since it is the fallback path. Or gen5_rps_enable which nests under a
> different lock.
> 
> Hmm would there be a different helper, or combination of helpers, which
> could replace in_atomic() which would do the right thing on both kernels?
> Something to tell us we are neither under a spin_lock, nor preempt_disable,
> nor interrupts disabled, nor bottom-half. On either stock or PREEMPT_RT.

There is nothing that you can use to deduct that you are under a
spin-lock. preemptible() works only if you have a preemption counter
which is not mandatory. It can affect RCU but not in all configurations.

> WARN_ON_ONCE((ATOMIC) && !(!preemptible() || in_hardirq() ||
> in_serving_softirq())
> 
> Would this work?

Nope. None of this triggers if you acquire a spinlock_t. And I can't
think of something that would always be true.

So the question is why do you need to know if the context is atomic?
The only impact is avoiding disabling preemption. Is it that important
to avoid it?
If so would cant_migrate() work? It requires CONFIG_DEBUG_ATOMIC_SLEEP=y
to do the trick.

> Regards,
> 
> Tvrtko

Sebastian
