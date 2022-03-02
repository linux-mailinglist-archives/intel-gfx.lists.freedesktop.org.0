Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AF544CA913
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Mar 2022 16:32:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B361B10EC69;
	Wed,  2 Mar 2022 15:32:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EABC910EC69
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Mar 2022 15:32:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646235155; x=1677771155;
 h=message-id:date:mime-version:subject:to:references:cc:
 from:in-reply-to:content-transfer-encoding;
 bh=GfvBErDMpXMugIt81p1hzjxQXCsvfvtU8b9E7iCk5H0=;
 b=QwR+1YdaHmIc6nAvDb8ykuXsXMd3UBvF0kQq+PV993SlbuFwXAxdjaEc
 It/bJl0jXxg9/Sn8O6wDqAGQDod4FA15rTwk9qVTUEWpvGUHDwAaAjauW
 OwDIB9G/mxJU7LVjJYtENKgyqVpB5HKMKOOpXAWUZ819fX3qc/VCHLqGQ
 H+hPHZGlvuGBN6hxM+DmkHbvIq8JXtrtIPQrrGMvr5/MHWWVToM5dlihv
 57OYZzP9xVPlGblWIpBC58tG7rxwvZTYYXBMLM9oPywEW6PgDcJu4hfNA
 z0tOmkEmmnIrnGuTEiX82rL/0juIv/Ig5HsOthXnfI9ch45OALg2yW6nS g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10274"; a="314145808"
X-IronPort-AV: E=Sophos;i="5.90,149,1643702400"; d="scan'208";a="314145808"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2022 07:31:52 -0800
X-IronPort-AV: E=Sophos;i="5.90,149,1643702400"; d="scan'208";a="551293533"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.52.58])
 ([10.252.52.58])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2022 07:31:52 -0800
Message-ID: <be7c7a5c-0e0d-6949-a146-dc961ef938c9@linux.intel.com>
Date: Wed, 2 Mar 2022 16:31:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org
References: <20220301215334.20543-1-ramalingam.c@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <20220301215334.20543-1-ramalingam.c@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 0/4] drm/i915/ttm: Evict and store of
 compressed object
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

Reviewed-by: Nirmoy Das <nirmoy.das@intel.com> for the series as well.

On 01/03/2022 22:53, Ramalingam C wrote:
> On Xe-HP and later devices, we use dedicated compression control
> state (CCS) stored in local memory for each surface, to support
> the 3D and media compression formats.
>
> The memory required for the CCS of the entire local memory is
> 1/256 of the local memory size. So before the kernel
> boot, the required memory is reserved for the CCS data and a
> secure register will be programmed with the CCS base address
>
> So when we allocate a object in local memory we dont need to explicitly
> allocate the space for ccs data. But when we evict the obj into the smem
> to hold the compression related data along with the obj we need smem
> space of obj_size + (obj_size/256).
>
> Hence when we create smem for an obj with lmem placement possibility we
> create with the extra space.
>
> When we are swapping out the local memory obj on flat-ccs capable platform,
> we need to capture the ccs data too along with main meory and we need to
> restore it when we are swapping in the content.
>
> When lmem object is swapped into a smem obj, smem obj will
> have the extra pages required to hold the ccs data corresponding to the
> lmem main memory. So main memory of lmem will be copied into the initial
> pages of the smem and then ccs data corresponding to the main memory
> will be copied to the subsequent pages of smem.
>
> Swapin happens exactly in reverse order. First main memory of lmem is
> restored from the smem's initial pages and the ccs data will be restored
> from the subsequent pages of smem.
>
> Extracting and restoring the CCS data is done through a special cmd called
> XY_CTRL_SURF_COPY_BLT
>
> Test-with: 20220301212513.30772-1-ramalingam.c@intel.com
>
> Ayaz A Siddiqui (1):
>    drm/i915/gt: Clear compress metadata for Xe_HP platforms
>
> Ramalingam C (3):
>    drm/ttm: parameter to add extra pages into ttm_tt
>    drm/i915/gem: Extra pages in ttm_tt for ccs data
>    drm/i915/migrate: Evict and restore the flatccs capable lmem obj
>
>   drivers/gpu/drm/drm_gem_vram_helper.c        |   2 +-
>   drivers/gpu/drm/i915/gem/i915_gem_ttm.c      |  23 +-
>   drivers/gpu/drm/i915/gt/intel_gpu_commands.h |  15 +
>   drivers/gpu/drm/i915/gt/intel_migrate.c      | 327 +++++++++++++++++--
>   drivers/gpu/drm/qxl/qxl_ttm.c                |   2 +-
>   drivers/gpu/drm/ttm/ttm_agp_backend.c        |   2 +-
>   drivers/gpu/drm/ttm/ttm_tt.c                 |  12 +-
>   drivers/gpu/drm/vmwgfx/vmwgfx_ttm_buffer.c   |   2 +-
>   include/drm/ttm/ttm_tt.h                     |   4 +-
>   9 files changed, 357 insertions(+), 32 deletions(-)
>
