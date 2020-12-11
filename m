Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 017682D6C04
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Dec 2020 01:04:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53B3F6E50C;
	Fri, 11 Dec 2020 00:04:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75E216E50C;
 Fri, 11 Dec 2020 00:04:41 +0000 (UTC)
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1607645077;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=u4caiGj9t4ml+Fg2/LjvRAStceu1HqnXy5JxnlwmdFA=;
 b=eJe5C3lGb4euYOQ5NqFfsUko6q7Wl5m2rZaxuQ1CHGu4Pm86NUNkZ6G0XU9RxY87NzbBDc
 ldDhHBRuz8FurePK9zxQgdZ8itpY4Ib/oRUPYjSjeYReInLr9h7ip+USHGm7wSsyPmDxLv
 kj/1ZDcjtWRNli3PMHxskKmD4HwrP9Z+f8gXizycgXKbIaIDlgPtawVOXPrlZTSGX8Zfnf
 IWYCSqSxGsHEKzkDR85bq7gyV8KfYwwNkrQ2+SYN1BD6txCpqD9nrnJuEv/HOAgcIkRmdB
 DiW9PCPEtazOZRhcxwcj1i5rFCGn+T95DeUWuc+jttPExN8BouNdQm/34fvnLQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1607645077;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=u4caiGj9t4ml+Fg2/LjvRAStceu1HqnXy5JxnlwmdFA=;
 b=z8XrxSbQKj1sp6kNzbU4BhMX1SALkTHGkd40WvYT5KLsIfRVa3pnqtOT9ywbS00FEUqpMv
 tXHEfFQ9bRMVcSAg==
To: boris.ostrovsky@oracle.com, LKML <linux-kernel@vger.kernel.org>
In-Reply-To: <748d8d81-ac0f-aee2-1a56-ba9c40fee52f@oracle.com>
References: <20201210192536.118432146@linutronix.de>
 <20201210194044.972064156@linutronix.de>
 <748d8d81-ac0f-aee2-1a56-ba9c40fee52f@oracle.com>
Date: Fri, 11 Dec 2020 01:04:37 +0100
Message-ID: <87im99i4x6.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [patch 24/30] xen/events: Remove unused
 bind_evtchn_to_irq_lateeoi()
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, dri-devel@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>, "James E.J.
 Bottomley" <James.Bottomley@HansenPartnership.com>,
 Saeed Mahameed <saeedm@nvidia.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Will Deacon <will@kernel.org>,
 Michal Simek <michal.simek@xilinx.com>, linux-s390@vger.kernel.org,
 afzal mohammed <afzal.mohd.ma@gmail.com>,
 Stefano Stabellini <sstabellini@kernel.org>, Dave Jiang <dave.jiang@intel.com>,
 Leon Romanovsky <leon@kernel.org>, linux-rdma@vger.kernel.org,
 Marc Zyngier <maz@kernel.org>, Helge Deller <deller@gmx.de>,
 Russell King <linux@armlinux.org.uk>,
 Christian Borntraeger <borntraeger@de.ibm.com>, linux-pci@vger.kernel.org,
 xen-devel@lists.xenproject.org, Heiko Carstens <hca@linux.ibm.com>,
 Wambui Karuga <wambui.karugax@gmail.com>, Allen Hubbe <allenbh@gmail.com>,
 Rob Herring <robh@kernel.org>, David Airlie <airlied@linux.ie>,
 linux-gpio@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel@lists.infradead.org, Juergen Gross <jgross@suse.com>,
 linux-parisc@vger.kernel.org, Hou Zhiqiang <Zhiqiang.Hou@nxp.com>,
 Tariq Toukan <tariqt@nvidia.com>, Jon Mason <jdmason@kudzu.us>,
 linux-ntb@googlegroups.com, intel-gfx@lists.freedesktop.org, "David S.
 Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Dec 10 2020 at 18:19, boris ostrovsky wrote:
> On 12/10/20 2:26 PM, Thomas Gleixner wrote:
>> -EXPORT_SYMBOL_GPL(bind_evtchn_to_irq_lateeoi);
>
> include/xen/events.h also needs to be updated (and in the next patch for xen_set_affinity_evtchn() as well).

Darn, I lost that.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
