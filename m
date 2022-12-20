Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 534126523A0
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Dec 2022 16:23:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64C7A10E07F;
	Tue, 20 Dec 2022 15:22:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34A3610E0AB
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 15:22:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671549772; x=1703085772;
 h=message-id:subject:from:to:cc:date:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6gLafIRStZG6lRFMZBHBv6Gl27kyIWKo/pz2JOmDTLk=;
 b=LXxFs9gXX2VcoCJUuQPdO7Vb6SobVqgi/HBsxcQqqVOAn00xdVjYHX0Q
 x8enhzzoh20ybah8MxqFuwMIuedpMwnPfiSeomm0B/cbwRbodKPFNuVhl
 I26HktT6/Pr8AWojZZGvuNJ+tM9lddShyr4g7pfQKXt6niXTeVo3csAhC
 oyKRhVLMOX5Q8XTZvGIWC9Hj++LNpDjAw7hrbmmjIY2KqAZ0H2bQ1z9An
 GApJECIjqZZm0+91uB5lRwFGS6OEaPByctcX8dto3LLSkNbgf6PcVWnQA
 ddeTZom28VeQDYncMe9zS+jCEQoteYaW/GUUnJYJx7x1SVnoZJiBTMBXs Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="319688047"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="319688047"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 07:22:37 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="719601472"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="719601472"
Received: from kjayadev-mobl.amr.corp.intel.com (HELO
 spandruv-desk1.amr.corp.intel.com) ([10.251.27.109])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 07:22:37 -0800
Message-ID: <05424a5351a847786377a548dba0759917d8046c.camel@linux.intel.com>
From: srinivas pandruvada <srinivas.pandruvada@linux.intel.com>
To: Mirsad Todorovac <mirsad.todorovac@alu.unizg.hr>, LKML
 <linux-kernel@vger.kernel.org>, jani.nikula@linux.intel.com, 
 joonas.lahtinen@linux.intel.com, Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 tvrtko.ursulin@linux.intel.com
Date: Tue, 20 Dec 2022 07:22:36 -0800
In-Reply-To: <f849cc70-b21f-6476-ba26-08989d1243c2@alu.unizg.hr>
References: <f849cc70-b21f-6476-ba26-08989d1243c2@alu.unizg.hr>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.42.4 (3.42.4-2.fc35) 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] Possible regression in drm/i915 driver: memleak
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
Cc: intel-gfx@lists.freedesktop.org,
 Thorsten Leemhuis <regressions@leemhuis.info>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

+Added DRM mailing list and maintainers

On Tue, 2022-12-20 at 15:33 +0100, Mirsad Todorovac wrote:
> Hi all,
> 
> I have been unsuccessful to find any particular Intel i915 maintainer
> emails, so my best bet is to post here, as you will must assuredly 
> already know them.
> 
> The problem is a kernel memory leak that is repeatedly occurring 
> triggered during the execution of Chrome browser under the latest
> 6.1.0+ 
> kernel of this morning and Almalinux 8.6 on a Lenovo desktop box
> with Intel(R) Core(TM) i5-8400 CPU @ 2.80GHz CPU.
> 
> The build is with KMEMLEAK, KASAN and MGLRU turned on during the
> build, 
> on a vanilla mainline kernel from Mr. Torvalds' tree.
> 
> The leaks look like this one:
> 
> unreferenced object 0xffff888131754880 (size 64):
>    comm "chrome", pid 13058, jiffies 4298568878 (age 3708.084s)
>    hex dump (first 32 bytes):
>      01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 
> ................
>      00 00 00 00 00 00 00 00 00 80 1e 3e 83 88 ff ff 
> ...........>....
>    backtrace:
>      [<ffffffff9e9b5542>] slab_post_alloc_hook+0xb2/0x340
>      [<ffffffff9e9bbf5f>] __kmem_cache_alloc_node+0x1bf/0x2c0
>      [<ffffffff9e8f767a>] kmalloc_trace+0x2a/0xb0
>      [<ffffffffc08dfde5>] drm_vma_node_allow+0x45/0x150 [drm]
>      [<ffffffffc0b33315>] __assign_mmap_offset_handle+0x615/0x820
> [i915]
>      [<ffffffffc0b34057>] i915_gem_mmap_offset_ioctl+0x77/0x110
> [i915]
>      [<ffffffffc08bc5e1>] drm_ioctl_kernel+0x181/0x280 [drm]
>      [<ffffffffc08bc9cd>] drm_ioctl+0x2dd/0x6a0 [drm]
>      [<ffffffff9ea54744>] __x64_sys_ioctl+0xc4/0x100
>      [<ffffffff9fbc0178>] do_syscall_64+0x58/0x80
>      [<ffffffff9fc000aa>] entry_SYSCALL_64_after_hwframe+0x72/0xdc
> 
> The complete list of leaks in attachment, but they seem similar or
> the same.
> 
> Please find attached lshw and kernel build config file.
> 
> I will probably check the same parms on my laptop at home, which is
> also 
> Lenovo, but a different hw config and Ubuntu 22.10.
> 
> Thanks,
> Mirsad
> 
> -- 
> Mirsad Goran Todorovac
> Sistem inženjer
> Grafički fakultet | Akademija likovnih umjetnosti
> Sveučilište u Zagrebu

