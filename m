Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 32793487833
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jan 2022 14:25:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AA5710FFCD;
	Fri,  7 Jan 2022 13:25:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A471610FB8A
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jan 2022 13:25:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641561911; x=1673097911;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=4puIals91aH1bzqjXJsaaWRszgGmxccBqxYyic10uZE=;
 b=HMOE4A0siDFJjkq7ilyEJeDioolqY5bDResL1PRegJxEa4wU3do24Xg1
 2013uPDUvLWX/Yy337KoKb3BAjkSTUOMMfrTnBBonCpKX4xCHoNCenTj0
 6gNKNuPCUwu+gBMKCCFIeGzp0OiCx2dEBRpPbQoQRbOCl2mlXaCa/1F9/
 fKWjvjC8P0LMYgnvr90XCdhpxKUSdDN2uR+jYbR9lQVIw3GZtIcIOgtHz
 wX3hSgA1PVMDm1vuTfgQDLZrEBmuxumYrHDrClLp2MrhBrScmt7O7DeeX
 el++qDBO310j9Dion2lQvShmQUAGuKsll2mVj/FEJ0lmnF/p9PIfmcpUr g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10219"; a="306231969"
X-IronPort-AV: E=Sophos;i="5.88,270,1635231600"; d="scan'208";a="306231969"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2022 05:25:11 -0800
X-IronPort-AV: E=Sophos;i="5.88,270,1635231600"; d="scan'208";a="471308017"
Received: from dgreerx-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.24.206])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2022 05:25:09 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <cover.1641561552.git.jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1641561552.git.jani.nikula@intel.com>
Date: Fri, 07 Jan 2022 15:25:04 +0200
Message-ID: <87k0fbllu7.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 0/5] drm/i915: clean up i915_drv.h, part 1
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

On Fri, 07 Jan 2022, Jani Nikula <jani.nikula@intel.com> wrote:
> First five patches from [1], chopping it up a bit.

Aarrgh. Today I learned, the hard way, that you can actually specify
both files *and* rev-list to git send-email at the same time, and it'll
send all. *facepalm*.

Let's see how badly CI gets confused about this. Maybe I need to send
this yet again.

BR,
Jani.


>
> BR,
> Jani.
>
> [1] https://patchwork.freedesktop.org/series/98515/
>
>
> Jani Nikula (5):
>   drm/i915: split out i915_getparam.h from i915_drv.h
>   drm/i915: split out i915_cmd_parser.h from i915_drv.h
>   drm/i915: split out i915_gem_evict.h from i915_drv.h
>   drm/i915: split out gem/i915_gem_userptr.h from i915_drv.h
>   drm/i915: split out gem/i915_gem_tiling.h from i915_drv.h
>
>  .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  2 ++
>  drivers/gpu/drm/i915/gem/i915_gem_tiling.c    |  1 +
>  drivers/gpu/drm/i915/gem/i915_gem_tiling.h    | 18 ++++++++++
>  drivers/gpu/drm/i915/gem/i915_gem_userptr.c   |  1 +
>  drivers/gpu/drm/i915/gem/i915_gem_userptr.h   | 14 ++++++++
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  2 +-
>  drivers/gpu/drm/i915/gt/selftest_hangcheck.c  |  1 +
>  drivers/gpu/drm/i915/i915_cmd_parser.c        |  1 +
>  drivers/gpu/drm/i915/i915_cmd_parser.h        | 26 ++++++++++++++
>  drivers/gpu/drm/i915/i915_driver.c            |  1 +
>  drivers/gpu/drm/i915/i915_drv.h               | 34 -------------------
>  drivers/gpu/drm/i915/i915_gem.c               |  1 +
>  drivers/gpu/drm/i915/i915_gem_evict.c         |  1 +
>  drivers/gpu/drm/i915/i915_gem_evict.h         | 24 +++++++++++++
>  drivers/gpu/drm/i915/i915_gem_gtt.c           |  1 +
>  drivers/gpu/drm/i915/i915_getparam.c          |  2 ++
>  drivers/gpu/drm/i915/i915_getparam.h          | 15 ++++++++
>  drivers/gpu/drm/i915/i915_ioc32.c             |  1 +
>  drivers/gpu/drm/i915/i915_vma.c               |  3 +-
>  19 files changed, 113 insertions(+), 36 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_tiling.h
>  create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_userptr.h
>  create mode 100644 drivers/gpu/drm/i915/i915_cmd_parser.h
>  create mode 100644 drivers/gpu/drm/i915/i915_gem_evict.h
>  create mode 100644 drivers/gpu/drm/i915/i915_getparam.h

-- 
Jani Nikula, Intel Open Source Graphics Center
