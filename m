Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1173EAE8680
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jun 2025 16:30:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66EAB10E741;
	Wed, 25 Jun 2025 14:30:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A3NDrk2P";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6458010E741
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Jun 2025 14:30:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750861850; x=1782397850;
 h=mime-version:content-transfer-encoding:in-reply-to:
 references:subject:from:cc:to:date:message-id;
 bh=Eu3+N9hr6fXM808pbOY3MnnE0oC7Uq2PHJ0I6JQPeSM=;
 b=A3NDrk2PUyXRKffZNehm+oNHaIFPkABfT4oLKZLPoFYe0beo++Cjc6Ly
 BtFF5d9BqSLc4G80PPgSThyT4JNjXVZRCWoicUFTBiZZ6pFSh9KUX+N6y
 d8xdD5jU2BDjVn5ATbeXQ9v0iz16eLJB3LIwIuxBCMhXjZzwJ9W6uQQQc
 SC/h8wl4BNBPOO9Zibgpset7wnwFgpnEA3xCnrP2H8LOmAP+eUiOmtVdI
 KLHvplyW5gsI+V1obUxDRpkr4AW7j+5he10k1vX2Pdf20dch/7ret6a7o
 /wTNZ3npb7XE1HdocelgdJICzMqetkkxQ1cst8J1itzmDZqhjF+/lol72 w==;
X-CSE-ConnectionGUID: 8MiQ9NQsT+ego6PVU1iyyA==
X-CSE-MsgGUID: s2uJGMc1Rz6X54hCKPPSTA==
X-IronPort-AV: E=McAfee;i="6800,10657,11475"; a="63825434"
X-IronPort-AV: E=Sophos;i="6.16,264,1744095600"; d="scan'208";a="63825434"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 07:30:50 -0700
X-CSE-ConnectionGUID: KZHCr3cpSnqLUMKN4bfZ7w==
X-CSE-MsgGUID: kQskw39WS4O4KLph2jNduA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,264,1744095600"; d="scan'208";a="183267735"
Received: from dev-409.igk.intel.com (HELO localhost) ([10.211.128.109])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 07:30:49 -0700
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <z2dygiyxb5b7baal7x7wnblfsxnypdmvsq4za7cc4snu7tsbsb@5my2zixfojr7>
References: <di25mtf23dwhfrb5lawcytbn5pg73dc2mma42ny3moiqluwl66@gkepxlpv63cs>
 <175034204806.2265741.12155401070258841657@DEV-409>
 <z2dygiyxb5b7baal7x7wnblfsxnypdmvsq4za7cc4snu7tsbsb@5my2zixfojr7>
Subject: Re: [PATCH v3] drm/i915/selftests: Keep mock file open during
 unfaultable migrate with fill
From: Chris Wilson <chris.p.wilson@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, Matthew Auld <matthew.auld@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>
Date: Wed, 25 Jun 2025 16:30:18 +0200
Message-ID: <175086181809.2429776.4245800173980322185@DEV-409>
User-Agent: alot/0.10
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

Quoting Krzysztof Karas (2025-06-23 09:40:48)
> Hi Chris,
>=20
> > > Amend the problem by keeping the mock file open throughout the
> > > duration of this test and calling fput() from the test itself.
> >=20
> > That is not the problem; that is papering over whatever the problem
> > really is.
> Would you mind sharing a bit more? At this point we have a
> problem in our code that we need to address and rejecting the
> proposed change without any suggestions gives me nothing to work
> with.

The selftest leaks the vm_area_struct (and through that the object) on
any of the early failure paths. That seems unrelated to the commit
messages and the conclusions drawn from that false premise.

