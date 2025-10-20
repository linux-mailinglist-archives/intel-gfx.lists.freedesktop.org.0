Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F843BEFB99
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Oct 2025 09:45:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDE7E10E2DF;
	Mon, 20 Oct 2025 07:45:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GILX5kmj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 316E710E2A8;
 Mon, 20 Oct 2025 07:45:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760946348; x=1792482348;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=dP7WdDjnj41i+21kagRbIpMkFCKSnBP1KMDTiZc7PEc=;
 b=GILX5kmjxotaE8DKAFfA17JPtDsxkhtSR4g4YRUxpik99BJ8N2sz/s2v
 D6iYy7Mctf70secVqr4RFYhps9IC5GZ7krncYMyYWFHDjRoJ0KSyxv2OK
 UMEP5z6aFar2DRfla02wSNGiUILjYuutgxnXOMCdrthfgn2UCVsjYj8zu
 YeWJt2PdNuWxMhJ9k/LLDB9vqY5eHDLjf/5B5AXEBL2f8ZP36L/aCO3ny
 sop/P0Z3o6E15Q7qwow9gDyyJN/TS3M3FRcWZ0HFdEK/IpwbFQu+Jr/Hy
 A0CC5Zzq8JkKZuiPohPIboBxcodiSgceXhn5v4ys/RCx0N3QKX0kIuToX g==;
X-CSE-ConnectionGUID: 5GU8dnfnQcao0E7eCZffDg==
X-CSE-MsgGUID: oncdaduMTCe3LaRWmliH4A==
X-IronPort-AV: E=McAfee;i="6800,10657,11587"; a="63101314"
X-IronPort-AV: E=Sophos;i="6.19,242,1754982000"; d="scan'208";a="63101314"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 00:45:47 -0700
X-CSE-ConnectionGUID: X6kcKNI1QaCzhQciOUgikA==
X-CSE-MsgGUID: UoFkrbkfRmSiSgVFLHfBeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,242,1754982000"; d="scan'208";a="213887598"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.7])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 00:45:43 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?utf-8?Q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Matt Roper <matthew.d.roper@intel.com>, Ravi
 Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>
Subject: Re: [PATCH 27/32] drm/i915/vbt: Add fields dedicated_external and
 dyn_port_over_tc
In-Reply-To: <176073074493.2362.9794630315303321450@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
 <20251015-xe3p_lpd-basic-enabling-v1-27-d2d1e26520aa@intel.com>
 <d04fa666b1ab4737aa2a927c897e0ee7062482d9@intel.com>
 <176073074493.2362.9794630315303321450@intel.com>
Date: Mon, 20 Oct 2025 10:45:40 +0300
Message-ID: <ccc5c9391875afe2075553568b4beed20f0956f8@intel.com>
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

On Fri, 17 Oct 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Quoting Jani Nikula (2025-10-15 12:24:12-03:00)
>>On Wed, 15 Oct 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>>> VBT version 264 adds new fields associated to Xe3p_LPD's new ways of
>>> configuring SoC for TC ports and PHYs.  Update the code to match the
>>> updates in VBT.
>>>
>>> The new field dedicated_external is used to represent TC ports that are
>>> connected to PHYs outside of the Type-C subsystem, meaning that they
>>> behave like dedicated ports and don't require the extra Type-C
>>> programming.  In an upcoming change, we will update the driver to take
>>> this field into consideration when detecting the type of port.
>>>
>>> The new field dyn_port_over_tc is used to inform that the TC port can be
>>> dynamically allocated for a legacy connector in the Type-C subsystem,
>>> which is a new feature in Xe3p_LPD.  In upcoming changes, we will use
>>> that field in order to handle the IOM resource management programming
>>> required for that.
>>>
>>> Note that, when dedicated_external is set, the fields dp_usb_type_c and
>>> tbt are tagged as "don't care" in the spec, so they should be ignored in
>>> that case, so also make sure to update the accessor functions to take
>>> that into consideration.
>>>
>>> Bspec: 20124, 68954, 74304
>>> Cc: Shekhar Chauhan <shekhar.chauhan@intel.com>
>>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>>> ---
>>>  drivers/gpu/drm/i915/display/intel_bios.c     | 20 +++++++++++++++++++-
>>>  drivers/gpu/drm/i915/display/intel_bios.h     |  2 ++
>>>  drivers/gpu/drm/i915/display/intel_vbt_defs.h |  7 ++++++-
>>>  3 files changed, 27 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
>>> index 3596dce84c28..e466728ced0f 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_bios.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>>> @@ -2777,7 +2777,7 @@ static int child_device_expected_size(u16 version)
>>>  {
>>>          BUILD_BUG_ON(sizeof(struct child_device_config) < 40);
>>>  
>>> -        if (version > 263)
>>> +        if (version > 264)
>>>                  return -ENOENT;
>>>          else if (version >= 263)
>>>                  return 44;
>>> @@ -3714,14 +3714,32 @@ int intel_bios_hdmi_ddc_pin(const struct intel_bios_encoder_data *devdata)
>>>  
>>>  bool intel_bios_encoder_supports_typec_usb(const struct intel_bios_encoder_data *devdata)
>>>  {
>>> +        if (intel_bios_encoder_is_dedicated_external(devdata))
>>> +                return false;
>>> +
>>
>>We already have mechanisms for this. Please don't pollute the functions.
>>
>>dp_usb_type_c should just be set to 0 in a new sanitize_something()
>>function at the end of parse_ddi_port()
>>
>>>          return devdata->display->vbt.version >= 195 && devdata->child.dp_usb_type_c;
>>>  }
>>>  
>>>  bool intel_bios_encoder_supports_tbt(const struct intel_bios_encoder_data *devdata)
>>>  {
>>> +        if (intel_bios_encoder_is_dedicated_external(devdata))
>>> +                return false;
>>> +
>>
>>Ditto.
>>
>>tbt should just be set to 0 in a new sanitize_something() function at
>>the end of parse_ddi_port()
>
> Aren't sanitize_*() functions, at least in the context of intel_bios.c,
> for actually fixing bogus information reported by the VBT?

Yes.

> Arguably, that wouldn't be the case for dedicated_external and the
> related fields, since it is actually about a new way to interpret bits
> for the new version of the VBT.

Well, if the spec says you shouln't have some bits set in combination
with something else, then having those set is bogus, no?

> One of my concerns with the sanitize approach would be gotchas with
> anything that tries to use the fields before they are sanitized (e.g.
> another sanitization function gets added in the future that would use
> one of the sanitized fields).  Perhaps that's never gonna happen?

The sanitization part should be careful about that, obviously.

BR,
Jani.



-- 
Jani Nikula, Intel
