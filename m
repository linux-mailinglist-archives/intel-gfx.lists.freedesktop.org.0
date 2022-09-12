Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 807F55B592F
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Sep 2022 13:19:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6B7610E3A8;
	Mon, 12 Sep 2022 11:19:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 449C010E3B8
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Sep 2022 11:18:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662981536; x=1694517536;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=+s7FKfsX1ULalenaqqPRbp9UIGbm+U8h0N3sR+n02GY=;
 b=grrGORFylgflihPX0MLWnz+mZzl5twwaKhM5hBcKvRFhPyLYffc9JwKJ
 THHzNYSkuopCEspAcXH3WXEefR3tpyzg2OMlvpGUSYIDHhkNN4gfHEeDZ
 zCjqC61xHlt0/gMBeg6ovw8ZZWAkM9pqURHNwrgB611YTT+u5QWkAqBOs
 euNHJGHx2+8SEA1U1pmdHkndRmuMcrl9dmR0CCrSWBX7tHRWuLP830lSs
 VVs7a7aM9faCIjRGq//XArJbckfk6lXuJfbhgcCpSslXM0qjJk/M0NnzL
 xsn4s58G2WJ5zGWio4814Bik3xf8LdZhIiuyH00aL1AROMqNelO7ZQpKO g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10467"; a="361792181"
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="361792181"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 04:18:56 -0700
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="678044356"
Received: from mtabaka-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.252.57.56])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 04:18:54 -0700
Date: Mon, 12 Sep 2022 13:18:52 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Badal Nilawar <badal.nilawar@intel.com>
Message-ID: <Yx8VnClBmyDHCd3C@alfio.lan>
References: <20220909025646.3397620-1-badal.nilawar@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220909025646.3397620-1-badal.nilawar@intel.com>
Subject: Re: [Intel-gfx] [PATCH 0/6] i915: CAGF and RC6 changes for MTL
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Badal,

you haven't Cc'ed anyone here... Please do CC the people
interested in the patches and dri-devel mailing list.

If you don't mind, could you please resend the series either as a
V2, if you are going to change something, or as a RESEND, if you
will not change anything?

Thanks,
Andi

On Fri, Sep 09, 2022 at 08:26:40AM +0530, Badal Nilawar wrote:
> This series includes the code changes to get CAGF, RC State and 
> C6 Residency of MTL. The series depends on:
> 
> https://patchwork.freedesktop.org/series/107908/
> 
> We have included 3 patches from from the above series as part of this
> series in order for this series to compile. These are the first 3 patches
> authored by Matt Roper. Please do not review these first 3 patches. Only
> patch 4 and 6 needs review.
> 
> v2: Included "Use GEN12 RPSTAT register" patch 
> 
> Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
> 
> Badal Nilawar (2):
>   drm/i915/mtl: Modify CAGF functions for MTL
>   drm/i915/mtl: Add C6 residency support for MTL SAMedia
> 
> Don Hiatt (1):
>   drm/i915: Use GEN12 RPSTAT register
> 
> Matt Roper (3):
>   drm/i915: Prepare more multi-GT initialization
>   drm/i915: Rename and expose common GT early init routine
>   drm/i915/xelpmp: Expose media as another GT
> 
>  drivers/gpu/drm/i915/Makefile                 |  1 +
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  2 +-
>  drivers/gpu/drm/i915/gt/intel_gt.c            | 70 +++++++++++++++----
>  drivers/gpu/drm/i915/gt/intel_gt.h            |  2 +-
>  drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c | 58 ++++++++++++++-
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h       | 31 ++++++++
>  drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c   |  9 ++-
>  drivers/gpu/drm/i915/gt/intel_gt_types.h      |  3 +
>  drivers/gpu/drm/i915/gt/intel_rc6.c           |  5 +-
>  drivers/gpu/drm/i915/gt/intel_rps.c           | 22 +++++-
>  drivers/gpu/drm/i915/gt/intel_rps.h           |  1 +
>  drivers/gpu/drm/i915/gt/intel_sa_media.c      | 39 +++++++++++
>  drivers/gpu/drm/i915/gt/intel_sa_media.h      | 15 ++++
>  drivers/gpu/drm/i915/gt/selftest_rc6.c        |  9 ++-
>  drivers/gpu/drm/i915/i915_drv.h               |  2 +
>  drivers/gpu/drm/i915/i915_pci.c               | 15 ++++
>  drivers/gpu/drm/i915/i915_pmu.c               | 11 ++-
>  drivers/gpu/drm/i915/intel_device_info.h      | 19 +++++
>  drivers/gpu/drm/i915/intel_uncore.c           | 16 ++++-
>  drivers/gpu/drm/i915/intel_uncore.h           | 20 +++++-
>  .../gpu/drm/i915/selftests/mock_gem_device.c  |  1 +
>  21 files changed, 325 insertions(+), 26 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/gt/intel_sa_media.c
>  create mode 100644 drivers/gpu/drm/i915/gt/intel_sa_media.h
> 
> -- 
> 2.25.1
