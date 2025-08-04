Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF7A6B1A6E1
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Aug 2025 17:58:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FBF010E5A5;
	Mon,  4 Aug 2025 15:58:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Wo1b0cRC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D47610E5C6;
 Mon,  4 Aug 2025 15:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754323113; x=1785859113;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=OZmqYMhp4nwBD/g+7k/8DHRinjvGmRDx2rIaLYoxWgY=;
 b=Wo1b0cRCnkthpmcP+vISEvs4SASo+amyWZauptyIPVwlCfx/lCP8OLwP
 wmEnyYyTCAWQwYwmo8l3Mc3xRYY7/kIPxUhE8pqWdogTrRCJHu1mxZRlP
 Qoti7evKAclEu2Eq0TaxbndhLtTam8uXwcU8hKcvZ8+hnqLw7nZZOdV5d
 SekIe3gvgUjwoiH9KQFGpuYRUzhzYgSYi0WoHS8f3ZFMZ2dTubOnQtI/T
 m3Kd05Fbao3pdPCVZDiAyR3eZr7O7KmmaxLOEpEeYQbEknRbC9lVE0oDx
 AJ6wyQUL1RF6gEmHFYEHM4sYQM5VADU8klbz6d3qYMyeVb+NZjhNp1Uax A==;
X-CSE-ConnectionGUID: oGcn/vpoTyyElQ+QG2GH+A==
X-CSE-MsgGUID: YlsYDcXVTaOFlVpjqJx4SQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="56306237"
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="56306237"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 08:58:33 -0700
X-CSE-ConnectionGUID: +JS8TWTSSsmF/N7nDnd9RA==
X-CSE-MsgGUID: kwc70fHoQoK1ROJ+Caq1Vw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="195137203"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.236])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 08:58:31 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Maarten Lankhorst <dev@lankhorst.se>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/display: Use drm_crtc_vblank_count in
 intel_crtc_get_vblank_counter()
In-Reply-To: <a275a34d-9f90-493f-94d9-9ea793b57147@lankhorst.se>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250724122616.1111673-1-dev@lankhorst.se>
 <b4ee66fec61e424ae94024ba297b49e7586639d9@intel.com>
 <a275a34d-9f90-493f-94d9-9ea793b57147@lankhorst.se>
Date: Mon, 04 Aug 2025 18:58:28 +0300
Message-ID: <fac050aaa50448b25e354b982cba277f9fcdf152@intel.com>
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

On Mon, 04 Aug 2025, Maarten Lankhorst <dev@lankhorst.se> wrote:
> Hey,
>
> Den 2025-08-04 kl. 16:46, skrev Jani Nikula:
>> On Thu, 24 Jul 2025, Maarten Lankhorst <dev@lankhorst.se> wrote:
>>> drm_crtc_accurate_vblank_count takes a spinlock, which we should avoid
>>> in tracepoints and debug functions.
>>>
>>> This also prevents taking the spinlock 2x during the critical
>>> section of pipe updates.
>> 
>> Don't we have vblank->max_vblank_count != 0 in most cases, and don't we
>> want accuracy in the rest of the cases?
>> 
>> The commit message should explain why it's okay to make this change.
>
> The whole point of tracepoints and debugging infra is that the functions should
> observe, not alter. Even for the vblank_count == 0 we should not be taking the
> locking that we do.
>
> If you look at drm_update_vblank_count, that's way more than the simple
> atomic64_read(&vblank->count) from drm_vblank_count.
>
> It takes the vblank_time_lock, loops potentially DRM_TIMESTAMP_MAXRETRIES
> times, prints a few of drm_dbg() messages (which also has issues), and then
> returns after updating. Being approximately correct is a win here.

It's really hard for me to say okay here when the one person I
absolutely know will be using vblank tracing is Ville, and his comment
was, "The non-accurate version is completely useless here." [1]

BR,
Jani.


[1] https://lore.kernel.org/r/aHaV7vtp2Y1RbIAt@intel.com


-- 
Jani Nikula, Intel
