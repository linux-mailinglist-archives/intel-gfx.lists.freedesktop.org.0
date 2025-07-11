Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32B40B01F79
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Jul 2025 16:50:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3E5A10EA62;
	Fri, 11 Jul 2025 14:49:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jZEUlBGW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 130F510E2C1;
 Fri, 11 Jul 2025 14:49:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752245395; x=1783781395;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=379ni3na9sqaS5ntwQHTeHR1dMZ4hSE6OVE7y+A3kQI=;
 b=jZEUlBGWOGMTh8tlJZmylu4cBlklDGEWa/kZyZ57mtAc/bYV29zwKQCB
 DTNXGsJ7W4JZdZr+AorSBvyf3XzcO86RIkDkkAVbmcBGZTRF7E2gop1bU
 E67xAaXSRUVTH/t/7S7rBEE1jEVQGidDSZUbPZctOCiOYe3QPFUYff9FT
 fFtMsY2Ii0Ia9y+0oojSi0sC6LSpJrKPKR5MXn4m+8BjJEe+4j25/6UXe
 LdJZAqKCxjhE/PmX1XloNhFleAWSE0MiCeoF2IYw5jezrIJQzbeAhCT6u
 28gWnwLvD+KcB6+n1uE6ShDJ/u76xmbnlD5J76eKMb8Yro4EQT3O7Nlc4 Q==;
X-CSE-ConnectionGUID: xB/M3ABNRUa0vKO+ZR8bjA==
X-CSE-MsgGUID: LbG0bGYhQduT8RsSTO/kVQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11491"; a="65245611"
X-IronPort-AV: E=Sophos;i="6.16,303,1744095600"; d="scan'208";a="65245611"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2025 07:49:55 -0700
X-CSE-ConnectionGUID: DTMFFw7TRQmBmKiOI4TMHw==
X-CSE-MsgGUID: 5AWRC6ChTu+4SjkDnIXXAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,303,1744095600"; d="scan'208";a="162069387"
Received: from johunt-mobl9.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.78])
 by orviesa005.jf.intel.com with SMTP; 11 Jul 2025 07:49:52 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 11 Jul 2025 17:49:50 +0300
Date: Fri, 11 Jul 2025 17:49:50 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com
Subject: Re: [PATCH 0/1] Revert patch to reject HBR3 for all eDP panels
Message-ID: <aHEkjiw-7hMTnMKO@intel.com>
References: <20250710052041.1238567-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250710052041.1238567-1-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
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

On Thu, Jul 10, 2025 at 10:50:39AM +0530, Ankit Nautiyal wrote:
> Revert the existing patch that rejects HBR3 for all eDP panels that
> do not support TPS4. With the patch reverted, the gitlab issue#5969 [1]
> will get opened again. Add a quirk to limit the rate to HBR2 for the
> device mentioned in [1] and close the issue.
> 
> This series is a continuation from [2], and [3].

Series is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> 
> [1] https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5969
> [2] https://lore.kernel.org/all/1cd154a09823abf6d34221ae9e02f9cd342cc3a3@intel.com/
> [3] https://lore.kernel.org/all/87y0uzh5tz.fsf@intel.com/
> 
> Rev2:
> Instead of revert and add quirk, add a single patch that fixes the
> commit. (Jani).
> 
> Rev3:
> Instead of refining, just revert the patch for now and add quirk for the
> ICL machine as a separate patch. (Ville)
> 
> Rev4:
> Address review comments from Ville.
> 
> Ankit Nautiyal (2):
>   Revert "drm/i915/dp: Reject HBR3 when sink doesn't support TPS4"
>   drm/i915/dp: Add device specific quirk to limit eDP rate to HBR2
> 
>  drivers/gpu/drm/i915/display/intel_dp.c     | 30 ++++++++-------------
>  drivers/gpu/drm/i915/display/intel_quirks.c |  9 +++++++
>  drivers/gpu/drm/i915/display/intel_quirks.h |  1 +
>  3 files changed, 21 insertions(+), 19 deletions(-)
> 
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
