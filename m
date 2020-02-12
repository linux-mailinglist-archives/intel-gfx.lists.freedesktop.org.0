Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 149A215A68B
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2020 11:36:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A5546F4B4;
	Wed, 12 Feb 2020 10:36:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE7B16E8A4;
 Wed, 12 Feb 2020 10:36:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 02:36:03 -0800
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="281201134"
Received: from jkrzyszt-desk.igk.intel.com (HELO
 jkrzyszt-desk.ger.corp.intel.com) ([172.22.244.17])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 02:36:01 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Date: Wed, 12 Feb 2020 11:35:57 +0100
Message-ID: <1766266.JkkAERITgO@jkrzyszt-desk.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <158143949995.3635.18328569070749519341@skylake-alporthouse-com>
References: <20200211143048.12260-1-janusz.krzysztofik@linux.intel.com>
 <158143949995.3635.18328569070749519341@skylake-alporthouse-com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC PATCH i-g-t v2] tests/gem_userptr_blits:
 Enhance invalid mapping exercise
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Chris,

On Tuesday, February 11, 2020 5:44:59 PM CET Chris Wilson wrote:
> Quoting Janusz Krzysztofik (2020-02-11 14:30:48)
> > @@ -2009,8 +2016,31 @@ igt_main_args("c:", NULL, help_str, opt_handler, NULL)
> >                 igt_subtest("invalid-null-pointer")
> >                         test_invalid_null_pointer(fd);
> >  
> > -               igt_subtest("invalid-gtt-mapping")
> > -                       test_invalid_gtt_mapping(fd);
> > +               igt_describe("Verify userptr on top of GTT mapping to GEM object will fail");
> > +               igt_subtest("invalid-gtt-mapping") {
> > +                       gem_require_mappable_ggtt(fd);
> > +                       test_invalid_mapping(fd, I915_MMAP_OFFSET_GTT);
> > +               }
> 
> #include "i915/gem_mman.h"
> igt_subtest_with_dynamic("invalid-mmap-offset") {
> 	for_each_mmap_offset_type(t) {
> 		igt_dynamic_f("%s", t->name)
> 			test_invalid_mapping(fd, t);
> 
> In test_invalid_mapping, instead of do_ioctl(MMAP_OFFSET) use
> igt_require(igt_ioctl(MMAP_OFFSET, &arg) == 0);

Perfect!

Thanks,
Janusz

> 
> (Or igt_require_f if you like to keep the spiel.)
> 
> 		}
> 	}
> }
> 




_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
