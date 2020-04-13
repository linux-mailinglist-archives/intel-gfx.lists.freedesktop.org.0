Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E78701A6314
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2020 08:36:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8679A89B5F;
	Mon, 13 Apr 2020 06:36:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com
 [IPv6:2607:f8b0:4864:20::741])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8A1889B5F;
 Mon, 13 Apr 2020 06:36:00 +0000 (UTC)
Received: by mail-qk1-x741.google.com with SMTP id x66so8484843qkd.9;
 Sun, 12 Apr 2020 23:36:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KMpw6K79lA/hKqIcCn2kKRSspiTDXkb2D8JjBGFr8zQ=;
 b=uz5+521nlHBocaytihEXa/MzRtF6lSl6OnhByj/4tYGgzxMgsJepipn9S0nNQZMDJz
 P9ee2v+EOPvrZl1stRWdTm9Of9V5vQioB7DSLHUIFvX8TZX3V1LKRUTYZ0fERav4znaL
 ZQk7orz6i9h4g6ZzPYHczp93XiJ1euMZ2rulHWmEGDtfoxa4CRd/aewcwaAEHQdI75YQ
 umHMLAFnEEzpJsCqD/LGFB7rPxGqxW9NBs//tY0mSGGrX1NmQJq+BRbg3orUyls6Eq5f
 nMjVM/Z+9Tvx9dFxQHWvQGH1c63oXgjcGODdQ7gvgZTD0bQCB1/tpNBC/EHYReMxxX+J
 oKMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KMpw6K79lA/hKqIcCn2kKRSspiTDXkb2D8JjBGFr8zQ=;
 b=T2cglWjchOkn2JZpzDjVNOQi2HjmcQFI3T4uf5BPK4kUEqY7WcyHu/ltutrr1lCYoN
 CAyBYsFc1Xf08y8XpfbjH9VGvH5xs1p2rOKfSFCf42VOjQ61PPzQ42P1vt1fv4MQ8wQa
 nxy7lKpaCU6Our4qzyycjQ0DUE1jPAta+s7vVjUy6nbE8siwI1Tsl1zcbVw5cRtsz/xT
 XdZ3xY8PO1Ej9931XRe3tWImZf6aKd0zkRHCYGEr5GFUE0YA2jpyjxBwMJyFQSVUUwHF
 JTyRP/I07Q63rtYwenjHnpdFieJY6pvb89GMoa8avEj2bCF8uQfcLEFsAAVxpojk+E2C
 GzFQ==
X-Gm-Message-State: AGi0PuaK3dIOD2tNgcqOc6RVNlPQbtTZVuWwlTHzfVSVj8vvaXRZgn5N
 fcc8Kex51DX0c5O4JsLvSEsuyEvGZopaDzCggwA=
X-Google-Smtp-Source: APiQypLAkeIgbG9vE5BMPoUzyd5dJuTAeNpXUZF1UwhH8UT1xsBlzhBm3dFEKEbDE+I8yBJb7oDCmyFUzPvyYPBCdUQ=
X-Received: by 2002:a37:ac6:: with SMTP id 189mr952703qkk.60.1586759759747;
 Sun, 12 Apr 2020 23:35:59 -0700 (PDT)
MIME-Version: 1.0
References: <1888197.j9z7NJ8yPn@kreacher> <5092680.jloV5Ae5OO@kreacher>
In-Reply-To: <5092680.jloV5Ae5OO@kreacher>
From: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Date: Sun, 12 Apr 2020 23:35:48 -0700
Message-ID: <CAL3LdT71aa3NfqoGTvmz-XzS7Ng=LqpwPROWyf=w_+PyvEET-w@mail.gmail.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Subject: Re: [Intel-gfx] [PATCH 5/7] PM: sleep: core: Rename
 DPM_FLAG_NEVER_SKIP
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
Cc: Linux PM <linux-pm@vger.kernel.org>, Linux PCI <linux-pci@vger.kernel.org>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI-devel <dri-devel@lists.freedesktop.org>,
 Linux ACPI <linux-acpi@vger.kernel.org>, Bjorn Helgaas <helgaas@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alan Stern <stern@rowland.harvard.edu>, Ulf Hansson <ulf.hansson@linaro.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Mika Westerberg <mika.westerberg@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Apr 10, 2020 at 9:03 AM Rafael J. Wysocki <rjw@rjwysocki.net> wrote:
>
> From: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>
>
> Rename DPM_FLAG_NEVER_SKIP to DPM_FLAG_NO_DIRECT_COMPLETE which
> matches its purpose more closely.
>
> No functional impact.
>
> Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>

Acked-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>

For the driver changes to e1000e, igb and igc.

> ---
>  Documentation/driver-api/pm/devices.rst    |  6 +++---
>  Documentation/power/pci.rst                | 10 +++++-----
>  drivers/base/power/main.c                  |  2 +-
>  drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c    |  2 +-
>  drivers/gpu/drm/i915/intel_runtime_pm.c    |  2 +-
>  drivers/gpu/drm/radeon/radeon_kms.c        |  2 +-
>  drivers/misc/mei/pci-me.c                  |  2 +-
>  drivers/misc/mei/pci-txe.c                 |  2 +-
>  drivers/net/ethernet/intel/e1000e/netdev.c |  2 +-
>  drivers/net/ethernet/intel/igb/igb_main.c  |  2 +-
>  drivers/net/ethernet/intel/igc/igc_main.c  |  2 +-
>  drivers/pci/pcie/portdrv_pci.c             |  2 +-
>  include/linux/pm.h                         |  6 +++---
>  13 files changed, 21 insertions(+), 21 deletions(-)
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
