Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37F7F97ED26
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 16:24:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D24B710E240;
	Mon, 23 Sep 2024 14:24:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FqZ88JBU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BACD10E240;
 Mon, 23 Sep 2024 14:24:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727101492; x=1758637492;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=cBN6bZs8gxWRhGxp/HDxJVmBIsHD9XBAO7gZyrKPF+w=;
 b=FqZ88JBU9oNfZCx8qet+oPGW8hrNxzPJELw+qEzeqKonyaw6xog5DsS1
 MfhEu+Dl37tPulGlLqAVqEjMk87I/yUnvV76w0HH5thtP/JHeowhG1z9r
 9HcATYmffggPmhSd+JSyxf6xanNGSLCYmFA2IlOUim/cO9M8eNUMu/siY
 jyFtY1LVKO5SSmtfx0jYIzMd7zRB4J3CFjwgSffi+4N66Agc4ZyUjmKhk
 ElEBpEF2sXOYuMqPIPG4WxfOih0j4uJ3eNJSOXkOhaVJm2c8HWuQ3Gyyr
 A4B7moLgACBHriDdIl3d3xOWgBso280ZEqDUKhhWcaf/bqmP3WlQTIbwX g==;
X-CSE-ConnectionGUID: eR2oc51DQoylWrkGgqoB7w==
X-CSE-MsgGUID: /ZftSNNSRKuDqdjnSUTZ3A==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="29773715"
X-IronPort-AV: E=Sophos;i="6.10,251,1719903600"; d="scan'208";a="29773715"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 07:24:52 -0700
X-CSE-ConnectionGUID: yNkYwKeIRxq36lwU9Qd/Fg==
X-CSE-MsgGUID: 6EjDxhlXTnCu+lPcvm7Myg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,251,1719903600"; d="scan'208";a="108520826"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.65])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 07:24:49 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 4/5] drm/i915/bios: Extract vbt_signature[]
In-Reply-To: <ZvF5qm-uT8yXt6p7@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240910134219.28479-1-ville.syrjala@linux.intel.com>
 <20240910134219.28479-5-ville.syrjala@linux.intel.com>
 <87y13xf4p3.fsf@intel.com> <Zu2p3dlneXYbmWEu@intel.com>
 <87frpq7myg.fsf@intel.com> <ZvF5qm-uT8yXt6p7@intel.com>
Date: Mon, 23 Sep 2024 17:24:46 +0300
Message-ID: <877cb25txt.fsf@intel.com>
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

On Mon, 23 Sep 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Mon, Sep 23, 2024 at 12:12:39PM +0300, Jani Nikula wrote:
>> On Fri, 20 Sep 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.=
com> wrote:
>> > On Thu, Sep 12, 2024 at 03:15:52PM +0300, Jani Nikula wrote:
>> >> On Tue, 10 Sep 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wr=
ote:
>> >> > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> >> >
>> >> > Replace the three hand rolled "$VBT"s with a vbt_signature[]
>> >> > to avoid accidents.
>> >> >
>> >> > Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.c=
om>
>> >> > ---
>> >> >  drivers/gpu/drm/i915/display/intel_bios.c | 12 +++++++++---
>> >> >  1 file changed, 9 insertions(+), 3 deletions(-)
>> >> >
>> >> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gp=
u/drm/i915/display/intel_bios.c
>> >> > index cbbda94c3dab..0b92b494117f 100644
>> >> > --- a/drivers/gpu/drm/i915/display/intel_bios.c
>> >> > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>> >> > @@ -2964,6 +2964,8 @@ static const struct bdb_header *get_bdb_heade=
r(const struct vbt_header *vbt)
>> >> >  	return _vbt + vbt->bdb_offset;
>> >> >  }
>> >> >=20=20
>> >> > +static const char vbt_signature[4] =3D "$VBT";
>> >>=20
>> >> Always a bit scary to add strings without termination, but I guess it=
's
>> >> justified here.
>> >
>> > I guess we could make it look less like a string with eg.
>> > static const u8 vbt_signature[] =3D { '$', 'V', 'B', 'T' };
>> > ?
>>=20
>> Alternatively,
>>=20
>> static const char *vbt_signature =3D "$VBT";
>
> Or could just be something like:
>
> static const char vbt_signature[] =3D "$VBT";
> static const int vbt_signature_len =3D 4;
>
> BUILD_BUG_ON(vbt_signature_len !=3D sizeof(vbt_signature) - 1);
> BUILD_BUG_ON(vbt_signature_len !=3D sizeof(u32));
>
> and use vbt_signature_len instead sizeof(vbt_signature) everwhere.

Works for me, up to you.

BR,
Jani.

>
>>=20
>> >
>> >> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
>> >>=20
>> >>=20
>> >> > +
>> >> >  /**
>> >> >   * intel_bios_is_valid_vbt - does the given buffer contain a valid=
 VBT
>> >> >   * @display:	display device
>> >> > @@ -2986,7 +2988,7 @@ bool intel_bios_is_valid_vbt(struct intel_dis=
play *display,
>> >> >  		return false;
>> >> >  	}
>> >> >=20=20
>> >> > -	if (memcmp(vbt->signature, "$VBT", 4)) {
>> >> > +	if (memcmp(vbt->signature, vbt_signature, sizeof(vbt_signature)))=
 {
>>=20
>> But then this would need strlen()
>>=20
>> >> >  		drm_dbg_kms(display->drm, "VBT invalid signature\n");
>> >> >  		return false;
>> >> >  	}
>> >> > @@ -3082,9 +3084,11 @@ static struct vbt_header *spi_oprom_get_vbt(=
struct intel_display *display,
>> >> >  	oprom_offset =3D intel_uncore_read(&i915->uncore, OROM_OFFSET);
>> >> >  	oprom_offset &=3D OROM_OFFSET_MASK;
>> >> >=20=20
>> >> > +	BUILD_BUG_ON(sizeof(vbt_signature) !=3D sizeof(u32));
>>=20
>> And maybe this could be sizeof(vbt_signature) < sizeof(u32)
>>=20
>> All of the alternatives are a bit disappointing, so maybe let's just
>> roll with the patch you already have here?
>>=20
>> BR,
>> Jani.
>>=20
>> >> > +
>> >> >  	for (count =3D 0; count < oprom_size; count +=3D 4) {
>> >> >  		data =3D intel_spi_read32(&i915->uncore, oprom_offset + count);
>> >> > -		if (data =3D=3D *((const u32 *)"$VBT")) {
>> >> > +		if (data =3D=3D *((const u32 *)vbt_signature)) {
>> >> >  			found =3D oprom_offset + count;
>> >> >  			break;
>> >> >  		}
>> >> > @@ -3144,9 +3148,11 @@ static struct vbt_header *oprom_get_vbt(stru=
ct intel_display *display,
>> >> >  	if (!oprom)
>> >> >  		return NULL;
>> >> >=20=20
>> >> > +	BUILD_BUG_ON(sizeof(vbt_signature) !=3D sizeof(u32));
>> >> > +
>> >> >  	/* Scour memory looking for the VBT signature. */
>> >> >  	for (i =3D 0; i + 4 < size; i +=3D 4) {
>> >> > -		if (ioread32(oprom + i) !=3D *((const u32 *)"$VBT"))
>> >> > +		if (ioread32(oprom + i) !=3D *((const u32 *)vbt_signature))
>> >> >  			continue;
>> >> >=20=20
>> >> >  		p =3D oprom + i;
>> >>=20
>> >> --=20
>> >> Jani Nikula, Intel
>>=20
>> --=20
>> Jani Nikula, Intel

--=20
Jani Nikula, Intel
