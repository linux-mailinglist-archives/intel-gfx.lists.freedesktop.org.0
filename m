Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDA799B8EC2
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2024 11:08:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2872689C0D;
	Fri,  1 Nov 2024 10:08:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=cyberialabs.net header.i=@cyberialabs.net header.b="TaRGG2O9";
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=purelymail.com header.i=@purelymail.com header.b="LOkt9fTr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sendmail.purelymail.com (sendmail.purelymail.com
 [34.202.193.197])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F101610E41D
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2024 17:24:50 +0000 (UTC)
DKIM-Signature: a=rsa-sha256;
 b=TaRGG2O9lJrQdOu+oqLiIY6lEgt+2NFTz29BHR5ZgvTqojj2sUfJayFtCg1UJ7zHlXP1A9K5r4WQZV77A0hncY/6UWz4ePUrA0tFeAClYI6J+HypP8jSbRSG/A2/i21Kdn3JEd9ChBEfy6hkE3dcmrDiCMRydbt/lgmxe7EqOGEOHDW/YLSivwdCGLVOFEep4DzqzIpcLuebM53YGjY4UZ/VYQSb2AGhGBmsGm82c/FIFaiRQY6QH0G62uWgwf1XWMl7Dj8c5jTaaPfRwwibnrVmx6/kYNZnfMraoBsFW2botHCKXkvZTTZW7hi/TakU0B90gghvUf6mk8vK0mG11w==;
 s=purelymail3; d=cyberialabs.net; v=1;
 bh=2stMt/9EvA8ePHVn3HyMVddkYQc8SqKj4hjI6x7Ojj8=;
 h=Received:Date:From:To:Subject; 
DKIM-Signature: a=rsa-sha256;
 b=LOkt9fTrO63YyIFcX4eX+z8MsrbbAzRwkzL8C557F4zqEyQ9CsALxWRLxnGolQi5yHfUXrHrKPjTYAW7L+6QixQ/H2QqeMlT6J1dE6WKk6NPkUjrVKukfG/6TnKHiTIzuAPx3JcWdhJGMp2pZNS5m4tuUw4/e34gZvRbPoynn+QbJiZ9G1iQ8sCjxYkKGJEoYvEjft1TyAsCB9qx8+92uaKC2ZzvgOW7LcO2z18BKa7idTFOar9x3TOPG/nsArrMOOQR3y5/WQO70TK+OznCxNIqKzaHanyc+ceS3P048gAiMWtIOIJKdn1QXgA0J6RTqcDEb05Q/cBW6InqVqtpjQ==;
 s=purelymail3; d=purelymail.com; v=1;
 bh=2stMt/9EvA8ePHVn3HyMVddkYQc8SqKj4hjI6x7Ojj8=;
 h=Feedback-ID:Received:Date:From:To:Subject; 
Feedback-ID: 6229:1532:null:purelymail
X-Pm-Original-To: intel-gfx@lists.freedesktop.org
Received: by smtp.purelymail.com (Purelymail SMTP) with ESMTPSA id -2093798149; 
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
 Thu, 31 Oct 2024 17:24:48 +0000 (UTC)
Date: Thu, 31 Oct 2024 10:24:45 -0700 (PDT)
From: Alexander Coffin <alex@cyberialabs.net>
To: intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <50b67f9f-e615-414d-abf5-4ee82e35a353@cyberialabs.net>
References: 
Subject: i915 potential deadlock
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Correlation-ID: <50b67f9f-e615-414d-abf5-4ee82e35a353@cyberialabs.net>
X-Mailman-Approved-At: Fri, 01 Nov 2024 10:08:01 +0000
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


   Hello again,=20
  =20

  =20

    I attempted to send a potential deadlock issue from my work email (acof=
fin@sfcompute.com) and suspect that using gmail with a very long email was =
causing issues as it didn't seem to show up from what I can see on the mail=
ing list. I am retrying from my personal email now. Apologizes to anyone wh=
o receives this message twice.=20
  =20

  =20

    ---=20
  =20

  =20

    I was attempting to investigate an issue that I believe may be related =
to iwlwifi, but managed to stumble across this lockdep report first when I =
was attempting to debug the kernel in general. This is from Linux Kernel ve=
rsion v6.1.112 (technically the Debian patched version, but I don't think t=
hat is relevant to this issue).=20
  =20

  =20

    I haven't had a chance to read this code yet, but I thought that I woul=
d report it so that someone more familiar with this code base could have a =
chance to investigate before I do (if I have time). As far as I can see the=
re weren't any changes to i915 after 6.1.112 that were relevant (I only see=
 "drm/i915/gem: fix bitwise and logical AND mixup") so unless a backport is=
 missing I believe that this issue would also affect mainline version, but =
