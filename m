Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id g2/LKnlxT2pOgwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Jul 2026 12:01:29 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A00A72F429
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Jul 2026 12:01:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linutronix.de header.s=2020 header.b=dmI2n3Dy;
	dkim=pass header.d=linutronix.de header.s=2020e header.b=y2Wiy6rG;
	dmarc=pass (policy=none) header.from=linutronix.de;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E38510E6A4;
	Thu,  9 Jul 2026 10:01:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23C5710E6A4;
 Thu,  9 Jul 2026 10:01:19 +0000 (UTC)
Date: Thu, 9 Jul 2026 12:01:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1783591275;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=FqQCOTptLlptTKhPh6RLDNm9t7bmkVyXpDJ6LnwO9oQ=;
 b=dmI2n3DykHtIFfy/8Zd80zLfl09c6PbqlHrJyzEAupcQAaZiof0r0+h7xei5nd5etbJTG0
 sF2wRJTtspM11Djv2mlDvdOtlVjD6lecKdpI+GXEtzQuFKt3QBvoXorHBbVgt0rsPQUYb2
 ZSHghpCaPcNY4jvyR86HYetWbIht1i1iOXvdP0TiIgwaLV6oL+WgGGCWtMBe2ELNClU3zc
 0bktjmKr1roJtwPwlVviiuj6aulGUIz+P1bmerWmi7awx+A1coK3ZVcYHhaZugriBnKSkT
 2yh4tn9/GbRKsWHuxuOgY5JDR1cPFXXGdXn/sw+0ovEu1K/F/63s/JTEA+a//g==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1783591275;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=FqQCOTptLlptTKhPh6RLDNm9t7bmkVyXpDJ6LnwO9oQ=;
 b=y2Wiy6rGOrItN4cI2ulAvzqMK5bdpMeW+cx9aE3Lu8tFeQD9gFVMk/SJ6cI8KP6IwrZQc/
 xcrqjovOgwIqdcCg==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Maarten Lankhorst <dev@lankhorst.se>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v4 0/7] drm/i915: All fixes to make i915 work well with
 PREEMPT_RT.
Message-ID: <20260709100114.WZISwM7f@linutronix.de>
References: <20260706114823.752313-1-dev@lankhorst.se>
 <20260706122026.IJAiyhhw@linutronix.de>
 <c4222f81-72b2-4eea-a900-da327f0df928@lankhorst.se>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <c4222f81-72b2-4eea-a900-da327f0df928@lankhorst.se>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[linutronix.de,none];
	R_DKIM_ALLOW(-0.20)[linutronix.de:s=2020,linutronix.de:s=2020e];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RSPAMD_URIBL_FAIL(0.00)[linutronix.de:query timed out,lists.freedesktop.org:query timed out];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[bigeasy@linutronix.de,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[linutronix.de:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linutronix.de:from_mime,linutronix.de:dkim,linutronix.de:mid,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3A00A72F429

On 2026-07-09 11:53:52 [+0200], Maarten Lankhorst wrote:
> Hello Sebastian,

Hi,

> The test results are available, mostly looks good except 1 spurious incomplete.
> 
> I tried reproducing it, but was unable to. It seems that pre-existing incompletes
> on the specific IGT testcase already happened before the changes.
> 
> Do you want to review the patches you didn't author, so I can move forward?
> Even if you are uncomfortable to review the signalers_lock changes, it should
> be possible to have the rest reviewed and merged upstream.

I planned to do while you asked me but got distracted.
Let me do it now and I want to get this done.

> Kind regards,
> ~Maarten Lankhorst

Sebastian
