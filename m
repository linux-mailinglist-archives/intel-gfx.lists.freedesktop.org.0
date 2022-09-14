Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A51F65B8754
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Sep 2022 13:36:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F36A210E004;
	Wed, 14 Sep 2022 11:36:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D428D10E004
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Sep 2022 11:36:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663155396; x=1694691396;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=OOvYvDLf7LlujdrPDvOpuv/EzN6Kw8v64Ikux1oWvys=;
 b=QfSpi9168ZqtoK8qL8OfGRgFPGNys4NIn4CZ/CfJuUV1/gyc7/8IQkIt
 zEUqOnfcL65ndPjW6aSSJ+Ju2xNUBHo+VRVqScvvoO8LAhKk608AB658W
 aXDT1e2vMKdYZlzjTmEAtSb9OcLIqgOIEBODfkbgGxu7Ozqo49Jlv6W7s
 YLJWJjWh9+ITQmCB167LKBnk0U7aJOSdl+BqFQII4bOjrjcOv+0bSdUOk
 Ju2hrp8heJq+L8jjw2h8/ToWzzwqgg/cS54+VbW98yZfUp9isCFYNr1Aj
 W5DuDdQX/wAhQP3y+gGV8c1LOjCCKjb4gCV2Y63mex24VsHl5aZ9CJJ+e g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10469"; a="299763375"
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="299763375"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 04:36:35 -0700
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="679008217"
Received: from pvasili-mobl3.ger.corp.intel.com (HELO intel.com)
 ([10.252.57.74])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 04:36:33 -0700
Date: Wed, 14 Sep 2022 13:36:31 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Karolina Drobnik <karolina.drobnik@intel.com>
Message-ID: <YyG8v8EIJlAEO4mv@alfio.lan>
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

Pushed, Thanks!

Andi

>  drivers/gpu/drm/i915/gt/intel_engine_regs.h |   1 +
>  drivers/gpu/drm/i915/gt/intel_lrc.c         |  20 ++++
>  drivers/gpu/drm/i915/gt/selftest_lrc.c      | 115 ++++++++++++++++----
>  3 files changed, 116 insertions(+), 20 deletions(-)
> 
> --
> 2.25.1
