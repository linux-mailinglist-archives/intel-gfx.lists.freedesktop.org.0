Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ADBC47473A
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Dec 2021 17:12:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6CF610E57A;
	Tue, 14 Dec 2021 16:12:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D6BE10E57A
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Dec 2021 16:12:16 +0000 (UTC)
Date: Tue, 14 Dec 2021 17:12:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1639498334;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=nH5HihM1tbGcO59ONsUXalxnbZEz1SfYMdFm5XB2x5M=;
 b=1cH5L/iGeSkzi3rQxk6u2k3PHVmdbEy2yXUoa1cj6C3DMPTEh0G4uZpYO9vW96MG5UoELr
 /wfPj8owxz2IYGja5b3GXcFcDH8P1w4SiqVMEY/VATh7vcBUSK1ur4JTll+lTaj6oAtckm
 F08ouhyYRSicx6ajcJ7gb1pM06zILLyTz0QsEHRDkVvFRkdv9NSRkGxZY57/zvUqfljPSl
 KNbccrlbKP6Rq+BPi8SiFPkceAGu4gZrzekNUH/T5IVSnflprEW4AsepE+8mDOCuu7JSbD
 pGxx0PpTN2LGvH+8zoyjFbPILLF56f1SGQV0TArm1p5tYK6K6F9cRtKiIVXJFw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1639498334;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=nH5HihM1tbGcO59ONsUXalxnbZEz1SfYMdFm5XB2x5M=;
 b=SPK1gv91OTH8dEg7y21hVLG3ISEFjHVYSI/vtNAVuQ4iwGk1RUIwxn/QOeZVZAP9D1bCvQ
 gPmreGt4gixZXLCw==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YbjCXegT1Rk34Uu7@linutronix.de>
References: <20211214140301.520464-1-bigeasy@linutronix.de>
 <163949752535.24608.15755860466354123203@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <163949752535.24608.15755860466354123203@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915=3A_PREEMPT=5FRT_related_fixups=2E_=28rev4=29?=
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

On 2021-12-14 15:58:45 [-0000], Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: PREEMPT_RT related fixups. (rev4)
> URL   : https://patchwork.freedesktop.org/series/95463/
> State : failure
> 
> == Summary ==
> 
> Applying: drm/i915: Drop the irqs_disabled() check
> Applying: drm/i915/gt: Queue and wait for the irq_work item.
> Applying: drm/i915/gt: Use spin_lock_irq() instead of local_irq_disable() + spin_lock()
> Applying: drm/i915: Use preempt_disable/enable_rt() where recommended
> Applying: drm/i915: Don't disable interrupts on PREEMPT_RT during atomic updates
> Using index info to reconstruct a base tree...
> M	drivers/gpu/drm/i915/display/intel_crtc.c
> Falling back to patching base and 3-way merge...
> Auto-merging drivers/gpu/drm/i915/display/intel_crtc.c
> CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/intel_crtc.c
> error: Failed to merge in the changes.
> hint: Use 'git am --show-current-patch=diff' to see the failed patch
> Patch failed at 0005 drm/i915: Don't disable interrupts on PREEMPT_RT during atomic updates
> When you have resolved this problem, run "git am --continue".
> If you prefer to skip this patch, run "git am --skip" instead.
> To restore the original branch and stop patching, run "git am --abort".

I used the drm-intel-gt-next branch. Which one would be preferred?

Sebastian
