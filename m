Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0909D7B546A
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Oct 2023 16:05:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5984F10E2C2;
	Mon,  2 Oct 2023 14:05:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F030B10E2BE
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Oct 2023 14:05:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696255502; x=1727791502;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=DZ0FywA7wZX0ZEut2uCvSz2nbRxmzxxdQCsyDCk34/8=;
 b=Pj/dhkyYADkZ06hxb7sYwLwu2961dJNuyBBD2vaIhxNfPtNZaqJFWiz7
 w72+3aU4iEvPKT0UeQDox9o/4Fq4L1oIYPVplcaOKhabaiTBkzHbb3yPg
 nAl9e2UWPg8pxj+h3C3l9xGBT/8GzVzltdTDnmeFHsmFEIRCO8O4isNMs
 iQ7t3Gb+7O93E2dsLKNpUF0Zlztvw1p1ylLhT0xnVv5/9sJQpUCX+SeKM
 6V6oEnAtdLtQ3hHflJJOfT6tL26z/1gJcLdJA1eHM1NlVamN6sUkd4kLB
 06ZPBPwiS/w6va6Lfriujk0J+ydpbfXrSq0p076y9uPhINKP7q4SQC+Uv A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="468922900"
X-IronPort-AV: E=Sophos;i="6.03,194,1694761200"; d="scan'208";a="468922900"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2023 07:05:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="894140799"
X-IronPort-AV: E=Sophos;i="6.03,194,1694761200"; d="scan'208";a="894140799"
Received: from nsusbilx-mobl.gar.corp.intel.com (HELO intel.com)
 ([10.214.161.91])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2023 07:03:36 -0700
Date: Mon, 2 Oct 2023 16:04:51 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZRrOA6v1katsED65@ashyti-mobl2.lan>
References: <cover.1696236329.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1696236329.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 0/3] drm/i915: nuke i915->gt0
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
Cc: =?utf-8?Q?Micha=C5=82?= Winiarski <michal.winiarski@intel.com>,
 intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jani,

adding a few folks in Cc for some extra eyes on this series.

On Mon, Oct 02, 2023 at 11:47:01AM +0300, Jani Nikula wrote:
> Chopping up [1] to more digestable pieces. Start off with nuking
> i915->gt0.
> 
> [1] https://patchwork.freedesktop.org/series/124418/
> 
> Jani Nikula (3):
>   drm/i915/mocs: use to_gt() instead of direct &i915->gt
>   drm/i915: allocate i915->gt0 dynamically
>   drm/i915/gt: remove i915->gt0 in favour of i915->gt[0]
> 
>  drivers/gpu/drm/i915/gt/intel_gt.c               | 10 +++++++---
>  drivers/gpu/drm/i915/gt/intel_mocs.c             |  4 ++--
>  drivers/gpu/drm/i915/i915_drv.h                  | 10 ++--------
>  drivers/gpu/drm/i915/selftests/mock_gem_device.c |  1 -
>  4 files changed, 11 insertions(+), 14 deletions(-)

Michal, Michal and Tomasz, can you please check here?

Thanks,
Andi
