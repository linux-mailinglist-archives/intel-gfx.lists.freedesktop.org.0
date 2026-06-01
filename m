Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QDNlOw9LHWphYgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 11:04:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C086A61C12A
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 11:04:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6C1011302C;
	Mon,  1 Jun 2026 09:04:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="B2GdRWr8";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="IWvLdx/j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 143FF113027;
 Mon,  1 Jun 2026 09:04:11 +0000 (UTC)
Date: Mon, 1 Jun 2026 11:04:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1780304649;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ik1uKRusyundeT2sZRztzdMkAM29x8hbhdWNGZgfseU=;
 b=B2GdRWr8dSvAJ5hJjYwHIDfQ6pZ3MbvJN26WVt6eek4CpGNiMBgZSrBwvVoKpf3TIEGV0S
 tN9n5XnQ2hlN+t8/hEOzF8ujKNGKrOnart0AOWrE+++mYs3H7cFhAV8fnGWsNnJ2W0VJKv
 zvUUMn8wnRXvBSd+WMAbSO4y5yOCDDAZRnQTtv7g8qb6XeTtrwujGA0BvZx6NMlCVYNCfd
 b+srLV68DclQ3Iqi1xce4Uil8dUhhU+CM57YB8+iml1xZzigTcmljKEAmdEUGDQSKe9Bx+
 pZ9gzFNADVi9wbL6XSSdMLtA0ruzXS73aBMEFjDwfb6rR3ZFAFwKy7mL0qgNYQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1780304649;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ik1uKRusyundeT2sZRztzdMkAM29x8hbhdWNGZgfseU=;
 b=IWvLdx/jEyLJiSSDyRSQfwWxkpaMoAEP/AgnwoUJSzVMKnkrpvaZjbK86nbnYU44Agr6s7
 WFOPrx0355ecdVDg==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Runyu Xiao <runyu.xiao@seu.edu.cn>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Maarten Lankhorst <dev@lankhorst.se>, rodrigo.vivi@intel.com,
 joonas.lahtinen@linux.intel.com, tursulin@ursulin.net,
 airlied@gmail.com, simona@ffwll.ch, clrkwllms@kernel.org,
 rostedt@goodmis.org, jerome.anand@intel.com,
 pierre-louis.bossart@linux.dev, tiwai@suse.de,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-rt-devel@lists.linux.dev, jianhao.xu@seu.edu.cn
Subject: Re: [PATCH v2] drm/i915/audio: use generic_handle_irq_safe() for LPE
 audio irq
Message-ID: <20260601090407.EUaO0Wzo@linutronix.de>
References: <20260531152307.1283430-1-runyu.xiao@seu.edu.cn>
 <20260531153108.1448185-1-runyu.xiao@seu.edu.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20260531153108.1448185-1-runyu.xiao@seu.edu.cn>
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
	FREEMAIL_CC(0.00)[linux.intel.com,lankhorst.se,intel.com,ursulin.net,gmail.com,ffwll.ch,kernel.org,goodmis.org,linux.dev,suse.de,lists.freedesktop.org,vger.kernel.org,lists.linux.dev,seu.edu.cn];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[seu.edu.cn:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,linutronix.de:mid,linutronix.de:dkim]
X-Rspamd-Queue-Id: C086A61C12A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 2026-05-31 23:31:08 [+0800], Runyu Xiao wrote:
> intel_lpe_audio_irq_handler() forwards the LPE audio child IRQ from the
> i915 parent IRQ path with generic_handle_irq(). The forwarded child top
> half is not an independent hardirq entry point; it inherits the context
> of the outer i915 interrupt dispatch path.
=E2=80=A6
>=20
> Link: https://lore.kernel.org/all/20260310115709.2276203-16-dev@lankhorst=
=2Ese/
> Fixes: eef57324d926 ("drm/i915: setup bridge for HDMI LPE audio driver")
> Suggested-by: Maarten Lankhorst <dev@lankhorst.se>
> Signed-off-by: Runyu Xiao <runyu.xiao@seu.edu.cn>

If you want to send this as an individual patch, please take Maarten
original patch, add your signed-off by below and send it while keeping
him as Author.

Sebastian
