Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B6489D266B
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2024 14:09:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36EBF10E34A;
	Tue, 19 Nov 2024 13:09:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ibHK7Hw0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB49710E27B;
 Tue, 19 Nov 2024 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732021794; x=1763557794;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=xplUgtG5Xd3qLlnacR3Ok7o4lxNH0Q48twDzhE93rIw=;
 b=ibHK7Hw06O6lCdcopT47PK4GqtY4nkhKo3zhzWOJKotXop9++eM3ZVg0
 PkY3Q7CpqJefKLMf4Lg0dNo5frmp8gQFhyAitK8IurXOupzwngQFdsJM/
 x6epfUk6DrcIMZxDzSuogvfrWCeyg68nPRMvwcRrrVx4fO1sxfK4y6wgW
 /i1Ea4q+aHl4s3BVoVt3D5U8FElyX1pCuNV4Y0RE56XGpkx7+NTbZ5BtN
 MCNXOd/iRAj3nYgnqX8jGH+FJIBAizY8jDZ7GKzTwXQT8oROLdoyzWPfI
 a020Yg/pDeLoVynGPyYGe1yxl4Th9sZrmNG6yfHk3JMbBRuu1CjwJ4HnO w==;
X-CSE-ConnectionGUID: q2dCFD8+ScKXO3LbI1DFRw==
X-CSE-MsgGUID: 2Y0jq7ysQEy3TVbWIIWGQQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="31871792"
X-IronPort-AV: E=Sophos;i="6.12,166,1728975600"; d="scan'208";a="31871792"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2024 05:09:54 -0800
X-CSE-ConnectionGUID: 4J8E8oCURC+R25Tc3knhSg==
X-CSE-MsgGUID: LzS+xtHCSpq+3ZkX1O2G0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,166,1728975600"; d="scan'208";a="90358301"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.202])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2024 05:09:52 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 06/11] drm/i915/reg: convert DP_TP_CTL/DP_TP_STATUS to
 REG_BIT() and friends
In-Reply-To: <Zzx6zqUeUzUQlAgc@ideak-desk.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1731941270.git.jani.nikula@intel.com>
 <9c54e8d7a3ff5039e4537cccb97214e63b9805c9.1731941270.git.jani.nikula@intel.com>
 <Zzx6zqUeUzUQlAgc@ideak-desk.fi.intel.com>
Date: Tue, 19 Nov 2024 15:09:49 +0200
Message-ID: <87iksj2wv6.fsf@intel.com>
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

