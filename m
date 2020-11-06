Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12EA12A9CD1
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Nov 2020 20:01:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6EE86E1D8;
	Fri,  6 Nov 2020 19:01:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 211B96E1D8
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Nov 2020 19:01:09 +0000 (UTC)
IronPort-SDR: Ixm9jrAbofm2Q04LzuatmZ2OckFXT69QMYcaUbex4clledlLR+vwZqmW5K7MGRjMTuUXbRwBgM
 0wNyalBRCGtA==
X-IronPort-AV: E=McAfee;i="6000,8403,9797"; a="166077080"
X-IronPort-AV: E=Sophos;i="5.77,457,1596524400"; d="scan'208";a="166077080"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2020 11:01:09 -0800
IronPort-SDR: WzBeiO/5FYtg9V1UM3yEzsF79SGzibiLlhbpj2VBQg/qibXv/8JRq42QmGxDjdBKInNK8gIS2d
 AxkJKaFYHJJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,457,1596524400"; d="scan'208";a="528442909"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP; 06 Nov 2020 11:01:09 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 6 Nov 2020 11:01:07 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 BGSMSX604.gar.corp.intel.com (10.67.234.6) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sat, 7 Nov 2020 00:31:04 +0530
Received: from fmsmsx610.amr.corp.intel.com ([10.18.126.90]) by
 fmsmsx610.amr.corp.intel.com ([10.18.126.90]) with mapi id 15.01.1713.004;
 Fri, 6 Nov 2020 11:01:02 -0800
From: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Tweaked Wa_14010685332 for PCHs
 used on gen11 platforms
Thread-Index: AQHWroYxuYcRUlz1ZEqZBCDDjrWidam3hEgAgAIKoICAAnh8AA==
Date: Fri, 6 Nov 2020 19:01:02 +0000
Message-ID: <D935852F-6080-4EC0-B091-4CD03B773EA8@intel.com>
References: <20201030061658.11435-1-anshuman.gupta@intel.com>
 <20201103220642.GF30349@intel.com> <20201105051711.GO29526@intel.com>
In-Reply-To: <20201105051711.GO29526@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3608.120.23.2.4)
x-originating-ip: [10.1.200.100]
Content-ID: <A51DBB2B06E8CF47AAE78445F46F2795@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Tweaked Wa_14010685332 for PCHs
 used on gen11 platforms
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



