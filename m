Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D64C4B1053
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 15:26:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7734310E28B;
	Thu, 10 Feb 2022 14:26:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2637210E28B
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Feb 2022 14:26:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644503179; x=1676039179;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=sejdWrC5Fk137HyNyy9ZCtKnp869ONloO0PQC1MkMDM=;
 b=hic7azKjmK5oLlKC6Tm+0ihx+1k2xzT1/8xN/GXzz+snbk9Fe5mbLb7P
 3d5qQSGBmqAUBbfh0CG0yVE/M4BbddkJeIAoCsqF/YugqGtQ4zPJ34R4y
 tcJupTK1Q+OmkXNp7xFalalgDABHwzqqFbE3vbZ9uesodrxTbCztvbSMM
 uCleMhMgXMlyrXvze3FHHtyjHwyPOWaz8SJqEiYoyFlTpkqegf3ajOhR0
 wZ3J9hvI8bywCPk9W7qP0kHecdjqw3Lxg6nAttwcVvcm94Z4wzND0FAgL
 WgC+mLJvsnOrpdOyvW1bfGPAHRUlBe8TgexQm/h9AlbS9/BfLlWCnUREP w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10253"; a="249251811"
X-IronPort-AV: E=Sophos;i="5.88,358,1635231600"; d="scan'208";a="249251811"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 06:26:18 -0800
X-IronPort-AV: E=Sophos;i="5.88,358,1635231600"; d="scan'208";a="541626511"
Received: from dhogarty-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.10.221])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 06:26:17 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220209051140.1599643-1-matthew.d.roper@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220209051140.1599643-1-matthew.d.roper@intel.com>
Date: Thu, 10 Feb 2022 16:26:13 +0200
Message-ID: <87bkze94sa.fsf@intel.com>
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

On Tue, 08 Feb 2022, Matt Roper <matthew.d.roper@intel.com> wrote:
> Another collection of cleanup patches for intel_gt_regs.h to make it a
> bit less painful to work with.

I didn't review this but I agree with what's being done.

Acked-by: Jani Nikula <jani.nikula@intel.com>

>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>
> Matt Roper (6):
>   drm/i915/gt: Drop duplicate register definition for VDBOX_CGCTL3F18
>   drm/i915/gt: Move SFC lock bits to intel_engine_regs.h
>   drm/i915/gt: Use parameterized RING_MI_MODE
>   drm/i915/gt: Cleanup spacing of intel_gt_regs.h
>   drm/i915/gt: Use consistent offset notation in intel_gt_regs.h
>   drm/i915/gt: Order GT registers by MMIO offset
>
>  drivers/gpu/drm/i915/gt/intel_engine_regs.h |   23 +
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 2623 +++++++++----------
>  drivers/gpu/drm/i915/gt/intel_reset.c       |   14 +-
>  drivers/gpu/drm/i915/gt/intel_workarounds.c |    6 +-
>  drivers/gpu/drm/i915/intel_uncore.c         |    2 +-
>  5 files changed, 1333 insertions(+), 1335 deletions(-)

-- 
Jani Nikula, Intel Open Source Graphics Center
