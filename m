Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C6AA33DA1
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 12:16:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EB8610EA60;
	Thu, 13 Feb 2025 11:16:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cEZDip73";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 060BB10EA59;
 Thu, 13 Feb 2025 11:16:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739445401; x=1770981401;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=x1vSQ6TmimV0A/SMCvgod1Dxc15P3suXMMSHIDXezjM=;
 b=cEZDip73x8SbJ2am4jx8eivKiZ4Q6Mnddn4csj3okEkeJ0NUbZo6BsqI
 KhZEvDbHNArSWJCDSNcvxqnz8Zq5ugDf1sOWyJy+l6yFPDB0BKM4+gflJ
 pMl04N9AxuJskpFRrRR26qf6PwIxFPQWsxPL7QiZyBzqfkEb4yy+YSonp
 TU04Zgkl5IeYURNhN5ssL6SdlZXNnUcbXPkxThf1aJ3Ry3Zmbf8gCJ3/T
 GOGFxu6FuyMWnMoJqRd5k7nLPa8M1nb21B/jUrBfKsojZJaFz04T6xEOG
 DBky+dJy4RiT4gCwUEtqi5I57P52S1fhv8F2Ej/ANUIChaCdxZlzcqLPu w==;
X-CSE-ConnectionGUID: f8KKuEawReuqeH3g2E43zg==
X-CSE-MsgGUID: al8X9DyjTWuty7v4eORhGA==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="57544636"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="57544636"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 03:16:41 -0800
X-CSE-ConnectionGUID: sAyMXly0RUa7SyZ/+pU4nA==
X-CSE-MsgGUID: 3bo3qErpRLqkiHiL8hdCyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="113292455"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.243])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 03:16:38 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 08/14] drm/i915/sdvo: convert intel_sdvo.[ch] to struct
 intel_display
In-Reply-To: <SN7PR11MB6750BEBEBE8EB42AD10D836EE3FF2@SN7PR11MB6750.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1739378095.git.jani.nikula@intel.com>
 <2e79909f8a060d7ff1744911f8da9300eb1f225c.1739378095.git.jani.nikula@intel.com>
 <SN7PR11MB6750BEBEBE8EB42AD10D836EE3FF2@SN7PR11MB6750.namprd11.prod.outlook.com>
Date: Thu, 13 Feb 2025 13:16:35 +0200
Message-ID: <87pljmxffw.fsf@intel.com>
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

On Thu, 13 Feb 2025, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
>> @@ -1941,12 +1942,13 @@ static enum drm_mode_status
>> intel_sdvo_mode_valid(struct drm_connector *connector,
>>                     const struct drm_display_mode *mode)  {
>> +     struct intel_display *display = to_intel_display(connector->dev);
>
> Why not &i915->display and declare this after i915 declaration

Because i915 will go away eventually, and I don't want to have to change
this line again.

BR,
Jani.


>
> Otherwise LGTM,
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
>
>
>>       struct drm_i915_private *i915 = to_i915(connector->dev);
>>       struct intel_sdvo *intel_sdvo =
>> intel_attached_sdvo(to_intel_connector(connector));
>>       struct intel_sdvo_connector *intel_sdvo_connector =
>>               to_intel_sdvo_connector(connector);
>>       bool has_hdmi_sink = intel_has_hdmi_sink(intel_sdvo_connector,
>> connector->state);
>> -     int max_dotclk = i915->display.cdclk.max_dotclk_freq;
>> +     int max_dotclk = display->cdclk.max_dotclk_freq;
>>       enum drm_mode_status status;
>>       int clock = mode->clock;
>>

-- 
Jani Nikula, Intel
