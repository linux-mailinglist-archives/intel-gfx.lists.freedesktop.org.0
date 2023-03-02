Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C0966A8766
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Mar 2023 17:53:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B39710E512;
	Thu,  2 Mar 2023 16:53:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 438D410E27C
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Mar 2023 16:53:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677775987; x=1709311987;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=YRAakCyNffj+QBAj6sq8qacdm8sxO1DFDrfkEwEvfnk=;
 b=iWTKP4PyjtrJbebsLJnvEDiuQ6sZ29rVQOsqmub8nAQm1/ZIICFh7T9w
 lq86K84cDGDh6cj7BWLGt/Sde/+CkjB2XHn7ZAE77nFzrW5M1e1hfusgP
 nhCjaGsDoNhzLkxYmYC46y9elk07TnBqaoYXgBhj//T7Sl6dOnn2wruRa
 VP4n5v8Rip/I0dbm5muGltTow/v2A9A4bkK/WEsx17MGB5deMOB1hz2Zz
 xCV6wflLVnNfQb10e5tSEDDk+BFDL/901Opu0mTdGF+IT3atqfe2nV79W
 yive9JKlQxM03NSpnn0vp6ghze1TCRq/7EJyrN61w4yINIhKeLwOzRWTd g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="336296553"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="336296553"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2023 08:53:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="1004182600"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="1004182600"
Received: from martamon-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.57.129])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2023 08:53:03 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <ZADS4xInFTFbNVWa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230302161617.2978821-1-jani.nikula@intel.com>
 <ZADS4xInFTFbNVWa@intel.com>
Date: Thu, 02 Mar 2023 18:53:01 +0200
Message-ID: <87cz5rumc2.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/debugfs: move IPS debugfs to
 hsw_ips.c
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 02 Mar 2023, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Thu, Mar 02, 2023 at 06:16:17PM +0200, Jani Nikula wrote:
>> Follow the style of placing debugfs next to the implementation.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks!

> Some ideas for future enhancements:
> - only register when IPS is actually supported
> - make it per-crtc since IPS only exists on pipe A
> - report the software state of IPS enable vs. disable
> - there's a false color bit just like with fbc, could
>   hook that up to help verify that it actually works

Yeah, I considered that, but since

#define HAS_IPS(dev_priv)	(IS_HSW_ULT(dev_priv) || IS_BROADWELL(dev_priv))

it's not really high up on the list of things to do... indeed I wanted
to stow this away in hsw_ips.[ch] because of that.

BR,
Jani.


