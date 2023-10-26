Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC94B7D7FA4
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Oct 2023 11:35:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17FFA10E117;
	Thu, 26 Oct 2023 09:35:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7778B10E124
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Oct 2023 09:35:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698312936; x=1729848936;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=gjUBoD29Z/gh8P5AviiGxpy2fwQ3FqMI2vO6SsfqRlw=;
 b=HrtSW0EV9vdv1HUC3G7k0sik+vEjV9hJ0Zk1CcOvdXpTDqKREOTLhfaU
 tKasQszZnR3rb7rAv6v3ncmn6Jc9D0NWe0ivJGvFpZx2DuQPlMrkMEYwu
 U+GwTcc79HShSC2Wjlep+A4LS92fgyd3O0sCmWnCuowQCbO6svWB0qY1A
 Ta5TqmGCefKYQ0JLyydlmcn6p6RGoBYI3ClOa2SqhESix2nte9RCl3wd5
 nfi4mvgqvfEg8XC6c94Ncb+76W+i1nnU8OfCa1unc1W7BlLotpSA79Lyq
 TXI+Bg/W7UckSML5NlVJWKmPheHL/5yQxlr/b5hiHPYGLOGS0GUkXpAKp w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="451737098"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="451737098"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 02:35:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="932672258"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="932672258"
Received: from lthwaite-mobl.ger.corp.intel.com (HELO [10.213.229.85])
 ([10.213.229.85])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 02:35:33 -0700
Message-ID: <19fd3296-2498-41b7-8bb5-c1a410dfde6d@linux.intel.com>
Date: Thu, 26 Oct 2023 10:34:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jann Horn <jannh@google.com>, Christian Brauner <brauner@kernel.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20231025-formfrage-watscheln-84526cd3bd7d@brauner>
 <CAG48ez2SyYAoE_yGFYuBHGZE-zN-RqZ05sXTXcNhZZQHxXpxEg@mail.gmail.com>
Content-Language: en-US
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <CAG48ez2SyYAoE_yGFYuBHGZE-zN-RqZ05sXTXcNhZZQHxXpxEg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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


