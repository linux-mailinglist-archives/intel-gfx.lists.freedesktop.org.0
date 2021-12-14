Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3002B474C53
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Dec 2021 20:56:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CEED10E188;
	Tue, 14 Dec 2021 19:56:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEE5810E188
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Dec 2021 19:56:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639511761; x=1671047761;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=H4YZaSxJcTVlWufoRyjJ1tFVc90ffQG8JI7i1qseAE8=;
 b=cM3oNkzkOE4PgV6fUQ0Kgz59JZldYKrouBKU1akck8U+ZJgzk54/f9bB
 P1XHStHLNMvlP2/ErpX+uqLWmO1X+cqjDecStGOm6a31aUPZogs6FBUe2
 0ww5ujsvV7RUvvoJ0qZPGQaaQSJ4bpvycPeJChTPmtvjQsSfI3d+55FUt
 Hr/2YvDhWsiYtm35KMm09vs5NukAYDdfLrm4ahhXJaoF+m2MKUCZu2m2C
 qsike1R/Pz3Jdfyip0N7H4YSygotRL7Od19Vx6AlXSYWHTxw7W6fobVUK
 KjOFwkCoQkcRp2w1XCPhKRSwYTuDpAW+f1zCYaLE3bgi25/dgJjCPVM2i A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10197"; a="238884235"
X-IronPort-AV: E=Sophos;i="5.88,205,1635231600"; d="scan'208";a="238884235"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2021 11:56:00 -0800
X-IronPort-AV: E=Sophos;i="5.88,205,1635231600"; d="scan'208";a="545313467"
Received: from nalbarnj-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.3.235])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2021 11:55:58 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <Ybc/4ktIaLxKl6lJ@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211213114106.296017-1-jani.nikula@intel.com>
 <20211213114106.296017-2-jani.nikula@intel.com>
 <Ybc/4ktIaLxKl6lJ@intel.com>
Date: Tue, 14 Dec 2021 21:55:53 +0200
Message-ID: <875yrr55bq.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915/cdclk: move struct
 intel_cdclk_funcs to intel_cdclk.c
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

On Mon, 13 Dec 2021, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Mon, Dec 13, 2021 at 01:41:06PM +0200, Jani Nikula wrote:
>> The funcs struct can be opaque, make it internal to intel_cdclk.c.
>>=20
>> Suggested-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed both to din.

BR,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/display/intel_cdclk.c | 11 +++++++++++
>>  drivers/gpu/drm/i915/i915_drv.h            | 12 +-----------
>>  2 files changed, 12 insertions(+), 11 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/dr=
m/i915/display/intel_cdclk.c
>> index c30cf8d2b835..249f81a80eb7 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>> @@ -63,6 +63,17 @@
>>   * dividers can be programmed correctly.
>>   */
>>=20=20
>> +struct intel_cdclk_funcs {
>> +	void (*get_cdclk)(struct drm_i915_private *i915,
>> +			  struct intel_cdclk_config *cdclk_config);
>> +	void (*set_cdclk)(struct drm_i915_private *i915,
>> +			  const struct intel_cdclk_config *cdclk_config,
>> +			  enum pipe pipe);
>> +	int (*bw_calc_min_cdclk)(struct intel_atomic_state *state);
>> +	int (*modeset_calc_cdclk)(struct intel_cdclk_state *state);
>> +	u8 (*calc_voltage_level)(int cdclk);
>> +};
>> +
>>  void intel_cdclk_get_cdclk(struct drm_i915_private *dev_priv,
>>  			   struct intel_cdclk_config *cdclk_config)
>>  {
>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915=
_drv.h
>> index e2c0d69753b1..0112ae942664 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.h
>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>> @@ -291,6 +291,7 @@ struct intel_connector;
>>  struct intel_encoder;
>>  struct intel_atomic_state;
>>  struct intel_cdclk_config;
>> +struct intel_cdclk_funcs;
>>  struct intel_cdclk_state;
>>  struct intel_cdclk_vals;
>>  struct intel_initial_plane_config;
>> @@ -339,17 +340,6 @@ struct intel_color_funcs {
>>  	void (*read_luts)(struct intel_crtc_state *crtc_state);
>>  };
>>=20=20
>> -struct intel_cdclk_funcs {
>> -	void (*get_cdclk)(struct drm_i915_private *dev_priv,
>> -			  struct intel_cdclk_config *cdclk_config);
>> -	void (*set_cdclk)(struct drm_i915_private *dev_priv,
>> -			  const struct intel_cdclk_config *cdclk_config,
>> -			  enum pipe pipe);
>> -	int (*bw_calc_min_cdclk)(struct intel_atomic_state *state);
>> -	int (*modeset_calc_cdclk)(struct intel_cdclk_state *state);
>> -	u8 (*calc_voltage_level)(int cdclk);
>> -};
>> -
>>  struct intel_hotplug_funcs {
>>  	void (*hpd_irq_setup)(struct drm_i915_private *dev_priv);
>>  };
>> --=20
>> 2.30.2

--=20
Jani Nikula, Intel Open Source Graphics Center
