Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AD9F7D9151
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Oct 2023 10:23:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A4A710E967;
	Fri, 27 Oct 2023 08:23:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 648D010E140
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Oct 2023 08:23:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698395017; x=1729931017;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=Onfvj2jIlZyhGj/t7kNG0dIC2tS2LfEmwnelc4ZNPBY=;
 b=fYYksU9rNLmicSn8oUwJ59PP8KTEsDb/PGfQveBZ77wL5UIO9+Ehon4D
 8hSn02bNE2d5cLrRft9hJOhRcqzp2TXjhJbhlkEY0KsL7kQQmTqKkbpdg
 c3876/AFOfKMsEemL4Tx7SiSiBo9rA4m1aCx7xPndRbMkH3LZEkBYTfqy
 9Jk6+yAAfZwv5Squ+MeQlQ0PPqbZhXyeOkYowBv2w7rb6+foOrYzqpjzw
 22X1ZmMnet+FwrKqPkmb4v9IUASEGhdd3esZ7cCBRpeCQUlm0L+N7xf+e
 HZyMxDxWbFUjNxS7hGbMgOkRfVsNGBUGw4L4h2UH0V4Qh0vB5dd+vGzlY w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="454196897"
X-IronPort-AV: E=Sophos;i="6.03,255,1694761200"; d="scan'208";a="454196897"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2023 01:23:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="850168830"
X-IronPort-AV: E=Sophos;i="6.03,255,1694761200"; d="scan'208";a="850168830"
Received: from jhajducz-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.34.19])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2023 01:23:35 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <ZSftNdJkXaIglJe2@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231011202259.1090131-1-jani.nikula@intel.com>
 <ZSftNdJkXaIglJe2@intel.com>
Date: Fri, 27 Oct 2023 11:23:31 +0300
Message-ID: <877cn879to.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/sprite: move sprite_name() to
 intel_sprite.c
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

On Thu, 12 Oct 2023, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Oct 11, 2023 at 11:22:59PM +0300, Jani Nikula wrote:
>> Move sprite_name() where its only user is, and convert it to a function,
>> removing the implicit dev_priv usage.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed to din.

>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display.h | 1 -
>>  drivers/gpu/drm/i915/display/intel_sprite.c  | 7 ++++++-
>>  2 files changed, 6 insertions(+), 2 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/=
drm/i915/display/intel_display.h
>> index 0e5dffe8f018..163469fe67a2 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display.h
>> @@ -105,7 +105,6 @@ enum i9xx_plane_id {
>>  };
>>=20=20
>>  #define plane_name(p) ((p) + 'A')
>> -#define sprite_name(p, s) ((p) * DISPLAY_RUNTIME_INFO(dev_priv)->num_sp=
rites[(p)] + (s) + 'A')
>>=20=20
>>  #define for_each_plane_id_on_crtc(__crtc, __p) \
>>  	for ((__p) =3D PLANE_PRIMARY; (__p) < I915_MAX_PLANES; (__p)++) \
>> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/d=
rm/i915/display/intel_sprite.c
>> index 1fb16510f750..d7b440c8caef 100644
>> --- a/drivers/gpu/drm/i915/display/intel_sprite.c
>> +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
>> @@ -48,6 +48,11 @@
>>  #include "intel_frontbuffer.h"
>>  #include "intel_sprite.h"
>>=20=20
>> +static char sprite_name(struct drm_i915_private *i915, enum pipe pipe, =
int sprite)
>> +{
>> +	return pipe * DISPLAY_RUNTIME_INFO(i915)->num_sprites[pipe] + sprite +=
 'A';
>> +}
>> +
>>  static void i9xx_plane_linear_gamma(u16 gamma[8])
>>  {
>>  	/* The points are not evenly spaced. */
>> @@ -1636,7 +1641,7 @@ intel_sprite_plane_create(struct drm_i915_private =
*dev_priv,
>>  				       0, plane_funcs,
>>  				       formats, num_formats, modifiers,
>>  				       DRM_PLANE_TYPE_OVERLAY,
>> -				       "sprite %c", sprite_name(pipe, sprite));
>> +				       "sprite %c", sprite_name(dev_priv, pipe, sprite));
>>  	kfree(modifiers);
>>=20=20
>>  	if (ret)
>> --=20
>> 2.39.2

--=20
Jani Nikula, Intel
