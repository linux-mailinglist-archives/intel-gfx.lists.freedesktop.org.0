Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 662F5A468C7
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2025 19:01:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F7FB10E99D;
	Wed, 26 Feb 2025 18:01:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M4qmfF9w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7AE210E99D
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2025 18:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740592886; x=1772128886;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rmK9aA6MjcAcQKprs5RKz37aE07z0jn5btddFv3deJU=;
 b=M4qmfF9werN1+5O4SW8O20iSYQ+4UlvyMEz67cSn6J7lgFTeJEIi/9BL
 OgHZ+DOeA1d8Y9RjLrxULbEzUMXBmOaZfzISli+cOxDguu+bsQ1udqM9i
 4L2nnsftFsyr7KlUANN6ODbAjJGaLpITdtrgYxUL2BIgSFMcMnpnRV1By
 6RNTtWAuqCkeEgu+kc6DG7N9EBVTF91qscEHriggOLkg67+JhPxoPXqnu
 zNZCIm9Cb6nX7Ns7f92oVG5df9w3tdLi14+NwX2dCxqdDcvGKluo8iYKg
 ZuSPNh5ApXJcPeu6htuCVR6fgd6nFD1aj71EkqVQSxKezRLBNXuZv8YIU A==;
X-CSE-ConnectionGUID: f0vXwhM8QReLkwhJxH3azQ==
X-CSE-MsgGUID: sNMq72toRAyTPbrVMaHgNg==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="41477792"
X-IronPort-AV: E=Sophos;i="6.13,317,1732608000"; d="scan'208";a="41477792"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 10:01:26 -0800
X-CSE-ConnectionGUID: SmBWLuDZQHi3rZSNgIdZ/g==
X-CSE-MsgGUID: aBcNu/lXSTaKQr7RmcFSdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,317,1732608000"; d="scan'208";a="139991353"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.96])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 10:01:23 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Mikolaj Wasiak <mikolaj.wasiak@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>
Cc: intel-gfx@lists.freedesktop.org, krzysztof.karas@intel.com,
 andi.shyti@intel.com, eugene.kobyak@intel.com
Subject: Re: [PATCH] i915/selftest/igt_mmap: let mmap tests run in kthread
Date: Wed, 26 Feb 2025 19:01:20 +0100
Message-ID: <6774543.4vTCxPXJkl@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <th33hxf2nabfsjfdo7opte3mv3rkkasmqajguxgwcluvpvwkzq@mtoxcubwzopp>
References: <mqzn3acyfarzlst3tt3mh5r4bvz4ntjkz5a66pip7qmm6hslb2@qc7g7j7q4z3y>
 <th33hxf2nabfsjfdo7opte3mv3rkkasmqajguxgwcluvpvwkzq@mtoxcubwzopp>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
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

Hi,

On Wednesday, 26 February 2025 13:41:34 CET Krzysztof Niemiec wrote:
> On 2025-02-25 at 11:41:56 GMT, Mikolaj Wasiak wrote:
> > When driver is loaded on system with numa nodes it might be run in 
kthread.
> > This makes it impossible to use current->mm in selftests which currently
> > creates null pointer exception.
> > This patch allows selftest to use current->mm by using active_mm.
> > 
> > Signed-off-by: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
> > ---
> > 
> > This patch is mostly damage control. By using active_mm we expose our
> > test to foreign memory mapping, which sometimes makes the test fail.
> > That is still better than just having null pointer exception in driver
> > code.
> > 
> 
> We talked about this offline a bit, I'll recount what we determined here
> just for the record.
> 
> On NUMA systems, the driver might be probed via a kthread consuming a
> workqueue. This shouldn't be a problem as long as we don't rely on
> current->mm (i915 usually doesn't, unless it's ioctls where it's fair
> game) - but this test wasn't written with that in mind, hence the
> derefs.
> 
> We can't just use current->active_mm in place of current->mm inside of
> the test code, because one of the functions that the test uses
> (vma_lookup to be exact) ends up using current->mm. That's too deep
> into the kernel to ever touch it with such a patch.
> 
> The problem is, we also can't just set current->mm of the kthread
> to current->active_mm, because God knows what that value can be (again,
> we are executing in some random kthread that just happened to work on
> the probe).
> 
> So I don't think this patch is a good idea; it IS better than just
> having a NULL deref, but since active_mm is being so unreliable here,
> that kind of defeats the point of running the test. Also, since this is
> an mmap test and it does stuff like user pointers, it does not really
> make much sense to run it in a kthread (unless it's explicitly forked
> from a context, current->mm of which we have control over, but that's
> not what's happening here).
> 
> I have two suggestions for a different fix:
> 
> 1. Disable the test on systems with NUMA and/or if it's running in a
>    kthread, on the premise that it doesn't make sense to run this
>    specific test in a kthread. This is the easier option.
> 
> 2. Find a way to pass an argument to the selftest, so we can pass a
>    known mm to the test thread. Then set it as current->mm for the
>    duration of the test like you're doing in your patch. We could pass
>    the IGT process's mm to "emulate" having it being the initializer of
>    the test task; this way we're being a good citizen and we don't mess
>    with some other process memory. I figure this is the harder option.
> 
> I'd try 2 and if it doesn't work then just resort to 1 if there's no
> better idea floating around.

I agree with both Andi and Krzysztof comments.

If the issue is tracked in our bug tracker then please provide a link to its 
record in a Link: or even Closes: tag.  Do you have call traces on hand?  
Probably yes, so please consider adding a concise excerpt to your description.

While looking for similar cases, I've found commit 51104c19d857 ("kunit: test: 
Add vm_mmap() allocation resource manager") that seems to have resolved a 
similar issue for then newly added kunit tests accessing current->mm.  Maybe 
the approach used there is worth of reusing it for i915 selftests.

Thanks,
Janusz


> 
> Thanks
> Krzysztof
> 




