Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD1C15BC58
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2020 11:07:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0512C6E1BA;
	Thu, 13 Feb 2020 10:07:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52C576E1BA
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Feb 2020 10:07:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Feb 2020 02:06:59 -0800
X-IronPort-AV: E=Sophos;i="5.70,436,1574150400"; d="scan'208";a="222599753"
Received: from sgearyx-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.51.121])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Feb 2020 02:06:57 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Aditya Swarup <aditya.swarup@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200213092239.30015-2-aditya.swarup@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200213092239.30015-1-aditya.swarup@intel.com>
 <20200213092239.30015-2-aditya.swarup@intel.com>
Date: Thu, 13 Feb 2020 12:07:22 +0200
Message-ID: <8736beyf51.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/tgl: Add definitions for VRR
 registers and bits
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 13 Feb 2020, Aditya Swarup <aditya.swarup@intel.com> wrote:
> Add definitions for registers grouped under Transcoder VRR function
> with necessary bitfields.
>
> Bspec: 49268 TRANSCODER VRR FUNCTION
> Bspec: 50508 TRANS_VRR_CTL
> Bspec: 50512 TRANS_VRR_VMAX
> Bspec: 50514 TRANS_VRR_VMIN
> Bspec: 50513 TRANS_VRR_VMAXSHIFT
> Bspec: 50510 TRANS_VRR_STATUS
> Bspec: 50515 TRANS_VRR_VTOTAL_PREV
> Bspec: 50509 TRANS_VRR_FLIPLINE
> Bspec: 50511 TRANS_VRR_STATUS2
> Bspec: 50504 TRANS_PUSH

I can accept a few Bspec: lines for an overall description, but this is
way too much. They're useless for people without bspec access.

>
> Cc: Manasi Navare <manasi.d.navare@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h | 107 ++++++++++++++++++++++++++++++++
>  1 file changed, 107 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index b09c1d6dc0aa..3f0575ddd83a 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -12089,4 +12089,111 @@ enum skl_power_gate {
>  #define   DSB_ENABLE			(1 << 31)
>  #define   DSB_STATUS			(1 << 0)
>  
> +/* Transcoder VRR function registers. */

I can kind of see that from the "trans vrr" in the names.

> +#define _TRANS_VRR_CTL_A		0x60420
> +#define _TRANS_VRR_CTL_B		0x61420
> +#define _TRANS_VRR_CTL_C		0x62420
> +#define _TRANS_VRR_CTL_D		0x63420
> +

Unnecessary blank line. They are part of the same register set
description. Ditto below for the other registers.

> +#define TRANS_VRR_CTL(tran)		_MMIO_TRANS2(tran, _TRANS_VRR_CTL_A)
> +#define   VRR_CTL_VRR_ENABLE		REG_BIT(31)
> +#define   VRR_CTL_IGN_MAX_SHIFT		REG_BIT(30)
> +#define   VRR_CTL_FLIP_LINE_EN		REG_BIT(29)
> +#define   VRR_CTL_LINE_COUNT_MASK	(0xff << 3)
> +#define	  VRR_CTL_SW_FULLLINE_COUNT	0x1
> +#define	  VRR_CTL_HW_FULLLINE_COUNT	0x0

Please read the comment at the beginning of the file. Define the values
shifted in place. Define the mask using REG_GENMASK. Don't add tabs for
indenting the macro names.

> +
> +#define _TRANS_VRR_VMAX_A		0x60424
> +#define _TRANS_VRR_VMAX_B		0x61424
> +#define _TRANS_VRR_VMAX_C		0x62424
> +#define _TRANS_VRR_VMAX_D		0x63424
> +
> +#define TRANS_VRR_VMAX(tran)		_MMIO_TRANS2(tran, _TRANS_VRR_VMAX_A)
> +#define   VRR_VMAX_MASK			0xfffff
> +
> +#define _TRANS_VRR_VMIN_A		0x60434
> +#define _TRANS_VRR_VMIN_B		0x61434
> +#define _TRANS_VRR_VMIN_C		0x62434
> +#define _TRANS_VRR_VMIN_D		0x63434
> +
> +#define TRANS_VRR_VMIN(tran)		_MMIO_TRANS2(tran, _TRANS_VRR_VMIN_A)
> +#define   TRANS_VRR_VMIN_MASK		0xffff
> +
> +#define _TRANS_VRR_VMAXSHIFT_A		0x60428
> +#define _TRANS_VRR_VMAXSHIFT_B		0x61428
> +#define _TRANS_VRR_VMAXSHIFT_C		0x62428
> +#define _TRANS_VRR_VMAXSHIFT_D		0x63428
> +
> +#define TRANS_VRR_VMAXSHIFT(tran)	_MMIO_TRANS2(tran, \
> +					_TRANS_VRR_VMAXSHIFT_A)
> +#define   VRR_VMAXSHIFT_DEC_MASK	(0x3fff << 0xffff)
> +#define   VRR_VMAXSHIFT_DEC		REG_BIT(16)
> +#define   TRANS_VRR_VMAXSHIFT_INC_MASK	0x3fff
> +
> +#define _TRANS_VRR_STATUS_A		0x6042C
> +#define _TRANS_VRR_STATUS_B		0x6142C
> +#define _TRANS_VRR_STATUS_C		0x6242C
> +#define _TRANS_VRR_STATUS_D		0x6342C
> +
> +#define TRANS_VRR_STATUS(tran)		_MMIO_TRANS2(tran, _TRANS_VRR_STATUS_A)
> +#define   VRR_STATUS_VMAX_REACHED	REG_BIT(31)
> +#define	  VRR_STATUS_NOFLIP_TILL_BNDR	REG_BIT(30)
> +#define   VRR_STATUS_FLIP_BEF_BNDR	REG_BIT(29)
> +#define   VRR_STATUS_NO_FLIP_FRAME	REG_BIT(28)
> +#define   VRR_STATUS_VRR_EN_LIVE	REG_BIT(27)
> +#define   VRR_STATUS_FLIPS_SERVICED	REG_BIT(26)
> +#define   VRR_STATUS_VBLANK_MASK	REG_GENMASK(22, 20)
> +#define   STATUS_FSM_IDLE		REG_FIELD_PREP( \
> +					VRR_STATUS_VBLANK_MASK, 0)

