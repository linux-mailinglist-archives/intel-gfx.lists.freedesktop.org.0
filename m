Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9QoFKrF/T2r4iAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Jul 2026 13:02:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C01872FFFC
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Jul 2026 13:02:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linutronix.de header.s=2020 header.b=4IaDf5B+;
	dkim=pass header.d=linutronix.de header.s=2020e header.b=VdwdA1sN;
	dmarc=pass (policy=none) header.from=linutronix.de;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21F6C10E090;
	Thu,  9 Jul 2026 11:02:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDDD510E090;
 Thu,  9 Jul 2026 11:02:05 +0000 (UTC)
Date: Thu, 9 Jul 2026 13:02:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1783594921;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=FySWx+2h8Y4gcqIJ96KDKfhGXlG+iSlkEpznsqFWM9o=;
 b=4IaDf5B+2yQLEVXL/mW4/VrV+UM7wjmx29zfUuV9yrul2YS6RolI77m4kfmU/6QRlOhQpp
 0tCu5GAn0yZHOw+cCBmxZfJacr20uuV+73NFeKa8etwBms/Xz3Hir90RztOZLcCa3S2bp/
 FhvBwz42yKR1Prfp8Bdrk6x8HKIvIgBZ30KRr0k1zvkrJu4E2YA0CHUpzGToT6PbbLs5I5
 vTX/NTXiGSpOcSzpb0CEv/9w8323skv/tEYfnogDYbzPe7foh3X1/7uxGOGZ3AAXYKerZw
 8Lcgpgv+2F0XFbctrmiQrzOKG4HgDAONQhRfduQg2D2Gqi+z20kkXvdz9Qdt3A==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1783594921;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=FySWx+2h8Y4gcqIJ96KDKfhGXlG+iSlkEpznsqFWM9o=;
 b=VdwdA1sNFb934bTDnq/D/xK5Azys6XiIfgwVDbKT+LIJiSu/GZcbnRgX+WyH0H2VZbE6K0
 Vm2hxtxsllMfIcAw==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Maarten Lankhorst <dev@lankhorst.se>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v4 0/7] drm/i915: All fixes to make i915 work well with
 PREEMPT_RT.
Message-ID: <20260709110200.2_5Eg8xF@linutronix.de>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,linutronix.de:from_mime,linutronix.de:dkim,linutronix.de:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8C01872FFFC

On 2026-07-09 11:53:52 [+0200], Maarten Lankhorst wrote:
> Hello Sebastian,
Hi Maarten,

> The test results are available, mostly looks good except 1 spurious incomplete.
> 
> I tried reproducing it, but was unable to. It seems that pre-existing incompletes
> on the specific IGT testcase already happened before the changes.
> 
> Do you want to review the patches you didn't author, so I can move forward?
> Even if you are uncomfortable to review the signalers_lock changes, it should
> be possible to have the rest reviewed and merged upstream.

This looks good to me. The condition in 5/7 is the as in 3/7. Not sure
if this should be merged into a helper or if it should be passed from
the caller. But it seems the information of the calling context is lost.

Please move forward ;)

> Kind regards,
> ~Maarten Lankhorst

Sebastian
