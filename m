Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53CB35EF4D2
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Sep 2022 13:56:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8DE510E5E0;
	Thu, 29 Sep 2022 11:55:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E63DA10E5E0
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Sep 2022 11:55:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664452555; x=1695988555;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=IrxK9pUaBGqGgrOkkswd3MTFl/W4OeNEJyJSGCbvAts=;
 b=EkqWVzV3KVaU2oru0iI2d0ugpHK9F3Zv97RMZMacDy5V/gVP/WRaJ0Mi
 G4icOViA6fOZQ2f5T/JmR5+goEQGyg7I4iOVh1f9ZOQqYR29eGRvnmYHg
 p59jw3rNMATzcLgkC+A6/6Bq9qqTFkxY4Azq1mOED/7h1gMNqtgDZuWOn
 WQc9oHguQUB5sOfJEZv079RGE+w5XFAJ/ScsB+dfi1G44OtxzEFwwwzEb
 9iyWXvfPa6jACgxZKS0mJAKJdhEb2puh9DvuQ733mIF45G76E42M0uhBB
 HIob8rr5eKUHGyg1dugjGlyzrz78/FUPkw7x7hGxAwTfLs9X/vmVXyObv A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="301846048"
X-IronPort-AV: E=Sophos;i="5.93,355,1654585200"; d="scan'208";a="301846048"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2022 04:55:55 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="711355047"
X-IronPort-AV: E=Sophos;i="5.93,355,1654585200"; d="scan'208";a="711355047"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.153])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2022 04:55:54 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <87o7uyxy1g.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220929071521.26612-1-ville.syrjala@linux.intel.com>
 <20220929071521.26612-3-ville.syrjala@linux.intel.com>
 <87o7uyxy1g.fsf@intel.com>
Date: Thu, 29 Sep 2022 14:55:51 +0300
Message-ID: <87edvuxum0.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 02/10] drm/i915: Split up intel_color_init()
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

On Thu, 29 Sep 2022, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Thu, 29 Sep 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
>> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>>
>> intel_color_init() does both device level and crtc level stuff.
>> Split it up accordingly.
>>
>> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_color.c   | 15 +++++++++------
>>  drivers/gpu/drm/i915/display/intel_color.h   |  4 +++-
>>  drivers/gpu/drm/i915/display/intel_crtc.c    |  3 +--
>>  drivers/gpu/drm/i915/display/intel_display.c |  1 +
>>  4 files changed, 14 insertions(+), 9 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/dr=
m/i915/display/intel_color.c
>> index bbc56affb3ec..ddfe7c257a72 100644
>> --- a/drivers/gpu/drm/i915/display/intel_color.c
>> +++ b/drivers/gpu/drm/i915/display/intel_color.c
>> @@ -2206,13 +2206,21 @@ static const struct intel_color_funcs ilk_color_=
funcs =3D {
>>  	.read_luts =3D ilk_read_luts,
>>  };
>>=20=20
>> -void intel_color_init(struct intel_crtc *crtc)
>> +void intel_crtc_color_init(struct intel_crtc *crtc)
>>  {
>>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>>  	bool has_ctm =3D INTEL_INFO(dev_priv)->display.color.degamma_lut_size =
!=3D 0;
>>=20=20
>>  	drm_mode_crtc_set_gamma_size(&crtc->base, 256);
>>=20=20
>> +	drm_crtc_enable_color_mgmt(&crtc->base,
>> +				   INTEL_INFO(dev_priv)->display.color.degamma_lut_size,
>> +				   has_ctm,
>> +				   INTEL_INFO(dev_priv)->display.color.gamma_lut_size);
>> +}
>> +
>> +void intel_color_init_hooks(struct drm_i915_private *dev_priv)
>> +{
>>  	if (HAS_GMCH(dev_priv)) {
>>  		if (IS_CHERRYVIEW(dev_priv)) {
>>  			dev_priv->display.funcs.color =3D &chv_color_funcs;
>> @@ -2238,9 +2246,4 @@ void intel_color_init(struct intel_crtc *crtc)
>>  		} else
>>  			dev_priv->display.funcs.color =3D &ilk_color_funcs;
>>  	}
>> -
>> -	drm_crtc_enable_color_mgmt(&crtc->base,
>> -				   INTEL_INFO(dev_priv)->display.color.degamma_lut_size,
>> -				   has_ctm,
>> -				   INTEL_INFO(dev_priv)->display.color.gamma_lut_size);
>>  }
>> diff --git a/drivers/gpu/drm/i915/display/intel_color.h b/drivers/gpu/dr=
m/i915/display/intel_color.h
>> index fd873425e082..67702451e2fd 100644
>> --- a/drivers/gpu/drm/i915/display/intel_color.h
>> +++ b/drivers/gpu/drm/i915/display/intel_color.h
>> @@ -10,9 +10,11 @@
>>=20=20
>>  struct intel_crtc_state;
>>  struct intel_crtc;
>> +struct drm_i915_private;
>>  struct drm_property_blob;
>>=20=20
>> -void intel_color_init(struct intel_crtc *crtc);
>> +void intel_color_init_hooks(struct drm_i915_private *i915);
>> +void intel_crtc_color_init(struct intel_crtc *crtc);
>>  int intel_color_check(struct intel_crtc_state *crtc_state);
>>  void intel_color_commit_noarm(const struct intel_crtc_state *crtc_state=
);
>>  void intel_color_commit_arm(const struct intel_crtc_state *crtc_state);
>> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm=
/i915/display/intel_crtc.c
>> index 6792a9056f46..2d9fc7383bfc 100644
>> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
>> @@ -365,8 +365,7 @@ int intel_crtc_init(struct drm_i915_private *dev_pri=
v, enum pipe pipe)
>>  						BIT(DRM_SCALING_FILTER_DEFAULT) |
>>  						BIT(DRM_SCALING_FILTER_NEAREST_NEIGHBOR));
>>=20=20
>> -	intel_color_init(crtc);
>> -
>> +	intel_crtc_color_init(crtc);
>>  	intel_crtc_drrs_init(crtc);
>>  	intel_crtc_crc_init(crtc);
>
> I'd name all of these like:
>
> 	intel_color_crtc_init();
>         intel_drrs_crtc_init();
>         intel_crc_crtc_init();
>
> I think in gem side the "name functions based on first/context argument"
> style has lead to serious problems wrt code organization. They still
> stick to it, but I can't make heads or tails where function definitions
> or declarations are supposed to be placed or found.

The patch itself is fine, and follows the precedent set by the above
functions, but I'd *really* like to see all the above functions renamed
afterwards.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
> BR,
> Jani.
>
>
>>=20=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/=
drm/i915/display/intel_display.c
>> index eb8eaeb19881..a103413cb081 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -8326,6 +8326,7 @@ void intel_init_display_hooks(struct drm_i915_priv=
ate *dev_priv)
>>  	if (!HAS_DISPLAY(dev_priv))
>>  		return;
>>=20=20
>> +	intel_color_init_hooks(dev_priv);
>>  	intel_init_cdclk_hooks(dev_priv);
>>  	intel_audio_hooks_init(dev_priv);

--=20
Jani Nikula, Intel Open Source Graphics Center
