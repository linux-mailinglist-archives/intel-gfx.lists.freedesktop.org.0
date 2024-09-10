Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C73B5972B74
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2024 10:05:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 501DA10E73D;
	Tue, 10 Sep 2024 08:05:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jWzpiSM6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D99610E73C;
 Tue, 10 Sep 2024 08:05:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725955516; x=1757491516;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=5bcUTsNrArJ5J/HghB6Fv9mhNSWttVZUvwSdYm4ROBc=;
 b=jWzpiSM6HnujhA4MO9woxSpBLbQtcyYAfguqF5RzA1p/tvRCLKGtGWke
 s5g253MstG+0mMOnoDiEPHYnw4Gt55w4j7BwAe3nRrrbOcMFQXZHxy5lc
 P3qGc2U6P4+AM8aNBmQbPVlueDtnlmtzdxl/jZ8jBlKsgFzwyNIm5Il+D
 JHMCV2LJbHoiibL22vepl3WkkIcZptAWFGc4tVLNI4RwKJjvEuWTrcOlo
 jN9WcmtWPjYBv57BI/ETwb3YNR3e6QWOZulusomnqeO+wh1aTiobAJyRL
 avMsC9FXz8E4wmg6ErhiWMy/vv0+76T+3RkESbHf1GQMEGlNchCl90+io Q==;
X-CSE-ConnectionGUID: CF7/CkXaSLOCVnFojfZbuQ==
X-CSE-MsgGUID: qoeDaMkGTVGIj1zzPbDJXw==
X-IronPort-AV: E=McAfee;i="6700,10204,11190"; a="28465844"
X-IronPort-AV: E=Sophos;i="6.10,216,1719903600"; d="scan'208";a="28465844"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 01:05:15 -0700
X-CSE-ConnectionGUID: j2FV87HSTZyaAdGsGqVP/w==
X-CSE-MsgGUID: PqKsR4+0TJmmqtpAQIWRvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,216,1719903600"; d="scan'208";a="97762590"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.43])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 01:05:13 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 06/11] drm/i915/reg: fix PCH transcoder timing and
 data/link m/n style
In-Reply-To: <Zt9iNpF3mYjzdKUQ@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1725908151.git.jani.nikula@intel.com>
 <d96e8a1377f0f3ccf0ee796d16d0467274cd4e9c.1725908152.git.jani.nikula@intel.com>
 <Zt9iNpF3mYjzdKUQ@intel.com>
Date: Tue, 10 Sep 2024 11:05:10 +0300
Message-ID: <87bk0wkk7d.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Tue, 10 Sep 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Mon, Sep 09, 2024 at 09:58:57PM +0300, Jani Nikula wrote:
>> Adhere to the style described at the top of i915_reg.h.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/i915_reg.h | 77 ++++++++++++++++++---------------
>>  1 file changed, 43 insertions(+), 34 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915=
_reg.h
>> index 2f09145b9791..e439a67fde61 100644
>> --- a/drivers/gpu/drm/i915/i915_reg.h
>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>> @@ -3160,33 +3160,76 @@
>>  /* transcoder */
>>=20=20
>>  #define _PCH_TRANS_HTOTAL_A		0xe0000
>> +#define _PCH_TRANS_HTOTAL_B          0xe1000
>
> There's some tab vs. space damage in this patch.

Ah, the damage is there before, and I'm just moving lines around. Fixing
in the same patch breaks git show --color-moved, do you prefer fixing in
the same patch or a separate patch?

BR,
Jani.


