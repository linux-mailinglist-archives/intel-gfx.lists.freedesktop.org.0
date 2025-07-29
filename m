Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 041FAB14DEA
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Jul 2025 14:52:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96B5810E622;
	Tue, 29 Jul 2025 12:52:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Axl7qFt/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 447D910E622
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Jul 2025 12:52:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753793537; x=1785329537;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Wbt0uk6vPziSZ9xa1gzZG0BEUi34YSZxmehPIklgIIk=;
 b=Axl7qFt/+3H++TC4SeIuRnG+le+tJswGAJyd5cSOcbiL1hH4Bjhp7ZAq
 otpaFnB9u3IljlFLNkl316dSBej0CNoXlPExLX2xUh2UIjjPSfLrfQopk
 gXROVmuZIH574eGaf6kO9D0LSzQPGK/G+kr6FqbpVcIMfHVXOAibtA9Ta
 YDt3HuVgLQeAfD42C2HtEsouLNGTP+21NfJWO3SHAKOvxlHvPru5SxNqw
 zJxi/peXawSeeeJnweyT9/YSj5ogq/pkouldiOvDnTERohxnRU8U3/vvS
 5OFMPVWOBzNBhKWXllnAreF61VF4jmkENCQ7kITgIom9Bo1ZvCa9x20ay A==;
X-CSE-ConnectionGUID: LdCxKttfS/uCeZi74UlSrQ==
X-CSE-MsgGUID: P50jM0DmRrGOg5CiH5ZiXg==
X-IronPort-AV: E=McAfee;i="6800,10657,11506"; a="55944331"
X-IronPort-AV: E=Sophos;i="6.16,349,1744095600"; d="scan'208";a="55944331"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 05:52:17 -0700
X-CSE-ConnectionGUID: rWAEJaAiTYyuYctIgtRVBQ==
X-CSE-MsgGUID: sCnbZBe0R26jJaYi32LlRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,349,1744095600"; d="scan'208";a="166867760"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.22])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 05:52:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Cc: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH] drm/i915/display: remove superfluous <linux/types.h>
 includes
In-Reply-To: <DM3PPF208195D8D10D063A05DCBC820088BE325A@DM3PPF208195D8D.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250728102113.238730-1-jani.nikula@intel.com>
 <DM3PPF208195D8D10D063A05DCBC820088BE325A@DM3PPF208195D8D.namprd11.prod.outlook.com>
Date: Tue, 29 Jul 2025 15:52:11 +0300
Message-ID: <15a0285905635cc7e6c55a1cec0e75a703db4da9@intel.com>
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

On Tue, 29 Jul 2025, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
>> Subject: [PATCH] drm/i915/display: remove superfluous <linux/types.h>
>> includes
>> 
>> Commit f7a9dc796567 ("drm/i915/scaler: Use intel_display as argument to
>> skl_scaler_max_src_size") added superfluous includes. Remove them.
>
> I think the commit message quoted here is wrong the correct one would be
> Fixes: 3347b55f2c6c ("drm/i915/xe3lpd: Prune modes for YUV420")

Oops, my bad, sorry. Unfortunately it's already merged, making my
mistake permanent. :/

> Also Fixes tag.

I don't usually bother with Fixes: when there's no need to backport or
anything.

BR,
Jani.

>
> Regards,
> Suraj Kandpal
>
>> 
>> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
>> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_pfit.h | 2 --
>> drivers/gpu/drm/i915/display/skl_scaler.h | 2 --
>>  2 files changed, 4 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_pfit.h
>> b/drivers/gpu/drm/i915/display/intel_pfit.h
>> index 2f075748a34e..c1bb0d1f344e 100644
>> --- a/drivers/gpu/drm/i915/display/intel_pfit.h
>> +++ b/drivers/gpu/drm/i915/display/intel_pfit.h
>> @@ -6,8 +6,6 @@
>>  #ifndef __INTEL_PFIT_H__
>>  #define __INTEL_PFIT_H__
>> 
>> -#include <linux/types.h>
>> -
>>  enum drm_mode_status;
>>  struct drm_display_mode;
>>  struct drm_connector_state;
>> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.h
>> b/drivers/gpu/drm/i915/display/skl_scaler.h
>> index 692716dd7616..e3b35d2c13be 100644
>> --- a/drivers/gpu/drm/i915/display/skl_scaler.h
>> +++ b/drivers/gpu/drm/i915/display/skl_scaler.h
>> @@ -5,8 +5,6 @@
>>  #ifndef INTEL_SCALER_H
>>  #define INTEL_SCALER_H
>> 
>> -#include <linux/types.h>
>> -
>>  enum drm_mode_status;
>>  struct drm_display_mode;
>>  struct intel_atomic_state;
>> --
>> 2.39.5
>

-- 
Jani Nikula, Intel
