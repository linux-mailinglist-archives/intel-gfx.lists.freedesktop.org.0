Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 29D777D82C5
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Oct 2023 14:37:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8473110E7CB;
	Thu, 26 Oct 2023 12:36:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4FC810E6A8
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Oct 2023 15:24:21 +0000 (UTC)
Received: by mail-ed1-x52c.google.com with SMTP id
 4fb4d7f45d1cf-51e24210395so15510a12.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Oct 2023 08:24:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1698247460; x=1698852260;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=vS3FV0yv7nJEnjkm5ciWE7VQdLWPqGm5Bthw3/CoSdk=;
 b=s3DKV6p1sKfa5F0qXUtS2cMv1Ef0y134rbj0GglG0wtav0pqZStYLx5yOHqMkzUVM1
 w/zFEwMIrOeyrvsswuuGhW2RQMtJoEANQrQYxPIuvuCLfaldBXKl+TRgxaM9N+ZrMaJw
 +D4MdqH7bv4sfKSMI+2TcTIn8nZJspqV90WSlwuFSB8FcaXFZztvLK1nO/oYenmrC25O
 wHHI5yduDl3NUfso+GZ4TKte0v/ff5Pw10usZMXz6wXXrY0D+YK5s7AFkCPedORw11DH
 rJN0jPr8E7xDRMSMD4P7IXRc0LRrRCe0GjPWYV+WsFfjtQC45pVXKpKqdozixTy31/uS
 M2aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698247460; x=1698852260;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=vS3FV0yv7nJEnjkm5ciWE7VQdLWPqGm5Bthw3/CoSdk=;
 b=iJl+GpNQus9nQTlYGUEocEY8o75fm6MyQpYNLY3usicBQt9tlXtM8hKP5cyOmqTy2o
 DHgIbpLdUvP2t/VnGbwZBGdQVFWtLj0vy+HX9FAPO9W1tsxII9J/zZGO2uf5UXDxqj5o
 28fnFqZQn4ZtHn3bw67xtTo7HB7l/0m5Mu/ZCaEQApiyQOa06uixh+/hgBq9ZdkRqNuF
 YlgYqVeyg8vj0rIOI7DVYQyku33CAbPhIDGAwsXfa8AMy0+fHaFwB5NkVLgGFER2C8Ec
 Aes6YkMObhlub4p6WS5ln6C9PBf5Y56RavHSGABz/qfKLnt5BwMQQqxDbxLCWRqOC2uv
 OCMA==
X-Gm-Message-State: AOJu0YyXGvvgukrG5XV0vQJiF8Y7lhkxUGAsdiGMWiEvMIRgIiTa83Pp
 21XjKTtMNzqK7b4G1ObmTKpKkZ+tWBTyEljfvxt5pTCMXHvH/ovshZj7xg==
X-Google-Smtp-Source: AGHT+IGmSshWDr6LfcJXQf74xJgKT2nIpaL+lvILFvrgPDn/XUlDAi9GePdYa5S7XP0D6c6gQgHSD1cN+HXj3hm9BXk=
X-Received: by 2002:a50:9b58:0:b0:53f:91cb:6904 with SMTP id
 a24-20020a509b58000000b0053f91cb6904mr133756edj.4.1698247459865; Wed, 25 Oct
 2023 08:24:19 -0700 (PDT)
MIME-Version: 1.0
References: <20231025-formfrage-watscheln-84526cd3bd7d@brauner>
In-Reply-To: <20231025-formfrage-watscheln-84526cd3bd7d@brauner>
From: Jann Horn <jannh@google.com>
Date: Wed, 25 Oct 2023 17:23:42 +0200
Message-ID: <CAG48ez2SyYAoE_yGFYuBHGZE-zN-RqZ05sXTXcNhZZQHxXpxEg@mail.gmail.com>
To: Christian Brauner <brauner@kernel.org>,
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Thu, 26 Oct 2023 12:36:57 +0000
Subject: Re: [Intel-gfx] [PATCH] file,
 i915: fix file reference for mmap_singleton()
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
Cc: Linus Torvalds <torvalds@linux-foundation.org>, "Kurmi,
 Suresh Kumar" <suresh.kumar.kurmi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 25, 2023 at 2:01=E2=80=AFPM Christian Brauner <brauner@kernel.o=
