Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC2593576CF
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Apr 2021 23:28:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA4956E02E;
	Wed,  7 Apr 2021 21:28:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5EBB6E02E
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Apr 2021 21:28:52 +0000 (UTC)
IronPort-SDR: 5iHK01tR4U2/R8BPDAjVwmn2Uiv428ogugiSTv1Hb2ezO2pZvzOWtu4oSZXeD06HKC53Jfr2LH
 51wqYoJZVZtg==
X-IronPort-AV: E=McAfee;i="6000,8403,9947"; a="191241722"
X-IronPort-AV: E=Sophos;i="5.82,204,1613462400"; d="scan'208";a="191241722"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2021 14:28:52 -0700
IronPort-SDR: KQrS4tTE9U49Ey/tU4WtUCsHHYZyvz+Qt5XrN1kzop9rEudlwazfJyaUuE2EcEjd4bX97/ErhT
 uZHzVYSNId8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,204,1613462400"; d="scan'208";a="387143406"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga007.fm.intel.com with SMTP; 07 Apr 2021 14:28:49 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 08 Apr 2021 00:28:48 +0300
Date: Thu, 8 Apr 2021 00:28:48 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Takashi Iwai <tiwai@suse.de>
Message-ID: <YG4kEEqExSUjA0kh@intel.com>
References: <20210402082317.871-1-tiwai@suse.de> <YG3fJq6wkeQGafSS@intel.com>
 <s5ho8eq824w.wl-tiwai@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <s5ho8eq824w.wl-tiwai@suse.de>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Fix invalid access to ACPI
 _DSM objects
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 07, 2021 at 06:56:15PM +0200, Takashi Iwai wrote:
> On Wed, 07 Apr 2021 18:34:46 +0200,
> Ville Syrj=E4l=E4 wrote:
> > =

> > On Fri, Apr 02, 2021 at 10:23:17AM +0200, Takashi Iwai wrote:
> > > intel_dsm_platform_mux_info() tries to parse the ACPI package data
> > > from _DSM for the debug information, but it assumes the fixed format
> > > without checking what values are stored in the elements actually.
> > > When an unexpected value is returned from BIOS, it may lead to GPF or
> > > NULL dereference, as reported recently.
> > > =

> > > Add the checks of the contents in the returned values and skip the
> > > values for invalid cases.
> > > =

> > > v1->v2: Check the info contents before dereferencing, too
> > > =

> > > BugLink: http://bugzilla.opensuse.org/show_bug.cgi?id=3D1184074
> > > Cc: <stable@vger.kernel.org>
> > > Signed-off-by: Takashi Iwai <tiwai@suse.de>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_acpi.c | 22 ++++++++++++++++++++--
> > >  1 file changed, 20 insertions(+), 2 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_acpi.c b/drivers/gpu/=
drm/i915/display/intel_acpi.c
> > > index e21fb14d5e07..833d0c1be4f1 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_acpi.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_acpi.c
> > > @@ -84,13 +84,31 @@ static void intel_dsm_platform_mux_info(acpi_hand=
le dhandle)
> > >  		return;
> > >  	}
> > >  =

> > > +	if (!pkg->package.count) {
> > > +		DRM_DEBUG_DRIVER("no connection in _DSM\n");
> > > +		return;
> > > +	}
> > > +
> > >  	connector_count =3D &pkg->package.elements[0];
> > >  	DRM_DEBUG_DRIVER("MUX info connectors: %lld\n",
> > >  		  (unsigned long long)connector_count->integer.value);
> > >  	for (i =3D 1; i < pkg->package.count; i++) {
> > >  		union acpi_object *obj =3D &pkg->package.elements[i];
> > > -		union acpi_object *connector_id =3D &obj->package.elements[0];
> > > -		union acpi_object *info =3D &obj->package.elements[1];
> > > +		union acpi_object *connector_id;
> > > +		union acpi_object *info;
> > > +
> > > +		if (obj->type !=3D ACPI_TYPE_PACKAGE || obj->package.count < 2) {
> > > +			DRM_DEBUG_DRIVER("Invalid object for MUX #%d\n", i);
> > > +			continue;
> > > +		}
> > > +
> > > +		connector_id =3D &obj->package.elements[0];
> > =

> > You don't want to check connector_id->type as well?
> =

> I added only the minimal checks that may lead to Oops.

OK. I guess misinterpreting something else as an integer isn't
particular dangerous in this case.

Pushed to drm-intel-next. Thanks.

Oh, could you ask the bug reporter to attach an acpidump to the
bug? Might be good to have that stuff on record somewhere if/when
someone wants to actually figure out what's going on here.

That said, maybe we should just nuke this whole thing instead?
Unless I'm missing someting this code doesn't seem to actually
do anything...

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
