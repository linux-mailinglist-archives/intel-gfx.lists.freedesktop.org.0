Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48AD3752206
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jul 2023 14:58:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCEC310E176;
	Thu, 13 Jul 2023 12:58:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA30210E176
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jul 2023 12:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689253085; x=1720789085;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=raztiK+T1EW1+bkv4gk7D8sV/oPffJcYQe5cwMaGxeI=;
 b=lU7lFsL3uymK+OP/VBaxchCwDL46AvX2meQ7BRJG8hsvW5sqIh3UP64V
 pMYgTuaSGqwIeW7MqPLZMxEZUyhHWIt9Vz4MRW0O7Cy2fG3fYo+lNhH5a
 xV/QM3GVdKtyax679wXlWxicCbMwudyzSeBm7jM3Ddxcuv90wF7P3jelE
 xdZt/2P+Gcf94EtTs/vFJ2H/8MBc37zmeCmSIWl8W9EG/YO+1BHKtTzB6
 LWDOMtHx6ETFxAcEQk0o7hfukvK8eIJIL5cR5a5gVDpJSTBP6kM+eDvZP
 EvOR9KRI3bj3QqVSnVIb89+NWB6Xtch5kTkFJkwginjPq3LNuD9jMKp85 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="362638933"
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="362638933"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 05:58:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="725288036"
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="725288036"
Received: from atadj-mobl1.amr.corp.intel.com (HELO localhost) ([10.252.50.30])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 05:58:02 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>, Tvrtko Ursulin
 <tvrtko.ursulin@linux.intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Ursulin, Tvrtko"
 <tvrtko.ursulin@intel.com>
In-Reply-To: <87edlcezt4.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230616114200.3228284-12-dnyaneshwar.bhadane@intel.com>
 <20230710105815.2056018-1-dnyaneshwar.bhadane@intel.com>
 <IA1PR11MB62660C3B6D48EA16DF2E7AFFE230A@IA1PR11MB6266.namprd11.prod.outlook.com>
 <de17473e-09fa-9346-daf4-96bf12fa580c@linux.intel.com>
 <871qhcgng8.fsf@intel.com>
 <14a0d370-150b-f311-2a66-b8400163dd61@linux.intel.com>
 <IA1PR11MB6266A7A8009AC987E421EBBCE237A@IA1PR11MB6266.namprd11.prod.outlook.com>
 <6e6ba3ec-5051-400c-b05d-98ced1ffb8f7@linux.intel.com>
 <IA1PR11MB6266AE5FAB835A97C8C0349DE237A@IA1PR11MB6266.namprd11.prod.outlook.com>
 <87edlcezt4.fsf@intel.com>
Date: Thu, 13 Jul 2023 15:57:59 +0300
Message-ID: <87bkggezoo.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [v3] drm/i915/mtl: s/MTL/METEORLAKE for
 platform/subplatform defines
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

