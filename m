Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0D57522E12
	for <lists+intel-gfx@lfdr.de>; Wed, 11 May 2022 10:18:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8228F10ECD5;
	Wed, 11 May 2022 08:18:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 612F510ECD5
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 May 2022 08:18:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652257090; x=1683793090;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=wccXgDTX5W0Ute0ZbcBSxcumFHp/jDhOsdpJVCLaaIU=;
 b=G+Bt9Tme80Xqw9IvhOeexeP+aO5b7Aosy/r6YlElRgz2HRTFJxtubUUC
 4/bdH4lObw5R5Pf0cW6nIgcCV5EaRgxHh7c1zPSA3iW5SbVuuz8e+EnBa
 2TP2u7jUUqKRXqe5A86uMa9pTK5F2uGTXoJknmwI2U0NOslVVJLfze1mF
 OafhA0dC1SH+JzK0MH6JFnHbAvk46YSaYZVzPQq6o0d+8JjOnetfjSBQ9
 2AVBmS7ttXVmt9ziG+kmUGrF/KmIzc1rKT/HBAaTKhec2F8wvuFl7VZ+q
 i/icS4K3o+4RzPFnPpnAIAJ1PmZ3vYmaqD8wWpHgoiBr9Zq0aRnvCZ/kF Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10343"; a="251680031"
X-IronPort-AV: E=Sophos;i="5.91,216,1647327600"; d="scan'208";a="251680031"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2022 01:18:09 -0700
X-IronPort-AV: E=Sophos;i="5.91,216,1647327600"; d="scan'208";a="520421846"
Received: from mmlucey-mobl1.ger.corp.intel.com (HELO [10.213.195.130])
 ([10.213.195.130])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2022 01:18:09 -0700
Message-ID: <a52328ef-8aea-5e15-b117-51fdbab391be@linux.intel.com>
Date: Wed, 11 May 2022 09:18:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>,
 Jani Nikula <jani.nikula@intel.com>
References: <cover.1651261886.git.ashutosh.dixit@intel.com>
 <2d170de1b4cbbd670c90d963d2cc229426ead492.1651261886.git.ashutosh.dixit@intel.com>
 <57e2a444-714d-13bc-133b-0cb3e6cc9fdc@linux.intel.com>
 <87a6bpkf32.fsf@intel.com> <87ilqc7i7s.wl-ashutosh.dixit@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <87ilqc7i7s.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 3/8] drm/i915/pcode: Extend pcode functions
 for multiple gt's
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 11/05/2022 06:26, Dixit, Ashutosh wrote:
> On Tue, 10 May 2022 00:43:29 -0700, Jani Nikula wrote:
>> On Tue, 10 May 2022, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
>>> On 29/04/2022 20:56, Ashutosh Dixit wrote:
>>>> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
>>>> index 90b0ce5051af..bc49eff38c6a 100644
>>>> --- a/drivers/gpu/drm/i915/i915_driver.c
>>>> +++ b/drivers/gpu/drm/i915/i915_driver.c
>>>> @@ -520,6 +520,22 @@ static int i915_set_dma_info(struct drm_i915_private *i915)
>>>> 	return ret;
>>>>    }
>>>>
>>>> +static int i915_pcode_init(struct drm_i915_private *i915)
>>>> +{
>>>> +	struct intel_gt *gt;
>>>> +	int id, ret;
>>>> +
>>>> +	for_each_gt(gt, i915, id) {
>>>> +		ret = intel_pcode_init(gt->uncore);
>>>> +		if (ret) {
>>>> +			drm_err(&gt->i915->drm, "gt %d: intel_pcode_init failed %d\n", id, ret);
>>>
>>> A few nits..
>>>
>>> 1) All other/current logs use "gt%d" (no space).
>>>
>>> 2) intel_pcode_init also logs a drm_err - do we need two? I suggest
>>> leaving this one only since it has more information.
>>>
>>> 3) It would have been nicer to have refactoring of intel_pcode_ to work
>>> on uncore separate from adding for_each_gt.
>>
>> Yeah.
>>
>> Also the obvious first patch would've been to convert intel_pcode.c
>> functions from struct drm_i915_private * to intel_uncore *.
> 
> Will fix up the first 2 points but about this last point, to not break
> incremental compile all callers of the pcode functions also need to be
> converted to i915->uncore or gt->uncore (so it's not possible to convert
> just intel_pcode.c functions without also converting all callers, if that
> was the intent of this comment, unless I am missing something).

Yes the implication is to convert the callers when doing such 
conversion, we never do broken commits.

> But yes the i915_pcode_init() above can be separated out to a separate
> patch so I can do that.

AFAIR that will achieve what is suggested, thanks!

Regards,

Tvrtko
