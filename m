Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 27CD3642A2C
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Dec 2022 15:17:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A3F310E09E;
	Mon,  5 Dec 2022 14:17:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACC1210E09E
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Dec 2022 14:17:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670249841; x=1701785841;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Ty/aAOf0za/EdgVBVe3ivPYKYruIi/IE/pwJFcM8FII=;
 b=R3ezGDRYCgc9X4+xr40YI2dM20UyuOh0P73nO9rYL4BDxC8t5KCHy93V
 7OlN1ljevkGa1fTKWu98h3JIQXgLeNuu46V6Ix7v6wMJpu85ycnBDmPtG
 fvRh7AaAgN5RznYwC6HZmBgiPECBHARIKtDqSkM3s23Y/ZQqM8mCUQ8dK
 F3LKrHWXwDJa1Yyx6stGaWrItEX4v3N+YWOlRtfZ3Bk/5g9tWJGnPCZ/D
 FR5+O/qrTd9nyM4Ar26u2Dca2YmtcXNpSapmNJk3zchmcHcnJgkmlg1Qn
 13iOpFcI3u9q6ioRoH0eQ2S5oi6zcu0NbBtMiqANHfFSQWcy9Qq/nzbaW Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="318212704"
X-IronPort-AV: E=Sophos;i="5.96,219,1665471600"; d="scan'208";a="318212704"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 06:17:21 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="596210739"
X-IronPort-AV: E=Sophos;i="5.96,219,1665471600"; d="scan'208";a="596210739"
Received: from akramiss-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.54.203])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 06:17:19 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <5f01d9c209298ab53f62a3f9a52473469d91ad4a.1670249413.git.jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1670249413.git.jani.nikula@intel.com>
 <5f01d9c209298ab53f62a3f9a52473469d91ad4a.1670249413.git.jani.nikula@intel.com>
Date: Mon, 05 Dec 2022 16:17:16 +0200
Message-ID: <875yeq2avn.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/backlight: use
 VLV_DISPLAY_BASE for VLV/CHV backlight registers
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

On Mon, 05 Dec 2022, Jani Nikula <jani.nikula@intel.com> wrote:
> Since the VLV/CHV backlight registers are only used on VLV/CHV, there's
> no need to dynamically look up DISPLAY_MMIO_BASE(). We know it's
> VLV_DISPLAY_BASE. Use it statically, reducing the implicit dev_priv
> references.

Hmm, I spotted this, but looks like I didn't spot that none of the
*other* backlight register apparently aren't used on VLV/CHV.

Could we just drop DISPLAY_MMIO_BASE() from them altogether?

BR,
Jani.

>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../drm/i915/display/intel_backlight_regs.h   | 21 ++++++++-----------
>  1 file changed, 9 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_backlight_regs.h b/drivers/gpu/drm/i915/display/intel_backlight_regs.h
> index 344eb8096bd2..02bd1f8201bf 100644
> --- a/drivers/gpu/drm/i915/display/intel_backlight_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_backlight_regs.h
> @@ -8,20 +8,17 @@
>  
>  #include "intel_display_reg_defs.h"
>  
> -#define _VLV_BLC_PWM_CTL2_A (DISPLAY_MMIO_BASE(dev_priv) + 0x61250)
> -#define _VLV_BLC_PWM_CTL2_B (DISPLAY_MMIO_BASE(dev_priv) + 0x61350)
> -#define VLV_BLC_PWM_CTL2(pipe) _MMIO_PIPE(pipe, _VLV_BLC_PWM_CTL2_A, \
> -					 _VLV_BLC_PWM_CTL2_B)
> +#define _VLV_BLC_PWM_CTL2_A		(VLV_DISPLAY_BASE + 0x61250)
> +#define _VLV_BLC_PWM_CTL2_B		(VLV_DISPLAY_BASE + 0x61350)
> +#define VLV_BLC_PWM_CTL2(pipe) _MMIO_PIPE(pipe, _VLV_BLC_PWM_CTL2_A, _VLV_BLC_PWM_CTL2_B)
>  
> -#define _VLV_BLC_PWM_CTL_A (DISPLAY_MMIO_BASE(dev_priv) + 0x61254)
> -#define _VLV_BLC_PWM_CTL_B (DISPLAY_MMIO_BASE(dev_priv) + 0x61354)
> -#define VLV_BLC_PWM_CTL(pipe) _MMIO_PIPE(pipe, _VLV_BLC_PWM_CTL_A, \
> -					_VLV_BLC_PWM_CTL_B)
> +#define _VLV_BLC_PWM_CTL_A		(VLV_DISPLAY_BASE + 0x61254)
> +#define _VLV_BLC_PWM_CTL_B		(VLV_DISPLAY_BASE + 0x61354)
> +#define VLV_BLC_PWM_CTL(pipe) _MMIO_PIPE(pipe, _VLV_BLC_PWM_CTL_A, _VLV_BLC_PWM_CTL_B)
>  
> -#define _VLV_BLC_HIST_CTL_A (DISPLAY_MMIO_BASE(dev_priv) + 0x61260)
> -#define _VLV_BLC_HIST_CTL_B (DISPLAY_MMIO_BASE(dev_priv) + 0x61360)
> -#define VLV_BLC_HIST_CTL(pipe) _MMIO_PIPE(pipe, _VLV_BLC_HIST_CTL_A, \
> -					 _VLV_BLC_HIST_CTL_B)
> +#define _VLV_BLC_HIST_CTL_A		(VLV_DISPLAY_BASE + 0x61260)
> +#define _VLV_BLC_HIST_CTL_B		(VLV_DISPLAY_BASE + 0x61360)
> +#define VLV_BLC_HIST_CTL(pipe) _MMIO_PIPE(pipe, _VLV_BLC_HIST_CTL_A, _VLV_BLC_HIST_CTL_B)
>  
>  /* Backlight control */
>  #define BLC_PWM_CTL2	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61250) /* 965+ only */

-- 
Jani Nikula, Intel Open Source Graphics Center
