Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B11836F13DB
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Apr 2023 11:07:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CD9D10EC8D;
	Fri, 28 Apr 2023 09:07:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2BF010EC89
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Apr 2023 09:07:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682672875; x=1714208875;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=6TJUkTvdrEYkbGsK6S0/HtOdmSBnybS0AaWaNHFMuvU=;
 b=jiBVKSNWElQI415AhveHePPw4iaPVAPuBid+bditS/5NaN1JtAFWop/k
 JfeMmxmDGxYPd5SSkH/IoslKRBiWtUHUQ6l8d5sVicH47UkqluclOd8jp
 9lRzyQSNEzJ2VkK6VkGD9j5cuqtky7PthPO+7Af6vKtVukVp53LePEm3w
 1ZP2enn/raMU26pnJuznJr+x5jsLtwzFEhw4Oxehp/H2MbiylG53OZDfp
 a3tKxkfpVEAzl1+dLV4cOya76ToV/1MxGZuK1KoErhxm5gD3340eu6UFa
 EqfJ6lIRFPrPeKQpVlLJQu/5i+LuYXDTC7PuUOD0LfFcWSzeAwMFoZ6tt g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="332001159"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200"; d="scan'208";a="332001159"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2023 02:07:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="727464277"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200"; d="scan'208";a="727464277"
Received: from ahermans-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.252.35.91])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2023 02:07:46 -0700
Date: Fri, 28 Apr 2023 11:07:43 +0200
From: Andi Shyti <andi.shyti@intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <ZEuM33M1J2SlDuTp@ashyti-mobl2.lan>
References: <20230425-hugepage-migrate-v8-0-7868d54eaa27@intel.com>
 <20230425-hugepage-migrate-v8-2-7868d54eaa27@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230425-hugepage-migrate-v8-2-7868d54eaa27@intel.com>
Subject: Re: [Intel-gfx] [PATCH v8 2/2] drm/i915: Use correct huge page
 manager for MTL
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
 Jonathan Cavitt <jonathan.cavitt@intel.com>, linux-kernel@vger.kernel.org,
 Matthew Auld <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andrzej,

> MTL currently uses gen8_ppgtt_insert_huge when managing huge pages.
> This is because MTL reports as not supporting 64K pages, or more
> accurately, the system that reports whether a platform has 64K pages
> reports false for MTL.  This is only half correct, as the 64K page support
> reporting system only cares about 64K page support for LMEM, which MTL
> doesn't have.
> 
> MTL should be using xehpsdv_ppgtt_insert_huge.  However, simply changing
> over to using that manager doesn't resolve the issue because MTL is
> expecting the virtual address space for the page table to be flushed after
> initialization, so we must also add a flush statement there.
> 
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Reviewed-by: Matthew Auld <matthew.auld@intel.com>
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Andi
