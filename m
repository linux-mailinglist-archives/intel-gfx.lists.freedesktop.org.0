Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B1A864569C
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 10:36:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1221410E0D4;
	Wed,  7 Dec 2022 09:36:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48EAB10E0D4
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Dec 2022 09:36:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670405809; x=1701941809;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=ocsIIMelaNIzO8CXYtWJeYwtNVnQmcxFw+m30WrfYlc=;
 b=mOwxGU19eY9v3NdMJYQDQMHIU4wTWSnLvOVt0mCNhDKFZb93CiJFQws+
 W2qCk5QuZ7DVXnHn4TqKff2xZbWJVTXiFg+zqVPVNI2mSmZr701vMVduz
 avLddm3OZcBQLQwsLvxyavntlTQH05dwIQhwcXC/buF2Pr6fm29G/DrKJ
 xmeGWJ3lF13UfiglGS9g8by91YMBZe03qP16N2uTt6V8fgWdPsWcqe/oX
 67qQXO0AZ3eTjvQWWI99lB7taNVYsgeGtL1JE2tCX29Nrkud+RAnbqiEd
 gd7wkXuHFvKUySGu0udLH9Xt2bJFq126h0QO+pJ0vGv64qvBOHmf2Doaq w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="316862665"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="316862665"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 01:36:28 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="648670635"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="648670635"
Received: from fbackhou-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.36.192])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 01:36:26 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
In-Reply-To: <Y44pm6thTVEuEVar@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1670249413.git.jani.nikula@intel.com>
 <5f01d9c209298ab53f62a3f9a52473469d91ad4a.1670249413.git.jani.nikula@intel.com>
 <875yeq2avn.fsf@intel.com> <Y44pm6thTVEuEVar@intel.com>
Date: Wed, 07 Dec 2022 11:36:23 +0200
Message-ID: <87r0xb1roo.fsf@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org,
 Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 05 Dec 2022, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Mon, Dec 05, 2022 at 04:17:16PM +0200, Jani Nikula wrote:
>> On Mon, 05 Dec 2022, Jani Nikula <jani.nikula@intel.com> wrote:
>> > Since the VLV/CHV backlight registers are only used on VLV/CHV, there's
>> > no need to dynamically look up DISPLAY_MMIO_BASE(). We know it's
>> > VLV_DISPLAY_BASE. Use it statically, reducing the implicit dev_priv
>> > references.
>> 
>> Hmm, I spotted this, but looks like I didn't spot that none of the
>> *other* backlight register apparently aren't used on VLV/CHV.
>> 
>> Could we just drop DISPLAY_MMIO_BASE() from them altogether?
>
> That would be neat. I hope Ville agrees.

Sent v2 with that.

>
> Did you use any sed or coccinele on patch 3?

Nah, I usually just use query-replace-regexp in Emacs for the one-off
replacements.

>
> Feel free to use:
>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
>
> for the series, if you decide to go with it and have this
> extra removal on a following up work.

Thanks, I tagged them as # v1 for the patches I had to rebase.

BR,
Jani.


>
>> 
>> BR,
>> Jani.
>> 
>> >
>> > Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> > ---
>> >  .../drm/i915/display/intel_backlight_regs.h   | 21 ++++++++-----------
>> >  1 file changed, 9 insertions(+), 12 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_backlight_regs.h b/drivers/gpu/drm/i915/display/intel_backlight_regs.h
>> > index 344eb8096bd2..02bd1f8201bf 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_backlight_regs.h
>> > +++ b/drivers/gpu/drm/i915/display/intel_backlight_regs.h
>> > @@ -8,20 +8,17 @@
>> >  
>> >  #include "intel_display_reg_defs.h"
>> >  
>> > -#define _VLV_BLC_PWM_CTL2_A (DISPLAY_MMIO_BASE(dev_priv) + 0x61250)
>> > -#define _VLV_BLC_PWM_CTL2_B (DISPLAY_MMIO_BASE(dev_priv) + 0x61350)
>> > -#define VLV_BLC_PWM_CTL2(pipe) _MMIO_PIPE(pipe, _VLV_BLC_PWM_CTL2_A, \
>> > -					 _VLV_BLC_PWM_CTL2_B)
>> > +#define _VLV_BLC_PWM_CTL2_A		(VLV_DISPLAY_BASE + 0x61250)
>> > +#define _VLV_BLC_PWM_CTL2_B		(VLV_DISPLAY_BASE + 0x61350)
>> > +#define VLV_BLC_PWM_CTL2(pipe) _MMIO_PIPE(pipe, _VLV_BLC_PWM_CTL2_A, _VLV_BLC_PWM_CTL2_B)
>> >  
>> > -#define _VLV_BLC_PWM_CTL_A (DISPLAY_MMIO_BASE(dev_priv) + 0x61254)
>> > -#define _VLV_BLC_PWM_CTL_B (DISPLAY_MMIO_BASE(dev_priv) + 0x61354)
>> > -#define VLV_BLC_PWM_CTL(pipe) _MMIO_PIPE(pipe, _VLV_BLC_PWM_CTL_A, \
>> > -					_VLV_BLC_PWM_CTL_B)
>> > +#define _VLV_BLC_PWM_CTL_A		(VLV_DISPLAY_BASE + 0x61254)
>> > +#define _VLV_BLC_PWM_CTL_B		(VLV_DISPLAY_BASE + 0x61354)
>> > +#define VLV_BLC_PWM_CTL(pipe) _MMIO_PIPE(pipe, _VLV_BLC_PWM_CTL_A, _VLV_BLC_PWM_CTL_B)
>> >  
>> > -#define _VLV_BLC_HIST_CTL_A (DISPLAY_MMIO_BASE(dev_priv) + 0x61260)
>> > -#define _VLV_BLC_HIST_CTL_B (DISPLAY_MMIO_BASE(dev_priv) + 0x61360)
>> > -#define VLV_BLC_HIST_CTL(pipe) _MMIO_PIPE(pipe, _VLV_BLC_HIST_CTL_A, \
>> > -					 _VLV_BLC_HIST_CTL_B)
>> > +#define _VLV_BLC_HIST_CTL_A		(VLV_DISPLAY_BASE + 0x61260)
>> > +#define _VLV_BLC_HIST_CTL_B		(VLV_DISPLAY_BASE + 0x61360)
>> > +#define VLV_BLC_HIST_CTL(pipe) _MMIO_PIPE(pipe, _VLV_BLC_HIST_CTL_A, _VLV_BLC_HIST_CTL_B)
>> >  
>> >  /* Backlight control */
>> >  #define BLC_PWM_CTL2	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61250) /* 965+ only */
>> 
>> -- 
>> Jani Nikula, Intel Open Source Graphics Center

-- 
Jani Nikula, Intel Open Source Graphics Center
