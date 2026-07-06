Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 39kOB7OkS2qVXgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 14:50:59 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D71710C86
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 14:50:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lankhorst.se header.s=default header.b=EFN47mwh;
	dmarc=pass (policy=none) header.from=lankhorst.se;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B65189FA5;
	Mon,  6 Jul 2026 12:50:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2027989FA5;
 Mon,  6 Jul 2026 12:50:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1783342254;
 bh=7r+siOYaJs4PQAazhD5o8ko6J7tWMYCwN536i5wzqYg=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=EFN47mwhH7IrwMCpMv80OA7asq2N+TV0ciI2F9yeSKHFDL3gI3mbnJ6H7O5YS9iVJ
 /Xfvs98yyjNrG/jIUHrmPTHsfshI3iJ+QsTx9WuZNEjPi/bZ/5m/Y6DlMpT3kgIcOl
 l6+1b/gfxGT+v5KeN94iQcraz7PeVInXaJPFG7i4JjccI7cqkMJnRAlt181iO3D8Fl
 e9+KgnmORvsZEcWYOfedKWgfx8ewSjMllgiEVvxdsv2pCwF8E03d8ML6OWwEmGBO/W
 ELtSsLOw4JP4kzZxKKW95p1Jw9BmFNXhQgst+yBvmAmEq7EO5QfS2ktYdkEpr8L25j
 FW6ise1CYSkdQ==
Message-ID: <623e11ee-2f45-471d-bef1-d7bd9b717e1a@lankhorst.se>
Date: Mon, 6 Jul 2026 14:51:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/7] drm/i915: All fixes to make i915 work well with
 PREEMPT_RT.
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20260706114823.752313-1-dev@lankhorst.se>
 <20260706122026.IJAiyhhw@linutronix.de>
Content-Language: en-US
From: Maarten Lankhorst <dev@lankhorst.se>
In-Reply-To: <20260706122026.IJAiyhhw@linutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
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
	DMARC_POLICY_ALLOW(-0.50)[lankhorst.se,none];
	R_DKIM_ALLOW(-0.20)[lankhorst.se:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lankhorst.se:from_mime,lankhorst.se:dkim,lankhorst.se:mid];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dev@lankhorst.se,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lankhorst.se:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 78D71710C86

Hey,

On 7/6/26 14:20, Sebastian Andrzej Siewior wrote:
> On 2026-07-06 13:48:16 [+0200], Maarten Lankhorst wrote:
>> All fixes to make the core i915 module (without display) working correctly on
>> PREEMPT_RT.
>>
>> Some fixes are still needed, as the selftests still fail. But otherwise the
>> test results were looking good on PREEMPT_RT.
>>
>> It looks like the patch that added a spinlock caused a regression on !PREEMPT_RT,
>> and may even have caused similar test failures on PREEMPT_RT, so to fix it
>> I removed RCU entirely, and converted to a locked implementation instead.
>>
>> This time at least, i915 live selftests pass on !PREEMPRT_RT for at least 1 machine
>> with same config as CI.
> 
> I saw the version counter overflowed and is at 4 here. I appreciate all
> the work. May I ask how are things?

I'm fixing the bugs in core i915 with this specific PREEMPT_RT series,
and left out the display changes. This showed that the failures in i915's
selftests were at least partially related to the PREEMPT_RT changes in the
last patch.

Hopefully v4 passes CI and if you want, you can review those changes so they
can be merged. Looks like sashiko is great at finding concurrency bugs,
changing from RCU back to a normal lock is non-trivial. It unfortunately found
1 more in add_signaling_context for a missing !list_empty(&ce->signal_link),
but should be safe to review regardless.

Kind regards,
~Maarten
