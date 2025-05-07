Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5981AADA3B
	for <lists+intel-gfx@lfdr.de>; Wed,  7 May 2025 10:34:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6151E10E76B;
	Wed,  7 May 2025 08:34:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="altjfTO1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 220E010E01F;
 Wed,  7 May 2025 08:34:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746606875; x=1778142875;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=nkkz529NP8iUXAfxdnohP4wqHJNUKiQ9t5PXjuvb4AU=;
 b=altjfTO1hHGl8h9JCPQf2sDb0m/XSpoaZ8veDJjcdprpxndWltBp99pQ
 cdkt5nd5HEe1OBmlGbFvlQqkhdfWZNqSZWPqt40hp7BIWY4AZhqZm3cLP
 w3ViTvi6ox93ouj/vKMrCQ8GZTbviuEV4XDBrLEPw0SPaSKqsn6Qi5QWJ
 ZMgQjMgR1FHz+dPFoRfcAb80BDXd1fUB+kZk1ANhmwO66+lI+BVRKfpky
 JrTGSSmrivBI/zC/YMRTMmEtjj+U/71KhaMMx1ZDtzQRAYA0QvIJiRlCN
 vWOWgtEzay9BU2O5wo71lP6URqvD/JhRy+J+2LqaGO3+5Y2FypfcrREus g==;
X-CSE-ConnectionGUID: CRWrjy9ASbWwk0+RaRamUA==
X-CSE-MsgGUID: wj7GQEVvSEm98sFrdBCjzQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11425"; a="73711443"
X-IronPort-AV: E=Sophos;i="6.15,268,1739865600"; d="scan'208";a="73711443"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 01:34:35 -0700
X-CSE-ConnectionGUID: Dy5mKRYQRB2NTm++Gr6i4Q==
X-CSE-MsgGUID: 9mGOkKfNTKGh0QyTzSDIEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,268,1739865600"; d="scan'208";a="136411034"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.218])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 01:34:33 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com
Subject: Re: [PATCH 8/8] drm/i915/irq: move i915->irq_lock to display->irq.lock
In-Reply-To: <174656703321.1401.8627403371256302933@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1746536745.git.jani.nikula@intel.com>
 <6d8d2ce0f34a9c7361a5e2fcf96bb32a34c57e76.1746536745.git.jani.nikula@intel.com>
 <174656703321.1401.8627403371256302933@intel.com>
Date: Wed, 07 May 2025 11:34:30 +0300
Message-ID: <87o6w4vmy1.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Tue, 06 May 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Quoting Jani Nikula (2025-05-06 10:06:50-03:00)
>>Observe that i915->irq_lock is no longer used to protect anything
>>outside of display. Make it a display thing.
>>
>>This allows us to remove the ugly #define irq_lock irq.lock hack from xe
>>compat header.
>>
>>Note that this is slightly more subtle than it first looks. For i915,
>>there's no functional change here. The lock is moved. However, for xe,
>>we'll now have *two* locks, xe->irq.lock and display->irq.lock. These
>>should protect different things, though. Indeed, nesting in the past
>>would've lead to a deadlock because they were the same lock.
>>
>>With the i915 references gone, we can make a handful more files
>>independent of i915_drv.h.
>>
>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Besides reviewing the patch itself, I also did a git-grep to check for
> lexical references to irq_lock in the code after this patch is applied.
>
> I found 2 references in comments:
>
>  (1) A reference to "drm_i915_private::irq_lock" in the comment for member
>      detection_work_enabled of struct intel_hotplug. I think we can
>      simply refer to "intel_display::irq::lock" now.
>
>  (2) A reference to "i915->irq_lock" in a comment inside struct intel_rps.
>      Looking at the history, it looks like we started using gt->irq_lock
>      with commit d762043f7ab1 ("drm/i915: Extract GT powermanagement
>      interrupt handling"), which failed to update the comment. I think
>      we can update the comment to make it more accurate. I guess that
>      could be on a patch of its own...

Thanks for spotting these!

I sent a separate fix for (2), because it is kind of separate [1].

> So, with the small tweak suggested in (1),
>
>   Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

Thanks a lot for the reviews! I took the liberty of tweaking the comment
(1) while applying, and pushed the series to din.

BR,
Jani.


[1] https://lore.kernel.org/r/20250507083136.1987023-1-jani.nikula@intel.com


-- 
Jani Nikula, Intel
