Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eAgdK52y72n5DwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 21:01:49 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0AA4478EC0
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 21:01:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2286610E8E2;
	Mon, 27 Apr 2026 19:01:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=linux-foundation.org header.i=@linux-foundation.org header.b="AlT4c5bR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com
 [209.85.208.46])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 846ED10E8E2
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Apr 2026 19:01:45 +0000 (UTC)
Received: by mail-ed1-f46.google.com with SMTP id
 4fb4d7f45d1cf-67179ed133dso11801801a12.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Apr 2026 12:01:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google; t=1777316504; x=1777921304;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=eo95+vxRQveZjyTXx2nQjz3zXl5qvV2nK5Gunw4PJlE=;
 b=AlT4c5bREGyZIFBf+ftU8BBAWQe8KWfIvuk0zlem+y51MuNKmoXigqUGe3XGZgL0Up
 AIVRm2HiOr6bmjP6rggsoEURNKe4UXYCIdmigsjgH2LwnZUXjFan4KyPMklxU76PA8R8
 Z74ovn9u9sf5gAjR3GZE6LircAqICfnE9LNkA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777316504; x=1777921304;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=eo95+vxRQveZjyTXx2nQjz3zXl5qvV2nK5Gunw4PJlE=;
 b=h+PxFJkmCnQF1dpT8+F6+t4UZGigSKgxYrw5/0gopdDDjyAgv72wpd2cbqu7+wQgnU
 Xiz2z82o0nK47Qa/9hd+0pD/9qQHrAK69OFL5CF/4zIboc3zfBcX4kt6PJEJhD3PZCCj
 axnpyFVJG4WsscxPDi05cMFH9INX6nIB7zJE6SOd2i8CcjmzHrNEeYUHspezYAYcdW4q
 JLNsN9Y36ZbVN1Ph8WjAaHd/e7SQwTOTni1Snthw7F9ISEClJA87rfx3FSWeb6YT2S0t
 RndFpUEiSJtqPAalDWMwWewpdRfSMiwxxonqc4vw75kBzyG+lTPHNM7/8+5Y+MrRV0ee
 oymA==
X-Forwarded-Encrypted: i=1;
 AFNElJ9VQgsxpG/i5ITQ8hL27Za2F9Y6pNEUprLPyVzr9EkgZ3fI79+bfUZWH5CH1LFJ7SAdlFKBDZbiDFA=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwnxtxqYQI9OzJ7ZvO/86yeOnd1ajWG7Ze5nPGEaOiEK+m6REhN
 CNB/SqneVHbcgAQXz1iFVesCWFTFFaUR6AEUcJmN+FBhhPgNjU7R2W65rnpEShEXq3QSEkyeQnp
 8D4Okw8I=
X-Gm-Gg: AeBDieuZbV7cLXOkCi97JjyqJJNspOeUK7S9+EnnmY9GipwjePV+3pXhZ/IElbYdI7n
 2Pu2mGbL3d3cR0PmIOMzo4W2adzlWOFQ/6Dc01hnFCeVsfEDn4rfGzVD1TwjG7N2SFsMOWIQzU5
 0rK9NKfz1ZI/jgrlZNl/CpBygWdAOsMEColKSPDYKqjN7e9pDsTsDt2/T6nFYeE7HY5YnbgnuEG
 S7ZgnKhAcqzsvivy52+1urs3ECQQr6T0bhyj5xzy3QSbtAxswXmzL+uN3gk+n62K8F9kxOaU/8q
 Ij2oNntBdaB9zWoHWrfwnNa/tKDbLxYFB6GAKM4QoLw0J0DvpWGqMXJ30+s+uFdM0n2GjECikcD
 WRdgsceCfBq0z/dqRDELBzFJ+lW+nKkkVr3yl7JqWN9AtCCOysNb6wi03gw3E+rnp/0HlFtzoZ6
 KEWow98rPZO5SFoZinB/k/Vn2Ac+36iQETanJMreUMPjYqJO+6MzHdJNEEv33i+0l/zO3PKu0DK
 2zd/LBqhjE=
