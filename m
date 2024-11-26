Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B62A9D93FC
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2024 10:16:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0651D10E7EB;
	Tue, 26 Nov 2024 09:16:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ADj5MmvG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0FD810E3F7;
 Tue, 26 Nov 2024 09:16:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732612610; x=1764148610;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=+5wUY6+p1dfb6i9ACNO+cdcNrYVRV0Qv2w5Whq/uCa4=;
 b=ADj5MmvGDxBUYK2VNFCmYmkndmy5dUzwmDiKRruNQWosedZsDhJHEw7R
 snmup3iB7N2EBFHu5JuLjJ7QFr1wRUhxj8TSD+ebwlHoncVF/A8mzxsrr
 PG+9YEShSUdqLeMBPjztQpoXegx/xOyzYDuZGEruklWQl8vUhbXtiUbKs
 qkeAqheDaJToI40cFHEcwd4+p9tR6D6pwdQbhYaeckXXoLKONg6I0ui+S
 wj+KoXHp4xSXhtvuFaCfrfcphcYoAHP+wPO40Dj1RezW81HewGeWpzXUn
 acz1jGCX6mk72HU4X4rnaARgozTd4SNNA79qbvemmBucN9XkNOR67m6fX w==;
X-CSE-ConnectionGUID: niAvvEiUQTikI1c3/ul19w==
X-CSE-MsgGUID: YIY69aiBToSznM3vFkGZUA==
X-IronPort-AV: E=McAfee;i="6700,10204,11267"; a="43826284"
X-IronPort-AV: E=Sophos;i="6.12,185,1728975600"; d="scan'208";a="43826284"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2024 01:16:50 -0800
X-CSE-ConnectionGUID: 6bK7rZv0SJOH5iCNo7iL5A==
X-CSE-MsgGUID: uQuvgJgjR/GCJPz72o/7jw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,185,1728975600"; d="scan'208";a="91670722"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.49])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2024 01:16:48 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/ddi: clarify
 intel_ddi_connector_get_hw_state() for DP MST
In-Reply-To: <Z0Sd1EbzyqEw7smW@ideak-desk.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241125120959.2366419-1-jani.nikula@intel.com>
 <Z0Sd1EbzyqEw7smW@ideak-desk.fi.intel.com>
Date: Tue, 26 Nov 2024 11:16:45 +0200
Message-ID: <87a5dmxsle.fsf@intel.com>
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

On Mon, 25 Nov 2024, Imre Deak <imre.deak@intel.com> wrote:
> On Mon, Nov 25, 2024 at 02:09:59PM +0200, Jani Nikula wrote:
>> encoder->get_hw_state() returns false for DP MST, and currently always
>> interprets 128b/132b as MST. Therefore the DDI MST mode checks in
>> intel_ddi_connector_get_hw_state() are redundant.
>> 
>> Prepare for future, and handle 128b/132b SST and warn on 8b/10b MST.
>> 
>> Cc: Imre Deak <imre.deak@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Looks ok to me:
> Reviewed-by: Imre Deak <imre.deak@intel.com>

Thanks, pushed to drm-intel-next.

BR,
Jani.


>
>> ---
>>  drivers/gpu/drm/i915/display/intel_ddi.c | 11 +++++++----
>>  1 file changed, 7 insertions(+), 4 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
>> index e25b712bf03b..7d37ddd9ad12 100644
>> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>> @@ -731,6 +731,7 @@ bool intel_ddi_connector_get_hw_state(struct intel_connector *intel_connector)
>>  	if (!wakeref)
>>  		return false;
>>  
>> +	/* Note: This returns false for DP MST primary encoders. */
>>  	if (!encoder->get_hw_state(encoder, &pipe)) {
>>  		ret = false;
>>  		goto out;
>> @@ -752,12 +753,14 @@ bool intel_ddi_connector_get_hw_state(struct intel_connector *intel_connector)
>>  	} else if (ddi_mode == TRANS_DDI_MODE_SELECT_DP_SST) {
>>  		ret = type == DRM_MODE_CONNECTOR_eDP ||
>>  			type == DRM_MODE_CONNECTOR_DisplayPort;
>> -	} else if (ddi_mode == TRANS_DDI_MODE_SELECT_DP_MST ||
>> -		   (ddi_mode == TRANS_DDI_MODE_SELECT_FDI_OR_128B132B && HAS_DP20(display))) {
>> +	} else if (ddi_mode == TRANS_DDI_MODE_SELECT_FDI_OR_128B132B && HAS_DP20(display)) {
>>  		/*
>> -		 * If the transcoder is in MST state then connector isn't
>> -		 * connected.
>> +		 * encoder->get_hw_state() should have bailed out on MST. This
>> +		 * must be SST and non-eDP.
>>  		 */
>> +		ret = type == DRM_MODE_CONNECTOR_DisplayPort;
>> +	} else if (drm_WARN_ON(display->drm, ddi_mode == TRANS_DDI_MODE_SELECT_DP_MST)) {
>> +		/* encoder->get_hw_state() should have bailed out on MST. */
>>  		ret = false;
>>  	} else {
>>  		ret = false;
>> -- 
>> 2.39.5
>> 

-- 
Jani Nikula, Intel
