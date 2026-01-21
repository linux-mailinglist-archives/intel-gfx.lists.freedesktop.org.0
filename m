Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QLCVM7OHcGkEYQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 09:00:51 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56CAA532E3
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 09:00:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3A8410E6DB;
	Wed, 21 Jan 2026 08:00:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="d4kCt325";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="0+oMVAel";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 415 seconds by postgrey-1.36 at gabe;
 Wed, 21 Jan 2026 08:00:47 UTC
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4C9910E6D7;
 Wed, 21 Jan 2026 08:00:47 +0000 (UTC)
Date: Wed, 21 Jan 2026 08:53:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1768982030;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=L2q8M3UrjydVqdDqxNGy9BOk1w9FNNPzwD677+fHY+I=;
 b=d4kCt325DYPw0em7fsICBVjO9HzFxGIr+z8RYkEbepqy0r6WtWhehG9sFc08bCVdVQRty4
 zYo/awKVT6iipvx7KGWrhFWvrXoPCRF2QAmaCS/8p70LEQnSX/szukrPTgLU0lOhi/+b8+
 J88TtrvVC9hJYyeaApJNJE0YXn3zSbRXMGIehVt19255IGthfD6DA7blw6GXUpsd1d4EFG
 Rx4FCMw8kjuvT/nOLKKNYOhCsLsDFBmDyCK65/oXUtbSB7ic5TT4DZGT/whpCmM61x2ZMz
 1Z87rTO6+F92JC0RJyqbTgTtI/OgLIrEb0hPLPxJjiDagNKKAjzyxhKhauq19g==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1768982030;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=L2q8M3UrjydVqdDqxNGy9BOk1w9FNNPzwD677+fHY+I=;
 b=0+oMVAelr4theE4TX5E2r+mfr10029bnGW7Mt00xpEpQoMgJod/RCMzx3WMznszzSqvXDN
 PatAUuf0C8Q9JwAQ==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Cc: hansg@kernel.org, "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 linux-kernel@vger.kernel.org, linux-rt-devel@lists.linux.dev,
 sfr@canb.auug.org.au, ilpo.jarvinen@linux.intel.com,
 regressions@leemhuis.info
Subject: Re: REGRESSION on linux-next (next-20260115)
Message-ID: <20260121075348.5MyqcHFB@linutronix.de>
References: <555f1c56-0f74-41bf-8bd2-6217e0aab0c6@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <555f1c56-0f74-41bf-8bd2-6217e0aab0c6@intel.com>
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
	R_DKIM_ALLOW(-0.20)[linutronix.de:s=2020,linutronix.de:s=2020e];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[linutronix.de:+];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bigeasy@linutronix.de,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linutronix.de:email,linutronix.de:dkim,linutronix.de:mid]
X-Rspamd-Queue-Id: 56CAA532E3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 2026-01-21 12:42:16 [+0530], Borah, Chaitanya Kumar wrote:
> commit aef30c8d569c0f31715447525640044c74feb26f
> Author: Sebastian Andrzej Siewior bigeasy@linutronix.de
> Date:   Mon Jan 12 14:40:13 2026 +0100
> 
> 
>     genirq: Warn about using IRQF_ONESHOT without a threaded handler
> `````````````````````````````````````````````````````````````````````````````````````````````````````````
> 
> Looking at the irq register code in int0002_vgpio.c, it seems the warning
> comes from
> 
>         ret = devm_request_irq(dev, irq, int0002_irq,
>                                IRQF_ONESHOT | IRQF_SHARED, "INT0002", chip);
> 
> Looking at the history, this flag was added by the Commit 8f812373d195
> ("platform/x86: intel: int0002_vgpio: Pass IRQF_ONESHOT to request_irq()")
> to resolve another issue.
> 
> Any proposals for solving the WARN_ON?

Do you have the ACPI interrupt also on the same interrupt on the board
in question?

Sebastian
