Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96EE764490D
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Dec 2022 17:19:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95AE110E14D;
	Tue,  6 Dec 2022 16:19:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FBAF10E14D
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Dec 2022 16:19:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670343551; x=1701879551;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=71kamqVItKxM4KK47VqxlPJNXigLPypUetLkdyuKy0g=;
 b=BuU/DDszCwfZQ5efZj/AaxrSorMkTrJm3t04q4F1ziK07q5EiGn6Zfo7
 SYsElE7PEVFTgFEP22K5vfz04s++J/UIbGEKIDaEX+wirkwDtBJj+qWmW
 RFCVfr1cn3wOpGOUnoJd/224dcQZtd1M/uNredJYjkpK4fZlKDnkfUY3R
 sG9jrK+Rm6hitKsiR/1z1h/6kQ9/w+OdkS4pDYNSNm2QRjJ39D+kEJCmh
 Fey3QuNuopvLJ87m+Swl9rFDdXOlRNYxK6SSS9YocH5QGTWBuPK4vT1Ci
 BWeQxK0nTwW4x5iw2Yeh0LXB748gS2J8NaMPfnjEkeV3L/KNgFSV4UDuo Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="378827776"
X-IronPort-AV: E=Sophos;i="5.96,222,1665471600"; d="scan'208";a="378827776"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 08:19:10 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="677027675"
X-IronPort-AV: E=Sophos;i="5.96,222,1665471600"; d="scan'208";a="677027675"
Received: from jhaapako-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.251.214.21])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 08:19:08 -0800
Date: Tue, 6 Dec 2022 17:19:04 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Matthew Auld <matthew.auld@intel.com>
Message-ID: <Y49reM/YjHlk999j@ashyti-mobl2.lan>
References: <20221202122844.428006-1-matthew.auld@intel.com>
 <20221202122844.428006-3-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221202122844.428006-3-matthew.auld@intel.com>
Subject: Re: [Intel-gfx] [PATCH v6 3/3] drm/i915/selftests: exercise
 emit_pte() with nearly full ring
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
Cc: intel-gfx@lists.freedesktop.org, Nirmoy Das <nirmoy.das@intel.com>,
 Chris Wilson <chris.p.wilson@intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Matt,

On Fri, Dec 02, 2022 at 12:28:44PM +0000, Matthew Auld wrote:
> Simple regression test to check that we don't trample the
> rq->reserved_space when returning from emit_pte(), if the ring is nearly
> full.
> 
> v2: Make spinner_kill() static
> v3: Reduce the ring size further, which should mean we need to execute less
>     noops; hopefully this appeases bsw. Also add some debug logging.
> v4: Fix the min request construction to account for reserved_space +
>     I915_EMIT_PTE_NUM_DWORDS
> v5: Use a simple on-stack timer to kill the spinner instead of kthread (Chris)
> 
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/7535
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/6889
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Chris Wilson <chris.p.wilson@intel.com>
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
> Cc: Nirmoy Das <nirmoy.das@intel.com>

Looks OK to me.

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Andi
