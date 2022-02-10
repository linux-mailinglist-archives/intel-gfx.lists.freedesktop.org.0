Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B02144B105C
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 15:27:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0783C10E86A;
	Thu, 10 Feb 2022 14:27:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D0E510E86A
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Feb 2022 14:27:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644503271; x=1676039271;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=nwW1UHF4lUaYB0AP58qLVX+QprixadpQbVkFZNBUNi8=;
 b=NVtAnv3XdXjr4SfAv7nb9d8FBBYNKjx1H+VxYZ1nFwX8xWjmkihTI8pP
 pDX/Koewwk8Qtj0QGIrUP78J5mm0mX+CG6WMPvm6ZkSMEcC/r5ExDMhKm
 sk8fL+sFcLPQd4AgHmYPf+SR7lh/PGstEIBq25Ez7lpy0aDniPdOW8HSL
 ARn0Yu1KyOXFtLfFkdO5EYELOt4l7A7P67DpMSnZzJWQV+TZEw4MGtjSt
 NFvifWj+mI342Y3OkuIDpY5BSQ4NvKBQWdMdX/3McR9yL/2zHmupNmC7a
 oCilf5KaxhdrdkDJCECiphaj7KueMeepOnKvo3Dl3LCgAgWOfotS9eDJ1 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10253"; a="310238328"
X-IronPort-AV: E=Sophos;i="5.88,358,1635231600"; d="scan'208";a="310238328"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 06:27:51 -0800
X-IronPort-AV: E=Sophos;i="5.88,358,1635231600"; d="scan'208";a="701706721"
Received: from dhogarty-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.10.221])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 06:27:48 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <87bkze94sa.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220209051140.1599643-1-matthew.d.roper@intel.com>
 <87bkze94sa.fsf@intel.com>
Date: Thu, 10 Feb 2022 16:27:45 +0200
Message-ID: <878rui94pq.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 0/6] More GT register cleanup
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

On Thu, 10 Feb 2022, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Tue, 08 Feb 2022, Matt Roper <matthew.d.roper@intel.com> wrote:
>> Another collection of cleanup patches for intel_gt_regs.h to make it a
>> bit less painful to work with.
>
> I didn't review this but I agree with what's being done.
>
> Acked-by: Jani Nikula <jani.nikula@intel.com>

PS. We somehow ended up with both _reg.h and _regs.h. Would be nice to
settle on one or the other. Which one?

BR,
Jani.


>
>>
>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>>
>> Matt Roper (6):
>>   drm/i915/gt: Drop duplicate register definition for VDBOX_CGCTL3F18
>>   drm/i915/gt: Move SFC lock bits to intel_engine_regs.h
>>   drm/i915/gt: Use parameterized RING_MI_MODE
>>   drm/i915/gt: Cleanup spacing of intel_gt_regs.h
>>   drm/i915/gt: Use consistent offset notation in intel_gt_regs.h
>>   drm/i915/gt: Order GT registers by MMIO offset
>>
>>  drivers/gpu/drm/i915/gt/intel_engine_regs.h |   23 +
>>  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 2623 +++++++++----------
>>  drivers/gpu/drm/i915/gt/intel_reset.c       |   14 +-
>>  drivers/gpu/drm/i915/gt/intel_workarounds.c |    6 +-
>>  drivers/gpu/drm/i915/intel_uncore.c         |    2 +-
>>  5 files changed, 1333 insertions(+), 1335 deletions(-)

-- 
Jani Nikula, Intel Open Source Graphics Center
