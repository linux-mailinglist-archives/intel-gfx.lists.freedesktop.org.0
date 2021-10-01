Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CED841E9BA
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Oct 2021 11:40:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 500176E50C;
	Fri,  1 Oct 2021 09:40:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB6AD6E50C
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Oct 2021 09:40:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10123"; a="222182409"
X-IronPort-AV: E=Sophos;i="5.85,337,1624345200"; d="scan'208";a="222182409"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2021 02:40:34 -0700
X-IronPort-AV: E=Sophos;i="5.85,337,1624345200"; d="scan'208";a="618980800"
Received: from kdoertel-mobl.ger.corp.intel.com (HELO localhost)
 ([10.251.222.34])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2021 02:40:32 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
In-Reply-To: <YUnVmuhQJ+UXmp/a@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210921110244.8666-1-jani.nikula@intel.com>
 <YUnVmuhQJ+UXmp/a@intel.com>
Date: Fri, 01 Oct 2021 12:40:30 +0300
Message-ID: <87fstlt75d.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/hdmi: convert intel_hdmi_to_dev to
 intel_hdmi_to_i915
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

On Tue, 21 Sep 2021, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Tue, Sep 21, 2021 at 02:02:44PM +0300, Jani Nikula wrote:
>> Prefer i915 over drm pointer.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed.

BR,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/display/intel_hdmi.c | 16 +++++++---------
>>  1 file changed, 7 insertions(+), 9 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm=
/i915/display/intel_hdmi.c
>> index 1bc33766ed39..1e8a87f81e8e 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
>> @@ -53,21 +53,20 @@
>>  #include "intel_panel.h"
>>  #include "intel_snps_phy.h"
>>=20=20
>> -static struct drm_device *intel_hdmi_to_dev(struct intel_hdmi *intel_hd=
mi)
>> +static struct drm_i915_private *intel_hdmi_to_i915(struct intel_hdmi *i=
ntel_hdmi)
>>  {
>> -	return hdmi_to_dig_port(intel_hdmi)->base.base.dev;
>> +	return to_i915(hdmi_to_dig_port(intel_hdmi)->base.base.dev);
>>  }
>>=20=20
>>  static void
>>  assert_hdmi_port_disabled(struct intel_hdmi *intel_hdmi)
>>  {
>> -	struct drm_device *dev =3D intel_hdmi_to_dev(intel_hdmi);
>> -	struct drm_i915_private *dev_priv =3D to_i915(dev);
>> +	struct drm_i915_private *dev_priv =3D intel_hdmi_to_i915(intel_hdmi);
>>  	u32 enabled_bits;
>>=20=20
>>  	enabled_bits =3D HAS_DDI(dev_priv) ? DDI_BUF_CTL_ENABLE : SDVO_ENABLE;
>>=20=20
>> -	drm_WARN(dev,
>> +	drm_WARN(&dev_priv->drm,
>>  		 intel_de_read(dev_priv, intel_hdmi->hdmi_reg) & enabled_bits,
>>  		 "HDMI port enabled, expecting disabled\n");
>>  }
>> @@ -1246,7 +1245,7 @@ static void hsw_set_infoframes(struct intel_encode=
r *encoder,
>>=20=20
>>  void intel_dp_dual_mode_set_tmds_output(struct intel_hdmi *hdmi, bool e=
nable)
>>  {
>> -	struct drm_i915_private *dev_priv =3D to_i915(intel_hdmi_to_dev(hdmi));
>> +	struct drm_i915_private *dev_priv =3D intel_hdmi_to_i915(hdmi);
>>  	struct i2c_adapter *adapter =3D
>>  		intel_gmbus_get_adapter(dev_priv, hdmi->ddc_bus);
>>=20=20
>> @@ -1830,7 +1829,7 @@ hdmi_port_clock_valid(struct intel_hdmi *hdmi,
>>  		      int clock, bool respect_downstream_limits,
>>  		      bool has_hdmi_sink)
>>  {
>> -	struct drm_i915_private *dev_priv =3D to_i915(intel_hdmi_to_dev(hdmi));
>> +	struct drm_i915_private *dev_priv =3D intel_hdmi_to_i915(hdmi);
>>=20=20
>>  	if (clock < 25000)
>>  		return MODE_CLOCK_LOW;
>> @@ -1946,8 +1945,7 @@ intel_hdmi_mode_valid(struct drm_connector *connec=
tor,
>>  		      struct drm_display_mode *mode)
>>  {
>>  	struct intel_hdmi *hdmi =3D intel_attached_hdmi(to_intel_connector(con=
nector));
>> -	struct drm_device *dev =3D intel_hdmi_to_dev(hdmi);
>> -	struct drm_i915_private *dev_priv =3D to_i915(dev);
>> +	struct drm_i915_private *dev_priv =3D intel_hdmi_to_i915(hdmi);
>>  	enum drm_mode_status status;
>>  	int clock =3D mode->clock;
>>  	int max_dotclk =3D to_i915(connector->dev)->max_dotclk_freq;
>> --=20
>> 2.30.2

--=20
Jani Nikula, Intel Open Source Graphics Center
