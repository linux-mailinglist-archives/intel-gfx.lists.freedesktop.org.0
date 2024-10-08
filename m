Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 571CE99444E
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2024 11:30:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9774E10E380;
	Tue,  8 Oct 2024 09:30:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jQHaXyYu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5794110E380;
 Tue,  8 Oct 2024 09:30:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728379846; x=1759915846;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=N6BlYk+zAlugicWOZVcBQc+DN+qJYJVQ8hJLJg2SLv8=;
 b=jQHaXyYu9bV9cXD2EuvG1wTW1WwUMSX+mVUsTqLt47QbHuf35rHO8Ksv
 WIxkiGuzxe/Hog+/f+pIt1GSzUqok5f70X7rB6YsVFvBGUBbhAJKpRjVr
 CrGVoZB9aUYbs9R+10ugGI8LsjMAzpXGMEw77PKiWr6xCl6s6Fr4kAvJQ
 vkjvh5zxtAlwlqTU87jXghSDKAAc/Vq8mfHX0U/P/UySVcdVsfnWEg1GO
 bpw10LLNRQ0atXAYCMNbQDL1SsemWvhgfE55FzEZBChYFRx3/cxrguY2+
 QNZ04ihP0klrphRMXtsTYCmtsRv7Nk4pkcX3nluCbXkM2pEuKXYdmWeV+ g==;
X-CSE-ConnectionGUID: 7oOf6WS5RZq3pMgJcYzWog==
X-CSE-MsgGUID: 3wcizJRORkqK8BnDe//CBg==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="31257636"
X-IronPort-AV: E=Sophos;i="6.11,186,1725346800"; d="scan'208";a="31257636"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 02:30:45 -0700
X-CSE-ConnectionGUID: tJTe2Oy1SrO7rYmnFvfz4w==
X-CSE-MsgGUID: a6vFxqsbT8qDS9K9ku/W1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,186,1725346800"; d="scan'208";a="76029343"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.41])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 02:30:42 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 maarten.lankhorst@linux.intel.com, ville.syrjala@linux.intel.com
Subject: Re: [PATCH v3 03/15] drm/i915/display: use a macro to define
 platform enumerations
In-Reply-To: <00e7082a-c0e9-4812-8fac-ded4b8f19928@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1727699233.git.jani.nikula@intel.com>
 <c10f2ca9980a1f62aad26b8e349552db475933ff.1727699233.git.jani.nikula@intel.com>
 <00e7082a-c0e9-4812-8fac-ded4b8f19928@intel.com>
Date: Tue, 08 Oct 2024 12:30:38 +0300
Message-ID: <8734l7rlfl.fsf@intel.com>
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

On Mon, 07 Oct 2024, Michal Wajdeczko <michal.wajdeczko@intel.com> wrote:
> On 30.09.2024 14:31, Jani Nikula wrote:
>> We'll be needing a macro based list of platforms for more things in the
>> future. Start by defining the platform enumerations with it.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  .../drm/i915/display/intel_display_device.h   | 115 ++++++++++--------
>>  1 file changed, 61 insertions(+), 54 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
>> index 5306bbd13e59..1cc1a2de9e6a 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
>> @@ -15,63 +15,70 @@ struct drm_i915_private;
>>  struct drm_printer;
>>  
>>  /* Keep in gen based order, and chronological order within a gen */
>> +#define INTEL_DISPLAY_PLATFORMS(func) \
>> +	func(PLATFORM_UNINITIALIZED) \
>
> maybe this one should be defined in the old-fashion way so the
> INTEL_DISPLAY_PLATFORMS macro will contain only valid IDs?

I don't understand.

BR,
Jani.

-- 
Jani Nikula, Intel
