Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16891B7FA12
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Sep 2025 15:58:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45B1E10E618;
	Wed, 17 Sep 2025 13:58:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C9V5na2p";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0252910E617;
 Wed, 17 Sep 2025 13:58:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758117482; x=1789653482;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=5DBh8REK5BP8HInTWYYuG19QRfdIbDzmW457tBJtBMQ=;
 b=C9V5na2ppBUO3Ud4RCSF3dpqPToeCH9+geZb0wgCRzLZIZr7lK6Y46xM
 xSxk7G5JWO4S994VipIiHVtCuzdrCG2nV4EMOc848KWQfacbUpMRTRiiU
 AIUw25TkjOKVgYk7rOmajTCLFoDuMCm9xdMW5hHg7a3zIYTakt86ZTV9y
 /wz1zX/Y2AyDAsPiP7OkTplexqVJiRFt/NMbMeDRQB+ReXNE1+rnUi70u
 DCtFtZzy5XVZlb0l4dA/cXvV2dQ73RjLRlo1f0JeXBnJkfCUirdFujCKa
 ETzQkCsUwZgRjUNvc4cOTy44T3O2naOEhNMSoM+/g+QUqbQ1mwwfp9H5y g==;
X-CSE-ConnectionGUID: 1WSC+eWBRuuYsujB/jjH8A==
X-CSE-MsgGUID: rBC+I0+2RuG5s4CRtJCVfQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11556"; a="60569735"
X-IronPort-AV: E=Sophos;i="6.18,272,1751266800"; d="scan'208";a="60569735"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2025 06:58:02 -0700
X-CSE-ConnectionGUID: 6I7ELYDbROqu8nL5yBtYCw==
X-CSE-MsgGUID: BBOEphm+R0+G/t+Z7Nt+jw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,272,1751266800"; d="scan'208";a="175174501"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.135])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2025 06:57:59 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 michal.grzelak@intel.com
Subject: Re: [PATCH v2 10/15] drm/i915: cache the results in
 vlv_clock_get_hpll_vco() and use it more
In-Reply-To: <aMm_r5PJtPNYFq8i@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1757688216.git.jani.nikula@intel.com>
 <14695618682d8d8fad1adc485de7a122c8e1494a.1757688216.git.jani.nikula@intel.com>
 <aMm_r5PJtPNYFq8i@intel.com>
Date: Wed, 17 Sep 2025 16:57:57 +0300
Message-ID: <ca691646d027314b074a9bee5fdd40fa7835e62d@intel.com>
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

On Tue, 16 Sep 2025, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Fri, Sep 12, 2025 at 05:48:49PM +0300, Jani Nikula wrote:
>> Use vlv_clock_get_hpll_vco() helper more to avoid looking at
>> i915->hpll_freq directly. Cache and return the cached results to avoid
>> repeated lookups.
>>=20
>> v2: Rebase
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_cdclk.c   | 10 +++-----
>>  drivers/gpu/drm/i915/display/intel_display.c | 27 ++++++++------------
>>  2 files changed, 14 insertions(+), 23 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/dr=
m/i915/display/intel_cdclk.c
>> index ea1e6d964764..e77efa0f33ed 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>> @@ -563,8 +563,7 @@ static void hsw_get_cdclk(struct intel_display *disp=
lay,
>>=20=20
>>  static int vlv_calc_cdclk(struct intel_display *display, int min_cdclk)
>>  {
>> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>> -	int freq_320 =3D (dev_priv->hpll_freq <<  1) % 320000 !=3D 0 ?
>> +	int freq_320 =3D (vlv_clock_get_hpll_vco(display->drm) <<  1) % 320000=
 !=3D 0 ?
>>  		333333 : 320000;
>
> The somewhat dodgy thing here is that the device might not even be
> awake when this is called. So this on-demand caching only works
> correctly if the first call happens to be done at the right time
> by accident.
>
> I suppose we do end up calling most of these at some point during
> the driver initialization when everything is powered on, but the
> whole thing does feel rather fragile. I suppose we can hope that
> the limited CI coverage was enough to catch most of that.
>
> It would probably make sense to introduce an explicit initalization
> function that can be called under controlled circumstances. But we
> could do that as a followup, and in the meantime maybe toss in a
> few remarks somewhere to remind us about this potential trap...
>
> Series is
> Acked-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed the lot.

There wasn't really a point where I could've neatly snug in a comment
about caching while applying, so I sent a follow-up [1].

BR,
Jani.


[1] https://lore.kernel.org/r/20250917135200.1932903-1-jani.nikula@intel.com


--=20
Jani Nikula, Intel
