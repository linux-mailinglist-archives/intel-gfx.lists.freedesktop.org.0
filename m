Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3464A7AFB6D
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Sep 2023 08:54:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7816210E02C;
	Wed, 27 Sep 2023 06:54:31 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F1FD10E02C;
 Wed, 27 Sep 2023 06:54:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695797670; x=1727333670;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=EXUjl/cAQ5XQK1CXetRDRk/Xw1IW2mPTP7WILHEVh3o=;
 b=f3us1Rp8hvJrIqar8SVvQ2FXdlb0Ywx2/qoVOI0xdEqkG9j55RCqZglE
 lDhXjb/Cg/SyglCmBhevA4hhdRMm4fPaChRiQSkC9ojjty2SOaufAQj01
 pxCGhe3/RsYPehLN0OXk/p2roDYAeovcyfwW5KnDTQ+b7s00lPpvGy2v/
 RW+qrjZaHaiuwYIPuuaJh5CgQOBCw05+tcZ+iGwCsE66iOVSQ5S8wIwJD
 us9U1ZoTjoz3EOT9mLuMyneh9u+6B+aBT4+r5YNI62/C9LLDu1E8CktXA
 zK/YfSPEKvJP9ylsmyvOFTowmRwnqfcJaOd9CntGEuOmxpGxO3CU3SFsH Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10845"; a="448240765"
X-IronPort-AV: E=Sophos;i="6.03,179,1694761200"; d="scan'208";a="448240765"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2023 23:54:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10845"; a="839314159"
X-IronPort-AV: E=Sophos;i="6.03,179,1694761200"; d="scan'208";a="839314159"
Received: from yeehernc-mobl2.gar.corp.intel.com (HELO intel.com)
 ([10.214.173.104])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2023 23:54:23 -0700
Date: Wed, 27 Sep 2023 08:54:17 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <ZRPRmaSyZlKnK+xl@ashyti-mobl2.lan>
References: <20230922134700.235039-1-tvrtko.ursulin@linux.intel.com>
 <20230922134700.235039-7-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230922134700.235039-7-tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 6/6] drm/i915: Implement fdinfo memory stats
 printing
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
Cc: Intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Tvrtko,

> Use the newly added drm_print_memory_stats helper to show memory
> utilisation of our objects in drm/driver specific fdinfo output.
> 
> To collect the stats we walk the per memory regions object lists
> and accumulate object size into the respective drm_memory_stats
> categories.
> 
> v2:
>  * Only account against the active region.
>  * Use DMA_RESV_USAGE_BOOKKEEP when testing for active. (Tejas)
> 
> v3:
>  * Update commit text. (Aravind)
>  * Update to use memory regions uabi names.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
> Cc: Rob Clark <robdclark@gmail.com>
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> Cc: Tejas Upadhyay <tejas.upadhyay@intel.com>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> # v1
> Reviewed-by: Aravind Iddamsetty <aravind.iddamsetty@intel.com> # v2

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Andi
