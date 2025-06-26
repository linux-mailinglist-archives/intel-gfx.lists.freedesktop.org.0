Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75EE6AE9939
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jun 2025 10:55:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FD2110E8C6;
	Thu, 26 Jun 2025 08:55:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EoWC8IqN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 849B510E8D1
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Jun 2025 08:55:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750928135; x=1782464135;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Txvt7D5YNx2wAZL/E68VJxIqJ9nzBzyvvj634obrWtM=;
 b=EoWC8IqNKdbnjpF6BToGwJvtfkGBlyuM1gQWxf0iSgKHqLsQK8HWXeyp
 zlZecBD2RkmhWh6FJSQdKd9OvGmytYpgAy4Uyjej7pJPsdmy0xPhuKjNt
 d1bIuZiERoMAt9Bww/sHDAZT14e0RipHqgCD74gWBp1cdSQ7BaMRNujeV
 selmKPc9MaBMWw3RFHJ9/S3AEB5FrnieLPlRLsXNWr9tKfEaUw3IA7vVk
 7VD4sur5Kmhrl4/CBDxYlKjo3UmNiE8GJRNuAXbDQXtjZi0+BmE6HoV4T
 Zex3684q8kOwU25uPMR8pm8be3XSMIYJqM+PND7Akd8sFBNVZBsFeUKzn A==;
X-CSE-ConnectionGUID: /j8+vyn1TYiczI25pfUwWw==
X-CSE-MsgGUID: 9ptvXRRhSCOe/3nwsG41tA==
X-IronPort-AV: E=McAfee;i="6800,10657,11475"; a="53359766"
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="53359766"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 01:55:35 -0700
X-CSE-ConnectionGUID: Wo/FBCpkRZK7/Fb0L5hiww==
X-CSE-MsgGUID: Md6fel6fSpWY8wju9jIpqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="152578109"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.120])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 01:55:33 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915: remove unused DISPLAY_PLANE_FLIP_PENDING() macro
In-Reply-To: <aFv_q12bJXVF5GaR@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250625132140.1564473-1-jani.nikula@intel.com>
 <aFv_q12bJXVF5GaR@intel.com>
Date: Thu, 26 Jun 2025 11:55:30 +0300
Message-ID: <0b07ffe2091ebd0e26126237a544a0929ca36072@intel.com>
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

On Wed, 25 Jun 2025, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Wed, Jun 25, 2025 at 04:21:40PM +0300, Jani Nikula wrote:
>> DISPLAY_PLANE_FLIP_PENDING() has been unused since commit fd3a40242e87
>> ("drm/i915: Rip out legacy page_flip completion/irq handling"). Remove.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks, pushed to din, exceptionally without CI results because this is
certain not to cause regressions, and the build bot responded with
success.

BR,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/i915_reg.h | 1 -
>>  1 file changed, 1 deletion(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
>> index 04fb40867cc0..8d56b3c45451 100644
>> --- a/drivers/gpu/drm/i915/i915_reg.h
>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>> @@ -385,7 +385,6 @@
>>  #define VLV_PCBR	_MMIO(VLV_DISPLAY_BASE + 0x2120)
>>  #define VLV_PCBR_ADDR_SHIFT	12
>>  
>> -#define   DISPLAY_PLANE_FLIP_PENDING(plane) (1 << (11 - (plane))) /* A and B only */
>>  #define EIR		_MMIO(0x20b0)
>>  #define EMR		_MMIO(0x20b4)
>>  #define ESR		_MMIO(0x20b8)
>> -- 
>> 2.39.5
>> 

-- 
Jani Nikula, Intel
