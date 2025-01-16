Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0FE6A134B4
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 09:08:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F69710E8EA;
	Thu, 16 Jan 2025 08:08:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kQvwncvD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04EB810E8EB;
 Thu, 16 Jan 2025 08:08:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737014906; x=1768550906;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=vzjpXeBmkojziF0fPU0pNk7M/G4iK1GTWpYkp53r2FA=;
 b=kQvwncvDwrm3NfTSwkw1J8V8zptaA450gsKVy3AUbxIZHCEZf+URY+78
 Q2IN7h+QUE6aKIzLxdpEP9rj3ypW+SyLzdtNBQdeLHbZKXMI6Vr0q8FC7
 T42JwbZHyNdwttJJ5o2jr/XPwe6jOVrUVN6mCTtYiIXKoKQzUNY1DwmRD
 7jOxoa7pOrJIGMIkKIR7r7LrEv21zj34QH9n4KW1aNkfGSYHiKDCWGFE5
 lV1iyeSTjk/18r7YfYcYaamdGDT72rH6mWXpntq/xSNq6yX1WvN4h9NMN
 JCCxSoF9TebtcJCwqMNnss5Fzi5bETD466Ap06hocHzmQXuKmu3x4ZBcl g==;
X-CSE-ConnectionGUID: rBhcnanaQ/y+tfoSp3yp4A==
X-CSE-MsgGUID: sJBAwQw1RmiKDWgWSIgLwQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11316"; a="37548175"
X-IronPort-AV: E=Sophos;i="6.13,208,1732608000"; d="scan'208";a="37548175"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 00:08:25 -0800
X-CSE-ConnectionGUID: yL995aoNTDmmrZhdKid3Wg==
X-CSE-MsgGUID: 0AFOPfsoSvWjKcTEagHLIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,208,1732608000"; d="scan'208";a="110380290"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.132])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 00:08:22 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, dnyaneshwar.bhadane@intel.com, Suraj Kandpal
 <suraj.kandpal@intel.com>
Subject: Re: [PATCH] drm/i915/hdcp: Use correct function to check if encoder
 is HDMI
In-Reply-To: <8734hjgp2d.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250116052023.981666-1-suraj.kandpal@intel.com>
 <8734hjgp2d.fsf@intel.com>
Date: Thu, 16 Jan 2025 10:08:19 +0200
Message-ID: <87zfjrfafg.fsf@intel.com>
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

On Thu, 16 Jan 2025, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Thu, 16 Jan 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
>> Use intel_encoder_is_hdmi function which was recently introduced to
>> see if encoder is HDMI or not.
>
> Does this mean we always returned early from
> intel_hdcp_adjust_hdcp_line_rekeying()?
>
> Fixes: ?

And why is there no patch changelog, just two patches on the list, one
with the condition flipped and the other not?


>
> BR,
> Jani.
>
>
>
>
>
>
>>
>> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_hdcp.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
>> index 7464b44c8bb3..91d5629cd9f9 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
>> @@ -41,7 +41,7 @@ intel_hdcp_adjust_hdcp_line_rekeying(struct intel_encoder *encoder,
>>  	u32 rekey_bit = 0;
>>  
>>  	/* Here we assume HDMI is in TMDS mode of operation */
>> -	if (encoder->type != INTEL_OUTPUT_HDMI)
>> +	if (!intel_encoder_is_hdmi(encoder))
>>  		return;
>>  
>>  	if (DISPLAY_VER(display) >= 30) {

-- 
Jani Nikula, Intel
