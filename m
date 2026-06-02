Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qO1MJ3F4HmqPjQkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 08:30:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74416628FF0
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 08:30:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1576710EC28;
	Tue,  2 Jun 2026 06:30:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="typz2QUm";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="2BIwIP7i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D039010EC24;
 Tue,  2 Jun 2026 06:30:03 +0000 (UTC)
Date: Tue, 2 Jun 2026 08:29:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1780381799;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Ecggid4oxBPetO9VpD9pgbKrnVT8Kxu3BoqG4VRuLbY=;
 b=typz2QUmbKfo+Q6/hTQy/WbKJq6sXmiN4N3qdWYLujpSvVtsSmu/4B5Iu9nhbg6TZ0/z1k
 KPt5PNGXPlN+U0rgWEyHYkm9mXS3MUkR4A4SJuYZqNkSS2+5gZO3sOrnx/17beSYVJKHBG
 iLhuLvMLpw4Oe48JGKHaMsQpyFt3YSHCo0UDsU71PgfBA50pGw3NJXDagptw45rNg2jbCn
 oovTq17aRiBQxI6pxjlUYW0pJEuUFw3XxSMwlUvOymxAuOE9r5vq/nF56L26i2HpCBD5ey
 XWb9Qj4jfKTNBn4ipmVpUY+lFWVx4lRMRyDmrxBHqIgl+1ukk8vNJVzJfcQ+7g==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1780381799;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Ecggid4oxBPetO9VpD9pgbKrnVT8Kxu3BoqG4VRuLbY=;
 b=2BIwIP7ijhYHOgzJGQ/Jk9AmUAqnSuGIS4ltnmmeyUc+iYjyc47tMZ3uzueiR2RNQ2b9Cq
 5FlYlewRfVaAkjCQ==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Runyu Xiao <runyu.xiao@seu.edu.cn>
Cc: jani.nikula@linux.intel.com, rodrigo.vivi@intel.com,
 joonas.lahtinen@linux.intel.com, tursulin@ursulin.net,
 airlied@gmail.com, simona@ffwll.ch, dev@lankhorst.se,
 matthew.brost@intel.com, uma.shankar@intel.com,
 pierre-louis.bossart@linux.dev, jerome.anand@intel.com,
 tiwai@suse.de, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 jianhao.xu@seu.edu.cn
Subject: Re: [PATCH v3] drm/i915/display: Fix intel_lpe_audio_irq_handler for
 PREEMPT-RT
Message-ID: <20260602062957.0Nbtw_yY@linutronix.de>
References: <20260602004515.1907422-1-runyu.xiao@seu.edu.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260602004515.1907422-1-runyu.xiao@seu.edu.cn>
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
	FREEMAIL_CC(0.00)[linux.intel.com,intel.com,ursulin.net,gmail.com,ffwll.ch,lankhorst.se,linux.dev,suse.de,lists.freedesktop.org,vger.kernel.org,seu.edu.cn];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,seu.edu.cn:email,linutronix.de:email,linutronix.de:mid,linutronix.de:dkim,lankhorst.se:email]
X-Rspamd-Queue-Id: 74416628FF0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 2026-06-02 08:45:15 [+0800], Runyu Xiao wrote:
> From: Maarten Lankhorst <dev@lankhorst.se>
> 
> The LPE audio interrupt comes from the i915 interrupt handler. It
> should be in irq disabled context.
> 
> With PREEMPT_RT enabled, the IRQ handler is threaded.
> Because intel_lpe_audio_irq_handler() may be called in threaded IRQ context,
> generic_handle_irq_safe API disables the interrupts before calling LPE's
> interrupt top half handler.
> 
> This fixes braswell audio issues with RT enabled.
> 
> Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
> Reviewed-by: Matthew Brost <matthew.brost@intel.com>
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>
> Signed-off-by: Runyu Xiao <runyu.xiao@seu.edu.cn>

Reviewed-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>

Sebastian
