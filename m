Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9156877E4D
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Mar 2024 11:45:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 353C510FA31;
	Mon, 11 Mar 2024 10:45:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XwtFzzyM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B0A410FF2B
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Mar 2024 10:45:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710153904; x=1741689904;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=OJ7xETtCdiqhJ/osjeRLKRZjX+RFtfT3iXqjTPOJNc4=;
 b=XwtFzzyMZhd0whJXu1GiT2ZZsKacnWCnp9w76795mJJT7NhZgdd0Bvmc
 EiAauaKg5HiuLboa4P17WVeNdBDmiHfZ1PdENcmNx1ujQxZxIb1dfp8kj
 doUVXRlYozLpfsKgm4iB3DdLIjPBCM7BFIWTKwS8Vy828G8uxgN4B94L6
 7LmPu9GpPfwVZbda/NfogiPEB9XKoH7/pRAiEeaazYbrTespKHpz4iCjZ
 rz7s7Pdn0UtkWpo1AxCeXrgOMefkFpXqnB3Zo5nFddqMhNOwEXqoxODFk
 woFCD5a9TkIadprC/GtKovrEr3xunL5mqM3aJYiOst7Bs5pJZkhUdIR8E A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11009"; a="30247443"
X-IronPort-AV: E=Sophos;i="6.07,116,1708416000"; d="scan'208";a="30247443"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2024 03:45:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,116,1708416000"; d="scan'208";a="11010599"
Received: from tbeaumon-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.34.24])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2024 03:45:02 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Subject: Re: [PATCH v3 0/6] VBT read cleanup
In-Reply-To: <20240228213235.2495611-1-radhakrishna.sripada@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240228213235.2495611-1-radhakrishna.sripada@intel.com>
Date: Mon, 11 Mar 2024 12:44:59 +0200
Message-ID: <87le6pt5ck.fsf@intel.com>
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

On Wed, 28 Feb 2024, Radhakrishna Sripada <radhakrishna.sripada@intel.com> wrote:
> This series is originally based out of [1], and built on top of [2].
>
> The primary departure from [1] was that vbt is no longer cached. During vbt
> show, based on the source of vbt, it would simply be re-read reducing the
> read/cleanup complexity. With this series debugfs dump of vbt should work on
> all the platforms that support display.
>
> v3 of the series extracts opregion firmware check and harmonizes the memory
> handling of different variants viz. opregion/oprom/spi/fimrware
>
> 1. https://patchwork.freedesktop.org/series/128341/
> 2. https://patchwork.freedesktop.org/series/128683/

Thanks for the patches, pushed to din.

BR,
Jani.

>
>
> Radhakrishna Sripada (6):
>   drm/i915: Pass size to oprom_get_vbt
>   drm/i915: Pass size to spi_oprom_get_vbt
>   drm/i915: Move vbt read from firmware to intel_bios.c
>   drm/i915: Extract opregion vbt presence check
>   drm/i915: Duplicate opregion vbt memory
>   drm/i915: Show bios vbt when read from firmware/spi/oprom
>
>  drivers/gpu/drm/i915/display/intel_bios.c     | 108 +++++++++++++-----
>  drivers/gpu/drm/i915/display/intel_opregion.c |  58 ++--------
>  drivers/gpu/drm/i915/display/intel_opregion.h |   1 +
>  3 files changed, 92 insertions(+), 75 deletions(-)

-- 
Jani Nikula, Intel
