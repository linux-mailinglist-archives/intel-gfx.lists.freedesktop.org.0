Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 347F146F347
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Dec 2021 19:39:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C03610E201;
	Thu,  9 Dec 2021 18:39:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A298610E201
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Dec 2021 18:39:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639075143; x=1670611143;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=32GVQVeY5hltYJzAEs6ywLBc56pZwCbXrbkxHG/LKoQ=;
 b=WOan0rO+XvSAZSjJ7I0zvU4g+WZCSYNXtjrSPvVeqjxhx53LeJSesY1f
 Fo/9D86C9fzx70TGB+EsLKfyI5oeMrL9mehsMesKg16pO7th+2M0grWS7
 CBMt1hMe85oCmRIQtfdnmSiMfLa8stKY4ReYdI7Hq+WwvGu2va9PfhsUs
 602gsacOt/+KwktbG6d5uh3lt7pK4wfxDPNRXiK+M66lwygP4ita+VvHN
 lem1CAtkxL4rwYL4YgEJrpe3gFHmwFp7JUfoFOsZh32alUgceVYQyoOtb
 sziDNkOVm+y1WK9MwnUOMycDAYtxxKfao8mZhLx7767MuimaL5PgXJOK2 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="238404495"
X-IronPort-AV: E=Sophos;i="5.88,193,1635231600"; d="scan'208";a="238404495"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 10:39:02 -0800
X-IronPort-AV: E=Sophos;i="5.88,193,1635231600"; d="scan'208";a="516432931"
Received: from cwilso3-mobl.fi.intel.com (HELO localhost) ([10.252.19.112])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 10:39:00 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <YbJC6UHlcyt9s7tt@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1639068649.git.jani.nikula@intel.com>
 <66f687db7321846049a6aa524dfafd45cf0cb77f.1639068649.git.jani.nikula@intel.com>
 <YbJC6UHlcyt9s7tt@intel.com>
Date: Thu, 09 Dec 2021 20:38:55 +0200
Message-ID: <87fsr139og.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/cdclk: un-inline
 intel_cdclk_state functions
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

On Thu, 09 Dec 2021, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Thu, Dec 09, 2021 at 06:51:23PM +0200, Jani Nikula wrote:
>> Hide the details better.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_cdclk.c | 18 ++++++++++++++++++
>>  drivers/gpu/drm/i915/display/intel_cdclk.h | 13 ++++++++-----
>>  2 files changed, 26 insertions(+), 5 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/dr=
m/i915/display/intel_cdclk.c
>> index a216a350006d..84674a4f7226 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>> @@ -2630,6 +2630,24 @@ intel_atomic_get_cdclk_state(struct intel_atomic_=
state *state)
>>  	return to_intel_cdclk_state(cdclk_state);
>>  }
>>=20=20
>> +struct intel_cdclk_state *
>> +to_intel_cdclk_state(struct intel_global_state *cdclk_state)
>> +{
>> +	return container_of(cdclk_state, struct intel_cdclk_state, base);
>> +}
>> +
>> +struct intel_cdclk_state *
>> +intel_atomic_get_old_cdclk_state(struct intel_atomic_state *state)
>> +{
>> +	return to_intel_cdclk_state(intel_atomic_get_old_global_obj_state(stat=
e, &to_i915(state->base.dev)->cdclk.obj));
>> +}
>> +
>> +struct intel_cdclk_state *
>> +intel_atomic_get_new_cdclk_state(struct intel_atomic_state *state)
>> +{
>> +	return to_intel_cdclk_state(intel_atomic_get_new_global_obj_state(stat=
e, &to_i915(state->base.dev)->cdclk.obj));
>> +}
>> +
>
> Not really sure about this one. We don't do this for any other similar
> cases, and I think the macro versions are needed if we have any kind of
> const vs. non-const funny business going on. I guess in this particular
> case we don't, but pretty sure that was a real thing for some other
> atomic states when I was pondering about using functions rather than
> macros for those.
>
> So I'm tempted to say we should stick to a common pattern across the
> board if possible.

The main pattern I'm aiming for is "don't look into the guts of struct
drm_i915_private in headers all over the place". That's the main
headache for pretty much all the include un-tangling.

I guess having them as macros makes it kind of work if the users include
all the dependencies, but that's not pretty either.

As an alternative, I was in fact looking for ways to make all of the
above internal to intel_cdclk.c. Make struct intel_cdclk_state an opaque
type, and add interfaces to peek and poke it instead of letting callers
mess with it directly. Ditto with intel_dbuf_state and intel_bw_state.

I think this is just one example of our tendency to add complicated
object hierarchies, and then let everyone look at and modify their
internals. I've sort of been on this crusade of adding interfaces and
hiding stuff behind those interfaces, and I think long term that's the
only way to keep the driver manageable. If this seems to bring about too
many functions in an interface, I think it's also an indication the
"poke at the objects directly" wasn't really properly thought out
either.


BR,
Jani.


>
>>  int intel_cdclk_atomic_check(struct intel_atomic_state *state,
>>  			     bool *need_cdclk_calc)
>>  {
>> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/dr=
m/i915/display/intel_cdclk.h
>> index bb3a778c506b..77e8c8e1708f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cdclk.h
>> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
>> @@ -76,11 +76,14 @@ int intel_cdclk_atomic_check(struct intel_atomic_sta=
te *state,
>>  struct intel_cdclk_state *
>>  intel_atomic_get_cdclk_state(struct intel_atomic_state *state);
>>=20=20
>> -#define to_intel_cdclk_state(x) container_of((x), struct intel_cdclk_st=
ate, base)
>> -#define intel_atomic_get_old_cdclk_state(state) \
>> -	to_intel_cdclk_state(intel_atomic_get_old_global_obj_state(state, &to_=
i915(state->base.dev)->cdclk.obj))
>> -#define intel_atomic_get_new_cdclk_state(state) \
>> -	to_intel_cdclk_state(intel_atomic_get_new_global_obj_state(state, &to_=
i915(state->base.dev)->cdclk.obj))
>> +struct intel_cdclk_state *
>> +to_intel_cdclk_state(struct intel_global_state *cdclk_state);
>> +
>> +struct intel_cdclk_state *
>> +intel_atomic_get_old_cdclk_state(struct intel_atomic_state *state);
>> +
>> +struct intel_cdclk_state *
>> +intel_atomic_get_new_cdclk_state(struct intel_atomic_state *state);
>>=20=20
>>  int intel_cdclk_init(struct drm_i915_private *dev_priv);
>>=20=20
>> --=20
>> 2.30.2

--=20
Jani Nikula, Intel Open Source Graphics Center
