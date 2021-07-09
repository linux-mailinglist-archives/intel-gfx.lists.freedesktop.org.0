Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8348D3C2913
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jul 2021 20:36:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB2BD6EA14;
	Fri,  9 Jul 2021 18:36:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5025B6EA14
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Jul 2021 18:36:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10039"; a="231521442"
X-IronPort-AV: E=Sophos;i="5.84,227,1620716400"; d="scan'208";a="231521442"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2021 11:36:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,227,1620716400"; d="scan'208";a="628948991"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga005.jf.intel.com with ESMTP; 09 Jul 2021 11:36:10 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 9 Jul 2021 11:36:09 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 9 Jul 2021 11:36:09 -0700
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.2242.010;
 Fri, 9 Jul 2021 11:36:09 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 09/10] drm/i915/step: Add intel_step_name()
 helper
Thread-Index: AQHXdE+P1J5/+5DhSkutHHH9wrExlKs6fwsAgADkJgD//5ZhkA==
Date: Fri, 9 Jul 2021 18:36:09 +0000
Message-ID: <a6c1edd1e8ee4bce91cfc2c488ea77e9@intel.com>
References: <20210708231821.9163-1-anusha.srivatsa@intel.com>
 <20210708231821.9163-10-anusha.srivatsa@intel.com>
 <20210709041616.GD951094@mdroper-desk1.amr.corp.intel.com>
 <20210709175250.zzw62bgkmsrihqm7@ldmartin-desk2>
In-Reply-To: <20210709175250.zzw62bgkmsrihqm7@ldmartin-desk2>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: De Marchi, Lucas <lucas.demarchi@intel.com>
> Sent: Friday, July 9, 2021 10:53 AM
> To: Roper, Matthew D <matthew.d.roper@intel.com>
> Cc: Srivatsa, Anusha <anusha.srivatsa@intel.com>; intel-
> gfx@lists.freedesktop.org; Jani Nikula <jani.nikula@linux.intel.com>
> Subject: Re: [Intel-gfx] [PATCH 09/10] drm/i915/step: Add intel_step_name()
> helper
> 
> On Thu, Jul 08, 2021 at 09:16:16PM -0700, Matt Roper wrote:
> >On Thu, Jul 08, 2021 at 04:18:20PM -0700, Anusha Srivatsa wrote:
> >> Add a helper to convert the step info to string.
> >> This is specifically useful when we want to load a specific firmware
> >> for a given stepping/substepping combination.
> >
> >What if we use macros to generate the per-stepping code here as well as
> >the stepping values in the enum?
> >
> >In intel_step.h:
> >
> >        #define STEPPING_NAME_LIST(func) \
> >                func(A0)
> >                func(A1)
> >                func(A2)
> >                func(B0)
> >                ...
> >
> >        #define STEPPING_ENUM_VAL(name)  STEP_##name,
> >
> >        enum intel_step {
> >                STEP_NONE = 0,
> >                STEPPING_NAME_LIST(STEPPING_ENUM_VAL)
> >                STEP_FUTURE,
> >                STEP_FOREVER,
> >        };
> >
> >and in intel_step.c:
> >
> >        #define STEPPING_NAME_CASE(name)        \
> >                case STEP_##name:               \
> >                        return #name;           \
> >                        break;
> >
> >        const char *intel_step_name(enum intel_step step) {
> >                switch(step) {
> >                STEPPING_NAME_LIST(STEPPING_NAME_CASE)
> >
> >                default:
> >                        return "**";
> >                }
> >        }
> >
> >This has the advantage that anytime a new stepping is added (in
> >STEPPING_NAME_LIST) it will generate a new "STEP_XX" enum value and a
> >new case statement to return "XX" as the name; we won't have to
> >remember to update two separate places in the code.
> 
> my other idea in the first iterations of this patch was to turn the stepping into
> u16 and then do something like (untested crap code below):
> 
> 	#define make_step(a, b)	((a - 'A') << 8, (b - '0'))
> 
> 	#define intel_step_name(s) ({
> 		char ret[3];
> 		ret[0] = ((s) >> 8) + 'A';
> 		ret[1] = ((s) & 0xff) + '0';
> 		ret[2] = '\0';
> 		ret;
> 	})
> 
> 	enum intel_step {
> 		STEP_NONE = -1,
> 		STEP_A0 = make_step('A', '0'),
> 		...
> 	}
> 
> Or even not bother with the 'A'/'0' addition/subraction since 8 bits is enough
> for all the letters and numbers.
> 
> If we keep it u8, then we are limited to step P7 (assuming we have 2
> reserved entries at the end),. It may or may not be sufficient (it currently is)
> 
> better? worse?