That's a horrible place to add line continuation. Please just use a long
single line instead. Same below.

> +#define   STATUS_FSM_WAIT_TILL_FDB	REG_FIELD_PREP( \
> +					VRR_STATUS_VBLANK_MASK, 1)
> +#define   STATUS_FSM_WAIT_TILL_FS	REG_FIELD_PREP( \
> +					VRR_STATUS_VBLANK_MASK, 2)
> +#define   STATUS_FSM_WAIT_TILL_FLIP	REG_FIELD_PREP( \
> +					VRR_STATUS_VBLANK_MASK, 3)
> +#define   STATUS_FSM_PIPELINE_FILL	REG_FIELD_PREP( \
> +					VRR_STATUS_VBLANK_MASK, 4)
> +#define   STATUS_FSM_ACTIVE		REG_FIELD_PREP( \
> +					VRR_STATUS_VBLANK_MASK, 5)
> +#define   STATUS_FSM_LEGACY_VBLANK	REG_FIELD_PREP( \
> +					VRR_STATUS_VBLANK_MASK, 6)
> +
> +#define _TRANS_VRR_VTOTAL_PREV_A	0x60480
> +#define _TRANS_VRR_VTOTAL_PREV_B	0x61480
> +#define _TRANS_VRR_VTOTAL_PREV_C	0x62480
> +#define _TRANS_VRR_VTOTAL_PREV_D	0x63480
> +
> +#define TRANS_VRR_VTOTAL_PREV(tran)	_MMIO_TRANS2(tran, \
> +					_TRANS_VRR_VTOTAL_PREV_A)
> +#define   VRR_VTOTAL_FLIP_BEFR_BNDR	REG_BIT(31)
> +#define   VRR_VTOTAL_FLIP_AFTER_BNDR	REG_BIT(30)
> +#define   VRR_VTOTAL_FLIP_AFTER_DBLBUF	REG_BIT(29)
> +#define   VRR_VTOTAL_PREV_FRAME_MASK	0xfffff
> +
> +#define _TRANS_VRR_FLIPLINE_A		0x60438
> +#define _TRANS_VRR_FLIPLINE_B		0x61438
> +#define _TRANS_VRR_FLIPLINE_C		0x62438
> +#define _TRANS_VRR_FLIPLINE_D		0x63438
> +
> +#define TRANS_VRR_FLIPLINE(tran)	_MMIO_TRANS2(tran, \
> +					_TRANS_VRR_FLIPLINE_A)
> +#define   TRANS_VRR_FLIPLINE_MASK	0xfffff
> +
> +#define _TRANS_VRR_STATUS2_A		0x6043C
> +#define	_TRANS_VRR_STATUS2_B		0x6143C

Ditch the tab.

> +#define _TRANS_VRR_STATUS2_C		0x6243C
> +#define _TRANS_VRR_STATUS2_D		0x6343C
> +
> +#define TRANS_VRR_STATUS2(tran)		_MMIO_TRANS2(tran, _TRANS_VRR_STATUS2_A)
> +#define   TRANS_VRR_STATUS2_VERT_LN_CNT_MASK	0xfffff
> +
> +#define _TRANS_PUSH_A			0x60A70
> +#define _TRANS_PUSH_B			0x61A70
> +#define _TRANS_PUSH_C			0x62A70
> +#define _TRANS_PUSH_D			0x63A70
> +
> +#define TRANS_PUSH(tran)		_MMIO_TRANS2(tran, _TRANS_PUSH_A)
> +#define   TRANS_PUSH_EN			REG_BIT(31)
> +#define	  TRANS_PUSH_SEND		REG_BIT(30)
> +

Please try to find a more suitable place for these, for example near
where all the other transcoder stuff is.

>  #endif /* _I915_REG_H_ */

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
