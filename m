Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5978245AADA
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Nov 2021 19:07:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2822B6E44E;
	Tue, 23 Nov 2021 18:07:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com
 [209.85.210.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC3976E413
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Nov 2021 18:07:19 +0000 (UTC)
Received: by mail-ot1-f47.google.com with SMTP id
 h19-20020a9d3e53000000b0056547b797b2so150515otg.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Nov 2021 10:07:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zISZonE+jfcuqih+VqZkba/z0VBN8Lm0GEq4vywk61c=;
 b=ZyqM3TdZm3n6VnBMpXXce1hi6e9CvQWH5RllvxL7FmP1x7GxPxF2YgaOFT3lkC/MrR
 3QhMC8rsHccQN2zmq1EN2itpYdPAIrZSqcD+K0Bm1zkOBRGBh520xh1v5DBJc0ZK36G1
 Kwe/c9xwDwtufdWTO4YwV7eGoQypliv4EIE+qI3FsSC8BH018tg7x0kh3/vEybtDob7e
 Z3m+X58g1RXV+A36C+WOm3NmxfygVb2AkHjsKP6U0mhH2qYXuoB7xuDZ3IbzwgfvVpCT
 9NaS14Kv9VRghnBF7nja77Qj6ymcHyUVKZWp6MwLsQBn8030hJt7noGYZgxZA6sYcey/
 FGNg==
X-Gm-Message-State: AOAM5327LOheycTITs1/rCN1CNm9woJUZazCKkFqMLpTMx5Vx3QrXLQ3
 CU1HmuwfNJO3VM2pOYapg+rTlfs4RWAzn7fIGSg=
X-Google-Smtp-Source: ABdhPJwF2ep52rxDLG6UpRp3xdWO1LK2aeGUp8ki3Y6ep8Od1B4KnhnGqvqMfV3sQKXaxIByEQB9U2fm2A3fPfoMQds=
X-Received: by 2002:a05:6830:1e57:: with SMTP id
 e23mr6327907otj.16.1637690838752; 
 Tue, 23 Nov 2021 10:07:18 -0800 (PST)
MIME-Version: 1.0
References: <20211119113644.1600-1-alx.manpages@gmail.com>
 <20211119113644.1600-3-alx.manpages@gmail.com>
In-Reply-To: <20211119113644.1600-3-alx.manpages@gmail.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 23 Nov 2021 19:07:07 +0100
Message-ID: <CAJZ5v0jGgxgTWQ-DLehRE_GPoRMz2TnT469uNE8k6TX7NxQdEA@mail.gmail.com>
To: Alejandro Colomar <alx.manpages@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH 02/17] Use memberof(T,
 m) instead of explicit NULL dereference
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
Cc: Corey Minyard <cminyard@mvista.com>,
 Ajit Khaparde <ajit.khaparde@broadcom.com>,
 "Michael S. Tsirkin" <mst@redhat.com>, Jason Wang <jasowang@redhat.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Chris Mason <clm@fb.com>,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Ketan Mukadam <ketan.mukadam@broadcom.com>,
 Somnath Kotur <somnath.kotur@broadcom.com>,
 "open list:TARGET SUBSYSTEM" <linux-scsi@vger.kernel.org>,
 Subbu Seetharaman <subbu.seetharaman@broadcom.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Mike Rapoport <rppt@linux.ibm.com>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Miguel Ojeda <ojeda@kernel.org>, Borislav Petkov <bp@suse.de>,
 virtualization@lists.linux-foundation.org, Len Brown <lenb@kernel.org>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 John Hubbard <jhubbard@nvidia.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Josef Bacik <josef@toxicpanda.com>,
 Jitendra Bhivare <jitendra.bhivare@broadcom.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 David Sterba <dsterba@suse.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sriharsha Basavapatna <sriharsha.basavapatna@broadcom.com>,
 netdev <netdev@vger.kernel.org>, Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>, "John S . Gruber" <JohnSGruber@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>, linux-btrfs@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Nov 19, 2021 at 12:37 PM Alejandro Colomar
<alx.manpages@gmail.com> wrote:
>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> Cc: Ajit Khaparde <ajit.khaparde@broadcom.com>
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> Cc: Arnd Bergmann <arnd@arndb.de>
> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> Cc: Borislav Petkov <bp@suse.de>
> Cc: Corey Minyard <cminyard@mvista.com>
> Cc: Chris Mason <clm@fb.com>
> Cc: Christian Brauner <christian.brauner@ubuntu.com>
> Cc: David Sterba <dsterba@suse.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Jason Wang <jasowang@redhat.com>
> Cc: Jitendra Bhivare <jitendra.bhivare@broadcom.com>
> Cc: John Hubbard <jhubbard@nvidia.com>
> Cc: John S. Gruber <JohnSGruber@gmail.com>
> Cc: Jonathan Cameron <Jonathan.Cameron@huawei.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Josef Bacik <josef@toxicpanda.com>
> Cc: Kees Cook <keescook@chromium.org>
> Cc: Ketan Mukadam <ketan.mukadam@broadcom.com>
> Cc: Len Brown <lenb@kernel.org>
> Cc: "Michael S. Tsirkin" <mst@redhat.com>
> Cc: Miguel Ojeda <ojeda@kernel.org>
> Cc: Mike Rapoport <rppt@linux.ibm.com>
> Cc: Nick Desaulniers <ndesaulniers@google.com>
> Cc: "Rafael J. Wysocki" <rafael@kernel.org>
> Cc: Rasmus Villemoes <linux@rasmusvillemoes.dk>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Russell King <linux@armlinux.org.uk>
> Cc: Somnath Kotur <somnath.kotur@broadcom.com>
> Cc: Sriharsha Basavapatna <sriharsha.basavapatna@broadcom.com>
> Cc: Subbu Seetharaman <subbu.seetharaman@broadcom.com>
> Cc: <intel-gfx@lists.freedesktop.org>
> Cc: <linux-acpi@vger.kernel.org>
> Cc: <linux-arm-kernel@lists.infradead.org>
> Cc: <linux-btrfs@vger.kernel.org>
> Cc: <linux-scsi@vger.kernel.org>
> Cc: <netdev@vger.kernel.org>
> Cc: <virtualization@lists.linux-foundation.org>
> ---
>  arch/x86/include/asm/bootparam_utils.h  |  3 ++-
>  arch/x86/kernel/signal_compat.c         |  5 +++--
>  drivers/gpu/drm/i915/i915_utils.h       |  5 ++---
>  drivers/gpu/drm/i915/intel_runtime_pm.h |  2 +-
>  drivers/net/ethernet/emulex/benet/be.h  |  7 ++++---
>  drivers/net/ethernet/i825xx/ether1.c    |  7 +++++--
>  drivers/scsi/be2iscsi/be.h              |  7 ++++---
>  drivers/scsi/be2iscsi/be_cmds.h         |  5 ++++-
>  fs/btrfs/ctree.h                        |  5 +++--
>  include/acpi/actypes.h                  |  4 +++-

The change in actypes.h would need to be submitted to the upstream
ACPICA project via https://github.com/acpica/acpica/

Thanks!

>  include/linux/container_of.h            |  6 +++---
>  include/linux/virtio_config.h           | 14 +++++++-------
>  12 files changed, 41 insertions(+), 29 deletions(-)
