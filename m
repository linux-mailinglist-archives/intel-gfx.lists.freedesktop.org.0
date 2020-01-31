Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F8D114EED7
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 15:56:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DA986FB79;
	Fri, 31 Jan 2020 14:56:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F15D46FB79;
 Fri, 31 Jan 2020 14:56:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jan 2020 06:56:23 -0800
X-IronPort-AV: E=Sophos;i="5.70,386,1574150400"; d="scan'208";a="223160468"
Received: from jkrzyszt-desk.igk.intel.com (HELO
 jkrzyszt-desk.ger.corp.intel.com) ([172.22.244.17])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jan 2020 06:56:21 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Date: Fri, 31 Jan 2020 15:56:16 +0100
Message-ID: <8594269.vUTOBfTAz2@jkrzyszt-desk.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <158048142584.2430.6713808810476573778@skylake-alporthouse-com>
References: <20200131131234.23058-1-janusz.krzysztofik@linux.intel.com>
 <20200131131234.23058-2-janusz.krzysztofik@linux.intel.com>
 <158048142584.2430.6713808810476573778@skylake-alporthouse-com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC PATCH i-g-t 1/1] tests/gem_mmap_offset:
 Exercise mapping to userptr
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

On Friday, January 31, 2020 3:37:05 PM CET Chris Wilson wrote:
> Quoting Janusz Krzysztofik (2020-01-31 13:12:34)
> > Creating a mapping to a userptr backed GEM object may cause a currently
> > unavoidable lockdep splat inside the i915 driver.  Then, such operation
> > is expected to fail to prevent from that badness to happen.
> > 
> > Add a respective subtest for each mapping type.
> > 
> > Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> > Cc: Matthew Auld <matthew.auld@intel.com>
> > Cc: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >  tests/i915/gem_mmap_offset.c | 55 ++++++++++++++++++++++++++++++++++++
> >  1 file changed, 55 insertions(+)
> > 
> > diff --git a/tests/i915/gem_mmap_offset.c b/tests/i915/gem_mmap_offset.c
> > index 7c4088cdf..a5f28328b 100644
> > --- a/tests/i915/gem_mmap_offset.c
> > +++ b/tests/i915/gem_mmap_offset.c
> > @@ -141,6 +141,36 @@ static void bad_extensions(int i915)
> >         gem_close(i915, arg.handle);
> >  }
> >  
> > +static bool has_userptr(int i915)
> > +{
> > +       uint32_t handle = 0;
> > +       void *ptr;
> > +
> > +       igt_assert_eq(posix_memalign(&ptr, 4096, 4096), 0);
> > +       if (__gem_userptr(i915, ptr, 4096, 0, 0, &handle) == 0)
> > +               gem_close(i915, handle);
> > +       free(ptr);
> > +
> > +       return handle;
> > +}
> > +
> > +static void userptr(int i915, uint64_t flags)
> > +{
> > +       struct drm_i915_gem_mmap_offset arg = {
> > +               .flags = flags,
> > +       };
> > +       void *ptr;
> > +
> > +       igt_assert_eq(posix_memalign(&ptr, 4096, 4096), 0);
> > +
> > +       gem_userptr(i915, ptr, 4096, 0, 0, &arg.handle);
> > +
> > +       igt_assert_eq(mmap_offset_ioctl(i915, &arg), -EINVAL);
> 
> Not quite. The only reason it doesn't work is because the implementation
> ties itself into knots, not that it is meant to not work. :|

Are you suggesting the test should fail if the IOCTL fails?  That would be 
fair, but how are we going to have that accepted by CI then, and merged?

Skipping also doesn't seem a good option to me.

I can add some more exhaustive examination should the IOCTL succeed, but that 
won't help to make CI happy.

From your long experience, what approach should we take?

Thanks,
Janusz


> -Chris
> 




_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
