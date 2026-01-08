Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC3D9D04A2D
	for <lists+intel-gfx@lfdr.de>; Thu, 08 Jan 2026 18:02:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5568410E79E;
	Thu,  8 Jan 2026 17:02:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jgV3Z4EK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E30CC10E79E;
 Thu,  8 Jan 2026 17:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767891743; x=1799427743;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ja6e2zB+AcRxdY670tOFzbFY/9RBjBceW5mzvMs3q94=;
 b=jgV3Z4EKEgoyTHfkXJ6E8lZVsI+vtF+gSxs1Alx1wn0TMovGSrU+O9rm
 X4E34vds9U+hhUDEo8VFmWaJHP3bKnXW3FUZullvyU51yPStwakXfr0nM
 YIGvjB8HaD5/DfOyXAe9GKHR9Pri5Rx6hQE/7YRnnpyKn3zQrSJ7qg+bS
 JUe/jTThuNfViWCGopR5RgI24f1ZSGTHW/1tBh4BNMVilpwpXeJfL+IMO
 xxDuIRWF/BYpGUkC9wzjCgqnQrsUyn8K9k9sVSEavmu3savZH+qS+yMWR
 ONDriaFP8k4C2Te7fLAcRuU/o3EKg/NySaelprp9oGp9LP33+kemT60Wf A==;
X-CSE-ConnectionGUID: mvlpchFOQjaZs8Fb2M786Q==
X-CSE-MsgGUID: Q/zvvm4ISlSxhhZOkx6rMg==
X-IronPort-AV: E=McAfee;i="6800,10657,11665"; a="94744479"
X-IronPort-AV: E=Sophos;i="6.21,211,1763452800"; d="scan'208";a="94744479"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 09:02:02 -0800
X-CSE-ConnectionGUID: 9TSZFFvVQPy2mi4qV2sH1A==
X-CSE-MsgGUID: shRktJ3cT0eZHq2ZjmhOkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,211,1763452800"; d="scan'208";a="203312521"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.114])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 09:02:00 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>
Cc: igt-dev@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH i-g-t v2] tests/intel/gem_lmem_swapping: Avoid false
 failures from oom-killer
Date: Thu, 08 Jan 2026 18:01:57 +0100
Message-ID: <2248271.irdbgypaU6@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <st6kgzhfy5j3axw3mc44ckzwpe3wdpjpztgoy6ksmmnh2ciqaq@imi27uxmupvm>
References: <20251219100218.334117-2-janusz.krzysztofik@linux.intel.com>
 <st6kgzhfy5j3axw3mc44ckzwpe3wdpjpztgoy6ksmmnh2ciqaq@imi27uxmupvm>
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

Hi Krzysztof,

Thanks for looking at this.

On Thursday, 8 January 2026 09:58:34 CET Krzysztof Karas wrote:
> Hi Janusz,
> 
> [...]
> 
> > +		FILE *printk = fopen("/proc/sys/kernel/printk", "r+");
> > +		int console_log_level, default_log_level;
> > +		unsigned int i;
> > +
> > +		if (!igt_debug_on(!printk)) {
> > +			if (!igt_debug_on(fscanf(printk, "%d %d",
> > +						 &console_log_level,
> > +						 &default_log_level) != 2) &&
> > +			    default_log_level < 6) {
> > +				rewind(printk);
> > +				igt_debug_on(fprintf(printk, "%d 6",
> > +						     console_log_level) != 3);
> Will this not erase the remaining two values held in printk
> file? I mean "minimmum" and "boot-time-default".

No, it won't, see https://www.kernel.org/doc/Documentation/core-api/printk-basics.rst.
There you can find an example of only the first element written.
I've also verified the same rule applies when writing two elements.

Thanks,
Janusz

> 
> > +			} else {
> > +				fclose(printk);
> > +				printk = NULL;
> > +			}
> > +		}
> > +
> > +		for (i = 0; i < regions->num_regions; i++) {
> > +			region = &regions->regions[i];
> > +			if (region->region.memory_class == I915_MEMORY_CLASS_DEVICE)
> > +				igt_dynamic_f("lmem%u", region->region.memory_instance)
> > +					test_smem_oom(i915, ctx, region);
> > +		}
> > +
> > +		if (printk) {
> > +			rewind(printk);
> > +			igt_debug_on(fprintf(printk, "%d %d",
> > +					     console_log_level,
> > +					     default_log_level) != 3);
> > +			fclose(printk);
> > +		}
> > +	}
> >  
> >  	igt_fixture() {
> >  		intel_allocator_multiprocess_stop();
> 
> 




