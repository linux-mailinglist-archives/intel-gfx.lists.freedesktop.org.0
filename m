Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD5664ECA84
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Mar 2022 19:25:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC78B10E166;
	Wed, 30 Mar 2022 17:25:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08CF610E166
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Mar 2022 17:25:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648661107; x=1680197107;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=BR6Vd3IGVohwqiOXtOyNMN7umf7jTap4yG38+uq5Ds0=;
 b=H7QrA1xgspB0vYJHO5rZG7oCRvB+eODCpsXRE5ZAXhMrQ5KoIBDcPC41
 ae6t2lqIshNPDxec4ZTjQn7Hvr5hANYcQ1zVIUiJZZ4Zs74oIw8KUIHQL
 jpiNEYchGgIYeSn4JsaPPJrwfBGMW+GeJ1AWunSVHNGmLrBf/WZJ9fbK3
 0A91bFsboaGKKCFki7oTG0lJC6SfMCp6E2KJz/xhZQaHy3Do1ZWnZhCVT
 e++td6iJB3tYZGKY+IvZ8+9Ju0eCv6aj+ldVpPPUnqAVwUGCMczV0UKyE
 7tbxVIWPddFcNLI0EO9CZDXgaPFmxOk14G3S5bBll4AFHBioFysXX+7UW w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="247101029"
X-IronPort-AV: E=Sophos;i="5.90,223,1643702400"; d="scan'208";a="247101029"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 10:25:06 -0700
X-IronPort-AV: E=Sophos;i="5.90,223,1643702400"; d="scan'208";a="565667457"
Received: from nhanus-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.62.116])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 10:25:04 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Casey Bowman <casey.g.bowman@intel.com>, Tvrtko Ursulin
 <tvrtko.ursulin@linux.intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <dc652e22-913e-3a18-8062-202629c54b33@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220329235830.1025100-1-casey.g.bowman@intel.com>
 <20220329235830.1025100-2-casey.g.bowman@intel.com>
 <b468e1b1-0d7e-6384-77db-b0d1519539c4@linux.intel.com>
 <dc652e22-913e-3a18-8062-202629c54b33@intel.com>
Date: Wed, 30 Mar 2022 20:25:01 +0300
Message-ID: <878rsrbbf6.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v3 1/2] drm/i915/gt: Split intel-gtt
 functions by arch
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
Cc: thomas.hellstrom@linux.intel.com, lucas.demarchi@intel.com,
 chris@chris-wilson.co.uk
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 30 Mar 2022, Casey Bowman <casey.g.bowman@intel.com> wrote:
> On 3/30/22 02:55, Tvrtko Ursulin wrote:
>> I mean I could suggest to do something about the incosistency of:
>>
>> static inline void intel_gt_gmch_gen5_chipset_flush(struct intel_gt *gt)
>>
>> vs:
>>
>> static inline int intel_gt_gmch_gen5_probe(struct i915_ggtt *ggtt)
>>
>> Since I value more for function name to tell me on what it operates 
>> instead where it is placed. So I'd personally rename the second class 
>> to i915_ggtt. It would also be consistent with other exported 
>> functions which take struct i915_ggtt like i915_ggtt_enable_guc, 
>> i915_ggtt_resume and so. But opinions will differ so I can live with 
>> it as is as well.
>>
>
> @Jani/Lucas, do you guys have any opinion on changing the prefix to a 
> functionality-based name over location-based?
>
> If we have any standard we're trying to adhere to here, I can change it 
> for the standard.
> I'd like to make everyone happy, if possible. :P

For display code I'm pretty strongly in favour of file name based symbol
prefixes. And basically a file should be a collection of related
functionality around a theme, so in that sense it's not merely location
based. Indeed the file name should be functionality based!

Also for display code we tend to have tons of functions that take
similar first (context) parameters, everywhere, and we also change the
parameters being passed while refactoring. It would be counter
productive to name the functions based on the first parameter.

Random example, display/intel_dp.h, it's all about display port, almost
all functions are named intel_dp_*, but if they were named by first
parameter, we'd have intel_dp, intel_encoder, intel_atomic_state,
drm_i915_private, intel_crtc_state, intel_digital_port, etc. It's the
intel_dp that best describes them as a group, so that's in the file and
function names.

Now, I'm not going to put my foot down on gem or gt stuff, but I
*personally* find the logic there confusing.


BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
