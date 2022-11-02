Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 848106170B6
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 23:31:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D947F10E1F0;
	Wed,  2 Nov 2022 22:31:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C7B210E1F0
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Nov 2022 22:31:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667428295; x=1698964295;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=FEEI6iNnXfKt+MqHO/b0UyRZUxM70wsvu+jb4DVA3Q8=;
 b=B/kJy7hYIt2LLjtV79UXczOAAj0VCDXP2T87/evRH4Qt9dHQ2PsZoTKe
 DB2NUUNPcf7eiK+r1Gcx3SxQVKWrqI5D/mvHkW6mSZTiieloyLed4wp1I
 H/B864wzVm2rYuVhi6cDZQvEiNX+hwhVYHpQ4vjXGsfpWYY8J57RYmfsJ
 0VCzj3agih2wf6Gbgk4lR0Gqco3DOvnr1Keb3W2m12w3lUi1uovjBOd5x
 8DGPQulS5fa7bgrgzmrQNrHjFaT0v8ENVCmVhzSUIFzuloiJWwdF0BOwv
 DHWI3Z3FDn7lR6xGXDvErNr/PqLqLNP+SQRlZldHQceJgrWJWbTI9T7B8 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="371631063"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="371631063"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 15:31:34 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="777066504"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="777066504"
Received: from amangalo-mobl4.ger.corp.intel.com (HELO intel.com)
 ([10.252.47.69])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 15:31:32 -0700
Date: Wed, 2 Nov 2022 23:31:29 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
Message-ID: <Y2LvwWE4VY4APkTf@ashyti-mobl2.lan>
References: <20221102051416.27327-1-niranjana.vishwanathapura@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221102051416.27327-1-niranjana.vishwanathapura@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Do not set cache_dirty for DGFX
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
Cc: intel-gfx@lists.freedesktop.org, matthew.auld@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Niranjana,

On Tue, Nov 01, 2022 at 10:14:16PM -0700, Niranjana Vishwanathapura wrote:
> Currently on DG1, which do not have LLC, we hit the below
> warning while rebinding an userptr invalidated object.
> 
> WARNING: CPU: 4 PID: 13008 at drivers/gpu/drm/i915/gem/i915_gem_pages.c:34 __i915_gem_object_set_pages+0x296/0x2d0 [i915]
> ...
> RIP: 0010:__i915_gem_object_set_pages+0x296/0x2d0 [i915]
> ...
> Call Trace:
>  <TASK>
>  i915_gem_userptr_get_pages+0x175/0x1a0 [i915]
>  ____i915_gem_object_get_pages+0x32/0xb0 [i915]
>  i915_gem_object_userptr_submit_init+0x286/0x470 [i915]
>  eb_lookup_vmas+0x2ff/0xcf0 [i915]
>  ? __intel_wakeref_get_first+0x55/0xb0 [i915]
>  i915_gem_do_execbuffer+0x785/0x21d0 [i915]
>  i915_gem_execbuffer2_ioctl+0xe7/0x3d0 [i915]
> 
> We shouldn't be setting the obj->cache_dirty for DGFX,
> fix it.
> 
> Suggested-by: Matthew Auld <matthew.auld@intel.com>
> Reported-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
> Signed-off-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>

Pushed in drm-intel-gt-next.

Thanks,
Andi
