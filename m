Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EE6AABE257
	for <lists+intel-gfx@lfdr.de>; Tue, 20 May 2025 20:10:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAD3E10E00F;
	Tue, 20 May 2025 18:10:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="boPQVaEx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A593810E00F;
 Tue, 20 May 2025 18:10:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747764637; x=1779300637;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=aKDn3vLoSnjVSVa1sA31kz+IllVs/d1XPuCkY1Baebk=;
 b=boPQVaExL6gBs9TGWmDcryEd3jvYr2NtqEi7EW019IFMZST/wSKWm64H
 t2Afp6q7m/LS/I0LNiqjQZuOGZmLkbWhrCcO1j5Lrx4n0P83uxXJrkrdk
 seYrmLQgW9Iq4HpMbtABJ4Ry/4nOGprH2OFH4WqkX09EGoEdMDrEHMlei
 HTY/ldq2xarJGprz8gvu5p0q4ovsKpbBSkel65OXubyL9tr3nX24Sr1zL
 7bsQJtSvZgGqvzMKwLyhXMQn4Lo5mw6KCGghWNJ/adjlki03jXipC43XI
 SKuknr22qw6QLicUA18x4FRBOohd/yFMLlppbJyavVeUkJo1Yc+rOt3wR w==;
X-CSE-ConnectionGUID: DDj8VtJ/QumY+Q692joMLw==
X-CSE-MsgGUID: MooPs0MIRNGdNJChlUlCCQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11439"; a="52341213"
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="52341213"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 11:10:37 -0700
X-CSE-ConnectionGUID: DyzUohwXT561HAIJmKG+8A==
X-CSE-MsgGUID: yQrgOVUQRg2VXUKHDdSn2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="139648761"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.245.168])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 11:10:34 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Haoxiang Li <haoxiang_li2024@163.com>, stable@vger.kernel.org
Subject: Re: [PATCH 1/7] drm/i915/display: Add check for
 alloc_ordered_workqueue() and alloc_workqueue()
In-Reply-To: <8c1002cd-e5bf-4d1b-880c-5e7ac7d08f70@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1747397638.git.jani.nikula@intel.com>
 <20d3d096c6a4907636f8a1389b3b4dd753ca356e.1747397638.git.jani.nikula@intel.com>
 <8c1002cd-e5bf-4d1b-880c-5e7ac7d08f70@intel.com>
Date: Tue, 20 May 2025 21:10:32 +0300
Message-ID: <87ecwjtap3.fsf@intel.com>
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

On Fri, 16 May 2025, Matthew Auld <matthew.auld@intel.com> wrote:
> On 16/05/2025 13:16, Jani Nikula wrote:
>> From: Haoxiang Li <haoxiang_li2024@163.com>
>> 
>> Add check for the return value of alloc_ordered_workqueue()
>> and alloc_workqueue(). Furthermore, if some allocations fail,
>> cleanup works are added to avoid potential memory leak problem.
>> 
>> Fixes: 40053823baad ("drm/i915/display: move modeset probe/remove functions to intel_display_driver.c")
>> Cc: stable@vger.kernel.org
>> Signed-off-by: Haoxiang Li <haoxiang_li2024@163.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Matthew Auld <matthew.auld@intel.com>

Thanks for the review, pushed the lot to drm-intel-next.

BR,
Jani.


-- 
Jani Nikula, Intel
