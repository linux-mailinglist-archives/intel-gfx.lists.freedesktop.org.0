Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB3BA18F211
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 10:43:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 786C589E38;
	Mon, 23 Mar 2020 09:43:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com
 [IPv6:2a00:1450:4864:20::241])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32EE589E38
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 09:43:56 +0000 (UTC)
Received: by mail-lj1-x241.google.com with SMTP id 19so13729612ljj.7
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 02:43:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=60dWWarp+pfBMOw7TvgU8HHXAk7oJSyIiwUp6H5Vyl4=;
 b=bi51O9CzOBkq1+AGAtk9cmKFBiNklAMnud0fUNJZep5+UQkOBaC2l1cLvghx0AzEgU
 OLPAFLYCe7fbmhTypQDgWBPx43S+IKYSnBVcie5sdMx9kDKWLZ6BFzRAC8hZb57J35yu
 0Twa5/z4aJ0HcqQvJVxAFjr7H3IB8aWOUI5eBpOIbQE+CnCWEUW8i5x5XXG7WyBGk3uG
 2KR3kbPn52ROMqdogL/wuI/N0nwWlr+/qMS0JUt+4wNQqgivYUJ/dQ6lNrMbNjs3hzkT
 OpFgk+GjfC5AHsLaTQZyk6an9FrQDQhlb81BLTe+MMRMgybR7PDiF5cOBvc555/i7/qk
 zS/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=60dWWarp+pfBMOw7TvgU8HHXAk7oJSyIiwUp6H5Vyl4=;
 b=V5hZHP1Mhg/ezqizsE7IcnisFb/bWkE6oTrdYHZyFVjmykqhNJvc+8iZyuCiMbBV7D
 o08SNl0UHNzwGFGV5L2h/+aCl+NAvpOIk7X8IGoSY3Ge+FH6QiAYzLWgSECLBmeEC2+N
 cytds+3U7i1g/svfzOvbiMwhX8dEVPuUjR+m8vM0AY4LC+dsblOhFpk3UABy0QpKgUw3
 J0IWp+EdvYnZJyf65WBurVJiBSGeje3xbiCRYsNDLrOdM5GyHDN2H1pvBLS67UapRc8a
 zwTi0nzK2eBJDHkifosHP+VW0lQv3FubFghlSZcE35uvCaCf+XD7WlW72/SoWk5RoFwN
 bY8w==
X-Gm-Message-State: ANhLgQ391fXYZHtYB1YInvMVmNrqjZcnFCogQ+K/W36ss3C4l7X34lOW
 SOPD9quelQawUzEfJgDAj0unrvsr50X5qUWqDkjmIw==
X-Google-Smtp-Source: ADFU+vscL89oD4WGcphnIY+HhiTkAG2D5ATxY3kscl+j7O8ylsvDlGpoVhQDyBPKnxONJ1k/jhlnkwUEyE+BE7x3G24=
X-Received: by 2002:a2e:95c3:: with SMTP id y3mr13190037ljh.149.1584956634426; 
 Mon, 23 Mar 2020 02:43:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200323092841.22240-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200323092841.22240-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 23 Mar 2020 09:43:27 +0000
Message-ID: <CAM0jSHOsW4ezV5M08mzs9Hs72qvg7MiTrG1rbrWVAGK17knJ_w@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 1/8] drm/i915/gt: Mark timeline->cacheline
 as destroyed after rcu grace period
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 23 Mar 2020 at 09:29, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Since we take advantage of RCU for some i915_active objects, like the
> intel_timeline_cacheline, we need to delay the i915_active_fini until
> after the RCU grace period and we perform the kfree -- that is until
> after all RCU protected readers.
>
> <3> [108.204873] ODEBUG: assert_init not available (active state 0) object type: i915_active hint: __cacheline_active+0x0/0x80 [i915]
> <4> [108.207377] WARNING: CPU: 3 PID: 2342 at lib/debugobjects.c:488 debug_print_object+0x67/0x90
> <4> [108.207400] Modules linked in: vgem snd_hda_codec_hdmi x86_pkg_temp_thermal coretemp crct10dif_pclmul crc32_pclmul snd_hda_intel ghash_clmulni_intel snd_intel_dspcfg snd_hda_codec ax88179_178a snd_hwdep usbnet btusb snd_hda_core btrtl mii btbcm btintel snd_pcm bluetooth ecdh_generic ecc i915 i2c_hid pinctrl_sunrisepoint pinctrl_intel intel_lpss_pci prime_numbers
> <4> [108.207587] CPU: 3 PID: 2342 Comm: gem_exec_parall Tainted: G     U            5.6.0-rc6-CI-Patchwork_17047+ #1
> <4> [108.207609] Hardware name: Google Soraka/Soraka, BIOS MrChromebox-4.10 08/25/2019
> <4> [108.207639] RIP: 0010:debug_print_object+0x67/0x90
> <4> [108.207668] Code: 83 c2 01 8b 4b 14 4c 8b 45 00 89 15 87 d2 8a 02 8b 53 10 4c 89 e6 48 c7 c7 38 2b 32 82 48 8b 14 d5 80 2f 07 82 e8 49 d5 b7 ff <0f> 0b 5b 83 05 c3 f6 22 01 01 5d 41 5c c3 83 05 b8 f6 22 01 01 c3
> <4> [108.207692] RSP: 0018:ffffc90000e7f890 EFLAGS: 00010282
> <4> [108.207723] RAX: 0000000000000000 RBX: ffffc90000e7f8b0 RCX: 0000000000000001
> <4> [108.207747] RDX: 0000000080000001 RSI: ffff88817ada8cb8 RDI: 00000000ffffffff
> <4> [108.207770] RBP: ffffffffa0341cc0 R08: ffff88816b5a8948 R09: 0000000000000000
> <4> [108.207792] R10: 0000000000000000 R11: 0000000000000000 R12: ffffffff82322d54
> <4> [108.207814] R13: ffffffffa0341cc0 R14: ffffffff83df9568 R15: ffff88816064f400
> <4> [108.207839] FS:  00007f437d753700(0000) GS:ffff88817ad80000(0000) knlGS:0000000000000000
> <4> [108.207863] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> <4> [108.207887] CR2: 00007f2ad1fb5000 CR3: 00000001725d8004 CR4: 00000000003606e0
> <4> [108.207907] Call Trace:
> <4> [108.207959]  debug_object_assert_init+0x15c/0x180
> <4> [108.208475]  ? i915_active_acquire_if_busy+0x10/0x50 [i915]
> <4> [108.208513]  ? rcu_read_lock_held+0x4d/0x60
> <4> [108.208970]  i915_active_acquire_if_busy+0x10/0x50 [i915]
> <4> [108.209380]  intel_timeline_read_hwsp+0x81/0x540 [i915]
> <4> [108.210262]  __emit_semaphore_wait+0x45/0x1b0 [i915]
> <4> [108.210726]  ? i915_request_await_dma_fence+0x143/0x560 [i915]
> <4> [108.211156]  i915_request_await_dma_fence+0x28a/0x560 [i915]
> <4> [108.211633]  i915_request_await_object+0x24a/0x3f0 [i915]
> <4> [108.212102]  eb_submit.isra.47+0x58f/0x920 [i915]
> <4> [108.212622]  i915_gem_do_execbuffer+0x1706/0x2c70 [i915]
> <4> [108.213071]  ? i915_gem_execbuffer2_ioctl+0xc0/0x470 [i915]
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
