Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6399530B29
	for <lists+intel-gfx@lfdr.de>; Mon, 23 May 2022 10:58:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6BD810F13E;
	Mon, 23 May 2022 08:57:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA1D510F13E
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 May 2022 08:57:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653296277; x=1684832277;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=zw3jOoahrbzR4OutYGr4AUvGRweN6/zgNms2O5nv+SY=;
 b=X2BHuUs+EsI7GFg0EHhA1+pqhur6PK6ipRh4zihtc40zVVhS40vymcIs
 KaxdYcGjoAd5ABcVS2u0OglSFKpQHHq8qBhUh0L8VC+Om9RaZI5thMPxa
 IjoTaINmjixRzOx1qN6NVzeQu18eAfJYLiCE1QD4Ibcsk8hfcyPW40Y9u
 kc9hAJ0LwbiCPnC8vFY2d4kvueCbAA9On9Dff6s69stf5RsRVK6xEBagN
 UsaIL1vAoQ0c1jO542Gt7NvaY42PwIM1DOZa46auh/HT30uyErGId5qrX
 /NvoK0LXxSg+ckBH6N2l81LAeK319BAhdjzYgAmwIZitY3aAXvjkoETBy Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10355"; a="273149130"
X-IronPort-AV: E=Sophos;i="5.91,246,1647327600"; d="scan'208";a="273149130"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2022 01:57:55 -0700
X-IronPort-AV: E=Sophos;i="5.91,246,1647327600"; d="scan'208";a="900434407"
Received: from tlehuche-mobl1.ger.corp.intel.com (HELO [10.213.213.125])
 ([10.213.213.125])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2022 01:57:53 -0700
Message-ID: <a44eef23-282d-1739-cc05-bedcb8e991fc@linux.intel.com>
Date: Mon, 23 May 2022 09:57:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: Ashutosh Dixit <ashutosh.dixit@intel.com>, intel-gfx@lists.freedesktop.org
References: <cover.1652405421.git.ashutosh.dixit@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <cover.1652405421.git.ashutosh.dixit@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v6 0/7] drm/i915: Media freq factor and
 per-gt enhancements/fixes
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 13/05/2022 02:36, Ashutosh Dixit wrote:
> Some recent Intel dGfx platforms allow media IP to work at a different
> frequency from the base GT. This patch series exposes sysfs controls for
> this functionality in the new per-gt sysfs. Some enhancements and fixes to
> previous per-gt functionality are also included to complete the new
> functionality:
> * Patches 1 and 2 implement basic sysfs controls for media freq
> * Patch 3 extends previous pcode functions for multiple gt's
> * Patch 4 inits pcode on different gt's
> * Patch 5 adds a couple of pcode helpers
> * Patch 6 uses the new pcode functions to retrieve media RP0/RPn freq
> * Patch 7 fixes memory leaks in the previous per-gt sysfs implementation
>    and some code refactoring

Patches 1, 3 and 5 have been merged to drm-intel-next, and then branch 
cross-merged into drm-intel-gt-next.

You can try re-sending the rest of the series now and see if that goes 
smoothly.

Regards,

Tvrtko

> IGT tests for this new functionality have also been posted at:
> 
>    https://patchwork.freedesktop.org/series/103175/
> 
> Test-with: 20220513011500.73460-1-ashutosh.dixit@intel.com
> 
> v2: Fixed commit author on patches 5 and 6 (Rodrigo)
>      Added new patch 4
> v3: Expose pcode functions in terms of uncore rather than gt (Jani/Rodrigo)
> v4: Retain previous pcode function names to eliminate
>      needless #defines (Rodrigo)
> v5: Add new patch 4 and remove last two patches in the v4 series which will
>      be submitted later. Other mostly minor fixes from code review
> v6: Identical to v5, only update "Test-with:" since CI did not pick up
>      previous "Test-with:" probably because it was old
> 
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> 
> Ashutosh Dixit (5):
>    drm/i915: Introduce has_media_ratio_mode
>    drm/i915/gt: Add media freq factor to per-gt sysfs
>    drm/i915/pcode: Extend pcode functions for multiple gt's
>    drm/i915/pcode: Init pcode on different gt's
>    drm/i915/gt: Fix memory leaks in per-gt sysfs
> 
> Dale B Stimson (2):
>    drm/i915/pcode: Add a couple of pcode helpers
>    drm/i915/gt: Add media RP0/RPn to per-gt sysfs
> 
>   drivers/gpu/drm/i915/display/hsw_ips.c        |   4 +-
>   drivers/gpu/drm/i915/display/intel_bw.c       |   6 +-
>   drivers/gpu/drm/i915/display/intel_cdclk.c    |  16 +-
>   .../drm/i915/display/intel_display_power.c    |   2 +-
>   .../i915/display/intel_display_power_well.c   |   4 +-
>   drivers/gpu/drm/i915/display/intel_hdcp.c     |   2 +-
>   drivers/gpu/drm/i915/gt/intel_gt.c            |   1 +
>   drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c |   4 +-
>   drivers/gpu/drm/i915/gt/intel_gt_regs.h       |   1 +
>   drivers/gpu/drm/i915/gt/intel_gt_sysfs.c      |  29 ++-
>   drivers/gpu/drm/i915/gt/intel_gt_sysfs.h      |   6 +-
>   drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c   | 177 ++++++++++++++++++
>   drivers/gpu/drm/i915/gt/intel_gt_types.h      |   3 +
>   drivers/gpu/drm/i915/gt/intel_llc.c           |   3 +-
>   drivers/gpu/drm/i915/gt/intel_rc6.c           |   4 +-
>   drivers/gpu/drm/i915/gt/intel_rps.c           |   4 +-
>   drivers/gpu/drm/i915/gt/selftest_llc.c        |   2 +-
>   drivers/gpu/drm/i915/gt/selftest_rps.c        |   2 +-
>   .../drm/i915/gt/uc/abi/guc_actions_slpc_abi.h |   6 +
>   drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c   |  20 ++
>   drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h   |   1 +
>   .../gpu/drm/i915/gt/uc/intel_guc_slpc_types.h |   3 +
>   drivers/gpu/drm/i915/i915_driver.c            |  20 +-
>   drivers/gpu/drm/i915/i915_drv.h               |   2 +
>   drivers/gpu/drm/i915/i915_pci.c               |   2 +
>   drivers/gpu/drm/i915/i915_reg.h               |  11 ++
>   drivers/gpu/drm/i915/i915_sysfs.c             |   2 +
>   drivers/gpu/drm/i915/intel_device_info.h      |   1 +
>   drivers/gpu/drm/i915/intel_dram.c             |   2 +-
>   drivers/gpu/drm/i915/intel_pcode.c            |  93 +++++----
>   drivers/gpu/drm/i915/intel_pcode.h            |  20 +-
>   drivers/gpu/drm/i915/intel_pm.c               |  10 +-
>   32 files changed, 363 insertions(+), 100 deletions(-)
> 