>
>> ---
>>  drivers/gpu/drm/i915/display/hsw_ips.c        | 37 +++++++++++++++++++
>>  drivers/gpu/drm/i915/display/hsw_ips.h        |  2 +
>>  .../drm/i915/display/intel_display_debugfs.c  | 30 +--------------
>>  3 files changed, 41 insertions(+), 28 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/hsw_ips.c b/drivers/gpu/drm/i9=
15/display/hsw_ips.c
>> index 83aa3800245f..2910f5d0f3e2 100644
>> --- a/drivers/gpu/drm/i915/display/hsw_ips.c
>> +++ b/drivers/gpu/drm/i915/display/hsw_ips.c
>> @@ -267,3 +267,40 @@ void hsw_ips_get_config(struct intel_crtc_state *cr=
tc_state)
>>  		crtc_state->ips_enabled =3D true;
>>  	}
>>  }
>> +
>> +static int hsw_ips_debugfs_status_show(struct seq_file *m, void *unused)
>> +{
>> +	struct drm_i915_private *i915 =3D m->private;
>> +	intel_wakeref_t wakeref;
>> +
>> +	if (!HAS_IPS(i915))
>> +		return -ENODEV;
>> +
>> +	wakeref =3D intel_runtime_pm_get(&i915->runtime_pm);
>> +
>> +	seq_printf(m, "Enabled by kernel parameter: %s\n",
>> +		   str_yes_no(i915->params.enable_ips));
>> +
>> +	if (DISPLAY_VER(i915) >=3D 8) {
>> +		seq_puts(m, "Currently: unknown\n");
>> +	} else {
>> +		if (intel_de_read(i915, IPS_CTL) & IPS_ENABLE)
>> +			seq_puts(m, "Currently: enabled\n");
>> +		else
>> +			seq_puts(m, "Currently: disabled\n");
>> +	}
>> +
>> +	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
>> +
>> +	return 0;
>> +}
>> +
>> +DEFINE_SHOW_ATTRIBUTE(hsw_ips_debugfs_status);
>> +
>> +void hsw_ips_debugfs_register(struct drm_i915_private *i915)
>> +{
>> +	struct drm_minor *minor =3D i915->drm.primary;
>> +
>> +	debugfs_create_file("i915_ips_status", 0444, minor->debugfs_root,
>> +			    i915, &hsw_ips_debugfs_status_fops);
>> +}
>> diff --git a/drivers/gpu/drm/i915/display/hsw_ips.h b/drivers/gpu/drm/i9=
15/display/hsw_ips.h
>> index 4564dee497d7..7ed6061874f7 100644
>> --- a/drivers/gpu/drm/i915/display/hsw_ips.h
>> +++ b/drivers/gpu/drm/i915/display/hsw_ips.h
>> @@ -8,6 +8,7 @@
>>=20=20
>>  #include <linux/types.h>
>>=20=20
>> +struct drm_i915_private;
>>  struct intel_atomic_state;
>>  struct intel_crtc;
>>  struct intel_crtc_state;
>> @@ -22,5 +23,6 @@ bool hsw_crtc_state_ips_capable(const struct intel_crt=
c_state *crtc_state);
>>  int hsw_ips_compute_config(struct intel_atomic_state *state,
>>  			   struct intel_crtc *crtc);
>>  void hsw_ips_get_config(struct intel_crtc_state *crtc_state);
>> +void hsw_ips_debugfs_register(struct drm_i915_private *i915);
>>=20=20
>>  #endif /* __HSW_IPS_H__ */
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/driv=
ers/gpu/drm/i915/display/intel_display_debugfs.c
>> index 25013f303c82..8be606bfd2b4 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> @@ -8,6 +8,7 @@
>>  #include <drm/drm_debugfs.h>
>>  #include <drm/drm_fourcc.h>
>>=20=20
>> +#include "hsw_ips.h"
>>  #include "i915_debugfs.h"
>>  #include "i915_irq.h"
>>  #include "i915_reg.h"
>> @@ -49,33 +50,6 @@ static int i915_frontbuffer_tracking(struct seq_file =
*m, void *unused)
>>  	return 0;
>>  }
>>=20=20
>> -static int i915_ips_status(struct seq_file *m, void *unused)
>> -{
>> -	struct drm_i915_private *dev_priv =3D node_to_i915(m->private);
>> -	intel_wakeref_t wakeref;
>> -
>> -	if (!HAS_IPS(dev_priv))
>> -		return -ENODEV;
>> -
>> -	wakeref =3D intel_runtime_pm_get(&dev_priv->runtime_pm);
>> -
>> -	seq_printf(m, "Enabled by kernel parameter: %s\n",
>> -		   str_yes_no(dev_priv->params.enable_ips));
>> -
>> -	if (DISPLAY_VER(dev_priv) >=3D 8) {
>> -		seq_puts(m, "Currently: unknown\n");
>> -	} else {
>> -		if (intel_de_read(dev_priv, IPS_CTL) & IPS_ENABLE)
>> -			seq_puts(m, "Currently: enabled\n");
>> -		else
>> -			seq_puts(m, "Currently: disabled\n");
>> -	}
>> -
>> -	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
>> -
>> -	return 0;
>> -}
>> -
>>  static int i915_sr_status(struct seq_file *m, void *unused)
>>  {
>>  	struct drm_i915_private *dev_priv =3D node_to_i915(m->private);
>> @@ -1343,7 +1317,6 @@ static const struct file_operations i915_fifo_unde=
rrun_reset_ops =3D {
>>=20=20
>>  static const struct drm_info_list intel_display_debugfs_list[] =3D {
>>  	{"i915_frontbuffer_tracking", i915_frontbuffer_tracking, 0},
>> -	{"i915_ips_status", i915_ips_status, 0},
>>  	{"i915_sr_status", i915_sr_status, 0},
>>  	{"i915_opregion", i915_opregion, 0},
>>  	{"i915_vbt", i915_vbt, 0},
>> @@ -1385,6 +1358,7 @@ void intel_display_debugfs_register(struct drm_i91=
5_private *i915)
>>  				 ARRAY_SIZE(intel_display_debugfs_list),
>>  				 minor->debugfs_root, minor);
>>=20=20
>> +	hsw_ips_debugfs_register(i915);
>>  	intel_dmc_debugfs_register(i915);
>>  	intel_fbc_debugfs_register(i915);
>>  	intel_hpd_debugfs_register(i915);
>> --=20
>> 2.39.1

--=20
Jani Nikula, Intel Open Source Graphics Center
