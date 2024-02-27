Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9568B868E2D
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Feb 2024 11:58:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8FB810E8E2;
	Tue, 27 Feb 2024 10:58:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OfGE7xHB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CC9210E8E2
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Feb 2024 10:58:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709031499; x=1740567499;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=5BkrVfq/dsxGg1/OWL6aETx1gf1I1h9Ra15WknjI/vE=;
 b=OfGE7xHBBwoN54EqBC/CeC/jssfRYEDxk9mvFx8gnk2nSf/alvn5F1VT
 /BAZnwy8/Dxcpa5v5akoyFZsPROXSA2b4igdhNlK5ZBqhV0TTJACmR90m
 J44z2evZCmo27UJwL2XjFbY25IeEgRc/qaT75KSVEAKL/1zSrWpb1KpSB
 pXrBRQqewt0kulPrY2Tl+bH/h9HFf5BtZk2p8H3bcOzh7eG65ivHoJsgA
 rQovnSFlsVRlddodOg/NuwCsq1KAZk+x/7u2Hz7sIuanF/o2imEzqqFdd
 hGppbQoFmNoVOXR0oItnCycBDAoO4tXBx57Vv5AXLr4EDarnq8kyTZdOe A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="14787131"
X-IronPort-AV: E=Sophos;i="6.06,187,1705392000"; d="scan'208";a="14787131"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2024 02:58:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,187,1705392000"; 
   d="scan'208";a="7349094"
Received: from bdallmer-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.49.187])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2024 02:58:13 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Borislav Petkov <bp@alien8.de>
Cc: intel-gfx@lists.freedesktop.org, ville.syrjala@linux.intel.com, Joonas
 Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, lkml
 <linux-kernel@vger.kernel.org>
Subject: Re: BUG: sleeping function called from invalid context at
 drivers/gpu/drm/i915/gem/i915_gem_pages.c:526
In-Reply-To: <20240227105356.GBZd2_RL9hjC_LupZB@fat_crate.local>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240227100342.GAZd2zfmYcPS_SndtO@fat_crate.local>
 <87jzmqjir5.fsf@intel.com>
 <20240227105356.GBZd2_RL9hjC_LupZB@fat_crate.local>
Date: Tue, 27 Feb 2024 12:58:08 +0200
Message-ID: <87h6hujhrz.fsf@intel.com>
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

On Tue, 27 Feb 2024, Borislav Petkov <bp@alien8.de> wrote:
> On Tue, Feb 27, 2024 at 12:37:02PM +0200, Jani Nikula wrote:
>> Is this a recent regression?
>
> Yeah, no clue. Hadn't booted that machine since 6.7-rc1... I can bisect
> if you want me to.

Let's see what Ville says, but in the end bisection might be the
quickest way to find the regression. Though I understand it can be
tedious for you personally.

BR,
Jani.



-- 
Jani Nikula, Intel
