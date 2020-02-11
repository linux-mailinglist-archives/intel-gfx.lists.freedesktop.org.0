Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C4B6159546
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 17:45:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E934B89DA4;
	Tue, 11 Feb 2020 16:45:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A61D89D86;
 Tue, 11 Feb 2020 16:45:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20189866-1500050 for multiple; Tue, 11 Feb 2020 16:45:01 +0000
MIME-Version: 1.0
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200211143048.12260-1-janusz.krzysztofik@linux.intel.com>
References: <20200211143048.12260-1-janusz.krzysztofik@linux.intel.com>
Message-ID: <158143949995.3635.18328569070749519341@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 11 Feb 2020 16:44:59 +0000
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Janusz Krzysztofik (2020-02-11 14:30:48)
> @@ -2009,8 +2016,31 @@ igt_main_args("c:", NULL, help_str, opt_handler, NULL)
>                 igt_subtest("invalid-null-pointer")
>                         test_invalid_null_pointer(fd);
>  
> -               igt_subtest("invalid-gtt-mapping")
> -                       test_invalid_gtt_mapping(fd);
> +               igt_describe("Verify userptr on top of GTT mapping to GEM object will fail");
> +               igt_subtest("invalid-gtt-mapping") {
> +                       gem_require_mappable_ggtt(fd);
> +                       test_invalid_mapping(fd, I915_MMAP_OFFSET_GTT);
> +               }

#include "i915/gem_mman.h"
igt_subtest_with_dynamic("invalid-mmap-offset") {
	for_each_mmap_offset_type(t) {
		igt_dynamic_f("%s", t->name)
			test_invalid_mapping(fd, t);

In test_invalid_mapping, instead of do_ioctl(MMAP_OFFSET) use
igt_require(igt_ioctl(MMAP_OFFSET, &arg) == 0);

(Or igt_require_f if you like to keep the spiel.)

		}
	}
}
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
