Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 280D174D1B1
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jul 2023 11:35:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7A2E10E249;
	Mon, 10 Jul 2023 09:35:17 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B745D10E249;
 Mon, 10 Jul 2023 09:35:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688981715; x=1720517715;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=YEuH82zzpV+flTJqGbAU8wkezQB09WAJsmlQQd8u4jY=;
 b=oGZ4SJQ/h3vID+wEjQ2qTXcHPhtdvHPbd24WtoYIWTYENUrZRljNXXTe
 mSUK+Q3eD1PC4SNaoThu9iz5kutP139ch5LAvlwtplD84dbLv6OwiLS5C
 nViECFmxDymlU0NY7tMV0iW9FDbyibQGQ/IpL1n0K9AJGxNx7Yy5c2a79
 +hM8Y3gCTtdJlgjnNAnZgQHweX1bIkH+XI8dugQy3KaIHwHexGy9JuCSN
 2BVi1zftCbIRV7SvOrfQ214bqaungzIunm06NdyQbTdS8KLjBIXdm0tJN
 2ykbzRt5pTmsTQAlf1rU9EtQrs6YHFLjaOiApL8lHMsRBNur46K3OoOrk g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10766"; a="364336157"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="364336157"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2023 02:35:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10766"; a="723946717"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="723946717"
Received: from jmeberts-mobl2.amr.corp.intel.com (HELO intel.com)
 ([10.252.42.190])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2023 02:35:11 -0700
Date: Mon, 10 Jul 2023 11:35:03 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <ZKvQx7QAsTH2B244@ashyti-mobl2.lan>
References: <20230707124644.3965281-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230707124644.3965281-1-tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Remove dead code from
 gen8_pte_encode
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
Cc: Intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Tvrtko,

> Commit 9275277d5324 ("drm/i915: use pat_index instead of cache_level")
> added a dedicated gen12_pte_encode but forgot to remove the Gen12 specific
> bit from gen8_pte_encode.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Fixes: 9275277d5324 ("drm/i915: use pat_index instead of cache_level")
> Cc: Fei Yang <fei.yang@intel.com>
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Andi
