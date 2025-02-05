Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E801A2982A
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2025 18:56:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CECB10E37E;
	Wed,  5 Feb 2025 17:56:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bIDuzB3f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71F8710E378;
 Wed,  5 Feb 2025 17:56:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738778205; x=1770314205;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=JRpycBROUIEHgpWZQE2hbeDF0EiHs1zHlImECTE4qcM=;
 b=bIDuzB3fn5dhF8R7+acRPAYA4GYJHR9Ps2g6h4q8u/5xpOE1ddwDzbqw
 BwGaVAfOpOpH4LZCufFuLQgclvnuMBJeKsvwRyWDq9upO0Agkbppb9LGS
 INEx0X7X3JPqABONNvUYGWUjRFeReWLIzoIBUiXqZF8rQj1XjWD+VLGB9
 JyQqzwtRDc/XSz3zzgmEJqjVqNtEk2pXVyZ/gv/1ZlrpgZh59rwtNu8ua
 1ALP3NWnGa2OcQiCnlOikrSoy8bmkirAFQsNIMqQfUUFzXAGgRhnuWYy6
 +JMv3rExmAlVKm0PUlgeCapMNEPAWumHwDh+gZUn4OyX0TYh2nfunF8r6 A==;
X-CSE-ConnectionGUID: FiGCOKIHR0eYcG9rgM/iVw==
X-CSE-MsgGUID: OwaiQnDsTYuBLnD36LAD3g==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="39384579"
X-IronPort-AV: E=Sophos;i="6.13,262,1732608000"; d="scan'208";a="39384579"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 09:56:45 -0800
X-CSE-ConnectionGUID: YuWjvUmFQvC4LEuF1mxzEQ==
X-CSE-MsgGUID: CgmGRva9Q9qrciVLR6/07w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="111861664"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.217])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 09:56:42 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 1/3] drm/i915/display: convert intel_ddi_buf_trans.c to
 struct intel_display
In-Reply-To: <Z6KcSyFiarCRpLIG@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250204134228.2934744-1-jani.nikula@intel.com>
 <Z6KcSyFiarCRpLIG@intel.com>
Date: Wed, 05 Feb 2025 19:56:39 +0200
Message-ID: <87tt982s2w.fsf@intel.com>
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

On Tue, 04 Feb 2025, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Tue, Feb 04, 2025 at 03:42:26PM +0200, Jani Nikula wrote:
>> Going forward, struct intel_display is the main device data structure
>> for display. Switch to it.
>>=20
>> For MISSING_CASE(), log the PCI ID instead of the platform to get rid of
>> the i915_drv.h dependency.
>
> good idea!
>
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  .../drm/i915/display/intel_ddi_buf_trans.c    | 58 +++++++++++--------
>>  1 file changed, 33 insertions(+), 25 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/driver=
s/gpu/drm/i915/display/intel_ddi_buf_trans.c
>> index 9389b295036e..a238be5bc455 100644
>> --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
>> +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
>> @@ -3,13 +3,13 @@
>>   * Copyright =C2=A9 2020 Intel Corporation
>>   */
>>=20=20
>> -#include "i915_drv.h"
>
> \o/

Indeed!

> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks, series pushed to din.