Note in the vma_lookup() we could also do a check on=20
(addr + obj->base.size - 1) to make sure the entire range we expect to
have mapped is mapped to our target object.

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/g=
pu/drm/i915/gem/selftests/i915_gem_mman.c
index 9c3f17e51885..031cc75197e7 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -1096,32 +1096,20 @@ static int ___igt_mmap_migrate(struct drm_i915_priv=
ate *i915,
                               unsigned long addr,
                               bool unfaultable)
 {
-       struct vm_area_struct *area;
-       int err =3D 0, i;
+       int i;

        pr_info("igt_mmap(%s, %d) @ %lx\n",
                obj->mm.region->name, I915_MMAP_TYPE_FIXED, addr);

-       mmap_read_lock(current->mm);
-       area =3D vma_lookup(current->mm, addr);
-       mmap_read_unlock(current->mm);
-       if (!area) {
-               pr_err("%s: Did not create a vm_area_struct for the mmap\n",
-                      obj->mm.region->name);
-               err =3D -EINVAL;
-               goto out_unmap;
-       }
-
        for (i =3D 0; i < obj->base.size / sizeof(u32); i++) {
                u32 __user *ux =3D u64_to_user_ptr((u64)(addr + i * sizeof(=
*ux)));
                u32 x;

                if (get_user(x, ux)) {
-                       err =3D -EFAULT;
                        if (!unfaultable) {
                                pr_err("%s: Unable to read from mmap, offse=
t:%zd\n",
                                       obj->mm.region->name, i * sizeof(x));
-                               goto out_unmap;
+                               return -EFAULT;
                        }

                        continue;
@@ -1130,37 +1118,35 @@ static int ___igt_mmap_migrate(struct drm_i915_priv=
ate *i915,
                if (unfaultable) {
                        pr_err("%s: Faulted unmappable memory\n",
                               obj->mm.region->name);
-                       err =3D -EINVAL;
-                       goto out_unmap;
+                       return -EINVAL;
                }

                if (x !=3D expand32(POISON_INUSE)) {
                        pr_err("%s: Read incorrect value from mmap, offset:=
%zd, found:%x, expected:%x\n",
                               obj->mm.region->name,
                               i * sizeof(x), x, expand32(POISON_INUSE));
-                       err =3D -EINVAL;
-                       goto out_unmap;
+                       return -EINVAL;
                }

                x =3D expand32(POISON_FREE);
                if (put_user(x, ux)) {
                        pr_err("%s: Unable to write to mmap, offset:%zd\n",
                               obj->mm.region->name, i * sizeof(x));
-                       err =3D -EFAULT;
-                       goto out_unmap;
+                       return -EFAULT;
                }
        }

-       if (unfaultable) {
-               if (err =3D=3D -EFAULT)
-                       err =3D 0;
-       } else {
-               obj->flags &=3D ~I915_BO_ALLOC_GPU_ONLY;
-               err =3D wc_check(obj);
-       }
-out_unmap:
-       vm_munmap(addr, obj->base.size);
-       return err;
+       if (unfaultable)
+               return 0;
+
+       obj->flags &=3D ~I915_BO_ALLOC_GPU_ONLY;
+       return wc_check(obj);
+}
+
+static struct drm_i915_gem_object *area_to_obj(struct vm_area_struct *area)
+{
+       struct i915_mmap_offset *mmo =3D area->vm_private_data;
+       return mmo->obj;
 }

 #define IGT_MMAP_MIGRATE_TOPDOWN     (1 << 0)
@@ -1176,6 +1162,7 @@ static int __igt_mmap_migrate(struct intel_memory_reg=
ion **placements,
        struct drm_i915_private *i915 =3D placements[0]->i915;
        struct drm_i915_gem_object *obj;
        struct i915_request *rq =3D NULL;
+       struct vm_area_struct *area;
        unsigned long addr;
        LIST_HEAD(objects);
        u64 offset;
@@ -1207,20 +1194,30 @@ static int __igt_mmap_migrate(struct intel_memory_r=
egion **placements,
                goto out_put;
        }

+       mmap_read_lock(current->mm);
+       area =3D vma_lookup(current->mm, addr);
+       mmap_read_unlock(current->mm);
+       if (!area || area_to_obj(area) !=3D obj) {
+               pr_err("%s: Did not create a vm_area_struct for the mmap\n",
+                      obj->mm.region->name);
+               err =3D -EINVAL;
+               goto out_addr;
+       }
+
        if (flags & IGT_MMAP_MIGRATE_FILL) {
                err =3D igt_fill_mappable(placements[0], &objects);
                if (err)
-                       goto out_put;
+                       goto out_addr;
        }

        err =3D i915_gem_object_lock(obj, NULL);
        if (err)
-               goto out_put;
+               goto out_addr;

        err =3D i915_gem_object_pin_pages(obj);
        if (err) {
                i915_gem_object_unlock(obj);
-               goto out_put;
+               goto out_addr;
        }

        err =3D intel_context_migrate_clear(to_gt(i915)->migrate.context, N=
ULL,
@@ -1237,7 +1234,7 @@ static int __igt_mmap_migrate(struct intel_memory_reg=
ion **placements,
        }
        i915_gem_object_unlock(obj);
        if (err)
-               goto out_put;
+               goto out_addr;

        if (flags & IGT_MMAP_MIGRATE_EVICTABLE)
                igt_make_evictable(&objects);
@@ -1245,16 +1242,16 @@ static int __igt_mmap_migrate(struct intel_memory_r=
egion **placements,
        if (flags & IGT_MMAP_MIGRATE_FAIL_GPU) {
                err =3D i915_gem_object_lock(obj, NULL);
                if (err)
-                       goto out_put;
+                       goto out_addr;

                /*
-                * Ensure we only simulate the gpu failuire when faulting t=
he
+                * Ensure we only simulate the gpu failure when faulting the
                 * pages.
                 */
                err =3D i915_gem_object_wait_moving_fence(obj, true);
                i915_gem_object_unlock(obj);
                if (err)
-                       goto out_put;
+                       goto out_addr;
                i915_ttm_migrate_set_failure_modes(true, false);
        }

@@ -1298,6 +1295,8 @@ static int __igt_mmap_migrate(struct intel_memory_reg=
ion **placements,
                }
        }

+out_addr:
+       vm_munmap(addr, obj->base.size);
 out_put:
        i915_gem_object_put(obj);
        igt_close_objects(i915, &objects);
