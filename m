Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F547874A4A
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Mar 2024 10:04:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32B68113721;
	Thu,  7 Mar 2024 09:04:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BuPyvGz8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F313810F313;
 Thu,  7 Mar 2024 09:04:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709802259; x=1741338259;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=on1kMRbH2MRHO4WuwMt3AV0+vnlL1v+0q4klOTayyuQ=;
 b=BuPyvGz8oy897//Jk2q/2+qW9k0CUUfn3GP7bCq8E2AxmRalKqxE692B
 6YVNa2kM5emFouTCO9nBuCiKinkMMcRNvDhz9UokFgjbKfcd8mLVCzkOA
 Vw79fQDS/RSyK+USXwphB8c0P/3bm9t0Z2uZrIuKxH1PUTbncQPHdJ9NO
 Rt2vRDJjX9HE1iu8Q/A7OGlZMkD68wGoZJ84RbkUQq5dzSPBgV69S+SU9
 kBIbyhsbcw0/muFqXN8NfmIANWHNXD4KsUcxH7KGNU/050m7aDiK/Lj+U
 qtHOkUkSnXcCON0VGo+NKb2lrm4PG5vIbpf3te9CHStYrqy9fopot0ymo w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11005"; a="15897562"
X-IronPort-AV: E=Sophos;i="6.06,211,1705392000"; d="scan'208";a="15897562"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2024 01:04:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,211,1705392000"; 
   d="scan'208";a="9945603"
Received: from tcavalax-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.33.241])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2024 01:04:15 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, dri-devel@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, David
 Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Maarten
 Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <mripard@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>
Subject: Re: [PATCH 00/22] drm: fix headers, add header test facility
In-Reply-To: <5642828f-28a5-4f79-a96f-5ca4411163c7@suse.de>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1709749576.git.jani.nikula@intel.com>
 <5642828f-28a5-4f79-a96f-5ca4411163c7@suse.de>
Date: Thu, 07 Mar 2024 11:04:12 +0200
Message-ID: <875xxyxvjn.fsf@intel.com>
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

On Thu, 07 Mar 2024, Thomas Zimmermann <tzimmermann@suse.de> wrote:
> Hi
>
> Am 06.03.24 um 19:31 schrieb Jani Nikula:
>> First, fix a bunch of issues in drm headers, uncovered with the last
>> patch. A few kernel-doc warnings are just brushed under the carpet for
>> now, with a FIXME comment. Otherwise, pretty straightforward stuff.
>
> Nice, thanks a lot. For the FIXME comments, maybe maintainers can 
> provide the docs to include in your patchset. But that wouldn't be a 
> blocker IMHO. The /* private: */ comments make kernel-doc ignore the 
> rest of the structure, right?

That's right. In some cases it's the appropriate thing to do, like patch
9/22 where the members of struct drm_format_conv_state should be
private.

>
> With the required fixes applied, for patches 1 to 14:
>
> Reviewed-by: Thomas Zimmermann <tzimmermann@suse.de>
>
> For patches 15 to 22:
>
> Acked-by: Thomas Zimmermann <tzimmermann@suse.de>

Thanks!

BR,
Jani.

>
> Best regards
> Thomas
>
>>
>> Second, add a header test facility to catch issues at build time when
>> CONFIG_DRM_HEADER_TEST=y. This is the last patch, and I think needs
>> Masahiro's ack.
>>
>> BR,
>> Jani.
>>
>>
>> Cc: David Airlie <airlied@gmail.com>
>> Cc: Daniel Vetter <daniel@ffwll.ch>
>> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>> Cc: Maxime Ripard <mripard@kernel.org>
>> Cc: Thomas Zimmermann <tzimmermann@suse.de>
>> Cc: Masahiro Yamada <masahiroy@kernel.org>
>>
>> Jani Nikula (22):
>>    drm/crtc: make drm_crtc_internal.h self-contained
>>    drm: add missing header guards to drm_internal.h
>>    drm/kunit: fix drm_kunit_helpers.h kernel-doc
>>    drm/amdgpu: make amd_asic_type.h self-contained
>>    drm: bridge: samsung-dsim: make samsung-dsim.h self-contained
>>    drm/dp_mst: fix drm_dp_mst_helper.h kernel-doc
>>    drm/crc: make drm_debugfs_crc.h self-contained and fix kernel-doc
>>    drm/encoder: silence drm_encoder_slave.h kernel-doc
>>    drm: fix drm_format_helper.h kernel-doc warnings
>>    drm/lease: make drm_lease.h self-contained
>>    drm: fix drm_gem_vram_helper.h kernel-doc
>>    drm/of: make drm_of.h self-contained
>>    drm/i2c: silence ch7006.h and sil164.h kernel-doc warnings
>>    drm/suballoc: fix drm_suballoc.h kernel-doc
>>    drm/i915: fix i915_gsc_proxy_mei_interface.h kernel-doc
>>    drm/i915/hdcp: fix i915_hdcp_interface.h kernel-doc warnings
>>    drm/i915/pxp: fix i915_pxp_tee_interface.h kernel-doc warnings
>>    drm/ttm: fix ttm_bo.h kernel-doc warnings
>>    drm/ttm: make ttm_caching.h self-contained
>>    drm/ttm: fix ttm_execbuf_util.h kernel-doc warnings
>>    drm/ttm: fix ttm_kmap_iter.h kernel-doc warnings
>>    drm: ensure drm headers are self-contained and pass kernel-doc
>>
>>   Kbuild                                     |  1 +
>>   drivers/gpu/drm/Kconfig                    | 11 +++++++++++
>>   drivers/gpu/drm/Makefile                   | 18 ++++++++++++++++++
>>   drivers/gpu/drm/drm_crtc_internal.h        |  1 +
>>   drivers/gpu/drm/drm_internal.h             |  5 +++++
>>   include/Kbuild                             |  1 +
>>   include/drm/Makefile                       | 18 ++++++++++++++++++
>>   include/drm/amd_asic_type.h                |  3 +++
>>   include/drm/bridge/samsung-dsim.h          |  4 +++-
>>   include/drm/display/drm_dp_mst_helper.h    |  1 -
>>   include/drm/drm_debugfs_crc.h              |  8 +++++++-
>>   include/drm/drm_encoder_slave.h            |  3 +++
>>   include/drm/drm_format_helper.h            |  1 +
>>   include/drm/drm_gem_vram_helper.h          |  1 -
>>   include/drm/drm_kunit_helpers.h            |  2 +-
>>   include/drm/drm_lease.h                    |  2 ++
>>   include/drm/drm_of.h                       |  1 +
>>   include/drm/drm_suballoc.h                 |  2 +-
>>   include/drm/i2c/ch7006.h                   |  1 +
>>   include/drm/i2c/sil164.h                   |  1 +
>>   include/drm/i915_gsc_proxy_mei_interface.h |  4 ++--
>>   include/drm/i915_hdcp_interface.h          | 18 +++++++++++++-----
>>   include/drm/i915_pxp_tee_interface.h       | 19 ++++++++++++-------
>>   include/drm/ttm/ttm_bo.h                   | 18 ++++++++++++------
>>   include/drm/ttm/ttm_caching.h              |  2 ++
>>   include/drm/ttm/ttm_execbuf_util.h         |  7 +++----
>>   include/drm/ttm/ttm_kmap_iter.h            |  4 ++--
>>   27 files changed, 125 insertions(+), 32 deletions(-)
>>   create mode 100644 include/Kbuild
>>   create mode 100644 include/drm/Makefile
>>

-- 
Jani Nikula, Intel
