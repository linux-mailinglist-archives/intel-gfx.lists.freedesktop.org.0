Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B4B69C5C1F
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2024 16:41:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6D7910E608;
	Tue, 12 Nov 2024 15:41:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y1pqQynp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E809F10E607;
 Tue, 12 Nov 2024 15:41:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731426083; x=1762962083;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=2f9028ggl9Vz8ykYix4hy8ZAcWlH6m4DmPc/I82Ppfg=;
 b=Y1pqQynpxdYIFTJVxZzcVKrFPaQwvjkYDLk52kOSkKZIwS6j56h4EZGw
 jmQ31/RVAYCgGrcQkZKmk0FL3LfgY6vJGWyHYAfJWEGKZI5pqZNRMU08r
 y5zDjBBIH05pV9EIyt4e98AQn/wxBYfdut9FHPaAtGtEmbSzoiFmMZm8t
 F5uCa5bSDalWH1ZXDQ9I0nC65pS3Os8EUJBoqYel8VGZe4B+no3m9oQIY
 2j5FFFrMrBB0Y+03jAPzLXcijQi0kG3/eYxoENMBufwQ9QQ4PK2SKmy9H
 co6qSjJyfK2j2Ca9+EVCXNfwxRc3m2UWU6G4s+8SpRkRGw6GcGrn3tPFE w==;
X-CSE-ConnectionGUID: 7VtF8OvCQPKHfeU/q0AFaA==
X-CSE-MsgGUID: tV2Mk4rRQT+bGlXBRnTzZA==
X-IronPort-AV: E=McAfee;i="6700,10204,11254"; a="30670158"
X-IronPort-AV: E=Sophos;i="6.12,148,1728975600"; d="scan'208";a="30670158"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2024 07:41:21 -0800
X-CSE-ConnectionGUID: dgw4FMlcTQytbWAyIC+7WA==
X-CSE-MsgGUID: 3IP7M4wLT+ujyr75QWNSYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,148,1728975600"; d="scan'208";a="87411934"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.121])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2024 07:41:21 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [CI v2 0/8] drm/i915/mst: cleanups, renames, clarifications
In-Reply-To: <cover.1731409802.git.jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1731409802.git.jani.nikula@intel.com>
Date: Tue, 12 Nov 2024 17:41:18 +0200
Message-ID: <87v7wsbgtd.fsf@intel.com>
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

On Tue, 12 Nov 2024, Jani Nikula <jani.nikula@intel.com> wrote:
> Rebase of [1].
>
> [1] https://lore.kernel.org/r/cover.1731011435.git.jani.nikula@intel.com

And pushed to drm-intel-next.

BR,
Jani.


>
> Jani Nikula (8):
>   drm/i915/mst: pass primary encoder to primary encoder hooks
>   drm/i915/mst: rename intel_encoder to encoder
>   drm/i915/mst: introduce to_primary_encoder() and to_primary_dp()
>   drm/i915/mst: use primary_encoder in fake mst encoder creation
>   drm/i915/display: make CHICKEN_TRANS() display version aware
>   drm/i915/mst: convert to struct intel_display
>   drm/i915/mst: change naming from fake encoders to MST stream encoders
>   drm/i915/dp: add comments about hooks called from MST stream encoders
>
>  drivers/gpu/drm/i915/display/intel_ddi.c     |  72 +--
>  drivers/gpu/drm/i915/display/intel_ddi.h     |   2 -
>  drivers/gpu/drm/i915/display/intel_display.c |  15 +-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c  | 493 ++++++++++---------
>  drivers/gpu/drm/i915/display/intel_hdcp.c    |   2 +-
>  drivers/gpu/drm/i915/display/intel_psr.c     |   4 +-
>  drivers/gpu/drm/i915/display/intel_vrr.c     |   2 +-
>  drivers/gpu/drm/i915/i915_reg.h              |   5 +-
>  8 files changed, 307 insertions(+), 288 deletions(-)

-- 
Jani Nikula, Intel
