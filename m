Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E86A96B608
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2024 11:08:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 462E810E70D;
	Wed,  4 Sep 2024 09:08:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HJ/EvJ/i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46ADD10E70D;
 Wed,  4 Sep 2024 09:08:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725440921; x=1756976921;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=oRcNn07MGqKQ3Ijze6GDosm9q2Rl94y1gGh2jbe57w4=;
 b=HJ/EvJ/ia5lBEe40YshSHIhXEAfzV+nXYMgcPvx5nASrw0REXwzq8g1f
 R2cr/Qh1JxT8SraVyj+MXZvYPs1Sh4p2siJykQzr6pS06lbIwgJahXKa7
 m6ReZJbO/OAcCgmwj4YM/4YElYQFOR+d3+17h2zqKWt1piUA/YloW609g
 +QaKgDm/0usnEffVoBTS/18KLKSMgPehQgUWmIk261a/GArn5gyAEyJEj
 5m4I8xWAJi8dt3Q8ouSbJ3gMFh838rEBkU1tiR8S/6T40XonIxoIRgreS
 FINqmxiSREB5VqnleY6v9bK/WYaBvVJdhp5VYttrWIoMdRdgYwg23O0Gu Q==;
X-CSE-ConnectionGUID: fTM4CquoRJ6drf5DG9Gb8w==
X-CSE-MsgGUID: Fi4Pk8BtTBenT7VmcxWESA==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="27849259"
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="27849259"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 02:02:50 -0700
X-CSE-ConnectionGUID: +mElQZigS7qIJrTrn9W3Gg==
X-CSE-MsgGUID: A1X8UGHsSVegs5B0HrwAhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="70010835"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.18])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 02:02:45 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, Imre Deak <imre.deak@intel.com>
Subject: Re: [PATCH 0/4] drm/xe/display: Clean-up PM sequences
In-Reply-To: <20240903223803.380711-1-rodrigo.vivi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240903223803.380711-1-rodrigo.vivi@intel.com>
Date: Wed, 04 Sep 2024 12:02:28 +0300
Message-ID: <87wmjrssez.fsf@intel.com>
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

On Tue, 03 Sep 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> This series aim to bring a bit of clarity in the display PM
> sequences and start a clean-up around the runtime_pm ones.
>
> Specially around D3Cold. There are some ongoing discussions
> that we wouldn't need all the sequences that we currently have.
>
> So, let's at least split them up to separate functions so
> we can individually scrutinize.
>
> For now, I removed what I'm sure that we don't need in a
> d3cold scenario where we lose power and that I could
> validate in my DG2. Any other attempt to clean-up further
> at my end failed badly DG2's d3cold.
>
> But again, let's at least bring some clarity on the
> sequences before we go even further.

Taking a step back, I can't help but feel this is stuff that should
really happen at i915 display level.

Yes, i915 calls display all over the place in i915_driver.c. Just look
at the display/ includes there.

xe now duplicates that in xe_display.c. It's kind of better, but really
not.

We should have one clean interface to display probe/cleanup and
(runtime) suspend/resume used by both drivers, instead of adding
slightly different glue layers to both, each directly calling various
parts of display.

I get that this clarifies xe_display.c, but that should also ditch
almost all of the direct display includes.


BR,
Jani.



>
> Cc: Vinod Govindapillai <vinod.govindapillai@intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
>
>
> Rodrigo Vivi (4):
>   drm/xe/display: Spin-off xe_display runtime/d3cold sequences
>   drm/xe/display: Remove i915_drv.h include
>   drm/xe/display: Kill useless has_display
>   drm/xe/display: Reduce and streamline d3cold display sequence
>
>  drivers/gpu/drm/xe/display/xe_display.c | 109 ++++++++++++++----------
>  drivers/gpu/drm/xe/display/xe_display.h |   8 +-
>  drivers/gpu/drm/xe/xe_pm.c              |   8 +-
>  3 files changed, 74 insertions(+), 51 deletions(-)

-- 
Jani Nikula, Intel
