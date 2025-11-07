Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A8D2C41519
	for <lists+intel-gfx@lfdr.de>; Fri, 07 Nov 2025 19:44:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C1A410E1D6;
	Fri,  7 Nov 2025 18:44:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eC0hbbYo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F16610E085;
 Fri,  7 Nov 2025 18:44:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762541059; x=1794077059;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=j+4UmCg9tEE/dJ2kkSTHQ9nur0ej9WUZv1InyWAGwtE=;
 b=eC0hbbYo86YzqxXJuJR7EhQchvQj7b9FdTZfpl+vmKCrLGU/BbrzQTrU
 97wJ57Sbg/LWf0/OpJ1Da4hJ7b8qHK/kTrEySUXBbeiNMccc9z/SyZoB2
 hNJfPHh5gkuqPRiBeJ4+kjOhaEI4fJruNrVYvgD/g9M95H4kBhCwVs23a
 8vIWejy750LQQKJv+gnpE0nbnHHqi7o2+hh3nqAjTP+olgyryRUptL2vE
 51E1gecGoi3FJVaNXA72/zFexF+xQMIXk1xhtnP29bkgIVYiUaJmJnCyJ
 JhgyROulrrjb/oEumLZxlSmBPoQQ2fjaACxLVGiCUg532lLKEducXZhSz g==;
X-CSE-ConnectionGUID: wTEybpyHQLawPPkR/7B9dw==
X-CSE-MsgGUID: fFiLT29ISZSz4XqmHUOwDA==
X-IronPort-AV: E=McAfee;i="6800,10657,11606"; a="52259895"
X-IronPort-AV: E=Sophos;i="6.19,287,1754982000"; d="scan'208";a="52259895"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 10:44:19 -0800
X-CSE-ConnectionGUID: JqzcGBtWSY29LGzBSMHZfg==
X-CSE-MsgGUID: 7nKAwDxnQn+xvXQSunzFcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,287,1754982000"; d="scan'208";a="188268671"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.106])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 10:44:17 -0800
Date: Fri, 7 Nov 2025 20:44:15 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 00/10] drm/i915: Stop the intel_de_wait_custom() abuse
Message-ID: <aQ49_-UIk9rZoqMH@intel.com>
References: <20251106152049.21115-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251106152049.21115-1-ville.syrjala@linux.intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Thu, Nov 06, 2025 at 05:20:39PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Get rid of all the custom fast vs. slow intel_de_wait_custom()
> timeouts that have started to spread like a cancer recently.
> 
> The eventual aim is to get rid of the fast vs. slow timeout
> stuff entirely and switch over to poll_timeout_us()...
> 
> v2: Drop the extraneous timeout debugs to make it simpler to change them
>     Use the slow timeout in all cases where we have both slow and fast
> 
> Ville Syrjälä (10):
>   drm/i915/cx0: Print the correct timeout
>   drm/i915/cx0: Nuke extraneous timeout debugs
>   drm/i915/ltphy: Nuke extraneous timeout debugs
>   drm/i915/cx0: Replace XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_US with
>     XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_MS
>   drm/i915/cx0: Get rid of XELPDP_MSGBUS_TIMEOUT_FAST_US
>   drm/i915/cx0: s/XELPDP_MSGBUS_TIMEOUT_SLOW/XELPDP_MSGBUS_TIMEOUT_MS/
>   drm/i915/cx0:
>     s/XELPDP_PORT_RESET_END_TIMEOUT/XELPDP_PORT_RESET_END_TIMEOUT_US/
>   drm/i915/ltphy: Nuke bogus weird timeouts
>   drm/i915/hdcp: Use the default 2 usec fast polling timeout
>   drm/i915/pmdemand: Use the default 2 usec fast polling timeout

This is now in. Thanks for the review.

I'll follow up next week with the full intel_de_wait_custom() nukage
and other related refactoring. I want to re-run all the cocci scripts
to make sure there are no rebase fumbles left after these changes...

> 
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 52 +++++++++----------
>  .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  7 ++-
>  drivers/gpu/drm/i915/display/intel_hdcp.c     |  2 +-
>  drivers/gpu/drm/i915/display/intel_lt_phy.c   | 47 ++++++++---------
>  .../gpu/drm/i915/display/intel_lt_phy_regs.h  |  7 ++-
>  drivers/gpu/drm/i915/display/intel_pmdemand.c |  2 +-
>  6 files changed, 54 insertions(+), 63 deletions(-)
> 
> -- 
> 2.49.1

-- 
Ville Syrjälä
Intel
