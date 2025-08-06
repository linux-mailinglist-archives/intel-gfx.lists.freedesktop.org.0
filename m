Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 052EDB1C219
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Aug 2025 10:23:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3605210E3C7;
	Wed,  6 Aug 2025 08:23:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YmlvxfLG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44D4410E3C7;
 Wed,  6 Aug 2025 08:23:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754468632; x=1786004632;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=e++ReDmz8QY5yrWsufhQLwpI/Z7xTQddp778vEqMR/M=;
 b=YmlvxfLGtQr/SCgzseoyamkQf4Z97y1WE7zRcFDKID4luUGUUyJxRr0M
 Xz2YGY6AzrREuzexoADjDK/Vukc+ByAK0WGWMyWCgRUbUpJDuXk1oADIK
 A/FjtmwJ8FEg/haDnvcWtuGl4OOKFa/Dsrkn3R+c4+1W7A3mDgGgowF1L
 7+ukXpEVyFnhJttXnHulg+jleBoEhrio89oXI2oil3ZP8pvTk47er9qNx
 Xu3jPWmcy3s9JSPOMCV1s6kzK9ipbkuxoOx9Q+7LK3t2yW8/Bk5ovVwNo
 mvg96Fbpne7E6w1dTCatzJWgvEaUpB8DBndAWfy21vYxua+kdaxjtWZbc g==;
X-CSE-ConnectionGUID: YxDb/joiQQmaIkNhY4qfEw==
X-CSE-MsgGUID: oiJuBNjxTouFe5LnY8QoUg==
X-IronPort-AV: E=McAfee;i="6800,10657,11513"; a="68229267"
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="68229267"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 01:23:51 -0700
X-CSE-ConnectionGUID: uBW+rnwWT8uMOTX/rt6kew==
X-CSE-MsgGUID: TXnrODsSQmy5OWxZYHjQDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="165483033"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.43])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 01:23:49 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: nemesa.garg@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>, Animesh
 Manna <animesh.manna@intel.com>
Subject: Re: [PATCH] drm/i915/scaler: Fix WA_14011503117
In-Reply-To: <06796b24cd8fcaf992601b92dd8261a13546d22d@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250806030856.3514127-1-suraj.kandpal@intel.com>
 <06796b24cd8fcaf992601b92dd8261a13546d22d@intel.com>
Date: Wed, 06 Aug 2025 11:23:46 +0300
Message-ID: <652c33a6b7b69e9cfea511a442df9b1280da752c@intel.com>
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

On Wed, 06 Aug 2025, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Wed, 06 Aug 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
>> This introduces and uses a variable id which is just uninitialized.
>> What really needs to be used is the scaler_id.
>>
>> Fixes: 73309ed9d598 ("drm/i915/display: WA_14011503117")
>> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/skl_scaler.c | 5 +++--
>>  1 file changed, 3 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
>> index 1374fa94ff5c..cd7ebbeb9508 100644
>> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
>> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
>> @@ -959,11 +959,12 @@ void adl_scaler_ecc_unmask(const struct intel_crtc_state *crtc_state)
>>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>  	const struct intel_crtc_scaler_state *scaler_state =
>>  		&crtc_state->scaler_state;
>> -	int id;
>>  
>>  	if (!scaler_state && scaler_state->scaler_id == -1)
>
> That check does also does not make any sense.
>
> scaler_state == NULL && scaler_state->scaler_id

So scaler_state can never be NULL. The whole if statement is a
nop. Previously uninitialized stuff got written to the register, and
with the fix -1 can be written to the register.

The fix passed xe CI, but got merged before i915 CI was run. But xe CI
is meaningless here, because the code doesn't get run with xe, only
i915.


BR,
Jani.


>
> BR,
> Jani.
>
>
>>  		return;
>>  
>> -	intel_de_write_fw(display, SKL_PS_ECC_STAT(crtc->pipe, id), 1);
>> +	intel_de_write_fw(display,
>> +			  SKL_PS_ECC_STAT(crtc->pipe, scaler_state->scaler_id),
>> +			  1);
>>  	intel_de_write(display, XELPD_DISPLAY_ERR_FATAL_MASK, 0);
>>  }

-- 
Jani Nikula, Intel
