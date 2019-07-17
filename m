Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E03A6B322
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 03:21:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0780C6E188;
	Wed, 17 Jul 2019 01:21:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com
 [IPv6:2607:f8b0:4864:20::843])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EC566E188;
 Wed, 17 Jul 2019 01:21:12 +0000 (UTC)
Received: by mail-qt1-x843.google.com with SMTP id x22so16764683qtp.12;
 Tue, 16 Jul 2019 18:21:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ZL1U2U/BvymZkcqSsz1k2DHrPkHJVf3YPyOzokAqCjg=;
 b=U/O4FsdiaNjBos/Sx7zvNIMch3imvGEO7zIMAfyEBUF5gld95h8qg1PA3jn9rbsniL
 AV5/BfQmQjdPdY7awz95sa3+EgJkSmHIIh5NnT04taFKhuNdhxeMPANxjLXy14zHE8Mr
 vtlfY29WxHYpE7aCPfdfupF9fBVNdO7RckqFEWLu/DrO+VNsTaPeZaDA2f8O+wAuGeWi
 hmaP4tpp617rskKfKwi+ug3PvulklP9fLQWjhRowshnGufYPMTnekgLvpLLCsR4OfCWc
 nNYxnZB4W1kEJZeJf8xdpB9T1NiAsQDP0khr88w9MsMJX6fjuWPp9fW60BUvJ5SewUHF
 jSVA==
X-Gm-Message-State: APjAAAWozM8mGtdUc6PulFLT1VHhuddP8WcaWUECFSPCMbaQMHNwmPCO
 fBsP/FjRjmRL25iH4Mmd5XA=
X-Google-Smtp-Source: APXvYqwE0h8OLuCQZ+CMFZ0zsL5TYKNeEergOleEXmD0jg190t5uLec+SOj7i3xSbZb/AWaxGk1cSA==
X-Received: by 2002:ac8:1ba9:: with SMTP id z38mr25932723qtj.176.1563326471098; 
 Tue, 16 Jul 2019 18:21:11 -0700 (PDT)
Received: from smtp.gmail.com ([187.121.151.22])
 by smtp.gmail.com with ESMTPSA id r40sm12455345qtr.57.2019.07.16.18.21.07
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 16 Jul 2019 18:21:10 -0700 (PDT)
Date: Tue, 16 Jul 2019 22:21:05 -0300
From: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>
To: "Ser, Simon" <simon.ser@intel.com>
Message-ID: <20190717012105.uuz5erowelakukrr@smtp.gmail.com>
References: <cover.1560374714.git.rodrigosiqueiramelo@gmail.com>
 <296f249138cb4f55466294b07a7aba25801ff146.1560374714.git.rodrigosiqueiramelo@gmail.com>
 <7eca4f4def5f732d1f9269e2c75eca8da62a78b2.camel@intel.com>
 <20190712024435.bed52lodxms6rz7y@smtp.gmail.com>
 <f96a6c7aa85a0ea73bef49feb9ced889387177a6.camel@intel.com>
MIME-Version: 1.0
In-Reply-To: <f96a6c7aa85a0ea73bef49feb9ced889387177a6.camel@intel.com>
User-Agent: NeoMutt/20180716
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ZL1U2U/BvymZkcqSsz1k2DHrPkHJVf3YPyOzokAqCjg=;
 b=i7Bd0kxKCqZw8ih/CxeR4i7Dg6Zm4eUScis4ClgAdrlQUZp61CmfscMHmQUZlk544W
 +71v23exzLMtKWOBiR6J0C3hcq4l25WzVPpzdz8kFCYI//DXJDtoafRTKqqBafUnHiSZ
 RtMczTZZ0Iz+/VoioSQBZqQ1CrgwEStKBdtCLyp0lhJs4VJu0/K7FPjjD8y2E9t2+W2D
 7gzjPRtKSVbGcHpH06kv36lozooGGqtnm8a2hxwGZ6LMZQ6lIcUqnWA50J/QON5bl4db
 UbNIerOymAHyX8KdRw0SDZtHxjLt0OQwcXePa2fz28Cb3b40Tiji8OJtYiuIakCam0Pg
 0Cww==
Subject: Re: [Intel-gfx] [igt-dev] [PATCH V6 i-g-t 2/6] kms_writeback: Add
 initial writeback tests
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>,
 "nd@arm.com" <nd@arm.com>