On 25/10/2023 16:23, Jann Horn wrote:
> On Wed, Oct 25, 2023 at 2:01 PM Christian Brauner <brauner@kernel.org> wrote:
>> Today we got a report at [1] for rcu stalls on the i915 testsuite in [2]
>> due to the conversion of files to SLAB_TYPSSAFE_BY_RCU. Afaict,
>> get_file_rcu() goes into an infinite loop trying to carefully verify
>> that i915->gem.mmap_singleton hasn't changed - see the splat below.
>>
>> So I stared at this code to figure out what it actually does. It seems
>> that the i915->gem.mmap_singleton pointer itself never had rcu semantics.
>>
>> The i915->gem.mmap_singleton is replaced in
>> file->f_op->release::singleton_release():
>>
>>          static int singleton_release(struct inode *inode, struct file *file)
>>          {
>>                  struct drm_i915_private *i915 = file->private_data;
>>
>>                  cmpxchg(&i915->gem.mmap_singleton, file, NULL);
>>                  drm_dev_put(&i915->drm);
>>
>>                  return 0;
>>          }
>>
>> The cmpxchg() is ordered against a concurrent update of
>> i915->gem.mmap_singleton from mmap_singleton(). IOW, when
>> mmap_singleton() fails to get a reference on i915->gem.mmap_singleton
>> via mmap_singleton():
>>
>>          rcu_read_lock();
>>          file = get_file_rcu(&i915->gem.mmap_singleton);
>>          rcu_read_unlock();
>>
>> mmap_singleton() allocates a new file via anon_inode_getfile() and does
>>
>>          smp_store_mb(i915->gem.mmap_singleton, file);
>>
>> So, afaiu, then what happens in the case of this bug is that at some
>> point fput() is called and drops the file->f_count to zero but obviously
>> leaving the pointer in i915->gem.mmap_singleton in tact until
>> file->f_op->release::singleton_release() is called.
>>
>> Now, there might be possibly larger delays until
>> file->f_op->release::singleton_release() is called and
>> i915->gem.mmap_singleton is set to NULL?
>>
>> Say concurrently another task hits mmap_singleton() and does:
>>
>>          rcu_read_lock();
>>          file = get_file_rcu(&i915->gem.mmap_singleton);
>>          rcu_read_unlock();
>>
>> When get_file_rcu() fails to get a reference via atomic_inc_not_zero()
>> it will try the reload from i915->gem.mmap_singleton assuming it has
>> comparable semantics as __fget_files_rcu() that also reloads on
>> atomic_inc_not_zero() failure.
>>
>> But since i915->gem.mmap_singleton doesn't have proper rcu semantics it
>> reloads the same pointer again, trying the same atomic_inc_not_zero()
>> again and doing so until file->f_op->release::singleton_release() of the
>> old file has been called.
>>
>> So, in contrast to __fget_files_rcu() here we want to not retry when
>> atomic_inc_not_zero() has failed. We only want to retry in case we
>> managed to get a reference but the pointer did change on reload.
> [...]
>> Link: [1]: https://lore.kernel.org/intel-gfx/SJ1PR11MB6129CB39EED831784C331BAFB9DEA@SJ1PR11MB6129.namprd11.prod.outlook.com
>> Link: [2]: https://intel-gfx-ci.01.org/tree/linux-next/next-20231013/bat-dg2-11/igt@i915_selftest@live@mman.html#dmesg-warnings10963
>> Signed-off-by: Christian Brauner <brauner@kernel.org>
> 
> Patch makes sense to me. I'm not sure why you changed EAGAIN to
> EINVAL, and it's obviously a bit ugly, but it looks like a valid fix
> for what the SLUB_TYPESAFE_BY_RCU conversion broke.
> 
> Reviewed-by: Jann Horn <jannh@google.com>
> 
> 
> But as a side note, I am a bit confused about how the concurrency of
> the existing code is supposed to work... it looks like two parallel
> calls to mmap_singleton() can end up returning different pointers, and
> then the singleton is not actually a singleton anymore? If that part
> of the existing code is wrong even before the SLAB_TYPESAFE_BY_RCU
> conversion, we might later have to open-code get_file_rcu() in
> mmap_singleton(), so that we can do a cmpxchg at the end that checks
> whether the i915->gem.mmap_singleton pointer is still the same?
> 
> Like:
> 
> static struct file *mmap_singleton(struct drm_i915_private *i915)
> {
>          struct file *file, *new_file;
> 
>          rcu_read_lock();
>          file = READ_ONCE(i915->gem.mmap_singleton);
>          if (file && atomic_long_inc_not_zero(&file->f_count)) {
>                  rcu_read_unlock();
>                  return file;
>          }
>          rcu_read_unlock();
> 
>          new_file = anon_inode_getfile("i915.gem", &singleton_fops,
> i915, O_RDWR);
>          if (IS_ERR(new_file))
>                  return new_file;
> 
>          /* Everyone shares a single global address space */
>          new_file->f_mapping = i915->drm.anon_inode->i_mapping;
> 
>          if (try_cmpxchg(&i915->gem.mmap_singleton, &file, new_file)) {
>                  // something with drm_dev refcount ?
>                  return new_file;
>          }
> 
>          // something with drm_dev refcount ?
>          fput(new_file);
> 
>          return file;
> }
> 
> It would be nice to get some i915 maintainer's comment on how the
> singleton stuff is supposed to work.

I see that the story has mostly been unraveled by now elsewhere in the 
thread, and yes, upon some historical digging and looking at the code I 
agree that the name singleton is confusing/misleading.

And although race can happen and we can end up with more than one 
anonymous inode, I don't think there is any real harm which would 
warrant complicating this code further.

