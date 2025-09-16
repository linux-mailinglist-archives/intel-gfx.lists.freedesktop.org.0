Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E65AFB59AFB
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Sep 2025 16:55:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F51210E7F7;
	Tue, 16 Sep 2025 14:55:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ebbCwBFa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com
 [209.85.215.176])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40A8C10E63D
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Sep 2025 04:48:11 +0000 (UTC)
Received: by mail-pg1-f176.google.com with SMTP id
 41be03b00d2f7-b54b2428fafso3218708a12.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Sep 2025 21:48:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1757998091; x=1758602891; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=MTEHvDm/IKR4tm1Bmr0HolxO+dzLmKu0Q858we1M/so=;
 b=ebbCwBFaCc+mwb2h/WMEbadEObr4SEYRJ9RV1H4u1D0OAJULddvGxLDyIo/cWGzCnA
 T1wl/UAvJ6wvDMtOEJR9QZ34rBbnwpOlx7R/7zS33kUmkONGbxh7rpWLs2SpZqF0/t91
 9X04gs6DNXR58EfmdoqoZMRysRQSV9nTMmOsUfN3qTheG7zZ6zUjGWjiMrW1yVZY5nEx
 /AjEGAup85bsmO40XXjSbNFqW4Tgno1LjEaUy7dGsSDqnmXAeudWXGP7S2FsxMomlZa0
 wcH9+aeQBNRj99jnteh5OraITRefBZRGSvO1GMqlNTWUBOxc9tu6MLpaei+3+/cvYY5+
 SQNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1757998091; x=1758602891;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=MTEHvDm/IKR4tm1Bmr0HolxO+dzLmKu0Q858we1M/so=;
 b=RHAyQzHolxLWwwnymEex1xS2+qkg4DQivKU+TjWEJIRC/qnCVVElawCqJqpn/etvkK
 wA1WB+uIEtlU9+WcTHPlBoTzuRa46kTFyfHgXqwPpzd0JUbnlJrWqGCq4yZurvu2FNKC
 gNeicJYUeeBsq4gpXlPvcOCjbYtD5Q1uQqUtX7MZXuWRymYe+9GC5x92TzXQlvrCx8yM
 N6wubOKQ7KHzeySLitTRF8FwZDKsKQ2LNwbDCybnBOuzQk7gDWM7dmfsNzZHIK5djN3v
 vYwqqHVr25ekc+n3ooeSwiKKL2u9nTgZH/vOVdmNkhIRnjJbulpt5ioGiCVPNyGEeOSk
 cHyA==
X-Forwarded-Encrypted: i=1;
 AJvYcCX1zNJqddHv7ojhoL/m48LgsLuNFYBwCSe1GQRjYl6CjkPzcg32RpT7SPp94Ji5oWXCZa33kN1ePJ0=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwYJ8Rx+P/6lKl1IlNnjBzDWB64gzaYk9hSxD2IXv9g3viR3P26
 rNADEkmi49la1K7Db70uZJ8+kAk3I5GDc23WhYsrBqsQXuHvFmIE4ZRO
X-Gm-Gg: ASbGncsianUcRniu01gTb5rkLwnbK7PAcUcwmmwSF7zNaunObXXZTK/N2vFsePA9lzh
 2EvKHkFscP02AezVB8vWiKMJg/eztjSpiz1Nzh4whzlfG6NYlyUeapK32ngz+7ba6zzpyth1u5F
 gqbh+BItibqDtG/ImzPygqDTxjplOg3G6W5IX3YUrwezJIlG/ihCyHmUh8b+OQfgyJt5VMFsI9/
 +b7qgI20q8cXOnPwcBOwCOykNshwdFGsOrhoeDLyEmP27qKwy0ziCSL8z3Y3ogo+bmTEUIGhVqu
 WZbs2mNusDvh9owQpGBRYJAeqOxYHaaAGpd6EKctPfICvgm/zVWGCUARjZsy4dnLWqcf1ZQJZSl
 IEnqATVrdIj6voRXK+wOBFMG593aRBCgshzLFTq0=
X-Google-Smtp-Source: AGHT+IEF2ZVvpNxJJFMqOknMo3Fo0PQL8lIHY8yKPy5AwqV+Fi26iyI0GpvDt9oGgKPIwk00E+AHOw==
X-Received: by 2002:a17:902:e790:b0:267:95b2:9c0f with SMTP id
 d9443c01a7336-26795b29cb0mr59076565ad.28.1757998090662; 
 Mon, 15 Sep 2025 21:48:10 -0700 (PDT)
Received: from pengdl-pc.mioffice.cn ([43.224.245.249])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-25ef09c77f8sm104600605ad.15.2025.09.15.21.48.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Sep 2025 21:48:09 -0700 (PDT)
From: pengdonglin <dolinux.peng@gmail.com>
To: tj@kernel.org, tony.luck@intel.com, jani.nikula@linux.intel.com,
 ap420073@gmail.com, jv@jvosburgh.net, freude@linux.ibm.com, bcrl@kvack.org,
 trondmy@kernel.org, longman@redhat.com, kees@kernel.org
