Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A956A28C14
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2025 14:42:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C612410E7A8;
	Wed,  5 Feb 2025 13:42:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZutzgINC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4163A10E7A8;
 Wed,  5 Feb 2025 13:42:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738762960; x=1770298960;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=mDqqFB/msnIQ4JsNFX+bAAq7mZdmimi2meljKcIlUbk=;
 b=ZutzgINCh1Xz2CTHKXDSiqg61+wOo01nAtGyZ361s8bLBAFaq0KgihoV
 xzZL6wDHT/SpMK/eeM0b9V5+MqkkXGPlnqwviE4ndOwzLY7YJan3tGPZo
 Kmm5Y+c4IQ1WpPmfiRmVHWeWeuJVnuTscwrpaG5Ylot5TJaOTPRdSlWGK
 9Tb21LE7gY1KrVT9iCZADq2vVgXCmMKine7S4TtIwp0oZ3e9MRKOAfc4v
 q2XhDJW3RzijU5B6YqtwBWzFItkaGdIDVU9OHyk0HUjS/BwD0AU3zzwfx
 kQYSDj+bmnpf7qIvcGiZJM9xRTABalT+wdrLIhK/oLHTif7DtmGvzs+Db Q==;
X-CSE-ConnectionGUID: 92h3KIGxQYykIwt3c8/FPQ==
X-CSE-MsgGUID: 9Ewa36mWSKqXZgrwkw+r3w==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="43079937"
X-IronPort-AV: E=Sophos;i="6.13,261,1732608000"; d="scan'208";a="43079937"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 05:42:39 -0800
X-CSE-ConnectionGUID: RE2VarWyToS/mzv3Sc73mw==
X-CSE-MsgGUID: DDtkv27BRv2zzrCEm0d1qA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="141800763"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.217])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 05:42:37 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Saarinen, Jani" <jani.saarinen@intel.com>, "Deak, Imre"
 <imre.deak@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/dp: Add support for DP UHBR SST DSC
In-Reply-To: <DM8PR11MB5655FA7F16A60D9BB2FE2D01E0F42@DM8PR11MB5655.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250203160834.2708027-1-jani.nikula@intel.com>
 <Z6I93PkEez_WdgOM@ideak-desk.fi.intel.com> <87frkt64uy.fsf@intel.com>
 <DM8PR11MB5655FA7F16A60D9BB2FE2D01E0F42@DM8PR11MB5655.namprd11.prod.outlook.com>
Date: Wed, 05 Feb 2025 15:42:34 +0200
Message-ID: <87zfj033ud.fsf@intel.com>
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

On Tue, 04 Feb 2025, "Saarinen, Jani" <jani.saarinen@intel.com> wrote:
> Hi,
>
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Jani
>> Nikula
>> Sent: Tuesday, 4 February 2025 18.40
>> To: Deak, Imre <imre.deak@intel.com>
>> Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Subject: Re: [PATCH] drm/i915/dp: Add support for DP UHBR SST DSC
>>
>> On Tue, 04 Feb 2025, Imre Deak <imre.deak@intel.com> wrote:
>> > On Mon, Feb 03, 2025 at 06:08:34PM +0200, Jani Nikula wrote:
>> >> Drop the UHBR limitation from DP SST DSC, and handle SST DSC
>> >> bandwidth computation for UHBR using
>> intel_dp_mtp_tu_compute_config().
>> >>
>> >> Cc: Imre Deak <imre.deak@intel.com>
>> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> >
>> > Reviewed-by: Imre Deak <imre.deak@intel.com>
>> >
>> > With the DPT bpp and bpp_step fixes on the list, this seems to work on
>> > a
>> > DP2.0 dock on (SST) UHBR link/DSC mode.
>>
>> \o/
>>
>> Thanks for the review and testing!
> Awesome, thanks Jani N and Imre!

And pushed to din, thanks for the review!

>
>> >
> Br,
> Jani
>> >> ---
>> >>  drivers/gpu/drm/i915/display/intel_dp.c | 35
>> >> +++++++++++++++++++------
>> >>  1 file changed, 27 insertions(+), 8 deletions(-)
>> >>
>> >> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
>> >> b/drivers/gpu/drm/i915/display/intel_dp.c
>> >> index cc6aba353c11..eb8f6806166c 100644
>> >> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> >> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> >> @@ -1958,15 +1958,37 @@ static int dsc_compute_link_config(struct
>> intel_dp *intel_dp,
>> >>            for (lane_count = limits->min_lane_count;
>> >>                 lane_count <= limits->max_lane_count;
>> >>                 lane_count <<= 1) {
>> >> -                  if (!is_bw_sufficient_for_dsc_config(dsc_bpp_x16,
>> link_rate,
>> >> -                                                       lane_count,
>> adjusted_mode->clock,
>> >> -                                                       pipe_config-
>> >output_format,
>> >> -                                                       timeslots))
>> >> -                          continue;
>> >>
>> >> +                  /*
>> >> +                   * FIXME: intel_dp_mtp_tu_compute_config()
>> requires
>> >> +                   * ->lane_count and ->port_clock set before we know
>> >> +                   * they'll work. If we end up failing altogether,
>> >> +                   * they'll remain in crtc state. This shouldn't matter,
>> >> +                   * as we'd then bail out from compute config, but it's
>> >> +                   * just ugly.
>> >> +                   */
>> >>                    pipe_config->lane_count = lane_count;
>> >>                    pipe_config->port_clock = link_rate;
>> >>
>> >> +                  if (drm_dp_is_uhbr_rate(link_rate)) {
>> >> +                          int ret;
>> >> +
>> >> +                          ret =
>> intel_dp_mtp_tu_compute_config(intel_dp,
>> >> +
>> pipe_config,
>> >> +                                                               conn_state,
>> >> +
>> dsc_bpp_x16,
>> >> +
>> dsc_bpp_x16,
>> >> +                                                               0, true);
>> >> +                          if (ret)
>> >> +                                  continue;
>> >> +                  } else {
>> >> +                          if
>> (!is_bw_sufficient_for_dsc_config(dsc_bpp_x16, link_rate,
>> >> +                                                               lane_count,
>> adjusted_mode->clock,
>> >> +
>> pipe_config->output_format,
>> >> +                                                               timeslots))
>> >> +                                  continue;
>> >> +                  }
>> >> +
>> >>                    return 0;
>> >>            }
>> >>    }
>> >> @@ -2493,9 +2515,6 @@ intel_dp_compute_config_limits(struct intel_dp
>> *intel_dp,
>> >>    limits->min_rate = intel_dp_min_link_rate(intel_dp);
>> >>    limits->max_rate = intel_dp_max_link_rate(intel_dp);
>> >>
>> >> -  /* FIXME 128b/132b SST+DSC support missing */
>> >> -  if (!is_mst && dsc)
>> >> -          limits->max_rate = min(limits->max_rate, 810000);
>> >>    limits->min_rate = min(limits->min_rate, limits->max_rate);
>> >>
>> >>    limits->min_lane_count = intel_dp_min_lane_count(intel_dp);
>> >> --
>> >> 2.39.5
>> >>
>>
>> --
>> Jani Nikula, Intel

-- 
Jani Nikula, Intel
