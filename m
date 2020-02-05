Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2793E154D95
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 21:56:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBBF96FB50;
	Thu,  6 Feb 2020 20:56:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com
 [IPv6:2607:f8b0:4864:20::d43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 472336F975
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Feb 2020 23:01:05 +0000 (UTC)
Received: by mail-io1-xd43.google.com with SMTP id z16so4108366iod.11
 for <intel-gfx@lists.freedesktop.org>; Wed, 05 Feb 2020 15:01:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=RsfLF6BIw8F4hGDQZWHKc6Um70KVVHiF825mUzkUhkk=;
 b=unUcSDYhNAc3onMkh6ZQRc7BeidUILlRPEPG6FPmfFou+FG4V6TjnJFtDH8v/RiVfJ
 zti4kAJp9UlwJdydMuimrWsHhw3Jk23iMlUygu/9JJrKyb0bJ4RZBavOkhKSIk0swjO0
 MH8sXUMeBWcsWkNDkcFW6t9J1Q4HEcTmOhdL4hJKMU1NtPA1NqwpUqxwFSRdQe8vEpsh
 PYVzyfWFGpKWfZD/g8UrDmz++c45nmyOJ7kukfKVAXrWT0Jbamx3cQxYx2gwh4OKnZTY
 FCbbnGHOrK+83Wt9LkVw+mot0XGugdQZ3U1LWGxuOpDqRzQw649yUOH2uR04BzS49vBY
 lXDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=RsfLF6BIw8F4hGDQZWHKc6Um70KVVHiF825mUzkUhkk=;
 b=P3YuvaGF6ciRdHYnE77GGJ9/X3DZaUuQ73kpfUCMOUAFvJj0NGHZ7yoISFnUdRCWUR
 yXO435mUjYPlgdBnZwx7SBnozXkWdqErjGNEW7h8E3g8TVsDzTcYJXwEVIacRwgoonxK
 J94QR18tWfahgo6LEmq9hMIQCezap6NoZ/aLHPhY+3m+WTyVO5dst3orurHjCC6GVAfR
 kTx2WPySSsgxjyrketkTBN9OcHOYrsCYQaYom1Bbl7B1DbMSTmpaY02I+aPmmKMnnwwm
 Xpis81VTrgLFJB5P+AjLgY1ucCKrC85kWy+Yk85SRv+RkGvnQmj1GBtNp8kJHQamztE0
 U5Ag==
X-Gm-Message-State: APjAAAVcXs1kZpSUOavYYM1zTdERTRO8QgxUXsMM4YpZSK0RuUbUXq1x
 9JNHqEedvWWhhvOB7GXB/s/FcA==
X-Google-Smtp-Source: APXvYqxr4yl85ReXH3+rpPhQAPYDqk1RzijkA2Dz5NjWdlkOUj5ShGccpMXiy0UXdS3VGHQ3FNs6cA==
X-Received: by 2002:a02:c995:: with SMTP id b21mr31181965jap.112.1580943663713; 
 Wed, 05 Feb 2020 15:01:03 -0800 (PST)
Received: from google.com ([2620:15c:183:200:855f:8919:84a7:4794])
 by smtp.gmail.com with ESMTPSA id e7sm277118ios.47.2020.02.05.15.01.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Feb 2020 15:01:02 -0800 (PST)
Date: Wed, 5 Feb 2020 16:01:01 -0700
From: Ross Zwisler <zwisler@google.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200205230101.GA152052@google.com>
References: <20200106152128.195171-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200106152128.195171-1-jose.souza@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Approved-At: Thu, 06 Feb 2020 20:56:00 +0000
Subject: Re: [Intel-gfx] [v3] drm/i915/display: Force the state compute
 phase once to enable PSR
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 s.zharkoff@gmail.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 06, 2020 at 07:21:28AM -0800, Jos=E9 Roberto de Souza wrote:
> Recent improvements in the state tracking in i915 caused PSR to not be
> enabled when reusing firmware/BIOS modeset, this is due to all initial
> commits returning ealier in intel_atomic_check() as needs_modeset()
> is always false.
> =

> To fix that here forcing the state compute phase in CRTC that is
> driving the eDP that supports PSR once. Enable or disable PSR do not
> require a fullmodeset, so user will still experience glitch free boot
> process plus the power savings that PSR brings.
> =

> It was tried to set mode_changed in intel_initial_commit() but at
> this point the connectors are not registered causing a crash when
> computing encoder state.
> =

> v2:
> - removed function return
> - change arguments to match intel_hdcp_atomic_check
> =

> v3:
> - replaced drm includes in intel_psr.h by forward declaration(Jani)
> =

> Bugzilla: https://bugs.freedesktop.org/show_bug.cgi?id=3D112253
> Reported-by: <s.zharkoff@gmail.com>
> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> Reviewed-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> ---

With the current linux/master:

6992ca0dd017e Merge branch 'parisc-5.6-1' of git://git.kernel.org/pub/scm/l=
inux/kernel/git/deller/parisc-linux

my system fails to boot, and I bisected the failure to this commit.   Here =
are
the relevant messages from dmesg, passed through kasan_symbolize.py:

i915 0000:00:02.0: vgaarb: deactivate vga console
[drm] Supports vblank timestamp caching Rev 2 (21.10.2013).
[drm] Driver supports precise vblank timestamp query.
resource sanity check: requesting [mem 0x000c0000-0x000dffff], which spans =
more than PCI Bus 0000:00 [mem 0x000c0000-0x000c3fff
window]
caller pci_map_rom+0x6a/0x17d mapping multiple BARs
i915 0000:00:02.0: Invalid PCI ROM data signature: expecting 0x52494350, go=
t 0xe937aa55
[drm] Failed to find VBIOS tables (VBT)
i915 0000:00:02.0: vgaarb: changed VGA decodes: olddecodes=3Dio+mem,decodes=
=3Dio+mem:owns=3Dio+mem
------------[ cut here ]------------
WARNING: CPU: 0 PID: 1 at drivers/gpu/drm/drm_atomic.c:296[<        none   =
     >] drm_atomic_get_crtc_state+0xf8/0x110 drivers/gpu/drm/drm_atomic.c:3=
04
Modules linked in:
CPU: 0 PID: 1 Comm: swapper/0 Not tainted 5.5.0-rc1-00573-g60c6a14b489ba #31
Hardware name: GOOGLE Samus, BIOS  05/14/2019
RIP: 0010:drm_atomic_get_crtc_state+0xf8/0x110
Code: 89 2c 11 48 89 98 f0 01 00 00 48 8b 4d 20 8b 55 60 e8 5c aa 00 00 48 =
8b 04 24 48 83 c4 08 5b 5d 41 5c c3 48 98 e9 4e ff ff
 ff <0f> 0b e9 28 ff ff ff 48 c7 c0 f4 ff ff ff e9 3b ff ff ff 0f 1f 44
RSP: 0000:ffffab4b80017970 EFLAGS: 00010246
RAX: 0000000000000000 RBX: ffff93c1a69ca000 RCX: ffff93c1ab69b8c0
RDX: 000000000000002d RSI: 0000000000000000 RDI: ffff93c1a69ca000
RBP: ffff93c1a6944000 R08: 0000000000000079 R09: 0000000000000079
R10: 000000000000002d R11: 0000000000000005 R12: 0000000000000000
R13: ffff93c1a6944000 R14: 0000000000000005 R15: ffff93c1a6979c00
FS:  0000000000000000(0000) GS:ffff93c1aec00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: ffff93c0f5201000 CR3: 00000003b3e0c001 CR4: 00000000003606f0
Call Trace:
[<        none        >] drm_atomic_add_affected_connectors+0x2e/0x110 driv=
ers/gpu/drm/drm_atomic.c:1046
[<        none        >] drm_atomic_helper_check_modeset+0x4a1/0xa70 driver=
s/gpu/drm/drm_atomic_helper.c:703
[<        none        >] intel_atomic_check+0x96/0x2510 drivers/gpu/drm/i91=
5/display/intel_display.c:14603
 ?[<     inline     >] kmemdup ./include/linux/string.h:453
 ?[<        none        >] intel_digital_connector_duplicate_state+0x21/0x4=
0 drivers/gpu/drm/i915/display/intel_atomic.c:171
 ?[<     inline     >] spin_unlock_irqrestore ./include/linux/spinlock.h:393
 ?[<        none        >] drm_connector_list_iter_next+0x88/0xb0 drivers/g=
pu/drm/drm_connector.c:689
[<     inline     >] sanitize_watermarks drivers/gpu/drm/i915/display/intel=
_display.c:17359
[<        none        >] intel_modeset_init+0x10a8/0x1d50 drivers/gpu/drm/i=
915/display/intel_display.c:17602
[<     inline     >] i915_driver_modeset_probe drivers/gpu/drm/i915/i915_dr=
v.c:311
[<        none        >] i915_driver_probe+0xa4e/0x1410 drivers/gpu/drm/i91=
5/i915_drv.c:1528
 ?[<        none        >] __kernfs_new_node+0x159/0x1c0 fs/kernfs/dir.c:666
[<        none        >] i915_pci_probe+0x54/0x138 drivers/gpu/drm/i915/i91=
5_pci.c:994
[<        none        >] local_pci_probe+0x42/0x80 drivers/pci/pci-driver.c=
:306
[<     inline     >] pci_call_probe drivers/pci/pci-driver.c:361
[<     inline     >] __pci_device_probe drivers/pci/pci-driver.c:386
[<        none        >] pci_device_probe+0x107/0x1a0 drivers/pci/pci-drive=
r.c:429
[<        none        >] really_probe+0x147/0x3c0 drivers/base/dd.c:548
[<        none        >] driver_probe_device+0xb6/0x100 drivers/base/dd.c:7=
21
[<        none        >] device_driver_attach+0x53/0x60 drivers/base/dd.c:9=
95
[<        none        >] __driver_attach+0x8a/0x150 drivers/base/dd.c:1072
 ?[<        none        >] device_driver_attach+0x60/0x60 drivers/base/dd.c=
:995
 ?[<        none        >] device_driver_attach+0x60/0x60 drivers/base/dd.c=
:995
[<        none        >] bus_for_each_dev+0x78/0xc0 drivers/base/bus.c:304
[<        none        >] bus_add_driver+0x14d/0x1f0 drivers/base/bus.c:621
[<        none        >] driver_register+0x6c/0xc0 drivers/base/driver.c:170
 ?[<        none        >] mipi_dsi_bus_init+0x11/0x11 drivers/gpu/drm/drm_=
mipi_dsi.c:1208
[<        none        >] i915_init+0x58/0x6b drivers/gpu/drm/i915/i915_pci.=
c:1057
[<        none        >] do_one_initcall+0x46/0x1f4 init/main.c:938
[<     inline     >] do_initcall_level init/main.c:1006
[<     inline     >] do_initcalls init/main.c:1014
[<     inline     >] do_basic_setup init/main.c:1031
[<        none        >] kernel_init_freeable+0x1a7/0x24e init/main.c:1191
 ?[<        none        >] rest_init+0xaa/0xaa init/main.c:451
[<        none        >] kernel_init+0xa/0x106 init/main.c:1109
[<        none        >] ret_from_fork+0x35/0x40 arch/x86/entry/entry_64.S:=
352
---[ end trace 261d284d91320989 ]---
tsc: Refined TSC clocksource calibration: 2394.459 MHz
clocksource: tsc: mask: 0xffffffffffffffff max_cycles: 0x2283c51f836, max_i=
dle_ns: 440795218683 ns
clocksource: Switched to clocksource tsc

After this the system appears to stop booting, and I get no more serial out=
put
nor any display.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
