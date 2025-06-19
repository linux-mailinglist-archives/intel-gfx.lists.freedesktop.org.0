Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EDE8AE008D
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Jun 2025 10:55:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C45089E59;
	Thu, 19 Jun 2025 08:55:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RSpoumRE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 097E789E59;
 Thu, 19 Jun 2025 08:55:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750323332; x=1781859332;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=CxAyINUOUECVhKd6uRUNGwa8TbMF7Rav9Vn9h9VeNd4=;
 b=RSpoumRE58ATaxMXav89Z/fuNbtur+hWI+M8ApFjD0CFelYyi7bO9DCw
 re4prHKGzNnLVRotbcH3u7zAnjd9lxcac0mvuCJ9hvyQQHO9ofuaX/t1r
 9TqiufdcKmflqHT8DPEaNT8UxZ5bQFH58/XNfUfrHROI0VnbsIxwffYQC
 ECmWA3DtDYedrnCaDgRuXBJKcQIZkmmlUogjv2djROzrwCKGLio8RXB9L
 F7MjbgYuamAz9wRTgtwpK3oU7VY50Y1lY6SB0DnWcJRfkg11MPDJ3GIbL
 JH7Hh/ipVAoj494sF8x3Niio/PFJLQCAEEAPmSFtT0PczMDoJrG+5IMRr A==;
X-CSE-ConnectionGUID: j9D42rdlQ3WG39n9rgr9GQ==
X-CSE-MsgGUID: MaD4jXqwTf6uYv2SNaks8Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11468"; a="63251091"
X-IronPort-AV: E=Sophos;i="6.16,248,1744095600"; d="scan'208";a="63251091"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2025 01:55:32 -0700
X-CSE-ConnectionGUID: f8s3U3qaRVagwZIgahgJSA==
X-CSE-MsgGUID: PdlCNvHZSfCmM+ZsKV/YkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,248,1744095600"; d="scan'208";a="150074774"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.191])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2025 01:55:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Subject: Re: [PATCH] drm/i915/vrr: fix register file style
In-Reply-To: <a00c5db7-9c13-4dfa-8dd7-f41d3709abcf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250618155137.1651865-1-jani.nikula@intel.com>
 <a00c5db7-9c13-4dfa-8dd7-f41d3709abcf@intel.com>
Date: Thu, 19 Jun 2025 11:55:26 +0300
Message-ID: <7f51898dd2e402f31bf72904973f37a6426cf8d0@intel.com>
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

On Thu, 19 Jun 2025, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com> wrote:
> On 6/18/2025 9:21 PM, Jani Nikula wrote:
>> Fix indents, use of spaces vs. tabs, grouping, remove superfluous
>> comments, remove some line continuations, wrap macro arguments in
>> parens, rename dev_priv to display. This is the way.
>>
>> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> Cc: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
>
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Thanks, pushed to din.

BR,
Jani.


