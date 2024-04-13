Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69EDA8A5011
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Apr 2024 15:00:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D62810FCD3;
	Mon, 15 Apr 2024 13:00:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=gmx.de header.i=w_armin@gmx.de header.b="HtyX+VaO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3457110E326
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 Apr 2024 14:49:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
 s=s31663417; t=1713019755; x=1713624555; i=w_armin@gmx.de;
 bh=okYUqaoqD8t5ZTf7MMRnKc8ZwAGpmdU73/pbDYl1/xY=;
 h=X-UI-Sender-Class:Date:Subject:To:Cc:References:From:
 In-Reply-To;
 b=HtyX+VaO1RRE1oAAahygR7RNGE4xBZDrr3dXWrkz3lcakYfEq8vYFuQyqMane6+k
 kzkndHME69XYSXKpIZglvKSnGH/y1098YsU+0LZodffhM9tmZRfQZJfIoLdfb+3/X
 dSuhOIsAsc8ddYufZ9Yeovm2zKXn8oDRirUyE4Reb20HFR8r3Llcb/rOoLG942G2z
 QTY5x7hKssTrd8z4Cpk1ioDDArKMq/kJn8JkzDH2K56HECB+HLYTU33M7/IZA9LJJ
 cyCtsDds374038wRZkKoTLQBtu7cTi6jsJMPM5bKU1YE4+f0BSQGgLbFuaF3rPvLP
 yFfRnTns+d7A2RjvJg==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [141.30.226.129] ([141.30.226.129]) by mail.gmx.net (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MdNcG-1sUiNM32y8-00ZP3o; Sat, 13
 Apr 2024 16:43:52 +0200
Message-ID: <55e00433-71a6-4b41-a65b-0a8871398cdc@gmx.de>
Date: Sat, 13 Apr 2024 16:43:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/hwmon: Get rid of devm
To: Ashutosh Dixit <ashutosh.dixit@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Badal Nilawar <badal.nilawar@intel.com>, Andi Shyti
 <andi.shyti@intel.com>, =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>, linux-hwmon@vger.kernel.org
References: <20240413001031.481961-1-ashutosh.dixit@intel.com>
Content-Language: en-US
From: Armin Wolf <W_Armin@gmx.de>
In-Reply-To: <20240413001031.481961-1-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:guEmR/kHCCyycEzCbg+VHqKgqbUY5IEchqBoHzYTn8vACoeRB7z
 O1fANTuetCdumrhy+h3bkcVP3nbf8TaU7bJhCk7FQs8kiQ25Bonyg/5Pscz4FUBqgx6S40f
 0qBu8TY8AqlON5vY/CzxxWJEKhaf7xmH57ikMX3+JpuGt2ihBvZ99q3hwXhA7Q8b+gR3DGw
 kzo1p5jjXj0V5GNmig5zw==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:GQYPh5WDgbs=;IOuGhEZ457QeObvZG+XarZ3a3oQ
 p1M25Pd1vgFMAm7Qt0xPhpXiIZ0pTSEk7N5/ghNeE/z7P4IJD3DCn7hh2rYkG7e9K27tmB5XZ
 WGLVa4NUPVXRYtQqlpPisTpRVMwPcKUrp4rEw9xdoNnO9ua7sYJWNR35pG/glQx4TPR0IE6gk
 T1fFPkPm1k4PSuFwPpJ0mSKb1D5J8w8peI9g2vXhcb0puKwXPfLjqoHaKgNz8KvFHA6H62Nnk
 C+LaKCV4vwoiXEbsfNPmee47eFRkxond0qw/xp1K4sUkiE0HZ+wCZI10hDjV2xFNFtSTfzocs
 RaWdagMn+hFMIeOWYBU9HU0ISmopkyl1w7dg6kin9BneuhWlHySBMzXN99sRuxGJAHE89wC4o
 MkWwBicxEXZe3yQ3G+Qw8LLVgeSIMiwRIDjm10jAKRp4UcwP+p7MmXLu1VNjKcsDbYJGWJHHc
 EbO7qtK4EaZcySmNAvsLzmnkSU2alDNuYMG8m14WzZf6YzJQDz2ynhe234BkC/XZWCjZ7wOTu
 5rrT9JGFzF7aPp5hYSqh1lWF0nTVcXnZwGtgjUyGlVlmD4vIoRkSa8G6H7WFYoCdo/lwTRj9v
 qU0hUduV1clLcduRtVGWird+LEqnCn4arf6HOZXWYBc70M1gTHK8XG4ewonmRzoPzR146v4in
 zdiDyzMUHJ/WIY3odUgOLyP0V3DP/K1FYDIv8BlesDcgiedf1vcmir6o8g4XPYl4wqMHxts1r
 NGXADG7BbVkT3uNHxndA7TxLq0uHYucYqC53F9GwYOLJtu52ouWRZ3puDG8GXGyhbObE4n+2g
 0bTdp8hD0CY1VHbeaqS3FQVAIUduYf+PIv5rMT/c/BCxc=
X-Mailman-Approved-At: Mon, 15 Apr 2024 13:00:19 +0000
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

Am 13.04.24 um 02:10 schrieb Ashutosh Dixit:

> When both hwmon and hwmon drvdata (on which hwmon depends) are device
> managed resources, the expectation, on device unbind, is that hwmon will=
 be
> released before the drvdata. However, it appears devres does not do this
> consistently, so that we occasionally see drvdata being released before
> hwmon itself. This results in a uaf if hwmon sysfs is accessed during
> device unbind.
>
> The only way out of this seems to be do get rid of devm_ and release/fre=
e
> everything explicitly during device unbind.

Hi,

could it be that the underlying cause for this is the fact that you are us=
ing
devres on a DRM device?

The documentation states that:

	devres managed resources like devm_kmalloc() can only be used for resourc=
es
	directly related to the underlying hardware device, and only used in code
	paths fully protected by drm_dev_enter() and drm_dev_exit().

That said, since the i915 driver is already removing the hwmon device manu=
ally
with i915_hwmon_unregister(), i agree that not using devres in this case s=
eems
to be the solution.

Thanks,
Armin Wolf

> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/10366
> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_hwmon.c | 46 ++++++++++++++++++++++++-------
>   1 file changed, 36 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i9=
15_hwmon.c
> index 8c3f443c8347..5f6022b148d7 100644
> --- a/drivers/gpu/drm/i915/i915_hwmon.c
> +++ b/drivers/gpu/drm/i915/i915_hwmon.c
> @@ -792,7 +792,7 @@ void i915_hwmon_register(struct drm_i915_private *i9=
15)
>   	if (!IS_DGFX(i915))
>   		return;
>
> -	hwmon =3D devm_kzalloc(dev, sizeof(*hwmon), GFP_KERNEL);
> +	hwmon =3D kzalloc(sizeof(*hwmon), GFP_KERNEL);
>   	if (!hwmon)
>   		return;
>
> @@ -818,10 +818,10 @@ void i915_hwmon_register(struct drm_i915_private *=
i915)
>   	hwm_get_preregistration_info(i915);
>
>   	/*  hwmon_dev points to device hwmon<i> */
> -	hwmon_dev =3D devm_hwmon_device_register_with_info(dev, ddat->name,
> -							 ddat,
> -							 &hwm_chip_info,
> -							 hwm_groups);
> +	hwmon_dev =3D hwmon_device_register_with_info(dev, ddat->name,
> +						    ddat,
> +						    &hwm_chip_info,
> +						    hwm_groups);
>   	if (IS_ERR(hwmon_dev)) {
>   		i915->hwmon =3D NULL;
>   		return;
> @@ -838,10 +838,10 @@ void i915_hwmon_register(struct drm_i915_private *=
i915)
>   		if (!hwm_gt_is_visible(ddat_gt, hwmon_energy, hwmon_energy_input, 0)=
)
>   			continue;
>
> -		hwmon_dev =3D devm_hwmon_device_register_with_info(dev, ddat_gt->name=
,
> -								 ddat_gt,
> -								 &hwm_gt_chip_info,
> -								 NULL);
> +		hwmon_dev =3D hwmon_device_register_with_info(dev, ddat_gt->name,
> +							    ddat_gt,
> +							    &hwm_gt_chip_info,
> +							    NULL);
>   		if (!IS_ERR(hwmon_dev))
>   			ddat_gt->hwmon_dev =3D hwmon_dev;
>   	}
> @@ -849,5 +849,31 @@ void i915_hwmon_register(struct drm_i915_private *i=
915)
>
>   void i915_hwmon_unregister(struct drm_i915_private *i915)
>   {
> -	fetch_and_zero(&i915->hwmon);
> +	struct i915_hwmon *hwmon;
> +	struct hwm_drvdata *ddat;
> +	struct intel_gt *gt;
> +	int i;
> +
> +	hwmon =3D fetch_and_zero(&i915->hwmon);
> +	if (!hwmon)
> +		return;
> +
> +	ddat =3D &hwmon->ddat;
> +
> +	for_each_gt(gt, i915, i) {
> +		struct hwm_drvdata *ddat_gt;
> +
> +		ddat_gt =3D hwmon->ddat_gt + i;
> +
> +		if (ddat_gt->hwmon_dev) {
> +			hwmon_device_unregister(ddat_gt->hwmon_dev);
> +			ddat_gt->hwmon_dev =3D NULL;
> +		}
> +	}
> +
> +	if (ddat->hwmon_dev)
> +		hwmon_device_unregister(ddat->hwmon_dev);
> +
> +	mutex_destroy(&hwmon->hwmon_lock);
> +	kfree(hwmon);
>   }
