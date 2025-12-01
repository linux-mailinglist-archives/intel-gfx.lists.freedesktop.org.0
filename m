Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FB3BC973E0
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Dec 2025 13:25:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAECC10E3C5;
	Mon,  1 Dec 2025 12:25:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SvWLEg39";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D17F610E3B4;
 Mon,  1 Dec 2025 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764591953; x=1796127953;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=5qMl/gWIH4cW23j6HCcluHfCPYMP/d1MPPhyFxOZtr0=;
 b=SvWLEg39u8bT6ZSyMwbtRyoLh8Kry4z8+oOG5oYlAXIDCbOdHc47sTUW
 2p8p883ueW88bLFAeFeecoNZWIVVveo5AIN6akRTzVuz51jwic3FUdSQV
 tn90Mls7XFDssb7wqsn9K6jtmeR0KgSmbwoMoufI0vYrEJWJrvJWxJj6H
 zPZ6WGbK1KGtgGwwyaCiXK3YxXHUt3VnYoOOJTW8r2igmaZmlbYZifSiE
 NFCCq+u6CoIPefN/7VYJBqdZ7sBZOD8ZUl1yZ5ZrjLFBTVkBDN9tzP98h
 96szPiIBCwUqQvvoxltSptJaTxW0tymQKchMhSdvEAzHDAwTk/ZcmDvjV Q==;
X-CSE-ConnectionGUID: fVS39mOARlqAnL+mZoD8VQ==
X-CSE-MsgGUID: q9wG3o61QnefJIFu97nV9w==
X-IronPort-AV: E=McAfee;i="6800,10657,11629"; a="84132236"
X-IronPort-AV: E=Sophos;i="6.20,240,1758610800"; d="scan'208";a="84132236"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 04:25:53 -0800
X-CSE-ConnectionGUID: ehQf2X6kQa6EI7iqtP4Nfw==
X-CSE-MsgGUID: /iKbDohLRLG2sPLaog1yBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,240,1758610800"; d="scan'208";a="193184323"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.132])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 04:25:51 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Luca Coelho <luca@coelho.fi>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 4/5] drm/i915/power: convert intel_wakeref_t to
 struct ref_tracker *
In-Reply-To: <20d6e9910f0a7faf3ed14e37db0ff0860a17e017.camel@coelho.fi>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1764076995.git.jani.nikula@intel.com>
 <f182bd26d5f9a00e843246d4aac8b25ff7531c51.1764076995.git.jani.nikula@intel.com>
 <20d6e9910f0a7faf3ed14e37db0ff0860a17e017.camel@coelho.fi>
Date: Mon, 01 Dec 2025 14:25:48 +0200
Message-ID: <df42724a6e39eec45cf126f175866e88b0b33f0d@intel.com>
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

On Mon, 01 Dec 2025, Luca Coelho <luca@coelho.fi> wrote:
> On Tue, 2025-11-25 at 15:24 +0200, Jani Nikula wrote:
>> diff --git a/drivers/gpu/drm/xe/display/xe_display_rpm.c b/drivers/gpu/drm/xe/display/xe_display_rpm.c
>> index 340f65884812..9416ec784e39 100644
>> --- a/drivers/gpu/drm/xe/display/xe_display_rpm.c
>> +++ b/drivers/gpu/drm/xe/display/xe_display_rpm.c
>> @@ -5,6 +5,7 @@
>>  
>>  #include "intel_display_core.h"
>>  #include "intel_display_rpm.h"
>> +#include "intel_wakeref.h"
>
> Just to be sure this is not a stray change, why did you add it here?

I was pretty sure it was required, maybe depending on some kconfig,
because the include is being removed in some other places, but I can't
reproduce the fail now.

I'd say not a huge problem because it's being removed in the next patch
no matter what.

BR,
Jani.


>
>
>>  #include "xe_device.h"
>>  #include "xe_device_types.h"
>>  #include "xe_pm.h"
>
> Regardless:
>
> Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
>
> --
> Cheers,
> Luca.

-- 
Jani Nikula, Intel
