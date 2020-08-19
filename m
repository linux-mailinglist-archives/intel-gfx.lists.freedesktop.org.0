Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C4412491DC
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Aug 2020 02:38:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AD8F89E3B;
	Wed, 19 Aug 2020 00:38:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com
 [IPv6:2a00:1450:4864:20::144])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E05489E3B
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Aug 2020 00:38:30 +0000 (UTC)
Received: by mail-lf1-x144.google.com with SMTP id d2so11178444lfj.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Aug 2020 17:38:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yd8RQiYd3lIlnveKq9AD3vAUL0UPw0snW7rgN+Ot8+A=;
 b=YWKYVyFKZKU8Du8+0eku2p5ObHZXJkU0CbMfnVxdCIL9RSlgf5EBwXe+dKU14eyYUO
 +iL7GeDnuanZIJgxOkMR4E8EbAjyPFiGvW6/wCGigLTZ8AKm6yL1sM1IyuikinZ8PyH4
 d20kY/3xnxM/f+cb3jcvtnmo+t0BTkuumJlJ4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yd8RQiYd3lIlnveKq9AD3vAUL0UPw0snW7rgN+Ot8+A=;
 b=WPXil7BApQlXeBu4LFNLgdLi/kbUmnnmjin3mHs+P+nhC9cg/66kBEs5O1JhYwqHNp
 GyIoRMUOm3v8qcmhx0JI/oS9xXTW2RZoDerEvXHrpmrRnuQGhC9/p0E7OX2d6aLZqqQh
 kWFOCb2O4dS4JBygRuDeD8AbM8PgwCP//XC+I4W4DZfkSBAuK27VaV87C34NeFgQo1xE
 clc0Evc+CgktY7MI90u6rCpGALpcMm/v2O4i/mgGsxl93fh6dKW843UT6k9W91Z/mn6W
 FqAlvz9yuO7ZE2d2NKaFlGq/cM/tYdbDNTEf3IEAM+2OOt8xVhFVR4cg3ixfpqc9rlL2
 kWpQ==
X-Gm-Message-State: AOAM533H1w/PBjkkgJpvveIAv9RFz2AuB7wzFbvsi7WRIS4Xb9FNQ829
 oZTDaP7v1zVuLkjuA7bAHE0mKIole/iR8w==
X-Google-Smtp-Source: ABdhPJxvB/GRcQSJtFdJNq5fqwhyeDtRBYDFdH/DrsUsQ13GfxeLWHi/lHZvPRY9Z+9jLu5qnDknfg==
X-Received: by 2002:a19:c852:: with SMTP id y79mr10833377lff.37.1597797508249; 
 Tue, 18 Aug 2020 17:38:28 -0700 (PDT)
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com.
 [209.85.208.179])
 by smtp.gmail.com with ESMTPSA id c21sm6833472lfh.38.2020.08.18.17.38.26
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 18 Aug 2020 17:38:27 -0700 (PDT)
Received: by mail-lj1-f179.google.com with SMTP id v4so23496703ljd.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Aug 2020 17:38:26 -0700 (PDT)
X-Received: by 2002:a2e:7615:: with SMTP id r21mr10229382ljc.371.1597797506311; 
 Tue, 18 Aug 2020 17:38:26 -0700 (PDT)
MIME-Version: 1.0
References: <20200817161132.GA4711@amd>
In-Reply-To: <20200817161132.GA4711@amd>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 18 Aug 2020 17:38:10 -0700
X-Gmail-Original-Message-ID: <CAHk-=wh6_eWwvpL=AhOeY0btf_dkpu+0joNzPZWfbBWgAeAhMA@mail.gmail.com>
Message-ID: <CAHk-=wh6_eWwvpL=AhOeY0btf_dkpu+0joNzPZWfbBWgAeAhMA@mail.gmail.com>
To: Pavel Machek <pavel@ucw.cz>, Chris Wilson <chris@chris-wilson.co.uk>, 
 Matthew Auld <matthew.auld@intel.com>
Subject: Re: [Intel-gfx] 5.9-rc1: graphics regression moved from -next to
 mainline
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 kernel list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ping on this?

