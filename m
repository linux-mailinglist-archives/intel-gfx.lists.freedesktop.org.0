Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC8D6994484
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2024 11:42:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A56310E4B4;
	Tue,  8 Oct 2024 09:42:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nD3OSilg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CFF010E13D;
 Tue,  8 Oct 2024 09:42:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728380553; x=1759916553;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=rwSoHGxfpCP91VDtsCREjRyAr3+AdsdjH0sIFtNnnDg=;
 b=nD3OSilg9ktRsJaJGGjLZETjZmyshfWRv17wJcsRdHnJunyUDcNV1b0M
 4VqXcjqHsi/c7aEe9MWgywJfptyt5vegscd2QFGedOFdCIJrFTooQWLR5
 zstqrpWPirD9Tqtn9j1NZ5fdlNAmzTjnVaa2pxGhGLJEdJtiBQqq1nuE5
 BNSXFSBcAJjX0+9ylml2UBzTqdSNdkB9CgJPm2tXXpGIq0Hd9Nr/kP2jx
 Un4ztx8tsYjhzPXZOkFnwS8Mq58kl7q6WtwTGIB9KWawCJgROU+VP9Tw+
 uaEyzHXzXcf9MrtW4VwmOoVsMasIhqrt5iN8wl7i4U5lT2gzeFIOjk61a A==;
X-CSE-ConnectionGUID: 8G//dMnvSBiaS6mZifOSdQ==
X-CSE-MsgGUID: F7kT1C88SxeoSx2Gq7YBKw==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="45086722"
X-IronPort-AV: E=Sophos;i="6.11,186,1725346800"; d="scan'208";a="45086722"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 02:42:32 -0700
X-CSE-ConnectionGUID: F/d72i87RRyMRrHKwBlHRA==
X-CSE-MsgGUID: vBStSVKiQEWmJwFFbQNgYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,186,1725346800"; d="scan'208";a="80764602"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa004.jf.intel.com with ESMTP; 08 Oct 2024 02:42:30 -0700
Received: from [10.246.1.253] (mwajdecz-MOBL.ger.corp.intel.com [10.246.1.253])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 33F0628776;
 Tue,  8 Oct 2024 10:42:29 +0100 (IST)
Message-ID: <7b2ada61-d7ad-4683-9e0c-89aefd975715@intel.com>
Date: Tue, 8 Oct 2024 11:42:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 03/15] drm/i915/display: use a macro to define platform
 enumerations
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 maarten.lankhorst@linux.intel.com, ville.syrjala@linux.intel.com
References: <cover.1727699233.git.jani.nikula@intel.com>
 <c10f2ca9980a1f62aad26b8e349552db475933ff.1727699233.git.jani.nikula@intel.com>
 <00e7082a-c0e9-4812-8fac-ded4b8f19928@intel.com> <8734l7rlfl.fsf@intel.com>
Content-Language: en-US
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
In-Reply-To: <8734l7rlfl.fsf@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
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



On 08.10.2024 11:30, Jani Nikula wrote:
> On Mon, 07 Oct 2024, Michal Wajdeczko <michal.wajdeczko@intel.com> wrote:
>> On 30.09.2024 14:31, Jani Nikula wrote:
>>> We'll be needing a macro based list of platforms for more things in the
>>> future. Start by defining the platform enumerations with it.
>>>
>>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>> ---
>>>  .../drm/i915/display/intel_display_device.h   | 115 ++++++++++--------
>>>  1 file changed, 61 insertions(+), 54 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
>>> index 5306bbd13e59..1cc1a2de9e6a 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
>>> @@ -15,63 +15,70 @@ struct drm_i915_private;
>>>  struct drm_printer;
>>>  
>>>  /* Keep in gen based order, and chronological order within a gen */
>>> +#define INTEL_DISPLAY_PLATFORMS(func) \
>>> +	func(PLATFORM_UNINITIALIZED) \
>>
>> maybe this one should be defined in the old-fashion way so the
>> INTEL_DISPLAY_PLATFORMS macro will contain only valid IDs?
> 
> I don't understand.
> 

I mean something like this:

enum intel_display_platform {
	INTEL_DISPLAY_PLATFORM_UNINITIALIZED = 0,
	INTEL_DISPLAY_PLATFORMS(__ENUM)
};

with that INTEL_DISPLAY_PLATFORMS macro could be used in some other
cases (maybe tests) without worrying about that uninitialized case.
