Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B0B343B770
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Oct 2021 18:41:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9F7F6E441;
	Tue, 26 Oct 2021 16:41:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE40D6E441
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Oct 2021 16:41:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10149"; a="229817812"
X-IronPort-AV: E=Sophos;i="5.87,184,1631602800"; d="scan'208";a="229817812"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2021 09:41:04 -0700
X-IronPort-AV: E=Sophos;i="5.87,184,1631602800"; d="scan'208";a="497424665"
Received: from flaboura-mobl.ger.corp.intel.com (HELO localhost)
 ([10.251.214.127])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2021 09:41:02 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Satadru Pramanik <satadru@gmail.com>, intel-gfx@lists.freedesktop.org
Cc: "Deak\, Imre" <imre.deak@intel.com>
In-Reply-To: <CAFrh3J8jue=s56T-55DCVYYwxJd=4y9LdT2m26rabFvPtRW=8A@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <CAFrh3J8jue=s56T-55DCVYYwxJd=4y9LdT2m26rabFvPtRW=8A@mail.gmail.com>
Date: Tue, 26 Oct 2021 19:40:59 +0300
Message-ID: <874k93kack.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] intel_dp_sync_state+oxeo/oxfo boot failures after
 5.15-rc3
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

On Tue, 26 Oct 2021, Satadru Pramanik <satadru@gmail.com> wrote:
> I have a MacBookPro6,2 that I'm running the mainline 5.15-rc3 ubuntu kernel
> on successfully. I installed the 5.15-rc5 kernel
> <https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.15-rc5/amd64/> (the
> 5.15-rc4 didn't build) and the system wouldn't boot, erroring out with the
> error below. I also see the same issues using the ubuntu mainline build of
> 5.15-rc6 and 5.15-rc7.

Thanks for the report, should be fixed by commit

4ec5ffc341ce ("drm/i915/dp: Skip the HW readout of DPCD on disabled encoders")

in drm-intel-next and should hopefully make it to v5.15 final.

BR,
Jani.


>
> This is copied from a picture I took of the error screen where the boot
> halts:
>
> [ 2.554921] RDX: 0000000000000000 RSI: 0000560e0c741670 RDI:
> 0000000000000015
> [ 2.554925] RBP: 0000000000020000 ROB: 0000000000000000 R09:
> 0000000000000000
> [ 2.554928] R10: 0000000000000015 R11: 0000000000000246 R12:
> 0000560e0c741670
> [ 2.554931] R13: 0000560e0c74b980 R14: 0000000000000000 R15:
> 0000560e0c7362c0
> [ 2.554936] Modules linked in: hid_appleir (+) hid_apple i915(+)
> 12c_algo_bitm hid_generic.drm_kms_helper syscopyarea sysfillrect wl (POE)
> sysimgblt uas crc e_pclmul fb_sys_fops firewire_ohci usb_storage cec usbhid
> firewire_core hid crc tu_t rc_core cfg80211 ahci 12c_1801 libahci i2c_smbus
> tg3 1pc_ich drm apple_gm video apple_bl
> [ 2.554967] [ end trace a9fec12cca81a98e ]---
> [ 2.554970] RIP: 0010: intel_dp_sync_state+oxeo/oxfo, [1915]
> [ 2.555098] Code: 85 69 ff ff ff 48 8b 9f 70 01:00 00 80 bb 83 01 00 00 00
> of
> 85 64 ff ff ff 48 8d bb 70 01 00 00 e8 f5 cb ff ff e9 53 ff ff ff <0f> ob
> 66 66
> 2e of if 84 00 00 00 00 00 0f 1f 00 of 1f 44 00 00 55
> [ 2.555104] RSP: 0018:ffffae12c06ef898 EFLAGS: 00010282
> [ 2.555108] RAX: ffffffffffffffff RBX: ffff99b099034000
> ROX: ffff99b097bc03e0
> [ 2.555112] RDX: 0000000000000000 RSI: 0000000000000000 RDI:
> ffff99b0990341b6
> [ 2.555115] RBP: ffffae12c06ef8b8 R08: 00000000ffffff92 R09:
> ffffffffc0c9cb2c
> [ 2.555119] R10: 0000000000000008 R11: ffff99b099034e08 R12:
> 0000000000000000
> [ 2.555122] R13: 0000000000000000 R14: 0000000000000004 R15:
> ffff99b099034000
> [ 2.555125] FS: 00007fd7808a08c0 (0000) GS:ffff99b1c7c80000 (0000)
> knlGS:00000
> 00000000000
> [ 2.555130] CS: 0010 DS: 0000 ES: 0000 CRO: 0000000080050033
> [ 2.555133] CR2: 0000560e0c7395b8 CR3: 0000000100d02000 CR4:
> 00000000000006e0
> [ 2.555244] Console: switching to colour frame buffer device 210x65

-- 
Jani Nikula, Intel Open Source Graphics Center