>
>> +#include "i915_utils.h"
>> +#include "intel_cx0_phy.h"
>>  #include "intel_ddi.h"
>>  #include "intel_ddi_buf_trans.h"
>>  #include "intel_de.h"
>>  #include "intel_display_types.h"
>>  #include "intel_dp.h"
>> -#include "intel_cx0_phy.h"
>>=20=20
>>  /* HDMI/DVI modes ignore everything but the last 2 items. So we share
>>   * them for both DP and FDI transports, allowing those ports to
>> @@ -1407,10 +1407,10 @@ tgl_get_combo_buf_trans_dp(struct intel_encoder =
*encoder,
>>  			   const struct intel_crtc_state *crtc_state,
>>  			   int *n_entries)
>>  {
>> -	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>> +	struct intel_display *display =3D to_intel_display(encoder);
>>=20=20
>>  	if (crtc_state->port_clock > 270000) {
>> -		if (IS_TIGERLAKE_UY(dev_priv)) {
>> +		if (display->platform.tigerlake_uy) {
>>  			return intel_get_buf_trans(&tgl_uy_combo_phy_trans_dp_hbr2,
>>  						   n_entries);
>>  		} else {
>> @@ -1709,59 +1709,67 @@ mtl_get_c20_buf_trans(struct intel_encoder *enco=
der,
>>=20=20
>>  void intel_ddi_buf_trans_init(struct intel_encoder *encoder)
>>  {
>> -	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>> +	struct intel_display *display =3D to_intel_display(encoder);
>>=20=20
>> -	if (DISPLAY_VER(i915) >=3D 14) {
>> +	if (DISPLAY_VER(display) >=3D 14) {
>>  		if (intel_encoder_is_c10phy(encoder))
>>  			encoder->get_buf_trans =3D mtl_get_c10_buf_trans;
>>  		else
>>  			encoder->get_buf_trans =3D mtl_get_c20_buf_trans;
>> -	} else if (IS_DG2(i915)) {
>> +	} else if (display->platform.dg2) {
>>  		encoder->get_buf_trans =3D dg2_get_snps_buf_trans;
>> -	} else if (IS_ALDERLAKE_P(i915)) {
>> +	} else if (display->platform.alderlake_p) {
>>  		if (intel_encoder_is_combo(encoder))
>>  			encoder->get_buf_trans =3D adlp_get_combo_buf_trans;
>>  		else
>>  			encoder->get_buf_trans =3D adlp_get_dkl_buf_trans;
>> -	} else if (IS_ALDERLAKE_S(i915)) {
>> +	} else if (display->platform.alderlake_s) {
>>  		encoder->get_buf_trans =3D adls_get_combo_buf_trans;
>> -	} else if (IS_ROCKETLAKE(i915)) {
>> +	} else if (display->platform.rocketlake) {
>>  		encoder->get_buf_trans =3D rkl_get_combo_buf_trans;
>> -	} else if (IS_DG1(i915)) {
>> +	} else if (display->platform.dg1) {
>>  		encoder->get_buf_trans =3D dg1_get_combo_buf_trans;
>> -	} else if (DISPLAY_VER(i915) >=3D 12) {
>> +	} else if (DISPLAY_VER(display) >=3D 12) {
>>  		if (intel_encoder_is_combo(encoder))
>>  			encoder->get_buf_trans =3D tgl_get_combo_buf_trans;
>>  		else
>>  			encoder->get_buf_trans =3D tgl_get_dkl_buf_trans;
>> -	} else if (DISPLAY_VER(i915) =3D=3D 11) {
>> -		if (IS_JASPERLAKE(i915))
>> +	} else if (DISPLAY_VER(display) =3D=3D 11) {
>> +		if (display->platform.jasperlake)
>>  			encoder->get_buf_trans =3D jsl_get_combo_buf_trans;
>> -		else if (IS_ELKHARTLAKE(i915))
>> +		else if (display->platform.elkhartlake)
>>  			encoder->get_buf_trans =3D ehl_get_combo_buf_trans;
>>  		else if (intel_encoder_is_combo(encoder))
>>  			encoder->get_buf_trans =3D icl_get_combo_buf_trans;
>>  		else
>>  			encoder->get_buf_trans =3D icl_get_mg_buf_trans;
>> -	} else if (IS_GEMINILAKE(i915) || IS_BROXTON(i915)) {
>> +	} else if (display->platform.geminilake || display->platform.broxton) {
>>  		encoder->get_buf_trans =3D bxt_get_buf_trans;
>> -	} else if (IS_COMETLAKE_ULX(i915) || IS_COFFEELAKE_ULX(i915) || IS_KAB=
YLAKE_ULX(i915)) {
>> +	} else if (display->platform.cometlake_ulx ||
>> +		   display->platform.coffeelake_ulx ||
>> +		   display->platform.kabylake_ulx) {
>>  		encoder->get_buf_trans =3D kbl_y_get_buf_trans;
>> -	} else if (IS_COMETLAKE_ULT(i915) || IS_COFFEELAKE_ULT(i915) || IS_KAB=
YLAKE_ULT(i915)) {
>> +	} else if (display->platform.cometlake_ult ||
>> +		   display->platform.coffeelake_ult ||
>> +		   display->platform.kabylake_ult) {
>>  		encoder->get_buf_trans =3D kbl_u_get_buf_trans;
>> -	} else if (IS_COMETLAKE(i915) || IS_COFFEELAKE(i915) || IS_KABYLAKE(i9=
15)) {
>> +	} else if (display->platform.cometlake ||
>> +		   display->platform.coffeelake ||
>> +		   display->platform.kabylake) {
>>  		encoder->get_buf_trans =3D kbl_get_buf_trans;
>> -	} else if (IS_SKYLAKE_ULX(i915)) {
>> +	} else if (display->platform.skylake_ulx) {
>>  		encoder->get_buf_trans =3D skl_y_get_buf_trans;
>> -	} else if (IS_SKYLAKE_ULT(i915)) {
>> +	} else if (display->platform.skylake_ult) {
>>  		encoder->get_buf_trans =3D skl_u_get_buf_trans;
>> -	} else if (IS_SKYLAKE(i915)) {
>> +	} else if (display->platform.skylake) {
>>  		encoder->get_buf_trans =3D skl_get_buf_trans;
>> -	} else if (IS_BROADWELL(i915)) {
>> +	} else if (display->platform.broadwell) {
>>  		encoder->get_buf_trans =3D bdw_get_buf_trans;
>> -	} else if (IS_HASWELL(i915)) {
>> +	} else if (display->platform.haswell) {
>>  		encoder->get_buf_trans =3D hsw_get_buf_trans;
>>  	} else {
>> -		MISSING_CASE(INTEL_INFO(i915)->platform);
>> +		struct pci_dev *pdev =3D to_pci_dev(display->drm->dev);
>> +
>> +		MISSING_CASE(pdev->device);
>>  	}
>>  }
>> --=20
>> 2.39.5
>>=20

--=20
Jani Nikula, Intel
