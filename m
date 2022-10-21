Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EBB7D6072C8
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Oct 2022 10:47:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 534EC10E648;
	Fri, 21 Oct 2022 08:47:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BABB10E648
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Oct 2022 08:46:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666342016; x=1697878016;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=Of7XuVxwPTeL+TwEjskhAMOrTXIXzL5h9e3UGTuOYMQ=;
 b=CUG5oxnlq5d617jACl8PIQbe/VgqfOEB/R9fm7xBIJBL/bRArzqfxFTW
 l1XqeODPSxkrmxhpe9TF+ikHmAlGdwSjmDm+Pn8zHCd5jQvlwMSVmTnkq
 sk9duOrE1BMG14Wf6L7aU2gat+Jxbga6A3b72+XrUzkf3te5BaQFspuh9
 3xTAz2GihePC0Ubx0O3LA/pcTipAywbdqqpStNRiWpZeIVKQOn/rkej1b
 1VJsgHDicUdyGqxN3LLoYuDdV8iE3q5SQwL17DwG1JBmLud5NS1iljkwP
 1iOFtaKp5ybBqSwUmg5Ng100m+c6CwoCDUxWmLtsplwpUtfnfroGNrArU g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="333526402"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="333526402"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 01:46:55 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="959510957"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="959510957"
Received: from avilla3-mobl2.amr.corp.intel.com (HELO localhost)
 ([10.252.53.153])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 01:46:53 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>,
 Anusha Srivatsa <anusha.srivatsa@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <Y1JGHxF2PsEFeCNd@bala-ubuntu>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221021002024.390052-1-anusha.srivatsa@intel.com>
 <20221021002024.390052-3-anusha.srivatsa@intel.com>
 <Y1JGHxF2PsEFeCNd@bala-ubuntu>
Date: Fri, 21 Oct 2022 11:46:51 +0300
Message-ID: <87mt9pfts4.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/display: Introduce
 HAS_CDCLK_SQUASH macro
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

