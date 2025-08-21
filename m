Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BA69B2F640
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Aug 2025 13:17:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BE2210E938;
	Thu, 21 Aug 2025 11:17:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="0SwloKb1";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="CDDYVjtC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A5FD10E2F3;
 Thu, 21 Aug 2025 11:17:52 +0000 (UTC)
Date: Thu, 21 Aug 2025 13:17:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1755775070;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=KyHWwdQR+w9YrCpjX9owj01Js3zZE9tOEBhM2ZdyzGs=;
 b=0SwloKb1XrZBh+6oC83rAtyDKsj0DthOm2F/AZyfu/MVwgf1Qqc3UngxH8r+aQBIgaIHOH
 ilcw55uRBOvscQl5blNj8cJcpBCc/aiHf4NQ6T6ApLQkDLlm3CHcbqc2Tpc+6wBP6KkgAp
 1Hc077vQVDMwyY+IoYo9X6OFBXlC6D27TP2B54FPEGP0jaFYveUyh9s+UT8ImNTvA3Ba6p
 wB+e45y8s9i5Tbnvh/C2UyEoX7tQhUW8rb6BAYFiGPu9CTLTcB4alExphV8qPsIfr4vWqO
 qAHWqaxwI5UkJn7l0Nm7wI/mS9rftAGvy81pRoRl7ifJJHeWJGPbjC6VgOCa2A==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1755775070;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=KyHWwdQR+w9YrCpjX9owj01Js3zZE9tOEBhM2ZdyzGs=;
 b=CDDYVjtCncCx47LL+rSEsiGpfPVVDsoly9zAtvXjojLIoTGSpRUsHvzEIn5uNOi8wOxNUW
 J2qvQ9s+DWFb/CCw==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Scott Oehrlein <scott.oehrlein@intel.com>,
 Ben Hutchings <ben@decadent.org.uk>
Subject: Re: [PATCH v4 0/9] drm/i915: PREEMPT_RT related fixups.
Message-ID: <20250821111748.aS5cLa3d@linutronix.de>
References: <20250714153954.629393-1-bigeasy@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250714153954.629393-1-bigeasy@linutronix.de>
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

On 2025-07-14 17:39:45 [+0200], To intel-gfx@lists.freedesktop.org wrote:
> The following patches are from the PREEMPT_RT queue. They are used by
> people using the real-time preemption model and a i915 compatible GPU
> card.
> Patches 1+2 keep preemption and interrupts enabled within vblank
> handling. I don't see another way of handling it given the constrains.
> Patch #4 disables i915's tracepoints because they acquire sleeping locks
> within the assign callback with is invoked with disabled preemption. 
> 
> The remaining patches mostly deal with the API & syntax such as not
> test for disabled interrupts but rather use lockdep (#6) or how to
> identify atomic context which also causes no errors on PREEMPT_RT (#3,
> #6, #7). Patch #5 uses proper spinlock API to disable interrupt instead
> of using local_irq_disable() for it.
> 
> Some of the patches already received already Acked-by/ Reviewed-by.
> Could we please apply some of the series and then discuss the
> controversial ones which are not doable?

Any feedback up the series?
I've seen that Maarten posted part of the queue and found
  8a643df55f3a9 ("drm/i915: Don't check for atomic context on PREEMPT_RT")
in -next.
What would be the next steps?

Sebastian