Content-Type: multipart/mixed; boundary="===============0885477642=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============0885477642==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pztsv5umvnkwivlp"
Content-Disposition: inline


--pztsv5umvnkwivlp
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 07/12, Ser, Simon wrote:
> On Thu, 2019-07-11 at 23:44 -0300, Rodrigo Siqueira wrote:
> > On 07/10, Ser, Simon wrote:
> > > Hi,
> > >=20
> > > Thanks for the patch! Here are a few comments.
> > >=20
> > > For bonus points, it would be nice to add igt_describe descriptions of
> > > each sub-test.
> >=20
> > Hi Simon,
> >=20
> > First of all, thanks for your feedback; I already applied most of your
> > suggestions. I just have some inline comments/questions.
> > =20
> > > On Wed, 2019-06-12 at 23:16 -0300, Brian Starkey wrote:
> > > > Add tests for the WRITEBACK_PIXEL_FORMATS, WRITEBACK_OUT_FENCE_PTR =
and
> > > > WRITEBACK_FB_ID properties on writeback connectors, ensuring their
> > > > behaviour is correct.
> > > >=20
> > > > Signed-off-by: Brian Starkey <brian.starkey@arm.com>
> > > > [rebased and updated do_writeback_test() function to address feedba=
ck]
> > > > Signed-off-by: Liviu Dudau <liviu.dudau@arm.com>
> > > > ---
> > > >  tests/Makefile.sources |   1 +
> > > >  tests/kms_writeback.c  | 314 +++++++++++++++++++++++++++++++++++++=
++++
> > > >  tests/meson.build      |   1 +
> > > >  3 files changed, 316 insertions(+)
> > > >  create mode 100644 tests/kms_writeback.c
> > > >=20
> > > > diff --git a/tests/Makefile.sources b/tests/Makefile.sources
> > > > index 027ed82f..03cc8efa 100644
> > > > --- a/tests/Makefile.sources
> > > > +++ b/tests/Makefile.sources
> > > > @@ -77,6 +77,7 @@ TESTS_progs =3D \
> > > >  	kms_universal_plane \
> > > >  	kms_vblank \
> > > >  	kms_vrr \
> > > > +	kms_writeback \
> > > >  	meta_test \
> > > >  	perf \
> > > >  	perf_pmu \
> > > > diff --git a/tests/kms_writeback.c b/tests/kms_writeback.c
> > > > new file mode 100644
> > > > index 00000000..66ef48a6
> > > > --- /dev/null
> > > > +++ b/tests/kms_writeback.c
> > > > @@ -0,0 +1,314 @@
> > > > +/*
> > > > + * (C) COPYRIGHT 2017 ARM Limited. All rights reserved.
> > > > + *
> > > > + * Permission is hereby granted, free of charge, to any person obt=
aining a
> > > > + * copy of this software and associated documentation files (the "=
Software"),
> > > > + * to deal in the Software without restriction, including without =
limitation
> > > > + * the rights to use, copy, modify, merge, publish, distribute, su=
blicense,
> > > > + * and/or sell copies of the Software, and to permit persons to wh=
om the
> > > > + * Software is furnished to do so, subject to the following condit=
ions:
> > > > + *
> > > > + * The above copyright notice and this permission notice (includin=
g the next
> > > > + * paragraph) shall be included in all copies or substantial porti=
ons of the
> > > > + * Software.
> > > > + *
> > > > + * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,=
 EXPRESS OR
> > > > + * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHAN=
TABILITY,
> > > > + * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EV=
ENT SHALL
> > > > + * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAG=
ES OR OTHER
> > > > + * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,=
 ARISING
> > > > + * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR O=
THER DEALINGS
> > > > + * IN THE SOFTWARE.
> > > > + *
> > > > + */
> > > > +
> > > > +#include <errno.h>
> > > > +#include <stdbool.h>
> > > > +#include <stdio.h>
> > > > +#include <string.h>
> > > > +
> > > > +#include "igt.h"
> > > > +#include "igt_core.h"
> > > > +#include "igt_fb.h"
> > > > +
> > > > +static drmModePropertyBlobRes *get_writeback_formats_blob(igt_outp=
ut_t *output)
> > > > +{
> > > > +	drmModePropertyBlobRes *blob =3D NULL;
> > > > +	uint64_t blob_id;
> > > > +	int ret;
> > > > +
> > > > +	ret =3D kmstest_get_property(output->display->drm_fd,
> > > > +				   output->config.connector->connector_id,
> > > > +				   DRM_MODE_OBJECT_CONNECTOR,
> > > > +				   igt_connector_prop_names[IGT_CONNECTOR_WRITEBACK_PIXEL_FORM=
ATS],
> > > > +				   NULL, &blob_id, NULL);
> > > > +	if (ret)
> > > > +		blob =3D drmModeGetPropertyBlob(output->display->drm_fd, blob_id=
);
> > > > +
> > > > +	igt_assert(blob);
> > > > +
> > > > +	return blob;
> > > > +}
> > > > +
> > > > +static bool check_writeback_config(igt_display_t *display, igt_out=
put_t *output)
> > > > +{
> > > > +	igt_fb_t input_fb, output_fb;
> > > > +	igt_plane_t *plane;
> > > > +	uint32_t writeback_format =3D DRM_FORMAT_XRGB8888;
> > > > +	uint64_t tiling =3D igt_fb_mod_to_tiling(0);
> > > > +	int width, height, ret;
> > > > +	drmModeModeInfo override_mode =3D {
> > > > +		.clock =3D 25175,
> > > > +		.hdisplay =3D 640,
> > > > +		.hsync_start =3D 656,
> > > > +		.hsync_end =3D 752,
> > > > +		.htotal =3D 800,
> > > > +		.hskew =3D 0,
> > > > +		.vdisplay =3D 480,
> > > > +		.vsync_start =3D 490,
> > > > +		.vsync_end =3D 492,
> > > > +		.vtotal =3D 525,
> > > > +		.vscan =3D 0,
> > > > +		.vrefresh =3D 60,
> > > > +		.flags =3D DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC,
> > > > +		.name =3D {"640x480-60"},
> > > > +	};
> > > > +	igt_output_override_mode(output, &override_mode);
> > > > +
> > > > +	width =3D override_mode.hdisplay;
> > > > +	height =3D override_mode.vdisplay;
> > > > +
> > > > +	ret =3D igt_create_fb(display->drm_fd, width, height, DRM_FORMAT_=
XRGB8888, tiling, &input_fb);
> > > > +	igt_assert(ret >=3D 0);
> > > > +
> > > > +	ret =3D igt_create_fb(display->drm_fd, width, height, writeback_f=
ormat, tiling, &output_fb);
> > > > +	igt_assert(ret >=3D 0);
> > > > +
> > > > +	plane =3D igt_output_get_plane_type(output, DRM_PLANE_TYPE_PRIMAR=
Y);
> > > > +	igt_plane_set_fb(plane, &input_fb);
> > > > +	igt_output_set_writeback_fb(output, &output_fb);
> > > > +
> > > > +	ret =3D igt_display_try_commit_atomic(display, DRM_MODE_ATOMIC_TE=
ST_ONLY |
> > > > +					    DRM_MODE_ATOMIC_ALLOW_MODESET, NULL);
> > >=20
> > > Okay, we're using atomic test-only mode to know if we can perform tes=
ts
> > > with the writeback output. It's probably fine, but we don't use
> > > WRITEBACK_PIXEL_FORMATS, which makes me a little bit sad.
> >=20
> > Sorry, I did not fully understand part. Did you expect to see something
> > like the below code before igt_display_try_commit_atomic()?
> >=20
> >  igt_output_set_prop_value(output, WRITEBACK_PIXEL_FORMATS,
> >                            DRM_FORMAT_XRGB8888);
>=20
> Hmm, no, we cannot change the list of writeback formats (it's
> immutable).
>=20
> This comment doesn't require any action, it's just me thinking aloud :P
>=20
> I'm just thinking that it would be nice to choose our format depending
> on the WRITEBACK_PIXEL_FORMATS property. And probably run tests with
> each supported format (or, alternatively, choose a random one). That
> way we can make sure WRITEBACK_PIXEL_FORMATS isn't broken.
>=20
> However, this can be left for a later patch.
>=20
> > > > +	igt_plane_set_fb(plane, NULL);
> > > > +	igt_remove_fb(display->drm_fd, &input_fb);
> > > > +	igt_remove_fb(display->drm_fd, &output_fb);
> > > > +
> > > > +	return !ret;
> > > > +}
> > > > +
> > > > +static igt_output_t *kms_writeback_get_output(igt_display_t *displ=
ay)
> > > > +{
> > > > +	int i;
> > > > +
> > > > +	for (i =3D 0; i < display->n_outputs; i++) {
> > > > +		igt_output_t *output =3D &display->outputs[i];
> > > > +		int j;
> > > > +
> > > > +		if (output->config.connector->connector_type !=3D DRM_MODE_CONNE=
CTOR_WRITEBACK)
> > > > +			continue;
> > > > +
> > > > +		kmstest_force_connector(display->drm_fd, output->config.connecto=
r, FORCE_CONNECTOR_ON);
> > >=20
> > > Hmm. Is this really necessary? "Real" userspace won't do this, so I
> > > don't think we need to either.
> >=20
> > Hmmm, I have a little experience with userspace; however, I tested
> > kms_writeback on top of vkms without this line, and everything worked
> > well. If I remove this line, should I also drop the line that force
> > connector to FORCE_CONNECTOR_UNSPECIFIED?
>=20
> I believe so.
>=20
> > Another question, if FORCE_CONNECTOR_ON is something that userspace
> > won't want to do, why do we have it?
>=20
> We use kmstest_force_connector in injection tests: those pick a
> disconnected HDMI connector and trick the kernel into thinking it's
> connected. We generally also force an EDID and this is used to emulate
> a screen (e.g. a screen that supports audio, 4K or 3D).
>=20
> This is only meant to be used for testing though, hence "real userspace
> shouldn't use it".
>

Ahhh, I see. Thanks for the explanation
=20
> > > > +		for (j =3D 0; j < igt_display_get_n_pipes(display); j++) {
> > > > +			igt_output_set_pipe(output, j);
> > > > +
> > > > +			if (check_writeback_config(display, output)) {
> > > > +				igt_debug("Using connector %u:%s on pipe %d\n",
> > > > +					  output->config.connector->connector_id,
> > > > +					  output->name, j);
> > > > +				return output;
> > > > +			}
> > >=20
> > > We could probably add an igt_debug statement in case we don't use this
> > > writeback output.
> > >=20
> > > > +		}
> > > > +
> > > > +		/* Restore any connectors we don't use, so we don't trip on them=
 later */
> > > > +		kmstest_force_connector(display->drm_fd, output->config.connecto=
r, FORCE_CONNECTOR_UNSPECIFIED);
> > > > +	}
> > > > +
> > > > +	return NULL;
> > > > +}
> > > > +
> > > > +static void check_writeback_fb_id(igt_output_t *output)
> > > > +{
> > > > +	uint64_t check_fb_id;
> > > > +
> > > > +	check_fb_id =3D igt_output_get_prop(output, IGT_CONNECTOR_WRITEBA=
CK_FB_ID);
> > > > +	igt_assert(check_fb_id =3D=3D 0);
> > > > +}
> > > > +
> > > > +static int do_writeback_test(igt_output_t *output, uint32_t flags,
> > > > +			      uint32_t fb_id, int32_t *out_fence_ptr,
> > > > +			      bool ptr_valid)
> > >=20
> > > flags seems to always be set to DRM_MODE_ATOMIC_ALLOW_MODESET. We can
> > > probably remove the parameter from this function.
> > >=20
> > > > +{
> > > > +	int ret;
> > > > +	igt_display_t *display =3D output->display;
> > > > +	struct kmstest_connector_config *config =3D &output->config;
> > > > +
> > > > +	igt_output_set_prop_value(output, IGT_CONNECTOR_CRTC_ID, config->=
crtc->crtc_id);
> > > > +	igt_output_set_prop_value(output, IGT_CONNECTOR_WRITEBACK_FB_ID, =
fb_id);
> > > > +	igt_output_set_prop_value(output, IGT_CONNECTOR_WRITEBACK_OUT_FEN=
CE_PTR, (uint64_t)out_fence_ptr);
> > > > +
> > > > +	if (ptr_valid)
> > > > +		*out_fence_ptr =3D 0;
> > > > +
> > > > +	ret =3D igt_display_try_commit_atomic(display, flags, NULL);
> > > > +
> > > > +	if (ptr_valid)
> > > > +		igt_assert(*out_fence_ptr =3D=3D -1);
> > >=20
> > > I'm confused. Why should this be -1 even if we
> > > igt_display_try_commit_atomic succeeds?
> >=20
> > I inspected the drm_mode_atomic_ioctl() function and I noticed that It
> > calls complete_signaling() in its turn this function assign -1 to
> > out_fence_ptr. Since all of this happens at the end of atomic_commit, I
> > believe that we don=E2=80=99t need it. I already removed it.
>=20
> I think I'm still confused :)
>=20
> I'm probably missing something. As far as I understand, we are doing an
> atomic commit, sometimes with a valid WRITEBACK_FB_ID and
> WRITEBACK_OUT_FENCE_PTR. In this case it should start the writeback
> process in the kernel and we should get a valid out_fence_ptr?
>=20
> Why do we always get -1?

FWIU userspace uses the WRITEBACK_OUT_FENCE_PTR to provide a pointer for
the kernel to fill with a sync_file file descriptor, which will signal
once the writeback is finished. If the signal was correctly handled, the
out_fence_ptr would be set to -1, because of this we always get -1.

Thanks for your feedback, I'll prepare a new version soon.
=20
> > > > +	/* WRITEBACK_FB_ID must always read as zero */
> > > > +	check_writeback_fb_id(output);
> > > > +
> > > > +	return ret;
> > > > +}
> > > > +
> > > > +static void invalid_out_fence(igt_output_t *output, igt_fb_t *vali=
d_fb, igt_fb_t *invalid_fb)
> > > > +{
> > > > +	int i, ret;
> > > > +	int32_t out_fence;
> > > > +	struct {
> > > > +		uint32_t fb_id;
> > > > +		bool ptr_valid;
> > > > +		int32_t *out_fence_ptr;
> > > > +	} invalid_tests[] =3D {
> > > > +		{
> > > > +			/* No output buffer, but the WRITEBACK_OUT_FENCE_PTR set. */
> > > > +			.fb_id =3D 0,
> > > > +			.ptr_valid =3D true,
> > > > +			.out_fence_ptr =3D &out_fence,
> > > > +		},
> > > > +		{
> > > > +			/* Invalid output buffer. */
> > > > +			.fb_id =3D invalid_fb->fb_id,
> > > > +			.ptr_valid =3D true,
> > > > +			.out_fence_ptr =3D &out_fence,
> > > > +		},
> > >=20
> > > This doesn't belong in this function (invalid_out_fence), since this
> > > checks an invalid framebuffer, not an invalid fence. We should probab=
ly
> > > move it to writeback_fb_id (and rename that function to test_fb?).
> > >=20
> > > > +		{
> > > > +			/* Invalid WRITEBACK_OUT_FENCE_PTR. */
> > > > +			.fb_id =3D valid_fb->fb_id,
> > > > +			.ptr_valid =3D false,
> > > > +			.out_fence_ptr =3D (int32_t *)0x8,
> > > > +		},
> > > > +	};
> > > > +
> > > > +	for (i =3D 0; i < ARRAY_SIZE(invalid_tests); i++) {
> > > > +		ret =3D do_writeback_test(output, DRM_MODE_ATOMIC_ALLOW_MODESET,
> > > > +					invalid_tests[i].fb_id,
> > > > +					invalid_tests[i].out_fence_ptr,
> > > > +					invalid_tests[i].ptr_valid);
> > > > +		igt_assert(ret !=3D 0);
> > >=20
> > > Maybe we can check for -ret =3D=3D EINVAL?
> > >=20
> > > > +	}
> > > > +}
> > > > +
> > > > +static void writeback_fb_id(igt_output_t *output, igt_fb_t *valid_=
fb, igt_fb_t *invalid_fb)
> > >=20
> > > invalid_fb doesn't seem to be used here. valid_fb seems to be set to
> > > the input framebuffer. It's probably not a good idea to use the same =
FB
> > > for input and writeback output.
> > >=20
> > > > +{
> > > > +
> > > > +	int ret;
> > > > +
> > > > +	/* Valid output buffer */
> > > > +	ret =3D do_writeback_test(output, DRM_MODE_ATOMIC_ALLOW_MODESET,
> > > > +				valid_fb->fb_id, NULL, false);
> > > > +	igt_assert(ret =3D=3D 0);
> > > > +
> > > > +	/* Invalid object for WRITEBACK_FB_ID */
> > > > +	ret =3D do_writeback_test(output, DRM_MODE_ATOMIC_ALLOW_MODESET,
> > > > +				output->id, NULL, false);
> > > > +	igt_assert(ret =3D=3D -EINVAL);
> > > > +
> > > > +	/* Zero WRITEBACK_FB_ID */
> > > > +	ret =3D do_writeback_test(output, DRM_MODE_ATOMIC_ALLOW_MODESET,
> > > > +				0, NULL, false);
> > > > +	igt_assert(ret =3D=3D 0);
> > > > +}
> > > > +
> > > > +igt_main
> > > > +{
> > > > +	igt_display_t display;
> > > > +	igt_output_t *output;
> > > > +	igt_plane_t *plane;
> > > > +	igt_fb_t input_fb;
> > > > +	drmModeModeInfo mode;
> > > > +	int ret;
> > > > +
> > > > +	memset(&display, 0, sizeof(display));
> > > > +
> > > > +	igt_fixture {
> > > > +		display.drm_fd =3D drm_open_driver_master(DRIVER_ANY);
> > > > +		igt_display_require(&display, display.drm_fd);
> > > > +
> > > > +		kmstest_set_vt_graphics_mode();
> > > > +
> > > > +		igt_display_require(&display, display.drm_fd);
> > > > +
> > > > +		igt_require(display.is_atomic);
> > > > +
> > > > +		output =3D kms_writeback_get_output(&display);
> > > > +		igt_require(output);
> > > > +
> > > > +		if (output->use_override_mode)
> > > > +			memcpy(&mode, &output->override_mode, sizeof(mode));
> > > > +		else
> > > > +			memcpy(&mode, &output->config.default_mode, sizeof(mode));
> > > > +
> > > > +		plane =3D igt_output_get_plane_type(output, DRM_PLANE_TYPE_PRIMA=
RY);
> > > > +		igt_require(plane);
> > >=20
> > > Maybe we can assert on this?
> > >=20
> > > > +		ret =3D igt_create_fb(display.drm_fd, mode.hdisplay,
> > > > +				    mode.vdisplay,
> > > > +				    DRM_FORMAT_XRGB8888,
> > > > +				    igt_fb_mod_to_tiling(0),
> > >=20
> > > This is supposed to take a modifier. DRM_FORMAT_MOD_LINEAR would be
> > > better to make this clear.
> > >=20
> > > (Applies to other lines of this patch)
> > >=20
> > > > +				    &input_fb);
> > > > +		igt_assert(ret >=3D 0);
> > > > +		igt_plane_set_fb(plane, &input_fb);
> > > > +	}
> > > > +
> > > > +	igt_subtest("writeback-pixel-formats") {
> > > > +		drmModePropertyBlobRes *formats_blob =3D get_writeback_formats_b=
lob(output);
> > >=20
> > > Need to drmModeFreePropertyBlob this.
> > >=20
> > > > +		const char *valid_chars =3D "0123456 ABCGNRUVXY";
> > > > +		unsigned int i;
> > > > +		char *c;
> > > > +
> > > > +		/*
> > > > +		 * We don't have a comprehensive list of formats, so just check
> > > > +		 * that the blob length is sensible and that it doesn't contain
> > > > +		 * any outlandish characters
> > > > +		 */
> > > > +		igt_assert(!(formats_blob->length % 4));
> > > > +		c =3D formats_blob->data;
> > > > +		for (i =3D 0; i < formats_blob->length; i++)
> > > > +			igt_assert_f(strchr(valid_chars, c[i]),
> > > > +				     "Unexpected character %c\n", c[i]);
> > >=20
> > > Honestly, I'm not a fan of this check. There's no guarantee that four=
cc
> > > codes will be made from ASCII characters, in fact some formats already
> > > have non-printable chars in them. I don't want to have to update this
> > > test when a new fourcc format is added.
> > >=20
> > > We currently don't have a test for IN_FORMATS. If we really want to
> > > check formats, we could have a big array of known formats and add a
> > > bool is_valid_format(uint32_t fmt) function.
> >=20
> > Agree with you. How about remove this test?
>=20
> I guess we could always keep the length % 4 test, even if it's just a
> sanity test. At least this one won't ever need to be changed.
>=20
> I don't feel strongly about it.
>=20
> > Thanks
> > Best Regards
> >=20
> > > > +	}
> > > > +
> > > > +	igt_subtest("writeback-invalid-out-fence") {
> > > > +		igt_fb_t invalid_fb;
> > >=20
> > > invalid_output_fb would be a better name IMHO.
> > >=20
> > > > +		ret =3D igt_create_fb(display.drm_fd, mode.hdisplay / 2,
> > > > +				    mode.vdisplay / 2,
> > > > +				    DRM_FORMAT_XRGB8888,
> > > > +				    igt_fb_mod_to_tiling(0),
> > > > +				    &invalid_fb);
> > > > +		igt_require(ret > 0);
> > >=20
> > > We should probably use a different variable: ret is signed,
> > > igt_create_fb isn't. Also ret doesn't make it clear that the return
> > > value is the KMS framebuffer ID.
> > >=20
> > > (Applies to other subtests)
> > >=20
> > > > +		invalid_out_fence(output, &input_fb, &invalid_fb);
> > >=20
> > > (Still not sure why we provide the input FB to this function.)
> > >=20
> > > > +		igt_remove_fb(display.drm_fd, &invalid_fb);
> > > > +	}
> > > > +
> > > > +	igt_subtest("writeback-fb-id") {
> > > > +		igt_fb_t output_fb;
> > > > +		ret =3D igt_create_fb(display.drm_fd, mode.hdisplay, mode.vdispl=
ay,
> > > > +				    DRM_FORMAT_XRGB8888,
> > > > +				    igt_fb_mod_to_tiling(0),
> > > > +				    &output_fb);
> > > > +		igt_require(ret > 0);
> > > > +
> > > > +		writeback_fb_id(output, &input_fb, &output_fb);
> > > > +
> > > > +		igt_remove_fb(display.drm_fd, &output_fb);
> > > > +	}
> > > > +
> > > > +	igt_fixture {
> > > > +		igt_remove_fb(display.drm_fd, &input_fb);
> > > > +		igt_display_fini(&display);
> > > > +	}
> > > > +}
> > > > diff --git a/tests/meson.build b/tests/meson.build
> > > > index f168fbba..9c77cfcd 100644
> > > > --- a/tests/meson.build
> > > > +++ b/tests/meson.build
> > > > @@ -63,6 +63,7 @@ test_progs =3D [
> > > >  	'kms_universal_plane',
> > > >  	'kms_vblank',
> > > >  	'kms_vrr',
> > > > +	'kms_writeback',
> > > >  	'meta_test',
> > > >  	'panfrost_get_param',
> > > >  	'panfrost_gem_new',
> > > > _______________________________________________
> > > > igt-dev mailing list
> > > > igt-dev@lists.freedesktop.org
> > > > https://lists.freedesktop.org/mailman/listinfo/igt-dev

--=20
Rodrigo Siqueira
https://siqueira.tech

--pztsv5umvnkwivlp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE4tZ+ii1mjMCMQbfkWJzP/comvP8FAl0ueAAACgkQWJzP/com
vP/hNw/+IwWVCzFM2nPcBMDbEOQH2BVralwDahiyxupsvg/qa3ZCK0KoxwoIora9
MTc7BkC5Dtox4nXapDKBMzXvsSuZ+yYGYTN5KKMh8P43TP2zK2NGW96WpXV4Mubv
xxmdsXp7Lz6GE54mRNT+2T8xRbRjGXevcohVQyZ3dC1Hsvj18sKIN0zK+I5zeLFl
wl+YXi/eoUZmgBdOkzm/HDAcCFD8N3kYsH30cYt7UbYlIV7d49x7aqZUoAME0d6E
iZJ5mBDuzrNfkBzKCobpF1SIhYh3HWehU525gziobxyep7ZFB0OOpVZZ1Md3Wpdo
24JNe/4MayF6P9epm/Uy6U72g8cK8F2TadmA2dqn8ThZBDj0cP1XPc7rVeM9kYEs
NtDEBtiaZXIbpAG2uQrqyOyO85UMwHHmriGB9QmquNZzeJ8hKtxr+nHnbqHhg+5Z
hOxEQ2qk6EJBIg57UT/Lp57QL9vmW9YMkLU1KXzk/Ex/jWB7+29xl8ru6PN8Pfux
hpmaZPilxsmBffgYGSUgNwd1rKvEehIa1lh95O0Yf4ozfgXQ4jtUPdvaei4CxqTA
vE0DfqqWFuMPx5CnxMCwBrRvQGFKUoLpt4IfhYp2T9TUBZp57ayosYO3PFUI0CJ9
3AMrmmGksam9lfq/TGNhpg2Isuk6EsV5pCPHzXNwEckA225HSu4=
=gunV
-----END PGP SIGNATURE-----

--pztsv5umvnkwivlp--

--===============0885477642==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============0885477642==--
