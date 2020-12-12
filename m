Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 73D4B2D838F
	for <lists+intel-gfx@lfdr.de>; Sat, 12 Dec 2020 01:46:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 568C36E835;
	Sat, 12 Dec 2020 00:46:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com
 [IPv6:2a00:1450:4864:20::143])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 551A56E836
 for <intel-gfx@lists.freedesktop.org>; Sat, 12 Dec 2020 00:46:06 +0000 (UTC)
Received: by mail-lf1-x143.google.com with SMTP id m25so15856104lfc.11
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Dec 2020 16:46:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1p8BkEtCdcNBP/TpCqa88TfNrEdwTBnXM61elkmQDlU=;
 b=vPmJzs+nnMzMYiLeSl4C70AwwAUmtSXcRtz7EHFhXOG3+HSYoFdEGzQYdbnIfuLhe1
 cpLA6/bKDco/ZW56K0yojauLy12p9RMJ4MYQUMAZkQKn1JGQikvuaZfR0PCAwR/VHwqu
 l8KSlmgfW9XQH81QbMWcZWDg6fTfP5u9gInsHFToPISthtmCvix2Zi4MyAVk8WOEDUbJ
 6rVaVkrA8lMaHHNzl8tzPLP3FKzwRwCbx4UWePv66IKRrK3BWVszh2/HuHa0/BXzK05/
 +RmxfJa60vjGUHEMlcdmB6LQFBStfB7tIZX79j1mfET935nYYecl+y81TGJ83zzfgTnD
 hTzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1p8BkEtCdcNBP/TpCqa88TfNrEdwTBnXM61elkmQDlU=;
 b=VP5xRpFR0TEuwKvzShEhB+VG6LxmHGbJz/8Wz4SUc5utW/q4DKi0Dy4nYKJezcnpMQ
 AG+g9df5sQDU53rEe9zvpposTlGQPgdNTl/yWWwRi6YmrGUqaYU5gFtgs1FLSlfyUmvi
 iAYV0Bf2g9CguJZFxOg70k6mz5g6pfieFQoZNAKKZzWMLnL03AEXVjnwE0Rr91/jekpY
 czQ1ByXxHM7Wd6MMOWQVK5kf52oH8NWoeFlqwsv+ELh5iH1zsDQ2JTCBEDiCNRgLKcdR
 Hf6ffYI+nZka5/FPrWr1tY/2SjynGD1tnDkfu0zimKhV5HJ+nAmijL4MJ37i5zZaaKWY
 mYLQ==
X-Gm-Message-State: AOAM533cwn5K3O5btdELO4jfnRQL4Mkr88DOH+ZQYzNm32eXp2tAPEYe
 kfU4qn78HlG34McxgzaYvk8MApjlzuxxx0LJx7EjcA==
X-Google-Smtp-Source: ABdhPJw+G3KfJG3M7IoDnPiDCepv2YgkNV/jArpapqMifWmjCRwgJbTiMDpguzIYWZxJHM0zdf1udksfd+uvUSH+FdI=
X-Received: by 2002:a05:651c:205b:: with SMTP id
 t27mr2692550ljo.368.1607733964618; 
 Fri, 11 Dec 2020 16:46:04 -0800 (PST)
MIME-Version: 1.0
References: <20201210192536.118432146@linutronix.de>
 <20201210194044.065003856@linutronix.de>
In-Reply-To: <20201210194044.065003856@linutronix.de>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 12 Dec 2020 01:45:53 +0100
Message-ID: <CACRpkdbKZzaTq+Am6q38Ya5wuUjiMbLE5g2i8bb_mJEWTkXgCg@mail.gmail.com>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [Intel-gfx] [patch 15/30] pinctrl: nomadik: Use irq_has_action()
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
 Will Deacon <will@kernel.org>, Michal Simek <michal.simek@xilinx.com>,
 linux-s390@vger.kernel.org, afzal mohammed <afzal.mohd.ma@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Dave Jiang <dave.jiang@intel.com>, xen-devel@lists.xenproject.org,
 Leon Romanovsky <leon@kernel.org>, linux-rdma@vger.kernel.org,
 Marc Zyngier <maz@kernel.org>, Helge Deller <deller@gmx.de>,
 Russell King <linux@armlinux.org.uk>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 linux-pci <linux-pci@vger.kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 Heiko Carstens <hca@linux.ibm.com>, Wambui Karuga <wambui.karugax@gmail.com>,
 Allen Hubbe <allenbh@gmail.com>, Juergen Gross <jgross@suse.com>,
 Rob Herring <robh@kernel.org>, David Airlie <airlied@linux.ie>,
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

> Let the core code do the fiddling with irq_desc.
>
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-gpio@vger.kernel.org

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

I suppose you will funnel this directly to Torvalds, else tell me and
I'll apply it to my tree.

Yours,
Linus Walleij
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
