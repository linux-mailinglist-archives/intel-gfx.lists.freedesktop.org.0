Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8981E9EC968
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2024 10:44:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75E9B10E182;
	Wed, 11 Dec 2024 09:44:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n/FMKrEP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3097710E130;
 Wed, 11 Dec 2024 09:44:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733910246; x=1765446246;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=xyxz44zCLySZbQv/ExcGDAuWOwvuWBXQVsRzweT31WY=;
 b=n/FMKrEPMHRd4cXQKaXdZpfI6jwXViJvCpbFmlXprybcyg1hba2tm/Di
 JOwjB6TuOMBjI6gAZveSlxuzeMgxnNzx3ax7D1vFEQADr1aVTbBy9eaKc
 FU0iEw6SUo7iKNC05+umZv1LAyFcSGGjMaJhHnEMueVObwP1kCZQE5d/L
 53mYtatauzIfXcBNYUW30iFXY2gzo/rnqEhaNsw9eT/SW6uQckkhZ7Fup
 IkBRlBz28vyFgMrofU8Hoe79m2xlKKEIFB78xxiAxKgyqtyJBEb/zYx0y
 zUNfOmafRbIL6K8j5k+AXV5WOcWtOEHamITY8SbG7763RRw6MR3h2zu99 g==;
X-CSE-ConnectionGUID: IJk0rIruQ1yHWEuYSePUGw==
X-CSE-MsgGUID: PbvTCx8+TWGLg9yMQnYXIA==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="37117361"
X-IronPort-AV: E=Sophos;i="6.12,225,1728975600"; d="scan'208";a="37117361"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2024 01:44:06 -0800
X-CSE-ConnectionGUID: fWDkq7oNSumFKiqj8ahUlg==
X-CSE-MsgGUID: b7rprvGjSq68BX4YKGwuCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,225,1728975600"; d="scan'208";a="100779523"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.44])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2024 01:44:03 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/display: clean up DP Adaptive Sync SDP state
 mismatch logging
In-Reply-To: <IA1PR11MB6348052818546C6E313CAD60B23D2@IA1PR11MB6348.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241205093042.3028608-1-jani.nikula@intel.com>
 <IA1PR11MB6348052818546C6E313CAD60B23D2@IA1PR11MB6348.namprd11.prod.outlook.com>
Date: Wed, 11 Dec 2024 11:44:00 +0200
Message-ID: <87v7vqy2ov.fsf@intel.com>
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

On Tue, 10 Dec 2024, "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com> wrote:
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Jani
>> Nikula
>> Sent: 05 December 2024 15:01
>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: Nikula, Jani <jani.nikula@intel.com>
>> Subject: [PATCH] drm/i915/display: clean up DP Adaptive Sync SDP state
>> mismatch logging
>>
>> Pass the drm_printer from intel_pipe_config_compare(), and use it for
>> logging, along with pipe_config_mismatch(), to simplify and unify.
>>
>> While at it, differentiate the VSC and AS SDP log texts from each other.
>>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display.c | 29 +++++++-------------
>>  1 file changed, 10 insertions(+), 19 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
>> b/drivers/gpu/drm/i915/display/intel_display.c
>> index 28c1b372cc95..1159f8c3d206 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -5216,7 +5216,7 @@ pipe_config_dp_vsc_sdp_mismatch(struct
>> drm_printer *p, bool fastset,
>>                               const struct drm_dp_vsc_sdp *a,
>>                               const struct drm_dp_vsc_sdp *b)
>>  {
>> -     pipe_config_mismatch(p, fastset, crtc, name, "dp sdp");
>> +     pipe_config_mismatch(p, fastset, crtc, name, "dp vsc sdp");
>>
>>       drm_printf(p, "expected:\n");
>>       drm_dp_vsc_sdp_log(p, a);
>> @@ -5225,27 +5225,18 @@ pipe_config_dp_vsc_sdp_mismatch(struct
>> drm_printer *p, bool fastset,  }
>>
>>  static void
>> -pipe_config_dp_as_sdp_mismatch(struct drm_i915_private *i915,
>> -                            bool fastset, const char *name,
>> +pipe_config_dp_as_sdp_mismatch(struct drm_printer *p, bool fastset,
>> +                            const struct intel_crtc *crtc,
>> +                            const char *name,
>>                              const struct drm_dp_as_sdp *a,
>>                              const struct drm_dp_as_sdp *b)  {
>> -     struct drm_printer p;
>> +     pipe_config_mismatch(p, fastset, crtc, name, "dp as sdp");
>>
>> -     if (fastset) {
>> -             p = drm_dbg_printer(&i915->drm, DRM_UT_KMS, NULL);
>> -
>> -             drm_printf(&p, "fastset requirement not met in %s dp
>> sdp\n", name);
>> -     } else {
>> -             p = drm_err_printer(&i915->drm, NULL);
>> -
>> -             drm_printf(&p, "mismatch in %s dp sdp\n", name);
>> -     }
>> -
>> -     drm_printf(&p, "expected:\n");
>> -     drm_dp_as_sdp_log(&p, a);
>> -     drm_printf(&p, "found:\n");
>> -     drm_dp_as_sdp_log(&p, b);
>> +     drm_printf(p, "expected:\n");
>> +     drm_dp_as_sdp_log(p, a);
>> +     drm_printf(p, "found:\n");
>> +     drm_dp_as_sdp_log(p, b);
>
> Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

Thanks for the review, pushed to drm-intel-next.

BR,
Jani.


>>  }
>>
>>  /* Returns the length up to and including the last differing byte */ @@ -
>> 5507,7 +5498,7 @@ intel_pipe_config_compare(const struct intel_crtc_state
>> *current_config,  #define PIPE_CONF_CHECK_DP_AS_SDP(name) do { \
>>       if (!intel_compare_dp_as_sdp(&current_config->infoframes.name, \
>>                                     &pipe_config->infoframes.name)) { \
>> -             pipe_config_dp_as_sdp_mismatch(dev_priv, fastset,
>> __stringify(name), \
>> +             pipe_config_dp_as_sdp_mismatch(&p, fastset, crtc,
>> __stringify(name),
>> +\
>>                                               &current_config-
>> >infoframes.name, \
>>                                               &pipe_config-
>> >infoframes.name); \
>>               ret = false; \
>> --
>> 2.39.5
>

-- 
Jani Nikula, Intel
