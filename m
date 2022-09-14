Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1712E5B86E3
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Sep 2022 13:01:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18C4310E004;
	Wed, 14 Sep 2022 11:01:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F5D610E004
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Sep 2022 11:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663153285; x=1694689285;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=qRWrxB19BC/EOEarcY4e5oC7NFP7J7TczcQ2eff/9r8=;
 b=lWTtZ8GUkS58K+70GNVc0cweUuHuU3loUdq7Htm5z0ynrH3Om24CZo36
 QO1QRes3U59znY/E7JiIgolJl/Bgm0fWWmByc2fYuPK7amtkLMpesrNMn
 cwLIu4iPmA6tE8EHPJt5mkcYt2im/JDdJ1hOishzKjXmAft1iJ5L7I14J
 PtWcPOQFM9yQWOJX08yZqria5EG8UaxQ0dmjftnt2Qvs+JLlqzrT2Xmle
 212/3C80uKJp2HR0fvhYCRJr5JqR1GVyvNNQeyD5//O/LHsUGRDzWwe71
 lpiokGx5AbwKVANTpQLiOi70mhrF0apPqJSH95wPRfELOcl7LwJ6pJqgV g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10469"; a="297129472"
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="297129472"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 04:01:24 -0700
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="594339529"
Received: from pvasili-mobl3.ger.corp.intel.com (HELO intel.com)
 ([10.252.57.74])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 04:01:22 -0700
Date: Wed, 14 Sep 2022 13:01:20 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Karolina Drobnik <karolina.drobnik@intel.com>
Message-ID: <YyG0gEBFu7Iau8p1@alfio.lan>
References: <cover.1663081418.git.karolina.drobnik@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1663081418.git.karolina.drobnik@intel.com>
Subject: Re: [Intel-gfx] [PATCH v5 0/4] lrc selftest fixes
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
Cc: Thomas Hellstrom <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, Chris Wilson <chris.p.wilson@intel.com>,
 Ramalingam C <ramalingampc2008@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For all the series,

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi

On Tue, Sep 13, 2022 at 05:21:47PM +0200, Karolina Drobnik wrote:
> Few bug fixes for lrc selftest.
> 
> v5:
>   - Add Reviewed-by tag to "drm/i915/selftests: Check
>     for incomplete LRI from the context image" patch, as
>     it got reviewed in different series:
>     https://patchwork.freedesktop.org/series/108487/
> 
> Chris Wilson (4):
>   drm/i915/gt: Explicitly clear BB_OFFSET for new contexts
>   drm/i915/selftests: Check for incomplete LRI from the context image
>   drm/i915/selftest: Always cancel semaphore on error
>   drm/i915/selftest: Clear the output buffers before GPU writes
> 
>  drivers/gpu/drm/i915/gt/intel_engine_regs.h |   1 +
>  drivers/gpu/drm/i915/gt/intel_lrc.c         |  20 ++++
>  drivers/gpu/drm/i915/gt/selftest_lrc.c      | 115 ++++++++++++++++----
>  3 files changed, 116 insertions(+), 20 deletions(-)
> 
> --
> 2.25.1
