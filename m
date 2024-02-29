Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BDED86CC74
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Feb 2024 16:10:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B6DA10E1BB;
	Thu, 29 Feb 2024 15:10:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jL6Kd9lD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B03E810E1BB
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Feb 2024 15:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709219454; x=1740755454;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=dSu0kVWbF45RuHj3X86QXSA4sCpvllMYFffZ3IdzvuI=;
 b=jL6Kd9lDANUY20UAVm/3v/BhloxPYfh5AEO6xBR5FZ1c1ELIzfE0PMrF
 Klw04f2RLuZWGsrqT608ueogFjmM2j/pKsgCZ25Zdi2hmIe00V1lYNUtO
 sSkcHx8+ZChRNzoRMDaqa2B2nM/Pq+0GbJjA3qiB/KeUq4kguCR5Ehixp
 MS28k58cFBhITPZHPoSCsoV1FLbMBb8JzZGX+/4Coth+xynAgRgqYAHdN
 4mt3TVHzJpnWwCy3BB3I6MOtK9iJ8iKUrmLIiOEwa6P/kxilFK+x09Au/
 fQUfjvjFgGkSzJugEXqstFEa4ddqSV19faUIWB4OjJnauswL+BNIHmYIu Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10999"; a="14846342"
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; d="scan'208";a="14846342"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Feb 2024 07:10:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; 
   d="scan'208";a="8278609"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Feb 2024 07:10:51 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Subject: Re: [PATCH v3 0/6] VBT read cleanup
In-Reply-To: <20240228213235.2495611-1-radhakrishna.sripada@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240228213235.2495611-1-radhakrishna.sripada@intel.com>
Date: Thu, 29 Feb 2024 17:10:48 +0200
Message-ID: <87wmqn71c7.fsf@intel.com>
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

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
> 1. https://patchwork.freedesktop.org/series/128341/
> 2. https://patchwork.freedesktop.org/series/128683/
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
