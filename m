Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ED89AAD91D
	for <lists+intel-gfx@lfdr.de>; Wed,  7 May 2025 09:55:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8A8C10E15F;
	Wed,  7 May 2025 07:55:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GliKvwWb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B86AA10E15F;
 Wed,  7 May 2025 07:55:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746604518; x=1778140518;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=JjPfNqAIdLYY3YXwF/hzRZ9qaSc6W0Oqhms//Ky62tc=;
 b=GliKvwWbuJubMSfCNUNEUoIWTm4UNh2/AGduIow0kFb+4+pr6WPC2SO0
 kj8gzQXpzVoSiTvvNDF8Q5Yuo8kceWnqxz4n1BlMnQldlTn1eTHDnFjqp
 +uQTEr/8sm5EBmpxrAu7eVhjZQDPTMX9g5Gls7CdFN1wZCjaSf+qUsHz7
 ng3SN31F3Ir3tSePyW5xl236Y3r/dS2/p7VF0EqU8WtziE7mVioh9ZlEP
 ZQbL3An+N0Me9sl6TC6Ihob5mhQW7fO1YXy5uJUpsEvhZer0geDmHxi9B
 Hh2QFgF8Ju2+pd/YY7wbuZyAK2r36fTFFLOp9UXCT321C27jLjsvaB5/b Q==;
X-CSE-ConnectionGUID: ZRWGQFOLTYy5vpnnrwWS2g==
X-CSE-MsgGUID: 1nW+BeFtSsSz4FxA7RSKpA==
X-IronPort-AV: E=McAfee;i="6700,10204,11425"; a="70824908"
X-IronPort-AV: E=Sophos;i="6.15,268,1739865600"; d="scan'208";a="70824908"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 00:55:18 -0700
X-CSE-ConnectionGUID: 3RPrW/vgQ0ijrj5KbnVP0w==
X-CSE-MsgGUID: yJfZkHlaRpq4FZPtexDCyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,268,1739865600"; d="scan'208";a="135879408"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.218])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 00:55:16 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 0/4] drm/i915/display: minor cleanups on
 drm_i915_private use
In-Reply-To: <174656862333.1401.304808228591437936@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1746529001.git.jani.nikula@intel.com>
 <174656862333.1401.304808228591437936@intel.com>
Date: Wed, 07 May 2025 10:55:13 +0300
Message-ID: <87r010vori.fsf@intel.com>
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

On Tue, 06 May 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Quoting Jani Nikula (2025-05-06 07:57:15-03:00)
>>
>>Jani Nikula (4):
>>  drm/i915/dsi: remove dependency on i915_drv.h
>>  drm/i915/display: remove struct drm_i915_private forward declaration
>>  drm/i915/bios: fix a comment referencing struct drm_i915_private
>>  drm/i915/crtc: pass struct intel_display to DISPLAY_VER()
>
> On the series,
>
> Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

Thanks for the review, pushed to din.

BR,
Jani.

>
>>
>> drivers/gpu/drm/i915/display/intel_bios.h         | 2 +-
>> drivers/gpu/drm/i915/display/intel_crtc.c         | 3 +--
>> drivers/gpu/drm/i915/display/intel_display_core.h | 4 +---
>> drivers/gpu/drm/i915/display/intel_dsi.c          | 7 ++++---
>> 4 files changed, 7 insertions(+), 9 deletions(-)
>>
>>-- 
>>2.39.5
>>

-- 
Jani Nikula, Intel
