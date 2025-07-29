Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84A0DB14DF4
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Jul 2025 14:54:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D9D010E62D;
	Tue, 29 Jul 2025 12:54:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B5LXBjaG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82D7A10E62D
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Jul 2025 12:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753793640; x=1785329640;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=cUC0OzH1BDikrfFuhLp0IwVF5UMwB0JaJ4ueepDk70g=;
 b=B5LXBjaGJDyAv1ZP8XQOuMW+lancTJ88lQshFS5xeAk7z/BP/AHuP+oV
 MdTfSXw5Z30n8y1QbXnorwoFDMlgnjHHBHAwxygXPMQ38a4SXGY0DaJFj
 zM3HGe+UIH1lYHVQeTYhcXbzvkaj238OqC1SnMXa+jnW4LkamTTOvqOpV
 JTEZdqkiPAAMjrguAZbKBrqznau5hEgPrdNCDoYqIregpbRo131hZTdVg
 KcXyALs8Yj0ge0RG/deXyDgto0+Kp+oRJdf1D4d1IUee2xsPr3M0V/z07
 qGKtdpqJve8nWUh5uN7yyrknVnLX4QDo0QxIDSTFrx+U+1nlPQzoJ5bt1 w==;
X-CSE-ConnectionGUID: wYEgDMtVTJOh/UUff+0HTQ==
X-CSE-MsgGUID: e4H7yYXoSs+k0R5FhMB9oA==
X-IronPort-AV: E=McAfee;i="6800,10657,11506"; a="67415524"
X-IronPort-AV: E=Sophos;i="6.16,349,1744095600"; d="scan'208";a="67415524"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 05:53:59 -0700
X-CSE-ConnectionGUID: YaRar70iTa+MNjD8eBF0/w==
X-CSE-MsgGUID: BcuBoeESQJe8I8k7dUC6JA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,349,1744095600"; d="scan'208";a="163040854"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.154])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 05:53:57 -0700
Date: Tue, 29 Jul 2025 14:53:55 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Andi Shyti <andi.shyti@linux.intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>
Subject: Re: [PATCH 0/2] drm/i915/selftests: Miscellaneous improvements in
 gem mman migration tests
Message-ID: <aIjEY3VWFTZ1dAfj@ashyti-mobl2.lan>
References: <23cxoob5lmoh7espy2ig364pmp3vkhim42rhdqrlxsn3seq2gc@ngm6zdvbgk6p>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <23cxoob5lmoh7espy2ig364pmp3vkhim42rhdqrlxsn3seq2gc@ngm6zdvbgk6p>
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

there is something off in your series, it's not properly
threaded. I think it makes it hard for the tools (b4 or dim) to
pick it up (but this is easily fixable with a little effort from
the committer) and also it makes it difficult for CI to test
the whole series.

Let's see how it appears, otherwise I guess you should resend.

Andi

On Tue, Jul 29, 2025 at 10:16:04AM +0000, Krzysztof Karas wrote:
> Krzysztof Karas (2):
>   drm/i915/selftests: Do not overwrite error code after
>     intel_context_migrate_clear() call
>   drm/i915/selftests: Do not leak vm_area_struct on early return
> 
>  .../drm/i915/gem/selftests/i915_gem_mman.c    | 70 +++++++++----------
>  1 file changed, 32 insertions(+), 38 deletions(-)
> 
> -- 
> 2.43.0
> 
> 
> -- 
> Best Regards,
> Krzysztof