Perhaps a good enough solution would be to rename into something like 
i915->gem.cached_mmap_anon and put a comment above the smp_store_mb 
explaining that the race is unlikely but harmless. Because all i915 
needs is to decouple the file refcount from the DRM file, and whether it 
manages to do it with one anon file, or rarely slightly more than one, 
it doesn't really matter.

So if people agree, plan could be for you to proceed with the 
get_active_file fix and I can follow up with the rename and comment? 
Possibly at some later date so to avoid conflicts between the trees.

Regards,

Tvrtko

> 
>> ---
>>
>> Jann, Linus,
>>
>> Since you've been quite involved, can you check that what I'm babbling
>> here makes sense? If this isn't the fix then I would have to drop the
>> SLAB_TYPESAFE_BY_RCU conversion patch for now since I'd like to send PRs
>> by the end of the week.
>>
>> This is on top of
>> https://git.kernel.org/pub/scm/linux/kernel/git/vfs/vfs.git/log/?h=vfs.misc
>>
>> Appreciate the help, thanks!
>> Christian
>>
>> ---
>>   drivers/gpu/drm/i915/gem/i915_gem_mman.c |  2 +-
>>   fs/file.c                                | 17 ++++++++++++++++-
>>   include/linux/fs.h                       |  1 +
>>   3 files changed, 18 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
>> index 97bf10861cad..da97e61b18d4 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
>> @@ -916,7 +916,7 @@ static struct file *mmap_singleton(struct drm_i915_private *i915)
>>          struct file *file;
>>
>>          rcu_read_lock();
>> -       file = get_file_rcu(&i915->gem.mmap_singleton);
>> +       file = get_file_rcu_once(&i915->gem.mmap_singleton);
>>          rcu_read_unlock();
>>          if (file)
>>                  return file;
>> diff --git a/fs/file.c b/fs/file.c
>> index 1a475d7d636e..2c64d6836f0c 100644
>> --- a/fs/file.c
>> +++ b/fs/file.c
>> @@ -867,7 +867,7 @@ static struct file *__get_file_rcu(struct file __rcu **f)
>>                  return NULL;
>>
>>          if (unlikely(!atomic_long_inc_not_zero(&file->f_count)))
>> -               return ERR_PTR(-EAGAIN);
>> +               return ERR_PTR(-EINVAL);
>>
>>          file_reloaded = rcu_dereference_raw(*f);
>>
>> @@ -927,6 +927,21 @@ struct file *get_file_rcu(struct file __rcu **f)
>>   }
>>   EXPORT_SYMBOL_GPL(get_file_rcu);
>>
>> +struct file *get_file_rcu_once(struct file __rcu **f)
>> +{
>> +       for (;;) {
>> +               struct file __rcu *file;
>> +
>> +               file = __get_file_rcu(f);
>> +               if (!IS_ERR(file))
>> +                       return file;
>> +
>> +               if (PTR_ERR(file) == -EINVAL)
>> +                       return NULL;
>> +       }
>> +}
>> +EXPORT_SYMBOL_GPL(get_file_rcu_once);
>> +
>>   static inline struct file *__fget_files_rcu(struct files_struct *files,
>>          unsigned int fd, fmode_t mask)
>>   {
>> diff --git a/include/linux/fs.h b/include/linux/fs.h
>> index cb8bfa1f8ecb..657bbd824490 100644
>> --- a/include/linux/fs.h
>> +++ b/include/linux/fs.h
>> @@ -1044,6 +1044,7 @@ static inline struct file *get_file(struct file *f)
>>   }
>>
>>   struct file *get_file_rcu(struct file __rcu **f);
>> +struct file *get_file_rcu_once(struct file __rcu **f);
>>
>>   #define file_count(x)  atomic_long_read(&(x)->f_count)
>>
>> --
>> 2.34.1
>>