>
>
>>
>> ---
>>
>> Should be easy to review by applying and using:
>>
>> $ git show --color-words
>> ---
>>   drivers/gpu/drm/i915/display/intel_vrr_regs.h | 121 +++++++++---------
>>   1 file changed, 57 insertions(+), 64 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr_regs.h b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
>> index 09cdd50d6187..ba9b9215dc11 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr_regs.h
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
>> @@ -8,126 +8,119 @@
>>   
>>   #include "intel_display_reg_defs.h"
>>   
>> -/* VRR registers */
>>   #define _TRANS_VRR_CTL_A			0x60420
>>   #define _TRANS_VRR_CTL_B			0x61420
>>   #define _TRANS_VRR_CTL_C			0x62420
>>   #define _TRANS_VRR_CTL_D			0x63420
>> -#define TRANS_VRR_CTL(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_CTL_A)
>> -#define  VRR_CTL_VRR_ENABLE			REG_BIT(31)
>> -#define  VRR_CTL_IGN_MAX_SHIFT			REG_BIT(30)
>> -#define  VRR_CTL_FLIP_LINE_EN			REG_BIT(29)
>> -#define  VRR_CTL_PIPELINE_FULL_MASK		REG_GENMASK(10, 3)
>> -#define  VRR_CTL_PIPELINE_FULL(x)		REG_FIELD_PREP(VRR_CTL_PIPELINE_FULL_MASK, (x))
>> -#define  VRR_CTL_PIPELINE_FULL_OVERRIDE		REG_BIT(0)
>> -#define  XELPD_VRR_CTL_VRR_GUARDBAND_MASK	REG_GENMASK(15, 0)
>> -#define  XELPD_VRR_CTL_VRR_GUARDBAND(x)		REG_FIELD_PREP(XELPD_VRR_CTL_VRR_GUARDBAND_MASK, (x))
>> +#define TRANS_VRR_CTL(display, trans)		_MMIO_TRANS2((display), (trans), _TRANS_VRR_CTL_A)
>> +#define   VRR_CTL_VRR_ENABLE			REG_BIT(31)
>> +#define   VRR_CTL_IGN_MAX_SHIFT			REG_BIT(30)
>> +#define   VRR_CTL_FLIP_LINE_EN			REG_BIT(29)
>> +#define   VRR_CTL_CMRR_ENABLE			REG_BIT(27)
>> +#define   VRR_CTL_PIPELINE_FULL_MASK		REG_GENMASK(10, 3)
>> +#define   VRR_CTL_PIPELINE_FULL(x)		REG_FIELD_PREP(VRR_CTL_PIPELINE_FULL_MASK, (x))
>> +#define   VRR_CTL_PIPELINE_FULL_OVERRIDE	REG_BIT(0)
>> +#define   XELPD_VRR_CTL_VRR_GUARDBAND_MASK	REG_GENMASK(15, 0)
>> +#define   XELPD_VRR_CTL_VRR_GUARDBAND(x)	REG_FIELD_PREP(XELPD_VRR_CTL_VRR_GUARDBAND_MASK, (x))
>>   
>>   #define _TRANS_VRR_VMAX_A			0x60424
>>   #define _TRANS_VRR_VMAX_B			0x61424
>>   #define _TRANS_VRR_VMAX_C			0x62424
>>   #define _TRANS_VRR_VMAX_D			0x63424
>> -#define TRANS_VRR_VMAX(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_VMAX_A)
>> -#define  VRR_VMAX_MASK				REG_GENMASK(19, 0)
>> +#define TRANS_VRR_VMAX(display, trans)		_MMIO_TRANS2((display), (trans), _TRANS_VRR_VMAX_A)
>> +#define   VRR_VMAX_MASK				REG_GENMASK(19, 0)
>>   
>>   #define _TRANS_VRR_VMIN_A			0x60434
>>   #define _TRANS_VRR_VMIN_B			0x61434
>>   #define _TRANS_VRR_VMIN_C			0x62434
>>   #define _TRANS_VRR_VMIN_D			0x63434
>> -#define TRANS_VRR_VMIN(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_VMIN_A)
>> -#define  VRR_VMIN_MASK				REG_GENMASK(15, 0)
>> +#define TRANS_VRR_VMIN(display, trans)		_MMIO_TRANS2((display), (trans), _TRANS_VRR_VMIN_A)
>> +#define   VRR_VMIN_MASK				REG_GENMASK(15, 0)
>>   
>>   #define _TRANS_VRR_VMAXSHIFT_A			0x60428
>>   #define _TRANS_VRR_VMAXSHIFT_B			0x61428
>>   #define _TRANS_VRR_VMAXSHIFT_C			0x62428
>>   #define _TRANS_VRR_VMAXSHIFT_D			0x63428
>> -#define TRANS_VRR_VMAXSHIFT(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, \
>> -						_TRANS_VRR_VMAXSHIFT_A)
>> -#define  VRR_VMAXSHIFT_DEC_MASK			REG_GENMASK(29, 16)
>> -#define  VRR_VMAXSHIFT_DEC			REG_BIT(16)
>> -#define  VRR_VMAXSHIFT_INC_MASK			REG_GENMASK(12, 0)
>> +#define TRANS_VRR_VMAXSHIFT(display, trans)	_MMIO_TRANS2((display), (trans), _TRANS_VRR_VMAXSHIFT_A)
>> +#define   VRR_VMAXSHIFT_DEC_MASK		REG_GENMASK(29, 16)
>> +#define   VRR_VMAXSHIFT_DEC			REG_BIT(16)
>> +#define   VRR_VMAXSHIFT_INC_MASK		REG_GENMASK(12, 0)
>>   
>>   #define _TRANS_VRR_STATUS_A			0x6042c
>>   #define _TRANS_VRR_STATUS_B			0x6142c
>>   #define _TRANS_VRR_STATUS_C			0x6242c
>>   #define _TRANS_VRR_STATUS_D			0x6342c
>> -#define TRANS_VRR_STATUS(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_STATUS_A)
>> -#define  VRR_STATUS_VMAX_REACHED		REG_BIT(31)
>> -#define  VRR_STATUS_NOFLIP_TILL_BNDR		REG_BIT(30)
>> -#define  VRR_STATUS_FLIP_BEF_BNDR		REG_BIT(29)
>> -#define  VRR_STATUS_NO_FLIP_FRAME		REG_BIT(28)
>> -#define  VRR_STATUS_VRR_EN_LIVE			REG_BIT(27)
>> -#define  VRR_STATUS_FLIPS_SERVICED		REG_BIT(26)
>> -#define  VRR_STATUS_VBLANK_MASK			REG_GENMASK(22, 20)
>> -#define  STATUS_FSM_IDLE			REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 0)
>> -#define  STATUS_FSM_WAIT_TILL_FDB		REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 1)
>> -#define  STATUS_FSM_WAIT_TILL_FS		REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 2)
>> -#define  STATUS_FSM_WAIT_TILL_FLIP		REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 3)
>> -#define  STATUS_FSM_PIPELINE_FILL		REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 4)
>> -#define  STATUS_FSM_ACTIVE			REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 5)
>> -#define  STATUS_FSM_LEGACY_VBLANK		REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 6)
>> +#define TRANS_VRR_STATUS(display, trans)	_MMIO_TRANS2((display), (trans), _TRANS_VRR_STATUS_A)
>> +#define   VRR_STATUS_VMAX_REACHED		REG_BIT(31)
>> +#define   VRR_STATUS_NOFLIP_TILL_BNDR		REG_BIT(30)
>> +#define   VRR_STATUS_FLIP_BEF_BNDR		REG_BIT(29)
>> +#define   VRR_STATUS_NO_FLIP_FRAME		REG_BIT(28)
>> +#define   VRR_STATUS_VRR_EN_LIVE		REG_BIT(27)
>> +#define   VRR_STATUS_FLIPS_SERVICED		REG_BIT(26)
>> +#define   VRR_STATUS_VBLANK_MASK		REG_GENMASK(22, 20)
>> +#define   STATUS_FSM_IDLE			REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 0)
>> +#define   STATUS_FSM_WAIT_TILL_FDB		REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 1)
>> +#define   STATUS_FSM_WAIT_TILL_FS		REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 2)
>> +#define   STATUS_FSM_WAIT_TILL_FLIP		REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 3)
>> +#define   STATUS_FSM_PIPELINE_FILL		REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 4)
>> +#define   STATUS_FSM_ACTIVE			REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 5)
>> +#define   STATUS_FSM_LEGACY_VBLANK		REG_FIELD_PREP(VRR_STATUS_VBLANK_MASK, 6)
>>   
>>   #define _TRANS_VRR_VTOTAL_PREV_A		0x60480
>>   #define _TRANS_VRR_VTOTAL_PREV_B		0x61480
>>   #define _TRANS_VRR_VTOTAL_PREV_C		0x62480
>>   #define _TRANS_VRR_VTOTAL_PREV_D		0x63480
>> -#define TRANS_VRR_VTOTAL_PREV(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, \
>> -						_TRANS_VRR_VTOTAL_PREV_A)
>> -#define  VRR_VTOTAL_FLIP_BEFR_BNDR		REG_BIT(31)
>> -#define  VRR_VTOTAL_FLIP_AFTER_BNDR		REG_BIT(30)
>> -#define  VRR_VTOTAL_FLIP_AFTER_DBLBUF		REG_BIT(29)
>> -#define  VRR_VTOTAL_PREV_FRAME_MASK		REG_GENMASK(19, 0)
>> +#define TRANS_VRR_VTOTAL_PREV(display, trans)	_MMIO_TRANS2((display), (trans), _TRANS_VRR_VTOTAL_PREV_A)
>> +#define   VRR_VTOTAL_FLIP_BEFR_BNDR		REG_BIT(31)
>> +#define   VRR_VTOTAL_FLIP_AFTER_BNDR		REG_BIT(30)
>> +#define   VRR_VTOTAL_FLIP_AFTER_DBLBUF		REG_BIT(29)
>> +#define   VRR_VTOTAL_PREV_FRAME_MASK		REG_GENMASK(19, 0)
>>   
>>   #define _TRANS_VRR_FLIPLINE_A			0x60438
>>   #define _TRANS_VRR_FLIPLINE_B			0x61438
>>   #define _TRANS_VRR_FLIPLINE_C			0x62438
>>   #define _TRANS_VRR_FLIPLINE_D			0x63438
>> -#define TRANS_VRR_FLIPLINE(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, \
>> -						_TRANS_VRR_FLIPLINE_A)
>> -#define  VRR_FLIPLINE_MASK			REG_GENMASK(19, 0)
>> +#define TRANS_VRR_FLIPLINE(display, trans)	_MMIO_TRANS2((display), (trans), _TRANS_VRR_FLIPLINE_A)
>> +#define   VRR_FLIPLINE_MASK			REG_GENMASK(19, 0)
>>   
>>   #define _TRANS_VRR_STATUS2_A			0x6043c
>>   #define _TRANS_VRR_STATUS2_B			0x6143c
>>   #define _TRANS_VRR_STATUS2_C			0x6243c
>>   #define _TRANS_VRR_STATUS2_D			0x6343c
>> -#define TRANS_VRR_STATUS2(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_STATUS2_A)
>> -#define  VRR_STATUS2_VERT_LN_CNT_MASK		REG_GENMASK(19, 0)
>> +#define TRANS_VRR_STATUS2(display, trans)	_MMIO_TRANS2((display), (trans), _TRANS_VRR_STATUS2_A)
>> +#define   VRR_STATUS2_VERT_LN_CNT_MASK		REG_GENMASK(19, 0)
>>   
>>   #define _TRANS_PUSH_A				0x60a70
>>   #define _TRANS_PUSH_B				0x61a70
>>   #define _TRANS_PUSH_C				0x62a70
>>   #define _TRANS_PUSH_D				0x63a70
>> -#define TRANS_PUSH(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _TRANS_PUSH_A)
>> -#define  TRANS_PUSH_EN				REG_BIT(31)
>> -#define  TRANS_PUSH_SEND			REG_BIT(30)
>> +#define TRANS_PUSH(display, trans)		_MMIO_TRANS2((display), (trans), _TRANS_PUSH_A)
>> +#define   TRANS_PUSH_EN				REG_BIT(31)
>> +#define   TRANS_PUSH_SEND			REG_BIT(30)
>>   
>>   #define _TRANS_VRR_VSYNC_A			0x60078
>> -#define TRANS_VRR_VSYNC(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_VSYNC_A)
>> -#define VRR_VSYNC_END_MASK			REG_GENMASK(28, 16)
>> -#define VRR_VSYNC_END(vsync_end)		REG_FIELD_PREP(VRR_VSYNC_END_MASK, (vsync_end))
>> -#define VRR_VSYNC_START_MASK			REG_GENMASK(12, 0)
>> -#define VRR_VSYNC_START(vsync_start)		REG_FIELD_PREP(VRR_VSYNC_START_MASK, (vsync_start))
>> +#define TRANS_VRR_VSYNC(display, trans)		_MMIO_TRANS2((display), (trans), _TRANS_VRR_VSYNC_A)
>> +#define   VRR_VSYNC_END_MASK			REG_GENMASK(28, 16)
>> +#define   VRR_VSYNC_END(vsync_end)		REG_FIELD_PREP(VRR_VSYNC_END_MASK, (vsync_end))
>> +#define   VRR_VSYNC_START_MASK			REG_GENMASK(12, 0)
>> +#define   VRR_VSYNC_START(vsync_start)		REG_FIELD_PREP(VRR_VSYNC_START_MASK, (vsync_start))
>>   
>>   /* Common register for HDMI EMP and DP AS SDP */
>>   #define _EMP_AS_SDP_TL_A			0x60204
>> -#define EMP_AS_SDP_DB_TL_MASK			REG_GENMASK(12, 0)
>> -#define EMP_AS_SDP_TL(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _EMP_AS_SDP_TL_A)
>> -#define EMP_AS_SDP_DB_TL(db_transmit_line)	REG_FIELD_PREP(EMP_AS_SDP_DB_TL_MASK, (db_transmit_line))
>> -
>> -/*CMRR Registers*/
>> +#define EMP_AS_SDP_TL(display, trans)		_MMIO_TRANS2((display), (trans), _EMP_AS_SDP_TL_A)
>> +#define   EMP_AS_SDP_DB_TL_MASK			REG_GENMASK(12, 0)
>> +#define   EMP_AS_SDP_DB_TL(db_transmit_line)	REG_FIELD_PREP(EMP_AS_SDP_DB_TL_MASK, (db_transmit_line))
>>   
>>   #define _TRANS_CMRR_M_LO_A			0x604F0
>> -#define TRANS_CMRR_M_LO(dev_priv, trans)        _MMIO_TRANS2(dev_priv, trans, _TRANS_CMRR_M_LO_A)
>> +#define TRANS_CMRR_M_LO(display, trans)		_MMIO_TRANS2((display), (trans), _TRANS_CMRR_M_LO_A)
>>   
>>   #define _TRANS_CMRR_M_HI_A			0x604F4
>> -#define TRANS_CMRR_M_HI(dev_priv, trans)        _MMIO_TRANS2(dev_priv, trans, _TRANS_CMRR_M_HI_A)
>> +#define TRANS_CMRR_M_HI(display, trans)		_MMIO_TRANS2((display), (trans), _TRANS_CMRR_M_HI_A)
>>   
>>   #define _TRANS_CMRR_N_LO_A			0x604F8
>> -#define TRANS_CMRR_N_LO(dev_priv, trans)        _MMIO_TRANS2(dev_priv, trans, _TRANS_CMRR_N_LO_A)
>> +#define TRANS_CMRR_N_LO(display, trans)		_MMIO_TRANS2((display), (trans), _TRANS_CMRR_N_LO_A)
>>   
>>   #define _TRANS_CMRR_N_HI_A			0x604FC
>> -#define TRANS_CMRR_N_HI(dev_priv, trans)        _MMIO_TRANS2(dev_priv, trans, _TRANS_CMRR_N_HI_A)
>> -
>> -#define VRR_CTL_CMRR_ENABLE			REG_BIT(27)
>> +#define TRANS_CMRR_N_HI(display, trans)		_MMIO_TRANS2((display), (trans), _TRANS_CMRR_N_HI_A)
>>   
>>   #endif /* __INTEL_VRR_REGS__ */

-- 
Jani Nikula, Intel
