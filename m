Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B66481B31E
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Dec 2023 11:04:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDFE110E67F;
	Thu, 21 Dec 2023 10:04:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0758010E687
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Dec 2023 10:04:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703153068; x=1734689068;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=W+l5FTnUtEGiPyBo3yptqC2zg3SQP+bnNfbbZqFIx5A=;
 b=jyhAxXAjOtoK+jOjj1Q69+jv3NfLf458Hn7HuXAxFjgK4pxbAstCZHy4
 po5wLPob7rByGKnESzO/Xhbmcn91FhaFTYvn+7w9cYqUg9Xkp+tLCriBc
 b3qjZgRIlvC7IITlceNrNRlMcsxvrMvbkaovfhmR58rKomWvyz2sJFacn
 cdK0pfDzWvjA6pYWFLzWjOpkMD5Mw+AKwpMHDgBATQS5LSIui0HfyxDuI
 S2VOHvye4hKWCbYOFZ0uliU8HYAUyE7TnaDf9e4KAH9sf12hoOLumDqLn
 aImcCcGdTqVnY+8ok22DNdXpd1ZBZ2tGbnX7ZUUU0ShwkVGa1ltzLBhJT g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10930"; a="14637237"
X-IronPort-AV: E=Sophos;i="6.04,293,1695711600"; d="scan'208";a="14637237"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2023 02:04:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10930"; a="1108049399"
X-IronPort-AV: E=Sophos;i="6.04,293,1695711600"; d="scan'208";a="1108049399"
Received: from sshurhav-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.34.227])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2023 02:04:25 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v2 0/4] TC phy check cleanup
In-Reply-To: <20231220221341.3248508-1-radhakrishna.sripada@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231220221341.3248508-1-radhakrishna.sripada@intel.com>
Date: Thu, 21 Dec 2023 12:04:23 +0200
Message-ID: <87y1dnswgo.fsf@intel.com>
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

On Wed, 20 Dec 2023, Radhakrishna Sripada <radhakrishna.sripada@intel.com> wrote:
> We are relying on end-less if-else ladders for a type-c phy
> capabilities check. Though it made sense when platforms supported
> legacy type-c support, modern platforms rely on the information
> passed by vbt. This cleanup restricts the if-else ladder to the
> platforms supporting legacy type-c phys and relies on vbt info
> for modern client and discrete platforms.

This series is moving the vbt handling in the wrong direction.

We want to *avoid* new lookups. The idea is that you do the lookup
*once* when initializing the encoder, and after that you use
encoder->devdata.

If you look at the intel_phy_is_tc() call sites, you'll observe that
almost all of the places have the encoder (or devdata) already
available. They get the port from encoder->port, and the phy from
intel_port_to_phy().

So this throws away the information that's already available, and then
goes to look it up again in the worst possible way.

You should convert intel_phy_is_tc() to something like
intel_encoder_is_tc(), and pass encoder to it instead of phy. Similarly,
intel_port_to_tc() should be converted to intel_encoder_to_tc().

There are a couple of special cases that only have devdata or phy. But
we can handle the special cases after making the common case
straightforward.


BR,
Jani.


>
> v2: Move cleanup vbt later to handle safe encoder removal
>
> Radhakrishna Sripada (4):
>   drm/i915: Move intel_bios_driver_remove later
>   drm/i915: Rename intel_bios_encoder_data_lookup as a port variant
>   drm/i915: Introduce intel_encoder_phy_data_lookup
>   drm/i915: Separate tc check for legacy and non legacy tc phys
>
>  drivers/gpu/drm/i915/display/g4x_dp.c         |  2 +-
>  drivers/gpu/drm/i915/display/g4x_hdmi.c       |  2 +-
>  drivers/gpu/drm/i915/display/intel_bios.c     | 15 +++++++++-
>  drivers/gpu/drm/i915/display/intel_bios.h     |  5 +++-
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  2 +-
>  drivers/gpu/drm/i915/display/intel_display.c  | 29 ++++++++++++-------
>  .../drm/i915/display/intel_display_device.h   |  1 +
>  .../drm/i915/display/intel_display_driver.c   |  4 +--
>  drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
>  9 files changed, 44 insertions(+), 18 deletions(-)

-- 
Jani Nikula, Intel
