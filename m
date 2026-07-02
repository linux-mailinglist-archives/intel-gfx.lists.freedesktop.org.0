Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VUK/L4hLRmrtNwsAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 13:29:12 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BCB46F6B41
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 13:29:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lankhorst.se header.s=default header.b=kePSWf1P;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=lankhorst.se
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3954A10F2F6;
	Thu,  2 Jul 2026 11:29:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F1A810F2F2;
 Thu,  2 Jul 2026 11:29:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1782991747;
 bh=rCxBw/VGd3l54sFh0psSmFyhdYRQVmOCSC3kVN6PhyY=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=kePSWf1POTVQee8IjNRDZt2yYLCptTIfA3mBtXcBglGgiUQelEKWo0WvcYQzGG+7a
 hDL1D3I/5WhR5Hn6+rTPJkijWg2AwisQgkiA8qzp8hy5lBXhh6Y+39D4WC1QWFwTUu
 c+oJkhxJelv6hXG5I22r9SC5Ee4a6wJ+SJpmDdsT5lGTBJmtYpc1CL/e5rxgzxUC+t
 uE3neNuWYxZPFPVXnjNjtybXJT9AjPs5E6ydW7Td9fMul2MYQdbi/lR9B6GJTvpl/a
 c9oPUrtDnzAdpxCtVpTwwjG3Yi8FAgA3PiYSrMjc0FAsf/1pVJ87Ji7JCmM/5GE8XG
 8hpEiw+6qxU3Q==
Message-ID: <8690d35f-e63c-4eb4-979a-52528896a1f7@lankhorst.se>
Date: Thu, 2 Jul 2026 13:29:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] drm/i915/display: Use intel_de_write_fw in
 intel_pipe_fastset
To: Jani Nikula <jani.nikula@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org
References: <20260702080346.431508-1-dev@lankhorst.se>
 <20260702080346.431508-4-dev@lankhorst.se>
 <ce83da3144dca9033d78c03bcc4e9a7c9ba3f9f5@intel.com>
Content-Language: en-US
From: Maarten Lankhorst <dev@lankhorst.se>
In-Reply-To: <ce83da3144dca9033d78c03bcc4e9a7c9ba3f9f5@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[lankhorst.se:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[dev@lankhorst.se,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_THREE(0.00)[4];
	ALIAS_RESOLVED(0.00)[];
	DKIM_TRACE(0.00)[lankhorst.se:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8BCB46F6B41

Hello,

On 7/2/26 10:44, Jani Nikula wrote:
> On Thu, 02 Jul 2026, Maarten Lankhorst <dev@lankhorst.se> wrote:
>> intel_set_pipe_src_size(), hsw_set_linetime_wm(),
>> intel_cpu_transcoder_set_m1_n1() and intel_set_transcoder_timings_lrr()
>> are called from an atomic context on PREEMPT_RT, and should be using the
>> _fw functions.
> 
> Why is intel_pipe_fastset() called in atomic context on PREEMPT_RT in
> the first place?
> 
> I have no idea how to maintain this.
> 
> It is *hard* for people to figure out when to use regular or _fw
> variants.
> 
> The _fw variant usage spreads all over the place with this, and you'll
> end up with folks cargo culting one or the other at random. Someone
> looking at, say, intel_vrr.c won't know why one or the other is being
> used.
> 
> I have given similar feedback before, and the response was like, "it's
> not that hard". I disagree.
> 
> I think we'll need either 1) a mechanism in non-PREEMPT_RT to flag the
> issues in CI, or 2) PREEMPT_RT runs in CI. I don't think either is going
> to be trivial to achieve.
> 
> 
> BR,
> Jani.

Ideally we'd stop using the implicit DMC lock, and replace those with explicit
DMC calls like the xe_forcewake_get/put pairs, together with the approximate
region those calls cover. I'd love to either take the DMC wakelock for the
entirety of a modeset so we can stop using the per-register notations,
and use those register accesses only for warning.

A lot of the register writes during vblank evasion use the
intel_de_write_dsb variant, which mostly does the right thing already.

This is purely about registers updated in the fastset case, which don't use the
dsb argument.

The option to flag for !PREEMPT_RT can be achieved in lockdep by adding a fake
vblank evasion lockdep lock, together with a might_lock() in the non-fw calls.

Kind regards,
~Maarten Lankhorst
