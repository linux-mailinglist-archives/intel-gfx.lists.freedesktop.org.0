Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91E95B1D54D
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Aug 2025 11:57:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8523610E807;
	Thu,  7 Aug 2025 09:57:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LnQO7xex";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A699410E807
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Aug 2025 09:57:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754560631; x=1786096631;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=TSIAOVIBcsLUcp2GhtAQn0uyqLfb7mODLC3fZWY46oQ=;
 b=LnQO7xex0VWTZCvj2XCEWb/0dI9O7c5zcuNqBUvSllqWv+A1jKCSZVIx
 EqMvWs0Jcn19RtEMxVIRypkZh4tdEr57/7w/lg1yh2AXbUY4d5azhY97q
 IfS0vbAxke9jvT2wXUcAUeQZVi88CBJOKMfgsg1nPx9JjimMVhqA+t31L
 Z5Fklkuq90PnB2KEdIPQcfOrPmE+E2NsNqrhdewpz+Y6jBN4a6fB4fHnP
 /J83bqNy8ycrNrPLl+kWm8diQOY0EWEmMPPKr2xnm/W3RvCFRHZblKU5Z
 A/Siq2GPiR+IgFUmEHWPkz0kVRzdhPJI1GzelcM37kALI2nMwDWM8j6wh Q==;
X-CSE-ConnectionGUID: oiWlJ0/MQFOeXfl7PW6IHw==
X-CSE-MsgGUID: wwUTJxKmQ4eTZqPtvd8qFQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="68266811"
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="68266811"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 02:57:10 -0700
X-CSE-ConnectionGUID: Ye/is9+bSNC6ku8NVCUn7g==
X-CSE-MsgGUID: NjHl63OBRGWf9SgHA4PwTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="196009077"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.96])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 02:57:08 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>, "Garg, Nemesa"
 <nemesa.garg@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Cc: "Garg, Nemesa" <nemesa.garg@intel.com>
Subject: RE: [PATCH] drm/i915/scaler: Fix for WA_14011503117
In-Reply-To: <DM3PPF208195D8DE1EF756F38B634FBF9BCE32CA@DM3PPF208195D8D.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250806101930.2969802-1-nemesa.garg@intel.com>
 <DM3PPF208195D8DE1EF756F38B634FBF9BCE32CA@DM3PPF208195D8D.namprd11.prod.outlook.com>
Date: Thu, 07 Aug 2025 12:57:05 +0300
Message-ID: <df0adbad51530c1da1fcd23ccb06b5158e013738@intel.com>
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

On Thu, 07 Aug 2025, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
>> Subject: [PATCH] drm/i915/scaler: Fix for WA_14011503117
>
> We already have a commit with that name don't really want many commits with the same subject
>
>> 
>> Remove the redundant check statement.
>
> The is statement is not redundant just wrong will need to fix the commit description
>
>> 
>> v2: Add scaler_id check [Jani]
>> 
>> Fixes: 73309ed9d598 ("drm/i915/display: WA_14011503117")
>> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/skl_scaler.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c
>> b/drivers/gpu/drm/i915/display/skl_scaler.c
>> index cd7ebbeb9508..6891a0b00f41 100644
>> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
>> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
>> @@ -960,7 +960,7 @@ void adl_scaler_ecc_unmask(const struct
>> intel_crtc_state *crtc_state)
>>  	const struct intel_crtc_scaler_state *scaler_state =
>>  		&crtc_state->scaler_state;
>> 
>> -	if (!scaler_state && scaler_state->scaler_id == -1)
>> +	if (scaler_state->scaler_id == -1)
>
> Hmm but what if scaler_state ends up being null now

It can't be NULL.

>
> This should have been scaler_state && scaler_state->scaler_id ==
> Also please add people who had bought this issue up in cc to keep them in loop in this case that would be Jani.
> It's very easy to miss fixes like this in all the mails that end up getting sent upstream more so if they are not cc'ed
>
> Regards,
> Suraj Kandpal
>>  		return;
>> 
>>  	intel_de_write_fw(display,
>> --
>> 2.25.1
>

-- 
Jani Nikula, Intel
