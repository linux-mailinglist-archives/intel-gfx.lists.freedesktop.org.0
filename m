Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id G226HJGdS2ooXAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 14:20:33 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2158A71070C
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 14:20:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linutronix.de header.s=2020 header.b=yYRL2aYI;
	dkim=pass header.d=linutronix.de header.s=2020e header.b="wNuj/vtn";
	dmarc=pass (policy=none) header.from=linutronix.de;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4A0810E386;
	Mon,  6 Jul 2026 12:20:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89B6310E386;
 Mon,  6 Jul 2026 12:20:29 +0000 (UTC)
Date: Mon, 6 Jul 2026 14:20:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1783340427;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=vwgjeZEUy5xLROQXQp8bFHb+5LD1aSG7+FqAwA2PMAE=;
 b=yYRL2aYIO5A/bd/VRkeD8QrEcQQeXQSdAzN8qmrIOkPVxNBp3W4LGOmqfCC0AvtjkBPqTv
 /Ao3NYub2PU7IOLCbycBo0BZ1UG+6l6fHkdrVMv5RXgr7puL1vDBQdRB97rXxIho+VWh8y
 5GgpdfiU+INESWsgTAo6Yi6EEUk0zVvjPnbCO2893LRm967dYDlpkgXe/u3d/VAUSkDCYi
 /K1ZMrAdhNPVGRbAoSuq0GSeqbeAQVHi/Uw3sBu646548EWBYXuvH7wEXQ5MrMTxHWmHa8
 dW+SgniCH6ZD0u26+KMIPOJS43CpqmT8kcxZlylOhaEzWkLALoeWXSPR+u+wvg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1783340427;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=vwgjeZEUy5xLROQXQp8bFHb+5LD1aSG7+FqAwA2PMAE=;
 b=wNuj/vtnG92JmVN3V2MZUGJfyzRhJjIPLenm9RnHqjhdCukEx0dkqzFYnkUx/oGiXjhApm
 u0XmQuXCSBKdAvAA==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Maarten Lankhorst <dev@lankhorst.se>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v4 0/7] drm/i915: All fixes to make i915 work well with
 PREEMPT_RT.
Message-ID: <20260706122026.IJAiyhhw@linutronix.de>
References: <20260706114823.752313-1-dev@lankhorst.se>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260706114823.752313-1-dev@lankhorst.se>
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[linutronix.de:s=2020,linutronix.de:s=2020e];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linutronix.de:+];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[bigeasy@linutronix.de,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2158A71070C

On 2026-07-06 13:48:16 [+0200], Maarten Lankhorst wrote:
> All fixes to make the core i915 module (without display) working correctly on
> PREEMPT_RT.
> 
> Some fixes are still needed, as the selftests still fail. But otherwise the
> test results were looking good on PREEMPT_RT.
> 
> It looks like the patch that added a spinlock caused a regression on !PREEMPT_RT,
> and may even have caused similar test failures on PREEMPT_RT, so to fix it
> I removed RCU entirely, and converted to a locked implementation instead.
> 
> This time at least, i915 live selftests pass on !PREEMPRT_RT for at least 1 machine
> with same config as CI.

I saw the version counter overflowed and is at 4 here. I appreciate all
the work. May I ask how are things?
 
Sebastian
