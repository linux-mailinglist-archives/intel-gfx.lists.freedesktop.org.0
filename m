Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OMmkMTPV72nXGgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 23:29:23 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31D5447A9CE
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 23:29:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BC4188647;
	Mon, 27 Apr 2026 21:29:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="eyRVoFH1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
 [209.85.221.54])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E263710E942
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Apr 2026 21:29:19 +0000 (UTC)
Received: by mail-wr1-f54.google.com with SMTP id
 ffacd0b85a97d-43d0deb7ad5so8838783f8f.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Apr 2026 14:29:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1777325358; x=1777930158; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Ebg5+i/pOUuQx7xxuERTUppaj1qL6vIxTxgv86V/NC0=;
 b=eyRVoFH1LG4KKQJuS7sWrndWcKdWn69XhcNEUT+LANvlHTpj5RhhEV0Z+3ZtlH4ZjN
 FLIt20SFBi35AW/7fAjQ2RMVAu/9y97RMKz+QkQvJYbrEFb626rs3Nnxs9U18yVUiBel
 DT/HNhZ2iolKtM/NRUTHgYLxvuyoXnMcGcumRmWQLj2mOaf/DJhDTI8iKzKs+XIcJUlb
 y42FUCgPl20W5qYAGXus4kmuUrnjAZxvUCZ8DgB/rcHhscmmHPdCRtAHGWUGX/Erm3lW
 Tk20R5umfR9W1pQEaIIO69wd+Ks8MIPN1POXriTsvH4J51kVGTWlTyZhdet+L0pCTToL
 1Hjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777325358; x=1777930158;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=Ebg5+i/pOUuQx7xxuERTUppaj1qL6vIxTxgv86V/NC0=;
 b=QG/O/Ubtx0oZfwlPtWAjjaDilc9DCphLJspEAY4nMv+1J80TcX/LF0aYU4VSAIOSs4
 3BWbhHcXWl09MBahsHkdmdqTVotJtW8ICpf3C5nr5ptOnzXJfdfKNhvd1EcMXmG66Kia
 gDOhfIJ1x4mdXdp9ptyEvj5ZlIENgQT76MaXdV50MxKTwBpEVVgp/5knWQoHnE05RRKk
 CLYXo9bICsZYrBdTVofgL3cx1wVusL2b7xviF3QMgaLEO79fEuctwnYskpcG5+1aFeP2
 oRvvZoTVRJWBhXa6wjuLXwq3m2V16fF2uA1jfMHrOJQj5Wvj0jxvXD/Wpx9xw6QfwDaC
 UTDw==
X-Forwarded-Encrypted: i=1;
 AFNElJ+so04Xf2Sd6hcdQddqDw23UCz8yAfo20YZyLAcg0eW1l+PhVIDMA3K69BzNdILbRFq+OdbY5rD/UY=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzNf81xPx0B++8Gf9W5Bg/LljqfWuiMvaJX3R/2QNrNnMsiqlbV
 fXqEoyoAPR0LAYHhp59d1DD0HDL+Gv8ddkMJeUlrTmNquvoNjeyuqiWr
X-Gm-Gg: AeBDiet8V+J7eYjdbzuGlSTBUSaZ9J5cr6j7StChsEr8REH+mnneyfPGuA1k5Smcch2
 nkyEezInBs9xUmlOJbHkGyk9Vq8awBiOMeM8Pk97LSdt0OdBtaC/emlHW4sEiVeCxQrExLCC6mY
 PIK6p29PZRPXcFbE3GxKxn2yyBJG+HDdTrAFZA0eVfTq9rxznR7EhUHIwbJP5pSVp5IZR7yVI+Z
 KqzpU6RxbWa3DI31QznEu6tiyIS6NTuWAGXJa+qrc9Qhtz8N7bdqgaZ1ZQONiN7UJB6tGFeME3d
 qr7ffbf/PLoLNuf7N6vfWxXqAs3Ig63wXDlSXnGEKxC1gGsC7kBtmOjZtCDfXeTF5VzI4w12M/r
 mbilw3EFca287JmbVPJ7EKBOT3j5XhMfpm7ytLbsn7EUGN9xb9MXQyZ6NhJ+/z1aQ/zNwlEO8jX
 xiTgkiiuwu2qna9GQwBYn2EEEWb+8srTe/tYO3LXdVav790PrHJlVQfcLs23iJzsfWll36feQy9
 11JMdkhvuoqwQ==
