Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2133C7972EB
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 15:58:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7062710E238;
	Thu,  7 Sep 2023 13:58:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A753510E7F4
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Sep 2023 13:58:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694095090; x=1725631090;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ajlG7gQraFLKnY9eoNI1quzyIpcFgGbGi0wpkAi0ntA=;
 b=nGUGZPmm4votc/AzJFa0X5Yrn0d8O3nZnTTLufWn4kVFoU5M7OIvyB/l
 fNq4GF32ReqYGXlszWFkQRdrqcx1eCghCyLdM55QLKhtc5iiUsjpwNV/b
 DmH/n7dVndBgGrlh0KEIm1TVQU0LXVuACEheZ7EjCpb82g2ncQz6rZcnf
 89f7lGndg4/7gBUxMyJIA45J4MwXbL1fPPz9fmuLhjphqRTarc6+EQ0X7
 be8/Oa+NDpL5uoSjdGv6hmCfaLR4CrHGehsL5oPcnIimbcP5D4erN0e+s
 7wBBPWVdaS1j8qWmmXQDdHXkgrhRq52/ggGfM54yoQNDcDRUz9Hgt00rI w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="380091921"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="380091921"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 06:48:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="1072897644"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="1072897644"
Received: from mmalyshx-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.35.13])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 06:48:32 -0700
Date: Thu, 7 Sep 2023 15:48:29 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Nirmoy Das <nirmoy.das@intel.com>
Message-ID: <ZPnUrf9myaj16qy3@ashyti-mobl2.lan>
References: <20230906113121.30472-1-nirmoy.das@intel.com>
 <20230906113121.30472-5-nirmoy.das@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230906113121.30472-5-nirmoy.das@intel.com>
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915: Implement GGTT update method
 with MI_UPDATE_GTT
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
Cc: chris.p.wilson@linux.intel.com, intel-gfx@lists.freedesktop.org,
 matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Nirmoy,

On Wed, Sep 06, 2023 at 01:31:20PM +0200, Nirmoy Das wrote:
> Implement GGTT update method with blitter command, MI_UPDATE_GTT
> and install those handlers if a platform requires that.
> 
> v2: Make sure we hold the GT wakeref and Blitter engine wakeref before
> we call mutex_lock/intel_context_enter below. When GT/engine are not
> awake, the intel_context_enter calls into some runtime pm function which
> can end up with kmalloc/fs_reclaim. But trigger fs_reclaim holding a
> mutex lock is not allowed because shrinker can also try to hold the same
> mutex lock. It is a circular lock. So hold the GT/blitter engine wakeref
> before calling mutex_lock, to fix the circular lock.

Thanks for the explanation here.

> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> Signed-off-by: Oak Zeng <oak.zeng@intel.com>

[...]

all looks good

[...]

> +#define for_each_sgt_daddr_next(__dp, __iter) \
> +	__for_each_daddr_next(__dp, __iter, I915_GTT_PAGE_SIZE)
> +

should this go in the previous patch?

Andi
