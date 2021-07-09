Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D1DD3C1E08
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jul 2021 06:16:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6C376E95B;
	Fri,  9 Jul 2021 04:16:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3456B6E95B
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Jul 2021 04:16:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10039"; a="196818544"
X-IronPort-AV: E=Sophos;i="5.84,225,1620716400"; d="scan'208";a="196818544"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2021 21:16:19 -0700
X-IronPort-AV: E=Sophos;i="5.84,225,1620716400"; d="scan'208";a="560838099"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2021 21:16:18 -0700
Date: Thu, 8 Jul 2021 21:16:16 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>
Message-ID: <20210709041616.GD951094@mdroper-desk1.amr.corp.intel.com>
References: <20210708231821.9163-1-anusha.srivatsa@intel.com>
 <20210708231821.9163-10-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210708231821.9163-10-anusha.srivatsa@intel.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 08, 2021 at 04:18:20PM -0700, Anusha Srivatsa wrote:
> Add a helper to convert the step info to string.
> This is specifically useful when we want to load a specific
> firmware for a given stepping/substepping combination.

What if we use macros to generate the per-stepping code here as well as
the stepping values in the enum?

In intel_step.h:

        #define STEPPING_NAME_LIST(func) \
                func(A0)
                func(A1)
                func(A2)
                func(B0)
                ...

        #define STEPPING_ENUM_VAL(name)  STEP_##name,

        enum intel_step {
                STEP_NONE = 0,
                STEPPING_NAME_LIST(STEPPING_ENUM_VAL)
                STEP_FUTURE,
                STEP_FOREVER,
        };

and in intel_step.c:

        #define STEPPING_NAME_CASE(name)        \
                case STEP_##name:               \
                        return #name;           \
                        break;

        const char *intel_step_name(enum intel_step step) {
                switch(step) {
                STEPPING_NAME_LIST(STEPPING_NAME_CASE)

                default:
                        return "**";
                }
        }

This has the advantage that anytime a new stepping is added (in
STEPPING_NAME_LIST) it will generate a new "STEP_XX" enum value and a
new case statement to return "XX" as the name; we won't have to remember
to update two separate places in the code.


Matt

> 
> Suggested-by: Jani Nikula <jani.nikula@linux.intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_step.c | 58 +++++++++++++++++++++++++++++++
>  drivers/gpu/drm/i915/intel_step.h |  1 +
>  2 files changed, 59 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
> index 99c0d3df001b..9af7f30b777e 100644
> --- a/drivers/gpu/drm/i915/intel_step.c
> +++ b/drivers/gpu/drm/i915/intel_step.c
> @@ -182,3 +182,61 @@ void intel_step_init(struct drm_i915_private *i915)
>  
>  	RUNTIME_INFO(i915)->step = step;
>  }
> +
> +const char *intel_step_name(enum intel_step step) {
> +	switch (step) {
> +	case STEP_A0:
> +		return "A0";
> +		break;
> +	case STEP_A1:
> +		return "A1";
> +		break;
> +	case STEP_A2:
> +		return "A2";
> +		break;
> +	case STEP_B0:
> +		return "B0";
> +		break;
> +	case STEP_B1:
> +		return "B1";
> +		break;
> +	case STEP_B2:
> +		return "B2";
> +		break;
> +	case STEP_C0:
> +		return "C0";
> +		break;
> +	case STEP_C1:
> +		return "C1";
> +		break;
> +	case STEP_D0:
> +		return "D0";
> +		break;
> +	case STEP_D1:
> +		return "D1";
> +		break;
> +	case STEP_E0:
> +		return "E0";
> +		break;
> +	case STEP_F0:
> +		return "F0";
> +		break;
> +	case STEP_G0:
> +		return "G0";
> +		break;
> +	case STEP_H0:
> +		return "H0";
> +		break;
> +	case STEP_I0:
> +		return "I0";
> +		break;
> +	case STEP_I1:
> +		return "I1";
> +		break;
> +	case STEP_J0:
> +		return "J0";
> +		break;
> +	default:
> +		return "**";
> +	}
> +}
> diff --git a/drivers/gpu/drm/i915/intel_step.h b/drivers/gpu/drm/i915/intel_step.h
> index 3e8b2babd9da..2fbe51483472 100644
> --- a/drivers/gpu/drm/i915/intel_step.h
> +++ b/drivers/gpu/drm/i915/intel_step.h
> @@ -43,5 +43,6 @@ enum intel_step {
>  };
>  
>  void intel_step_init(struct drm_i915_private *i915);
> +const char *intel_step_name(enum intel_step step);
>  
>  #endif /* __INTEL_STEP_H__ */
> -- 
> 2.32.0
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
