Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6754E9E196E
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2024 11:36:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A1D510E9D7;
	Tue,  3 Dec 2024 10:36:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MVHC2Pwi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA9A110E313;
 Tue,  3 Dec 2024 10:36:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733222181; x=1764758181;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=d0T59woWY78O4dek2DvUEcGZWmbW+rRBhoJSd1I4Li4=;
 b=MVHC2PwihYsiAOMCwVn/AEELEOzcPFS4iMRFU5DGyRyjrVPo1Fl18/1a
 eXKwxGwdW2KI0L2/TJ9uVG3i7pVd66yFp96dp0PEUmZ1cVZoS+h686Xjn
 I/hLi9mwzm9hZlEQ3V0ULk8mXFmlBZSStcwwRQFCVJRDcRrg19obY3AJO
 z82AVaNOo8DgDkuQ/nq3bdAlng5rUuPoXQpgOdJICleFg5TAz41WFZ58u
 PhaSfqMWYHmi/lNxwz2nb7m+3wsPosYZyykTu9tjOnzUgWCTxbPcANs1b
 R33RU6ZhiZXNdPF7JXs4GSqVtDLq4x5I9QSZiHao4joMULJj51VgE7jU3 A==;
X-CSE-ConnectionGUID: B3wyqoNiSWuvCxFvcHcRYQ==
X-CSE-MsgGUID: pRJoLiRATJeCMe11x3r5BQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11274"; a="44456556"
X-IronPort-AV: E=Sophos;i="6.12,204,1728975600"; d="scan'208";a="44456556"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2024 02:36:21 -0800
X-CSE-ConnectionGUID: O8TGm+eUSi2X4eZdXcr4Og==
X-CSE-MsgGUID: +d/zy/r5TN2RNWBMmUmA/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,204,1728975600"; d="scan'208";a="93727742"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.135])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2024 02:36:18 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/display: remove unused for_each_crtc()
In-Reply-To: <173314475855.2905.12006003723478227624@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241202125437.1154945-1-jani.nikula@intel.com>
 <173314475855.2905.12006003723478227624@intel.com>
Date: Tue, 03 Dec 2024 12:36:15 +0200
Message-ID: <875xo15a00.fsf@intel.com>
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

On Mon, 02 Dec 2024, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Quoting Jani Nikula (2024-12-02 09:54:37-03:00)
>>This is essentially a duplicate of drm_for_each_crtc() anyway. Remove.
>
> And it looks like commit 08dfd243abac ("drm/i915: Clean up
> intel_fbdev_init_bios() a bit") was the one that made it unused.
>
>>
>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

Thanks for the review, pushed to din.

BR,
Jani.

>
>>---
>> drivers/gpu/drm/i915/display/intel_display.h | 3 ---
>> 1 file changed, 3 deletions(-)
>>
>>diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
>>index caef04f655c5..49a246feb1ae 100644
>>--- a/drivers/gpu/drm/i915/display/intel_display.h
>>+++ b/drivers/gpu/drm/i915/display/intel_display.h
>>@@ -238,9 +238,6 @@ enum phy_fia {
>>         for ((__phy) = PHY_A; (__phy) < I915_MAX_PHYS; (__phy)++)        \
>>                 for_each_if((__phys_mask) & BIT(__phy))
>> 
>>-#define for_each_crtc(dev, crtc) \
>>-        list_for_each_entry(crtc, &(dev)->mode_config.crtc_list, head)
>>-
>> #define for_each_intel_plane(dev, intel_plane) \
>>         list_for_each_entry(intel_plane,                        \
>>                             &(dev)->mode_config.plane_list,        \
>>-- 
>>2.39.5
>>

-- 
Jani Nikula, Intel
