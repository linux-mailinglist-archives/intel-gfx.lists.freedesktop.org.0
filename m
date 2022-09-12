Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6564F5B59F1
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Sep 2022 14:07:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DDD310E3F2;
	Mon, 12 Sep 2022 12:07:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7272610E3F2
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Sep 2022 12:07:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662984427; x=1694520427;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=ADV8qWK69BaN+/bkLwOhHK20phNQXP14rH2ZIvjX6cc=;
 b=faXY48z9yhgHWJhWyzQT3e0kx7uRlv0TaN5oLIca2pUyzeN71qbdeW80
 ACdrBAn183oVcwrfHloEevysxX2csJyIz9R6CeBkiBweaWuRjRj0EUEw7
 s2vLLKFcJlSIzCrREXOXrQCHMwv3ltONhf7Mn0P6XUgKTDj51Tx+En6zX
 muIzaVjutUPI2dJ6jjl4smwphwx9F+XO2niE9rRQKcUSWYD7Yk2x5GMJD
 sSSHV5lZrXr13EEPBKVFiEeOXWSKTW2ZXiM+Ujwt1tAH4cEkx1a7u6l8N
 rGe9tKywmCk6MCnsubdq76YeKJHqIhaGuGuijsGmRcHtjN6buoQ4NI4jM A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10467"; a="284868628"
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="284868628"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 05:07:06 -0700
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="678060334"
Received: from abijaz-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.58.140])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 05:07:05 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>, Badal Nilawar
 <badal.nilawar@intel.com>
In-Reply-To: <Yx8VnClBmyDHCd3C@alfio.lan>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220909025646.3397620-1-badal.nilawar@intel.com>
 <Yx8VnClBmyDHCd3C@alfio.lan>
Date: Mon, 12 Sep 2022 15:07:01 +0300
Message-ID: <87czc06bkq.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Mon, 12 Sep 2022, Andi Shyti <andi.shyti@linux.intel.com> wrote:
> Hi Badal,
>
> you haven't Cc'ed anyone here... Please do CC the people
> interested in the patches and dri-devel mailing list.
>
> If you don't mind, could you please resend the series either as a
> V2, if you are going to change something, or as a RESEND, if you
> will not change anything?

Anyway some of the patches have been merged already so a rebase is in
order.

BR,
Jani.

>
> Thanks,
> Andi
>
> On Fri, Sep 09, 2022 at 08:26:40AM +0530, Badal Nilawar wrote:
>> This series includes the code changes to get CAGF, RC State and 
>> C6 Residency of MTL. The series depends on:
>> 
>> https://patchwork.freedesktop.org/series/107908/
>> 
>> We have included 3 patches from from the above series as part of this
>> series in order for this series to compile. These are the first 3 patches
>> authored by Matt Roper. Please do not review these first 3 patches. Only
>> patch 4 and 6 needs review.
>> 
>> v2: Included "Use GEN12 RPSTAT register" patch 
>> 
>> Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
>> 
>> Badal Nilawar (2):
>>   drm/i915/mtl: Modify CAGF functions for MTL
>>   drm/i915/mtl: Add C6 residency support for MTL SAMedia
>> 
>> Don Hiatt (1):
>>   drm/i915: Use GEN12 RPSTAT register
>> 
>> Matt Roper (3):
>>   drm/i915: Prepare more multi-GT initialization
>>   drm/i915: Rename and expose common GT early init routine
>>   drm/i915/xelpmp: Expose media as another GT
>> 
>>  drivers/gpu/drm/i915/Makefile                 |  1 +
>>  drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  2 +-
>>  drivers/gpu/drm/i915/gt/intel_gt.c            | 70 +++++++++++++++----
>>  drivers/gpu/drm/i915/gt/intel_gt.h            |  2 +-
>>  drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c | 58 ++++++++++++++-
>>  drivers/gpu/drm/i915/gt/intel_gt_regs.h       | 31 ++++++++
>>  drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c   |  9 ++-
>>  drivers/gpu/drm/i915/gt/intel_gt_types.h      |  3 +
>>  drivers/gpu/drm/i915/gt/intel_rc6.c           |  5 +-
>>  drivers/gpu/drm/i915/gt/intel_rps.c           | 22 +++++-
>>  drivers/gpu/drm/i915/gt/intel_rps.h           |  1 +
>>  drivers/gpu/drm/i915/gt/intel_sa_media.c      | 39 +++++++++++
>>  drivers/gpu/drm/i915/gt/intel_sa_media.h      | 15 ++++
>>  drivers/gpu/drm/i915/gt/selftest_rc6.c        |  9 ++-
>>  drivers/gpu/drm/i915/i915_drv.h               |  2 +
>>  drivers/gpu/drm/i915/i915_pci.c               | 15 ++++
>>  drivers/gpu/drm/i915/i915_pmu.c               | 11 ++-
>>  drivers/gpu/drm/i915/intel_device_info.h      | 19 +++++
>>  drivers/gpu/drm/i915/intel_uncore.c           | 16 ++++-
>>  drivers/gpu/drm/i915/intel_uncore.h           | 20 +++++-
>>  .../gpu/drm/i915/selftests/mock_gem_device.c  |  1 +
>>  21 files changed, 325 insertions(+), 26 deletions(-)
>>  create mode 100644 drivers/gpu/drm/i915/gt/intel_sa_media.c
>>  create mode 100644 drivers/gpu/drm/i915/gt/intel_sa_media.h
>> 
>> -- 
>> 2.25.1

-- 
Jani Nikula, Intel Open Source Graphics Center
