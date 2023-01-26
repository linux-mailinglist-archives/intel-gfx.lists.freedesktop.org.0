Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C010567D10A
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jan 2023 17:12:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C85110E2B1;
	Thu, 26 Jan 2023 16:11:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E7FE10E2B1
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Jan 2023 16:11:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674749517; x=1706285517;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=+mXs5AaTTsiDYOyAMjFTQQtXZXcxaleZYlY/ipNEHy0=;
 b=RbIrZ+HeGNLvh70+9xd+duBsKeQs5URR1EDg3xY1cj/Io1/JGTncj888
 zJGALWibCrKvv4mk2sh3QKT4OpQmXmWr8IzjXC7MJFAgpQVGMNHyyHeMh
 rlFznR24GVWDTpjG7vrxoGNaNIthS6c8Fq7PLwDuW3oXY38PJ2dvFVbRB
 6RAQux93kdHvghnC0/oKoTBy6FQ7Ta8VmDqXaRtZ/vHktwPEj5fkBqpwE
 DRN4rgKvcnjfKXeg5XuRqGqwBe0/HOz4AC4cZAUDw/8ym0M2i+efHQ4bK
 0iZV2OXTXWX5GRq109YB4G8Q1ucu0K0jSogsY7xWEbpRhKgdIMy6GZlIu g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="325519723"
X-IronPort-AV: E=Sophos;i="5.97,248,1669104000"; d="scan'208";a="325519723"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2023 08:05:38 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="751620913"
X-IronPort-AV: E=Sophos;i="5.97,248,1669104000"; d="scan'208";a="751620913"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.157])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2023 08:05:36 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Luca Coelho <luca@coelho.fi>, Jouni
 =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <f90662ade27cf750704896eda0663502fd05c4c0.camel@coelho.fi>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230125104439.1662832-1-jouni.hogander@intel.com>
 <5a3fd9d547723c726b0f170e894cf471e7eb8ae1.camel@coelho.fi>
 <87bkml5wv4.fsf@intel.com>
 <e0fb44004a740f0bb676cde16d8cc3a247ac106b.camel@coelho.fi>
 <f90662ade27cf750704896eda0663502fd05c4c0.camel@coelho.fi>
Date: Thu, 26 Jan 2023 18:05:32 +0200
Message-ID: <87357x5lir.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/psr: Split sel fetch plane
 configuration into arm and noarm
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 26 Jan 2023, Luca Coelho <luca@coelho.fi> wrote:
> On Thu, 2023-01-26 at 14:11 +0200, Luca Coelho wrote:
>> On Thu, 2023-01-26 at 14:00 +0200, Jani Nikula wrote:
>> > On Thu, 26 Jan 2023, Luca Coelho <luca@coelho.fi> wrote:
>> > > On Wed, 2023-01-25 at 12:44 +0200, Jouni H=C3=B6gander wrote:
>> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/=
gpu/drm/i915/display/intel_psr.c
>> > > > > index 7d4a15a283a0..63b79c611932 100644
>> > > > > --- a/drivers/gpu/drm/i915/display/intel_psr.c
>> > > > > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>> > > > > @@ -1559,7 +1559,26 @@ void intel_psr2_disable_plane_sel_fetch(s=
truct intel_plane *plane,
>> > > > >  	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_CTL(pipe, plane->i=
d), 0);
>> > > > >  }
>> > > > >=20=20
>> > > > > -void intel_psr2_program_plane_sel_fetch(struct intel_plane *pla=
ne,
>> > > > > +void intel_psr2_program_plane_sel_fetch_arm(struct intel_plane =
*plane,
>> > > > > +					const struct intel_crtc_state *crtc_state,
>> > > > > +					const struct intel_plane_state *plane_state,
>> > > > > +					int color_plane)
>> > > > > +{
>> > > > > +	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
>> > >=20
>> > > Should you use i915 instead of dev_priv? I've heard and read elsewhe=
re
>> > > that this is generally a desired change.  Much easier to use always =
the
>> > > same local name for this kind of thing.  Though this file is already
>> > > interspersed with both versions...
>> >=20
>> > Basically the only reason to use dev_priv for new code is to deal with
>> > some register macros that still have implicit dev_priv in
>> > them. Otherwise, i915 should be used, and when convenient, dev_priv
>> > should be converted to i915 while touching the code anyway (in a
>> > separate patch, but while you're there).
>>=20
>> Thanks for the clarification! In this case we're not using any of the
>> macros, AFAICT, so I guess it's better to go with i915 already? And I
>> think it should even be in this same patch, since it's a new function
>> anyway.
>>=20
>>=20
>> > The implicit dev_priv dependencies in the register macros are a bit
>> > annoying to fix, and it's been going slow. In retrospect maybe the rig=
ht
>> > thing would have been to just sed the parameter to all of them
>> > everywhere and be done with it for good. Not too late now, I guess, and
>> > I'd take the patches in a heartbeat if someone were to step up and do
>> > it.
>>=20
>> I see that there is a boatload of register macros using it... I won't
>> promise, but I think it would be a good exercise for a n00b like me to
>> make this patch, though I already foresee another boatload of conflicts
>> with the internal trees and everything...
>
> There were actually 10 boatloads of places to change:
>
>  187 files changed, 12104 insertions(+), 12104 deletions(-)
>
> ...but it _does_ compile. =F0=9F=98=84
>
> Do you think this is fine? Lots of shuffle, but if you think it's okay,
> I can send the patch out now.

Heh, I said I'd take patchES, not everything together! ;)

Rodrigo, Tvrtko, Joonas, thoughts?


BR,
Jani.


--=20
Jani Nikula, Intel Open Source Graphics Center
