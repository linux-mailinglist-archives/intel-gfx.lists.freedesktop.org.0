Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 23EA359F733
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 12:13:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8DC710E23C;
	Wed, 24 Aug 2022 10:13:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7906210E237
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Aug 2022 10:12:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661335968; x=1692871968;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=4UnguaPjbaLgqETWwAcwGub+kUFAsmTEzsb3Aud18D4=;
 b=Od4nqcP+7r/VFV27wywl9at4DDTgdd36XVANHU6eU70V9BqGCCCHeufT
 GL5NIQon8cb1rK5UL700MRbnIrJMK4UvXjACmtqPIb5AwLOiJVcjzK6/0
 i9uFQrkPGVdc+gHPcb5xWuBGE67t/ojZcbo/JebK75zF3W9f6YTjtPFyV
 pR+dlNrPbu3PR3O/PcSErlRzLksR7gh96LDGIsxwHCi30J2zeqXqQF2FM
 ZChb4vL3F9LiwxylMs8Tbhk68ovpvtLBe4rEviYSAu/kcTdb/oQgfVZbP
 O+G2GaRgLYJMJ1V5Gvqk7xDWQjTjy7zo13xU4VZkEVWH/ZZpsAIiz+1ug g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="280900309"
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="280900309"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2022 03:12:46 -0700
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="670441431"
Received: from zlim2-mobl.gar.corp.intel.com (HELO localhost) ([10.252.52.23])
 by fmsmga008-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Aug 2022 03:12:44 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: John Harrison <john.c.harrison@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <cf627642-c570-8d7e-071b-195e84242c4d@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1660910433.git.jani.nikula@intel.com>
 <b395ac4c909042f5daabf29959d8733993545aa2.1660910433.git.jani.nikula@intel.com>
 <cf627642-c570-8d7e-071b-195e84242c4d@intel.com>
Date: Wed, 24 Aug 2022 13:12:42 +0300
Message-ID: <877d2yj6g5.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v3 01/14] drm/i915/guc: remove runtime info
 printing from time stamp logging
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 23 Aug 2022, John Harrison <john.c.harrison@intel.com> wrote:
> On 8/19/2022 05:02, Jani Nikula wrote:
>> Commit 368d179adbac ("drm/i915/guc: Add GuC <-> kernel time stamp
>> translation information") added intel_device_info_print_runtime() in the
>> time info dump for no obvious reason or explanation in the commit
>> message. It only logs the rawclk freq. Remove it.
>>
>> Cc: John Harrison <John.C.Harrison@Intel.com>
>> Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

Thanks, this one pushed to drm-intel-gt-next.

BR,
Jani.

>
>> ---
>>   drivers/gpu/drm/i915/gt/uc/intel_guc.c | 2 --
>>   1 file changed, 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
>> index 01f2705cb94a..24451d000a6a 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
>> @@ -365,8 +365,6 @@ void intel_guc_dump_time_info(struct intel_guc *guc, struct drm_printer *p)
>>   	u32 stamp = 0;
>>   	u64 ktime;
>>   
>> -	intel_device_info_print_runtime(RUNTIME_INFO(gt->i915), p);
>> -
>>   	with_intel_runtime_pm(&gt->i915->runtime_pm, wakeref)
>>   		stamp = intel_uncore_read(gt->uncore, GUCPMTIMESTAMP);
>>   	ktime = ktime_get_boottime_ns();
>

-- 
Jani Nikula, Intel Open Source Graphics Center