>
>> +#define PCH_TRANS_HTOTAL(pipe)		_MMIO_PIPE(pipe, _PCH_TRANS_HTOTAL_A, _=
PCH_TRANS_HTOTAL_B)
>>  #define  TRANS_HTOTAL_SHIFT		16
>>  #define  TRANS_HACTIVE_SHIFT		0
>> +
>>  #define _PCH_TRANS_HBLANK_A		0xe0004
>> +#define _PCH_TRANS_HBLANK_B          0xe1004
>> +#define PCH_TRANS_HBLANK(pipe)		_MMIO_PIPE(pipe, _PCH_TRANS_HBLANK_A, _=
PCH_TRANS_HBLANK_B)
>>  #define  TRANS_HBLANK_END_SHIFT		16
>>  #define  TRANS_HBLANK_START_SHIFT	0
>> +
>>  #define _PCH_TRANS_HSYNC_A		0xe0008
>> +#define _PCH_TRANS_HSYNC_B           0xe1008
>> +#define PCH_TRANS_HSYNC(pipe)		_MMIO_PIPE(pipe, _PCH_TRANS_HSYNC_A, _PC=
H_TRANS_HSYNC_B)
>>  #define  TRANS_HSYNC_END_SHIFT		16
>>  #define  TRANS_HSYNC_START_SHIFT	0
>> +
>>  #define _PCH_TRANS_VTOTAL_A		0xe000c
>> +#define _PCH_TRANS_VTOTAL_B          0xe100c
>> +#define PCH_TRANS_VTOTAL(pipe)		_MMIO_PIPE(pipe, _PCH_TRANS_VTOTAL_A, _=
PCH_TRANS_VTOTAL_B)
>>  #define  TRANS_VTOTAL_SHIFT		16
>>  #define  TRANS_VACTIVE_SHIFT		0
>> +
>>  #define _PCH_TRANS_VBLANK_A		0xe0010
>> +#define _PCH_TRANS_VBLANK_B          0xe1010
>> +#define PCH_TRANS_VBLANK(pipe)		_MMIO_PIPE(pipe, _PCH_TRANS_VBLANK_A, _=
PCH_TRANS_VBLANK_B)
>>  #define  TRANS_VBLANK_END_SHIFT		16
>>  #define  TRANS_VBLANK_START_SHIFT	0
>> +
>>  #define _PCH_TRANS_VSYNC_A		0xe0014
>> +#define _PCH_TRANS_VSYNC_B           0xe1014
>> +#define PCH_TRANS_VSYNC(pipe)		_MMIO_PIPE(pipe, _PCH_TRANS_VSYNC_A, _PC=
H_TRANS_VSYNC_B)
>>  #define  TRANS_VSYNC_END_SHIFT		16
>>  #define  TRANS_VSYNC_START_SHIFT	0
>> +
>>  #define _PCH_TRANS_VSYNCSHIFT_A		0xe0028
>> +#define _PCH_TRANS_VSYNCSHIFT_B 0xe1028
>> +#define PCH_TRANS_VSYNCSHIFT(pipe)	_MMIO_PIPE(pipe, _PCH_TRANS_VSYNCSHI=
FT_A, _PCH_TRANS_VSYNCSHIFT_B)
>>=20=20
>>  #define _PCH_TRANSA_DATA_M1	0xe0030
>> +#define _PCH_TRANSB_DATA_M1	0xe1030
>> +#define PCH_TRANS_DATA_M1(pipe)	_MMIO_PIPE(pipe, _PCH_TRANSA_DATA_M1, _=
PCH_TRANSB_DATA_M1)
>> +
>>  #define _PCH_TRANSA_DATA_N1	0xe0034
>> +#define _PCH_TRANSB_DATA_N1	0xe1034
>> +#define PCH_TRANS_DATA_N1(pipe)	_MMIO_PIPE(pipe, _PCH_TRANSA_DATA_N1, _=
PCH_TRANSB_DATA_N1)
>> +
>>  #define _PCH_TRANSA_DATA_M2	0xe0038
>> +#define _PCH_TRANSB_DATA_M2	0xe1038
>> +#define PCH_TRANS_DATA_M2(pipe)	_MMIO_PIPE(pipe, _PCH_TRANSA_DATA_M2, _=
PCH_TRANSB_DATA_M2)
>> +
>>  #define _PCH_TRANSA_DATA_N2	0xe003c
>> +#define _PCH_TRANSB_DATA_N2	0xe103c
>> +#define PCH_TRANS_DATA_N2(pipe)	_MMIO_PIPE(pipe, _PCH_TRANSA_DATA_N2, _=
PCH_TRANSB_DATA_N2)
>> +
>>  #define _PCH_TRANSA_LINK_M1	0xe0040
>> +#define _PCH_TRANSB_LINK_M1	0xe1040
>> +#define PCH_TRANS_LINK_M1(pipe)	_MMIO_PIPE(pipe, _PCH_TRANSA_LINK_M1, _=
PCH_TRANSB_LINK_M1)
>> +
>>  #define _PCH_TRANSA_LINK_N1	0xe0044
>> +#define _PCH_TRANSB_LINK_N1	0xe1044
>> +#define PCH_TRANS_LINK_N1(pipe)	_MMIO_PIPE(pipe, _PCH_TRANSA_LINK_N1, _=
PCH_TRANSB_LINK_N1)
>> +
>>  #define _PCH_TRANSA_LINK_M2	0xe0048
>> +#define _PCH_TRANSB_LINK_M2	0xe1048
>> +#define PCH_TRANS_LINK_M2(pipe)	_MMIO_PIPE(pipe, _PCH_TRANSA_LINK_M2, _=
PCH_TRANSB_LINK_M2)
>> +
>>  #define _PCH_TRANSA_LINK_N2	0xe004c
>> +#define _PCH_TRANSB_LINK_N2	0xe104c
>> +#define PCH_TRANS_LINK_N2(pipe)	_MMIO_PIPE(pipe, _PCH_TRANSA_LINK_N2, _=
PCH_TRANSB_LINK_N2)
>>=20=20
>>  /* Per-transcoder DIP controls (PCH) */
>>  #define _VIDEO_DIP_CTL_A         0xe0200
>> @@ -3292,40 +3335,6 @@
>>=20=20
>>  #define HSW_STEREO_3D_CTL(dev_priv, trans)	_MMIO_PIPE2(dev_priv, trans,=
 _HSW_STEREO_3D_CTL_A)
