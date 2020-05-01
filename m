Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59EF31C18D3
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 16:59:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A2E66ECC4;
	Fri,  1 May 2020 14:58:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa44.google.com (mail-vk1-xa44.google.com
 [IPv6:2607:f8b0:4864:20::a44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20E7D6ECBE;
 Fri,  1 May 2020 14:58:57 +0000 (UTC)
Received: by mail-vk1-xa44.google.com with SMTP id p5so2757525vke.1;
 Fri, 01 May 2020 07:58:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9VHVqmNcEC1J37cqAtKGJECihOXakVB6eDvWI3Wephk=;
 b=rDJqtcoMeOXymqkXDV7EPCjnZfB80shWC0+d8Ud066qvFoCCXg8l6NW/BPFuqSdswN
 +Z1b7rmj4Ds+rYT3DKFsgjcXxjphLa14uChAdhHofDJQwcuONl1Dzok1EmWVSI1ROEHq
 upjUqI9gmbDnyMykhSGD0h/r4r3B6SH6WTGwnMEdPqNaqCcf2fS9ivDQMZAVCNUv05qy
 6ig0JODEEvFEJlbxCwr5XfLSSyORhxEyzAIHSvTBVjFBMK3eWBuMRzCxBKYMHy1gHZCO
 FD+CFwK5qub+kB/e+FhBvcv3Mrw+MeRgmjSwYOevquDuK9APt9RCGdNvo2BWqVutoHqU
 fDjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9VHVqmNcEC1J37cqAtKGJECihOXakVB6eDvWI3Wephk=;
 b=WXCR/KXkI6vQxhYzWBkxLJYEQ+/9ZyNzcwuraBk27jofxMPKRDA3+kVfyuW8Fo0LT4
 myE6WvKlc5UmyNpLyLFwlqYcAV19C+JkAtl6DzwFxtl6j/JYHdDGSIaGEba3Bgbl3+tM
 RWOhb0OeOjF93VCyjElDZ8ec9Xg+ky/orO/X8xJkzbhG/1T/npA6/ng7IwqLVScpfONq
 LrsiPUiXrs/TP25WvvLqksGKZCOAJKS7Ph/0x7KpSMHjs0qmI8SUWhLhwiuf+EnApNPE
 cAhGK6OkUxX20qAF58TBFxNghYtbJJcLfcw+vwjX/Ii65xRlF/BOe4wGyte/ZwyeXXVN
 eMTQ==
X-Gm-Message-State: AGi0PuZrVMKwEQLddPfVHTin1xyJ+uVknjo6AxC8PEtNZ1CE8smM50Gx
 c9lqPJrIoy8i6ytQBkDNMWQFtF3NhSJy8Gu6S7hwIygCyaI0Ig==
X-Google-Smtp-Source: APiQypKstf8ZFSqS7IZpYIcwd46YYkohW8oE143UnxjrC8gBb1c2AWW4e2qbQ/0cin9ZrlX3dAPwC6MLGdUgPG6ZDA0=
X-Received: by 2002:a1f:a1d0:: with SMTP id k199mr2987603vke.78.1588345136073; 
 Fri, 01 May 2020 07:58:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200430194151.1003933-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200430194151.1003933-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 1 May 2020 15:58:29 +0100
Message-ID: <CAM0jSHNw98i2TMn+n_up_u_zaic=Lu5piUzK1UJgkkwaBQRzLg@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_mmap_gtt: Simulate gdb
 inspecting a GTT mmap using ptrace()
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
Cc: igt-dev@lists.freedesktop.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 30 Apr 2020 at 20:42, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> gdb uses ptrace() to peek and poke bytes of the target's address space.
> The kernel must implement an vm_ops->access() handler or else gdb will
> be unable to inspect the pointer and report it as out-of-bounds. Worse
> than useless as it causes immediate suspicion of the valid GTT pointer.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  tests/i915/gem_mmap_gtt.c | 79 ++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 78 insertions(+), 1 deletion(-)
>
> diff --git a/tests/i915/gem_mmap_gtt.c b/tests/i915/gem_mmap_gtt.c
> index 1f4655af4..38b4d02d7 100644
> --- a/tests/i915/gem_mmap_gtt.c
> +++ b/tests/i915/gem_mmap_gtt.c
> @@ -34,8 +34,11 @@
>  #include <inttypes.h>
>  #include <pthread.h>
>  #include <errno.h>
> -#include <sys/stat.h>
> +#include <signal.h>
>  #include <sys/ioctl.h>
> +#include <sys/ptrace.h>
> +#include <sys/stat.h>
> +#include <sys/wait.h>
>  #include "drm.h"
>
>  #include "igt.h"
> @@ -501,6 +504,78 @@ test_write_gtt(int fd)
>         munmap(src, OBJECT_SIZE);
>  }
>
> +static void *memchr_inv(const void *s, int c, size_t n)
> +{
> +       const uint8_t *us = s;
> +       const uint8_t uc = c;
> +
> +#pragma GCC diagnostic push
> +#pragma GCC diagnostic ignored "-Wcast-qual"
> +       while (n--) {
> +               if (*us != uc)
> +                       return (void *) us;
> +               us++;
> +       }
> +#pragma GCC diagnostic pop
> +
> +       return NULL;
> +}
> +
> +static void
> +test_ptrace(int fd)
> +{
> +       unsigned long AA, CC;
> +       unsigned long *gtt, *cpy;
> +       uint32_t bo;
> +       pid_t pid;
> +
> +       memset(&AA, 0xaa, sizeof(AA));
> +       memset(&CC, 0x55, sizeof(CC));
> +
> +       cpy = malloc(OBJECT_SIZE);
> +       memset(cpy, AA, OBJECT_SIZE);
> +
> +       bo = gem_create(fd, OBJECT_SIZE);
> +       gtt = mmap_bo(fd, bo, OBJECT_SIZE);
> +       memset(gtt, CC, OBJECT_SIZE);
> +       gem_close(fd, bo);
> +
> +       igt_assert(!memchr_inv(gtt, CC, OBJECT_SIZE));
> +       igt_assert(!memchr_inv(cpy, AA, OBJECT_SIZE));
> +
> +       igt_fork(child, 1) {
> +               ptrace(PTRACE_TRACEME, 0, NULL, NULL);
> +               raise(SIGSTOP);
> +       }
> +
> +       /* Wait for the child to ready themselves [SIGSTOP] */
> +       pid = wait(NULL);
> +
> +       ptrace(PTRACE_ATTACH, pid, NULL, NULL);
> +       for (int i = 0; i < OBJECT_SIZE / sizeof(long); i++) {
> +               long ret;
> +
> +               ret = ptrace(PTRACE_PEEKDATA, pid, gtt + i);
> +               igt_assert_eq_u64(ret, CC);
> +               cpy[i] = ret;
> +
> +               ret = ptrace(PTRACE_POKEDATA, pid, gtt + i, AA);
> +               igt_assert_eq(ret, 0l);

igt_assert_eq_u64() ?

Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
