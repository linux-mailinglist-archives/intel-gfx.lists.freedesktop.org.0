Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KP16MtiEGWouxQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 14:21:44 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FBF46022C2
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 14:21:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 673DE10FE43;
	Fri, 29 May 2026 12:21:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="MKgyE5Ci";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="oHVgbi/z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C47AA10FE43;
 Fri, 29 May 2026 12:21:40 +0000 (UTC)
Date: Fri, 29 May 2026 14:21:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1780057299;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Lk6J8Yay4yJw29ZMp1a44IgTYA3zIlsMamRU59bPHEk=;
 b=MKgyE5Ci4fmUYnA5JOEnB4n4ljFf5Au4EUx66ry6llbuCwmprN1bF9bi91TPTzfqcPG/rh
 UdAaxjYkl26wGci7upMeJXE4aQsyKimpRJKJgu10pRFDT9zDZe+u7U4jFReNbVB4dBmoG4
 +ng4kxcR1YkcKmhaT0vcTbtHI5S4FWmujTC9+qlywDmoNIa2BUEv9NBG1Cl8k7nAhuvhCB
 Rs15yPqHLzolELj25UgKJia8ckEm+ikv2vKE/CMgmAno0K3n3CLwIm7wE49P3BUYDRDKBz
 IxwTtVBWHzfrNu2G0QG1sHHjqzoatLBVyxmMj4OqGbYxf0X7iJojHr7fdvEkeQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1780057299;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Lk6J8Yay4yJw29ZMp1a44IgTYA3zIlsMamRU59bPHEk=;
 b=oHVgbi/zFlD1tQdiDiwM6YKnRLFgyzv6Lnl4DT2HVyxg5F/aj3ru4qKlT7az3qQRzXBfv/
 K0fGA1qi1JoTY5AA==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Maarten Lankhorst <dev@lankhorst.se>
Cc: Runyu Xiao <runyu.xiao@seu.edu.cn>, jani.nikula@linux.intel.com,
 rodrigo.vivi@intel.com, joonas.lahtinen@linux.intel.com,
 tursulin@ursulin.net, airlied@gmail.com, simona@ffwll.ch,
 clrkwllms@kernel.org, rostedt@goodmis.org, jerome.anand@intel.com,
 pierre-louis.bossart@linux.dev, tiwai@suse.de,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-rt-devel@lists.linux.dev, jianhao.xu@seu.edu.cn,
 stable@vger.kernel.org
Subject: Re: [PATCH] drm/i915/audio: use generic_handle_irq_safe() for LPE
 audio irq
Message-ID: <20260529122137.VZtFvQvw@linutronix.de>
References: <20260528154551.3708290-1-runyu.xiao@seu.edu.cn>
 <20260529074816.k1K16jyy@linutronix.de>
 <2023cf0e-85a8-4128-857d-cae806ff0e58@lankhorst.se>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <2023cf0e-85a8-4128-857d-cae806ff0e58@lankhorst.se>
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[linutronix.de,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[linutronix.de:s=2020,linutronix.de:s=2020e];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[seu.edu.cn,linux.intel.com,intel.com,ursulin.net,gmail.com,ffwll.ch,kernel.org,goodmis.org,linux.dev,suse.de,lists.freedesktop.org,vger.kernel.org,lists.linux.dev];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	DKIM_TRACE(0.00)[linutronix.de:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[bigeasy@linutronix.de,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linutronix.de:mid,linutronix.de:dkim]
X-Rspamd-Queue-Id: 4FBF46022C2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 2026-05-29 11:50:18 [+0200], Maarten Lankhorst wrote:
> Hey,
Hi,

> It's been absolutely rock stable since the last time I submitted it.
> I've been using it on my local machine, and the amount of times >100us
> (evasion failed) with and without PREEMPT_RT are identical with
> the vblank changes.
> It still applies cleanly when rebasing.
> 
> The vblank patches are the most involved change, and they ensure that
> absolutely no lock contention happens in the critical path with irqs off.

So that is the good part.

> Unfortunately the status is still same as the time I submitted it before it,
> and pending reviews on the series.

my memory is that you have no work items and the auto-CI isn't worse
than before. The series just waits for a review then?

> Kind regards,
> ~Maarten Lankhorst

Sebastian
