Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 456942D7193
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Dec 2020 09:22:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FC616EC96;
	Fri, 11 Dec 2020 08:22:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com
 [IPv6:2a00:1450:4864:20::144])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 402FC6E030
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Dec 2020 08:22:28 +0000 (UTC)
Received: by mail-lf1-x144.google.com with SMTP id 23so12186170lfg.10
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Dec 2020 00:22:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2E9lnRJNmKjai1CIMZDErJ15p/JF+kjk/cqnxyQj4Dg=;
 b=Sg4cSLWy6IZckqqkeAYWtdI97FK7RQhI79W1qCeW5ejotUknN/MdP8pOZwiJvJO7uZ
 1g0ChmDEvTyZ23ejJpGuTfR48BiteLYb+OL/KdYtSnujk6eEaD9Otld8+8Y1g2J3MkZy
 tBoVa7+XwKCBx80qyQ1lEL4q5LEMtfg9bICdHSQfD91by6GBTt8+YUD0LCicXSAecwzu
 UGwPYj7soqTu0UOqubjIEnM4Y4/SCD8/nRHiZ64GIKuX4gCcysUu5Anc/HkVqEhjxidw
 EOW9o76j1CYEbDn1Eew6P3PNlPF6IkqqOz0I8fQQT/K3wBjEt9vG4/VgfYmY3wimDZ9S
 ttIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2E9lnRJNmKjai1CIMZDErJ15p/JF+kjk/cqnxyQj4Dg=;
 b=oHLLoJ96YU93yDIDHphvgyICSv0cgnOaxRKWZNBGcQmNxIVTUfgLAchReb3vldnS9G
 KJEIfO1dmStdo8jOoozldwLC5Zo+esSRpThncXM6alZ+1wgDMq9+5TR0Kl1F9UZMJqrx
 oasHN1CfSwl3BcNF0udRB9GVn57lNa4Wf2RgTVLqwpgaMggvrJO04Ft1wQYQPxVgpOg5
 Prb3ICx0gd9Pty5a0mLkSIbNoxtUIjAvCaXZfIno8HMkoYg1wXLRmYNjveTlGmpnipK3
 OqYFDsbFZQWR7qPx0/IiCjIDHUZ2xl5Hh5JfxLdhyUUNAvexC4usB4CPyzWZSFg4PL8j
 KS1g==
X-Gm-Message-State: AOAM533Dt6hC1YK+83h4wnTTeJo7E8LhNde8S1Ot+KJgTK3bmdL3HHde
 lJg9JEmyELS7YwmlSmzVip8tjdgPLXNXGZMEuahjig==
X-Google-Smtp-Source: ABdhPJy4uaPybRyNu7M8RrLozSmYT+Qwt4yF5yxQSb1/0NkgevgBErArzujQXpmZiKS3OBl0PE4C3Qi2TwkDPG47X1M=
X-Received: by 2002:a19:8384:: with SMTP id f126mr3904234lfd.649.1607674946619; 
 Fri, 11 Dec 2020 00:22:26 -0800 (PST)
MIME-Version: 1.0
References: <20201210192536.118432146@linutronix.de>
 <20201210194044.157283633@linutronix.de>
In-Reply-To: <20201210194044.157283633@linutronix.de>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 11 Dec 2020 09:22:15 +0100
Message-ID: <CACRpkdZuPp0KN1BCJ26vWH1=nopaD-ctv6bh-rt2X9bJczZE-Q@mail.gmail.com>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [Intel-gfx] [patch 16/30] mfd: ab8500-debugfs: Remove the racy
 fiddling with irq_desc
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
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 Saeed Mahameed <saeedm@nvidia.com>, netdev <netdev@vger.kernel.org>,
 afzal mohammed <afzal.mohd.ma@gmail.com>,
 Michal Simek <michal.simek@xilinx.com>, linux-s390@vger.kernel.org,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Dave Jiang <dave.jiang@intel.com>, xen-devel@lists.xenproject.org,
 Leon Romanovsky <leon@kernel.org>, linux-rdma@vger.kernel.org,
 Marc Zyngier <maz@kernel.org>, Helge Deller <deller@gmx.de>,
 Russell King <linux@armlinux.org.uk>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 linux-pci <linux-pci@vger.kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 Heiko Carstens <hca@linux.ibm.com>, Wambui Karuga <wambui.karugax@gmail.com>,
 Allen Hubbe <allenbh@gmail.com>, Juergen Gross <jgross@suse.com>,
 Will Deacon <will@kernel.org>, Rob Herring <robh@kernel.org>,
 David Airlie <airlied@linux.ie>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Stefano Stabellini <sstabellini@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Lee Jones <lee.jones@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>, linux-parisc@vger.kernel.org,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, LKML <linux-kernel@vger.kernel.org>,
 Tariq Toukan <tariqt@nvidia.com>, Jon Mason <jdmason@kudzu.us>,
 linux-ntb@googlegroups.com, intel-gfx <intel-gfx@lists.freedesktop.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Dec 10, 2020 at 8:42 PM Thomas Gleixner <tglx@linutronix.de> wrote:

> First of all drivers have absolutely no business to dig into the internals
> of an irq descriptor. That's core code and subject to change. All of this
> information is readily available to /proc/interrupts in a safe and race
> free way.
>
> Remove the inspection code which is a blatant violation of subsystem
> boundaries and racy against concurrent modifications of the interrupt
> descriptor.
>
> Print the irq line instead so the information can be looked up in a sane
> way in /proc/interrupts.
>
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Lee Jones <lee.jones@linaro.org>
> Cc: linux-arm-kernel@lists.infradead.org

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
