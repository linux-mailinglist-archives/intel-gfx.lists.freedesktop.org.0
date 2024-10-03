Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E71F98F83A
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2024 22:50:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3499910E259;
	Thu,  3 Oct 2024 20:50:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hIaCkkV3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1923110E259;
 Thu,  3 Oct 2024 20:50:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727988628; x=1759524628;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=ohHsfmOmgaMZzBB6c8cnTlcw/v6UfUqlCm+4r1Z12UE=;
 b=hIaCkkV3TPUQiTKwr82HDwAIRLb8mUbe3ACcMmSTgmxe7Vin2XbY/aCU
 uIhll7PdaiiEcOXKNXql3oDMnNJeYH/9tC6/o2gTx+AGkLE8r/STJOSsj
 pMhPxvyvsMjFwGpUpxm/4gKExIC3xOv72dyCNy3/9wyqTesclmP8JvFK4
 SKoRLMazfVvAzVnHPV8WBj86wip8PPU3jmmcMuCA9dzwAt/gwGRLleHmp
 VuZfoeL19a+D8yY2y5u3+XeNRGThbN2lheNo8lMttc2A35FcymDLNyLZp
 fUL7DMUSnFjGrZaeuL0CQiHo0OMnzD9AkgkmJhzwb5zFhaxKFn+pMMtfQ w==;
X-CSE-ConnectionGUID: +9X1idjYRZC91naOMDtTjQ==
X-CSE-MsgGUID: RrPow8BNSruCtz+MD4Bnyg==
X-IronPort-AV: E=McAfee;i="6700,10204,11214"; a="14823274"
X-IronPort-AV: E=Sophos;i="6.11,175,1725346800"; d="scan'208";a="14823274"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2024 13:50:28 -0700
X-CSE-ConnectionGUID: Z10/KWffQ/ux1XGxGRewAA==
X-CSE-MsgGUID: PvB4sDR+TB+UQbigH098wg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,175,1725346800"; d="scan'208";a="74721403"
Received: from dhhellew-desk2.ger.corp.intel.com.ger.corp.intel.com (HELO
 [10.245.245.6]) ([10.245.245.6])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2024 13:50:26 -0700
Message-ID: <e83436f7-7236-4cd7-a5a3-75c7c7dfcb04@linux.intel.com>
Date: Thu, 3 Oct 2024 22:50:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 03/12] drm/i915/display: Use async flip when available
 for initial plane config
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
References: <20241003154421.33805-1-maarten.lankhorst@linux.intel.com>
 <20241003154421.33805-4-maarten.lankhorst@linux.intel.com>
 <Zv7C7-H3sb053fje@intel.com>
Content-Language: en-US
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
In-Reply-To: <Zv7C7-H3sb053fje@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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

Hello,

Den 2024-10-03 kl. 18:14, skrev Ville Syrjälä:
> On Thu, Oct 03, 2024 at 05:44:12PM +0200, Maarten Lankhorst wrote:
>> I'm planning to reorder readout in the Xe sequence in such a way that
>> interrupts will not be available, so just use an async flip.
>>
>> Since the new FB points to the same pages, it will not tear. It also
>> has the benefit of perhaps being slightly faster.
>>
>> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/skl_universal_plane.c | 13 +++++++++++--
>>   1 file changed, 11 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> index fdb141cfa4274..73a3624e34098 100644
>> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> @@ -2800,7 +2800,7 @@ bool skl_fixup_initial_plane_config(struct intel_crtc *crtc,
>>   		to_intel_plane_state(plane->base.state);
>>   	enum plane_id plane_id = plane->id;
>>   	enum pipe pipe = crtc->pipe;
>> -	u32 base;
>> +	u32 base, plane_ctl;
>>   
>>   	if (!plane_state->uapi.visible)
>>   		return false;
>> @@ -2814,7 +2814,16 @@ bool skl_fixup_initial_plane_config(struct intel_crtc *crtc,
>>   	if (plane_config->base == base)
>>   		return false;
>>   
>> +	/* Perform an async flip to the new surface. */
>> +	plane_ctl = intel_read(i915, PLANE_CTL(pipe, plane_id));
>> +	plane_ctl |= PLANE_CTL_ASYNC_FLIP;
>> +
> 
> No async flips!

Can you please explain your reasoning? I think async flip would fit 
perfectly here. We cannot perform a wait_for_vblank as we will not have 
interrupts enabled yet. Additionally an async flip would cause a faster 
driver loading. Since the FB is exactly the same except set to a 
different address, no tearing will occur.

Cheers,
~Maarten
