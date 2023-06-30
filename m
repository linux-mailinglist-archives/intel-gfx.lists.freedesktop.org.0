Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E507743C8C
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jun 2023 15:19:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7373310E47C;
	Fri, 30 Jun 2023 13:19:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 576 seconds by postgrey-1.36 at gabe;
 Fri, 30 Jun 2023 13:19:38 UTC
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C700710E47C
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Jun 2023 13:19:38 +0000 (UTC)
Date: Fri, 30 Jun 2023 15:09:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1688130592;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to; bh=NgMalKPoVpTY84qrO8TZaf3B/Zurs/fDU7/Pgv9787w=;
 b=FYYQT6ZifFX/+dawOa2QRnak/jHpikE6ntjGMLH4E73c9LXr9XF7lZQu6hmc2kSF5hbMfS
 /A9z6koGatlIgfbZelo+y2ou9QauC/9F/S4N3x7mkkVbXkwNKZmeFM9ewAorbcbeNRGHSe
 yVrdQA/gnpvjmEcAX0ZbLsYn77+D5cmU0u/DWDOC16eyO2RSDzmNHZ9D1fdM7iKjzcc+di
 gTAG7h73B1WDnNPVlz1J9rueGV6GD2W5XYVQF6ldWZSLgnm/SWNf6FKu1Gus132mUxJKtn
 dFb09t1XX9JTZ7YUvZfXyfEymkwEW7rwR2nvXVWr8IhS6G5kFKx1mLR8jta2Yw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1688130592;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to; bh=NgMalKPoVpTY84qrO8TZaf3B/Zurs/fDU7/Pgv9787w=;
 b=U/7WHY217x4wEKRM8z8hhe/YR9geOwRLvqetoWVfHYYioTbAy8R84TR1qc7aCVTOMZmiSd
 g4XTjwY6HIajLAAw==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Paul Gortmaker <paul.gortmaker@windriver.com>
Message-ID: <20230630130949.coN0sVU4@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <ZJTuDi1HNp9L2zxY@windriver.com>
Subject: Re: [Intel-gfx] [RFC] tentative fix for drm/i915/gt regression on
 preempt-rt
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
Cc: linux-rt-users@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2023-06-22 20:57:50 [-0400], Paul Gortmaker wrote:
[ longer report about what is broken.]

Commit ade8a0f598443 ("drm/i915: Make all GPU resets atomic") introduces
a preempt_disable() section around the invocation of the reset callback.
I can't find an explanation why this is needed. There was a comment
saying
| * We want to perform per-engine reset from atomic context (e.g.
| * softirq), which imposes the constraint that we cannot sleep.

but it does not state the problem with being preempted while waiting for
the reset. The commit itself does not explain why an atomic reset is
needed, it just states that it is a requirement now. On !RT we could
pull packets from a NICs and forward them other NICs for 2ms.

I've been looking over the reset callbacks and gen8_reset_engines() +
gen6_reset_engines() acquire a spinlock_t. Since this becomes a sleeping
lock on PREEMPT_RT it must not be acquired with disabled preemption.
i915_do_reset() acquires no lock but then has two udelay()s of 50us
each. Not good latency wise in a preempt-off section.

Could someone please explain why atomic is needed during reset, what
problems are introduced by a possible preemption?

Sebastian
