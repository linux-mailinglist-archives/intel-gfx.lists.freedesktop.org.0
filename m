Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 586CA76E4E8
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Aug 2023 11:49:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8D0A10E1EC;
	Thu,  3 Aug 2023 09:49:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C9FC10E0F5
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Aug 2023 09:49:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691056143; x=1722592143;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=DLStnBmLeNixZoWVaOC3V/JqnJFCzEjCSx9yi6N6KgQ=;
 b=lhLTsOo9P+xM/YWYcsA/lXxRvZlBzfF7VP2SOI5Wew35PkAhmjL0Wv7c
 0knUmwW1Jinh0LG2K8Ce3cvWs/Xj/Ttp1lU0dcZWtGuFc057zFqkZ//8u
 G4ysu5tW/ax02EUckt/ee6vhWjGQKbT9BG2JINLH+KFLrqvtkpmyfjvmE
 UvE/J9kUImU1elGjz8f4uJid+N6JRhWZ0UP/YRGTDTENC3NwVhL3RSm/D
 kzJJtz/bn2qJXQbqXOEUWMrSFBeShScpSYfOHaJIEqAn/OOTxTHbEa0nm
 24LK+DdYFmVe2CRHCEIOWO1B9oA42iocWc/aDIyIHZtsml9K6RlZJOoBl Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10790"; a="436137464"
X-IronPort-AV: E=Sophos;i="6.01,251,1684825200"; d="scan'208";a="436137464"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2023 02:49:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10790"; a="723160433"
X-IronPort-AV: E=Sophos;i="6.01,251,1684825200"; d="scan'208";a="723160433"
Received: from unknown (HELO intel.com) ([10.249.39.40])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2023 02:49:01 -0700
Date: Thu, 3 Aug 2023 11:48:58 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <ZMt4CrStaSqJbULt@ashyti-mobl2.lan>
References: <20230728075450.1877745-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230728075450.1877745-1-andrzej.hajda@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Hold reference to intel_context
 over life of i915_request
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
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andrzej,

On Fri, Jul 28, 2023 at 09:54:50AM +0200, Andrzej Hajda wrote:
> References to i915_requests may be trapped by userspace inside a
> sync_file or dmabuf (dma-resv) and held indefinitely across different
> proceses. To counter-act the memory leaks, we try to not to keep

nit: lose one of the "to"'s :)

> references from the request past their completion.
> On the other side on fence release we need to know if rq->engine
> is valid and points to hw engine (true for non-virtual requests).
> To make it possible extra bit has been added to rq->execution_mask,
> for marking virtual engines.
> 
> Fixes: bcb9aa45d5a0 ("Revert "drm/i915: Hold reference to intel_context over life of i915_request"")
> Signed-off-by: Chris Wilson <chris.p.wilson@linux.intel.com>
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Thanks,
Andi
