Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 12084737C09
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jun 2023 09:32:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F5EC10E096;
	Wed, 21 Jun 2023 07:32:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 408D210E096
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jun 2023 07:32:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687332724; x=1718868724;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=j3aYYMzwS2kpknJTUxPAT7XkYJV8bqRtVIoLqytw4R8=;
 b=cC8VEQcQfTb5va8lUKR2tQ5LSd9mjPa3ly0dekTsSppTXMdfOEppqAoe
 XR1Dfvjt9OEX93GymaZvBfUC8sYtP+aAw5k2RObVlRuhDtIi9VXmmhjl2
 gXzUcXFyphWMHVDiX9NwM67wEi9q7BeKabFxSMkq0XynHT/16GK2iRk2X
 mJl6PL2g8RNS2LyiqwefolpdSgqtloQpeL4evavgGevmPqUNVt92YRdmN
 idRgczuQG/kOf5qwJDHe95er8MU4y677N06xyraAHvvuDeyIdHr/cRXMr
 /ohexJXZVvI327YVjIkQU86QxQ5YZHn9HZEfSQFesBOivyFzBqu3Gu0Cg Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="340437837"
X-IronPort-AV: E=Sophos;i="6.00,259,1681196400"; d="scan'208";a="340437837"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 00:32:03 -0700
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="748524462"
X-IronPort-AV: E=Sophos;i="6.00,259,1681196400"; d="scan'208";a="748524462"
Received: from dafnaroz-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.63.122])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 00:31:59 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>, "Taylor,
 Clinton A" <clinton.a.taylor@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
In-Reply-To: <DM4PR11MB59710DEADAFD5A823AEE78F1875CA@DM4PR11MB5971.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230616210028.1601533-1-radhakrishna.sripada@intel.com>
 <f78a4825e63acc93ae6f4bde4916e66ca1f0c3db.camel@intel.com>
 <DM4PR11MB59710DEADAFD5A823AEE78F1875CA@DM4PR11MB5971.namprd11.prod.outlook.com>
Date: Wed, 21 Jun 2023 10:31:52 +0300
Message-ID: <87legdfezb.fsf@intel.com>
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

On Tue, 20 Jun 2023, "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com> wrote:
> Merged. Thank you for the review.

Where are the CI results?

Please never merge patches without CI results.

BR,
Jani.

>
> --Radhakrishna(RK) Sripada
>
>> -----Original Message-----
>> From: Taylor, Clinton A <clinton.a.taylor@intel.com>
>> Sent: Tuesday, June 20, 2023 2:10 PM
>> To: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>; intel-
>> gfx@lists.freedesktop.org
>> Cc: Lee, Shawn C <shawn.c.lee@intel.com>; Almahallawy, Khaled
>> <khaled.almahallawy@intel.com>
>> Subject: Re: [PATCH] drm/i915/mtl: Skip using vbt hdmi_level_shifter selection
>> on MTL
>> 
>> On Fri, 2023-06-16 at 14:00 -0700, Radhakrishna Sripada wrote:
>> > The hdmi_level_shifter part of General Bytes definition in VBT, which was
>> > used for choosing different levels on earlier platforms is now a hidden
>> > optin and shows the default value of 0. The level shifter is now to be
>> > deduced from hdmi_default_entry in  intel_ddi_buf_trans for each phy.
>> >
>> > Skip providing the default hw provided value to force driver to choose hdmi
>> > default entry.
>> >
>> > Bspec: 20124
>> > Cc: Khaled Almahallawy <khaled.almahallawy@intel.com>
>> > Cc: Lee Shawn C <shawn.c.lee@intel.com>
>> > Cc: Clint Taylor <Clinton.A.Taylor@intel.com>
>> > Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_bios.c | 3 ++-
>> >  1 file changed, 2 insertions(+), 1 deletion(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c
>> > b/drivers/gpu/drm/i915/display/intel_bios.c
>> > index 34a397adbd6b..4b9bf76e137d 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_bios.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>> > @@ -2615,7 +2615,8 @@ intel_bios_encoder_is_lspcon(const struct
>> intel_bios_encoder_data
>> > *devdata)
>> >  /* This is an index in the HDMI/DVI DDI buffer translation table, or -1 */
>> >  int intel_bios_hdmi_level_shift(const struct intel_bios_encoder_data
>> *devdata)
>> >  {
>> > -	if (!devdata || devdata->i915->display.vbt.version < 158)
>> > +	if (!devdata || devdata->i915->display.vbt.version < 158 ||
>> > +	    DISPLAY_VER(devdata->i915) >= 14)
>> >  		return -1;
>> >
>> Reviewed-by: Clint Taylor <Clinton.A.Taylor@intel.com>
>> 
>> -Clint
>> 
>> >  	return devdata->child.hdmi_level_shifter_value;

-- 
Jani Nikula, Intel Open Source Graphics Center