X-Received: by 2002:a05:6402:158c:b0:66d:d2f9:520c with SMTP id
 4fb4d7f45d1cf-679b6742fc9mr228695a12.19.1777316503033; 
 Mon, 27 Apr 2026 12:01:43 -0700 (PDT)
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com.
 [209.85.218.48]) by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-679b68523f3sm53337a12.20.2026.04.27.12.01.42
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 27 Apr 2026 12:01:42 -0700 (PDT)
Received: by mail-ej1-f48.google.com with SMTP id
 a640c23a62f3a-ba60d78aff3so1317271366b.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Apr 2026 12:01:42 -0700 (PDT)
X-Forwarded-Encrypted: i=1;
 AFNElJ+x1lPlHW/NWxvq+wTCWlMCn+kSm2Cps4D8H7mA/Y2D82dLYIbnEBzco9ri4JU1fumqGDsNpp/Y69Q=@lists.freedesktop.org
X-Received: by 2002:a17:907:9495:b0:ba3:a8ef:3597 with SMTP id
 a640c23a62f3a-bb80443c92emr2812866b.25.1777316502372; Mon, 27 Apr 2026
 12:01:42 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1777306795.git.chleroy@kernel.org>
 <289b424e243ba2c4139ea04009cf8b9c448a87ff.1777306795.git.chleroy@kernel.org>
In-Reply-To: <289b424e243ba2c4139ea04009cf8b9c448a87ff.1777306795.git.chleroy@kernel.org>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 27 Apr 2026 12:01:23 -0700
X-Gmail-Original-Message-ID: <CAHk-=whC1DZojwdMB1=sJWG2=dsCdfyU8N6tDE1qx50HRZ-WJQ@mail.gmail.com>
X-Gm-Features: AVHnY4JOOuu1ghb35GF5M7sO3SAfkj4A7WtLiFNY579kWyh92WWRKfW5QE_KjRI
Message-ID: <CAHk-=whC1DZojwdMB1=sJWG2=dsCdfyU8N6tDE1qx50HRZ-WJQ@mail.gmail.com>
Subject: Re: [RFC PATCH v1 5/9] uaccess: Switch to
 copy_{to/from}_user_partial() when relevant
To: "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>
Cc: Yury Norov <ynorov@nvidia.com>, Andrew Morton <akpm@linux-foundation.org>, 
 David Laight <david.laight.linux@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, 
 linux-alpha@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-snps-arc@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-mips@vger.kernel.org, linuxppc-dev@lists.ozlabs.org, 
 kvm@vger.kernel.org, linux-riscv@lists.infradead.org, 
 linux-s390@vger.kernel.org, sparclinux@vger.kernel.org, 
 linux-um@lists.infradead.org, dmaengine@vger.kernel.org, 
 linux-efi@vger.kernel.org, linux-fsi@lists.ozlabs.org, 
 amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
 intel-gfx@lists.freedesktop.org, linux-wpan@vger.kernel.org, 
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org, 
 linux-spi@vger.kernel.org, linux-media@vger.kernel.org, 
 linux-staging@lists.linux.dev, linux-serial@vger.kernel.org, 
 linux-usb@vger.kernel.org, xen-devel@lists.xenproject.org, 
 linux-fsdevel@vger.kernel.org, ocfs2-devel@lists.linux.dev, 
 bpf@vger.kernel.org, kasan-dev@googlegroups.com, linux-mm@kvack.org, 
 linux-x25@vger.kernel.org, rust-for-linux@vger.kernel.org, 
 linux-sound@vger.kernel.org, sound-open-firmware@alsa-project.org, 
 linux-csky@vger.kernel.org, linux-hexagon@vger.kernel.org, 
 loongarch@lists.linux.dev, linux-m68k@lists.linux-m68k.org, 
 linux-openrisc@vger.kernel.org, linux-parisc@vger.kernel.org, 
 linux-sh@vger.kernel.org, linux-arch@vger.kernel.org