X-Received: by 2002:a05:6000:3109:b0:43d:7d6f:f531 with SMTP id
 ffacd0b85a97d-44649ba1f4amr816127f8f.30.1777325358072; 
 Mon, 27 Apr 2026 14:29:18 -0700 (PDT)
Received: from pumpkin (82-69-66-36.dsl.in-addr.zen.co.uk. [82.69.66.36])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-4463d02f270sm1120515f8f.9.2026.04.27.14.29.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Apr 2026 14:29:17 -0700 (PDT)
Date: Mon, 27 Apr 2026 22:29:14 +0100
From: David Laight <david.laight.linux@gmail.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>, Yury Norov
 <ynorov@nvidia.com>, Andrew Morton <akpm@linux-foundation.org>, Thomas
 Gleixner <tglx@linutronix.de>, linux-alpha@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-snps-arc@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-mips@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, kvm@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-s390@vger.kernel.org,
 sparclinux@vger.kernel.org, linux-um@lists.infradead.org,
 dmaengine@vger.kernel.org, linux-efi@vger.kernel.org,
 linux-fsi@lists.ozlabs.org, amd-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 linux-wpan@vger.kernel.org, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
 linux-serial@vger.kernel.org, linux-usb@vger.kernel.org,
 xen-devel@lists.xenproject.org, linux-fsdevel@vger.kernel.org,
 ocfs2-devel@lists.linux.dev, bpf@vger.kernel.org,
 kasan-dev@googlegroups.com, linux-mm@kvack.org, linux-x25@vger.kernel.org,
 rust-for-linux@vger.kernel.org, linux-sound@vger.kernel.org,
 sound-open-firmware@alsa-project.org, linux-csky@vger.kernel.org,
 linux-hexagon@vger.kernel.org, loongarch@lists.linux.dev,
 linux-m68k@lists.linux-m68k.org, linux-openrisc@vger.kernel.org,
 linux-parisc@vger.kernel.org, linux-sh@vger.kernel.org,
 linux-arch@vger.kernel.org
Subject: Re: [RFC PATCH v1 5/9] uaccess: Switch to
 copy_{to/from}_user_partial() when relevant
