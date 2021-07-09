Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D244C3C28BD
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jul 2021 19:52:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48FD26E910;
	Fri,  9 Jul 2021 17:52:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 446796E910
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Jul 2021 17:52:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10039"; a="209785442"
X-IronPort-AV: E=Sophos;i="5.84,227,1620716400"; d="scan'208";a="209785442"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2021 10:52:52 -0700
X-IronPort-AV: E=Sophos;i="5.84,227,1620716400"; d="scan'208";a="499445747"
Received: from kfurushx-mobl1.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.215.94])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2021 10:52:51 -0700
Date: Fri, 9 Jul 2021 10:52:50 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20210709175250.zzw62bgkmsrihqm7@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20210708231821.9163-1-anusha.srivatsa@intel.com>
 <20210708231821.9163-10-anusha.srivatsa@intel.com>
 <20210709041616.GD951094@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210709041616.GD951094@mdroper-desk1.amr.corp.intel.com>
Subject: Re: [Intel-gfx] [PATCH 09/10] drm/i915/step: Add intel_step_name()
 helper
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 08, 2021 at 09:16:16PM -0700, Matt Roper wrote:
>On Thu, Jul 08, 2021 at 04:18:20PM -0700, Anusha Srivatsa wrote:
>> Add a helper to convert the step info to string.
>> This is specifically useful when we want to load a specific
>> firmware for a given stepping/substepping combination.
>
>What if we use macros to generate the per-stepping code here as well as
>the stepping values in the enum?
>
>In intel_step.h:
>
>        #define STEPPING_NAME_LIST(func) \
>                func(A0)
>                func(A1)
>                func(A2)
>                func(B0)
>                ...
>
>        #define STEPPING_ENUM_VAL(name)  STEP_##name,
>
>        enum intel_step {
>                STEP_NONE = 0,
>                STEPPING_NAME_LIST(STEPPING_ENUM_VAL)
>                STEP_FUTURE,
>                STEP_FOREVER,
>        };
>
>and in intel_step.c:
>
>        #define STEPPING_NAME_CASE(name)        \
>                case STEP_##name:               \
>                        return #name;           \
>                        break;
>
>        const char *intel_step_name(enum intel_step step) {
>                switch(step) {
>                STEPPING_NAME_LIST(STEPPING_NAME_CASE)
>
>                default:
>                        return "**";
>                }
>        }
>
>This has the advantage that anytime a new stepping is added (in
>STEPPING_NAME_LIST) it will generate a new "STEP_XX" enum value and a
>new case statement to return "XX" as the name; we won't have to remember
>to update two separate places in the code.

my other idea in the first iterations of this patch was to turn the
stepping into u16 and then do something like (untested crap code below):

	#define make_step(a, b)	((a - 'A') << 8, (b - '0'))

	#define intel_step_name(s) ({
		char ret[3];
		ret[0] = ((s) >> 8) + 'A';
		ret[1] = ((s) & 0xff) + '0';
		ret[2] = '\0';
		ret;
	})

	enum intel_step {
		STEP_NONE = -1,
		STEP_A0 = make_step('A', '0'),
		...
	}

Or even not bother with the 'A'/'0' addition/subraction since 8 bits is
enough for all the letters and numbers.

If we keep it u8, then we are limited to step P7 (assuming we have 2
reserved entries at the end),. It may or may not be sufficient (it
currently is)

better? worse?

Lucas De Marchi

>
>
>Matt
>
>>
>> Suggested-by: Jani Nikula <jani.nikula@linux.intel.com>
>> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/intel_step.c | 58 +++++++++++++++++++++++++++++++
>>  drivers/gpu/drm/i915/intel_step.h |  1 +
>>  2 files changed, 59 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
>> index 99c0d3df001b..9af7f30b777e 100644
>> --- a/drivers/gpu/drm/i915/intel_step.c
>> +++ b/drivers/gpu/drm/i915/intel_step.c
>> @@ -182,3 +182,61 @@ void intel_step_init(struct drm_i915_private *i915)
>>
>>  	RUNTIME_INFO(i915)->step = step;
>>  }
>> +
>> +const char *intel_step_name(enum intel_step step) {
>> +	switch (step) {
>> +	case STEP_A0:
>> +		return "A0";
>> +		break;
>> +	case STEP_A1:
>> +		return "A1";
>> +		break;
>> +	case STEP_A2:
>> +		return "A2";
>> +		break;
>> +	case STEP_B0:
>> +		return "B0";
>> +		break;
>> +	case STEP_B1:
>> +		return "B1";
>> +		break;
>> +	case STEP_B2:
>> +		return "B2";
>> +		break;
>> +	case STEP_C0:
>> +		return "C0";
>> +		break;
>> +	case STEP_C1:
>> +		return "C1";
>> +		break;
>> +	case STEP_D0:
>> +		return "D0";
>> +		break;
>> +	case STEP_D1:
>> +		return "D1";
>> +		break;
>> +	case STEP_E0:
>> +		return "E0";
>> +		break;
>> +	case STEP_F0:
>> +		return "F0";
>> +		break;
>> +	case STEP_G0:
>> +		return "G0";
>> +		break;
>> +	case STEP_H0:
>> +		return "H0";
>> +		break;
>> +	case STEP_I0:
>> +		return "I0";
>> +		break;
>> +	case STEP_I1:
>> +		return "I1";
>> +		break;
>> +	case STEP_J0:
>> +		return "J0";
>> +		break;
>> +	default:
>> +		return "**";
>> +	}
>> +}
>> diff --git a/drivers/gpu/drm/i915/intel_step.h b/drivers/gpu/drm/i915/intel_step.h
>> index 3e8b2babd9da..2fbe51483472 100644
>> --- a/drivers/gpu/drm/i915/intel_step.h
>> +++ b/drivers/gpu/drm/i915/intel_step.h
>> @@ -43,5 +43,6 @@ enum intel_step {
>>  };
>>
>>  void intel_step_init(struct drm_i915_private *i915);
>> +const char *intel_step_name(enum intel_step step);
>>
>>  #endif /* __INTEL_STEP_H__ */
>> --
>> 2.32.0
>>
>> _______________________________________________
>> Intel-gfx mailing list
>> Intel-gfx@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
>
>-- 
>Matt Roper
>Graphics Software Engineer
>VTT-OSGC Platform Enablement
>Intel Corporation
>(916) 356-2795
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