rg> wrote:
> Today we got a report at [1] for rcu stalls on the i915 testsuite in [2]
> due to the conversion of files to SLAB_TYPSSAFE_BY_RCU. Afaict,
> get_file_rcu() goes into an infinite loop trying to carefully verify
> that i915->gem.mmap_singleton hasn't changed - see the splat below.
>
> So I stared at this code to figure out what it actually does. It seems
> that the i915->gem.mmap_singleton pointer itself never had rcu semantics.
>
> The i915->gem.mmap_singleton is replaced in
> file->f_op->release::singleton_release():
>
>         static int singleton_release(struct inode *inode, struct file *fi=
le)
>         {
>                 struct drm_i915_private *i915 =3D file->private_data;
>
>                 cmpxchg(&i915->gem.mmap_singleton, file, NULL);
>                 drm_dev_put(&i915->drm);
>
>                 return 0;
>         }
>
> The cmpxchg() is ordered against a concurrent update of
> i915->gem.mmap_singleton from mmap_singleton(). IOW, when
> mmap_singleton() fails to get a reference on i915->gem.mmap_singleton
> via mmap_singleton():
>
>         rcu_read_lock();
>         file =3D get_file_rcu(&i915->gem.mmap_singleton);
>         rcu_read_unlock();
>
> mmap_singleton() allocates a new file via anon_inode_getfile() and does
>
>         smp_store_mb(i915->gem.mmap_singleton, file);
>
> So, afaiu, then what happens in the case of this bug is that at some
> point fput() is called and drops the file->f_count to zero but obviously
> leaving the pointer in i915->gem.mmap_singleton in tact until
> file->f_op->release::singleton_release() is called.
>
> Now, there might be possibly larger delays until
> file->f_op->release::singleton_release() is called and
> i915->gem.mmap_singleton is set to NULL?
>
> Say concurrently another task hits mmap_singleton() and does:
>
>         rcu_read_lock();
>         file =3D get_file_rcu(&i915->gem.mmap_singleton);
>         rcu_read_unlock();
>
> When get_file_rcu() fails to get a reference via atomic_inc_not_zero()
> it will try the reload from i915->gem.mmap_singleton assuming it has
> comparable semantics as __fget_files_rcu() that also reloads on
> atomic_inc_not_zero() failure.
>
> But since i915->gem.mmap_singleton doesn't have proper rcu semantics it
> reloads the same pointer again, trying the same atomic_inc_not_zero()
> again and doing so until file->f_op->release::singleton_release() of the
> old file has been called.
>
> So, in contrast to __fget_files_rcu() here we want to not retry when
> atomic_inc_not_zero() has failed. We only want to retry in case we
> managed to get a reference but the pointer did change on reload.
[...]
> Link: [1]: https://lore.kernel.org/intel-gfx/SJ1PR11MB6129CB39EED831784C3=
31BAFB9DEA@SJ1PR11MB6129.namprd11.prod.outlook.com
> Link: [2]: https://intel-gfx-ci.01.org/tree/linux-next/next-20231013/bat-=
dg2-11/igt@i915_selftest@live@mman.html#dmesg-warnings10963
> Signed-off-by: Christian Brauner <brauner@kernel.org>

Patch makes sense to me. I'm not sure why you changed EAGAIN to
EINVAL, and it's obviously a bit ugly, but it looks like a valid fix
for what the SLUB_TYPESAFE_BY_RCU conversion broke.

Reviewed-by: Jann Horn <jannh@google.com>


But as a side note, I am a bit confused about how the concurrency of
the existing code is supposed to work... it looks like two parallel
calls to mmap_singleton() can end up returning different pointers, and
then the singleton is not actually a singleton anymore? If that part
of the existing code is wrong even before the SLAB_TYPESAFE_BY_RCU
conversion, we might later have to open-code get_file_rcu() in
mmap_singleton(), so that we can do a cmpxchg at the end that checks
whether the i915->gem.mmap_singleton pointer is still the same?

