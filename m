Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F09B92F2B55
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Jan 2021 10:34:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D2A56E197;
	Tue, 12 Jan 2021 09:33:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x72c.google.com (mail-qk1-x72c.google.com
 [IPv6:2607:f8b0:4864:20::72c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F7776E197
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Jan 2021 09:33:58 +0000 (UTC)
Received: by mail-qk1-x72c.google.com with SMTP id b64so1268641qkc.12
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Jan 2021 01:33:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=qO1O1wqcHSC8eOcfRrao1g+NpNo3wGCH/JK9T+cGKS0=;
 b=Vw1gryqAAV9AbMgJ/deoA00omk2zCErWoAKv9sLiuMVGl6A5ZMLcAsDXLEsEDyXTT8
 Mpl4NpGgg1qfJXtHkoV960hsjkZdx6UKiRGNcqEMF0E+57bWKaQwDCSLe8zdgVbJ1XgF
 VwsaXdeU0uAonPF6yPfUhCdxVmuEzRISZRoUO38gEFsdXoaMVjWnan/ble+aCib74VTn
 iExwWoadByiI63K5UYh/IGE1eli17V+7IiPfxwD6if7CjGj9o4gb0ybIx9Dc2eeA9Pzc
 bkseoapJBNh1ozTRdyEdd5KAR3upsZ0RsZFVcmp0817CjZlq98GLgm5Fx5Vzz5XVbaM0
 tZ+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=qO1O1wqcHSC8eOcfRrao1g+NpNo3wGCH/JK9T+cGKS0=;
 b=omMzo2qtK4HBpK4SROLlZy8u1X2oEi6gW8WnqOVrCyy31bWvjbLtD1/6lHZ42+3MK3
 aDoxXKZevdCyvivgT+dz9Ev1OtwRv3OypLHqiMd5LYV+h4SfN6uLQvf2eQ1X8XsaLirK
 effsgjbut0tE48STAOWvTnSTlkeDad/sVcMUi4wVx88x9gkQzAw9r6uCXn/ZEqMk+Pwl
 TgyDMQLNatF8XLfneOXBwXsl8JMYAOZ/Hxyhwo9oCDFnQCyersKhsHzSz3hmRTA5WiYM
 Gqph9GzIjEg0Q51lIsCVGNb11XvCWbTMXBT4I4iDQN8X6l7XtnQP6DAc8OkM65roUYeq
 ZGSg==
X-Gm-Message-State: AOAM5310FQCSa6zA4IDHy0Asih13lwq4yhCe0f8z1KXMsm0IqCq2NGA/
 C+301G7VNWbO50tJlEO9aUc0k048czWn+Z2uSfiiEKEK/5A=
X-Google-Smtp-Source: ABdhPJy83NLjwLpGO7d8VMZDK6SN2XyRl9x+v4r3U420Z6gvGDViLitutzrLMYkh78PCyGCQ6tw6SpevgdCf4BVVWfo=
X-Received: by 2002:a37:a8c4:: with SMTP id r187mr3474391qke.481.1610444037246; 
 Tue, 12 Jan 2021 01:33:57 -0800 (PST)
MIME-Version: 1.0
References: <20210112015000.16108-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210112015000.16108-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 12 Jan 2021 09:33:30 +0000
Message-ID: <CAM0jSHM7yrAef56omDsCofdL6+9hGTpwpp4bZ3GQF-qcZ-cZEg@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Remove stolen node before
 releasing the region
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

On Tue, 12 Jan 2021 at 01:50, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> If this stolen object holds the last reference to the region, we need to
> remove our drm_mm_node before freeing the region's drm_mm.
>
> <4> [431.679591] Memory manager not clean during takedown.
> <4> [431.679633] WARNING: CPU: 0 PID: 110 at drivers/gpu/drm/drm_mm.c:999 drm_mm_takedown+0x51/0x100
> <4> [431.679655] Modules linked in: i915 vgem btusb snd_hda_codec_hdmi btrtl btbcm btintel snd_hda_codec_realtek snd_hda_codec_generic ledtrig_audio bluetooth coretemp crct10dif_pclmul crc32_pclmul ghash_clmulni_intel ecdh_generic ecc r8169 realtek lpc_ich snd_intel_dspcfg snd_hda_codec snd_hwdep snd_hda_core snd_pcm pinctrl_cherryview prime_numbers [last unloaded: i915]
> <4> [431.679883] CPU: 0 PID: 110 Comm: kworker/u4:3 Tainted: G     U            5.11.0-rc3-CI-CI_DRM_9583+ #1
> <4> [431.679895] Hardware name:  /NUC5CPYB, BIOS PYBSWCEL.86A.0058.2016.1102.1842 11/02/2016
> <4> [431.679905] Workqueue: i915 __i915_gem_free_work [i915]
> <4> [431.680831] RIP: 0010:drm_mm_takedown+0x51/0x100
> <4> [431.680850] Code: 44 24 08 65 48 33 04 25 28 00 00 00 0f 85 b6 00 00 00 48 83 c4 10 5b 5d 41 5c c3 48 89 fb 48 c7 c7 c8 b7 38 82 e8 00 d6 37 00 <0f> 0b 48 8b 3d 96 d5 d1 00 ba 00 10 00 00 be c0 0c 00 00 e8 d7 64
> <4> [431.680862] RSP: 0018:ffffc90000ad7dc0 EFLAGS: 00010282
> <4> [431.680879] RAX: 0000000000000000 RBX: ffff8881109aa140 RCX: 0000000000000001
> <4> [431.680888] RDX: 0000000080000001 RSI: ffffffff8235a70f RDI: 00000000ffffffff
> <4> [431.680897] RBP: ffff8881109aa178 R08: 0000000000000001 R09: 0000000000000001
> <4> [431.680906] R10: 0000000025eaec48 R11: 00000000f5b271a7 R12: ffff88810a38ddc0
> <4> [431.680916] R13: 00000000ffffffff R14: ffffffff82861b70 R15: ffff88810b715538
> <4> [431.680925] FS:  0000000000000000(0000) GS:ffff88817b800000(0000) knlGS:0000000000000000
> <4> [431.680935] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> <4> [431.680945] CR2: 000056377cfd7c48 CR3: 00000001045de000 CR4: 00000000001006f0
> <4> [431.680954] Call Trace:
> <4> [431.680977]  __intel_memory_region_destroy+0x24/0x50 [i915]
> <4> [431.681340]  i915_gem_object_release_stolen+0x26/0x40 [i915]
> <4> [431.681637]  __i915_gem_free_objects.isra.21+0x1ef/0x3b0 [i915]
> <4> [431.681935]  process_one_work+0x270/0x5c0
> <4> [431.682022]  worker_thread+0x37/0x380
> <4> [431.682047]  ? process_one_work+0x5c0/0x5c0
> <4> [431.682062]  kthread+0x146/0x170
> <4> [431.682077]  ? kthread_park+0x80/0x80
> <4> [431.682098]  ret_from_fork+0x22/0x30
> <4> [431.682153] irq event stamp: 1872905
> <4> [431.682162] hardirqs last  enabled at (1872911): [<ffffffff8112bd9a>] console_unlock+0x49a/0x580
> <4> [431.682176] hardirqs last disabled at (1872916): [<ffffffff8112bd06>] console_unlock+0x406/0x580
> <4> [431.682187] softirqs last  enabled at (1872850): [<ffffffff81e00342>] __do_softirq+0x342/0x48e
> <4> [431.682201] softirqs last disabled at (1872845): [<ffffffff81c00f52>] asm_call_irq_on_stack+0x12/0x20
> <4> [431.682214] ---[ end trace 5d3bcd818e2e3816 ]---
> <3> [431.686188] [drm:drm_mm_takedown] *ERROR* node [0002d000 + 00004000]: inserted at
>  drm_mm_insert_node_in_range+0x34a/0x5b0
>  i915_gem_stolen_insert_node_in_range+0x7b/0xa0 [i915]
>  _i915_gem_object_create_stolen+0x83/0xd0 [i915]
>  i915_gem_object_create_region+0x61/0x140 [i915]
>  intel_engine_create_ring+0x176/0x230 [i915]
>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2927
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