Cc: bigeasy@linutronix.de, hdanton@sina.com, paulmck@kernel.org,
 linux-kernel@vger.kernel.org, linux-rt-devel@lists.linux.dev,
 linux-nfs@vger.kernel.org, linux-aio@kvack.org,
 linux-fsdevel@vger.kernel.org, linux-security-module@vger.kernel.org,
 netdev@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-wireless@vger.kernel.org, linux-acpi@vger.kernel.org,
 linux-s390@vger.kernel.org, cgroups@vger.kernel.org,
 pengdonglin <dolinux.peng@gmail.com>
Subject: [PATCH v3 00/14] Remove redundant rcu_read_lock/unlock() in spin_lock
Date: Tue, 16 Sep 2025 12:47:21 +0800
Message-Id: <20250916044735.2316171-1-dolinux.peng@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 16 Sep 2025 14:55:19 +0000
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

Since commit a8bb74acd8efe ("rcu: Consolidate RCU-sched update-side function definitions")
there is no difference between rcu_read_lock(), rcu_read_lock_bh() and
rcu_read_lock_sched() in terms of RCU read section and the relevant grace
period. That means that spin_lock(), which implies rcu_read_lock_sched(),
also implies rcu_read_lock().

There is no need no explicitly start a RCU read section if one has already
been started implicitly by spin_lock().

Simplify the code and remove the inner rcu_read_lock() invocation.

[1] https://elixir.bootlin.com/linux/v6.17-rc5/source/Documentation/RCU/rcu_dereference.rst#L407
[2] https://lore.kernel.org/lkml/20180829222021.GA29944@linux.vnet.ibm.com/
[3] https://lwn.net/Articles/777036/
[4] https://lore.kernel.org/lkml/6435833a-bdcb-4114-b29d-28b7f436d47d@paulmck-laptop/

pengdonglin (14):
  ACPI: APEI: Remove redundant rcu_read_lock/unlock() in spin_lock
  drm/i915/gt: Remove redundant rcu_read_lock/unlock() in spin_lock
  fs: aio: Remove redundant rcu_read_lock/unlock() in spin_lock
  nfs: Remove redundant rcu_read_lock/unlock() in spin_lock
  s390/pkey: Remove redundant rcu_read_lock/unlock() in spin_lock
  ipc: Remove redundant rcu_read_lock/unlock() in spin_lock
  yama: Remove redundant rcu_read_lock/unlock() in spin_lock
  cgroup: Remove redundant rcu_read_lock/unlock() in spin_lock
  cgroup/cpuset: Remove redundant rcu_read_lock/unlock() in spin_lock
  wifi: mac80211: Remove redundant rcu_read_lock/unlock() in spin_lock
  net: ncsi: Remove redundant rcu_read_lock/unlock() in spin_lock
  net: amt: Remove redundant rcu_read_lock/unlock() in spin_lock
  net: bonding: Remove redundant rcu_read_lock/unlock() in spin_lock
  wifi: ath9k: Remove redundant rcu_read_lock/unlock() in spin_lock

 drivers/acpi/apei/ghes.c                        |  2 --
 drivers/gpu/drm/i915/gt/intel_ring_submission.c |  2 --
 drivers/net/amt.c                               |  8 --------
 drivers/net/bonding/bond_3ad.c                  |  2 --
 drivers/net/wireless/ath/ath9k/xmit.c           |  2 --
 drivers/s390/crypto/pkey_base.c                 |  3 ---
 fs/aio.c                                        |  6 ++----
 fs/nfs/callback_proc.c                          |  2 --
 fs/nfs/nfs4state.c                              |  2 --
 fs/nfs/pnfs.c                                   | 12 +-----------
 fs/nfs/pnfs_dev.c                               |  4 ----
 ipc/msg.c                                       |  1 -
 ipc/sem.c                                       |  1 -
 ipc/shm.c                                       |  1 -
 ipc/util.c                                      |  2 --
 kernel/cgroup/cgroup.c                          |  2 --
 kernel/cgroup/cpuset.c                          |  6 ------
 kernel/cgroup/debug.c                           |  4 ----
 net/mac80211/cfg.c                              |  2 --
 net/mac80211/debugfs.c                          |  2 --
 net/mac80211/debugfs_netdev.c                   |  2 --
 net/mac80211/debugfs_sta.c                      |  2 --
 net/mac80211/sta_info.c                         |  2 --
 net/ncsi/ncsi-manage.c                          |  2 --
 security/yama/yama_lsm.c                        |  4 ----
 25 files changed, 3 insertions(+), 75 deletions(-)

-- 
2.34.1

