Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06CA47B83A8
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Oct 2023 17:33:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD77210E171;
	Wed,  4 Oct 2023 15:33:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0218310E131
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Oct 2023 15:33:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696433608; x=1727969608;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=E1Vqa4RXKVSsdN6a1U4FsBMUf49CGh4dy8bv7XUXlFM=;
 b=FFn69YVixlS6i6nxvHKDtR24eTicUMrEmDuq4eUJVqHCpGl+ZM1kpzEN
 y7ODBHUJYTXlUd2r0PG3DdmMCR149b8LqzG3DhlgXkgbSu0jvjRWihRvQ
 gZKxZqoAiETyHnn4w/U92SZ9prtECpZoldA6/TOJZEF9OtugIT1dc3tEb
 dPG4TzU0G77qiPrQvus6v/u1vbtb42cS0PQy38GdLJlvyAjz2UOjeK+g2
 SN5Br/fsCw7nLj43MIRlPy9mFupz2X6cMfaaMgykqjvpAIltNgcqH4h0e
 4zHoVm8GGS8JVq/ooCIlAIrtjgyz4GxtEKl3xwX8CCLcODnkf6FCf2qa4 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="368258185"
X-IronPort-AV: E=Sophos;i="6.03,200,1694761200"; d="scan'208";a="368258185"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 08:33:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="841909494"
X-IronPort-AV: E=Sophos;i="6.03,200,1694761200"; d="scan'208";a="841909494"
Received: from msterni-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.56.48])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 08:33:26 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
In-Reply-To: <ZRrOA6v1katsED65@ashyti-mobl2.lan>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1696236329.git.jani.nikula@intel.com>
 <ZRrOA6v1katsED65@ashyti-mobl2.lan>
Date: Wed, 04 Oct 2023 18:33:23 +0300
Message-ID: <87il7me724.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Mon, 02 Oct 2023, Andi Shyti <andi.shyti@linux.intel.com> wrote:
> Hi Jani,
>
> adding a few folks in Cc for some extra eyes on this series.

Thanks for the reviews and acks, pushed to drm-intel-next.

drm-intel-next instead of drm-intel-gt-next because of the changes in
i915_drv.h, and it's easier to sync from din to dign than vice versa.

BR,
Jani.


>
> On Mon, Oct 02, 2023 at 11:47:01AM +0300, Jani Nikula wrote:
>> Chopping up [1] to more digestable pieces. Start off with nuking
>> i915->gt0.
>> 
>> [1] https://patchwork.freedesktop.org/series/124418/
>> 
>> Jani Nikula (3):
>>   drm/i915/mocs: use to_gt() instead of direct &i915->gt
>>   drm/i915: allocate i915->gt0 dynamically
>>   drm/i915/gt: remove i915->gt0 in favour of i915->gt[0]
>> 
>>  drivers/gpu/drm/i915/gt/intel_gt.c               | 10 +++++++---
>>  drivers/gpu/drm/i915/gt/intel_mocs.c             |  4 ++--
>>  drivers/gpu/drm/i915/i915_drv.h                  | 10 ++--------
>>  drivers/gpu/drm/i915/selftests/mock_gem_device.c |  1 -
>>  4 files changed, 11 insertions(+), 14 deletions(-)
>
> Michal, Michal and Tomasz, can you please check here?
>
> Thanks,
> Andi

-- 
Jani Nikula, Intel
