Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68B409D3991
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 12:36:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CB4810E16F;
	Wed, 20 Nov 2024 11:36:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="INO6/Oso";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FDE710E16F;
 Wed, 20 Nov 2024 11:36:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732102564; x=1763638564;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Scx5nxJYWuWrgP1IzPOrGYsNvadNlMJc+Wz4meOIizo=;
 b=INO6/OsoaOhzFnGJLEyYBPcUglTpCHnOJ4KkXG0ADMFBaGEIRneH/n/j
 vXD6MGYwNfRiln8HEz2ZMSNkAZu2hBJrZMhpFsovPpLfXWRADba1p9pAJ
 DCTHwIch6HXZRTh4UVKzCraGTIBNdVR/Hm+O0Jk0TnobrZw1pZ24d3Gqs
 6tBAfgVk1U/V7VS3guTMvA0YZ5xrnBDOyRZjDVAy4Xp21Zyf/FXfEeadP
 48197oXpoWDla+hfQm5N3Csp43RMpEQYgWqoFtdMzO2n930a3ImxXCUpJ
 CVsDoVXBqmIM7gU/O5pY8Y+49ZgKpp523bsQ99yh1ARVv+/1uRH/ueTL9 g==;
X-CSE-ConnectionGUID: e9t9Ub2ESLGTy4/6rmrK7A==
X-CSE-MsgGUID: gfCH4TNERVOpb+f6GA56GQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="32213264"
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="32213264"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 03:36:04 -0800
X-CSE-ConnectionGUID: OMRV2S3YSLifmzf96YzLDw==
X-CSE-MsgGUID: nQO2di1YQIC5BFmISayzUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="93950055"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.28])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 03:36:01 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 11/11] drm/i915/ddi: simplify
 intel_ddi_get_encoder_pipes() slightly
In-Reply-To: <Zzx5IKsm7us1CcBP@ideak-desk.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1731941270.git.jani.nikula@intel.com>
 <0aa1274597fa84a0dc3c9ccf7bb20997d1d154bf.1731941270.git.jani.nikula@intel.com>
 <Zzx5IKsm7us1CcBP@ideak-desk.fi.intel.com>
Date: Wed, 20 Nov 2024 13:35:59 +0200
Message-ID: <875xoi2l40.fsf@intel.com>
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

On Tue, 19 Nov 2024, Imre Deak <imre.deak@intel.com> wrote:
> On Mon, Nov 18, 2024 at 04:49:06PM +0200, Jani Nikula wrote:
>> Use a temporary variable for DDI mode to simplify the conditions. This
>> is in line with the other places that read DDI mode.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_ddi.c | 9 +++++----
>>  1 file changed, 5 insertions(+), 4 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
>> index 33628cbc0f72..e25b712bf03b 100644
>> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>> @@ -818,7 +818,7 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
>>  	mst_pipe_mask = 0;
>>  	for_each_pipe(dev_priv, p) {
>>  		enum transcoder cpu_transcoder = (enum transcoder)p;
>> -		unsigned int port_mask, ddi_select;
>> +		u32 port_mask, ddi_select, ddi_mode;
>>  		intel_wakeref_t trans_wakeref;
>>  
>>  		trans_wakeref = intel_display_power_get_if_enabled(dev_priv,
>> @@ -842,9 +842,10 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
>>  		if ((tmp & port_mask) != ddi_select)
>>  			continue;
>>  
>> -		if ((tmp & TRANS_DDI_MODE_SELECT_MASK) == TRANS_DDI_MODE_SELECT_DP_MST ||
>> -		    (HAS_DP20(display) &&
>> -		     (tmp & TRANS_DDI_MODE_SELECT_MASK) == TRANS_DDI_MODE_SELECT_FDI_OR_128B132B))
>> +		ddi_mode = tmp & TRANS_DDI_MODE_SELECT_MASK;
>> +
>> +		if (ddi_mode == TRANS_DDI_MODE_SELECT_DP_MST ||
>> +		    (ddi_mode == TRANS_DDI_MODE_SELECT_FDI_OR_128B132B && HAS_DP20(display)))
>
> nit: the above condition and the fdi counterpart is used elsewhere too,
> so could use a helper. The patchset looks ok regardless:
>
> Reviewed-by: Imre Deak <imre.deak@intel.com>

Hum, so was this for the entire series? Also how about v2 of patch 6?

Please consider either replying to the cover letter or for each
individual patch, so that b4 gather the trailers automagically.

BR,
Jani.


>
>>  			mst_pipe_mask |= BIT(p);
>>  
>>  		*pipe_mask |= BIT(p);
>> -- 
>> 2.39.5
>> 

-- 
Jani Nikula, Intel
