Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C4856402CB
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Dec 2022 10:01:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6B7E10E6B0;
	Fri,  2 Dec 2022 09:01:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4DAB10E6B1
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Dec 2022 09:01:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669971675; x=1701507675;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=AeDoNJcY5pk+HUxR/D+iGswbJMPMfdYpojl+pjWRD24=;
 b=Lb8duQtsgu3Fc/CXFlmqyRCk3D7q8Ho3nqKlrN9zEMRBjg2VQDwnSuby
 kmKxqkJOTpY0JkrAhTSTOJ1tTX+iTpJJpcUoGOjm67WGuzO5R8F+cmMa/
 XoakHH3CcqmNM2MzbJa2dMdhw1vic+3c6I3dVFELPNY2Di2bnVhFExQd6
 qVXCqLKjtSx85Nnx2R8I9GkCxTESPxno3gKsMYZpR8ztm2vj/gbbkb+Gt
 edezPEDxhLVeoHn/TS+5eP0OfkioHajN+4Ej89Z8rq44e3QZigrN8eFax
 GmIo8To5yYyNvbpFjUyOLOHcsUBN8dxKw14IUd4O/FyGXOCqXXSyFQyJE Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="380200202"
X-IronPort-AV: E=Sophos;i="5.96,210,1665471600"; d="scan'208";a="380200202"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2022 01:00:03 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="644963899"
X-IronPort-AV: E=Sophos;i="5.96,210,1665471600"; d="scan'208";a="644963899"
Received: from macematx-mobl1.ger.corp.intel.com (HELO [10.213.211.34])
 ([10.213.211.34])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2022 01:00:01 -0800
Message-ID: <3fcf71b9-337f-6186-7b00-27cbfd116743@linux.intel.com>
Date: Fri, 2 Dec 2022 08:59:59 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
References: <20221130231709.4870-1-matthew.s.atwood@intel.com>
 <20221130231709.4870-2-matthew.s.atwood@intel.com>
 <d4adadc3-6426-ff25-d6ac-79662414ccbb@linux.intel.com>
 <20221201172307.u5z2vcg2ce4344iv@ldmartin-desk2.lan>
 <Y4k3jt4N2oWeVZKN@mdroper-desk1.amr.corp.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <Y4k3jt4N2oWeVZKN@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/mtl: Add initial gt workarounds
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


On 01/12/2022 23:23, Matt Roper wrote:
> On Thu, Dec 01, 2022 at 09:23:07AM -0800, Lucas De Marchi wrote:
>> On Thu, Dec 01, 2022 at 01:15:35PM +0000, Tvrtko Ursulin wrote:
>>>
>>> On 30/11/2022 23:17, Matt Atwood wrote:
>>>> From: Matt Roper <matthew.d.roper@intel.com>
>>>>
>>>> This patch introduces initial workarounds for mtl platform
>>>>
>>>> Bspec:66622
>>>>
>>>> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
>>>> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>>>> ---
>>>>   drivers/gpu/drm/i915/gt/intel_engine_cs.c     |   4 +-
>>>>   .../drm/i915/gt/intel_execlists_submission.c  |   4 +-
>>>>   drivers/gpu/drm/i915/gt/intel_gt_mcr.c        |  11 +-
>>>>   drivers/gpu/drm/i915/gt/intel_gt_regs.h       |   5 +
>>>>   drivers/gpu/drm/i915/gt/intel_workarounds.c   | 105 +++++++++++++-----
>>>>   drivers/gpu/drm/i915/gt/uc/intel_guc.c        |   9 +-
>>>>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  10 +-
>>>>   drivers/gpu/drm/i915/i915_drv.h               |   4 +
>>>>   drivers/gpu/drm/i915/intel_device_info.c      |   6 +
>>>>   9 files changed, 121 insertions(+), 37 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>>>> index c33e0d72d670..af88d8ab61c1 100644
>>>> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>>>> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>>>> @@ -1479,7 +1479,9 @@ static int __intel_engine_stop_cs(struct intel_engine_cs *engine,
>>>>   	 * Wa_22011802037 : gen11, gen12, Prior to doing a reset, ensure CS is
>>>>   	 * stopped, set ring stop bit and prefetch disable bit to halt CS
>>>>   	 */
>>>> -	if (IS_GRAPHICS_VER(engine->i915, 11, 12))
>>>> +	if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
>>>> +	    (GRAPHICS_VER(engine->i915) >= 11 &&
>>>> +	    GRAPHICS_VER_FULL(engine->i915) < IP_VER(12, 70)))
>>>
>>> Does comment need updating to reflect the workaround applicability?
>>> Elsewhere as well. Some are left as dg2 only. Some gen11,gen12 only.
>>>
>>> Then there's a few of this same change logic throught the patch, so I
>>> assume a general situation of workarounds applying to only early MTL.
>>>
>>> if ((IS_GRAPHICS_VER(engine->i915, 11, 12)) &&
>>>      !IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_B1, STEP_FOREVER)
>>>
>>> Would this be correct and simpler? Not sure about STEP_B1 for start of
>>
>> should be STEP_B0 if doing this. The stepping check is inclusive on the
>> left, exclusive on the right, i.e:  [STEP_A0, STEP_B0).
>>
>> But even if the check is simpler, I'd avoid doing a negative check to
>> maintain consistency.
> 
> Agreed; if you have access to the internal workaround database, you can
> query a list of which platforms/steppings a given workaround applies to
> and get a list that basically lays things out something like
> 
>    Wa_XXXXXXXX:
>      MTL:        [a0..b0)
>      PVC:        not needed
>      DG2-G10:    [b1..c3)
>      DG2-G11:    [a0..a2)
>      XEHPSDV:    all steppings
>      ADL-P:      not needed
>      ...
> 
> Even if the code condition has a bunch of arms, it should translate
> pretty clearly to what's in the workaround database, so it's easier to
> audit and make sure we aren't missing anything.  With all the platforms
> we have these days, negative tests make it a lot harder to verify (and
> in your example here would cause problems if we get something like a new
> 12.80 or 12.90 platform down the road...presumably those wouldn't want
> this workaround either, but wouldn't be captured properly).
> 
> The corollary of that is that we should be really careful about using
> range checks like IS_GRAPHICS_VER() that only compare the major version
> number.  If we aren't sure we've fully moved past the upper end of the
> range, there's a possibility that new platforms may show up that
> shouldn't be included in that range (as MTL did in this case, breaking
> our "applies to all 11.x and 12.x" assumption).

Yeah okay, perhaps it is just a mix of major and full ver check which 
looked a bit naff in the code to me, and the unfortunate fact the 
workaround ends in the middle (stepping wise) of a part/major gen.

On the topic of comments ("/* Wa_16012604467:adlp,mtl[a0,b0] */" and 
such) and code getting out of sync - lets tidy that up. Either it's 
always correct (in sync), or it's completely removed. Having a mix is 
just bad an pointless.

If the tool you guys use to query the database can output the 
"Wa_NNNNNN:xxx,yyy,zzz" format, I'd say keep the comments (and fix them 
up) because then that is the reference which *can* be useful when 
reviewing and spotting things like (oh you've inverted the logic when 
adding the new platform). But if the tool can no to that then just drop 
the platform list from them? Although I am kind of hoping the tool can 
output that info and it's useful to have them sprinkled around the code.

Regards,

Tvrtko