I feel If Matt's solution is more scalable, better to go with it.

Anusha
> Lucas De Marchi
> 
> >
> >
> >Matt
> >
> >>
> >> Suggested-by: Jani Nikula <jani.nikula@linux.intel.com>
> >> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/intel_step.c | 58
> >> +++++++++++++++++++++++++++++++
> drivers/gpu/drm/i915/intel_step.h |
> >> 1 +
> >>  2 files changed, 59 insertions(+)
> >>
> >> diff --git a/drivers/gpu/drm/i915/intel_step.c
> >> b/drivers/gpu/drm/i915/intel_step.c
> >> index 99c0d3df001b..9af7f30b777e 100644
> >> --- a/drivers/gpu/drm/i915/intel_step.c
> >> +++ b/drivers/gpu/drm/i915/intel_step.c
> >> @@ -182,3 +182,61 @@ void intel_step_init(struct drm_i915_private
> >> *i915)
> >>
> >>  	RUNTIME_INFO(i915)->step = step;
> >>  }
> >> +
> >> +const char *intel_step_name(enum intel_step step) {
> >> +	switch (step) {
> >> +	case STEP_A0:
> >> +		return "A0";
> >> +		break;
> >> +	case STEP_A1:
> >> +		return "A1";
> >> +		break;
> >> +	case STEP_A2:
> >> +		return "A2";
> >> +		break;
> >> +	case STEP_B0:
> >> +		return "B0";
> >> +		break;
> >> +	case STEP_B1:
> >> +		return "B1";
> >> +		break;
> >> +	case STEP_B2:
> >> +		return "B2";
> >> +		break;
> >> +	case STEP_C0:
> >> +		return "C0";
> >> +		break;
> >> +	case STEP_C1:
> >> +		return "C1";
> >> +		break;
> >> +	case STEP_D0:
> >> +		return "D0";
> >> +		break;
> >> +	case STEP_D1:
> >> +		return "D1";
> >> +		break;
> >> +	case STEP_E0:
> >> +		return "E0";
> >> +		break;
> >> +	case STEP_F0:
> >> +		return "F0";
> >> +		break;
> >> +	case STEP_G0:
> >> +		return "G0";
> >> +		break;
> >> +	case STEP_H0:
> >> +		return "H0";
> >> +		break;
> >> +	case STEP_I0:
> >> +		return "I0";
> >> +		break;
> >> +	case STEP_I1:
> >> +		return "I1";
> >> +		break;
> >> +	case STEP_J0:
> >> +		return "J0";
> >> +		break;
> >> +	default:
> >> +		return "**";
> >> +	}
> >> +}
> >> diff --git a/drivers/gpu/drm/i915/intel_step.h
> >> b/drivers/gpu/drm/i915/intel_step.h
> >> index 3e8b2babd9da..2fbe51483472 100644
> >> --- a/drivers/gpu/drm/i915/intel_step.h
> >> +++ b/drivers/gpu/drm/i915/intel_step.h
> >> @@ -43,5 +43,6 @@ enum intel_step {
> >>  };
> >>
> >>  void intel_step_init(struct drm_i915_private *i915);
> >> +const char *intel_step_name(enum intel_step step);
> >>
> >>  #endif /* __INTEL_STEP_H__ */
> >> --
> >> 2.32.0
> >>
> >> _______________________________________________
> >> Intel-gfx mailing list
> >> Intel-gfx@lists.freedesktop.org
> >> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> >
> >--
> >Matt Roper
> >Graphics Software Engineer
> >VTT-OSGC Platform Enablement
> >Intel Corporation
> >(916) 356-2795
> >_______________________________________________
> >Intel-gfx mailing list
> >Intel-gfx@lists.freedesktop.org
> >https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
