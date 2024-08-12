Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5E9294E7AE
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2024 09:24:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 929C710E115;
	Mon, 12 Aug 2024 07:24:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AeKr2Kr1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1823D10E115
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Aug 2024 07:24:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723447489; x=1754983489;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=6PQbuKPWbHFdU8+TB49dWjkFrpH+cCGlRlOZsoOD/rs=;
 b=AeKr2Kr1R8XCPOGCpW+vflVKWoLW4K796vorrLryifr6Qv9EL4ri50Hz
 Ng+ogEojSEIHfqZk7MLsEYIa+HcDQw5bkXpZDF4zti1J7bYklljIg1RfH
 fhrlFzWqJ9npIVvuJfm9jEVcIFlDBnL3IbCwAWH+y5Ovspa9e3aspaesx
 22PjL3oBzb0nmFJ72oI50O7Zh3aMmQs81gwGQIubaXrsA3gfboZ2rPRTS
 zbHQBF3vWWyZkNYTwwqAGvY8HWHRf4KsldYXfXl7eBRB+/1vztcdnEU12
 wjXjf0kKuagr4Mr5uZU9mRIf0xF3knlLoYyHPZ05Q4ioTo722gJ0Jzo5z Q==;
X-CSE-ConnectionGUID: qO28gA9NR9achWad+u07Ww==
X-CSE-MsgGUID: WCxuF3VwQHqL+u0GVtdsZw==
X-IronPort-AV: E=McAfee;i="6700,10204,11161"; a="32691611"
X-IronPort-AV: E=Sophos;i="6.09,282,1716274800"; d="scan'208";a="32691611"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2024 00:24:48 -0700
X-CSE-ConnectionGUID: zkWbhECXRuOeqk9ruWpiyA==
X-CSE-MsgGUID: 3KeuxJ5KQI6JzTIrETC5DQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,282,1716274800"; d="scan'208";a="57832264"
Received: from iklimasz-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.117])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2024 00:24:46 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Patchwork <patchwork@emeril.freedesktop.org>, Arun R Murthy
 <arun.r.murthy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?Q?=E2=9C=97?= Fi.CI.BUILD: failure for drm/xe/display:
 Change HPD to polling on runtime suspend (rev2)
In-Reply-To: <172344026092.593417.12138202500002697402@2413ebb6fbb6>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240812040246.3311595-1-arun.r.murthy@intel.com>
 <172344026092.593417.12138202500002697402@2413ebb6fbb6>
Date: Mon, 12 Aug 2024 10:24:42 +0300
Message-ID: <878qx22og5.fsf@intel.com>
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

On Mon, 12 Aug 2024, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> == Series Details ==
>
> Series: drm/xe/display: Change HPD to polling on runtime suspend (rev2)
> URL   : https://patchwork.freedesktop.org/series/137026/
> State : failure
>
> == Summary ==
>
> Error: patch https://patchwork.freedesktop.org/api/1.0/series/137026/revisions/2/mbox/ not applied
> Applying: drm/xe/display: Change HPD to polling on runtime suspend
> Using index info to reconstruct a base tree...
> M	drivers/gpu/drm/xe/display/xe_display.c
> Falling back to patching base and 3-way merge...
> Auto-merging drivers/gpu/drm/xe/display/xe_display.c
> CONFLICT (content): Merge conflict in drivers/gpu/drm/xe/display/xe_display.c
> error: Failed to merge in the changes.
> hint: Use 'git am --show-current-patch=diff' to see the failed patch
> Patch failed at 0001 drm/xe/display: Change HPD to polling on runtime suspend
> When you have resolved this problem, run "git am --continue".
> If you prefer to skip this patch, run "git am --skip" instead.
> To restore the original branch and stop patching, run "git am --abort".
> Build failed, no error log produced

Please rebase, the last one already failed to apply.

BR,
Jani.


-- 
Jani Nikula, Intel