Message-ID: <20260427222914.1cb2dd3b@pumpkin>
In-Reply-To: <CAHk-=whC1DZojwdMB1=sJWG2=dsCdfyU8N6tDE1qx50HRZ-WJQ@mail.gmail.com>
References: <cover.1777306795.git.chleroy@kernel.org>
 <289b424e243ba2c4139ea04009cf8b9c448a87ff.1777306795.git.chleroy@kernel.org>
 <CAHk-=whC1DZojwdMB1=sJWG2=dsCdfyU8N6tDE1qx50HRZ-WJQ@mail.gmail.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; arm-unknown-linux-gnueabihf)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
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
X-Rspamd-Queue-Id: 31D5447A9CE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:torvalds@linux-foundation.org,m:chleroy@kernel.org,m:ynorov@nvidia.com,m:akpm@linux-foundation.org,m:tglx@linutronix.de,m:linux-alpha@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-snps-arc@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-mips@vger.kernel.org,m:linuxppc-dev@lists.ozlabs.org,m:kvm@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:linux-s390@vger.kernel.org,m:sparclinux@vger.kernel.org,m:linux-um@lists.infradead.org,m:dmaengine@vger.kernel.org,m:linux-efi@vger.kernel.org,m:linux-fsi@lists.ozlabs.org,m:amd-gfx@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:linux-wpan@vger.kernel.org,m:netdev@vger.kernel.org,m:linux-wireless@vger.kernel.org,m:linux-spi@vger.kernel.org,m:linux-media@vger.kernel.org,m:linux-staging@lists.linux.dev,m:linux-serial@vger.kernel.org,m:linux-usb@vger.kernel.org,m:xen-devel@lists.xenproject.org,m:linux-fsdevel@vger.kernel.org,m:ocfs2-devel@lists.linux.dev,m:bpf@vger.kernel.org,m:ka
 san-dev@googlegroups.com,m:linux-mm@kvack.org,m:linux-x25@vger.kernel.org,m:rust-for-linux@vger.kernel.org,m:linux-sound@vger.kernel.org,m:sound-open-firmware@alsa-project.org,m:linux-csky@vger.kernel.org,m:linux-hexagon@vger.kernel.org,m:loongarch@lists.linux.dev,m:linux-m68k@lists.linux-m68k.org,m:linux-openrisc@vger.kernel.org,m:linux-parisc@vger.kernel.org,m:linux-sh@vger.kernel.org,m:linux-arch@vger.kernel.org,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[48];
	FORGED_SENDER(0.00)[davidlaightlinux@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[davidlaightlinux@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	TAGGED_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,linux-foundation.org:email]

On Mon, 27 Apr 2026 12:01:23 -0700
Linus Torvalds <torvalds@linux-foundation.org> wrote:

> On Mon, 27 Apr 2026 at 10:18, Christophe Leroy (CS GROUP)
> <chleroy@kernel.org> wrote:
> >
> > In a subsequent patch, copy_{to/from}_user() will be modified to
> > return -EFAULT when copy fails.  
> 
> Please don't do this.
> 
> This is a maintenance nightmare, and changes pretty much three decades
> of semantics, and will cause *very* subtle backporting issues if
> somebody happens to rely on the old / new behavior.
> 
> I understand the reasoning for the change, but I really don't think
> the pain of creating yet another user copy interface is worth it.
> 
> We already have a lot of different versions of user copies for
> different reasons, and while they all tend to have a good reason (and
> some not-so-good, but historical reasons) for existing, this one
> doesn't seem worth it.
> 
> The main - perhaps only - reason for this "partial" version is that
> you want to do that "automatically inlined and optimized fixed-sized
> case".
> 
> But here's the thing: I think you can already do that. Yes, it
> requires some improvements to unsafe_copy_from_user(), but *that*
> interface doesn't have three decades of history associated with it,
> _and_ you're extending on that one anyway in this series.
> 
> "unsafe_copy_from_user()" is very odd, is meant only for small simple
> copies that can be inlined and it's special-cased for 'objtool' anyway
> (because objtool would have complained about an out-of-line call,
> although it could have been special-cased other ways).
> 
> In other words: unsafe_copy_from_user() is *very* close to what you
> want for that "Oh, I noticed that it's a small fixed-size copy, so I
> want to special-case copy-from-user for that".
> 
> The _only_ issue with unsafe_copy_from_user() is that you can't see
> that there were partial successes. But if *that* was fixed, then this
> whole "create a new copy_from_user interface" issue would just go
> away.
> 
> So please - let's just change unsafe_copy_from_user() to be usable for
> the partial case.
> 
> And the thing is, all the existing unsafe_copy_from_user()
> implementations already effectively *have* the "how much did I not
> copy" internally, and they actually do extra work to hide it, ie they
> have things like that
> 
>         int _i;
> 
> that is "how many bytes have I copied" in the powerpc implementation,
> or the x86 code does
> 
>         size_t __ucu_len = (_len);
> 
> where that "ucu_len" is updated as you go along and is literally the
> "how many bytes are left to copy" return value that is missing from
> this interface.
> 
> So what I would suggest is
> 
>  - introduce a new user accessor helper that is used for *both*
> unsafe_copy_to/from_user() *and* the "inline small constant-sized
> normal copy_to/from_user()" calls
> 
>  - it's the same thing as the existing  unsafe_copy_to/from_user()
> implementation, except it exposes how many bytes are left to be copied
> to the exception label.

I think there is a slight difference in that the normal copy_to_user()
will determine the exact offset of the error by retrying with byte copies.

There is also the issue of misaligned copies.

Then there is the 'bugbear' of hardened user copies.
Chasing down the stack to find whether the kernel buffer crosses
a stack frame is probably more expensive than the copy for the typically
small copies that will use on-stack buffers.

	David

> 
> IOW, it would look something like
> 
>      #define unsafe_copy_to_user_outlen(_dst,_src,_len,label)...
> 
> which is exactly the same as the current unsafe_copy_to_user(),
> *except* it changes "_len" as it does along.
> 
> And then you use that for both the "real" unsafe_copy_user and for the
> "small constant values" case.
> 
> Just as an example, attached is a completely stupid rough draft of a
> patch that does this for x86 and only for unsafe_copy_to_user().
> 
> And I made a very very hacky change to kernel/sys.c to see what the
> code generation looks like.
> 
> This is what it results in on x86 with clang (with all the magic
> .section data edited out):
> 
>         ... edited out the code to generate the times
>         ... this is the actual user copy:
>         # HERE!
>         movabsq $81985529216486895, %rcx        # imm = 0x123456789ABCDEF
>         cmpq    %rcx, %rbx
>         cmovaq  %rcx, %rbx
>         stac
>         movq    %r13, (%rbx)                    # exception to .LBB45_8
>         movq    %r14, 8(%rbx)                   # exception to .LBB45_8
>         movq    %r15, 16(%rbx)                  # exception to .LBB45_8
>         movq    %rax, 24(%rbx)                  # exception to .LBB45_8
>         clac
> .LBB45_6:
>         movq    jiffies(%rip), %rdi
>         callq   jiffies_64_to_clock_t
> .LBB45_7:
>         addq    $16, %rsp
>         popq    %rbx
>         popq    %r12
>         popq    %r13
>         popq    %r14
>         popq    %r15
>         retq
> .LBB45_8:
>         clac
>         movq    $-14, %rax
>         jmp     .LBB45_7
> 
> and notice how the compiler noticed that the 'outlen' isn't actually
> used, and turned the exception label into just a "return -EFAULT" and
> never actually generated any code for updating remaining lengths?
> 
> That actually looks pretty much optimal for a 32-byte user copy.
> 
> And it didn't involve changing the semantics at all.
> 
> Just to check, I changed that "times()" system call to return the
> number of bytes uncopied instead (to emulate the "I actually want to
> know what's left" case), and it generated this:
> 
>         # HERE!
>         movabsq $81985529216486895, %rcx        # imm = 0x123456789ABCDEF
>         cmpq    %rcx, %rbx
>         cmovaq  %rcx, %rbx
>         stac
>         movl    $32, %ecx
>         movq    %r13, (%rbx)                    # exception to .LBB45_7
>         movl    $24, %ecx
>         movq    %r15, 8(%rbx)                   # exception to .LBB45_7
>         movl    $16, %ecx
>         movq    %r14, 16(%rbx)                  # exception to .LBB45_7
>         movl    $8, %ecx
>         movq    %rax, 24(%rbx)                  # exception to .LBB45_7
>         clac
>         xorl    %ecx, %ecx
> .LBB45_8:
>         movq    %rcx, %rax
>         addq    $16, %rsp
>         popq    %rbx
>         popq    %r12
>         popq    %r13
>         popq    %r14
>         popq    %r15
>         retq
> .LBB45_6:
>         movq    jiffies(%rip), %rdi
>         jmp     jiffies_64_to_clock_t           # TAILCALL
> .LBB45_7:
>         clac
>         jmp     .LBB45_8
> 
> so it all seems to work - although obviously the above is *not* the normal case.
> 
> NOTE NOTE NOTE! The attached patch is entirely untested. I obviously
> did some "test code generation" with it, but I only *looked* at the
> result, and maybe it has some fundamental problem that I just didn't
> notice. So treat this as a "how about this approach" patch, not as
> anything more serious than that.
> 
> And the kerrnel/sys.c hack is very obviously just that: a complate
> hack for testing.
> 
> A real patch would do that "for small constant-sized copies, turn
> copy_to_user() automatically into "_small_copy_to_user()".
> 
> The attached is *not* a real patch. Treat it with the contempt it deserves.
> 
>              Linus

