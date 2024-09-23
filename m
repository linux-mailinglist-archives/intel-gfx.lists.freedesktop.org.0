Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA07A97E848
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 11:12:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64C9D10E3BB;
	Mon, 23 Sep 2024 09:12:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nklBQOFh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A63A010E3BB;
 Mon, 23 Sep 2024 09:12:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727082764; x=1758618764;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=xuQTwa/86t7JxOQViNbpCvUI17jSTz8LO6fmtRwxGfA=;
 b=nklBQOFhod5uEV8Yqhmop5TlTBFw30VHD7yU6XAJ2nKEnDNs7bS82SdD
 e0xQsajzAH/1LReS2etgzmpzJWbud7DrSEAgsql6Dhbp0K3lOZS2QRQGs
 Xe6FwcTd0BJOEyITLCwsCVw/TRdC0KpiXYrwmx8D5xeSTesiu5olpgTU/
 xwuOB++2klCAreaTR7MPTBbHC/7N+mBKVQteR4inmuVaEBsxfzhn9APaP
 OSjN71/J6cu2y6Huy0qGkz9WB/LgFeKJO/hnT2J3N9vgfgeIbtNV5fnPJ
 iRC/NG+4bvXtJBlYMQy5CYTYFKB+zTiq/nrt2oirOdZud9hLml1EQbytv A==;
X-CSE-ConnectionGUID: 2u8UOKKeTZudymPXFyy+mw==
X-CSE-MsgGUID: fnQXzLg3RLKaUyKJor/EVA==
X-IronPort-AV: E=McAfee;i="6700,10204,11202"; a="26175410"
X-IronPort-AV: E=Sophos;i="6.10,250,1719903600"; d="scan'208";a="26175410"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 02:12:44 -0700
X-CSE-ConnectionGUID: pibbzvF7Q+e+aum+8PJWWA==
X-CSE-MsgGUID: rlk7sBLORcmmideBtH6Obw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,250,1719903600"; d="scan'208";a="75383332"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.65])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 02:12:43 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 4/5] drm/i915/bios: Extract vbt_signature[]
In-Reply-To: <Zu2p3dlneXYbmWEu@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240910134219.28479-1-ville.syrjala@linux.intel.com>
 <20240910134219.28479-5-ville.syrjala@linux.intel.com>
 <87y13xf4p3.fsf@intel.com> <Zu2p3dlneXYbmWEu@intel.com>
Date: Mon, 23 Sep 2024 12:12:39 +0300
Message-ID: <87frpq7myg.fsf@intel.com>
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

On Fri, 20 Sep 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Thu, Sep 12, 2024 at 03:15:52PM +0300, Jani Nikula wrote:
>> On Tue, 10 Sep 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
>> > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> >
>> > Replace the three hand rolled "$VBT"s with a vbt_signature[]
>> > to avoid accidents.
>> >
>> > Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_bios.c | 12 +++++++++---
>> >  1 file changed, 9 insertions(+), 3 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/d=
rm/i915/display/intel_bios.c
>> > index cbbda94c3dab..0b92b494117f 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_bios.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>> > @@ -2964,6 +2964,8 @@ static const struct bdb_header *get_bdb_header(c=
onst struct vbt_header *vbt)
>> >  	return _vbt + vbt->bdb_offset;
>> >  }
>> >=20=20
>> > +static const char vbt_signature[4] =3D "$VBT";
>>=20
>> Always a bit scary to add strings without termination, but I guess it's
>> justified here.
>
> I guess we could make it look less like a string with eg.
> static const u8 vbt_signature[] =3D { '$', 'V', 'B', 'T' };
> ?

Alternatively,

static const char *vbt_signature =3D "$VBT";

>
>> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
>>=20
>>=20
>> > +
>> >  /**
>> >   * intel_bios_is_valid_vbt - does the given buffer contain a valid VBT
>> >   * @display:	display device
>> > @@ -2986,7 +2988,7 @@ bool intel_bios_is_valid_vbt(struct intel_displa=
y *display,
>> >  		return false;
>> >  	}
>> >=20=20
>> > -	if (memcmp(vbt->signature, "$VBT", 4)) {
>> > +	if (memcmp(vbt->signature, vbt_signature, sizeof(vbt_signature))) {

But then this would need strlen()

>> >  		drm_dbg_kms(display->drm, "VBT invalid signature\n");
>> >  		return false;
>> >  	}
>> > @@ -3082,9 +3084,11 @@ static struct vbt_header *spi_oprom_get_vbt(str=
uct intel_display *display,
>> >  	oprom_offset =3D intel_uncore_read(&i915->uncore, OROM_OFFSET);
>> >  	oprom_offset &=3D OROM_OFFSET_MASK;
>> >=20=20
>> > +	BUILD_BUG_ON(sizeof(vbt_signature) !=3D sizeof(u32));

And maybe this could be sizeof(vbt_signature) < sizeof(u32)

All of the alternatives are a bit disappointing, so maybe let's just
roll with the patch you already have here?

BR,
Jani.

>> > +
>> >  	for (count =3D 0; count < oprom_size; count +=3D 4) {
>> >  		data =3D intel_spi_read32(&i915->uncore, oprom_offset + count);
>> > -		if (data =3D=3D *((const u32 *)"$VBT")) {
>> > +		if (data =3D=3D *((const u32 *)vbt_signature)) {
>> >  			found =3D oprom_offset + count;
>> >  			break;
>> >  		}
>> > @@ -3144,9 +3148,11 @@ static struct vbt_header *oprom_get_vbt(struct =
intel_display *display,
>> >  	if (!oprom)
>> >  		return NULL;
>> >=20=20
>> > +	BUILD_BUG_ON(sizeof(vbt_signature) !=3D sizeof(u32));
>> > +
>> >  	/* Scour memory looking for the VBT signature. */
>> >  	for (i =3D 0; i + 4 < size; i +=3D 4) {
>> > -		if (ioread32(oprom + i) !=3D *((const u32 *)"$VBT"))
>> > +		if (ioread32(oprom + i) !=3D *((const u32 *)vbt_signature))
>> >  			continue;
>> >=20=20
>> >  		p =3D oprom + i;
>>=20
>> --=20
>> Jani Nikula, Intel

--=20
Jani Nikula, Intel
