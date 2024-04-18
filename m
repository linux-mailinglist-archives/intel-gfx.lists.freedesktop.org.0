Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A288A8AA382
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Apr 2024 21:56:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F557113F80;
	Thu, 18 Apr 2024 19:56:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n0z+y7hJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BD4C113F80;
 Thu, 18 Apr 2024 19:56:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713470174; x=1745006174;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=PaipJaAb674jQZN6dsOntVAwGTbWWXQg6m80Jk/fwck=;
 b=n0z+y7hJI+2OC6nxUnaAlIkUABaaDYpKcQsabyNxI/f0NcbdCsKIXkRl
 OmHJv2IGxlBs1tg6qgkQ3+dEcZq1QQjg4su3pg8uuODSzq8RkJtmgqJ2o
 zDXFUnPvzGzwx2agZiljqblpPax4+AYhtjE4a9nNBpdF+K7h2giIsI92J
 9lOycXIU0WQJTxDO8QZFsw3OR56prplGuKVxqLo3CbwW/4rGimN5Q6dmb
 enEaCYT2ZL4wO2bj5bQvJaNStpw/cxTjE+8RS/91380be7AMVEn7yAmm4
 qjkiqXEvYpJ9HjmlUoG42Qt9Zvr7s+VODt/N2Z67INHfcn/QwNXjEd/Wu Q==;
X-CSE-ConnectionGUID: p6Ef8TH3SOyz79Kn8Sjb+Q==
X-CSE-MsgGUID: L0pPjGeNRLGqV5/8uDDeMA==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="9590600"
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; 
   d="scan'208";a="9590600"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 12:56:13 -0700
X-CSE-ConnectionGUID: oRsersuFQZaQwXjGq86tAg==
X-CSE-MsgGUID: wGtJizfdTlKcQjxGMzKB7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="23171912"
Received: from msundstr-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.62.212])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 12:56:11 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: lucas.demarchi@intel.com, rodrigo.vivi@intel.com
Subject: Re: [PATCH 1/5] drm/i915/dmc: handle request_firmware() errors
 separately
In-Reply-To: <171346501148.2007.15538095166602817029@gjsousa-mobl2>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1713450693.git.jani.nikula@intel.com>
 <725c3580aae52bf34f32b93275cce6208dfd42b7.1713450693.git.jani.nikula@intel.com>
 <171346501148.2007.15538095166602817029@gjsousa-mobl2>
Date: Thu, 18 Apr 2024 22:56:06 +0300
Message-ID: <87le5awill.fsf@intel.com>
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

On Thu, 18 Apr 2024, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Quoting Jani Nikula (2024-04-18 11:39:50-03:00)
>>Clarify request_firmware() error handling. Don't proceed to trying to
>>parse non-existent firmware or check for payload when request_firmware()
>>failed to begin with. There's no reason to release_firmware() either
>>when request_firmware() failed.
>>
>>Also move the message about DMC firmware homepage here, as in other
>>cases the user probably has some firmware, although its parsing fails
>>for some reason.
>>
>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>---
>> drivers/gpu/drm/i915/display/intel_dmc.c | 11 +++++++++--
>> 1 file changed, 9 insertions(+), 2 deletions(-)
>>
>>diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
>>index a34ff3383fd3..65880dea9c15 100644
>>--- a/drivers/gpu/drm/i915/display/intel_dmc.c
>>+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>>@@ -942,6 +942,15 @@ static void dmc_load_work_fn(struct work_struct *work)
>>                 }
>>         }
>> 
>>+        if (err) {
>>+                drm_notice(&i915->drm,
>>+                           "Failed to load DMC firmware %s (%pe). Disabling runtime power management.\n",
>>+                           dmc->fw_path, ERR_PTR(err));
>>+                drm_notice(&i915->drm, "DMC firmware homepage: %s",
>>+                           INTEL_DMC_FIRMWARE_URL);
>
> This could also be:
>
>     drm_notice(&i915->drm, "DMC firmware homepage: " INTEL_DMC_FIRMWARE_URL)

Although it currently doesn't, a URL could contain printf format
characters.

>
>>+                return;
>>+        }
>>+
>>         parse_dmc_fw(dmc, fw);
>
> Maybe also remove the now unnecessary NULL check for fw in
> parse_dmc_fw()?

Yeah, was ambivalent about it, could go either way.

>
>> 
>>         if (intel_dmc_has_payload(i915)) {
>>@@ -956,8 +965,6 @@ static void dmc_load_work_fn(struct work_struct *work)
>>                            "Failed to load DMC firmware %s."
>
> Should we tweak the message to differentiate from the previous one? At
> this point, we know the blob file exists, but there is a problem with
> its content.

That's done in the next patch. :)

>
> I think the patch looks good and to me all of the above suggestions are
> just that :-)  So, with or without them:
>
> Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

Thanks!

BR,
Jani.

>
> --
> Gustavo Sousa
>
>>                            " Disabling runtime power management.\n",
>>                            dmc->fw_path);
>>-                drm_notice(&i915->drm, "DMC firmware homepage: %s",
>>-                           INTEL_DMC_FIRMWARE_URL);
>>         }
>> 
>>         release_firmware(fw);
>>-- 
>>2.39.2
>>

-- 
Jani Nikula, Intel
