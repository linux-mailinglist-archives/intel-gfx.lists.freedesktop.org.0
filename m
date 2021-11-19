Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D34745717E
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Nov 2021 16:16:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F47C6EABC;
	Fri, 19 Nov 2021 15:16:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com
 [IPv6:2a00:1450:4864:20::333])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F4736EC19
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Nov 2021 11:37:09 +0000 (UTC)
Received: by mail-wm1-x333.google.com with SMTP id
 p3-20020a05600c1d8300b003334fab53afso10237030wms.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Nov 2021 03:37:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=i/fXbPVRBN7s8r5M3WRHcaBt2UUAnkHDSIE3JuEClQs=;
 b=LdKaBDoXj5kLikAyAmdIKIT2p/1ZnFNnEoDHrFpvPz7+3Ge8onDjpohtiCMAnlnsiK
 SBn8bjvzha8CnoksjBka38G2LiNZqnYBv275eAjwpBruCcNX7PYKuRJSnX8RcO5ORT/g
 l2Ebp7hBv9FRd6DoviS5UaQJN+kUwYCf+cZGSD0dbUhMFVOjR6DfDQGHL+bmpzTYKkAD
 U2E5MYD17sxdcnjcomWe4oG7wo7H90SpoWYL2I41ybq+DVRU7A/hifhcbTucr7CG5zdC
 sOxBPibe1UMLSiucWQu3denVSkrZVSS/diEnVBHTo80lgv+7qZffYh7SMRb7wNWX2Iaj
 qOCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=i/fXbPVRBN7s8r5M3WRHcaBt2UUAnkHDSIE3JuEClQs=;
 b=2v5NF1q1pYk0CDDSLyDwMCeLdwnS/HgcPoNXBBPnwqCP3Q5WW9/ym7LRlHkKuZDEZC
 fsUF5wQdcG4urFHTD8FOoOBZJuDp1SBbLm7HDf7OkiGolhKnrr+UGHvzSykvLCoHC/2u
 kZO+af4zS024qj3PEabsuWgJGLXsrNhfNlE5eRKOy8Icedi+7jGqhzUdna+FkmrnPQND
 DlJC4H0E3vLnKBt9ezCf0Yl6I2y2ECZ/bdqTKgWDUj64PuUqqjjDNbgsCWRc+gMH/ZeM
 C36fLiMF0dlcisqtHav0vsjQ+lm1AJCEbf3TJ95Jkqtvyhzm0cgwRCPU1R3NOSV9Pc4l
 CPvQ==
X-Gm-Message-State: AOAM531wMhdPy/bHkypjJFWvBz51l3ktwRdPTICSUQDdPJX6s51S4B7c
 wWyhVoG60uU96Q9ym7LhkSY=
X-Google-Smtp-Source: ABdhPJyJbfoMgk75T8Fyd/k0Splt6ZMCLNuREiyUbadwsKMpXolha/fffbI6cizRQl/wpfUClrVQ4g==
X-Received: by 2002:a7b:cd02:: with SMTP id f2mr324816wmj.115.1637321827678;
 Fri, 19 Nov 2021 03:37:07 -0800 (PST)
Received: from ady1.alejandro-colomar.es ([170.253.36.171])
 by smtp.googlemail.com with ESMTPSA id f15sm3361260wmg.30.2021.11.19.03.37.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Nov 2021 03:37:07 -0800 (PST)
From: Alejandro Colomar <alx.manpages@gmail.com>
To: LKML <linux-kernel@vger.kernel.org>
Date: Fri, 19 Nov 2021 12:36:28 +0100
Message-Id: <20211119113644.1600-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 19 Nov 2021 15:16:46 +0000
Subject: [Intel-gfx] [PATCH 00/17] Add memberof(), split some headers,
 and slightly simplify code
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
Cc: Alejandro Colomar <alx.manpages@gmail.com>,
 Corey Minyard <cminyard@mvista.com>,
 Ajit Khaparde <ajit.khaparde@broadcom.com>,
 "Michael S. Tsirkin" <mst@redhat.com>, Jason Wang <jasowang@redhat.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Chris Mason <clm@fb.com>,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Ketan Mukadam <ketan.mukadam@broadcom.com>,
 Somnath Kotur <somnath.kotur@broadcom.com>, linux-scsi@vger.kernel.org,
 Subbu Seetharaman <subbu.seetharaman@broadcom.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Mike Rapoport <rppt@linux.ibm.com>, linux-acpi@vger.kernel.org,
 Miguel Ojeda <ojeda@kernel.org>, Borislav Petkov <bp@suse.de>,
 virtualization@lists.linux-foundation.org, Len Brown <lenb@kernel.org>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 John Hubbard <jhubbard@nvidia.com>, intel-gfx@lists.freedesktop.org,
 Josef Bacik <josef@toxicpanda.com>,
 Jitendra Bhivare <jitendra.bhivare@broadcom.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 David Sterba <dsterba@suse.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org,
 Sriharsha Basavapatna <sriharsha.basavapatna@broadcom.com>,
 netdev@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>,
 "John S . Gruber" <JohnSGruber@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>, linux-btrfs@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


