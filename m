Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C6B46387C1
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Nov 2022 11:44:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69C9C10E002;
	Fri, 25 Nov 2022 10:44:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA65C10E002
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Nov 2022 10:44:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669373059; x=1700909059;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=TLFQhXk6s8ijJFiyJNJSdT7PYjTtBAxwbPOcz/7LaD0=;
 b=n3fenW/SRPZzkSoVC48Lt0HkYQ8bXck7SggUWynZWEZlVz0jxNlRHKL6
 KjCC3zit0ofxk+KchLBMnSv7a//V9bcDZlX5UFjWb0t2nB4+TASIRUfJx
 J1+IKuCX4Oni3qSj+pyZ1uKZb8tCi9zQBjd9D3qe2VKB/0VDXtgyXOY6h
 ZFlHsqm8neKz0bXEoyvEnUOD6lzRIxUQxbacu6KkMSIcqI7gw1Eg7P9rJ
 FOQgLVXIAMe/JVX1osQD79nMrh7uWICYeFVN3rg6Ie4V1lu4JPymOaMg0
 48sdI48Cc1mkem0x8wqTCRSP1y2d8VdwSoN/zw1QUro815XhCg+Ax8CuZ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10541"; a="314493494"
X-IronPort-AV: E=Sophos;i="5.96,193,1665471600"; d="scan'208";a="314493494"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2022 02:44:18 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10541"; a="620303268"
X-IronPort-AV: E=Sophos;i="5.96,193,1665471600"; d="scan'208";a="620303268"
Received: from kbielowk-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.128.177])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2022 02:44:17 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <Y39NBXNDDwwq4sKj@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1669238194.git.jani.nikula@intel.com>
 <6d9653c249d4a863b4bec71b66ddb5718dd3c8c3.1669238194.git.jani.nikula@intel.com>
 <Y39NBXNDDwwq4sKj@intel.com>
Date: Fri, 25 Nov 2022 12:44:14 +0200
Message-ID: <87zgcf48ld.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 12/12] drm/i915/fbc: switch to intel_de_*
 register accessors in display code
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

On Thu, 24 Nov 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Nov 23, 2022 at 11:18:25PM +0200, Jani Nikula wrote:
>> Avoid direct uncore use in display code. Use the new
>> intel_de_rewrite_fw().
>>=20
>> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_fbc.c | 10 ++--------
>>  1 file changed, 2 insertions(+), 8 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/=
i915/display/intel_fbc.c
>> index b5ee5ea0d010..6066ac412e6f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
>> @@ -323,10 +323,7 @@ static void i8xx_fbc_nuke(struct intel_fbc *fbc)
>>  	enum i9xx_plane_id i9xx_plane =3D fbc_state->plane->i9xx_plane;
>>  	struct drm_i915_private *dev_priv =3D fbc->i915;
>>=20=20
>> -	spin_lock_irq(&dev_priv->uncore.lock);
>> -	intel_de_write_fw(dev_priv, DSPADDR(i9xx_plane),
>> -			  intel_de_read_fw(dev_priv, DSPADDR(i9xx_plane)));
>> -	spin_unlock_irq(&dev_priv->uncore.lock);
>> +	intel_de_rewrite_fw(dev_priv, DSPADDR(i9xx_plane));
>
> intel_de_rewrite_fw() seems to imply some kind of atomicicity guarantee
> here. But that entirely depends on whether the other writers of this
> register also protect it with unore.lock. So just a misleading illusion.
>
> That said, this locking stuff shouldn't even be needed since=20
> commit de5bd083d247 ("drm/i915/fbc: Skip nuke when flip is pending")
> commit 7cfd1a18c5f9 ("drm/i915: Remove remaining locks from i9xx plane ud=
pates")

So instead just drop the whole intel_de_rewrite_fw() thing and the
locking around the rewrite here?

BR,
Jani.


>
>>  }
>>=20=20
>>  static void i8xx_fbc_program_cfb(struct intel_fbc *fbc)
>> @@ -359,10 +356,7 @@ static void i965_fbc_nuke(struct intel_fbc *fbc)
>>  	enum i9xx_plane_id i9xx_plane =3D fbc_state->plane->i9xx_plane;
>>  	struct drm_i915_private *dev_priv =3D fbc->i915;
>>=20=20
>> -	spin_lock_irq(&dev_priv->uncore.lock);
>> -	intel_de_write_fw(dev_priv, DSPSURF(i9xx_plane),
>> -			  intel_de_read_fw(dev_priv, DSPSURF(i9xx_plane)));
>> -	spin_unlock_irq(&dev_priv->uncore.lock);
>> +	intel_de_rewrite_fw(dev_priv, DSPSURF(i9xx_plane));
>>  }
>>=20=20
>>  static const struct intel_fbc_funcs i965_fbc_funcs =3D {
>> --=20
>> 2.34.1

--=20
Jani Nikula, Intel Open Source Graphics Center
