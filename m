Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0OnYMNC0cGndZAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 12:13:20 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 619A555CA5
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 12:13:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF80E10E1C6;
	Wed, 21 Jan 2026 11:13:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="XF5FjrMQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 377AA10E1C6;
 Wed, 21 Jan 2026 11:13:17 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id B8A1740182;
 Wed, 21 Jan 2026 11:13:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8EDA7C116D0;
 Wed, 21 Jan 2026 11:13:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1768993996;
 bh=8nIStO62/pj08BGcjmkSCW+2d8pEoCW7q94cFfuT93I=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=XF5FjrMQ5bszsg63Pif9qx/FPth0mMM/YZ1y7dfq9g6q5Xcnpzm6YyxIgRMr2Gd2C
 ti70ZYlixTilTQ72tjO6xoJ58wqMoeY6wuSJGLo/Dw8X9Z9IcDr4+n8zPQ1kWieRqv
 jieLMFHluglL3HPMN8i++15ZkDLtsEKl3fU85YGoMJjfjXQYYMT729BjiJfO8Vgs38
 X9plq940F7aXh+PS4XBdaQ+5ge4wlgk4JxmfwS1OOGeD5QkVpyTpcRJAiliX1c0UtL
 NdLqZ1BoTlbD+S7abMh5J4LaWFiJNvhm7dcwzT76M8oE1pKOcQVQUQ6MClut3PF7zH
 WcNc5MjqZmCZg==
Message-ID: <80325398-80a4-486a-ba4f-f2b8a23d7b17@kernel.org>
Date: Wed, 21 Jan 2026 12:13:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: REGRESSION on linux-next (next-20260115)
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 linux-kernel@vger.kernel.org, linux-rt-devel@lists.linux.dev,
 sfr@canb.auug.org.au, ilpo.jarvinen@linux.intel.com,
 regressions@leemhuis.info
References: <555f1c56-0f74-41bf-8bd2-6217e0aab0c6@intel.com>
 <20260121075348.5MyqcHFB@linutronix.de>
 <89de03a5-e5da-4d2e-8547-8e54ad73b324@intel.com>
 <20260121090154.Lpaj9hrr@linutronix.de>
 <1a68f6d5-6541-4b04-8628-397001cb1e55@kernel.org>
 <20260121103921.q-r7pAzL@linutronix.de>
From: Hans de Goede <hansg@kernel.org>
Content-Language: en-US, nl
In-Reply-To: <20260121103921.q-r7pAzL@linutronix.de>
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hansg@kernel.org,intel-gfx-bounces@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Queue-Id: 619A555CA5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi,

On 21-Jan-26 11:39, Sebastian Andrzej Siewior wrote:
> On 2026-01-21 11:20:53 [+0100], Hans de Goede wrote:
>> Hi,
> Hi,
> 
>> Right, so as the commit message of commit 8f812373d195 ("platform/x86: intel:
>> int0002_vgpio: Pass IRQF_ONESHOT to request_irq()") explains
>> the int0002_vgpio driver *must* use the same flags to request
>> the IRQ as the ACPI core does, which is why it passes IRQF_ONESHOT
>> even though it does not have a threaded handler.
>>
>> This worked fine until commit aef30c8d569c ("genirq: Warn about using
>> IRQF_ONESHOT without a threaded handler") as Chaitanya's bisect
>> pointed out.
> 
> Avoiding forced-threading on the int0002_vgpio handler is actually a
> problem on PREEMPT_RT. But yeah no complains from the stack.
> 
>> Sebastian as I agree that switching to IRQF_COND_ONESHOT on
>> the int0002_vgpio.c side is a good way to fix this.
>>
>> But If I'm reading your proposed changes correct then your suggestion
>> is to drop IRQF_ONESHOT from int0002_vgpio.c and then instead of
>> replacing it with IRQF_COND_ONESHOT you want to always pass
>> IRQF_COND_ONESHOT when using the non-threaded request_irq functions?
> 
> Correct.
> 
>> I'm not objecting against this, just making sure I understand
>> correctly.
>>
>> Note in that case you should also add this to the non devm_
>> prefixed version.
> 
> You mean request_irq() as it has been done in commit
>    c37927a203fa2 ("genirq: Set IRQF_COND_ONESHOT in request_irq()")

Yes I meant plain request_irq(), I was not aware this was already
done there.

Regards,

Hans


