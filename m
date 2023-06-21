Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35EC4738AE1
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jun 2023 18:21:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89E0410E23F;
	Wed, 21 Jun 2023 16:21:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACAA010E23F
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jun 2023 16:21:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687364498; x=1718900498;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=SUborKzi2Kg3dHL50WT7eAe91khH4VmtvcGWcKgUaiU=;
 b=hElwBIENmz7qQgbnV+jdjAboH9i+T4duN6O1sGO/odLyszsI5Of6gEvy
 SR6AsuZGFJFiregK1YqkNmMTrOFFmZdVYb0X5huOznztgiih/DX+PUgPH
 Jy4ly8nCIiXiVFuvra75TnF4wXGJn5YktObuDPguh8nR4XEJjQYeWEpfq
 FClIyAJgrmy1ZiACZAkndJNFL0nOrW3vK+uPGJqDL3nqwmXpsWHI+5R3q
 /32/ZmN1bBsRYtYdmDS96xF0HHKQbV659qibFjhiaVrT0O4JUngZpXDDp
 vpJC77c9pWypESy+IC0AflAj2vg4izofpO7xD0xBWU5apNXKy5vcapt9F Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="446605590"
X-IronPort-AV: E=Sophos;i="6.00,261,1681196400"; d="scan'208";a="446605590"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 09:21:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="714549217"
X-IronPort-AV: E=Sophos;i="6.00,261,1681196400"; d="scan'208";a="714549217"
Received: from afedotov-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.63.24])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 09:21:35 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>, "Taylor,
 Clinton A" <clinton.a.taylor@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
In-Reply-To: <DM4PR11MB59711E94214428387B853666875DA@DM4PR11MB5971.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230616210028.1601533-1-radhakrishna.sripada@intel.com>
 <f78a4825e63acc93ae6f4bde4916e66ca1f0c3db.camel@intel.com>
 <DM4PR11MB59710DEADAFD5A823AEE78F1875CA@DM4PR11MB5971.namprd11.prod.outlook.com>
 <87legdfezb.fsf@intel.com>
 <DM4PR11MB59711E94214428387B853666875DA@DM4PR11MB5971.namprd11.prod.outlook.com>
Date: Wed, 21 Jun 2023 19:21:31 +0300
Message-ID: <875y7g3hx0.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Skip using vbt
 hdmi_level_shifter selection on MTL
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

On Wed, 21 Jun 2023, "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com> wrote:
>> -----Original Message-----
>> From: Jani Nikula <jani.nikula@linux.intel.com>
>> Sent: Wednesday, June 21, 2023 12:32 AM
>> To: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>; Taylor, Clinton A
>> <clinton.a.taylor@intel.com>; intel-gfx@lists.freedesktop.org
>> Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Skip using vbt hdmi_level_shifter
>> selection on MTL
>> 
>> On Tue, 20 Jun 2023, "Sripada, Radhakrishna"
>> <radhakrishna.sripada@intel.com> wrote:
>> > Merged. Thank you for the review.
>> 
>> Where are the CI results?
>> 
>> Please never merge patches without CI results.
> Apologies Jani. Overlooked the green as CI results as the patch was sent 3 days ago. Let me trigger a fresh CI run.

The fresh run will fail because it can no longer apply the patch, as
it's in the baseline already.

> Will keep this in mind for future.

Thanks,
Jani.

>
> --Radhakrishna(RK) Sripada
>
>> 
>> BR,
>> Jani.
>> 
>> >
>> > --Radhakrishna(RK) Sripada
>> >
>> >> -----Original Message-----
>> >> From: Taylor, Clinton A <clinton.a.taylor@intel.com>
>> >> Sent: Tuesday, June 20, 2023 2:10 PM
>> >> To: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>; intel-
>> >> gfx@lists.freedesktop.org
>> >> Cc: Lee, Shawn C <shawn.c.lee@intel.com>; Almahallawy, Khaled
>> >> <khaled.almahallawy@intel.com>
>> >> Subject: Re: [PATCH] drm/i915/mtl: Skip using vbt hdmi_level_shifter
>> selection
>> >> on MTL
>> >>
>> >> On Fri, 2023-06-16 at 14:00 -0700, Radhakrishna Sripada wrote:
>> >> > The hdmi_level_shifter part of General Bytes definition in VBT, which was
>> >> > used for choosing different levels on earlier platforms is now a hidden
>> >> > optin and shows the default value of 0. The level shifter is now to be
>> >> > deduced from hdmi_default_entry in  intel_ddi_buf_trans for each phy.
>> >> >
>> >> > Skip providing the default hw provided value to force driver to choose hdmi
>> >> > default entry.
>> >> >
>> >> > Bspec: 20124
>> >> > Cc: Khaled Almahallawy <khaled.almahallawy@intel.com>
>> >> > Cc: Lee Shawn C <shawn.c.lee@intel.com>
>> >> > Cc: Clint Taylor <Clinton.A.Taylor@intel.com>
>> >> > Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>> >> > ---
>> >> >  drivers/gpu/drm/i915/display/intel_bios.c | 3 ++-
>> >> >  1 file changed, 2 insertions(+), 1 deletion(-)
>> >> >
>> >> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c
>> >> > b/drivers/gpu/drm/i915/display/intel_bios.c
>> >> > index 34a397adbd6b..4b9bf76e137d 100644
>> >> > --- a/drivers/gpu/drm/i915/display/intel_bios.c
>> >> > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>> >> > @@ -2615,7 +2615,8 @@ intel_bios_encoder_is_lspcon(const struct
>> >> intel_bios_encoder_data
>> >> > *devdata)
>> >> >  /* This is an index in the HDMI/DVI DDI buffer translation table, or -1 */
>> >> >  int intel_bios_hdmi_level_shift(const struct intel_bios_encoder_data
>> >> *devdata)
>> >> >  {
>> >> > -	if (!devdata || devdata->i915->display.vbt.version < 158)
>> >> > +	if (!devdata || devdata->i915->display.vbt.version < 158 ||
>> >> > +	    DISPLAY_VER(devdata->i915) >= 14)
>> >> >  		return -1;
>> >> >
>> >> Reviewed-by: Clint Taylor <Clinton.A.Taylor@intel.com>
>> >>
>> >> -Clint
>> >>
>> >> >  	return devdata->child.hdmi_level_shifter_value;
>> 
>> --
>> Jani Nikula, Intel Open Source Graphics Center

-- 
Jani Nikula, Intel Open Source Graphics Center
