Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 834196A0869
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Feb 2023 13:17:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F13AA10E0AD;
	Thu, 23 Feb 2023 12:17:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86D8B10EB3F
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Feb 2023 12:17:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677154638; x=1708690638;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=CUDIWse4V66vu5hIdVGCvDTLXPRPYrcIs6CIG17J9JY=;
 b=UTBNQghan/o/Gn0YJfFDyz1iikGwmiy4elsl0qAV0OIt4GJF8wAHFKZe
 9FIvnNkFJiFeEJKSfCR64M+49o71PMEFjqrITuRsesOsIgeEnh2d+HNmj
 x6e8B1YLiL194NQpvLSpc4Vd8vVwYkwUhMrTKxm8V4AJSUwmYh6IvHSib
 nPXFWEcnjnEWcPM5vh32PK3Qawe1UXYW7LMTsROoQ9NlTYRx0LPm36S6s
 xzKjiuEQXC/UFckcXUR9HOAjZ/Nxn3oK8nOCBSpJsd29Cbl5fzVuCwpzJ
 aiLF8w/TpRGlu5EKHEZWGegG2VT8yJVmFDPQQClZJ7w+BzB88YCJQFzvV A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="330922959"
X-IronPort-AV: E=Sophos;i="5.97,320,1669104000"; d="scan'208";a="330922959"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2023 04:13:29 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="672460850"
X-IronPort-AV: E=Sophos;i="5.97,320,1669104000"; d="scan'208";a="672460850"
Received: from pvallee-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.43.94])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2023 04:13:26 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>, "Nautiyal, Ankit K"
 <ankit.k.nautiyal@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
In-Reply-To: <DM4PR11MB63601AE85E8ACE5DBD2B1570F4AB9@DM4PR11MB6360.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230223043619.3941382-1-ankit.k.nautiyal@intel.com>
 <DM4PR11MB63601AE85E8ACE5DBD2B1570F4AB9@DM4PR11MB6360.namprd11.prod.outlook.com>
Date: Thu, 23 Feb 2023 14:13:23 +0200
Message-ID: <87sfew37h8.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg2: Add HDMI pixel clock
 frequencies 267.30 and 319.89 MHz
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
Cc: "Roper, Matthew D" <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 23 Feb 2023, "Shankar, Uma" <uma.shankar@intel.com> wrote:
>> -----Original Message-----
>> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
>> Sent: Thursday, February 23, 2023 10:06 AM
>> To: intel-gfx@lists.freedesktop.org
>> Cc: Roper, Matthew D <matthew.d.roper@intel.com>; Shankar, Uma
>> <uma.shankar@intel.com>; Sharma, Swati2 <swati2.sharma@intel.com>
>> Subject: [PATCH] drm/i915/dg2: Add HDMI pixel clock frequencies 267.30 and 319.89
>> MHz
>> 
>> Add snps phy table values for HDMI pixel clocks 267.30 MHz and
>> 319.89 MHz. Values are based on the Bspec algorithm for PLL programming for
>> HDMI.
>
> Looks Good to me.
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>

Needs Cc: stable for some kernels back, when force probe was removed
from DG2. Please check and add while applying.

BR,
Jani.

>
>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8008
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_snps_phy.c | 62 +++++++++++++++++++
>>  1 file changed, 62 insertions(+)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c
>> b/drivers/gpu/drm/i915/display/intel_snps_phy.c
>> index c65c771f5c46..1cfb94b5cedb 100644
>> --- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
>> +++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
>> @@ -1419,6 +1419,36 @@ static const struct intel_mpllb_state dg2_hdmi_262750 =
>> {
>>  		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, 1),  };
>> 
>> +static const struct intel_mpllb_state dg2_hdmi_267300 = {
>> +	.clock = 267300,
>> +	.ref_control =
>> +		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, 3),
>> +	.mpllb_cp =
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, 7) |
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP, 14) |
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT_GS, 64) |
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP_GS, 124),
>> +	.mpllb_div =
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV5_CLK_EN, 1) |
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_TX_CLK_DIV, 1) |
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, 1) |
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, 2) |
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FREQ_VCO, 3),
>> +	.mpllb_div2 =
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 1) |
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, 74) |
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_HDMI_DIV, 1),
>> +	.mpllb_fracn1 =
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_EN, 1) |
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 65535),
>> +	.mpllb_fracn2 =
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT, 30146) |
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_REM, 36699),
>> +	.mpllb_sscen =
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, 1), };
>> +
>>  static const struct intel_mpllb_state dg2_hdmi_268500 = {
>>  	.clock = 268500,
>>  	.ref_control =
>> @@ -1509,6 +1539,36 @@ static const struct intel_mpllb_state dg2_hdmi_241500 =
>> {
>>  		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, 1),  };
>> 
>> +static const struct intel_mpllb_state dg2_hdmi_319890 = {
>> +	.clock = 319890,
>> +	.ref_control =
>> +		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, 3),
>> +	.mpllb_cp =
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, 6) |
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP, 14) |
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT_GS, 64) |
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP_GS, 124),
>> +	.mpllb_div =
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV5_CLK_EN, 1) |
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_TX_CLK_DIV, 1) |
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, 1) |
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, 2) |
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FREQ_VCO, 2),
>> +	.mpllb_div2 =
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 1) |
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, 94) |
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_HDMI_DIV, 1),
>> +	.mpllb_fracn1 =
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_EN, 1) |
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 65535),
>> +	.mpllb_fracn2 =
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT, 64094) |
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_REM, 13631),
>> +	.mpllb_sscen =
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, 1), };
>> +
>>  static const struct intel_mpllb_state dg2_hdmi_497750 = {
>>  	.clock = 497750,
>>  	.ref_control =
>> @@ -1696,8 +1756,10 @@ static const struct intel_mpllb_state * const
>> dg2_hdmi_tables[] = {
>>  	&dg2_hdmi_209800,
>>  	&dg2_hdmi_241500,
>>  	&dg2_hdmi_262750,
>> +	&dg2_hdmi_267300,
>>  	&dg2_hdmi_268500,
>>  	&dg2_hdmi_296703,
>> +	&dg2_hdmi_319890,
>>  	&dg2_hdmi_497750,
>>  	&dg2_hdmi_592000,
>>  	&dg2_hdmi_593407,
>> --
>> 2.25.1
>

-- 
Jani Nikula, Intel Open Source Graphics Center
