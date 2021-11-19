Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 517C6457149
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Nov 2021 15:58:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD2AE6E214;
	Fri, 19 Nov 2021 14:58:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3A976EA09
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Nov 2021 14:58:37 +0000 (UTC)
Date: Fri, 19 Nov 2021 15:58:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1637333916;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=05S1EPoS2uCX2lmLqI0lPAWhqGCTzNdjavtXIoQ/TEk=;
 b=RvfRVk2nS+wgtRkmEnsBnoqdfzI5lU1hbXVq59T69+buDeuS/MGkwwbJBA0cQuRmz2b+fH
 ecotyNv309e/26bd4sXyQLy9qaa9SHsHrt/aWDnmSUg7bPkxwdN8UPgeO/4Y+cIWR0dnAx
 M6RMCepU0vuZiMUzBn7KUeTT0la+XY18nr/QmA/036MfCP9wrM4mWVG5oA16QbRPXTbT1q
 f/QNUyf4v7ZD2XMYAgWUYdwUN4oGRtG3lZj7kZ/4Jc+44j/4ELWAeZjP1hMC8RBAIyMW3M
 Bk9+YmG5g4hoVRJq/sbIMz+yc5BUAv04MD7xl9iSDgw9P9H0H77f/rKsv19dpw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1637333916;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=05S1EPoS2uCX2lmLqI0lPAWhqGCTzNdjavtXIoQ/TEk=;
 b=jugc2L0BBz+Yx/J6dauORXJUrsMcKoiZwIINxK52Hop8ihgrx6RxnTyHtfin/MCdnldzFQ
 0pdez5f9/gs5HSAw==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20211119145834.dmdhs74dqr7dcdt7@linutronix.de>
References: <20211118165914.pckik75emivsilek@linutronix.de>
 <163731167626.2300.15452635334943775421@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <163731167626.2300.15452635334943775421@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Don=27t_disable_interrupts_and_pretend_a_lock_as_been_?=
 =?utf-8?b?YWNxdWlyZWQgaW4gX190aW1lbGluZV9tYXJrX2xvY2soKS4=?=
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
Cc: tglx@linutronix.de
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2021-11-19 08:47:56 [-0000], Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Don't disable interrupts and pretend a lock as been acquired in __timeline_mark_lock().
> URL   : https://patchwork.freedesktop.org/series/97082/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_10900_full -> Patchwork_21633_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_21633_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_21633_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.

My bug team?

> #### Possible regressions ####
> 
>   * igt@kms_vblank@pipe-b-query-forked-hang:
>     - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-tglb8/igt@kms_vblank@pipe-b-query-forked-hang.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21633/shard-tglb6/igt@kms_vblank@pipe-b-query-forked-hang.html

By comparing the two dmesg outputs I see that the INCOMPLETE ones stops,
while the PASS one continues with
|<7> [82.256394] heartbeat rcs0 heartbeat {seqno:5:7, prio:2147483646} not ticking

I cloned igt-gpu-tools and run 'kms_vblank' on my box. I was a little
surprised by the suspend part but the test passed here.

Sebastian
