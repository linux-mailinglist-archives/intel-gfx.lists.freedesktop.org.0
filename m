Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72830910638
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2024 15:36:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEA8510E9EF;
	Thu, 20 Jun 2024 13:36:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AqJ0+Abp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 548DB10E9EF
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jun 2024 13:36:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718890589; x=1750426589;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=LzuvKI17+8Y+zPhw7Y/ugNrwqI1YkMRFTjg+cws5O+8=;
 b=AqJ0+AbpwT3tji+wgiEPPifLko6gIvW5f9KXSiJe7FgVaYDLvAMojNO8
 +iCXlkZLJosVqPXIp1tdgRCwbWJphkkPdRCOqyzWSK72tZRWkJkDR3LO6
 /xSeQZUJ2bJ6ceRzrNUSuqSuH7/l/4dsEGoo3epQcUioyzAtV9opakUEz
 vlHpAmCdBxpKU/VWTea1EUQ6UX3Z1BgceILaUoc8ed5WQ8Q5qfVytObcX
 b/Rbtz/iRk5edpbrVVb9KOcqpl4iuUzponvvVzgkqh6X2yYD+cqrV0NAP
 kmbGkqMwxmLUgX2FLL/EaBmRS1u9JEuBdsgnJf85F1NMA+S4konQ/EiW+ A==;
X-CSE-ConnectionGUID: 4/TDP4BGTbKoKN3wlSXunw==
X-CSE-MsgGUID: qO/kZBXZRcSfNgJ9NooOsg==
X-IronPort-AV: E=McAfee;i="6700,10204,11108"; a="26460185"
X-IronPort-AV: E=Sophos;i="6.08,252,1712646000"; d="scan'208";a="26460185"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2024 06:36:27 -0700
X-CSE-ConnectionGUID: RpgiB9oMT6GhI06rJRx6AQ==
X-CSE-MsgGUID: bzyTXn3JRa2LEhJa+5vxbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,252,1712646000"; d="scan'208";a="47409244"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.95])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2024 06:36:26 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Garg, Nemesa" <nemesa.garg@intel.com>, "Golani, Mitulkumar Ajitkumar"
 <mitulkumar.ajitkumar.golani@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v3] drm/i915/display: WA for Re-initialize dispcnlunitt1
 xosc clock
In-Reply-To: <IA1PR11MB6467CD43E3FF6D50E2775B99E3C82@IA1PR11MB6467.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240619103803.865289-1-mitulkumar.ajitkumar.golani@intel.com>
 <IA1PR11MB6467CD43E3FF6D50E2775B99E3C82@IA1PR11MB6467.namprd11.prod.outlook.com>
Date: Thu, 20 Jun 2024 16:36:20 +0300
Message-ID: <87h6dnenxn.fsf@intel.com>
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

On Thu, 20 Jun 2024, "Garg, Nemesa" <nemesa.garg@intel.com> wrote:
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Mitul
>> Golani
>> Sent: Wednesday, June 19, 2024 4:08 PM
>> To: intel-gfx@lists.freedesktop.org
>> Subject: [PATCH v3] drm/i915/display: WA for Re-initialize dispcnlunitt1 xosc clock
>> 
>> The dispcnlunit1_cp_xosc_clk should be de-asserted in display off and only
>> asserted in display on. But during observation it found clk remains active in display
>> OFF. As workaround, Display driver shall execute set-reset sequence at the end of
>> the Initialize Sequence.
>> 
>> Wa_15013987218
>> 
>> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> Reviewed-by: Nemesa Garg <nemesa.garg@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display_power.c | 8 ++++++++
>>  1 file changed, 8 insertions(+)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
>> b/drivers/gpu/drm/i915/display/intel_display_power.c
>> index e288a1b21d7e..aef54c1a2ba9 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>> @@ -1704,6 +1704,14 @@ static void icl_display_core_init(struct
>> drm_i915_private *dev_priv,
>>  	/* Wa_14011503030:xelpd */
>>  	if (DISPLAY_VER(dev_priv) == 13)
>>  		intel_de_write(dev_priv, XELPD_DISPLAY_ERR_FATAL_MASK,
>> ~0);
>> +
>> +	/* Wa_15013987218 */
>> +	if (DISPLAY_VER(dev_priv) == 20) {
>> +		intel_de_write(dev_priv, SOUTH_DSPCLK_GATE_D,
>> +			       PCH_GMBUSUNIT_CLOCK_GATE_DISABLE);
>
> Nit:  we can replace the above statement with this intel_de_rmw(dev_priv, SOUTH_DSPCLK_GATE_D, 0, PCH_GMBUSUNIT_CLOCK_GATE_DISABLE) so that code consistency can be maintained in the code block.
> otherwise LGTM.

It's not just about consistency. Are you even sure you can erase
everything else in the register here?

BR,
Jani.

>
>> +		intel_de_rmw(dev_priv, SOUTH_DSPCLK_GATE_D,
>> +			     PCH_GMBUSUNIT_CLOCK_GATE_DISABLE, 0);
>> +	}
>>  }
>> 
>>  static void icl_display_core_uninit(struct drm_i915_private *dev_priv)
>> --
>> 2.45.2
>

-- 
Jani Nikula, Intel
