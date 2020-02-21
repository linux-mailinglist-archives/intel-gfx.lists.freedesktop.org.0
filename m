Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 003751681D1
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 16:36:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DA496F48A;
	Fri, 21 Feb 2020 15:36:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCD666F489;
 Fri, 21 Feb 2020 15:36:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Feb 2020 07:36:14 -0800
X-IronPort-AV: E=Sophos;i="5.70,468,1574150400"; d="scan'208";a="229880299"
Received: from jkrzyszt-desk.igk.intel.com (HELO
 jkrzyszt-desk.ger.corp.intel.com) ([172.22.244.17])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Feb 2020 07:36:13 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Date: Fri, 21 Feb 2020 16:36:08 +0100
Message-ID: <2714492.eSyeoD3iCD@jkrzyszt-desk.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <158229528380.6499.10205591790332300594@skylake-alporthouse-com>
References: <20200221111701.30006-1-janusz.krzysztofik@linux.intel.com>
 <20200221111701.30006-3-janusz.krzysztofik@linux.intel.com>
 <158229528380.6499.10205591790332300594@skylake-alporthouse-com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC PATCH i-g-t v2 2/2] tests/gem_userptr_blits:
 Exercise mmap-offset mapping to userptr
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Chris,

Thanks for review.

On Friday, February 21, 2020 3:28:03 PM CET Chris Wilson wrote:
> Quoting Janusz Krzysztofik (2020-02-21 11:17:01)
> > Currently unavoidable lockedp loop related to userptr MMU notifier
> > exists in the i915 driver.  For that reason, attempts to set up a
> > mmap-offset (or mmap-gtt) mapping to a userptr object may be now
> > preventively rejected by the driver.
> > 
> > A test should exists which checks for that.  Would a mapping attempt
> > succeed, the test should trigger the MMU notifier in a way that is
> > proven to result in the lockdep slpat.
> > 
> > As that exercise is strictly userptr related, it has been decided to
> > add it as a new subtest to gem_userptr_blits.  The new subtest examines
> > userptr interaction with every supported mmap-offset type mapping on
> > top of it.
> > 
> > v2: Move the subtest from gem_mmap_offset to gem_userptr_blits,
> >   - use dynamic subtests (Chris),
> >   - don't FAIL but SKIP on mmap-offset attempt failure (Chris),
> >   - on success, try to anger lockdep (Chris).
> > 
> > Suggested-by: Chris Wilson <chris@chris-wilson.co.uk
> > Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> > Cc: Matthew Auld <matthew.auld@intel.com>
> > ---
> > In order to be able to prove the proposed method of angering lockdep
> > actually works,  I'm going to submit a kernel patch that reverts commit
> > f6c26b555e14 ("drm/i915: Never allow userptr into the new mapping
> > types") to be tested on Trybot together with this one, so at least
> > non-GTT mmap-offset attempts succeed and the MMU notifier is triggered.
> > 
> > Thanks,
> > Janusz
> > 
> >  tests/i915/gem_userptr_blits.c | 42 ++++++++++++++++++++++++++++++++++
> >  1 file changed, 42 insertions(+)
> > 
> > diff --git a/tests/i915/gem_userptr_blits.c b/tests/i915/gem_userptr_blits.c
> > index fcad374ef..5f716a3ea 100644
> > --- a/tests/i915/gem_userptr_blits.c
> > +++ b/tests/i915/gem_userptr_blits.c
> > @@ -797,6 +797,42 @@ static int test_map_fixed_invalidate(int fd, uint32_t flags)
> >         return 0;
> >  }
> >  
> > +static void test_mmap_offset_invalidate(int fd, const struct mmap_offset *t)
> > +{
> > +       void *ptr, *map;
> > +       uint32_t handle;
> > +
> > +       /* check if mmap_offset type is supported by hardware, skip if not */
> > +       handle = gem_create(fd, PAGE_SIZE);
> > +       map = __gem_mmap_offset(fd, handle, 0, PAGE_SIZE,
> > +                               PROT_READ | PROT_WRITE, t->type);
> > +       igt_require_f(map,
> > +                     "HW & kernel support for mmap_offset(%s)\n", t->name);
> > +       munmap(map, PAGE_SIZE);
> > +       gem_close(fd, handle);
> > +
> > +       /* create userptr object */
> > +       igt_assert_eq(posix_memalign(&ptr, PAGE_SIZE, PAGE_SIZE), 0);
> > +       gem_userptr(fd, ptr, PAGE_SIZE, 0, userptr_flags, &handle);
> > +
> > +       /* set up mmap-offset mapping on top of the object, skip if refused */
> > +       map = __gem_mmap_offset(fd, handle, 0, PAGE_SIZE,
> > +                               PROT_READ | PROT_WRITE, t->type);
> > +       igt_skip_on_f(!map && errno == -ENODEV,
> > +                     "lockdep loop preventive failure possibly occurred\n");
> 
> s/possibly occurred//
> 
> It's taken for granted that we don't know exactly why the kernel
> rejected the call (though if we had tracefs hooked up, we should be
> including that information there) just that it falls under our blanket
> incompatible device errno.

OK

> 
> > +       igt_assert(map);
> 
> Ok, looks future proof.
> 
> > +       /* set object pages in order to activate MMU notifier for it */
> > +       gem_set_domain(fd, handle, t->domain, t->domain);
> 
> I would suggest (a variant?) that also attached a igt_spin_t to the userptr,
> waited for it to start executing, call igt_spin_set_timeout and then do
> the munmap.

OK.  Will that be OK if I prepare a follow up patch with that subtest variant 
added?

Thanks,
Janusz


> 
> > +       /* trigger the notifier */
> > +       munmap(ptr, PAGE_SIZE);
> > +
> > +       /* cleanup */
> > +       munmap(map, PAGE_SIZE);
> > +       gem_close(fd, handle);
> > +}
> 
> Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
> -Chris
> 




_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
