Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EC8326E013
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Sep 2020 17:53:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5944D6EC49;
	Thu, 17 Sep 2020 15:53:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 159A16EC21;
 Thu, 17 Sep 2020 15:53:30 +0000 (UTC)
Received: from localhost (unknown [70.37.104.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A2BFE2075B;
 Thu, 17 Sep 2020 15:53:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600358009;
 bh=AkVfmFRS1tq9XqOXtkz1rJnYfLnCbqD01tnq5zvrUC8=;
 h=Date:From:To:To:To:Cc:Cc:Cc:Subject:In-Reply-To:References:From;
 b=k8oqfWmr3PxXJpKU3h8QsGjes8x8UXZukh5iknxTuZQdvdnOhKyN0SSFDOMTTE322
 ajENw4hJZIwAwuuBrhCc/D+pFul8YeCe4XmWUEHPkkG60nlsiafu0ktcC0584lh9IJ
 hMuspPR7H/ufjgBzFJxt5Ai3DPICnuUlZK1BqtR4=
Date: Thu, 17 Sep 2020 15:53:28 +0000
From: Sasha Levin <sashal@kernel.org>
To: Sasha Levin <sashal@kernel.org>
To: "Nikunj A. Dadhania" <nikunj.dadhania@linux.intel.com>
To: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
In-Reply-To: <20200915034118.32256-1-nikunj.dadhania@linux.intel.com>
References: <20200915034118.32256-1-nikunj.dadhania@linux.intel.com>
Message-Id: <20200917155329.A2BFE2075B@mail.kernel.org>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Fix the race between the GEM
 close and debugfs
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
Cc: stable@vger.kernel.org, nikunj.dadhania@linux.intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi

[This is an automated email]

This commit has been processed because it contains a -stable tag.
The stable tag indicates that it's relevant for the following trees: all

The bot has tested the following trees: v5.8.9, v5.4.65, v4.19.145, v4.14.198, v4.9.236, v4.4.236.

v5.8.9: Build OK!
v5.4.65: Failed to apply! Possible dependencies:
    061489c65ff5 ("drm/i915/dsb: single register write function for DSB.")
    11988e393813 ("drm/i915/execlists: Try rearranging breadcrumb flush")
    2850748ef876 ("drm/i915: Pull i915_vma_pin under the vm->mutex")
    5a90606df7cb ("drm/i915: Replace obj->pin_global with obj->frontbuffer")
    67f3b58f3bac ("drm/i915/dsb: DSB context creation.")
    8a9a982767b7 ("drm/i915: use a separate context for gpu relocs")
    a4e7ccdac38e ("drm/i915: Move context management under GEM")
    b27a96ad72fd ("drm/i915/dsb: Indexed register write function for DSB.")
    bb120e1171a9 ("drm/i915: Show the logical context ring state on dumping")
    c210e85b8f33 ("drm/i915/tgl: Extend MI_SEMAPHORE_WAIT")
    d19d71fc2b15 ("drm/i915: Mark i915_request.timeline as a volatile, rcu pointer")
    e8f6b4952ec5 ("drm/i915/execlists: Flush the post-sync breadcrumb write harder")

v4.19.145: Failed to apply! Possible dependencies:
    0258404f9d38 ("drm/i915: start moving runtime device info to a separate struct")
    026844460743 ("drm/i915: Remove intel_context.active_link")
    07d805721938 ("drm/i915: Introduce intel_runtime_pm_disable to pair intel_runtime_pm_enable")
    13f1bfd3b332 ("drm/i915: Make object/vma allocation caches global")
    1c71bc565cdb ("drm/i915/perf: simplify configure all context function")
    2cc8376fd350 ("drm/i915: rename dev_priv info to __info to avoid usage")
    2cd9a689e97b ("drm/i915: Refactor intel_display_set_init_power() logic")
    37d7c9cc2eb6 ("drm/i915: Check engine->default_state mapping on module load")
    55ac5a1614f9 ("drm/i915: Attach the pci match data to the device upon creation")
    666424abfb86 ("drm/i915/execlists: Use coherent writes into the context image")
    6dfc4a8f134f ("drm/i915: Verify power domains after enabling them")
    722f3de39e03 ("i915/oa: Simplify updating contexts")
    900ccf30f9e1 ("drm/i915: Only force GGTT coherency w/a on required chipsets")
    c4d52feb2c46 ("drm/i915: Move over to intel_context_lookup()")
    f6e8aa387171 ("drm/i915: Report the number of closed vma held by each context in debugfs")
    fa9f668141f4 ("drm/i915: Export intel_context_instance()")

v4.14.198: Failed to apply! Possible dependencies:
    3bd4073524fa ("drm/i915: Consolidate get_fence with pin_fence")
    465c403cb508 ("drm/i915: introduce simple gemfs")
    66df1014efba ("drm/i915: Keep a small stash of preallocated WC pages")
    67b48040255b ("drm/i915: Assert that the handle->vma lut is empty on object close")
    73ebd503034c ("drm/i915: make mappable struct resource centric")
    7789422665f5 ("drm/i915: make dsm struct resource centric")
    82ad6443a55e ("drm/i915/gtt: Rename i915_hw_ppgtt base member")
    969b0950a188 ("drm/i915: Add interface to reserve fence registers for vGPU")
    a65adaf8a834 ("drm/i915: Track user GTT faulting per-vma")
    b4563f595ed4 ("drm/i915: Pin fence for iomap")
    e91ef99b9543 ("drm/i915/selftests: Remember to create the fake preempt context")
    f6e8aa387171 ("drm/i915: Report the number of closed vma held by each context in debugfs")
    f773568b6ff8 ("drm/i915: nuke the duplicated stolen discovery")

v4.9.236: Failed to apply! Possible dependencies:
    0e70447605f4 ("drm/i915: Move common code out of i915_gpu_error.c")
    1b36595ffb35 ("drm/i915: Show RING registers through debugfs")
    28a60dee2ce6 ("drm/i915/gvt: vGPU HW resource management")
    3b3f1650b1ca ("drm/i915: Allocate intel_engine_cs structure only for the enabled engines")
    82ad6443a55e ("drm/i915/gtt: Rename i915_hw_ppgtt base member")
    85fd4f58d7ef ("drm/i915: Mark all non-vma being inserted into the address spaces")
    9c870d03674f ("drm/i915: Use RPM as the barrier for controlling user mmap access")
    bb6dc8d96b68 ("drm/i915: Implement pread without struct-mutex")
    d636951ec01b ("drm/i915: Cleanup instdone collection")
    e007b19d7ba7 ("drm/i915: Use the MRU stack search after evicting")
    f6e8aa387171 ("drm/i915: Report the number of closed vma held by each context in debugfs")
    f9e613728090 ("drm/i915: Try to print INSTDONE bits for all slice/subslice")

v4.4.236: Failed to apply! Possible dependencies:
    1b683729e7ac ("drm/i915: Remove redundant check in i915_gem_obj_to_vma")
    1c7f4bca5a6f ("drm/i915: Rename vma->*_list to *_link for consistency")
    3272db53136f ("drm/i915: Combine all i915_vma bitfields into a single set of flags")
    596c5923197b ("drm/i915: Reduce the pointer dance of i915_is_ggtt()")
    c1a415e261aa ("drm/i915: Disable shrinker for non-swapped backed objects")
    d0710abbcd88 ("drm/i915: Set the map-and-fenceable flag for preallocated objects")
    f6e8aa387171 ("drm/i915: Report the number of closed vma held by each context in debugfs")


NOTE: The patch will not be queued to stable trees until it is upstream.

How should we proceed with this patch?

-- 
Thanks
Sasha
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
