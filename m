Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 261BB817A09
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Dec 2023 19:48:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EB7110E3B2;
	Mon, 18 Dec 2023 18:48:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22AFB10E2D2
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Dec 2023 18:46:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702925174; x=1734461174;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ctaBPIFgT7QQ86QguLqeFdeTvVdbcdlDGlcvRiSrGNc=;
 b=lENnsQNu92azm/eJi40ErhL3k9B/OX3cDWI19nBRYVdThqU8y8BH4Ct2
 gQrlVa7XSP0bQaFiBHsievb2JQytuyMdp/T6BmlHODgkV9foknVGI78e2
 HUk3TlkY2A7RgpLwyVwmhtcIfAtPG14iDEQmsYP0T6oEWUIVwsse8tCVl
 5f7MIjqZQdPh+lDVUfQkbNqleIZOKpFdEYEIh86J0n1WPua1lhR6242iP
 bG5zWpKdBJ8uRTwe5iOeSUA5Qu7eWJncBjV3kzKpQzhuDpalVUSDTiANt
 f2RXVYUNuw0XtjqUqE3S4saPem2KeO9j/VUHSkQzvqllytg3CyE0jnWVe w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="2735401"
X-IronPort-AV: E=Sophos;i="6.04,286,1695711600"; 
   d="scan'208";a="2735401"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 08:06:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,286,1695711600"; d="scan'208";a="17817925"
Received: from lwaern-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.249.35.86])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 08:06:00 -0800
Date: Mon, 18 Dec 2023 17:05:58 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Atomically invalidate userptr
 on mmu-notifier
Message-ID: <ZYBt5n2BkJFqommW@ashyti-mobl2.lan>
References: <20231128162505.3493942-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231128162505.3493942-1-jonathan.cavitt@intel.com>
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
Cc: saurabhg.gupta@intel.com, intel-gfx@lists.freedesktop.org,
 chris.p.wilson@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jonathan,

On Tue, Nov 28, 2023 at 08:25:05AM -0800, Jonathan Cavitt wrote:
> Never block for outstanding work on userptr object upon receipt of a
> mmu-notifier. The reason we originally did so was to immediately unbind
> the userptr and unpin its pages, but since that has been dropped in
> commit b4b9731b02c3c ("drm/i915: Simplify userptr locking"), we never
> return the pages to the system i.e. never drop our page->mapcount and so
> do not allow the page and CPU PTE to be revoked. Based on this history,
> we know we are safe to drop the wait entirely.
> 
> Upon return from mmu-notifier, we will still have the userptr pages
> pinned preventing the following PTE operation (such as try_to_unmap)
> adjusting the vm_area_struct, so it is safe to keep the pages around for
> as long as we still have i/o pending.
> 
> We do not have any means currently to asynchronously revalidate the
> userptr pages, that is always prior to next use.
> 
> Signed-off-by: Chris Wilson <chris.p.wilson@linux.intel.com>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
