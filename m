Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D8C1829A78
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jan 2024 13:34:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D511510E5D3;
	Wed, 10 Jan 2024 12:33:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AE8E10E5D3
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jan 2024 12:33:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704890038; x=1736426038;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=78RHwnC5LUuAPbk6xwJlOqdUAf8PEn2nLmY641isOjg=;
 b=MYWa+519q6QO7ESxTzWjimcnvqYHBflDQL+e8geGdDnLNPXgDGkzDnSR
 hRkgbwNHnOdhuWn9TK/4IIm1vmBiOFhqdboL7KkThXEvjTmbwGD6tADuE
 6bc+ym/C7YJqcsVVQ8T4H+ADII1puDoErZ4WWsh+fBMrXZ67+TUqbBgb8
 l/zPB6KYv5kpe5+xQR3Xl/pTxCZy4AAfjipVKhLa3xP8MJWOIpxtV+imx
 Zfyqdw8hdOz6Ya8Ftq9r51hjuACxPa1eYV/ssAas5EAioiI+7V9X+JBZK
 /crk8IA/n71u7ZF+2emPzngtLtFPF6MqIk0w/0gTSH0ak/hMzEI+ZZmZi w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10948"; a="5252378"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; 
   d="scan'208";a="5252378"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 04:33:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10948"; a="925626574"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="925626574"
Received: from fpallare-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.36.240])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 04:33:56 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [RFC 00/15] VBT read Cleanup
In-Reply-To: <20240108230517.1497504-1-radhakrishna.sripada@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240108230517.1497504-1-radhakrishna.sripada@intel.com>
Date: Wed, 10 Jan 2024 14:33:53 +0200
Message-ID: <87wmshv03y.fsf@intel.com>
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

On Mon, 08 Jan 2024, Radhakrishna Sripada <radhakrishna.sripada@intel.com> wrote:
> This series does the VBT read cleanup. The series introduces new
> intel_vbt structure to cache and collate vbt related info. Vbt
> read from different sources viz. firmware/opregion/spi/oprom
> needs to be cached for debug purposes and handled accordingly
> during cleanup.

Mixed feelings. I think the goal is good, not convinced by the
implementation.

First, i915->display.vbt.data.foo is just too much depth. It was
borderline too much before, but now it definitely is.

Second, whichever place allocates some stuff should also be responsible
for freeing it. I don't like the idea that you have different places
allocating and then you have a combined cleanup to take care of the
alternatives.

Possibly the first thing to do would be to put intel_bios_init() in
charge of picking the VBT. Stop looking at opregion directly in
intel_bios.c, and instead abstract that away. Also move firmware EDID
loading there. Move debugfs there. Etc.

The opregion code could still figure out what its idea of VBT is, but
intel_bios_init() would the place to ask opregion code about it only if
needed.


BR,
Jani.





>
> Radhakrishna Sripada (15):
>   drm/i915: Extract display->vbt_data to a new vbt structure
>   drm/i915: Move vbt fields from opregion to its own structure
>   drm/i915: Cache opregion asls pointer
>   drm/i915: Extract opregion vbt capture to its own function
>   drm/i915: Init vbt fields when read from oprom/spi
>   drm/i915: Classify vbt type based on its residence
>   drm/i915: Collate vbt cleanup for different types
>   drm/i915: Make intel_bios_init operate on intel_vbt
>   drm/i915: Move vbt load from opregion to bios init
>   drm/i915: Move vbt firmware load into intel_bios_init
>   drm/i915: Make oprom_get_vbt operate on intel_vbt
>   drm/i915: Make spi_oprom_get_vbt operate on intel_vbt
>   drm/i915: Make intel_load_vbt_firmware operate on intel_vbt
>   drm/i915: Kill reduntant vbt_firmware from intel_vbt
>   drm/i915: Use vbt type to determine its validity
>
>  drivers/gpu/drm/i915/display/intel_bios.c     | 348 +++++++++++-------
>  drivers/gpu/drm/i915/display/intel_crt.c      |   2 +-
>  drivers/gpu/drm/i915/display/intel_display.c  |  10 +-
>  .../gpu/drm/i915/display/intel_display_core.h |  16 +-
>  .../drm/i915/display/intel_display_debugfs.c  |   6 +-
>  drivers/gpu/drm/i915/display/intel_dp.c       |   2 +-
>  drivers/gpu/drm/i915/display/intel_dpll.c     |  16 +-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  19 +-
>  drivers/gpu/drm/i915/display/intel_dsi.c      |   2 +-
>  drivers/gpu/drm/i915/display/intel_lvds.c     |   4 +-
>  drivers/gpu/drm/i915/display/intel_opregion.c | 165 ++++-----
>  drivers/gpu/drm/i915/display/intel_opregion.h |  13 +-
>  drivers/gpu/drm/i915/display/intel_panel.c    |   2 +-
>  .../gpu/drm/i915/display/intel_pch_refclk.c   |   2 +-
>  drivers/gpu/drm/i915/display/intel_sdvo.c     |  18 +-
>  drivers/gpu/drm/i915/intel_clock_gating.c     |   2 +-
>  16 files changed, 348 insertions(+), 279 deletions(-)

-- 
Jani Nikula, Intel
