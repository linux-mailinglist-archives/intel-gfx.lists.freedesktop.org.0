Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8286AA45C6B
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2025 11:59:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DB5610E245;
	Wed, 26 Feb 2025 10:59:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="bKgqlswC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95CDA10E245
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2025 10:59:14 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 79A7A5C6A3A;
 Wed, 26 Feb 2025 10:58:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 74E4DC4CED6;
 Wed, 26 Feb 2025 10:59:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1740567550;
 bh=tDqkLaj2Kejxz9oFt/IPmcl29zHavBVHx7T03XtLlGs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bKgqlswChQco7yrPqREvAckxd7BVIkV183RMtbZWH8ZvlC6JFGpOHj6rKkr1U1can
 HJ5zcAzC71i6CrqjZ0VN7rv/chut6/Ft5PZf6MFBEskgVusxwn7pU6B9wZKN/nRE2R
 KuroMyzG1XJtl93TXNGEjtULomsAKORPonRLotMFO1Ij0PgQH3YnoVFZliGC6dAhit
 u5bGzeFntHi3lMq3eGpL6/9ZlZKbqBS/VABcUm2/RJ0MgDl5sK7qikZN8zAVucL3p7
 eMdhgyWQq/FoLNmKbp5+wn6sCYEt1vlmZyX9AMNwSufzH5E4ggDp96FiR3pX/Nz4GW
 IKR13GY2Whbqg==
Date: Wed, 26 Feb 2025 11:59:05 +0100
From: Andi Shyti <andi.shyti@kernel.org>
To: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
Cc: intel-gfx@lists.freedesktop.org, krzysztof.karas@intel.com, 
 andi.shyti@intel.com, krzysztof.niemiec@intel.com, janusz.krzysztofik@intel.com
Subject: Re: [PATCH] i915/selftest/igt_mmap: let mmap tests run in kthread
Message-ID: <no7fp4okppyzotvsackkzazqxvfchoecuorjwttgkzyxpcgeab@mltrp7rtxg3a>
References: <mqzn3acyfarzlst3tt3mh5r4bvz4ntjkz5a66pip7qmm6hslb2@qc7g7j7q4z3y>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <mqzn3acyfarzlst3tt3mh5r4bvz4ntjkz5a66pip7qmm6hslb2@qc7g7j7q4z3y>
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

Hi Mikolaj,

On Tue, Feb 25, 2025 at 11:41:56AM +0100, Mikolaj Wasiak wrote:
> When driver is loaded on system with numa nodes it might be run in kthread.

nit: please, don't forget articles:

*the* driver
*the* system

:-)

> This makes it impossible to use current->mm in selftests which currently
> creates null pointer exception.
> This patch allows selftest to use current->mm by using active_mm.

What is the failure you are getting? I'm not sure this might be
the right solution, but it might make sense, though... if there
is a valid reason.

It looks a bit drastic to me that we want to force current->mm to
point to the active_mm without a real reason, just to avoid a
NULL pointer dereference.

I would first ask myself why are we getting a NULL pointer
dereference? Why do we need to use current->mm? Which memory's
should current->mm point to? Is it a kernel thread or a user
thread? Why are we peaking inside current->mm?

Remember that for kernel threads is normally fine to have
current->mm equal to NULL.

> Signed-off-by: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
> ---
>
> This patch is mostly damage control. By using active_mm we expose our
> test to foreign memory mapping, which sometimes makes the test fail.
> That is still better than just having null pointer exception in driver
> code.

If we are hiding a bug with another bug then this patch is not
OK, even if the second bug is less serious. So, please, don't do
it.

>  .../drm/i915/gem/selftests/i915_gem_mman.c    | 61 ++++++++++++++-----
>  drivers/gpu/drm/i915/selftests/igt_mmap.c     | 19 ++++++
>  drivers/gpu/drm/i915/selftests/igt_mmap.h     |  3 +
>  3 files changed, 67 insertions(+), 16 deletions(-)

...

>  int i915_gem_mman_live_selftests(struct drm_i915_private *i915)
> @@ -1847,6 +1877,5 @@ int i915_gem_mman_live_selftests(struct drm_i915_private *i915)
>               SUBTEST(igt_mmap_revoke),
>               SUBTEST(igt_mmap_gpu),
>       };
> -

This change is out of context.

>       return i915_live_subtests(tests, i915);
>  }
> diff --git a/drivers/gpu/drm/i915/selftests/igt_mmap.c b/drivers/gpu/drm/i915/selftests/igt_mmap.c
> index e920a461bd36..5c63622879a2 100644
> --- a/drivers/gpu/drm/i915/selftests/igt_mmap.c
> +++ b/drivers/gpu/drm/i915/selftests/igt_mmap.c
> @@ -50,3 +50,22 @@ unsigned long igt_mmap_offset(struct drm_i915_private *i915,
>       fput(file);
>       return addr;
>  }
> +
> +

you have two blank lines here.

> +int igt_mmap_enable_current(void)
> +{
> +     if (current->flags & PF_KTHREAD) {
> +             if (!current->active_mm) {
> +                     pr_info("Couldn't get userspace mm in kthread\n");
> +                     return -ENODATA;

if we get here, then something really bad has happened: we have a
task without memory. Most probably, if this was true, we wouldn't
even reach this point. I might have used a GEM_BUG_ON() here.

> +             }
> +             kthread_use_mm(current->active_mm);
> +     }
> +     return 0;
> +}
> +
> +void igt_mmap_disable_current(void)
> +{
> +     if (current->flags & PF_KTHREAD)
> +             kthread_unuse_mm(current->active_mm);
> +}
> diff --git a/drivers/gpu/drm/i915/selftests/igt_mmap.h b/drivers/gpu/drm/i915/selftests/igt_mmap.h
> index acbe34d81a6d..58582396bdd7 100644
> --- a/drivers/gpu/drm/i915/selftests/igt_mmap.h
> +++ b/drivers/gpu/drm/i915/selftests/igt_mmap.h
> @@ -18,4 +18,7 @@ unsigned long igt_mmap_offset(struct drm_i915_private *i915,
>                             unsigned long prot,
>                             unsigned long flags);
>
> +int igt_mmap_enable_current(void);
> +void igt_mmap_disable_current(void);

Please, don't make it a library call, it's just used by a few
functions in a file. No need to expose them.

Thanks,
Andi
