Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4B5A46EFFD
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Dec 2021 18:02:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F87F10F4AC;
	Thu,  9 Dec 2021 16:55:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAB5E10E116;
 Thu,  9 Dec 2021 16:45:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639068358; x=1670604358;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=z+5PaUc40+4gYBIMmL0XyWzM7wfasx+isq07Ur/x/zg=;
 b=Uiqo/pRlsgZqeTIQRERvf8AKR7vyZrC9VR/e0Q8k0opGYkSZZBJ1z/Ug
 Y8kFyHhB0li+3i95E1TcUOvDn9KLXxiey6ZrGr62NUR53n52wQjg9Q8YT
 ajYrZ1purZtPP80TrrghoTL9aSWCphgy0Fmy8iCVkslTUh6FHJOwORXH+
 WVE501JKpP2d3CvasV3C4DDsr2pj1yeuKN5x0Ae6GVwcQE6wbxqCtnH2R
 WrZgMuZiBJzzVgNykDaa52X/yJAuE2SGS4Qfqr6ugGDwOZ6Q1+jnGPf2z
 S2UIWrMwACoJ7Ww2KSePwqDFVpYxXuKA+zW4PtV1yV7MsTEoequcNX3pH g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="218838797"
X-IronPort-AV: E=Sophos;i="5.88,193,1635231600"; d="scan'208";a="218838797"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 08:45:57 -0800
X-IronPort-AV: E=Sophos;i="5.88,193,1635231600"; d="scan'208";a="463311404"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.205])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 08:45:55 -0800
Date: Thu, 9 Dec 2021 22:15:38 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Message-ID: <20211209164538.GA2278@intel.com>
References: <20211208141613.7251-1-ramalingam.c@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20211208141613.7251-1-ramalingam.c@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 0/4] drm/i915: Basic enabling of 64k page
 support
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
Cc: Hellstrom Thomas <thomas.hellstrom@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2021-12-08 at 19:46:09 +0530, Ramalingam C wrote:
> Preparational patches for 64k page support.

Thanks for the review. Merged these patches.

Ram.
> 
> Matthew Auld (3):
>   drm/i915/xehpsdv: set min page-size to 64K
>   drm/i915/gtt/xehpsdv: move scratch page to system memory
>   drm/i915: enforce min page size for scratch
> 
> Stuart Summers (1):
>   drm/i915: Add has_64k_pages flag
> 
>  drivers/gpu/drm/i915/gem/i915_gem_stolen.c  |  6 +++++-
>  drivers/gpu/drm/i915/gt/gen6_ppgtt.c        |  1 +
>  drivers/gpu/drm/i915/gt/gen8_ppgtt.c        | 23 +++++++++++++++++++--
>  drivers/gpu/drm/i915/gt/intel_ggtt.c        |  3 +++
>  drivers/gpu/drm/i915/gt/intel_gtt.c         | 14 ++++++++++++-
>  drivers/gpu/drm/i915/gt/intel_gtt.h         |  2 ++
>  drivers/gpu/drm/i915/gt/intel_region_lmem.c |  5 ++++-
>  drivers/gpu/drm/i915/i915_drv.h             |  8 +++++++
>  drivers/gpu/drm/i915/i915_pci.c             |  2 ++
>  drivers/gpu/drm/i915/intel_device_info.h    |  1 +
>  drivers/gpu/drm/i915/selftests/mock_gtt.c   |  2 ++
>  11 files changed, 62 insertions(+), 5 deletions(-)
> 
> -- 
> 2.20.1
> 