>>=20=20
>> -#define _PCH_TRANS_HTOTAL_B          0xe1000
>> -#define _PCH_TRANS_HBLANK_B          0xe1004
>> -#define _PCH_TRANS_HSYNC_B           0xe1008
>> -#define _PCH_TRANS_VTOTAL_B          0xe100c
>> -#define _PCH_TRANS_VBLANK_B          0xe1010
>> -#define _PCH_TRANS_VSYNC_B           0xe1014
>> -#define _PCH_TRANS_VSYNCSHIFT_B 0xe1028
>> -
>> -#define PCH_TRANS_HTOTAL(pipe)		_MMIO_PIPE(pipe, _PCH_TRANS_HTOTAL_A, _=
PCH_TRANS_HTOTAL_B)
>> -#define PCH_TRANS_HBLANK(pipe)		_MMIO_PIPE(pipe, _PCH_TRANS_HBLANK_A, _=
PCH_TRANS_HBLANK_B)
>> -#define PCH_TRANS_HSYNC(pipe)		_MMIO_PIPE(pipe, _PCH_TRANS_HSYNC_A, _PC=
H_TRANS_HSYNC_B)
>> -#define PCH_TRANS_VTOTAL(pipe)		_MMIO_PIPE(pipe, _PCH_TRANS_VTOTAL_A, _=
PCH_TRANS_VTOTAL_B)
>> -#define PCH_TRANS_VBLANK(pipe)		_MMIO_PIPE(pipe, _PCH_TRANS_VBLANK_A, _=
PCH_TRANS_VBLANK_B)
>> -#define PCH_TRANS_VSYNC(pipe)		_MMIO_PIPE(pipe, _PCH_TRANS_VSYNC_A, _PC=
H_TRANS_VSYNC_B)
>> -#define PCH_TRANS_VSYNCSHIFT(pipe)	_MMIO_PIPE(pipe, _PCH_TRANS_VSYNCSHI=
FT_A, _PCH_TRANS_VSYNCSHIFT_B)
>> -
>> -#define _PCH_TRANSB_DATA_M1	0xe1030
>> -#define _PCH_TRANSB_DATA_N1	0xe1034
>> -#define _PCH_TRANSB_DATA_M2	0xe1038
>> -#define _PCH_TRANSB_DATA_N2	0xe103c
>> -#define _PCH_TRANSB_LINK_M1	0xe1040
>> -#define _PCH_TRANSB_LINK_N1	0xe1044
>> -#define _PCH_TRANSB_LINK_M2	0xe1048
>> -#define _PCH_TRANSB_LINK_N2	0xe104c
>> -
>> -#define PCH_TRANS_DATA_M1(pipe)	_MMIO_PIPE(pipe, _PCH_TRANSA_DATA_M1, _=
PCH_TRANSB_DATA_M1)
>> -#define PCH_TRANS_DATA_N1(pipe)	_MMIO_PIPE(pipe, _PCH_TRANSA_DATA_N1, _=
PCH_TRANSB_DATA_N1)
>> -#define PCH_TRANS_DATA_M2(pipe)	_MMIO_PIPE(pipe, _PCH_TRANSA_DATA_M2, _=
PCH_TRANSB_DATA_M2)
>> -#define PCH_TRANS_DATA_N2(pipe)	_MMIO_PIPE(pipe, _PCH_TRANSA_DATA_N2, _=
PCH_TRANSB_DATA_N2)
>> -#define PCH_TRANS_LINK_M1(pipe)	_MMIO_PIPE(pipe, _PCH_TRANSA_LINK_M1, _=
PCH_TRANSB_LINK_M1)
>> -#define PCH_TRANS_LINK_N1(pipe)	_MMIO_PIPE(pipe, _PCH_TRANSA_LINK_N1, _=
PCH_TRANSB_LINK_N1)
>> -#define PCH_TRANS_LINK_M2(pipe)	_MMIO_PIPE(pipe, _PCH_TRANSA_LINK_M2, _=
PCH_TRANSB_LINK_M2)
>> -#define PCH_TRANS_LINK_N2(pipe)	_MMIO_PIPE(pipe, _PCH_TRANSA_LINK_N2, _=
PCH_TRANSB_LINK_N2)
>> -
>>  #define _PCH_TRANSACONF              0xf0008
>>  #define _PCH_TRANSBCONF              0xf1008
>>  #define PCH_TRANSCONF(pipe)	_MMIO_PIPE(pipe, _PCH_TRANSACONF, _PCH_TRAN=
SBCONF)
>> --=20
>> 2.39.2

--=20
Jani Nikula, Intel
