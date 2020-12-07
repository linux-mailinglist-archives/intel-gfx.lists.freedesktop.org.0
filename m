Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6685F2D0FB7
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Dec 2020 12:52:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65F9A6E5C0;
	Mon,  7 Dec 2020 11:52:22 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08CD76E5C0
 for <Intel-gfx@lists.freedesktop.org>; Mon,  7 Dec 2020 11:52:21 +0000 (UTC)
IronPort-SDR: EOLsDUwg3QQzSLPYsBYt7dej20EFYF/AHGfoFmVQ5y2ibz6TZWWMXGIZLAteyQ+t4JOM1WvLRR
 hFSTlaMl8fjg==
X-IronPort-AV: E=McAfee;i="6000,8403,9827"; a="172917003"
X-IronPort-AV: E=Sophos;i="5.78,399,1599548400"; d="scan'208";a="172917003"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2020 03:52:21 -0800
IronPort-SDR: 1yAEkrkJ68/QE9YRraGFOnQrUG0aTZf1XZj4XbFZkpTFocO9VF6yEyX8KQTV48VtuXb/bCRDPH
 BjuQSZtCjlRw==
X-IronPort-AV: E=Sophos;i="5.78,399,1599548400"; d="scan'208";a="541468208"
Received: from tcujba-mobl.ger.corp.intel.com (HELO localhost) ([10.252.9.141])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2020 03:52:20 -0800
MIME-Version: 1.0
In-Reply-To: <20201207002134.13731-7-sean.z.huang@intel.com>
References: <20201207002134.13731-1-sean.z.huang@intel.com>
 <20201207002134.13731-7-sean.z.huang@intel.com>
To: "Huang, Sean Z" <sean.z.huang@intel.com>, Intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <160734193807.9322.5386742605604912810@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Mon, 07 Dec 2020 13:52:18 +0200
Subject: Re: [Intel-gfx] [RFC-v1 06/16] drm/i915/pxp: Implement funcs to
 get/set PXP tag
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

Quoting Huang, Sean Z (2020-12-07 02:21:24)
> Implement the functions to get/set the PXP tag, which is 32-bit
> bitwise value containing the hardware session info, such as its
> session id, protection mode or whether it's enabled.
> 
> Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>

By my understanding, this patch should not be needed at all for
singleton session? So I'm mostly skipping review here.

<SNIP>

> -/**
> - * check_if_protected_type0_sessions_are_attacked - To check if type0 active sessions are attacked.
> - * @i915: i915 device handle.
> - *
> - * Return: true if HW shows protected sessions are attacked, false otherwise.
> - */
> -static bool check_if_protected_type0_sessions_are_attacked(struct drm_i915_private *i915)
> -{
> -       i915_reg_t kcr_status_reg = KCR_STATUS_1;
> -       u32 reg_value = 0;
> -       u32 mask = 0x80000000;
> -       int ret;
> -
> -       if (!i915)
> -               return false;
> -
> -       if (i915->pxp.ctx->global_state_attacked)
> -               return true;
> -
> -       ret = pxp_sm_reg_read(i915, kcr_status_reg.reg, &reg_value);
> -       if (ret) {
> -               drm_err(&i915->drm, "Failed to pxp_sm_reg_read\n");
> -               goto end;
> -       }
> -
> -       if (reg_value & mask)
> -               return true;
> -end:
> -       return false;
> -}

Removal of code added previously in the series?

>  int pxp_sm_set_kcr_init_reg(struct drm_i915_private *i915)
>  {
>         int ret;
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
> index 222a879be96d..b5012948f971 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
> @@ -20,6 +20,9 @@
>  #define GEN12_KCR_TSIP_LOW  _MMIO(0x32264)   /* KCR type1 session in play 0-31 */
>  #define GEN12_KCR_TSIP_HIGH _MMIO(0x32268)   /* KCR type1 session in play 32-63 */
>  
> +#define SESSION_TYPE_MASK BIT(7)
> +#define SESSION_ID_MASK (BIT(7) - 1)
> +
>  enum pxp_session_types {
>         SESSION_TYPE_TYPE0 = 0,
>         SESSION_TYPE_TYPE1 = 1,
> @@ -36,6 +39,21 @@ enum pxp_protection_modes {
>         PROTECTION_MODE_ALL
>  };
>  
> +struct pxp_tag {
> +       union {
> +               u32 value;
> +               struct {
> +                       u32 session_id  : 8;
> +                       u32 instance_id : 8;
> +                       u32 enable      : 1;
> +                       u32 hm          : 1;
> +                       u32 reserved_1  : 1;
> +                       u32 sm          : 1;
> +                       u32 reserved_2  : 12;
> +               };

It is not obvious if this is a software-only field. If it's software
only, we should just make these into normal variables. If it's hardware
related, it should be documented as a bitfield, like other hardware
writes. We avoid using this construct in i915.

Regards, Joonas
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
