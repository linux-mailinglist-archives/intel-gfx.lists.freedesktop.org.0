Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CA2CA07937
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2025 15:30:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 189FE10EE00;
	Thu,  9 Jan 2025 14:30:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZNJct0ul";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C97F510EDFE;
 Thu,  9 Jan 2025 14:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736433006; x=1767969006;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=wlpSfFkmg7EwUNE6BeOhnQyn2MJ6SOniBe+Nw0ZlZ7k=;
 b=ZNJct0ulbayLd9rFRIwEpO1zb/XOnn8YhoIVtE/HoYzFxjNE9Bsu8O1t
 sV9JNNGdXGuJV9C0C6MS1fIVAmsz6gc1YFAS2GAVmOKwuDRX84gtpgTQ2
 M88QWSqGbRI7FUQ2aVS5YZ9uZSkuNZ6tvBsKFRgn7Xey79sZvk2d4aJTS
 +00giK1JQy59ZBcYPzcpcpA74Om9dMaf3YOvZ4rQ9V8hhLCg8Yvzx/bKl
 lg020z3ehCMRiLvEFcIXf3THNrdCskMI3sALMbztHNzv+yGJIjlpB4Ub/
 QWNX65ajH43gq2NQorjL/W9gBX78dEkJX/OsEfq+1vsvqfrnFi0PO5zic w==;
X-CSE-ConnectionGUID: 2rD04Gy5S+yokN1lqk378A==
X-CSE-MsgGUID: pFv5SQRDSWG7pCoF37ZPyA==
X-IronPort-AV: E=McAfee;i="6700,10204,11310"; a="40375649"
X-IronPort-AV: E=Sophos;i="6.12,301,1728975600"; d="scan'208";a="40375649"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 06:30:05 -0800
X-CSE-ConnectionGUID: Kk2wfha1QcKhl83qOunB5g==
X-CSE-MsgGUID: r8qbOJXRR7afAfLxG5hktg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="107460097"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 06:30:02 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Raag Jadav <raag.jadav@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, Matt
 Atwood <matthew.s.atwood@intel.com>, Matt Roper
 <matthew.d.roper@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Stephen Rothwell <sfr@canb.auug.org.au>
Subject: Re: [PATCH] drm/xe: remove unused xe_pciids.h harder, add missing
 PCI ID
In-Reply-To: <Z3_V7MHFINUqR6qs@black.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250109105032.2585416-1-jani.nikula@intel.com>
 <Z3_V7MHFINUqR6qs@black.fi.intel.com>
Date: Thu, 09 Jan 2025 16:29:59 +0200
Message-ID: <87jzb4jc0o.fsf@intel.com>
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

On Thu, 09 Jan 2025, Raag Jadav <raag.jadav@intel.com> wrote:
> On Thu, Jan 09, 2025 at 12:50:32PM +0200, Jani Nikula wrote:
>> Commit 493454445c95 ("drm/xe: switch to common PCI ID macros") removed
>> xe_pciids.h via drm-intel-next. In the mean time, commit ae78ec0a52c4
>> ("drm/xe/ptl: Add another PTL PCI ID") added to xe_pciids.h via
>> drm-xe-next.
>> 
>> The two commits were merged in commit 8f109f287fdc ("Merge drm/drm-next
>> into drm-xe-next"), but xe_pciids.h wasn't removed, and the PCI ID
>> wasn't added to pciids.h.
>> 
>> Remove xe_pciids.h, and add the PCI ID to pciids.h.
>
> Unless there's a nuance intended in the subject
>
> s/harder/header

It's intentionally "remove it harder".


-- 
Jani Nikula, Intel
