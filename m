Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBD365BC997
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Sep 2022 12:32:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F19BF10E60A;
	Mon, 19 Sep 2022 10:32:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63AFE10E5FE
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Sep 2022 10:32:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663583531; x=1695119531;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=k+uc138tPgpzAP+rdYIyH3N9yy8Pew8cvEGO5XRem/A=;
 b=cLI/w1btjPHgfW63imZy2BE3flUmNYsqfYceSanfWPM2glsXzIiuak2J
 a4fLMKHXx4rN5WGlc1TaCqIoyYlSb1pyFuFKelZlITAaUEhvtlByzhjka
 N65lQKmFfZkJg990XzSSlk7W6r9zvTBlKI9qmavobytUhQ+QPgXsHzEE5
 wBJnqWtJFavDD4F7MwAuPYauq2Amy5ldGtQrDdK+6/V803eYJvJpFrYRL
 H+6wza2OQOKNGQfLnfKJLYakm9FBM8y0stsRHWBYGKUa8/0+26PlBvWOr
 ZgISifmcuf+TCBV7CpgtmE7mUVTm5Ba4s7erjEIhxk4oHCw1WfCvjrq29 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10474"; a="298091028"
X-IronPort-AV: E=Sophos;i="5.93,327,1654585200"; d="scan'208";a="298091028"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2022 03:32:10 -0700
X-IronPort-AV: E=Sophos;i="5.93,327,1654585200"; d="scan'208";a="722240201"
Received: from jjohns2-mobl2.amr.corp.intel.com (HELO localhost)
 ([10.252.57.205])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2022 03:32:09 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <YyRi4Kw7bsKQvXHc@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220916113850.3712354-1-jani.nikula@intel.com>
 <YyRi4Kw7bsKQvXHc@intel.com>
Date: Mon, 19 Sep 2022 13:31:54 +0300
Message-ID: <87k05zpsdh.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: remove ipc_enabled from
 struct drm_i915_private
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

On Fri, 16 Sep 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Fri, Sep 16, 2022 at 02:38:50PM +0300, Jani Nikula wrote:
>> The ipc_enabled member was supposed to be moved under the display wm
>> sub-struct, but due to a rebase fail only the new one was added and the
>> old one was left behind. Finish the job.
>>=20
>> Fixes: 70296670f672 ("drm/i915/display: move IPC under display wm sub-st=
ruct")
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed to drm-intel-next.

>
>> ---
>>  drivers/gpu/drm/i915/i915_drv.h | 2 --
>>  1 file changed, 2 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915=
_drv.h
>> index 9f9372931fd2..bdc81db76dbd 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.h
>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>> @@ -397,8 +397,6 @@ struct drm_i915_private {
>>  	 */
>>  	u8 snps_phy_failed_calibration;
>>=20=20
>> -	bool ipc_enabled;
>> -
>>  	struct i915_pmu pmu;
>>=20=20
>>  	struct i915_drm_clients clients;
>> --=20
>> 2.34.1

--=20
Jani Nikula, Intel Open Source Graphics Center