On Tue, 19 Nov 2024, Imre Deak <imre.deak@intel.com> wrote:
> On Mon, Nov 18, 2024 at 04:49:01PM +0200, Jani Nikula wrote:
>> Use the modern style for defining register contents. Expand the status
>> register contents a bit.
>> 
>> TODO: The payload mapping fields have more bits on more recent
>> platforms.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/i915_reg.h | 57 +++++++++++++++++----------------
>>  1 file changed, 30 insertions(+), 27 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
>> index 7a35be56b7ef..9c198405349d 100644
>> --- a/drivers/gpu/drm/i915/i915_reg.h
>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>> @@ -3823,25 +3823,26 @@ enum skl_power_gate {
>>  #define _TGL_DP_TP_CTL_A		0x60540
>>  #define DP_TP_CTL(port) _MMIO_PORT(port, _DP_TP_CTL_A, _DP_TP_CTL_B)
>>  #define TGL_DP_TP_CTL(dev_priv, tran) _MMIO_TRANS2(dev_priv, (tran), _TGL_DP_TP_CTL_A)
>> -#define  DP_TP_CTL_ENABLE			(1 << 31)
>> -#define  DP_TP_CTL_FEC_ENABLE			(1 << 30)
>> -#define  DP_TP_CTL_MODE_SST			(0 << 27)
>> -#define  DP_TP_CTL_MODE_MST			(1 << 27)
>> -#define  DP_TP_CTL_FORCE_ACT			(1 << 25)
>> -#define  DP_TP_CTL_TRAIN_PAT4_SEL_MASK		(3 << 19)
>> -#define  DP_TP_CTL_TRAIN_PAT4_SEL_TP4A		(0 << 19)
>> -#define  DP_TP_CTL_TRAIN_PAT4_SEL_TP4B		(1 << 19)
>> -#define  DP_TP_CTL_TRAIN_PAT4_SEL_TP4C		(2 << 19)
>> -#define  DP_TP_CTL_ENHANCED_FRAME_ENABLE	(1 << 18)
>> -#define  DP_TP_CTL_FDI_AUTOTRAIN		(1 << 15)
>> -#define  DP_TP_CTL_LINK_TRAIN_MASK		(7 << 8)
>> -#define  DP_TP_CTL_LINK_TRAIN_PAT1		(0 << 8)
>> -#define  DP_TP_CTL_LINK_TRAIN_PAT2		(1 << 8)
>> -#define  DP_TP_CTL_LINK_TRAIN_PAT3		(4 << 8)
>> -#define  DP_TP_CTL_LINK_TRAIN_PAT4		(5 << 8)
>> -#define  DP_TP_CTL_LINK_TRAIN_IDLE		(2 << 8)
>> -#define  DP_TP_CTL_LINK_TRAIN_NORMAL		(3 << 8)
>> -#define  DP_TP_CTL_SCRAMBLE_DISABLE		(1 << 7)
>> +#define   DP_TP_CTL_ENABLE			REG_BIT(31)
>> +#define   DP_TP_CTL_FEC_ENABLE			REG_BIT(30)
>> +#define   DP_TP_CTL_MODE_MASK			REG_BIT(27)
>> +#define   DP_TP_CTL_MODE_SST			REG_FIELD_PREP(DP_TP_CTL_MODE_MASK, 0)
>> +#define   DP_TP_CTL_MODE_MST			REG_FIELD_PREP(DP_TP_CTL_MODE_MASK, 1)
>> +#define   DP_TP_CTL_FORCE_ACT			REG_BIT(25)
>> +#define   DP_TP_CTL_TRAIN_PAT4_SEL_MASK		REG_GENMASK(20, 19)
>> +#define   DP_TP_CTL_TRAIN_PAT4_SEL_TP4A		REG_FIELD_PREP(DP_TP_CTL_TRAIN_PAT4_SEL_MASK, 0)
>> +#define   DP_TP_CTL_TRAIN_PAT4_SEL_TP4B		REG_FIELD_PREP(DP_TP_CTL_TRAIN_PAT4_SEL_MASK, 1)
>> +#define   DP_TP_CTL_TRAIN_PAT4_SEL_TP4C		REG_FIELD_PREP(DP_TP_CTL_TRAIN_PAT4_SEL_MASK, 2)
>> +#define   DP_TP_CTL_ENHANCED_FRAME_ENABLE	REG_BIT(18)
>> +#define   DP_TP_CTL_FDI_AUTOTRAIN		REG_BIT(15)
>> +#define   DP_TP_CTL_LINK_TRAIN_MASK		REG_GENMASK(10, 8)
>> +#define   DP_TP_CTL_LINK_TRAIN_PAT1		REG_FIELD_PREP(DP_TP_CTL_LINK_TRAIN_MASK, 0)
>> +#define   DP_TP_CTL_LINK_TRAIN_PAT2		REG_FIELD_PREP(DP_TP_CTL_LINK_TRAIN_MASK, 1)
>> +#define   DP_TP_CTL_LINK_TRAIN_PAT3		REG_FIELD_PREP(DP_TP_CTL_LINK_TRAIN_MASK, 4)
>> +#define   DP_TP_CTL_LINK_TRAIN_PAT4		REG_FIELD_PREP(DP_TP_CTL_LINK_TRAIN_MASK, 5)
>> +#define   DP_TP_CTL_LINK_TRAIN_IDLE		REG_FIELD_PREP(DP_TP_CTL_LINK_TRAIN_MASK, 2)
>> +#define   DP_TP_CTL_LINK_TRAIN_NORMAL		REG_FIELD_PREP(DP_TP_CTL_LINK_TRAIN_MASK, 3)
>> +#define   DP_TP_CTL_SCRAMBLE_DISABLE		REG_BIT(7)
>>  
>>  /* DisplayPort Transport Status */
>>  #define _DP_TP_STATUS_A			0x64044
>> @@ -3849,14 +3850,16 @@ enum skl_power_gate {
>>  #define _TGL_DP_TP_STATUS_A		0x60544
>>  #define DP_TP_STATUS(port) _MMIO_PORT(port, _DP_TP_STATUS_A, _DP_TP_STATUS_B)
>>  #define TGL_DP_TP_STATUS(dev_priv, tran) _MMIO_TRANS2(dev_priv, (tran), _TGL_DP_TP_STATUS_A)
>> -#define  DP_TP_STATUS_FEC_ENABLE_LIVE		(1 << 28)
>> -#define  DP_TP_STATUS_IDLE_DONE			(1 << 25)
>> -#define  DP_TP_STATUS_ACT_SENT			(1 << 24)
>> -#define  DP_TP_STATUS_MODE_STATUS_MST		(1 << 23)
>> -#define  DP_TP_STATUS_AUTOTRAIN_DONE		(1 << 12)
>> -#define  DP_TP_STATUS_PAYLOAD_MAPPING_VC2	(3 << 8)
>> -#define  DP_TP_STATUS_PAYLOAD_MAPPING_VC1	(3 << 4)
>> -#define  DP_TP_STATUS_PAYLOAD_MAPPING_VC0	(3 << 0)
>> +#define   DP_TP_STATUS_FEC_ENABLE_LIVE		REG_BIT(28)
>> +#define   DP_TP_STATUS_IDLE_DONE		REG_BIT(25)
>> +#define   DP_TP_STATUS_ACT_SENT			REG_BIT(24)
>> +#define   DP_TP_STATUS_MODE_STATUS_MST		REG_BIT(23)
>> +#define   DP_TP_STATUS_AUTOTRAIN_DONE		REG_BIT(12)
>> +#define   DP_TP_STATUS_STREAMS_ENABLED_MASK	REG_GENMASK(21, 19)
>
> I assume the above is the 'Streams Enabled' field and that is bits 18:16
> on the platforms I checked. Bits 21:19 is 'DP Init Status'.

You're right. Good catch, thanks!

>
>> +#define   DP_TP_STATUS_PAYLOAD_MAPPING_VC3_MASK REG_GENMASK(13, 12)
>> +#define   DP_TP_STATUS_PAYLOAD_MAPPING_VC2_MASK REG_GENMASK(9, 8)
>> +#define   DP_TP_STATUS_PAYLOAD_MAPPING_VC1_MASK	REG_GENMASK(5, 4)
>> +#define   DP_TP_STATUS_PAYLOAD_MAPPING_VC0_MASK	REG_GENMASK(1, 0)
>>  
>>  /* DDI Buffer Control */
>>  #define _DDI_BUF_CTL_A				0x64000
>> -- 
>> 2.39.5
>> 

-- 
Jani Nikula, Intel