> On Nov 4, 2020, at 9:17 PM, Anshuman Gupta <anshuman.gupta@intel.com> wrote:
> 
> On 2020-11-03 at 17:06:42 -0500, Rodrigo Vivi wrote:
>> On Fri, Oct 30, 2020 at 11:46:58AM +0530, Anshuman Gupta wrote:
>>> From: Bob Paauwe <bob.j.paauwe@intel.com>
>>> 
>>> The WA specifies that we need to toggle a SDE chicken bit on and then
>>> off as the final step in preparation for s0ix entry.
>>> 
>>>    Bspec: 33450
>>>    Bspec: 8402
>>> 
>>> However, something is happening after we toggle the bit that causes
>>> the WA to be invalidated. This makes dispcnlunit1_cp_xosc_clkreq
>>> active being already in s0ix state i.e SLP_S0 counter incremented.
>>> Tweaking the Wa_14010685332 by setting the bit on suspend and clearing
>>> it on resume turns down the dispcnlunit1_cp_xosc_clkreq.
>>> B.Spec has Documented this tweaked sequence of WA as an alternative.
>>> Let keep this tweaked WA for Gen11 platforms and keep untweaked WA for
>>> other platforms which never observed this issue.
>>> 
>>> v2 (MattR):
>>> - Change the comment on the workaround to give PCH names rather than
>>>   platform names.  Although the bspec is setup to list workarounds by
>>>   platform, the hardware team has confirmed that the actual issue being
>>>   worked around here is something that was introduced back in the
>>>   Cannon Lake PCH and carried forward to subsequent PCH's.
>>> - Extend the untweaked version of the workaround to include  PCH_CNP as
>>>   well.  Note that since PCH_CNP is used to represent CMP, this will
>>>   apply on CML and some variants of RKL too.
>>> - Cap the untweaked version of the workaround so that it won't apply to
>>>   "fake" PCH's (i.e., DG1).  The issue we're working around really is
>>>   an issue in the PCH itself, not the South Display, so it shouldn't
>>>   apply when there isn't a real PCH.
>>> 
>>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>>> Signed-off-by: Bob Paauwe <bob.j.paauwe@intel.com>
>>> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
>>> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>>> ---
>>> .../drm/i915/display/intel_display_power.c    | 21 +++++++++++++++++--
>>> drivers/gpu/drm/i915/i915_irq.c               |  6 ++++--
>>> 2 files changed, 23 insertions(+), 4 deletions(-)
>>> 
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
>>> index 689922480661..d2a6518329d7 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>>> @@ -5858,17 +5858,34 @@ static void intel_power_domains_verify_state(struct drm_i915_private *i915)
>>> 
>>> void intel_display_power_suspend_late(struct drm_i915_private *i915)
>>> {
>>> -	if (INTEL_GEN(i915) >= 11 || IS_GEN9_LP(i915))
>>> +	u32 val;
>>> +
>>> +	if (INTEL_GEN(i915) >= 11 || IS_GEN9_LP(i915)) {
>>> 		bxt_enable_dc9(i915);
>>> -	else if (IS_HASWELL(i915) || IS_BROADWELL(i915))
>>> +		/* Tweaked Wa_14010685332:icp,jsp,mcc */
>>> +		if (INTEL_PCH_TYPE(i915) >= PCH_ICP && INTEL_PCH_TYPE(i915) <= PCH_MCC) {
>>> +			val = intel_de_read(i915, SOUTH_CHICKEN1);
>>> +			val |= SBCLK_RUN_REFCLK_DIS;
>>> +			intel_de_write(i915, SOUTH_CHICKEN1, val);
>> 
>> could we use intel_de_rmw here?
> May be i had misunderstod it earlier, i thought it was your recommendation
> to use manual read, modify write without using intel_uncore_rmw(),

ouch, I'm really sorry for causing this confusion here.
My recommendation was for debug purposes only on the original w/a
I haven't noticed it had expanded to the alternate/tweaked one.
This shouldn't be needed here.

> Was the actual idea to use intel_de_rmw flavour of API instead of intel_uncore_rmw?

I'm assuming that both south or north registers would still be considered
display engine. Jani can correct me if I'm wrong here.
But I believe _de_ is more appropriated here.

> Also would it require to use at original Wa in gen11_display_irq_reset as well?

any modification there could be done in separated patches as needed.

>  
> Thanks,
> Anshuman Gupta.
>> 
>>> +		}
>>> +	} else if (IS_HASWELL(i915) || IS_BROADWELL(i915)) {
>>> 		hsw_enable_pc8(i915);
>>> +	}
>>> }
>>> 
>>> void intel_display_power_resume_early(struct drm_i915_private *i915)
>>> {
>>> +	u32 val;
>>> +
>>> 	if (INTEL_GEN(i915) >= 11 || IS_GEN9_LP(i915)) {
>>> 		gen9_sanitize_dc_state(i915);
>>> 		bxt_disable_dc9(i915);
>>> +		/* Tweaked Wa_14010685332:icp,jsp,mcc */
>>> +		if (INTEL_PCH_TYPE(i915) >= PCH_ICP && INTEL_PCH_TYPE(i915) <= PCH_MCC) {
>>> +			val = intel_de_read(i915, SOUTH_CHICKEN1);
>>> +			val &= ~SBCLK_RUN_REFCLK_DIS;
>>> +			intel_de_write(i915, SOUTH_CHICKEN1, val);
>> 
>> and here?
>> 
>> sorry for not having spotted that sooner.
>> 
>>> +		}
>>> 	} else if (IS_HASWELL(i915) || IS_BROADWELL(i915)) {
>>> 		hsw_disable_pc8(i915);
>>> 	}
>>> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
>>> index dc33c96d741d..410c03624c6a 100644
>>> --- a/drivers/gpu/drm/i915/i915_irq.c
>>> +++ b/drivers/gpu/drm/i915/i915_irq.c
>>> @@ -3055,8 +3055,10 @@ static void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
>>> 	if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
>>> 		GEN3_IRQ_RESET(uncore, SDE);
>>> 
>>> -	/* Wa_14010685332:icl,jsl,ehl,tgl,rkl */
>>> -	if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP) {
>>> +	/* Wa_14010685332:cnp/cmp,tgp,adp */
>>> +	if (INTEL_PCH_TYPE(dev_priv) == PCH_CNP ||
>>> +	    (INTEL_PCH_TYPE(dev_priv) >= PCH_TGP &&
>>> +	     INTEL_PCH_TYPE(dev_priv) < PCH_DG1)) {
>>> 		intel_uncore_rmw(uncore, SOUTH_CHICKEN1,
>>> 				 SBCLK_RUN_REFCLK_DIS, SBCLK_RUN_REFCLK_DIS);
>>> 		intel_uncore_rmw(uncore, SOUTH_CHICKEN1,
>>> -- 
>>> 2.26.2
>>> 
>>> _______________________________________________
>>> Intel-gfx mailing list
>>> Intel-gfx@lists.freedesktop.org
>>> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
