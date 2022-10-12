Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F02CB5FC8D9
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Oct 2022 18:06:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1541010E343;
	Wed, 12 Oct 2022 16:06:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83EFB10E343
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Oct 2022 16:06:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665590800; x=1697126800;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=3CRyizrg6TiEswoBglfXG/Twg3lpdspwMpuC03UyGtY=;
 b=H1sYiQuFTF2/duUfs/ZjXBtSKyrfCzZyXT+Z7cqCydjUc/W1JByGBHCf
 nKEtwrUEvUluFYGIx7u6CXHFEfu97aeA2nt0OVyXiOYQjkM1UX9wvzoKS
 ITTQ/MrMWz0atYb5DYD5isUOT/4K+3abq+GkwxA8k+wufJvt0acwmxVAi
 CcDS1rqzNB5VyzciCHcvPEdFcnLr/LQWNpcg6DrYsGsceY+xvejkirQM9
 W4jpZwcVMovMlZ65LNiVS6pxwSNqlL/nh+iFU/0xMrq6veU83lD0hXFej
 944bkvcSbqpG4UOrz/ZKCI6MRLebPQs9sHBtI7dIx+cNZ5rYx5ssToCCb g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10498"; a="303570869"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="303570869"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 09:06:38 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10498"; a="801893278"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="801893278"
Received: from jhpuonti-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.40.226])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 09:06:37 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <Y0bXNjtTAUnEW20M@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
 <20221011170011.17198-11-ville.syrjala@linux.intel.com>
 <87czaxw1ys.fsf@intel.com> <Y0bXNjtTAUnEW20M@intel.com>
Date: Wed, 12 Oct 2022 19:06:40 +0300
Message-ID: <87a661t4a7.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 10/22] drm/i915/audio: Make sure we write
 the whole ELD buffer
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
Cc: Takashi Iwai <tiwai@suse.de>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 12 Oct 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Oct 12, 2022 at 05:28:27PM +0300, Jani Nikula wrote:
>> On Tue, 11 Oct 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
>> > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> >
>> > Currently we only write as many dwords into the hardware
>> > ELD buffers as drm_eld_size() tells us. That could mean the
>> > remainder of the hardware buffer is left with whatever
>> > stale garbage it had before, which doesn't seem entirely
>> > great. Let's zero out the remainder of the buffer in case
>> > the provided ELD doesn't fill it fully.
>> >
>> > We can also sanity check out idea of the hardware ELD buffer's
>> > size by making sure the address wrapped back to zero once
>> > we wrote the entire buffer.
>> >
>> > Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
>> > Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
>> > Cc: Takashi Iwai <tiwai@suse.de>
>> > Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_audio.c | 34 ++++++++++++++++------
>> >  1 file changed, 25 insertions(+), 9 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/=
drm/i915/display/intel_audio.c
>> > index abca5f23673a..d2f9c4c29061 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_audio.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_audio.c
>> > @@ -333,19 +333,24 @@ static void g4x_audio_codec_enable(struct intel_=
encoder *encoder,
>> >  	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>> >  	struct drm_connector *connector =3D conn_state->connector;
>> >  	const u8 *eld =3D connector->eld;
>> > +	int eld_buffer_size, len, i;
>> >  	u32 tmp;
>> > -	int len, i;
>> >=20=20
>> >  	tmp =3D intel_de_read(i915, G4X_AUD_CNTL_ST);
>> >  	tmp &=3D ~(G4X_ELD_VALID | G4X_ELD_ADDRESS_MASK);
>> >  	intel_de_write(i915, G4X_AUD_CNTL_ST, tmp);
>> >=20=20
>> > -	len =3D g4x_eld_buffer_size(i915);
>> > -	len =3D min(drm_eld_size(eld) / 4, len);
>> > +	eld_buffer_size =3D g4x_eld_buffer_size(i915);
>> > +	len =3D min(drm_eld_size(eld) / 4, eld_buffer_size);
>> >=20=20
>> >  	for (i =3D 0; i < len; i++)
>> >  		intel_de_write(i915, G4X_HDMIW_HDMIEDID,
>> >  			       *((const u32 *)eld + i));
>> > +	for (; i < eld_buffer_size; i++)
>> > +		intel_de_write(i915, G4X_HDMIW_HDMIEDID, 0);
>>=20
>> I think I'd personally write this along the lines of:
>>=20
>> 	eld_buffer_size =3D g4x_eld_buffer_size(i915);
>> 	len =3D drm_eld_size(eld) / 4;
>>=20
>> 	for (i =3D 0; i < eld_buffer_size; i++) {
>> 		u32 val =3D i < len ? *((const u32 *)eld + i)) : 0;
>> 		intel_de_write(i915, G4X_HDMIW_HDMIEDID, val);
>> 	}
>>=20
>> Get rid of two loops, the loop variable "leaking" from one to the next,
>> the min() around len calculation, and multiple reg writes. Seems cleaner
>> to me.
>
> I suppose. Though the double loop is what we already use
> in the infoframe code. So should probably change all of it
> at once if we decide that a single loop is the way to go.

IMO it would be nicer, but it's not a super important thing. Can go with
this now, and decide later. As said, R-b on this as-is.

BR,
Jani.


--=20
Jani Nikula, Intel Open Source Graphics Center