as I don't know the steps to reproduce this issue I can't easily test the m=
ainline version.=20
  =20

  =20

    I am including 2 text snippets.=20
  =20

    1. A releveant log snippet from `journalctl -k`=20
  =20

    2. An annotated version of the prior relevant portion (passed through `=
./scripts/decode_stacktrace.sh -r 6.1.112`).=20
  =20

  =20

    Please let me know if anyone wants the full dmesg log and I will attemp=
t to figure out how to send it without making email clients angry.=20
  =20

  =20

    File 1:=20
  =20

  =20

    ```=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: WARNING: possible circular locki=
ng dependency detected=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: 6.1.112 #2 Not tainted=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: --------------------------------=
----------------------=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: Xorg/1263 is trying to acquire l=
ock:=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: ffffffff871e3380 (fs_reclaim){+.=
+.}-{0:0}, at: __kmem_cache_alloc_node+0x4a/0x290=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=20
  =20

    =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 but task is already holding lock:=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: ffff9e0694bdc810 (wakeref.mutex#=
2/1){+.+.}-{3:3}, at: __intel_wakeref_get_first+0x1f/0x90 [i915]=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=20
  =20

    =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 which lock already depends on the new lock.=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=20
  =20

    =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 the existing dependency chain (in reverse order) is:=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=20
  =20

    =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 -> #2 (wakeref.mutex#2/1){+.+.}-{3:3}:=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 __mutex_lock+0xbe/0xb90=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 __intel_wakeref_get_first+0x1f/0x90 [i915]=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 __i915_vma_active+0xa3/0xb0 [i915]=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 i915_active_acquire+0x56/0xd0 [i915]=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 i915_vma_pin_ww+0x1b2/0x9c0 [i915]=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 intel_pin_fb_obj_dpt.constprop.0+0x209/0x350 [i915]=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 intel_plane_pin_fb+0xb2/0x100 [i915]=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 intel_prepare_plane_fb+0xf5/0x2f0 [i915]=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 drm_atomic_helper_prepare_planes+0x71/0x160 [drm_kms_helper]=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 intel_atomic_commit+0x8e/0x3c0 [i915]=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 drm_atomic_helper_page_flip+0x5f/0xd0 [drm_kms_helper]=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 drm_mode_page_flip_ioctl+0x604/0x6d0 [drm]=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 drm_ioctl_kernel+0xcd/0x170 [drm]=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 drm_ioctl+0x22f/0x410 [drm]=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 __x64_sys_ioctl+0x8d/0xd0=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 do_syscall_64+0x55/0xb0=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 entry_SYSCALL_64_after_hwframe+0x6e/0xd8=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=20
  =20

    =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 -> #1 (i915_active){+.+.}-{3:3}:=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 i915_vma_instance+0x13c/0x580 [i915]=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 intel_alloc_initial_plane_obj.isra.0+0x15d/0x520 [i915]=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 intel_crtc_initial_plane_config+0x86/0x2d0 [i915]=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 intel_modeset_init_nogem+0x359/0xeb0 [i915]=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 i915_driver_probe+0x604/0xe60 [i915]=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 local_pci_probe+0x3e/0x80=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 pci_device_probe+0xc3/0x240=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 really_probe+0xdb/0x380=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 __driver_probe_device+0x78/0x120=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 driver_probe_device+0x1f/0x90=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 __driver_attach+0xd2/0x1c0=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 bus_for_each_dev+0x87/0xd0=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 bus_add_driver+0x1b1/0x200=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 driver_register+0x89/0xe0=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 get_max_energy_counter+0x1f/0x50 [intel_rapl_common]=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 do_one_initcall+0x6d/0x280=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 do_init_module+0x4a/0x1f0=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 __do_sys_finit_module+0xac/0x120=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 do_syscall_64+0x55/0xb0=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 entry_SYSCALL_64_after_hwframe+0x6e/0xd8=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=20
  =20

    =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 -> #0 (fs_reclaim){+.+.}-{0:0}:=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 __lock_acquire+0x12f4/0x2000=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 lock_acquire+0xc4/0x2a0=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 fs_reclaim_acquire+0xa2/0xe0=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 __kmem_cache_alloc_node+0x4a/0x290=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 __kmalloc+0x4d/0x150=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 acpi_ns_internalize_name+0x93/0xf0=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 acpi_ns_get_node_unlocked+0x80/0x110=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 acpi_ns_get_node+0x3a/0x60=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 acpi_get_handle+0x57/0xb0=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 acpi_has_method+0x29/0x50=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 acpi_pci_set_power_state+0x44/0x110=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 pci_power_up+0x2e/0x180=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 pci_pm_runtime_resume+0x2f/0xe0=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 __rpm_callback+0x41/0x170=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 rpm_callback+0x5d/0x70=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 rpm_resume+0x5e7/0x830=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 __pm_runtime_resume+0x47/0x90=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 intel_runtime_pm_get+0x1a/0x80 [i915]=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 __intel_wakeref_get_first+0x31/0x90 [i915]=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 i915_gem_do_execbuffer+0x2417/0x2cc0 [i915]=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 i915_gem_execbuffer2_ioctl+0x11a/0x2b0 [i915]=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 drm_ioctl_kernel+0xcd/0x170 [drm]=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 drm_ioctl+0x22f/0x410 [drm]=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 __x64_sys_ioctl+0x8d/0xd0=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 do_syscall_64+0x55/0xb0=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 entry_SYSCALL_64_after_hwframe+0x6e/0xd8=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=20
  =20

    =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 other info that might help us debug this:=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: Chain exists of:=20
  =20

    =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 fs_reclaim --> i915_active --> wakeref.mutex#2/=
1=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0 Possible unsafe locking sc=
enario:=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 CPU0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 CPU1=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 ----=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ----=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0 lock(wakeref.mutex#2=
/1);=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 lock(i915_active);=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 lock(wakeref.mutex#2/1);=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0 lock(fs_reclaim);=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=20
  =20

    =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 *** DEADLOCK ***=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: 1 lock held by Xorg/1263:=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0 #0: ffff9e0694bdc810 (wake=
ref.mutex#2/1){+.+.}-{3:3}, at: __intel_wakeref_get_first+0x1f/0x90 [i915]=
=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=20
  =20

    =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 stack backtrace:=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: CPU: 8 PID: 1263 Comm: Xorg Not =
tainted 6.1.112 #2=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: Hardware name: Dell Inc. XPS 15 =
9530/013F3N, BIOS 1.15.0 07/08/2024=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: Call Trace:=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0 <TASK>=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0 dump_stack_lvl+0x5b/0x77=
=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0 check_noncircular+0x11c/0x=
130=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0 __lock_acquire+0x12f4/0x20=
00=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0 lock_acquire+0xc4/0x2a0=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0 ? __kmem_cache_alloc_node+=
0x4a/0x290=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0 ? save_trace+0x3e/0x2c0=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0 fs_reclaim_acquire+0xa2/0x=
e0=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0 ? __kmem_cache_alloc_node+=
0x4a/0x290=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0 __kmem_cache_alloc_node+0x=
4a/0x290=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0 ? acpi_ns_internalize_name=
+0x93/0xf0=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0 ? acpi_ns_internalize_name=
+0x93/0xf0=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0 __kmalloc+0x4d/0x150=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0 acpi_ns_internalize_name+0=
x93/0xf0=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0 ? lock_acquire+0xc4/0x2a0=
=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0 acpi_ns_get_node_unlocked+=
0x80/0x110=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0 ? down_timeout+0x4b/0x70=
=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0 ? acpi_ns_get_node+0x3a/0x=
60=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0 acpi_ns_get_node+0x3a/0x60=
=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0 acpi_get_handle+0x57/0xb0=
=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0 acpi_has_method+0x29/0x50=
=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0 acpi_pci_set_power_state+0=
x44/0x110=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0 pci_power_up+0x2e/0x180=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0 pci_pm_runtime_resume+0x2f=
/0xe0=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0 ? pci_pm_restore_noirq+0xc=
0/0xc0=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0 __rpm_callback+0x41/0x170=
=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0 ? pci_pm_restore_noirq+0xc=
0/0xc0=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0 rpm_callback+0x5d/0x70=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0 ? pci_pm_restore_noirq+0xc=
0/0xc0=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0 rpm_resume+0x5e7/0x830=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0 __pm_runtime_resume+0x47/0=
x90=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0 intel_runtime_pm_get+0x1a/=
0x80 [i915]=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0 __intel_wakeref_get_first+=
0x31/0x90 [i915]=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0 i915_gem_do_execbuffer+0x2=
417/0x2cc0 [i915]=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0 i915_gem_execbuffer2_ioctl=
+0x11a/0x2b0 [i915]=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0 ? i915_gem_do_execbuffer+0=
x2cc0/0x2cc0 [i915]=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0 drm_ioctl_kernel+0xcd/0x17=
0 [drm]=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0 drm_ioctl+0x22f/0x410 [drm=
]=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0 ? i915_gem_do_execbuffer+0=
x2cc0/0x2cc0 [i915]=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0 __x64_sys_ioctl+0x8d/0xd0=
=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0 do_syscall_64+0x55/0xb0=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0 ? kfree+0x107/0x140=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0 ? ___sys_recvmsg+0x9c/0xe0=
=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0 ? __sys_recvmsg+0xa7/0xc0=
=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0 ? exit_to_user_mode_prepar=
e+0x19e/0x250=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0 ? lockdep_hardirqs_on_prep=
are+0xdc/0x190=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0 ? do_syscall_64+0x61/0xb0=
=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0 entry_SYSCALL_64_after_hwf=
rame+0x6e/0xd8=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: RIP: 0033:0x7f258ef06c5b=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: Code: 00 48 89 44 24 18 31 c0 48=
 8d 44 24 60 c7 04 24 10 00 00 00 48 89 44 24 08 48 8d 44 24 20 48 89 44 24=
 10 b8 10 00 00 00 0f 05 <89> c2 3d 00 f0 ff ff 77 1c 48 8b 44 24 18 64 48 =
2b 04 25 28 00 00=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: RSP: 002b:00007ffcd0ee2350 EFLAG=
S: 00000246 ORIG_RAX: 0000000000000010=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: RAX: ffffffffffffffda RBX: 00005=
57019e70950 RCX: 00007f258ef06c5b=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: RDX: 00007ffcd0ee2400 RSI: 00000=
00040406469 RDI: 0000000000000012=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: RBP: 00007ffcd0ee2490 R08: 00000=
00000000007 R09: 000055701b5d64f0=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: R10: 3002f0996e1d00f9 R11: 00000=
00000000246 R12: 0000000000000000=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: R13: 00007ffcd0ee2400 R14: 00000=
00000000012 R15: 000055701b743fd0=20
  =20

    ```=20
  =20

  =20

    File 2:=20
  =20

  =20

    ```=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: WARNING: possible circular locki=
ng dependency detected=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: 6.1.112 #2 Not tainted=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: --------------------------------=
----------------------=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: Xorg/1263 is trying to acquire l=
ock:=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: ffffffff871e3380 (fs_reclaim){+.=
+.}-{0:0}, at: __kmem_cache_alloc_node (./include/linux/sched/mm.h:272 mm/s=
lab.h:710 mm/slub.c:3318 mm/slub.c:3437)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=20
  =20

    but task is already holding lock:=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: ffff9e0694bdc810 (wakeref.mutex#=
2/1){+.+.}-{3:3}, at: __intel_wakeref_get_first (./arch/x86/include/asm/ato=
mic.h:29 ./include/linux/atomic/atomic-instrumented.h:28 drivers/gpu/drm/i9=
15/intel_wakeref.c:34) i915=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=20
  =20

    which lock already depends on the new lock.=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=20
  =20

    the existing dependency chain (in reverse order) is:=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=20
  =20

    -> #2 (wakeref.mutex#2/1){+.+.}-{3:3}:=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: __mutex_lock (./arch/x86/include=
/asm/jump_label.h:27 ./include/linux/jump_label.h:207 ./include/trace/event=
s/lock.h:95 kernel/locking/mutex.c:605 kernel/locking/mutex.c:747)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: __intel_wakeref_get_first (./arc=
h/x86/include/asm/atomic.h:29 ./include/linux/atomic/atomic-instrumented.h:=
28 drivers/gpu/drm/i915/intel_wakeref.c:34) i915=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: __i915_vma_active (./drivers/gpu=
/drm/i915/intel_wakeref.h:85 drivers/gpu/drm/i915/gt/intel_gt_pm.h:21 drive=
rs/gpu/drm/i915/i915_vma.c:112) i915=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: i915_active_acquire (drivers/gpu=
/drm/i915/i915_active.c:520 drivers/gpu/drm/i915/i915_active.c:503) i915=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: i915_vma_pin_ww (drivers/gpu/drm=
/i915/i915_vma.c:1506) i915=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: intel_pin_fb_obj_dpt.constprop.0=
 (drivers/gpu/drm/i915/display/intel_fb_pin.c:85) i915=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: intel_plane_pin_fb (drivers/gpu/=
drm/i915/display/intel_fb_pin.c:269) i915=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: intel_prepare_plane_fb (drivers/=
gpu/drm/i915/display/intel_atomic_plane.c:1032) i915=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: drm_atomic_helper_prepare_planes=
 (drivers/gpu/drm/drm_atomic_helper.c:2571 drivers/gpu/drm/drm_atomic_helpe=
r.c:2547) drm_kms_helper=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: intel_atomic_commit (drivers/gpu=
/drm/i915/display/intel_display.c:6964 drivers/gpu/drm/i915/display/intel_d=
isplay.c:7757) i915=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: drm_atomic_helper_page_flip (dri=
vers/gpu/drm/drm_atomic_helper.c:3596) drm_kms_helper=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: drm_mode_page_flip_ioctl (driver=
s/gpu/drm/drm_plane.c:1368) drm=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: drm_ioctl_kernel (drivers/gpu/dr=
m/drm_ioctl.c:788) drm=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: drm_ioctl (./include/linux/threa=
d_info.h:199 ./include/linux/thread_info.h:235 ./include/linux/uaccess.h:16=
8 drivers/gpu/drm/drm_ioctl.c:892) drm=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: __x64_sys_ioctl (fs/ioctl.c:51 f=
s/ioctl.c:870 fs/ioctl.c:856 fs/ioctl.c:856)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: do_syscall_64 (arch/x86/entry/co=
mmon.c:51 arch/x86/entry/common.c:81)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: entry_SYSCALL_64_after_hwframe (=
arch/x86/entry/entry_64.S:121)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=20
  =20

    -> #1 (i915_active){+.+.}-{3:3}:=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: i915_vma_instance (drivers/gpu/d=
rm/i915/i915_vma.c:159 drivers/gpu/drm/i915/i915_vma.c:325) i915=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: intel_alloc_initial_plane_obj.is=
ra.0 (drivers/gpu/drm/i915/display/intel_plane_initial.c:139 drivers/gpu/dr=
m/i915/display/intel_plane_initial.c:183) i915=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: intel_crtc_initial_plane_config =
(drivers/gpu/drm/i915/display/intel_plane_initial.c:229 drivers/gpu/drm/i91=
5/display/intel_plane_initial.c:320) i915=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: intel_modeset_init_nogem (driver=
s/gpu/drm/i915/display/intel_display.c:8794 (discriminator 2)) i915=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: i915_driver_probe (drivers/gpu/d=
rm/i915/i915_driver.c:951) i915=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: local_pci_probe (drivers/pci/pci=
-driver.c:324)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: pci_device_probe (drivers/pci/pc=
i-driver.c:392 drivers/pci/pci-driver.c:417 drivers/pci/pci-driver.c:460)=
=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: really_probe (drivers/base/dd.c:=
560 drivers/base/dd.c:639)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: __driver_probe_device (drivers/b=
ase/dd.c:785)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: driver_probe_device (drivers/bas=
e/dd.c:815)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: __driver_attach (drivers/base/dd=
.c:1202)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: bus_for_each_dev (drivers/base/b=
us.c:301)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: bus_add_driver (drivers/base/bus=
.c:618)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: driver_register (drivers/base/dr=
iver.c:246)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: get_max_energy_counter (drivers/=
powercap/intel_rapl_common.c:643 drivers/powercap/intel_rapl_common.c:194) =
intel_rapl_common=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: do_one_initcall (init/main.c:129=
8)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: do_init_module (kernel/module/ma=
in.c:2469)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: __do_sys_finit_module (kernel/mo=
dule/main.c:2978)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: do_syscall_64 (arch/x86/entry/co=
mmon.c:51 arch/x86/entry/common.c:81)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: entry_SYSCALL_64_after_hwframe (=
arch/x86/entry/entry_64.S:121)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=20
  =20

    -> #0 (fs_reclaim){+.+.}-{0:0}:=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: __lock_acquire (kernel/locking/l=
ockdep.c:3091 kernel/locking/lockdep.c:3209 kernel/locking/lockdep.c:3825 k=
ernel/locking/lockdep.c:5049)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: lock_acquire (kernel/locking/loc=
kdep.c:467 kernel/locking/lockdep.c:5664 kernel/locking/lockdep.c:5627)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: fs_reclaim_acquire (mm/page_allo=
c.c:4682 mm/page_alloc.c:4695)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: __kmem_cache_alloc_node (./inclu=
de/linux/sched/mm.h:272 mm/slab.h:710 mm/slub.c:3318 mm/slub.c:3437)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: __kmalloc (mm/slab_common.c:937 =
mm/slab_common.c:949)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: acpi_ns_internalize_name (./incl=
ude/linux/slab.h:562 ./include/linux/slab.h:693 ./include/acpi/platform/acl=
inuxex.h:57 drivers/acpi/acpica/nsutils.c:331)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: acpi_ns_get_node_unlocked (drive=
rs/acpi/acpica/nsutils.c:666)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: acpi_ns_get_node (drivers/acpi/a=
cpica/nsutils.c:729)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: acpi_get_handle (drivers/acpi/ac=
pica/nsxfname.c:99)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: acpi_has_method (drivers/acpi/ut=
ils.c:591)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: acpi_pci_set_power_state (driver=
s/pci/pci-acpi.c:1069 (discriminator 1))=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: pci_power_up (drivers/pci/pci.c:=
1212)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: pci_pm_runtime_resume (drivers/p=
ci/pci-driver.c:570 (discriminator 4) drivers/pci/pci-driver.c:575 (discrim=
inator 4) drivers/pci/pci-driver.c:1349 (discriminator 4))=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: __rpm_callback (drivers/base/pow=
er/runtime.c:395)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: rpm_callback (drivers/base/power=
/runtime.c:532)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: rpm_resume (drivers/base/power/r=
untime.c:912)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: __pm_runtime_resume (./include/l=
inux/spinlock.h:406 drivers/base/power/runtime.c:1171)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: intel_runtime_pm_get (drivers/gp=
u/drm/i915/intel_runtime_pm.c:358 drivers/gpu/drm/i915/intel_runtime_pm.c:4=
02) i915=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: __intel_wakeref_get_first (drive=
rs/gpu/drm/i915/intel_wakeref.c:39) i915=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: i915_gem_do_execbuffer (./driver=
s/gpu/drm/i915/intel_wakeref.h:85 ./drivers/gpu/drm/i915/gt/intel_gt_pm.h:2=
1 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:2710 drivers/gpu/drm/i915/=
gem/i915_gem_execbuffer.c:3430) i915=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: i915_gem_execbuffer2_ioctl (driv=
ers/gpu/drm/i915/gem/i915_gem_execbuffer.c:3580) i915=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: drm_ioctl_kernel (drivers/gpu/dr=
m/drm_ioctl.c:788) drm=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: drm_ioctl (./include/linux/threa=
d_info.h:199 ./include/linux/thread_info.h:235 ./include/linux/uaccess.h:16=
8 drivers/gpu/drm/drm_ioctl.c:892) drm=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: __x64_sys_ioctl (fs/ioctl.c:51 f=
s/ioctl.c:870 fs/ioctl.c:856 fs/ioctl.c:856)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: do_syscall_64 (arch/x86/entry/co=
mmon.c:51 arch/x86/entry/common.c:81)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: entry_SYSCALL_64_after_hwframe (=
arch/x86/entry/entry_64.S:121)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=20
  =20

    other info that might help us debug this:=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: Chain exists of:=20
  =20

    fs_reclaim --> i915_active --> wakeref.mutex#2/1=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0 Possible unsafe locking sc=
enario:=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 CPU0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 CPU1=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 ----=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ----=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0 lock(wakeref.mutex#2=
/1);=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 lock(i915_active);=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 lock(wakeref.mutex#2/1);=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0=C2=A0 lock(fs_reclaim);=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=20
  =20

    *** DEADLOCK ***=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: 1 lock held by Xorg/1263:=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: #0: ffff9e0694bdc810 (wakeref.mu=
tex#2/1){+.+.}-{3:3}, at: __intel_wakeref_get_first (./arch/x86/include/asm=
/atomic.h:29 ./include/linux/atomic/atomic-instrumented.h:28 drivers/gpu/dr=
m/i915/intel_wakeref.c:34) i915=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=20
  =20

    stack backtrace:=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: CPU: 8 PID: 1263 Comm: Xorg Not =
tainted 6.1.112 #2=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: Hardware name: Dell Inc. XPS 15 =
9530/013F3N, BIOS 1.15.0 07/08/2024=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: Call Trace:=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel:=C2=A0 <TASK>=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: dump_stack_lvl (lib/dump_stack.c=
:110 (discriminator 4))=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: check_noncircular (kernel/lockin=
g/lockdep.c:2173)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: __lock_acquire (kernel/locking/l=
ockdep.c:3091 kernel/locking/lockdep.c:3209 kernel/locking/lockdep.c:3825 k=
ernel/locking/lockdep.c:5049)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: lock_acquire (kernel/locking/loc=
kdep.c:467 kernel/locking/lockdep.c:5664 kernel/locking/lockdep.c:5627)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: ? __kmem_cache_alloc_node (./inc=
lude/linux/sched/mm.h:272 mm/slab.h:710 mm/slub.c:3318 mm/slub.c:3437)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: ? save_trace (kernel/locking/loc=
kdep.c:584)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: fs_reclaim_acquire (mm/page_allo=
c.c:4682 mm/page_alloc.c:4695)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: ? __kmem_cache_alloc_node (./inc=
lude/linux/sched/mm.h:272 mm/slab.h:710 mm/slub.c:3318 mm/slub.c:3437)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: __kmem_cache_alloc_node (./inclu=
de/linux/sched/mm.h:272 mm/slab.h:710 mm/slub.c:3318 mm/slub.c:3437)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: ? acpi_ns_internalize_name (./in=
clude/linux/slab.h:562 ./include/linux/slab.h:693 ./include/acpi/platform/a=
clinuxex.h:57 drivers/acpi/acpica/nsutils.c:331)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: ? acpi_ns_internalize_name (./in=
clude/linux/slab.h:562 ./include/linux/slab.h:693 ./include/acpi/platform/a=
clinuxex.h:57 drivers/acpi/acpica/nsutils.c:331)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: __kmalloc (mm/slab_common.c:937 =
mm/slab_common.c:949)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: acpi_ns_internalize_name (./incl=
ude/linux/slab.h:562 ./include/linux/slab.h:693 ./include/acpi/platform/acl=
inuxex.h:57 drivers/acpi/acpica/nsutils.c:331)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: ? lock_acquire (kernel/locking/l=
ockdep.c:467 kernel/locking/lockdep.c:5664 kernel/locking/lockdep.c:5627)=
=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: acpi_ns_get_node_unlocked (drive=
rs/acpi/acpica/nsutils.c:666)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: ? down_timeout (kernel/locking/s=
emaphore.c:173)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: ? acpi_ns_get_node (drivers/acpi=
/acpica/nsutils.c:729)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: acpi_ns_get_node (drivers/acpi/a=
cpica/nsutils.c:729)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: acpi_get_handle (drivers/acpi/ac=
pica/nsxfname.c:99)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: acpi_has_method (drivers/acpi/ut=
ils.c:591)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: acpi_pci_set_power_state (driver=
s/pci/pci-acpi.c:1069 (discriminator 1))=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: pci_power_up (drivers/pci/pci.c:=
1212)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: pci_pm_runtime_resume (drivers/p=
ci/pci-driver.c:570 (discriminator 4) drivers/pci/pci-driver.c:575 (discrim=
inator 4) drivers/pci/pci-driver.c:1349 (discriminator 4))=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: ? pci_pm_restore_noirq (drivers/=
pci/pci-driver.c:1338)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: __rpm_callback (drivers/base/pow=
er/runtime.c:395)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: ? pci_pm_restore_noirq (drivers/=
pci/pci-driver.c:1338)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: rpm_callback (drivers/base/power=
/runtime.c:532)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: ? pci_pm_restore_noirq (drivers/=
pci/pci-driver.c:1338)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: rpm_resume (drivers/base/power/r=
untime.c:912)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: __pm_runtime_resume (./include/l=
inux/spinlock.h:406 drivers/base/power/runtime.c:1171)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: intel_runtime_pm_get (drivers/gp=
u/drm/i915/intel_runtime_pm.c:358 drivers/gpu/drm/i915/intel_runtime_pm.c:4=
02) i915=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: __intel_wakeref_get_first (drive=
rs/gpu/drm/i915/intel_wakeref.c:39) i915=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: i915_gem_do_execbuffer (./driver=
s/gpu/drm/i915/intel_wakeref.h:85 ./drivers/gpu/drm/i915/gt/intel_gt_pm.h:2=
1 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:2710 drivers/gpu/drm/i915/=
gem/i915_gem_execbuffer.c:3430) i915=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: i915_gem_execbuffer2_ioctl (driv=
ers/gpu/drm/i915/gem/i915_gem_execbuffer.c:3580) i915=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: ? i915_gem_do_execbuffer (driver=
s/gpu/drm/i915/gem/i915_gem_execbuffer.c:3548) i915=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: drm_ioctl_kernel (drivers/gpu/dr=
m/drm_ioctl.c:788) drm=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: drm_ioctl (./include/linux/threa=
d_info.h:199 ./include/linux/thread_info.h:235 ./include/linux/uaccess.h:16=
8 drivers/gpu/drm/drm_ioctl.c:892) drm=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: ? i915_gem_do_execbuffer (driver=
s/gpu/drm/i915/gem/i915_gem_execbuffer.c:3548) i915=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: __x64_sys_ioctl (fs/ioctl.c:51 f=
s/ioctl.c:870 fs/ioctl.c:856 fs/ioctl.c:856)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: do_syscall_64 (arch/x86/entry/co=
mmon.c:51 arch/x86/entry/common.c:81)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: ? kfree (./include/trace/events/=
kmem.h:94 mm/slab_common.c:975)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: ? ___sys_recvmsg (net/socket.c:2=
778)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: ? __sys_recvmsg (./include/linux=
/file.h:33 net/socket.c:2807)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: ? exit_to_user_mode_prepare (./a=
rch/x86/include/asm/entry-common.h:57 kernel/entry/common.c:212)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: ? lockdep_hardirqs_on_prepare (k=
ernel/locking/lockdep.c:4256 kernel/locking/lockdep.c:4315 kernel/locking/l=
ockdep.c:4267)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: ? do_syscall_64 (arch/x86/entry/=
common.c:88)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: entry_SYSCALL_64_after_hwframe (=
arch/x86/entry/entry_64.S:121)=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: RIP: 0033:0x7f258ef06c5b=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: Code: 00 48 89 44 24 18 31 c0 48=
 8d 44 24 60 c7 04 24 10 00 00 00 48 89 44 24 08 48 8d 44 24 20 48 89 44 24=
 10 b8 10 00 00 00 0f 05 <89> c2 3d 00 f0 ff ff 77 1c 48 8b 44 24 18 64 48 =
2b 04 25 28 00 00=20
  =20

    All code=20
  =20

    =3D=3D=3D=3D=3D=3D=3D=3D=20
  =20

    =C2=A0=C2=A0=C2=A0 0:=C2=A0 00 48 89=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 add=C2=A0=C2=A0=
=C2=A0 %cl,-0x77(%rax)=20
  =20

    =C2=A0=C2=A0=C2=A0 3:=C2=A0 44 24 18=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 rex.R and $0x18,%=
al=20
  =20

    =C2=A0=C2=A0=C2=A0 6:=C2=A0 31 c0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 xo=
r=C2=A0=C2=A0=C2=A0 %eax,%eax=20
  =20

    =C2=A0=C2=A0=C2=A0 8:=C2=A0 48 8d 44 24 60=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 lea=C2=A0=C2=A0=C2=A0 0x60(%rsp),%rax=20
  =20

    =C2=A0=C2=A0=C2=A0 d:=C2=A0 c7 04 24 10 00 00 00=C2=A0=C2=A0=C2=A0 movl=
=C2=A0=C2=A0 $0x10,(%rsp)=20
  =20

    =C2=A0=C2=A0 14:=C2=A0 48 89 44 24 08=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 mov=C2=A0=C2=A0=C2=A0 %rax,0x8(%rsp)=20
  =20

    =C2=A0=C2=A0 19:=C2=A0 48 8d 44 24 20=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 lea=C2=A0=C2=A0=C2=A0 0x20(%rsp),%rax=20
  =20

    =C2=A0=C2=A0 1e:=C2=A0 48 89 44 24 10=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 mov=C2=A0=C2=A0=C2=A0 %rax,0x10(%rsp)=20
  =20

    =C2=A0=C2=A0 23:=C2=A0 b8 10 00 00 00=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 mov=C2=A0=C2=A0=C2=A0 $0x10,%eax=20
  =20

    =C2=A0=C2=A0 28:=C2=A0 0f 05=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 syscall=
=20
  =20

    =C2=A0=C2=A0 2a:* 89 c2=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 mov=C2=A0=C2=
=A0=C2=A0 %eax,%edx=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <-- trapping =
instruction=20
  =20

    =C2=A0=C2=A0 2c:=C2=A0 3d 00 f0 ff ff=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 cmp=C2=A0=C2=A0=C2=A0 $0xfffff000,%eax=20
  =20

    =C2=A0=C2=A0 31:=C2=A0 77 1c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ja=C2=A0=
=C2=A0=C2=A0=C2=A0 0x4f=20
  =20

    =C2=A0=C2=A0 33:=C2=A0 48 8b 44 24 18=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 mov=C2=A0=C2=A0=C2=A0 0x18(%rsp),%rax=20
  =20

    =C2=A0=C2=A0 38:=C2=A0 64=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 fs=20
  =20

    =C2=A0=C2=A0 39:=C2=A0 48=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 rex.W=20
  =20

    =C2=A0=C2=A0 3a:=C2=A0 2b=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 .byte 0x2b=20
  =20

    =C2=A0=C2=A0 3b:=C2=A0 04 25=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 add=C2=
=A0=C2=A0=C2=A0 $0x25,%al=20
  =20

    =C2=A0=C2=A0 3d:=C2=A0 28 00=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 sub=C2=
=A0=C2=A0=C2=A0 %al,(%rax)=20
  =20

    =C2=A0=C2=A0=C2=A0 ...=20
  =20

  =20

    Code starting with the faulting instruction=20
  =20

    =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=20
  =20

    =C2=A0=C2=A0=C2=A0 0:=C2=A0 89 c2=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 mo=
v=C2=A0=C2=A0=C2=A0 %eax,%edx=20
  =20

    =C2=A0=C2=A0=C2=A0 2:=C2=A0 3d 00 f0 ff ff=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 cmp=C2=A0=C2=A0=C2=A0 $0xfffff000,%eax=20
  =20

    =C2=A0=C2=A0=C2=A0 7:=C2=A0 77 1c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ja=
=C2=A0=C2=A0=C2=A0=C2=A0 0x25=20
  =20

    =C2=A0=C2=A0=C2=A0 9:=C2=A0 48 8b 44 24 18=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 mov=C2=A0=C2=A0=C2=A0 0x18(%rsp),%rax=20
  =20

    =C2=A0=C2=A0=C2=A0 e:=C2=A0 64=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 fs=20
  =20

    =C2=A0=C2=A0=C2=A0 f:=C2=A0 48=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 rex.W=20
  =20

    =C2=A0=C2=A0 10:=C2=A0 2b=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 .byte 0x2b=20
  =20

    =C2=A0=C2=A0 11:=C2=A0 04 25=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 add=C2=
=A0=C2=A0=C2=A0 $0x25,%al=20
  =20

    =C2=A0=C2=A0 13:=C2=A0 28 00=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 sub=C2=
=A0=C2=A0=C2=A0 %al,(%rax)=20
  =20

    =C2=A0=C2=A0=C2=A0 ...=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: RSP: 002b:00007ffcd0ee2350 EFLAG=
S: 00000246 ORIG_RAX: 0000000000000010=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: RAX: ffffffffffffffda RBX: 00005=
57019e70950 RCX: 00007f258ef06c5b=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: RDX: 00007ffcd0ee2400 RSI: 00000=
00040406469 RDI: 0000000000000012=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: RBP: 00007ffcd0ee2490 R08: 00000=
00000000007 R09: 000055701b5d64f0=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: R10: 3002f0996e1d00f9 R11: 00000=
00000000246 R12: 0000000000000000=20
  =20

    Oct 30 12:06:41 acoffin-xps-15 kernel: R13: 00007ffcd0ee2400 R14: 00000=
00000000012 R15: 000055701b743fd0=20
  =20

    ```=20
  =20

  =20

    Regards,=20
  =20

  =20

    Alex Coffin=20
  =20

 =20
