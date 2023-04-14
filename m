Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 45AF56E1EEC
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Apr 2023 11:03:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BC8510E0EB;
	Fri, 14 Apr 2023 09:03:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9870A10E0EB
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Apr 2023 09:03:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681462987; x=1712998987;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=NS8nFJKA8jN+hsFguqSGxT0nQ6IJN5ZkwVfnA561aao=;
 b=SN4wnAgUnH/MFa4YPyrpi+kyip//q0X2hqd4P2g7EDZbVrqi2WscTigr
 c7YPGiYTfHvHBNEE4Kj0g4b0ojEXx2AbrFjyVUp8jE5aQXTMiWZtE5yIC
 1Dgmnozc83r4txJYrndn26Xii5u2HDL5VLf2C4sURO6Jwm6lTPbqBRjLe
 Rg8jE/5qsPhjGFv/bSx2/iswuQisNEpo1dU7jlHi85M+8bgRivneVdomG
 /etny/2gA2IUxFukizSXouik7MHXdPveizSAj+OL8J3tlW0990QSQ+hX/
 ReAnOe/mYtou4VwGumxYTj10at14CCw21zF02779PxMGJ13Z3YQX5j6wR Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="324772671"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="324772671"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 02:02:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="1019503682"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="1019503682"
Received: from bauinger-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.55.117])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 02:02:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <168139282706.4412.15825674669289194174@gjsousa-mobl2>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1681379167.git.jani.nikula@intel.com>
 <9ac5d37811b806e6849f913a3f527cfb6d869818.1681379167.git.jani.nikula@intel.com>
 <168139282706.4412.15825674669289194174@gjsousa-mobl2>
Date: Fri, 14 Apr 2023 12:02:21 +0300
Message-ID: <87y1mug7ky.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 06/10] drm/i915/display: rename
 intel_display_driver_* functions
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