The code disassembles to

  24: 8b 85 d0 fd ff ff    mov    -0x230(%ebp),%eax
  2a:* c7 03 01 00 40 10    movl   $0x10400001,(%ebx) <-- trapping instruction
  30: 89 43 04              mov    %eax,0x4(%ebx)
  33: 8b 85 b4 fd ff ff    mov    -0x24c(%ebp),%eax
  39: 89 43 08              mov    %eax,0x8(%ebx)
  3c: e9                    jmp ...

which looks like is one of the cases in __reloc_entry_gpu(). I *think*
it's this one:

        } else if (gen >= 3 &&
                   !(IS_I915G(eb->i915) || IS_I915GM(eb->i915))) {
                *batch++ = MI_STORE_DWORD_IMM | MI_MEM_VIRTUAL;
                *batch++ = addr;
                *batch++ = target_addr;

where that "batch" pointer is 0xf8601000, so it looks like it just
overflowed into the next page that isn't there.

The cleaned-up call trace is

  drm_ioctl+0x1f4/0x38b ->
    drm_ioctl_kernel+0x87/0xd0 ->
      i915_gem_execbuffer2_ioctl+0xdd/0x360 ->
        i915_gem_do_execbuffer+0xaab/0x2780 ->
          eb_relocate_vma

but there's a lot of inling going on, so..

The obvious suspect is commit 9e0f9464e2ab ("drm/i915/gem: Async GPU
relocations only") but that's going purely by "that seems to be the
main relocation change this mmrge window".

                     Linus

On Mon, Aug 17, 2020 at 9:11 AM Pavel Machek <pavel@ucw.cz> wrote:
>
> Hi!
>
> After about half an hour of uptime, screen starts blinking on thinkpad
> x60 and machine becomes unusable.
>
> I already reported this in -next, and now it is in mainline. It is
> 32-bit x86 system.
>
>
>                                                                 Pavel
>
>
> Aug 17 17:36:04 amd ovpn-castor[2828]: UDPv4 link local (bound):
> [undef]
> Aug 17 17:36:04 amd ovpn-castor[2828]: UDPv4 link remote:
> [AF_INET]87.138.219.28:1194
> Aug 17 17:36:23 amd kernel: BUG: unable to handle page fault for
> address: f8601000
> Aug 17 17:36:23 amd kernel: #PF: supervisor write access in kernel
> mode
> Aug 17 17:36:23 amd kernel: #PF: error_code(0x0002) - not-present page
> Aug 17 17:36:23 amd kernel: *pdpt = 00000000318f2001 *pde =
> 0000000000000000
> Aug 17 17:36:23 amd kernel: Oops: 0002 [#1] PREEMPT SMP PTI
> Aug 17 17:36:23 amd kernel: CPU: 1 PID: 3004 Comm: Xorg Not tainted
> 5.9.0-rc1+ #86
> Aug 17 17:36:23 amd kernel: Hardware name: LENOVO 17097HU/17097HU,
> BIOS 7BETD8WW (2.19 ) 03/31
> /2011
> Aug 17 17:36:23 amd kernel: EIP: eb_relocate_vma+0xcf6/0xf20
> Aug 17 17:36:23 amd kernel: Code: e9 ff f7 ff ff c7 85 c0 fd ff ff ed
> ff ff ff c7 85 c4 fd ff
> ff ff ff ff ff 8b 85 c0 fd ff ff e9 a5 f8 ff ff 8b 85 d0 fd ff ff <c7>
> 03 01 00 40 10 89 43 04
>  8b 85 b4 fd ff ff 89 43 08 e9 9f f7 ff
>  Aug 17 17:36:23 amd kernel: EAX: 003c306c EBX: f8601000 ECX: 00847000
>  EDX: 00000000
>  Aug 17 17:36:23 amd kernel: ESI: 00847000 EDI: 00000000 EBP: f1947c68
>  ESP: f19479fc
>  Aug 17 17:36:23 amd kernel: DS: 007b ES: 007b FS: 00d8 GS: 00e0 SS:
>  0068 EFLAGS: 00210246
>  Aug 17 17:36:23 amd kernel: CR0: 80050033 CR2: f8601000 CR3: 31a1e000
>  CR4: 000006b0
>  Aug 17 17:36:23 amd kernel: Call Trace:
>  Aug 17 17:36:23 amd kernel: ? i915_vma_pin+0xc5/0x8c0
>  Aug 17 17:36:23 amd kernel: ? __mutex_unlock_slowpath+0x2b/0x280
>  Aug 17 17:36:23 amd kernel: ? __active_retire+0x7e/0xd0
>  Aug 17 17:36:23 amd kernel: ? mutex_unlock+0xb/0x10
>  Aug 17 17:36:23 amd kernel: ? i915_vma_pin+0xc5/0x8c0
>  Aug 17 17:36:23 amd kernel: ? __lock_acquire.isra.31+0x261/0x530
>  Aug 17 17:36:23 amd kernel: ? eb_lookup_vmas+0x1f5/0x9e0
>  Aug 17 17:36:23 amd kernel: i915_gem_do_execbuffer+0xaab/0x2780
>  Aug 17 17:36:23 amd kernel: ? _raw_spin_unlock_irqrestore+0x27/0x40
>  Aug 17 17:36:23 amd kernel: ? __lock_acquire.isra.31+0x261/0x530
>  Aug 17 17:36:23 amd kernel: ? __lock_acquire.isra.31+0x261/0x530
>  Aug 17 17:36:23 amd kernel: ? kvmalloc_node+0x69/0x70
>  Aug 17 17:36:23 amd kernel: i915_gem_execbuffer2_ioctl+0xdd/0x360
>  Aug 17 17:36:23 amd kernel: ? i915_gem_execbuffer_ioctl+0x2b0/0x2b0
>  Aug 17 17:36:23 amd kernel: drm_ioctl_kernel+0x87/0xd0
>  Aug 17 17:36:23 amd kernel: drm_ioctl+0x1f4/0x38b
>  Aug 17 17:36:23 amd kernel: ? i915_gem_execbuffer_ioctl+0x2b0/0x2b0
>  Aug 17 17:36:23 amd kernel: ? posix_get_monotonic_timespec+0x1c/0x90
>  Aug 17 17:36:23 amd kernel: ? ktime_get_ts64+0x7a/0x1e0
>  Aug 17 17:36:23 amd kernel: ? drm_ioctl_kernel+0xd0/0xd0
>  Aug 17 17:36:23 amd kernel: __ia32_sys_ioctl+0x1ad/0x799
>  Aug 17 17:36:23 amd kernel: ? debug_smp_processor_id+0x12/0x20
>  Aug 17 17:36:23 amd kernel: ? exit_to_user_mode_prepare+0x4f/0x100
>  Aug 17 17:36:23 amd kernel: do_int80_syscall_32+0x2c/0x40
>  Aug 17 17:36:23 amd kernel: entry_INT80_32+0x111/0x111
>  Aug 17 17:36:23 amd kernel: EIP: 0xb7fbc092
>  Aug 17 17:36:23 amd kernel: Code: 00 00 00 e9 90 ff ff ff ff a3 24 00
>  00 00 68 30 00 00 00 e9 80 ff ff ff ff a3 e8 ff ff ff 66 90 00 00 00
>  00 00 00 00 00 cd 80 <c3> 8d b4 26 00 00 00 00 8d b6 00 00 00 00 8b
>  1c 24 c3 8d b4 26 00
>  Aug 17 17:36:23 amd kernel: EAX: ffffffda EBX: 0000000a ECX: c0406469
>  EDX: bff0ae3c
>  Aug 17 17:36:23 amd kernel: ESI: b73aa000 EDI: c0406469 EBP: 0000000a
>  ESP: bff0adb4
>  Aug 17 17:36:23 amd kernel: DS: 007b ES: 007b FS: 0000 GS: 0033 SS:
>  007b EFLAGS: 00200296
>  Aug 17 17:36:23 amd kernel: ? asm_exc_nmi+0xcc/0x2bc
>  Aug 17 17:36:23 amd kernel: Modules linked in:
>  Aug 17 17:36:23 amd kernel: CR2: 00000000f8601000
>  Aug 17 17:36:23 amd kernel: ---[ end trace 2ca9775068bbac06 ]---
>
> --
> (english) http://www.livejournal.com/~pavelmachek
> (cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blog.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
