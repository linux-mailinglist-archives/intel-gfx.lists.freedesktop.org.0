Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93C5EA611E8
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Mar 2025 14:03:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A12410E9DF;
	Fri, 14 Mar 2025 13:03:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="n6yHA8xd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com
 [209.85.208.177])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F95810E34F
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Mar 2025 09:48:22 +0000 (UTC)
Received: by mail-lj1-f177.google.com with SMTP id
 38308e7fff4ca-30bfc79ad97so30830571fa.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Mar 2025 02:48:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1741945701; x=1742550501; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=FD6bznsu01iYGcm6ewJe4RuYE462CwiH5xGheRZGZw0=;
 b=n6yHA8xdmnRDvO1uesgyU5mLGCQEx+JFlW7FwcBx+dKxuElvWA26HMg5JB/YnqpJ+m
 D/x/utgr+VEmXkAPq4ySsG7yC9HNulgcjgoPBuJU88svWX3l72ZGHBl1DK9SG1QMs2dv
 M5PvjXAWywo8OQq1bFWp15IOoFRy5mnyJYPxmXINYuEwBzGdQBs0llhBzzFmw+PBrtKO
 KLYULLYgP4BDHxL82kyRjP1ualTkOmQXuBpzx8h5NI9B/3I2kUK3e72gIHWcSr65zsZp
 4vLNHJe7QVyqOOEcTbtKhVNZNg8UcgmK4eJmQ6mv5NxoajTpBVFp2JqfsMlphqVL1IaY
 A32w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1741945701; x=1742550501;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=FD6bznsu01iYGcm6ewJe4RuYE462CwiH5xGheRZGZw0=;
 b=EcUxfAD+34J5ApqKE7AHFYvPM0JPeDuom2A7fr1rgT7gRZjDJeKAhT6/+Ndq4ArL0b
 JoT97nCPMCi7i7SutRmXmWjz/gYT0wqQEVLmkCywLknSxY5Q8xcFj8xNbBqmg7qB9jgA
 41p0p56cHaJm/xshjZfYskeNuGBBn3EmVrZBbwfTMhGRSs4IsfHFFygnNx0HkBVxO0yQ
 yh0PGZPPqUCVxSQKPiZ6LM7oT3/LtshXKYSXKXkjCU/7MPTHddDied7ZnjuoYwvH1ZR4
 ASjWzRYBhqVvEoUCO0S/DRKlrEAXot+/xFSTXTjNifZbFzIBWsURI/T2vD1kcbnwZl6U
 HOlQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCULXGmh/BsNlXLbIOLseUEUgFfB3Le5U7fYOJrT4VXPe46GzerzZ8CW6uL4pAgZoaj8CMFiX/uj2h0=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yx7HP/1otXTOyXNN8ZaihIFp8acKeBz/m67OaZfdkT/FWDhMdJ2
 9o6ELTGpp5uvUpA4ZGME+sXG2v7nrkE0UO0VL77FG2FgzDfELPwWFjIo9QkT99RFKMA8uOR6+eh
 IwOEcjNajs3p9jZyxnrOaR4ISEMwXab5k6nOZDQ==
X-Gm-Gg: ASbGnct0CJmG9UAtQHkTqYl3SJrckPx8Iz/yrb/bQFRCX1HVDnG+u1Jl7x+ukZvGy3v
 iNClBkRmQOxH4i9dPzaGXliWoHCT19rSGWzKfue6gS5q97BRryRbNV4jYgVDZYOKcVqC/tZTbwI
 D5gBOQiKyxkBtme0Ukf0ByzmaOwxpOEtA=
X-Google-Smtp-Source: AGHT+IF+BXUJPCiL1c7sbvSs4gfqol1v20qox8jtJslAuMcy8M2YGJF8kQcGGVoAZtCirbS3VlFVKlXtncaYF36CYig=
X-Received: by 2002:a05:6512:ba8:b0:549:7145:5d2d with SMTP id
 2adb3069b0e04-549c3f97f37mr544029e87.16.1741945700612; Fri, 14 Mar 2025
 02:48:20 -0700 (PDT)
