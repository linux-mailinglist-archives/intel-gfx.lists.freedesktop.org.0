Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 88E4F1C18DC
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 17:01:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBFFB6ECC7;
	Fri,  1 May 2020 15:01:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com
 [IPv6:2607:f8b0:4864:20::e44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 140F76ECC6;
 Fri,  1 May 2020 15:01:05 +0000 (UTC)
Received: by mail-vs1-xe44.google.com with SMTP id 1so6422079vsl.9;
 Fri, 01 May 2020 08:01:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JrSSsy8ZJnFCCwAYrJJ/EkIp7B2Oy+eZDnC+jhL7XMw=;
 b=aFyzAodOelP37Mb5yeSQvTKKn35Bh3HzNsgigx4V2v2edXAuP4sulvIKosRqkOmvu3
 A0Dqxv3e6HErXYzE8DLY+VKdJrR9I8Dvvwmd/4rGvUXrDnCb3E9oQbuNPPzzzczx7dRM
 ki5q45m7bj4YaN7GrfxJ3pqwCD3SZGbN43uify8ygo7XaYbf3fsv2B3WSfMzFiej5m3s
 hVetZ4R2APJbCfAQTE4tLf/fsauHGPqaFiPt7IC5Q49oZfyU8GOmtuA46DFwllCVpOEN
 HLwOz33NMtLxLirb4zKk6+f5StDWun5WxbaonLk1CvjDlBl/ruocRlwFyrxzm5k6YYCN
 Rjng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JrSSsy8ZJnFCCwAYrJJ/EkIp7B2Oy+eZDnC+jhL7XMw=;
 b=HG6BykPSxFueGeZuyffAcrvPQ9bWfogV9lkGj6mxSkgMPRTcEvc60OsyRe8M5tsOr+
 uN36Okrgx5i+hrwKTSCYnd11K7lUqaURQpmCgDbvF2OFF4TD2YJBRPXok6ICDh+SKVLY
 NzsZEsXrYXEg/xDF7mJEi4Q3tsNcrlTYquG2mBtQyROiyCzRBPFa70xIRPdknB0fUBh4
 1poNL1/Nat7ViNya1r20z/ZEjxjSAIv1YlQ7prk4Pbn+WwDeuihLiFGFtWlGcRpry5vQ
 5J8WMdleuyqSjtZEudBylabBzTRkwOcXjrSv/JJ+c83odj7Hln3YfQDBnJyo6HCLN7y9
 nlog==
X-Gm-Message-State: AGi0Pub2OvoXF7Z4V/LXLWlc9dIA4GBIHUgrSHsI7aCoXWICQ71EQZo7
 JoxMxJXwhdrxCR+yyyX7hNyMRe4+y96hf6njLByi+A+L2/64tQ==
X-Google-Smtp-Source: APiQypKstHDiWSB54QruMeJaA7+Ir6xqusNzKZVg06CYx3ggTGLQkAcYES2Kce7GbojRmJvRsKs/RYgh3UV+jh1KhTE=
X-Received: by 2002:a67:6c05:: with SMTP id h5mr3653485vsc.164.1588345264172; 
 Fri, 01 May 2020 08:01:04 -0700 (PDT)
MIME-Version: 1.0
References: <20200430195134.1044125-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200430195134.1044125-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 1 May 2020 16:00:37 +0100
Message-ID: <CAM0jSHOHE_b7-=snrKQS=H96w_8ZVAoPVxHuNNYgT8tXEOZjcg@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] igt/gem_mmap_offset:
 Simulate gdb inspecting any mmap using ptrace()
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

On Thu, 30 Apr 2020 at 20:51, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> gdb uses ptrace() to peek and poke bytes of the target's address space.
> The kernel must implement an vm_ops->access() handler or else gdb will
> be unable to inspect the pointer and report it as out-of-bounds. Worse
> than useless as it causes immediate suspicion of the valid GPU pointer.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  tests/i915/gem_mmap_offset.c | 91 +++++++++++++++++++++++++++++++++++-
>  1 file changed, 90 insertions(+), 1 deletion(-)
>
> diff --git a/tests/i915/gem_mmap_offset.c b/tests/i915/gem_mmap_offset.c
> index 1ec963b25..c10cf606f 100644
> --- a/tests/i915/gem_mmap_offset.c
> +++ b/tests/i915/gem_mmap_offset.c
> @@ -23,9 +23,12 @@
>
>  #include <errno.h>
>  #include <pthread.h>
> +#include <signal.h>
>  #include <stdatomic.h>
> -#include <sys/stat.h>
>  #include <sys/ioctl.h>
> +#include <sys/ptrace.h>
> +#include <sys/stat.h>
> +#include <sys/wait.h>
>  #include "drm.h"
>
>  #include "igt.h"
> @@ -265,6 +268,89 @@ static void pf_nonblock(int i915)
>         igt_spin_free(i915, spin);
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
> +static void test_ptrace(int i915)
> +{
> +       const unsigned int SZ = 3 * 4096;
> +       unsigned long *ptr, *cpy;
> +       unsigned long AA, CC;
> +       uint32_t bo;
> +
> +       memset(&AA, 0xaa, sizeof(AA));
> +       memset(&CC, 0x55, sizeof(CC));
> +
> +       cpy = malloc(SZ);
> +       bo = gem_create(i915, SZ);
> +
> +       for_each_mmap_offset_type(i915, t) {
> +               igt_dynamic_f("%s", t->name) {
> +                       pid_t pid;
> +
> +                       ptr = __mmap_offset(i915, bo, 0, SZ,
> +                                       PROT_READ | PROT_WRITE,
> +                                       t->type);
> +                       if (!ptr)
> +                               continue;
> +
> +                       memset(cpy, AA, SZ);
> +                       memset(ptr, CC, SZ);
> +
> +                       igt_assert(!memchr_inv(ptr, CC, SZ));
> +                       igt_assert(!memchr_inv(cpy, AA, SZ));
> +
> +                       igt_fork(child, 1) {
> +                               ptrace(PTRACE_TRACEME, 0, NULL, NULL);
> +                               raise(SIGSTOP);
> +                       }
> +
> +                       /* Wait for the child to ready themselves [SIGSTOP] */
> +                       pid = wait(NULL);
> +
> +                       ptrace(PTRACE_ATTACH, pid, NULL, NULL);
> +                       for (int i = 0; i < SZ / sizeof(long); i++) {
> +                               long ret;
> +
> +                               ret = ptrace(PTRACE_PEEKDATA, pid, ptr + i);
> +                               igt_assert_eq_u64(ret, CC);
> +                               cpy[i] = ret;
> +
> +                               ret = ptrace(PTRACE_POKEDATA, pid, ptr + i, AA);
> +                               igt_assert_eq(ret, 0l);

igt_assert_eq_u64() ?

Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
