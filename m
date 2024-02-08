Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C67D84DC27
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Feb 2024 09:59:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26AAF10E09E;
	Thu,  8 Feb 2024 08:59:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ajzZCv2a";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 394B010E09E
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Feb 2024 08:59:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707382747; x=1738918747;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=0W2Kdtyjr0M0xMm1uJSYI4BT1LKUmoOYE5c31FAaZx4=;
 b=ajzZCv2adr8Mr6cMODEUqJzjlZA7SdhCxmscn1Ll9ZtWxW2rfPy5iTMy
 OqLg5Q6pr3jCYuPOlguuVnDJGIfRcK02LZDhggWScphGTomOCpXGs56Th
 ouHJCIi622UbZtJSqU5Lyc4/RsGrH1KpSj2RwqA1FligAmTi08mkW8ljl
 +72ITfmuwRPhVAPv0+3xhgh7BC9fLTEg/byIV++JG3AxrJ0JX/rmOt1XA
 FjlD2jzD7e2fQigOoJlkarptsh4k/XEGypabTuMQw/R9mpNyn7CbOrsBC
 4gOTYAEAtyq9a7dxsVrN/oCyG50Jy3qey0ktcpQ9ImkzNEsWtJW629+co A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10977"; a="1322367"
X-IronPort-AV: E=Sophos;i="6.05,253,1701158400"; 
   d="scan'208";a="1322367"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2024 00:59:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10977"; a="934070888"
X-IronPort-AV: E=Sophos;i="6.05,253,1701158400"; d="scan'208";a="934070888"
Received: from aavzirov-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.61.13])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2024 00:59:05 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Cc: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Subject: RE: [PATCH 2/2] drm/i915/lnl: Program PKGC_LATENCY register
In-Reply-To: <SN7PR11MB675090C2560FBDD0C8D50714E3472@SN7PR11MB6750.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240201085158.1000285-3-suraj.kandpal@intel.com>
 <20240205080126.1159496-1-suraj.kandpal@intel.com>
 <87le7zdxid.fsf@intel.com>
 <SN7PR11MB675090C2560FBDD0C8D50714E3472@SN7PR11MB6750.namprd11.prod.outlook.com>
Date: Thu, 08 Feb 2024 10:59:01 +0200
Message-ID: <874jejcox6.fsf@intel.com>
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

On Mon, 05 Feb 2024, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
>> On Mon, 05 Feb 2024, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
>> > +		if (wm_latency[i] == 0)
>> > +			break;
>> > +		else if (wm_latency[i] > max_value)
>> > +			max_value = wm_latency[i];
>> > +	}
>> > +
>> > +	if (max_value == 0)
>> > +		max_value = ~0 & LNL_PKG_C_LATENCY_MASK;
>> 
>> What does "~0 &" gain you here?
>> 
>
> So max value is 0 for all bits except 0-12 as we need to set them as all 1's to disable deep pkgc State

How is ~0 & LNL_PKG_C_LATENCY_MASK different from
LNL_PKG_C_LATENCY_MASK?

>> > +
>> > +	clear |= LNL_ADDED_WAKE_TIME_MASK |
>> LNL_PKG_C_LATENCY_MASK;
>> > +	val |= max_value;
>> 
>> If you have fields defined for the register, why not use it for setting max value
>> too?
>
> Sorry I didn't get you here .

val |= REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, max_value);

>
>> 
>> > +	intel_uncore_rmw(&i915->uncore, LNL_PKG_C_LATENCY, clear, val); }
>> > +
>> >  static void skl_setup_wm_latency(struct drm_i915_private *i915)  {
>> >  	if (HAS_HW_SAGV_WM(i915))
>> > @@ -3407,6 +3435,9 @@ static void skl_setup_wm_latency(struct
>> drm_i915_private *i915)
>> >  		skl_read_wm_latency(i915, i915->display.wm.skl_latency);
>> >
>> >  	intel_print_wm_latency(i915, "Gen9 Plane",
>> > i915->display.wm.skl_latency);
>> > +
>> > +	if (DISPLAY_VER(i915) >= 20)
>> > +		intel_program_pkgc_latency(i915, i915-
>> >display.wm.skl_latency);
>> 
>> Before this, nothing in the skl_wm_init() path actually writes any registers, it's
>> all readout. Is this the right place to be doing this?
>> 
>
> Yes since all latency values are all ready and available for use which
> we can program in the deep pkgc register.

Is that a good reason to change a function that only reads hardware to
something writes the hardware?

BR,
Jani.

>
> Regards,
> Suraj Kandpal
>> >  }
>> >
>> >  static const struct intel_wm_funcs skl_wm_funcs = {
>> 
>> --
>> Jani Nikula, Intel

-- 
Jani Nikula, Intel