Hi all,

I simplified some xxxof() macros,
by adding a new macro memberof(),
which implements a common operation in many of them.

I also splitted many of those macros into tiny headers,
since I noticed that touching those headers implied
recompiling almost the whole kernel.

Hopefully after this patch there will be less
things to recompile after touching one of those.

Having simpler headers means that now one can
include one of those without pulling too much stuff
that might break other stuff.

I removed some unnecessary casts too.

Every few commits in this series
and of course after the last commit
I rebuilt the kernel and run for a while with it without any problems.

Please note that I have written very few kernel code
and for example some files wouldn't let me include some of these files,
so I didn't change those.

What I mean is that,
even though this is super obvious and shouldn't break stuff,
and I'm not new to C,
I'm quite new to the kernel,
and ask that reviewers take deep look, please.


In the first and second commits
I changed a lot of stuff in many parts,
and that's why I CCd so many people (also in this cover letter).
However, to avoid spamming,
and since it would be a nightmare to
find all the relevant people affected in so many different areas,
I only CCd in 01, 02 and in the cover letter.
If anyone is interested in reading the full patch set,
I sent it to the LKML.


Thanks,
Alex


Alejandro Colomar (17):
  linux/container_of.h: Add memberof(T, m)
  Use memberof(T, m) instead of explicit NULL dereference
  Replace some uses of memberof() by its wrappers
  linux/memberof.h: Move memberof() to separate header
  linux/typeof_member.h: Move typeof_member() to a separate header
  Simplify sizeof(typeof_member()) to sizeof_field()
  linux/NULL.h: Move NULL to a separate header
  linux/offsetof.h: Move offsetof(T, m) to a separate header
  linux/offsetof.h: Implement offsetof() in terms of memberof()
  linux/container_of.h: Implement container_of_safe() in terms of
    container_of()
  linux/container_of.h: Cosmetic
  linux/container_of.h: Remove unnecessary cast to (void *)
  linux/sizeof_field.h: Move sizeof_field(T, m) to a separate header
  include/linux/: Include a smaller header if just for NULL
  linux/offsetofend.h: Move offsetofend(T, m) to a separate header
  linux/array_size.h: Move ARRAY_SIZE(arr) to a separate header
  include/: Include <linux/array_size.h> for ARRAY_SIZE()

 arch/x86/include/asm/bootparam_utils.h        |  3 +-
 arch/x86/kernel/signal_compat.c               |  5 ++--
 drivers/gpu/drm/i915/i915_sw_fence.c          |  1 +
 drivers/gpu/drm/i915/i915_utils.h             |  5 ++--
 drivers/gpu/drm/i915/intel_runtime_pm.h       |  3 +-
 drivers/net/ethernet/emulex/benet/be.h        | 10 +++----
 drivers/net/ethernet/i825xx/ether1.c          |  7 +++--
 drivers/platform/x86/wmi.c                    |  3 +-
 drivers/scsi/be2iscsi/be.h                    | 12 ++++----
 drivers/scsi/be2iscsi/be_cmds.h               |  5 +++-
 fs/btrfs/ctree.h                              |  5 ++--
 fs/proc/inode.c                               |  1 +
 include/acpi/actypes.h                        |  4 ++-
 include/crypto/internal/blake2b.h             |  1 +
 include/crypto/internal/blake2s.h             |  1 +
 include/crypto/internal/chacha.h              |  1 +
 include/drm/drm_mipi_dbi.h                    |  1 +
 include/drm/drm_mode_object.h                 |  1 +
 include/kunit/test.h                          |  1 +
 include/linux/NULL.h                          | 10 +++++++
 include/linux/arm_ffa.h                       |  1 +
 include/linux/array_size.h                    | 15 ++++++++++
 include/linux/blk_types.h                     |  1 +
 include/linux/can/core.h                      |  1 +
 include/linux/clk-provider.h                  |  1 +
 include/linux/container_of.h                  | 28 ++++++++++-------
 include/linux/counter.h                       |  1 +
 include/linux/crash_core.h                    |  1 +
 include/linux/efi.h                           |  1 +
 include/linux/extable.h                       |  2 +-
 include/linux/f2fs_fs.h                       |  1 +
 include/linux/filter.h                        |  3 ++
 include/linux/fs.h                            |  1 +
 include/linux/genl_magic_func.h               |  1 +
 include/linux/hashtable.h                     |  1 +
 include/linux/ieee80211.h                     |  1 +
 include/linux/kbuild.h                        |  3 ++
 include/linux/kernel.h                        |  7 +----
 include/linux/kfifo.h                         |  1 +
 include/linux/kvm_host.h                      |  3 ++
 include/linux/libata.h                        |  1 +
 include/linux/llist.h                         |  1 +
 include/linux/memberof.h                      | 11 +++++++
 include/linux/mlx5/device.h                   |  1 +
 include/linux/mlx5/driver.h                   |  1 +
 include/linux/mm_types.h                      |  1 +
 include/linux/moduleparam.h                   |  3 ++
 include/linux/mtd/rawnand.h                   |  1 +
 include/linux/netdevice.h                     |  1 +
 include/linux/netfilter.h                     |  1 +
 include/linux/nvme-fc.h                       |  2 ++
 include/linux/offsetof.h                      | 17 +++++++++++
 include/linux/offsetofend.h                   | 19 ++++++++++++
 include/linux/pagemap.h                       |  1 +
 include/linux/phy.h                           |  1 +
 include/linux/phy_led_triggers.h              |  1 +
 include/linux/pinctrl/machine.h               |  1 +
 include/linux/property.h                      |  1 +
 include/linux/rcupdate.h                      |  1 +
 include/linux/rcupdate_wait.h                 |  1 +
 include/linux/regmap.h                        |  1 +
 include/linux/sched/task.h                    |  1 +
 include/linux/sizeof_field.h                  | 14 +++++++++
 include/linux/skb_array.h                     |  1 +
 include/linux/skbuff.h                        |  1 +
 include/linux/skmsg.h                         |  3 ++
 include/linux/slab.h                          |  2 ++
 include/linux/spinlock_types.h                |  1 +
 include/linux/stddef.h                        | 30 +++----------------
 include/linux/string.h                        |  5 +++-
 include/linux/surface_aggregator/controller.h |  1 +
 include/linux/surface_aggregator/serial_hub.h |  1 +
 include/linux/swap.h                          |  1 +
 include/linux/ti-emif-sram.h                  |  1 +
 include/linux/typeof_member.h                 | 11 +++++++
 include/linux/ucs2_string.h                   |  2 +-
 include/linux/vdpa.h                          |  1 +
 include/linux/virtio_config.h                 | 17 ++++++-----
 include/linux/wireless.h                      |  2 ++
 include/net/bond_3ad.h                        |  1 +
 include/net/dsa.h                             |  1 +
 include/net/ip_vs.h                           |  1 +
 include/net/netfilter/nf_conntrack_tuple.h    |  1 +
 include/net/netfilter/nf_tables.h             |  1 +
 include/net/netlink.h                         |  1 +
 include/rdma/uverbs_ioctl.h                   |  1 +
 include/rdma/uverbs_named_ioctl.h             |  1 +
 include/scsi/scsi_host.h                      |  1 +
 include/sound/soc-dapm.h                      |  1 +
 include/sound/soc.h                           |  1 +
 include/trace/events/wbt.h                    |  1 +
 include/uapi/linux/netfilter/xt_sctp.h        |  1 +
 include/xen/hvm.h                             |  1 +
 kernel/kallsyms.c                             |  3 +-
 94 files changed, 255 insertions(+), 79 deletions(-)
 create mode 100644 include/linux/NULL.h
 create mode 100644 include/linux/array_size.h
 create mode 100644 include/linux/memberof.h
 create mode 100644 include/linux/offsetof.h
 create mode 100644 include/linux/offsetofend.h
 create mode 100644 include/linux/sizeof_field.h
 create mode 100644 include/linux/typeof_member.h

-- 
2.33.1