On Thu, 13 Jul 2023, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Thu, 13 Jul 2023, "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com> wrote:
>>> -----Original Message-----
>>> From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
>>> Sent: Thursday, July 13, 2023 5:55 PM
>>> To: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>; Jani Nikula
>>> <jani.nikula@linux.intel.com>; intel-gfx@lists.freedesktop.org; Ursulin,
>>> Tvrtko <tvrtko.ursulin@intel.com>
>>> Cc: Srivatsa, Anusha <anusha.srivatsa@intel.com>; Shankar, Uma
>>> <uma.shankar@intel.com>
>>> Subject: Re: [Intel-gfx] [v3] drm/i915/mtl: s/MTL/METEORLAKE for
>>> platform/subplatform defines
>>> 
>>> 
>>> On 13/07/2023 13:12, Bhadane, Dnyaneshwar wrote:
>>> >
>>> >
>>> >> -----Original Message-----
>>> >> From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
>>> >> Sent: Thursday, July 13, 2023 5:26 PM
>>> >> To: Jani Nikula <jani.nikula@linux.intel.com>; Bhadane, Dnyaneshwar
>>> >> <dnyaneshwar.bhadane@intel.com>; intel-gfx@lists.freedesktop.org;
>>> >> Ursulin, Tvrtko <tvrtko.ursulin@intel.com>
>>> >> Subject: Re: [Intel-gfx] [v3] drm/i915/mtl: s/MTL/METEORLAKE for
>>> >> platform/subplatform defines
>>> >>
>>> >>
>>> >> On 13/07/2023 10:39, Jani Nikula wrote:
>>> >>> On Thu, 13 Jul 2023, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
>>> wrote:
>>> >>>> On 10/07/2023 14:44, Bhadane, Dnyaneshwar wrote:
>>> >>>>>> -----Original Message-----
>>> >>>>>> From: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>
>>> >>>>>> Sent: Monday, July 10, 2023 4:28 PM
>>> >>>>>> To: intel-gfx@lists.freedesktop.org
>>> >>>>>> Cc: Ursulin, Tvrtko <tvrtko.ursulin@intel.com>;
>>> >>>>>> jani.nikula@linux.intel.com; Srivatsa, Anusha
>>> >>>>>> <anusha.srivatsa@intel.com>; Bhadane, Dnyaneshwar
>>> >>>>>> <dnyaneshwar.bhadane@intel.com>
>>> >>>>>> Subject: [v3] drm/i915/mtl: s/MTL/METEORLAKE for
>>> >>>>>> platform/subplatform defines
>>> >>>>>>
>>> >>>>>> Follow consistent naming convention. Replace MTL with
>>> METEORLAKE.
>>> >>>>>> Added defines that are replacing IS_MTL_GRAPHICS_STEP with
>>> >>>>>> IS_METEORLAKE_P_GRAPHICS_STEP and
>>> >> IS_METEORLAKE_M_GRAPHICS_STEP.
>>> >>>>>> Also replaced IS_METEORLAKE_MEDIA_STEP instead of
>>> >> IS_MTL_MEDIA_STEP
>>> >>>>>> and IS_METEORLAKE_DISPLAY_STEP instead of
>>> IS_MTL_DISPLAY_STEP.
>>> >>>>>>
>>> >>>>> Hi Tvrtko,
>>> >>>>> Could you please give the feedback on this ? or suggestion
>>> >>>>> regarding the
>>> >> approach.
>>> >>>>
>>> >>>> It's a step in the right direction I just wish we could do all
>>> >>>> churning in one go.
>>> >>>>
>>> >>>> Have you captured IS_CFL and IS_CML in the series? ICL? HSW? Any
>>> >>>> other I am missing?
>>> >>>>
>>> >>>> What have we concluded on Jani's suggestion to split it all to
>>> >>>> IS_<platform> && IS_<subsys>?
>>> >>>
>>> >>> IS_<platform> && IS_<step> is what I was after.
>>> >>
>>> >> Yeah I mistyped. I liked that to so would get my ack.
>>> >>
>>> >>>> If you have a) captured all IS_<tla> and b) Jani acks the series
>>> >>>> too, I guess go ahead.
>>> >>>>
>>> >>>> Hm.. what have we concluded to do with IS_JASPERLAKE_EHL?
>>> >>>
>>> >>> For sure it can't be *that*. It's JSL *or* EHL. Not subplatform.
>>> >>
>>> >> IS_ELKHARTLAKE would indeed work and platform/subplatform can be
>>> >> hidden implementation detail.
>>> >>
>>> >>>> P.S.
>>> >>>> I still think these suck though:
>>> >>>>
>>> >>>> 	if (IS_METEORLAKE_M_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
>>> >>>> 	    IS_METEORLAKE_P_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
>>> >>>
>>> >>> I still find it appealing to a) go towards shorter acronyms instead
>>> >>> of long names, and b) to separate platform and stepping checks
>>> >>> because they're orthogonal. They're only bundled together for
>>> >>> historical reasons, and to keep the conditions shorter.
>>> >>>
>>> >>> The above could be:
>>> >>>
>>> >>> 	if (IS_MTL(i915) && IS_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
>>> >>
>>> >> I'd be super pleased with that.
>>> >
>>> > Could we use the above suggestion for MTL variants for P/M? also
>>> replacing MTL with METEORLAKE.
>>> >
>>> > Using the format:  IS_FULL_PLATFORM_NAME &&
>>> IS_GRAPHICS_STEP(i915, STEP_A0, STEP_B0).
>>> >
>>> > It will change to :
>>> > 	For M:	IS_METEORLAKE_M(i915) && IS_GRAPHICS_STEP(i915,
>>> STEP_A0, STEP_B0)
>>> > 	For P:	IS_METEORLAKE_P(i915) && IS_GRAPHICS_STEP(i915,
>>> STEP_A0, STEP_B0)
>>> 
>>> You could, but you'd only get a meh from me. :) Why you'd insist to keep the
>>> two checks? Are we expecting IS_METEROLAKE_<X> at some point?
>>
>> For example FILE PATH:  drivers/gpu/drm/i915/gt/intel_workarounds.c
>>
>> Multiple occurrences of IS_MTL_GRAPHICS_STEP(i915, M/P, STEP_B0, STEP_FOREVER)
>> Where P and M are passed explicitly. That why we can not check IS_METEORLAKE()
>> as single check.
>> IS_MTL_GRAPHICS_STEP(i915, M, STEP_B0, STEP_FOREVER) ||
>> 	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_B0, STEP_FOREVER))
>>
>> The IS_GRAPHICS_STEP is generic macro and used by other platforms also. 
>> On changing the IS_GRAPHICS_STEP  only  for MTL variants is lead to affect the other 
>> platform. The IS_METEORLAKE_P(i915) or IS_METEORLAKE_M(i915) solves the problem. 
>> to differentiate the MTL platform variant.
>
> I've been trying to say all along that we've abstracted the stepping
> checks, and we no longer need macros that capture *both* the platform
> and the step ranges. They're orthogonal.
>
> If the stepping ranges to check are the same, you don't need to separate
> between MTL subplatforms. They'll both match MTL. They'll both match the
> stepping ranges, and you can use the generic stepping check.
>
> You'll need to do if
> 	((IS_MTL_M() && IS_GRAPHICS_STEP(a,b)) ||
> 	  IS_MTL_P() && IS_GRAPHICS_STEP(c,d))
>
> if a != c && b != d.

There are some cases where only _M or _P is needed, but then you'd use
the relevant subplatform check.

BR,
Jani.

>
>
> BR,
> Jani.
>
>
>
>
>>
>> Regards, 
>> Dnyaneshwar.
>>> 
>>> Regards,
>>> 
>>> Tvrtko

-- 
Jani Nikula, Intel Open Source Graphics Center
