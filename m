Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 51E594CF53A
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Mar 2022 10:26:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5199610EB02;
	Mon,  7 Mar 2022 09:26:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 727FA10EB02
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Mar 2022 09:26:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646645171; x=1678181171;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=VQu8YpYJAZQDTr3FB2ur6/DCCSBUZwFWcE6WyRfT1bI=;
 b=iciBL5DbEJYbqcQ3pkORcK5nEJt20fODvp8SszA0lJEAocRLHeNi3fjX
 W+C1N4TksQy26NDftKKygPnv3d+34F3vAnYCwHCiU4tPE06MMagXJZEJz
 x0PUP5crbmQ6xoEJ/dssu6PfJVawWYg6EwJuWxrpQUrpOcUyeFawx6eJ5
 TgbgGPuxxYmoX/HECP8WY0g+IKgslR6JfNMG7+y1/PmsPNnXXkogmaZ3z
 rrYUIyXA4ahv2G+1/xGp26AKVJiQ+KIL6pYIDpdJh9bZbiRNruq3PRXdQ
 7zeAMFM79A1VECF4MQBGd9OlL2ektV9rofGLJv6TVmIcB8huzFrj2naLl w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10278"; a="340777795"
X-IronPort-AV: E=Sophos;i="5.90,161,1643702400"; d="scan'208";a="340777795"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2022 01:26:10 -0800
X-IronPort-AV: E=Sophos;i="5.90,161,1643702400"; d="scan'208";a="512613726"
Received: from hazimham-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.27.252])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2022 01:26:09 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <YiIxCtz1GjOXpfNn@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220304101426.1891347-1-jani.nikula@intel.com>
 <20220304101426.1891347-2-jani.nikula@intel.com>
 <YiIxCtz1GjOXpfNn@intel.com>
Date: Mon, 07 Mar 2022 11:26:01 +0200
Message-ID: <87fsnu2jx2.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/gmbus: use to_intel_gmbus()
 instead of open coding
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

On Fri, 04 Mar 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Fri, Mar 04, 2022 at 12:14:26PM +0200, Jani Nikula wrote:
>> We have a helper for getting at the enclosing gmbus struct from the
>> embedded i2c_adapter, use it.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Series is
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed.

BR,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/display/intel_gmbus.c | 18 +++++-------------
>>  1 file changed, 5 insertions(+), 13 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/dr=
m/i915/display/intel_gmbus.c
>> index 8f26528c3dc7..21281a7bdc17 100644
>> --- a/drivers/gpu/drm/i915/display/intel_gmbus.c
>> +++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
>> @@ -300,9 +300,7 @@ static void set_data(void *data, int state_high)
>>  static int
>>  intel_gpio_pre_xfer(struct i2c_adapter *adapter)
>>  {
>> -	struct intel_gmbus *bus =3D container_of(adapter,
>> -					       struct intel_gmbus,
>> -					       adapter);
>> +	struct intel_gmbus *bus =3D to_intel_gmbus(adapter);
>>  	struct drm_i915_private *dev_priv =3D bus->dev_priv;
>>=20=20
>>  	intel_gmbus_reset(dev_priv);
>> @@ -319,9 +317,7 @@ intel_gpio_pre_xfer(struct i2c_adapter *adapter)
>>  static void
>>  intel_gpio_post_xfer(struct i2c_adapter *adapter)
>>  {
>> -	struct intel_gmbus *bus =3D container_of(adapter,
>> -					       struct intel_gmbus,
>> -					       adapter);
>> +	struct intel_gmbus *bus =3D to_intel_gmbus(adapter);
>>  	struct drm_i915_private *dev_priv =3D bus->dev_priv;
>>=20=20
>>  	set_data(bus, 1);
>> @@ -619,9 +615,7 @@ static int
>>  do_gmbus_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs, int nu=
m,
>>  	      u32 gmbus0_source)
>>  {
>> -	struct intel_gmbus *bus =3D container_of(adapter,
>> -					       struct intel_gmbus,
>> -					       adapter);
>> +	struct intel_gmbus *bus =3D to_intel_gmbus(adapter);
>>  	struct drm_i915_private *dev_priv =3D bus->dev_priv;
>>  	int i =3D 0, inc, try =3D 0;
>>  	int ret =3D 0;
>> @@ -751,8 +745,7 @@ do_gmbus_xfer(struct i2c_adapter *adapter, struct i2=
c_msg *msgs, int num,
>>  static int
>>  gmbus_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs, int num)
>>  {
>> -	struct intel_gmbus *bus =3D
>> -		container_of(adapter, struct intel_gmbus, adapter);
>> +	struct intel_gmbus *bus =3D to_intel_gmbus(adapter);
>>  	struct drm_i915_private *dev_priv =3D bus->dev_priv;
>>  	intel_wakeref_t wakeref;
>>  	int ret;
>> @@ -776,8 +769,7 @@ gmbus_xfer(struct i2c_adapter *adapter, struct i2c_m=
sg *msgs, int num)
>>=20=20
>>  int intel_gmbus_output_aksv(struct i2c_adapter *adapter)
>>  {
>> -	struct intel_gmbus *bus =3D
>> -		container_of(adapter, struct intel_gmbus, adapter);
>> +	struct intel_gmbus *bus =3D to_intel_gmbus(adapter);
>>  	struct drm_i915_private *dev_priv =3D bus->dev_priv;
>>  	u8 cmd =3D DRM_HDCP_DDC_AKSV;
>>  	u8 buf[DRM_HDCP_KSV_LEN] =3D { 0 };
>> --=20
>> 2.30.2

--=20
Jani Nikula, Intel Open Source Graphics Center
