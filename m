Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE61596E24A
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2024 20:50:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90E5310E932;
	Thu,  5 Sep 2024 18:50:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CQb+Q4S4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 358F410E92B
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Sep 2024 18:50:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725562214; x=1757098214;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=blxtULxBy1oWlD467j66Bu5Koa1V6sSXHB9WFkjyPso=;
 b=CQb+Q4S4lx3Mrdd10NkD22jm0/7f15Q9MZ3XI7Z7HzUCuW4sbMaG4eiz
 6dFs/CsAxW75dortMwO0/2vX5G+6e9D5WS3E7dWB6tk0yJwyvSXP1h6/7
 Lkb5FHpu/ddf1pE3nXbzTrwOj6pUQX/c5p+oKIDCoIiv+SY8Y5c5/Kd8C
 cLAqfC11q8R9Ga1xU4MwUOXTAuqOEjUzwEq1+7J1MR2l45dnp/9wVfcEM
 17GZhRwJ7gzQFyyYrWpRgW8Uub0RBcP/HjhTDW8627Xa2paQPKcshEHLY
 oUi0t6o/UQBhPCIFO+0DsaVbpg00DdZqUC/Np4iLknpgDhNky2qdpLE9F A==;
X-CSE-ConnectionGUID: O5J1UCYHSqyOA3RFA+OlxA==
X-CSE-MsgGUID: prs0oNgeTmyPkETjMJwFKQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11186"; a="41806267"
X-IronPort-AV: E=Sophos;i="6.10,205,1719903600"; d="scan'208";a="41806267"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2024 11:50:13 -0700
X-CSE-ConnectionGUID: ds7sWLYaRg6EOXAPQ63k7A==
X-CSE-MsgGUID: Yr8+4yUARgGdkpzkLmOwig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,205,1719903600"; d="scan'208";a="66261886"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.216])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2024 11:50:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/display: use to_intel_display() global state
 macros
In-Reply-To: <Zthi2WGDpKoRM_XI@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240904125301.3813721-1-jani.nikula@intel.com>
 <Zthi2WGDpKoRM_XI@intel.com>
Date: Thu, 05 Sep 2024 21:50:08 +0300
Message-ID: <87seuenden.fsf@intel.com>
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

On Wed, 04 Sep 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Sep 04, 2024 at 03:53:01PM +0300, Jani Nikula wrote:
>> Convert intel_atomic_get_{old,new}_cdclk_state() and
>> intel_atomic_get_{old,new}_dbuf_state() to use to_intel_display()
>> instead of to_i915().
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed to din.

BR,
Jani.


>
>> ---
>>  drivers/gpu/drm/i915/display/intel_cdclk.h   | 4 ++--
>>  drivers/gpu/drm/i915/display/skl_watermark.h | 4 ++--
>>  2 files changed, 4 insertions(+), 4 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/dr=
m/i915/display/intel_cdclk.h
>> index cfdcdec07a4d..1fe445a3a30b 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cdclk.h
>> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
>> @@ -88,9 +88,9 @@ intel_atomic_get_cdclk_state(struct intel_atomic_state=
 *state);
>>  	container_of_const((global_state), struct intel_cdclk_state, base)
>>=20=20
>>  #define intel_atomic_get_old_cdclk_state(state) \
>> -	to_intel_cdclk_state(intel_atomic_get_old_global_obj_state(state, &to_=
i915(state->base.dev)->display.cdclk.obj))
>> +	to_intel_cdclk_state(intel_atomic_get_old_global_obj_state(state, &to_=
intel_display(state)->cdclk.obj))
>>  #define intel_atomic_get_new_cdclk_state(state) \
>> -	to_intel_cdclk_state(intel_atomic_get_new_global_obj_state(state, &to_=
i915(state->base.dev)->display.cdclk.obj))
>> +	to_intel_cdclk_state(intel_atomic_get_new_global_obj_state(state, &to_=
intel_display(state)->cdclk.obj))
>>=20=20
>>  int intel_cdclk_init(struct drm_i915_private *dev_priv);
>>  void intel_cdclk_debugfs_register(struct drm_i915_private *i915);
>> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/=
drm/i915/display/skl_watermark.h
>> index 78b121941237..e73baec94873 100644
>> --- a/drivers/gpu/drm/i915/display/skl_watermark.h
>> +++ b/drivers/gpu/drm/i915/display/skl_watermark.h
>> @@ -73,9 +73,9 @@ intel_atomic_get_dbuf_state(struct intel_atomic_state =
*state);
>>  	container_of_const((global_state), struct intel_dbuf_state, base)
>>=20=20
>>  #define intel_atomic_get_old_dbuf_state(state) \
>> -	to_intel_dbuf_state(intel_atomic_get_old_global_obj_state(state, &to_i=
915(state->base.dev)->display.dbuf.obj))
>> +	to_intel_dbuf_state(intel_atomic_get_old_global_obj_state(state, &to_i=
ntel_display(state)->dbuf.obj))
>>  #define intel_atomic_get_new_dbuf_state(state) \
>> -	to_intel_dbuf_state(intel_atomic_get_new_global_obj_state(state, &to_i=
915(state->base.dev)->display.dbuf.obj))
>> +	to_intel_dbuf_state(intel_atomic_get_new_global_obj_state(state, &to_i=
ntel_display(state)->dbuf.obj))
>>=20=20
>>  int intel_dbuf_init(struct drm_i915_private *i915);
>>  int intel_dbuf_state_set_mdclk_cdclk_ratio(struct intel_atomic_state *s=
tate,
>> --=20
>> 2.39.2

--=20
Jani Nikula, Intel
