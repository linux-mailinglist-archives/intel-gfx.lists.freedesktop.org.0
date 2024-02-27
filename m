Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F13ED8690A7
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Feb 2024 13:33:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7C0310E8FC;
	Tue, 27 Feb 2024 12:33:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K7XDSAeG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBED810E8FC
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Feb 2024 12:33:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709037236; x=1740573236;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=CziO2eRAjqoP1jx2hM/vtEiAyECB5kL/cY40Gs9h31o=;
 b=K7XDSAeGPfG4yM/qbDkoeWS9qxxy5UVUkzsOtT7rYgBX+GYg4iZR5fG2
 BOniw+FQDPbLTrkt7F309CHiDO1r+k+9SxzTu/vLaMc2sqJbRt4vqPSaV
 fAwo08p0yaz6mty4sv6xLCHK63xSiEFk8WfUvuaglFovk6b8jIgT82CSS
 9lFD2Xv3/GiLg/iZMzrCewzvFNxDV7cNGwF3gzAoM/vmN7/aCFnGW3DfF
 1Rfs4mvfH8sDx2rMpuQpE3uAABVBK5R3Vuhg7X+n2oOj0dYDxjZPxXiTK
 KLDxN6heQotuyypju5AT8P6Tltrz2UwuDC/9isgvreZHQ7kz5w8331jn1 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="6321983"
X-IronPort-AV: E=Sophos;i="6.06,187,1705392000"; 
   d="scan'208";a="6321983"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2024 04:33:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,187,1705392000"; d="scan'208";a="11700024"
Received: from bdallmer-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.49.187])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2024 04:33:53 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v2 0/4] VBT read cleanup
In-Reply-To: <20240220223129.3822480-1-radhakrishna.sripada@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240220223129.3822480-1-radhakrishna.sripada@intel.com>
Date: Tue, 27 Feb 2024 14:33:49 +0200
Message-ID: <878r36jdci.fsf@intel.com>
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

On Tue, 20 Feb 2024, Radhakrishna Sripada <radhakrishna.sripada@intel.com> wrote:
> This series is originally based out of [1], and built on top of [2].
>
> The primary departure from [1] was that vbt is no longer cached. During vbt
> show, based on the source of vbt, it would simply be re-read reducing the
> read/cleanup complexity. With this series debugfs dump of vbt should work on
> all the platforms that support display.

I think I'd structure this series differently. Please consider something
like this:

1) Add intel_opregion_vbt_present() to check if the VBT is there. Use it
   in intel_bios_is_lvds_present().

2) Always kmemdup and return an allocated buffer from
   intel_opregion_get_vbt(). Always kfree() it. See how that plays with
   the above, and helps clean up the paths and remove the oprom_vbt
   variable in intel_bios_init(). The extra allocation is a bummer, but
   otherwise the cleanup paths will be messy.

3) Add a static function in intel_bios.c to abstract the ways to get the
   VBT. Use it in both intel_bios_init() and intel_bios_vbt_show().

4) Add the size return parameters. This could perhaps be done
   earlier. *shrug*

5) Move firmware VBT to the above function.

BR,
Jani.



>
> 1. https://patchwork.freedesktop.org/series/128341/
> 2. https://patchwork.freedesktop.org/series/128683/
>
> Radhakrishna Sripada (4):
>   drm/i915: Pass size to oprom_get_vbt
>   drm/i915: Pass size to spi_oprom_get_vbt
>   drm/i915: Move vbt read from firmware to intel_bios.c
>   drm/i915: Show bios vbt when read from firmware/spi/oprom
>
>  drivers/gpu/drm/i915/display/intel_bios.c     | 104 +++++++++++++++---
>  drivers/gpu/drm/i915/display/intel_opregion.c |  46 --------
>  2 files changed, 86 insertions(+), 64 deletions(-)

-- 
Jani Nikula, Intel
