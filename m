Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC527971A0
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 13:04:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 219F910E22A;
	Thu,  7 Sep 2023 11:04:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E5F310E22A
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Sep 2023 11:04:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694084643; x=1725620643;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=PD0CI25fMb2ajlwBYu0nDynwcZ3ErqJjkZXySNbp16E=;
 b=i5gC9Pr5lRKD+kLiJTYBVY1kFcilySpj0guBHTbfdfLU8YD7u0bAkp49
 0bZqYnYObNabQ/RA19DfljI0AGgXq1FQGG/aSOXb0UMV09pdfsGG9vpuw
 qlTXwcx7BbneQNOfFDwpDF9uFLFXTOn8xMqM7FPR1UukDqX1+E6ASyCW1
 Q9PccQDEMTqS/j/JAlnN4kZw64BzA4yD0hbUaFdFpQyngWvFFVjlvhYSh
 Z7JMwRl4uTYU29V0ZKamyAewdNY+UcevpZcJ7yXlNWcf7kmCyKyNi5RfO
 lpIuoN5hFE7AtHSFwj+NEIvRJmctIR7qiVvjwY1PDRwWeE2magKX1b09E Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="377234903"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="377234903"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 04:04:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="988723886"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="988723886"
Received: from mmalyshx-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.35.13])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 04:04:00 -0700
Date: Thu, 7 Sep 2023 13:03:57 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Nirmoy Das <nirmoy.das@intel.com>
Message-ID: <ZPmuHf1EdLaQdeU7@ashyti-mobl2.lan>
References: <20230906113121.30472-1-nirmoy.das@intel.com>
 <20230906113121.30472-2-nirmoy.das@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230906113121.30472-2-nirmoy.das@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915: Lift runtime-pm acquire
 callbacks out of intel_wakeref.mutex
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
Cc: Chris Wilson <chris.p.wilson@intel.com>, chris.p.wilson@linux.intel.com,
 intel-gfx@lists.freedesktop.org, matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Nirmoy and Chris,

On Wed, Sep 06, 2023 at 01:31:17PM +0200, Nirmoy Das wrote:
> From: Chris Wilson <chris.p.wilson@intel.com>
> 
> When runtime pm is first woken, it will synchronously call the
> registered callbacks for the device and bug. These callback

"and bug" means "hit a bug"?

/callback/callbacks/

> may pull in their own forest of locks, which we do not want to
> conflate with the intel_wakeref.mutex. A second minor beneft to

/beneft/benefit/

> reducing the coverage of the mutex, is that it will reduce
> contention for frequent sleeps and wakes (such as when being used
> for soft-rc6).
> 
> Signed-off-by: Chris Wilson <chris.p.wilson@intel.com>
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Andi