Like:

static struct file *mmap_singleton(struct drm_i915_private *i915)
{
        struct file *file, *new_file;

        rcu_read_lock();
        file =3D READ_ONCE(i915->gem.mmap_singleton);
        if (file && atomic_long_inc_not_zero(&file->f_count)) {
                rcu_read_unlock();
                return file;
        }
        rcu_read_unlock();

        new_file =3D anon_inode_getfile("i915.gem", &singleton_fops,
i915, O_RDWR);
        if (IS_ERR(new_file))
                return new_file;

        /* Everyone shares a single global address space */
        new_file->f_mapping =3D i915->drm.anon_inode->i_mapping;

        if (try_cmpxchg(&i915->gem.mmap_singleton, &file, new_file)) {
                // something with drm_dev refcount ?
                return new_file;
        }

        // something with drm_dev refcount ?
        fput(new_file);

        return file;
}

It would be nice to get some i915 maintainer's comment on how the
singleton stuff is supposed to work.

> ---
>
> Jann, Linus,
>
> Since you've been quite involved, can you check that what I'm babbling
> here makes sense? If this isn't the fix then I would have to drop the
> SLAB_TYPESAFE_BY_RCU conversion patch for now since I'd like to send PRs
> by the end of the week.
>
> This is on top of
> https://git.kernel.org/pub/scm/linux/kernel/git/vfs/vfs.git/log/?h=3Dvfs.=
misc
>
> Appreciate the help, thanks!
> Christian
>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_mman.c |  2 +-
>  fs/file.c                                | 17 ++++++++++++++++-
>  include/linux/fs.h                       |  1 +
>  3 files changed, 18 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i=
915/gem/i915_gem_mman.c
> index 97bf10861cad..da97e61b18d4 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> @@ -916,7 +916,7 @@ static struct file *mmap_singleton(struct drm_i915_pr=
ivate *i915)
>         struct file *file;
>
>         rcu_read_lock();
> -       file =3D get_file_rcu(&i915->gem.mmap_singleton);
> +       file =3D get_file_rcu_once(&i915->gem.mmap_singleton);
>         rcu_read_unlock();
>         if (file)
>                 return file;
> diff --git a/fs/file.c b/fs/file.c
> index 1a475d7d636e..2c64d6836f0c 100644
> --- a/fs/file.c
> +++ b/fs/file.c
> @@ -867,7 +867,7 @@ static struct file *__get_file_rcu(struct file __rcu =
**f)
>                 return NULL;
>
>         if (unlikely(!atomic_long_inc_not_zero(&file->f_count)))
> -               return ERR_PTR(-EAGAIN);
> +               return ERR_PTR(-EINVAL);
>
>         file_reloaded =3D rcu_dereference_raw(*f);
>
> @@ -927,6 +927,21 @@ struct file *get_file_rcu(struct file __rcu **f)
>  }
>  EXPORT_SYMBOL_GPL(get_file_rcu);
>
> +struct file *get_file_rcu_once(struct file __rcu **f)
> +{
> +       for (;;) {
> +               struct file __rcu *file;
> +
> +               file =3D __get_file_rcu(f);
> +               if (!IS_ERR(file))
> +                       return file;
> +
> +               if (PTR_ERR(file) =3D=3D -EINVAL)
> +                       return NULL;
> +       }
> +}
> +EXPORT_SYMBOL_GPL(get_file_rcu_once);
> +
>  static inline struct file *__fget_files_rcu(struct files_struct *files,
>         unsigned int fd, fmode_t mask)
>  {
> diff --git a/include/linux/fs.h b/include/linux/fs.h
> index cb8bfa1f8ecb..657bbd824490 100644
> --- a/include/linux/fs.h
> +++ b/include/linux/fs.h
> @@ -1044,6 +1044,7 @@ static inline struct file *get_file(struct file *f)
>  }
>
>  struct file *get_file_rcu(struct file __rcu **f);
> +struct file *get_file_rcu_once(struct file __rcu **f);
>
>  #define file_count(x)  atomic_long_read(&(x)->f_count)
>
> --
> 2.34.1
>
