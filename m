Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E336644870
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Dec 2022 16:55:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACEA510E0F1;
	Tue,  6 Dec 2022 15:55:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17F9610E0F1
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Dec 2022 15:55:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670342120; x=1701878120;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=J3NYwLu91EjPQ96UY02h+ARHsQfFo3tfOpX+MUpAGfQ=;
 b=O5zsIq/a95wblcevcbnw+ooILlNmOMR+MEWu+8hMMZ1Yet4zzxv9L6FY
 dO1QGoaaO5xQFjGklIpRkPQvGbN6rEhP08AUUQ2g6TxXr52IUpgs2Rr4Z
 jLIvzbOiEnU4ig2y7tcwoZ6JL6XPWDUq2PT3YxGfxYqTDXWjZ89TnafIb
 p32RPV6x8fyGCjsS3l3X+PL+wKBSojou3e6P+WTzuriaLAFqByXPesM5Q
 BtWXPR3xepoWh8jaQ+/OujRAfpGvKg07SIE6xEAheWMEhpIpLIDLybuGX
 xcZBe/HDZouGf31CZa7xMm2rO/k0+qstLDJbnSaxTRUQ+aA6IwK/JlU8A A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="314297631"
X-IronPort-AV: E=Sophos;i="5.96,222,1665471600"; d="scan'208";a="314297631"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 07:55:18 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="820623538"
X-IronPort-AV: E=Sophos;i="5.96,222,1665471600"; d="scan'208";a="820623538"
Received: from jhaapako-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.251.214.21])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 07:55:16 -0800
Date: Tue, 6 Dec 2022 16:55:12 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Matthew Auld <matthew.auld@intel.com>
Message-ID: <Y49l4EPck4bNJFSF@ashyti-mobl2.lan>
References: <20221202122844.428006-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221202122844.428006-1-matthew.auld@intel.com>
Subject: Re: [Intel-gfx] [PATCH v6 1/3] drm/i915/migrate: Account for the
 reserved_space
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org,
 Chris Wilson <chris.p.wilson@intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Matt,

On Fri, Dec 02, 2022 at 12:28:42PM +0000, Matthew Auld wrote:
> From: Chris Wilson <chris.p.wilson@intel.com>
> 
> If the ring is nearly full when calling into emit_pte(), we might
> incorrectly trample the reserved_space when constructing the packet to
> emit the PTEs. This then triggers the GEM_BUG_ON(rq->reserved_space >
> ring->space) when later submitting the request, since the request itself
> doesn't have enough space left in the ring to emit things like
> workarounds, breadcrumbs etc.
> 
> v2: Fix the whitespace errors
> 
> Testcase: igt@i915_selftests@live_emit_pte_full_ring
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/7535
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6889
> Fixes: cf586021642d ("drm/i915/gt: Pipelined page migration")
> Signed-off-by: Chris Wilson <chris.p.wilson@intel.com>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> Cc: Nirmoy Das <nirmoy.das@intel.com>
> Cc: <stable@vger.kernel.org> # v5.15+
> Tested-by: Nirmoy Das <nirmoy.das@intel.com>
> Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
