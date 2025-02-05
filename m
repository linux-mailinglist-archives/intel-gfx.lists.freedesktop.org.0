Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04A59A28C0B
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2025 14:41:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E262610E7AD;
	Wed,  5 Feb 2025 13:41:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NF03AtJz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7052D10E7C2;
 Wed,  5 Feb 2025 13:41:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738762905; x=1770298905;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=kPiQWz0IfPcaK2IQ42G7+gJuG8gsBs2vcAcbmeI8LWE=;
 b=NF03AtJzLc21umh5ZX9UD8ZnOLZLx0ycgdE2wnqIPhAxR0i4yl7gSqOm
 AK2RSLOTAufOp/D62MZqCSKMzPrccyztjjbp9V4P6P6LpDpuu9jhJO6O5
 fj+ctkpoytq6ltWO42Aa8cikZW4zfVgv+kk+sDoM3TOM/ESr7MY5kSrlw
 PVxnyJ2r4dCOjZ9K6NUDFiFBLxBfiqJPryGzSU7BfWLl8hBpSyV26tOXu
 MTKXpup+lpMxpMPBcguZXOkRFKntRmpqAyicbP6qowbHCBvQclOSdXYci
 KpyD/ZiQrj+SkwoU2DG3mRB/ObzjX2aswDpxLETVdYeP8e0p12iy/PgYA w==;
X-CSE-ConnectionGUID: /ykeywvaRKyGFuabRCD9tA==
X-CSE-MsgGUID: VPVmzXiRT8qit0kKx375TQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="42163165"
X-IronPort-AV: E=Sophos;i="6.13,261,1732608000"; d="scan'208";a="42163165"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 05:41:45 -0800
X-CSE-ConnectionGUID: 7npyFkJ4QA64cuV3bVgETQ==
X-CSE-MsgGUID: lzvVqTyBSDWwWXS9GPZxSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,261,1732608000"; d="scan'208";a="111483413"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.217])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 05:41:44 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/dp: Fix potential infinite loop in 128b/132b SST
In-Reply-To: <Z6I3wAio4_7UbiWG@ideak-desk.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250204154925.3001781-1-jani.nikula@intel.com>
 <Z6I3wAio4_7UbiWG@ideak-desk.fi.intel.com>
Date: Wed, 05 Feb 2025 15:41:41 +0200
Message-ID: <875xlo4iga.fsf@intel.com>
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

On Tue, 04 Feb 2025, Imre Deak <imre.deak@intel.com> wrote:
> On Tue, Feb 04, 2025 at 05:49:25PM +0200, Jani Nikula wrote:
>> Passing 0 as the step only works when there are other reasons to break
>> out of the BPP loop in intel_dp_mtp_tu_compute_config(). Otherwise, an
>> infinite loop might occur. Fix it by explicitly checking for 0 step.
>> 
>> Fixes: ef0a0757bbea ("drm/i915/dp: compute config for 128b/132b SST w/o DSC")
>> Reported-by: Imre Deak <imre.deak@intel.com>
>> Closes: https://lore.kernel.org/r/Z6I0knh2Kt5T0JrT@ideak-desk.fi.intel.com
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Imre Deak <imre.deak@intel.com>

Pushed to din, thanks for the review!

>
>> ---
>> 
>> Note: This needs a backport with (!step) for -rc1.
>> ---
>>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 4 ++++
>>  1 file changed, 4 insertions(+)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> index 95abc6ea85eb..1587be5cd0a7 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> @@ -353,6 +353,10 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
>>  
>>  			break;
>>  		}
>> +
>> +		/* Allow using zero step to indicate one try */
>> +		if (!bpp_step_x16)
>> +			break;
>>  	}
>>  
>>  	if (slots < 0) {
>> -- 
>> 2.39.5
>> 

-- 
Jani Nikula, Intel