Content-Type: multipart/mixed; boundary="000000000000c765e2065075bee2"
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
X-Rspamd-Queue-Id: F0AA4478EC0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	R_DKIM_ALLOW(-0.20)[linux-foundation.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain,text/x-patch];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:chleroy@kernel.org,m:ynorov@nvidia.com,m:akpm@linux-foundation.org,m:david.laight.linux@gmail.com,m:tglx@linutronix.de,m:linux-alpha@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-snps-arc@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-mips@vger.kernel.org,m:linuxppc-dev@lists.ozlabs.org,m:kvm@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:linux-s390@vger.kernel.org,m:sparclinux@vger.kernel.org,m:linux-um@lists.infradead.org,m:dmaengine@vger.kernel.org,m:linux-efi@vger.kernel.org,m:linux-fsi@lists.ozlabs.org,m:amd-gfx@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:linux-wpan@vger.kernel.org,m:netdev@vger.kernel.org,m:linux-wireless@vger.kernel.org,m:linux-spi@vger.kernel.org,m:linux-media@vger.kernel.org,m:linux-staging@lists.linux.dev,m:linux-serial@vger.kernel.org,m:linux-usb@vger.kernel.org,m:xen-devel@lists.xenproject.org,m:linux-fsdevel@vger.kernel.org,m:ocfs2-devel@lists.linux.dev,m:bpf@vger.kernel.org,m:kas
 an-dev@googlegroups.com,m:linux-mm@kvack.org,m:linux-x25@vger.kernel.org,m:rust-for-linux@vger.kernel.org,m:linux-sound@vger.kernel.org,m:sound-open-firmware@alsa-project.org,m:linux-csky@vger.kernel.org,m:linux-hexagon@vger.kernel.org,m:loongarch@lists.linux.dev,m:linux-m68k@lists.linux-m68k.org,m:linux-openrisc@vger.kernel.org,m:linux-parisc@vger.kernel.org,m:linux-sh@vger.kernel.org,m:linux-arch@vger.kernel.org,m:davidlaightlinux@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[linux-foundation.org];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[48];
	FORGED_SENDER(0.00)[torvalds@linux-foundation.org,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+,1:+,2:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[nvidia.com,linux-foundation.org,gmail.com,linutronix.de,vger.kernel.org,lists.infradead.org,lists.ozlabs.org,lists.freedesktop.org,lists.linux.dev,lists.xenproject.org,googlegroups.com,kvack.org,alsa-project.org,lists.linux-m68k.org];
	DKIM_TRACE(0.00)[linux-foundation.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[torvalds@linux-foundation.org,intel-gfx-bounces@lists.freedesktop.org];
	HAS_ATTACHMENT(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid]

--000000000000c765e2065075bee2
Content-Type: text/plain; charset="UTF-8"

On Mon, 27 Apr 2026 at 10:18, Christophe Leroy (CS GROUP)
<chleroy@kernel.org> wrote:
>
> In a subsequent patch, copy_{to/from}_user() will be modified to
> return -EFAULT when copy fails.

Please don't do this.

This is a maintenance nightmare, and changes pretty much three decades
of semantics, and will cause *very* subtle backporting issues if
somebody happens to rely on the old / new behavior.

I understand the reasoning for the change, but I really don't think
the pain of creating yet another user copy interface is worth it.

We already have a lot of different versions of user copies for
different reasons, and while they all tend to have a good reason (and
some not-so-good, but historical reasons) for existing, this one
doesn't seem worth it.

The main - perhaps only - reason for this "partial" version is that
you want to do that "automatically inlined and optimized fixed-sized
case".

But here's the thing: I think you can already do that. Yes, it
requires some improvements to unsafe_copy_from_user(), but *that*
interface doesn't have three decades of history associated with it,
_and_ you're extending on that one anyway in this series.

"unsafe_copy_from_user()" is very odd, is meant only for small simple
copies that can be inlined and it's special-cased for 'objtool' anyway
(because objtool would have complained about an out-of-line call,
although it could have been special-cased other ways).

In other words: unsafe_copy_from_user() is *very* close to what you
want for that "Oh, I noticed that it's a small fixed-size copy, so I
want to special-case copy-from-user for that".

The _only_ issue with unsafe_copy_from_user() is that you can't see
that there were partial successes. But if *that* was fixed, then this
whole "create a new copy_from_user interface" issue would just go
away.

So please - let's just change unsafe_copy_from_user() to be usable for
the partial case.

And the thing is, all the existing unsafe_copy_from_user()
implementations already effectively *have* the "how much did I not
copy" internally, and they actually do extra work to hide it, ie they
have things like that

        int _i;

that is "how many bytes have I copied" in the powerpc implementation,
or the x86 code does

        size_t __ucu_len = (_len);

where that "ucu_len" is updated as you go along and is literally the
"how many bytes are left to copy" return value that is missing from
this interface.

So what I would suggest is

 - introduce a new user accessor helper that is used for *both*
unsafe_copy_to/from_user() *and* the "inline small constant-sized
normal copy_to/from_user()" calls

 - it's the same thing as the existing  unsafe_copy_to/from_user()
implementation, except it exposes how many bytes are left to be copied
to the exception label.

IOW, it would look something like

     #define unsafe_copy_to_user_outlen(_dst,_src,_len,label)...

which is exactly the same as the current unsafe_copy_to_user(),
*except* it changes "_len" as it does along.

And then you use that for both the "real" unsafe_copy_user and for the
"small constant values" case.

Just as an example, attached is a completely stupid rough draft of a
patch that does this for x86 and only for unsafe_copy_to_user().

And I made a very very hacky change to kernel/sys.c to see what the
code generation looks like.

This is what it results in on x86 with clang (with all the magic
.section data edited out):

        ... edited out the code to generate the times
        ... this is the actual user copy:
        # HERE!
        movabsq $81985529216486895, %rcx        # imm = 0x123456789ABCDEF
        cmpq    %rcx, %rbx
        cmovaq  %rcx, %rbx
        stac
        movq    %r13, (%rbx)                    # exception to .LBB45_8
        movq    %r14, 8(%rbx)                   # exception to .LBB45_8
        movq    %r15, 16(%rbx)                  # exception to .LBB45_8
        movq    %rax, 24(%rbx)                  # exception to .LBB45_8
        clac
.LBB45_6:
        movq    jiffies(%rip), %rdi
        callq   jiffies_64_to_clock_t
.LBB45_7:
        addq    $16, %rsp
        popq    %rbx
        popq    %r12
        popq    %r13
        popq    %r14
        popq    %r15
        retq
.LBB45_8:
        clac
        movq    $-14, %rax
        jmp     .LBB45_7

and notice how the compiler noticed that the 'outlen' isn't actually
used, and turned the exception label into just a "return -EFAULT" and
never actually generated any code for updating remaining lengths?

That actually looks pretty much optimal for a 32-byte user copy.

And it didn't involve changing the semantics at all.

Just to check, I changed that "times()" system call to return the
number of bytes uncopied instead (to emulate the "I actually want to
know what's left" case), and it generated this:

        # HERE!
        movabsq $81985529216486895, %rcx        # imm = 0x123456789ABCDEF
        cmpq    %rcx, %rbx
        cmovaq  %rcx, %rbx
        stac
        movl    $32, %ecx
        movq    %r13, (%rbx)                    # exception to .LBB45_7
        movl    $24, %ecx
        movq    %r15, 8(%rbx)                   # exception to .LBB45_7
        movl    $16, %ecx
        movq    %r14, 16(%rbx)                  # exception to .LBB45_7
        movl    $8, %ecx
        movq    %rax, 24(%rbx)                  # exception to .LBB45_7
        clac
        xorl    %ecx, %ecx
.LBB45_8:
        movq    %rcx, %rax
        addq    $16, %rsp
        popq    %rbx
        popq    %r12
        popq    %r13
        popq    %r14
        popq    %r15
        retq
.LBB45_6:
        movq    jiffies(%rip), %rdi
        jmp     jiffies_64_to_clock_t           # TAILCALL
.LBB45_7:
        clac
        jmp     .LBB45_8

so it all seems to work - although obviously the above is *not* the normal case.

NOTE NOTE NOTE! The attached patch is entirely untested. I obviously
did some "test code generation" with it, but I only *looked* at the
result, and maybe it has some fundamental problem that I just didn't
notice. So treat this as a "how about this approach" patch, not as
anything more serious than that.

And the kerrnel/sys.c hack is very obviously just that: a complate
hack for testing.

A real patch would do that "for small constant-sized copies, turn
copy_to_user() automatically into "_small_copy_to_user()".

The attached is *not* a real patch. Treat it with the contempt it deserves.

             Linus

--000000000000c765e2065075bee2
Content-Type: text/x-patch; charset="US-ASCII"; name="patch.diff"
Content-Disposition: attachment; filename="patch.diff"
Content-Transfer-Encoding: base64
Content-ID: <f_mohk3mm10>
X-Attachment-Id: f_mohk3mm10

IGFyY2gveDg2L2luY2x1ZGUvYXNtL3VhY2Nlc3MuaCB8IDE3ICsrKysrKysrKysrLS0tLS0tCiBp
bmNsdWRlL2xpbnV4L3VhY2Nlc3MuaCAgICAgICAgfCAxNiArKysrKysrKysrKysrKysrCiBrZXJu
ZWwvc3lzLmMgICAgICAgICAgICAgICAgICAgfCAgMyArKy0KIDMgZmlsZXMgY2hhbmdlZCwgMjkg
aW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9hcmNoL3g4Ni9pbmNs
dWRlL2FzbS91YWNjZXNzLmggYi9hcmNoL3g4Ni9pbmNsdWRlL2FzbS91YWNjZXNzLmgKaW5kZXgg
M2EwZGQzYzJiMjMzLi4zYjJjNTdjOTE0MTggMTAwNjQ0Ci0tLSBhL2FyY2gveDg2L2luY2x1ZGUv
YXNtL3VhY2Nlc3MuaAorKysgYi9hcmNoL3g4Ni9pbmNsdWRlL2FzbS91YWNjZXNzLmgKQEAgLTYw
NiwxNSArNjA2LDIwIEBAIF9sYWJlbDoJCQkJCQkJCQlcCiAJCWxlbiAtPSBzaXplb2YodHlwZSk7
CQkJCQkJXAogCX0KIAotI2RlZmluZSB1bnNhZmVfY29weV90b191c2VyKF9kc3QsX3NyYyxfbGVu
LGxhYmVsKQkJCVwKKyNkZWZpbmUgdW5zYWZlX2NvcHlfdG9fdXNlcl9vdXRsZW4oX2RzdCxfc3Jj
LF9sZW4sbGFiZWwpCVwKIGRvIHsJCQkJCQkJCQlcCiAJY2hhciBfX3VzZXIgKl9fdWN1X2RzdCA9
IChfZHN0KTsJCQkJXAogCWNvbnN0IGNoYXIgKl9fdWN1X3NyYyA9IChfc3JjKTsJCQkJCVwKLQlz
aXplX3QgX191Y3VfbGVuID0gKF9sZW4pOwkJCQkJXAotCXVuc2FmZV9jb3B5X2xvb3AoX191Y3Vf
ZHN0LCBfX3VjdV9zcmMsIF9fdWN1X2xlbiwgdTY0LCBsYWJlbCk7CVwKLQl1bnNhZmVfY29weV9s
b29wKF9fdWN1X2RzdCwgX191Y3Vfc3JjLCBfX3VjdV9sZW4sIHUzMiwgbGFiZWwpOwlcCi0JdW5z
YWZlX2NvcHlfbG9vcChfX3VjdV9kc3QsIF9fdWN1X3NyYywgX191Y3VfbGVuLCB1MTYsIGxhYmVs
KTsJXAotCXVuc2FmZV9jb3B5X2xvb3AoX191Y3VfZHN0LCBfX3VjdV9zcmMsIF9fdWN1X2xlbiwg
dTgsIGxhYmVsKTsJXAorCXVuc2FmZV9jb3B5X2xvb3AoX191Y3VfZHN0LCBfX3VjdV9zcmMsIF9s
ZW4sIHU2NCwgbGFiZWwpOwlcCisJdW5zYWZlX2NvcHlfbG9vcChfX3VjdV9kc3QsIF9fdWN1X3Ny
YywgX2xlbiwgdTMyLCBsYWJlbCk7CVwKKwl1bnNhZmVfY29weV9sb29wKF9fdWN1X2RzdCwgX191
Y3Vfc3JjLCBfbGVuLCB1MTYsIGxhYmVsKTsJXAorCXVuc2FmZV9jb3B5X2xvb3AoX191Y3VfZHN0
LCBfX3VjdV9zcmMsIF9sZW4sIHU4LCBsYWJlbCk7CVwKK30gd2hpbGUgKDApCisKKyNkZWZpbmUg
dW5zYWZlX2NvcHlfdG9fdXNlcihfZHN0LF9zcmMsX2xlbixsYWJlbCkJCQlcCitkbyB7CQkJCQkJ
CQkJXAorCXNpemVfdCBfX3VjdV9sZW4gPSBfbGVuOwkJCQkJXAorCXVuc2FmZV9jb3B5X3RvX3Vz
ZXJfb3V0bGVuKF9kc3QsX3NyYyxfX3VjdV9sZW4sbGFiZWwpOwkJXAogfSB3aGlsZSAoMCkKIAog
I2lmZGVmIENPTkZJR19DQ19IQVNfQVNNX0dPVE9fT1VUUFVUCmRpZmYgLS1naXQgYS9pbmNsdWRl
L2xpbnV4L3VhY2Nlc3MuaCBiL2luY2x1ZGUvbGludXgvdWFjY2Vzcy5oCmluZGV4IDU2MzI4NjAx
MjE4Yy4uMWE3MGVmNzA3ODRjIDEwMDY0NAotLS0gYS9pbmNsdWRlL2xpbnV4L3VhY2Nlc3MuaAor
KysgYi9pbmNsdWRlL2xpbnV4L3VhY2Nlc3MuaApAQCAtODc0LDQgKzg3NCwyMCBAQCB2b2lkIF9f
bm9yZXR1cm4gdXNlcmNvcHlfYWJvcnQoY29uc3QgY2hhciAqbmFtZSwgY29uc3QgY2hhciAqZGV0
YWlsLAogCQkJICAgICAgIHVuc2lnbmVkIGxvbmcgbGVuKTsKICNlbmRpZgogCitzdGF0aWMgX19h
bHdheXNfaW5saW5lIF9fbXVzdF9jaGVjayB1bnNpZ25lZCBsb25nCitfc21hbGxfY29weV90b191
c2VyKHZvaWQgX191c2VyICp0bywgY29uc3Qgdm9pZCAqZnJvbSwgdW5zaWduZWQgbG9uZyBuKQor
eworCXNpemVfdCB1bmNvcGllZCA9IG47CisKKwltaWdodF9mYXVsdCgpOworCWlmIChzaG91bGRf
ZmFpbF91c2VyY29weSgpKQorCQlyZXR1cm4gbjsKKwlpbnN0cnVtZW50X2NvcHlfdG9fdXNlcih0
bywgZnJvbSwgbik7CisJc2NvcGVkX3VzZXJfd3JpdGVfYWNjZXNzX3NpemUodG8sIG4sIGZhaWxl
ZCkKKwkJdW5zYWZlX2NvcHlfdG9fdXNlcl9vdXRsZW4odG8sIGZyb20sIHVuY29waWVkLCBmYWls
ZWQpOworCXJldHVybiAwOworZmFpbGVkOgorICAgICAgIHJldHVybiB1bmNvcGllZDsKK30KKwog
I2VuZGlmCQkvKiBfX0xJTlVYX1VBQ0NFU1NfSF9fICovCmRpZmYgLS1naXQgYS9rZXJuZWwvc3lz
LmMgYi9rZXJuZWwvc3lzLmMKaW5kZXggNjJlODQyMDU1Y2M5Li42NWIyZDAxMDNhNzMgMTAwNjQ0
Ci0tLSBhL2tlcm5lbC9zeXMuYworKysgYi9rZXJuZWwvc3lzLmMKQEAgLTEwNjcsNyArMTA2Nyw4
IEBAIFNZU0NBTExfREVGSU5FMSh0aW1lcywgc3RydWN0IHRtcyBfX3VzZXIgKiwgdGJ1ZikKIAkJ
c3RydWN0IHRtcyB0bXA7CiAKIAkJZG9fc3lzX3RpbWVzKCZ0bXApOwotCQlpZiAoY29weV90b191
c2VyKHRidWYsICZ0bXAsIHNpemVvZihzdHJ1Y3QgdG1zKSkpCisJCWFzbSB2b2xhdGlsZSgiIyBI
RVJFISIpOworCQlpZiAoX3NtYWxsX2NvcHlfdG9fdXNlcih0YnVmLCAmdG1wLCBzaXplb2Yoc3Ry
dWN0IHRtcykpKQogCQkJcmV0dXJuIC1FRkFVTFQ7CiAJfQogCWZvcmNlX3N1Y2Nlc3NmdWxfc3lz
Y2FsbF9yZXR1cm4oKTsK
--000000000000c765e2065075bee2--