MIME-Version: 1.0
References: <SJ1PR11MB61295DE21A1184AEE0786E25B9D22@SJ1PR11MB6129.namprd11.prod.outlook.com>
In-Reply-To: <SJ1PR11MB61295DE21A1184AEE0786E25B9D22@SJ1PR11MB6129.namprd11.prod.outlook.com>
From: Zhangfei Gao <zhangfei.gao@linaro.org>
Date: Fri, 14 Mar 2025 17:48:09 +0800
X-Gm-Features: AQ5f1Jp8h2KQrj8cXSVVa65hkY1o46EVlIPZXIQrn2pTPHmKX_laXhYL3waLDDA
Message-ID: <CABQgh9HBqbJYnUqJzG+nOY=B8nQ-8Scy8i0ctszBm8rzpocNFw@mail.gmail.com>
Subject: Re: Regression on linux-next (next-20250312)
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Cc: "robin.murphy@arm.com" <robin.murphy@arm.com>, 
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>, 
 "iommu@lists.linux.dev" <iommu@lists.linux.dev>, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, 
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, 
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>, "Saarinen,
 Jani" <jani.saarinen@intel.com>, 
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Fri, 14 Mar 2025 13:03:45 +0000
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

Hi, Borah

On Fri, 14 Mar 2025 at 17:18, Borah, Chaitanya Kumar
<chaitanya.kumar.borah@intel.com> wrote:
>
> Hello Robin,
>
> Hope you are doing well. I am Chaitanya from the linux graphics team in Intel.
>
> This mail is regarding a regression we are seeing in our CI runs[1] on linux-next repository.
>
> Since the version next-20250312 [2], we are seeing the following regression
>
> `````````````````````````````````````````````````````````````````````````````````
> <4>[    6.246790] reg-dummy reg-dummy: late IOMMU probe at driver bind, something fishy here!
> <4>[    6.246812] WARNING: CPU: 0 PID: 1 at drivers/iommu/iommu.c:449 __iommu_probe_device+0x140/0x570
> <4>[    6.246822] Modules linked in:
> <4>[    6.246830] CPU: 0 UID: 0 PID: 1 Comm: swapper/0 Not tainted 6.14.0-rc6-next-20250312-next-20250312-g9fbcd7b32bf7+ #1
> <4>[    6.246838] Hardware name: Intel Corporation Arrow Lake Client Platform/MTL-S UDIMM 2DPC EVCRB, BIOS MTLSFWI1.R00.4400.D85.2410100007 10/10/2024
> <4>[    6.246847] RIP: 0010:__iommu_probe_device+0x140/0x570
> `````````````````````````````````````````````````````````````````````````````````
> Details log can be found in [3].
>
> After bisecting the tree, the following patch [4] seems to be the first "bad" commit
>
> `````````````````````````````````````````````````````````````````````````````````````````````````````````
> commit bcb81ac6ae3c2ef95b44e7b54c3c9522364a245c
> Author: Robin Murphy mailto:robin.murphy@arm.com
> Date:   Fri Feb 28 15:46:33 2025 +0000
>
>     iommu: Get DT/ACPI parsing into the proper probe path
>
> `````````````````````````````````````````````````````````````````````````````````````````````````````````
>
> We also verified that if we revert the patch the issue is not seen.
>
> Could you please check why the patch causes this regression and provide a fix if necessary?

I just send one fix caused by this patch
Just FYI

[PATCH] PCI: declare quirk_huawei_pcie_sva as FIXUP_HEADER

"bcb81ac6ae3c iommu: Get DT/ACPI parsing into the proper probe path"
changes arm_smmu_probe_device sequence.

From
pci_bus_add_device(virtfn)
-> pci_fixup_device(pci_fixup_final, dev)
-> arm_smmu_probe_device

To
pci_device_add(virtfn, virtfn->bus)
-> pci_fixup_device(pci_fixup_header, dev)
-> arm_smmu_probe_device

So declare the fixup as pci_fixup_header to take effect
before arm_smmu_probe_device.

If your system has fixup, it may need a change '
from
DECLARE_PCI_FIXUP_FINAL
to
DECLARE_PCI_FIXUP_HEADER

Thanks


>
> Thank you.
>
> Regards
>
> Chaitanya
>
> [1] https://intel-gfx-ci.01.org/tree/linux-next/combined-alt.html?
> [2] https://web.git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?h=next-20250312
> [3] https://intel-gfx-ci.01.org/tree/linux-next/next-20250312/bat-arls-6/boot0.txt
> [4] https://web.git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?h=next-20250312&id=bcb81ac6ae3c2ef95b44e7b54c3c9522364a245c
>
>
