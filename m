Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8CmIMI6ocGnwYwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 11:21:02 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 283FB551F6
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 11:21:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 075A510E10C;
	Wed, 21 Jan 2026 10:21:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="i79p2adC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CC5A10E10C;
 Wed, 21 Jan 2026 10:20:59 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 295A060053;
 Wed, 21 Jan 2026 10:20:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CAE77C116D0;
 Wed, 21 Jan 2026 10:20:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1768990857;
 bh=13ZO07wCiJVv+RdE9V2/uwg5zktyFxMIq5IM164EO2A=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=i79p2adClM9Iw4AIa6a4W7gkgWYAZYdsDphk21EZ/5TmHz887yOPZRs9aSg4axksz
 5O3mF3TkkszefLlTJKqSLFg09sdopCuw1sQdiw2kfrahCkXhYqiieGseGm4++Xv3E4
 RPMpmssDMLKlnRQUgC+1Gj5g9ioblwpmdV0SLc8SaAnqzdpD6zIqsS3klKN3em6/tG
 gFidlt9u9wSRq+/QO7Sz7tjIMNzJ+sgveevzC+oAUAsQwhntNv1qabU9TPQrWCA6za
 ipDcdR9QeEKVfNpSpXm3uw9fgGVU/WNoIxwSt9mFoFcaNPeyp3YVRRfBQBCLi/1arD
 zGTUBTwdCaPag==
Message-ID: <1a68f6d5-6541-4b04-8628-397001cb1e55@kernel.org>
Date: Wed, 21 Jan 2026 11:20:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: REGRESSION on linux-next (next-20260115)
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Cc: "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>,
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
From: Hans de Goede <hansg@kernel.org>
Content-Language: en-US, nl
In-Reply-To: <20260121090154.Lpaj9hrr@linutronix.de>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hansg@kernel.org,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: 283FB551F6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi,

On 21-Jan-26 10:01, Sebastian Andrzej Siewior wrote:
> On 2026-01-21 13:59:38 [+0530], Borah, Chaitanya Kumar wrote:
>>
>> Looks like it.
>>   9:          1          0  IO-APIC   9-fasteoi   acpi, INT0002
> 
> Does the following help?
> 
> diff --git a/drivers/platform/x86/intel/int0002_vgpio.c b/drivers/platform/x86/intel/int0002_vgpio.c
> index 6f5629dc3f8db..562e880256436 100644
> --- a/drivers/platform/x86/intel/int0002_vgpio.c
> +++ b/drivers/platform/x86/intel/int0002_vgpio.c
> @@ -206,8 +206,8 @@ static int int0002_probe(struct platform_device *pdev)
>  	 * FIXME: augment this if we managed to pull handling of shared
>  	 * IRQs into gpiolib.
>  	 */
> -	ret = devm_request_irq(dev, irq, int0002_irq,
> -			       IRQF_ONESHOT | IRQF_SHARED, "INT0002", chip);
> +	ret = devm_request_irq(dev, irq, int0002_irq, IRQF_SHARED, "INT0002",
> +			       chip);
>  	if (ret) {
>  		dev_err(dev, "Error requesting IRQ %d: %d\n", irq, ret);
>  		return ret;
> diff --git a/include/linux/interrupt.h b/include/linux/interrupt.h
> index 266f2b39213a0..b2bb878abd113 100644
> --- a/include/linux/interrupt.h
> +++ b/include/linux/interrupt.h
> @@ -228,7 +228,7 @@ static inline int __must_check
>  devm_request_irq(struct device *dev, unsigned int irq, irq_handler_t handler,
>  		 unsigned long irqflags, const char *devname, void *dev_id)
>  {
> -	return devm_request_threaded_irq(dev, irq, handler, NULL, irqflags,
> +	return devm_request_threaded_irq(dev, irq, handler, NULL, irqflags | IRQF_COND_ONESHOT,
>  					 devname, dev_id);
>  }
>  
> My guess would be that the int0002_vgpio.c results in a warning without
> requesting the interrupt while the interrupt.h change should fix it and
> the warning should be gone.

Right, so as the commit message of commit 8f812373d195 ("platform/x86: intel:
int0002_vgpio: Pass IRQF_ONESHOT to request_irq()") explains
the int0002_vgpio driver *must* use the same flags to request
the IRQ as the ACPI core does, which is why it passes IRQF_ONESHOT
even though it does not have a threaded handler.

This worked fine until commit aef30c8d569c ("genirq: Warn about using
IRQF_ONESHOT without a threaded handler") as Chaitanya's bisect
pointed out.

Sebastian as I agree that switching to IRQF_COND_ONESHOT on
the int0002_vgpio.c side is a good way to fix this.

But If I'm reading your proposed changes correct then your suggestion
is to drop IRQF_ONESHOT from int0002_vgpio.c and then instead of
replacing it with IRQF_COND_ONESHOT you want to always pass
IRQF_COND_ONESHOT when using the non-threaded request_irq functions?

I'm not objecting against this, just making sure I understand
correctly.

Note in that case you should also add this to the non devm_
prefixed version.

Regards,

Hans


