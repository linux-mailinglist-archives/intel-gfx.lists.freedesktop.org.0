Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 582239755B2
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2024 16:38:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCB5B10E0D0;
	Wed, 11 Sep 2024 14:38:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TV8Uq2AT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47A6810E083;
 Wed, 11 Sep 2024 14:38:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726065519; x=1757601519;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=dHBwtr8Rw0+D/8i0BMJPQkk77B7HnY9vfYhfZuSCAMQ=;
 b=TV8Uq2AT2gosQ9bcT+r2DLLS9g8Inz4bYekuWr7w/NiIgC+KQGIJUI8f
 smknx85WkteV6l58LgToksqHzf5s3+0ABNGtQ1ecSGkpas45Ks2ZzmD0C
 eUX8vmDiWslVPRfKZzvb04mz0336NFKIzAYkhZRV6HyJeZHnLz4TPjuAa
 zWKogNrqca9XG641S98psCSkrykmeZ6HAhqtOLALEdiwKJxYcrOCslW99
 YCT+T6FA17d2l8bzRbPABUbtSt8yWvpY0H37OJqsCP9nnNULTIlPadWtj
 5Oe/jeCpXTksf64+ZK/ZbBJCmMl83E2UBIOJo+6CWSk2u5NmbGanHzCi5 Q==;
X-CSE-ConnectionGUID: 0DvA5ifhRiOl3GdT9LH0pw==
X-CSE-MsgGUID: SvC04JqaQPC710m2zsUaYQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="28757587"
X-IronPort-AV: E=Sophos;i="6.10,220,1719903600"; d="scan'208";a="28757587"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 07:38:39 -0700
X-CSE-ConnectionGUID: Ad4ld/hXQjaOg19h6+8vFA==
X-CSE-MsgGUID: leq5+hTySyWaiEJo+dwsUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,220,1719903600"; d="scan'208";a="98095875"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.188])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 07:38:37 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 06/11] drm/i915/reg: fix PCH transcoder timing
 indentation
In-Reply-To: <ZuBMEGcugO7mN5q1@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1725974820.git.jani.nikula@intel.com>
 <f56e48a927692cec382e292602e0fa68e37f3b93.1725974820.git.jani.nikula@intel.com>
 <ZuBMEGcugO7mN5q1@intel.com>
Date: Wed, 11 Sep 2024 17:38:33 +0300
Message-ID: <871q1qjlw6.fsf@intel.com>
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
> On Tue, Sep 10, 2024 at 04:28:50PM +0300, Jani Nikula wrote:
>> Adhere to the style described at the top of i915_reg.h.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed the series to din. Feel free to do your stuff now.

BR,
Jani.


>
>> ---
>>  drivers/gpu/drm/i915/i915_reg.h | 14 +++++++-------
>>  1 file changed, 7 insertions(+), 7 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915=
_reg.h
>> index 2f09145b9791..1eede96a5415 100644
>> --- a/drivers/gpu/drm/i915/i915_reg.h
>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>> @@ -3292,13 +3292,13 @@
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
>> +#define _PCH_TRANS_HTOTAL_B		0xe1000
>> +#define _PCH_TRANS_HBLANK_B		0xe1004
>> +#define _PCH_TRANS_HSYNC_B		0xe1008
>> +#define _PCH_TRANS_VTOTAL_B		0xe100c
>> +#define _PCH_TRANS_VBLANK_B		0xe1010
>> +#define _PCH_TRANS_VSYNC_B		0xe1014
>> +#define _PCH_TRANS_VSYNCSHIFT_B		0xe1028
>>=20=20
>>  #define PCH_TRANS_HTOTAL(pipe)		_MMIO_PIPE(pipe, _PCH_TRANS_HTOTAL_A, _=
PCH_TRANS_HTOTAL_B)
>>  #define PCH_TRANS_HBLANK(pipe)		_MMIO_PIPE(pipe, _PCH_TRANS_HBLANK_A, _=
PCH_TRANS_HBLANK_B)
>> --=20
>> 2.39.2

--=20
Jani Nikula, Intel