On Fri, 21 Oct 2022, Balasubramani Vivekanandan <balasubramani.vivekanandan=
@intel.com> wrote:
> On 20.10.2022 17:20, Anusha Srivatsa wrote:
>> Driver had discrepancy in how cdclk squash and crawl support
>> were checked. Like crawl, add squash as a 1 bit feature flag
>> to the display section of DG2.
>>=20
>> Cc: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_cdclk.c | 15 +++++----------
>>  drivers/gpu/drm/i915/i915_drv.h            |  1 +
>>  drivers/gpu/drm/i915/i915_pci.c            |  1 +
>>  drivers/gpu/drm/i915/intel_device_info.h   |  1 +
>>  4 files changed, 8 insertions(+), 10 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/dr=
m/i915/display/intel_cdclk.c
>> index 0f5add2fc51b..45babbc6290f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>> @@ -1220,11 +1220,6 @@ static void skl_cdclk_uninit_hw(struct drm_i915_p=
rivate *dev_priv)
>>  	skl_set_cdclk(dev_priv, &cdclk_config, INVALID_PIPE);
>>  }
>>=20=20
>> -static bool has_cdclk_squash(struct drm_i915_private *i915)
>> -{
>> -	return IS_DG2(i915);
>> -}
>> -
>>  struct intel_cdclk_vals {
>>  	u32 cdclk;
>>  	u16 refclk;
>> @@ -1520,7 +1515,7 @@ static void bxt_get_cdclk(struct drm_i915_private =
*dev_priv,
>>  		return;
>>  	}
>>=20=20
>> -	if (has_cdclk_squash(dev_priv))
>> +	if (HAS_CDCLK_SQUASH(dev_priv))
>>  		squash_ctl =3D intel_de_read(dev_priv, CDCLK_SQUASH_CTL);
>>=20=20
>>  	if (squash_ctl & CDCLK_SQUASH_ENABLE) {
>> @@ -1747,7 +1742,7 @@ static void bxt_set_cdclk(struct drm_i915_private =
*dev_priv,
>>  	else
>>  		clock =3D cdclk;
>>=20=20
>> -	if (has_cdclk_squash(dev_priv)) {
>> +	if (HAS_CDCLK_SQUASH(dev_priv)) {
>>  		u32 squash_ctl =3D 0;
>>=20=20
>>  		if (waveform)
>> @@ -1845,7 +1840,7 @@ static void bxt_sanitize_cdclk(struct drm_i915_pri=
vate *dev_priv)
>>  	expected =3D skl_cdclk_decimal(cdclk);
>>=20=20
>>  	/* Figure out what CD2X divider we should be using for this cdclk */
>> -	if (has_cdclk_squash(dev_priv))
>> +	if (HAS_CDCLK_SQUASH(dev_priv))
>>  		clock =3D dev_priv->display.cdclk.hw.vco / 2;
>>  	else
>>  		clock =3D dev_priv->display.cdclk.hw.cdclk;
>> @@ -1976,7 +1971,7 @@ static bool intel_cdclk_can_squash(struct drm_i915=
_private *dev_priv,
>>  	 * the moment all platforms with squasher use a fixed cd2x
>>  	 * divider.
>>  	 */
>> -	if (!has_cdclk_squash(dev_priv))
>> +	if (!HAS_CDCLK_SQUASH(dev_priv))
>>  		return false;
>>=20=20
>>  	return a->cdclk !=3D b->cdclk &&
>> @@ -2028,7 +2023,7 @@ static bool intel_cdclk_can_cd2x_update(struct drm=
_i915_private *dev_priv,
>>  	 * the moment all platforms with squasher use a fixed cd2x
>>  	 * divider.
>>  	 */
>> -	if (has_cdclk_squash(dev_priv))
>> +	if (HAS_CDCLK_SQUASH(dev_priv))
>>  		return false;
>>=20=20
>>  	return a->cdclk !=3D b->cdclk &&
>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915=
_drv.h
>> index d7b8eb9d4117..db51050e3ba2 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.h
>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>> @@ -869,6 +869,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>>  #define HAS_DOUBLE_BUFFERED_M_N(dev_priv)	(DISPLAY_VER(dev_priv) >=3D 9=
 || IS_BROADWELL(dev_priv))
>>=20=20
>>  #define HAS_CDCLK_CRAWL(dev_priv)	 (INTEL_INFO(dev_priv)->display.has_c=
dclk_crawl)
>> +#define HAS_CDCLK_SQUASH(dev_priv)	 (INTEL_INFO(dev_priv)->display.has_=
cdclk_squash)
>>  #define HAS_DDI(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_ddi)
>>  #define HAS_FPGA_DBG_UNCLAIMED(dev_priv) (INTEL_INFO(dev_priv)->display=
.has_fpga_dbg)
>>  #define HAS_PSR(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_psr)
>> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915=
_pci.c
>> index 19bf5ef6a20d..a88e1439a426 100644
>> --- a/drivers/gpu/drm/i915/i915_pci.c
>> +++ b/drivers/gpu/drm/i915/i915_pci.c
>> @@ -1064,6 +1064,7 @@ static const struct intel_device_info xehpsdv_info=
 =3D {
>>  	.has_guc_deprivilege =3D 1, \
>>  	.has_heci_pxp =3D 1, \
>>  	.has_media_ratio_mode =3D 1, \
>> +	.display.has_cdclk_squash =3D 1, \
>
> Shouldn't this line be under dg2_info definition and not here?

It's in DG2_FEATURES macro, which is where it should be. You're probably
thrown off by the diff context symbol xehpsdv_info.

BR,
Jani.


>
> Regards,
> Bala
>
>>  	.__runtime.platform_engine_mask =3D \
>>  		BIT(RCS0) | BIT(BCS0) | \
>>  		BIT(VECS0) | BIT(VECS1) | \
>> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/=
i915/intel_device_info.h
>> index cdf78728dcad..67d8759c802c 100644
>> --- a/drivers/gpu/drm/i915/intel_device_info.h
>> +++ b/drivers/gpu/drm/i915/intel_device_info.h
>> @@ -180,6 +180,7 @@ enum intel_ppgtt_type {
>>  	/* Keep in alphabetical order */ \
>>  	func(cursor_needs_physical); \
>>  	func(has_cdclk_crawl); \
>> +	func(has_cdclk_squash); \
>>  	func(has_ddi); \
>>  	func(has_dp_mst); \
>>  	func(has_dsb); \
>> --=20
>> 2.25.1
>>=20

--=20
Jani Nikula, Intel Open Source Graphics Center