On Thu, 13 Apr 2023, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Quoting Jani Nikula (2023-04-13 06:47:32)
>> Follow the usual naming conventions.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display.c  |  2 +-
>>  .../drm/i915/display/intel_display_driver.c   | 16 +++++++-------
>>  .../drm/i915/display/intel_display_driver.h   | 14 ++++++-------
>>  drivers/gpu/drm/i915/i915_driver.c            | 21 ++++++++++---------
>>  4 files changed, 27 insertions(+), 26 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/=
drm/i915/display/intel_display.c
>> index 56e3aab7e1c6..f425e5ed155b 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -833,7 +833,7 @@ void intel_display_finish_reset(struct drm_i915_priv=
ate *i915)
>>                  * so need a full re-initialization.
>>                  */
>>                 intel_pps_unlock_regs_wa(i915);
>> -          intel_modeset_init_hw(i915);
>> +          intel_display_driver_init_hw(i915);
>>                 intel_clock_gating_init(i915);
>>                 intel_hpd_init(i915);
>>=20=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drive=
rs/gpu/drm/i915/display/intel_display_driver.c
>> index f7805c6f1b63..45e425100385 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
>> @@ -72,7 +72,7 @@ bool intel_display_driver_probe_defer(struct pci_dev *=
pdev)
>>         return false;
>>  }
>>=20=20
>> -void intel_modeset_init_hw(struct drm_i915_private *i915)
>> +void intel_display_driver_init_hw(struct drm_i915_private *i915)
>>  {
>>         struct intel_cdclk_state *cdclk_state;
>>=20=20
>> @@ -170,7 +170,7 @@ static void intel_plane_possible_crtcs_init(struct d=
rm_i915_private *dev_priv)
>>  }
>>=20=20
>>  /* part #1: call before irq install */
>> -int intel_modeset_init_noirq(struct drm_i915_private *i915)
>> +int intel_display_driver_probe_noirq(struct drm_i915_private *i915)
>>  {
>>         int ret;
>>=20=20
>> @@ -246,7 +246,7 @@ int intel_modeset_init_noirq(struct drm_i915_private=
 *i915)
>>  }
>>=20=20
>>  /* part #2: call after irq install, but before gem init */
>> -int intel_modeset_init_nogem(struct drm_i915_private *i915)
>> +int intel_display_driver_probe_nogem(struct drm_i915_private *i915)
>>  {
>>         struct drm_device *dev =3D &i915->drm;
>>         enum pipe pipe;
>> @@ -281,7 +281,7 @@ int intel_modeset_init_nogem(struct drm_i915_private=
 *i915)
>>         intel_fdi_pll_freq_update(i915);
>>=20=20
>>         intel_update_czclk(i915);
>> -  intel_modeset_init_hw(i915);
>> +  intel_display_driver_init_hw(i915);
>>         intel_dpll_update_ref_clks(i915);
>>=20=20
>>         intel_hdcp_component_init(i915);
>> @@ -318,7 +318,7 @@ int intel_modeset_init_nogem(struct drm_i915_private=
 *i915)
>>  }
>>=20=20
>>  /* part #3: call after gem init */
>> -int intel_modeset_init(struct drm_i915_private *i915)
>> +int intel_display_driver_probe(struct drm_i915_private *i915)
>>  {
>>         int ret;
>>=20=20
>> @@ -382,7 +382,7 @@ void intel_display_driver_register(struct drm_i915_p=
rivate *i915)
>>  }
>>=20=20
>>  /* part #1: call before irq uninstall */
>> -void intel_modeset_driver_remove(struct drm_i915_private *i915)
>> +void intel_display_driver_remove(struct drm_i915_private *i915)
>>  {
>>         if (!HAS_DISPLAY(i915))
>>                 return;
>> @@ -402,7 +402,7 @@ void intel_modeset_driver_remove(struct drm_i915_pri=
vate *i915)
>>  }
>>=20=20
>>  /* part #2: call after irq uninstall */
>> -void intel_modeset_driver_remove_noirq(struct drm_i915_private *i915)
>> +void intel_display_driver_remove_noirq(struct drm_i915_private *i915)
>>  {
>>         if (!HAS_DISPLAY(i915))
>>                 return;
>> @@ -436,7 +436,7 @@ void intel_modeset_driver_remove_noirq(struct drm_i9=
15_private *i915)
>>  }
>>=20=20
>>  /* part #3: call after gem init */
>> -void intel_modeset_driver_remove_nogem(struct drm_i915_private *i915)
>> +void intel_display_driver_remove_nogem(struct drm_i915_private *i915)
>>  {
>>         intel_dmc_fini(i915);
>>=20=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.h b/drive=
rs/gpu/drm/i915/display/intel_display_driver.h
>> index 947b666575ee..aab498617b90 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_driver.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.h
>> @@ -12,14 +12,14 @@ struct drm_i915_private;
>>  struct pci_dev;
>>=20=20
>>  bool intel_display_driver_probe_defer(struct pci_dev *pdev);
>> -void intel_modeset_init_hw(struct drm_i915_private *i915);
>> -int intel_modeset_init_noirq(struct drm_i915_private *i915);
>> -int intel_modeset_init_nogem(struct drm_i915_private *i915);
>> -int intel_modeset_init(struct drm_i915_private *i915);
>> +void intel_display_driver_init_hw(struct drm_i915_private *i915);
>> +int intel_display_driver_probe_noirq(struct drm_i915_private *i915);
>> +int intel_display_driver_probe_nogem(struct drm_i915_private *i915);
>> +int intel_display_driver_probe(struct drm_i915_private *i915);
>>  void intel_display_driver_register(struct drm_i915_private *i915);
>> -void intel_modeset_driver_remove(struct drm_i915_private *i915);
>> -void intel_modeset_driver_remove_noirq(struct drm_i915_private *i915);
>> -void intel_modeset_driver_remove_nogem(struct drm_i915_private *i915);
>> +void intel_display_driver_remove(struct drm_i915_private *i915);
>> +void intel_display_driver_remove_noirq(struct drm_i915_private *i915);
>> +void intel_display_driver_remove_nogem(struct drm_i915_private *i915);
>>  void intel_display_driver_unregister(struct drm_i915_private *i915);
>
> Looks like some comments need to be fixed now:
>
>   =E2=9D=AF git grep -w -e intel_modeset_init_hw -e intel_modeset_init_no=
irq -e intel_modeset_init_nogem -e intel_modeset_init -e intel_modeset_driv=
er_remove -e intel_modeset_driver_remove_noirq -e intel_modeset_driver_remo=
ve_nogem
>   i915_driver.c: *   - drive output discovery via intel_modeset_init()
>   i915_driver.c:   * Modeset enabling in intel_modeset_init_hw() also nee=
ds working
>   i915_irq.c:      * intel_modeset_driver_remove() calling us out of sequ=
ence.

Thanks, will fix.

BR,
Jani.

>
> --
> Gustavo Sousa
>
>>=20=20
>>  #endif /* __INTEL_DISPLAY_DRIVER_H__ */
>> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i=
915_driver.c
>> index 5ccb24498cbf..9d06dae47735 100644
>> --- a/drivers/gpu/drm/i915/i915_driver.c
>> +++ b/drivers/gpu/drm/i915/i915_driver.c
>> @@ -791,7 +791,7 @@ int i915_driver_probe(struct pci_dev *pdev, const st=
ruct pci_device_id *ent)
>>         if (ret < 0)
>>                 goto out_cleanup_mmio;
>>=20=20
>> -  ret =3D intel_modeset_init_noirq(i915);
>> +  ret =3D intel_display_driver_probe_noirq(i915);
>>         if (ret < 0)
>>                 goto out_cleanup_hw;
>>=20=20
>> @@ -799,7 +799,7 @@ int i915_driver_probe(struct pci_dev *pdev, const st=
ruct pci_device_id *ent)
>>         if (ret)
>>                 goto out_cleanup_modeset;
>>=20=20
>> -  ret =3D intel_modeset_init_nogem(i915);
>> +  ret =3D intel_display_driver_probe_nogem(i915);
>>         if (ret)
>>                 goto out_cleanup_irq;
>>=20=20
>> @@ -809,7 +809,7 @@ int i915_driver_probe(struct pci_dev *pdev, const st=
ruct pci_device_id *ent)
>>=20=20
>>         intel_pxp_init(i915);
>>=20=20
>> -  ret =3D intel_modeset_init(i915);
>> +  ret =3D intel_display_driver_probe(i915);
>>         if (ret)
>>                 goto out_cleanup_gem;
>>=20=20
>> @@ -829,14 +829,14 @@ int i915_driver_probe(struct pci_dev *pdev, const =
struct pci_device_id *ent)
>>         i915_gem_driver_release(i915);
>>  out_cleanup_modeset2:
>>         /* FIXME clean up the error path */
>> -  intel_modeset_driver_remove(i915);
>> +  intel_display_driver_remove(i915);
>>         intel_irq_uninstall(i915);
>> -  intel_modeset_driver_remove_noirq(i915);
>> +  intel_display_driver_remove_noirq(i915);
>>         goto out_cleanup_modeset;
>>  out_cleanup_irq:
>>         intel_irq_uninstall(i915);
>>  out_cleanup_modeset:
>> -  intel_modeset_driver_remove_nogem(i915);
>> +  intel_display_driver_remove_nogem(i915);
>>  out_cleanup_hw:
>>         i915_driver_hw_remove(i915);
>>         intel_memory_regions_driver_release(i915);
>> @@ -872,16 +872,16 @@ void i915_driver_remove(struct drm_i915_private *i=
915)
>>=20=20
>>         intel_gvt_driver_remove(i915);
>>=20=20
>> -  intel_modeset_driver_remove(i915);
>> +  intel_display_driver_remove(i915);
>>=20=20
>>         intel_irq_uninstall(i915);
>>=20=20
>> -  intel_modeset_driver_remove_noirq(i915);
>> +  intel_display_driver_remove_noirq(i915);
>>=20=20
>>         i915_reset_error_state(i915);
>>         i915_gem_driver_remove(i915);
>>=20=20
>> -  intel_modeset_driver_remove_nogem(i915);
>> +  intel_display_driver_remove_nogem(i915);
>>=20=20
>>         i915_driver_hw_remove(i915);
>>=20=20
>> @@ -1244,7 +1244,8 @@ static int i915_drm_resume(struct drm_device *dev)
>>=20=20
>>         i915_gem_resume(dev_priv);
>>=20=20
>> -  intel_modeset_init_hw(dev_priv);
>> +  intel_display_driver_init_hw(dev_priv);
>> +
>>         intel_clock_gating_init(dev_priv);
>>         intel_hpd_init(dev_priv);
>>=20=20
>> --=20
>> 2.39.2
>>

--=20
Jani Nikula, Intel Open Source Graphics Center
