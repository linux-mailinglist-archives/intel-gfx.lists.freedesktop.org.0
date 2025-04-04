Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89884A7BD51
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Apr 2025 15:14:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04C9F10E1BF;
	Fri,  4 Apr 2025 13:14:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fdYahzLX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01BAF10E1BF
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Apr 2025 13:14:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743772462; x=1775308462;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=tyH8AE/0OVv1HoA5drbOMV26xgQ47A5s55dLvfkhGW0=;
 b=fdYahzLXeAdiZVr8EinjYcTzM5H1WV6oFZBaXFrRUi7P0kpSN55TksrI
 HTgShuZGCqKayDl6R3boc+xH7gcten8EclKHGKTFxkRt2Z1muMay5lj9f
 D8yrU54QefwRwP4jyLzM2nzDfpng91bzVa2ioAxnuqhyWZG2Sv6l9w7uu
 WR8hx4CvvhMSCwBsSDp7kMIO8QbdA544Vb5n/ixQ8cOgD3AJD+V/rVfad
 sqz2hiLEHcv3rCBd9XtJlGvDMfxuZ3C6PVAMZt289BPUWf31QZxBILh/C
 l/FEzANlNPfQKFCEEI6mPMjQ2RWBt7m/uVLEu3ip4RA0EIoHQhbl2OxNg g==;
X-CSE-ConnectionGUID: ir7S3jypS8K+BdeCCciTAA==
X-CSE-MsgGUID: tlATBqcwRDyGeVTVHGzZUw==
X-IronPort-AV: E=McAfee;i="6700,10204,11394"; a="62609563"
X-IronPort-AV: E=Sophos;i="6.15,188,1739865600"; d="scan'208";a="62609563"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2025 06:14:21 -0700
X-CSE-ConnectionGUID: g7KoFY+eRFuuiImu8Y5oWw==
X-CSE-MsgGUID: 2AccVXznRXGZSl6JsySFdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,188,1739865600"; d="scan'208";a="127121590"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.234])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2025 06:14:20 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 1/3] drm/i915/dsi: Fix off by one in BXT_MIPI_TRANS_VTOTAL
In-Reply-To: <87iknkysq6.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250314150136.22564-1-ville.syrjala@linux.intel.com>
 <87iknkysq6.fsf@intel.com>
Date: Fri, 04 Apr 2025 16:14:17 +0300
Message-ID: <87frioyspi.fsf@intel.com>
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

On Fri, 04 Apr 2025, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Fri, 14 Mar 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
>> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>>
>> BXT_MIPI_TRANS_VTOTAL must be programmed with vtotal-1
>> instead of vtotal. Make it so.
>>
>> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Cc: stable@vger.kernel.org

>
>> ---
>>  drivers/gpu/drm/i915/display/vlv_dsi.c | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i9=
15/display/vlv_dsi.c
>> index af717df83197..661de51dfd22 100644
>> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
>> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
>> @@ -1060,7 +1060,7 @@ static void bxt_dsi_get_pipe_config(struct intel_e=
ncoder *encoder,
>>  				              BXT_MIPI_TRANS_VACTIVE(port));
>>  	adjusted_mode->crtc_vtotal =3D
>>  				intel_de_read(display,
>> -				              BXT_MIPI_TRANS_VTOTAL(port));
>> +				              BXT_MIPI_TRANS_VTOTAL(port)) + 1;
>>=20=20
>>  	hactive =3D adjusted_mode->crtc_hdisplay;
>>  	hfp =3D intel_de_read(display, MIPI_HFP_COUNT(display, port));
>> @@ -1265,7 +1265,7 @@ static void set_dsi_timings(struct intel_encoder *=
encoder,
>>  			intel_de_write(display, BXT_MIPI_TRANS_VACTIVE(port),
>>  				       adjusted_mode->crtc_vdisplay);
>>  			intel_de_write(display, BXT_MIPI_TRANS_VTOTAL(port),
>> -				       adjusted_mode->crtc_vtotal);
>> +				       adjusted_mode->crtc_vtotal - 1);
>>  		}
>>=20=20
>>  		intel_de_write(display, MIPI_HACTIVE_AREA_COUNT(display, port),

--=20
Jani Nikula, Intel
