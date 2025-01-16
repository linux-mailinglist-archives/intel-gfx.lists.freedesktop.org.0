Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71ADAA13F42
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 17:24:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1293810E9CA;
	Thu, 16 Jan 2025 16:24:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eR64+7/f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2140B10E9C3;
 Thu, 16 Jan 2025 16:24:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737044687; x=1768580687;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=gqGVgyQZtKPg/0CB/y8abIP7dmkXtI4kSi3moljgjzQ=;
 b=eR64+7/fYdMtZ2eHXUGXuaNhO1U6HPvfHQ0GXWG80skCv7mkgPKHFmqr
 AO+vv7LwT1kOOua4KEe8dDb9Pqaum7sh2deTSE/6y23RVk52O+4mSygTn
 KTQl3odnUsoR0Y8ZKblnEPZygogqOQIunsn45u9STlshATEqHrMaBABUi
 9EWBwEPYJRThYVfmI3vN5DMGlGD4+N51yx6MPOO2bE67t2uyguzR4B3PM
 sUGdEvURJQ6ua1CRteQQQUMevuEz0ZflKb+3kghAD5VE8VNkFc35Nf5Vu
 rtvNQRDkoi2mKpx+VwykniHc9rFbnCu22bIUgLl8gT63uvDU1hZ+g3vTE g==;
X-CSE-ConnectionGUID: /mcc6drwRQOW/KAO7LZ2jA==
X-CSE-MsgGUID: XMlhF5JxSgid30cqxIx0qg==
X-IronPort-AV: E=McAfee;i="6700,10204,11317"; a="41207674"
X-IronPort-AV: E=Sophos;i="6.13,209,1732608000"; d="scan'208";a="41207674"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 08:24:42 -0800
X-CSE-ConnectionGUID: 6BU5cSx6RHC2iKsKxgY9UQ==
X-CSE-MsgGUID: M/4dzFTKTxKZy4MS96Wknw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,209,1732608000"; d="scan'208";a="105314066"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 08:24:40 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, Ankit Nautiyal
 <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/dp: Correct max compressed bpp bounds by using
 link bpp
In-Reply-To: <Z4kmGN0RrY7VVBzQ@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250116095416.68325-1-ankit.k.nautiyal@intel.com>
 <Z4kmGN0RrY7VVBzQ@intel.com>
Date: Thu, 16 Jan 2025 18:24:36 +0200
Message-ID: <87h65yg20r.fsf@intel.com>
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

On Thu, 16 Jan 2025, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Thu, Jan 16, 2025 at 03:24:16PM +0530, Ankit Nautiyal wrote:
>> While setting the bounds for compressed bpp we ensure that the
>> compressed bpp is less than the pipe bpp.
>> 
>> This gives an issue with 420 output format where effective link bpp is
>> half that of the pipe bpp. Therefore instead of pipe bpp use link bpp to
>> set the bounds for the compressed bpp.
>> 
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dp.c | 10 ++++++++--
>
> patches to i915, even when they target only platforms supported by
> xe should also be sent to intel-gfx mainlinlist...

Agreed... but this one was? :)

BR,
Jani.

>
>>  1 file changed, 8 insertions(+), 2 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 1ad25c37f3c2..47fcfbcb893b 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -2068,9 +2068,12 @@ icl_dsc_compute_link_config(struct intel_dp *intel_dp,
>>  			    int timeslots)
>>  {
>>  	int i, ret;
>> +	int link_bpp;
>> +
>> +	link_bpp = intel_dp_output_bpp(pipe_config->output_format, pipe_bpp);
>>  
>>  	/* Compressed BPP should be less than the Input DSC bpp */
>> -	dsc_max_bpp = min(dsc_max_bpp, pipe_bpp - 1);
>> +	dsc_max_bpp = min(dsc_max_bpp, link_bpp - 1);
>>  
>>  	for (i = 0; i < ARRAY_SIZE(valid_dsc_bpp); i++) {
>>  		if (valid_dsc_bpp[i] < dsc_min_bpp)
>> @@ -2113,6 +2116,7 @@ xelpd_dsc_compute_link_config(struct intel_dp *intel_dp,
>>  	u8 bppx16_incr = drm_dp_dsc_sink_bpp_incr(connector->dp.dsc_dpcd);
>>  	u16 compressed_bppx16;
>>  	u8 bppx16_step;
>> +	int link_bpp;
>>  	int ret;
>>  
>>  	if (DISPLAY_VER(display) < 14 || bppx16_incr <= 1)
>> @@ -2120,8 +2124,10 @@ xelpd_dsc_compute_link_config(struct intel_dp *intel_dp,
>>  	else
>>  		bppx16_step = 16 / bppx16_incr;
>>  
>> +	link_bpp = intel_dp_output_bpp(pipe_config->output_format, pipe_bpp);
>> +
>>  	/* Compressed BPP should be less than the Input DSC bpp */
>> -	dsc_max_bpp = min(dsc_max_bpp << 4, (pipe_bpp << 4) - bppx16_step);
>> +	dsc_max_bpp = min(dsc_max_bpp << 4, (link_bpp << 4) - bppx16_step);
>>  	dsc_min_bpp = dsc_min_bpp << 4;
>>  
>>  	for (compressed_bppx16 = dsc_max_bpp;
>> -- 
>> 2.45.2
>> 

-- 
Jani Nikula, Intel
