Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9D24B48A96
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Sep 2025 12:54:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FB0C10E1FC;
	Mon,  8 Sep 2025 10:54:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e5MPtCaD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99E1E10E1FC
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Sep 2025 10:54:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757328869; x=1788864869;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=//gaBXzDF47MWihftBQkkQ7gCMI39GrA1tdNqyor088=;
 b=e5MPtCaDkhbhDV8DKSbNGvRTTuhrnOmH1T9VnF0thyMBJ6iPUcBaXIpZ
 oBdfG+6SPcP6k6w6CS813dwt0ZCyOkwe79W2/NSrh8HxHYW3TS7TwfGnO
 ixO7+GPBqu2D5M/yy0C9eITd+5V2wgR+bV7zCWD7drKrCwaI7+lj+QSoq
 lOCaszPcpBRPdnLviEiXw9/IejtDrWB52Q2PXTQjF5t2L7r3qSCaq9U9P
 UbbFQC15SlR05OpFCBZ3C3RJxr6l4elD2FQOURgc7SUkbte5f0tnF7F8+
 1+TWLqdruqCTYkvAZg8XFXiF8MGyqKNyQQg+k5rfngY/Knq5IeVIYqCUw g==;
X-CSE-ConnectionGUID: lLeg2n2ZRcqxbOjHAWkXxw==
X-CSE-MsgGUID: 8yLlOlUmTlyMznl7JEsDPA==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="59651583"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="59651583"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 03:54:29 -0700
X-CSE-ConnectionGUID: X3WhTk2SQ12t/XZE6Dm0Lw==
X-CSE-MsgGUID: Ts91msVbQZCe+gPKHyGVBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="177965476"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.245.178])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 03:54:27 -0700
Date: Mon, 8 Sep 2025 12:54:25 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>
Subject: Re: [PATCH 1/6] drm/i915/gem: Avoid accessing uninitialized context
 in emit_rpcs_query()
Message-ID: <aL614bb4RAvX_21c@ashyti-mobl2.lan>
References: <cover.1756995162.git.krzysztof.karas@intel.com>
 <3c911724dc4fc37d6c301c68de5d16ae10180dea.1756995162.git.krzysztof.karas@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3c911724dc4fc37d6c301c68de5d16ae10180dea.1756995162.git.krzysztof.karas@intel.com>
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

On Mon, Sep 08, 2025 at 09:23:02AM +0000, Krzysztof Karas wrote:
> Following the error path in that function may lead to usage of
> uninitialized struct i915_gem_ww_ctx object, so move call to
> i915_gem_ww_ctx_init() a bit earlier.
> 
> Fixes: 15b6c9249870 ("drm/i915: Move i915_vma_lock in the selftests to avoid lock inversion, v3.")
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: <stable@vger.kernel.org> # v5.10+
> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
