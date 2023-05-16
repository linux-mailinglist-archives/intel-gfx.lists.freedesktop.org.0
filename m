Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A85EC7048C7
	for <lists+intel-gfx@lfdr.de>; Tue, 16 May 2023 11:14:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35D9A10E32D;
	Tue, 16 May 2023 09:14:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B2DF10E32C;
 Tue, 16 May 2023 09:14:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684228489; x=1715764489;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=yrmA7i0GMRJ6PH5MKXIsuX1M9lqE+JP31WEUjW+mu5E=;
 b=gXuKo9Dy6FfxvUzlelCpFrHqiQCnV6IPoP7+bbo063Ifd3VlyKr/eDEq
 erh5krERnaZh+eTWPZsNj2X9H6hyGc+1y6fUHEeGR0iqimksG02mmC+E1
 U37gmqVgcVxuErZxx253W5MceN9GBFQlpPgJa0iQdh9TLrGIcApj7c435
 N+bxUZ9eUEoYVRbz+mgpj0+lqVR8cahWbj+/yTPYi4aLqhE6KzLRP17aV
 NH+kA2A7V25grqlo/l7ilGBuaJqmGridRhQJzp8WK+TiZFuEZtPCGa5He
 4tYxDe0LVE8muTQzfCT7dGWBP+7e59CITIPdVQAi8L2sOetEjoE25d93b Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="437769194"
X-IronPort-AV: E=Sophos;i="5.99,278,1677571200"; d="scan'208";a="437769194"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2023 02:14:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="704326262"
X-IronPort-AV: E=Sophos;i="5.99,278,1677571200"; d="scan'208";a="704326262"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.29.27])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2023 02:14:45 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 Bhanuprakash Modem <bhanuprakash.modem@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Nirmoy Das <nirmoy.das@intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Tue, 16 May 2023 11:14:43 +0200
Message-ID: <3737690.kQq0lBPeGt@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20230515200251.n53v73uik7yd5w7r@kamilkon-desk1>
References: <20230515085020.16325-1-janusz.krzysztofik@linux.intel.com>
 <20230515200251.n53v73uik7yd5w7r@kamilkon-desk1>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests/i915: Exercise coherency of
 mmapped frame buffers
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

Hi Kamil,

Thanks for review.

On Monday, 15 May 2023 22:02:51 CEST Kamil Konieczny wrote:
> Hi Janusz,
>=20
> On 2023-05-15 at 10:50:20 +0200, Janusz Krzysztofik wrote:
> > Visible glitches have been observed when running graphics applications =
on
> > Linux under Xen hypervisor.  Those observations have been confirmed with
> > failures from kms_pwrite_crc IGT test that verifies data coherency of D=
RM
> > frame buffer objects using hardware CRC checksums calculated by display
> > controllers, exposed to userspace via debugfs.  Since not all applicati=
ons
> > exhibit the issue, we need to exercise more methods than just pwrite in
> > order to identify all affected processing paths.
> >=20
> > Create a new test focused on exercising coherency of future scanout
> > buffers populated over mmap.  Cover all available mmap methods and cach=
ing
> > modes expected to be device coherent.
> >=20
>=20
> +cc kms dev Bhanuprakash Modem

OK.

>=20
> > Link: https://gitlab.freedesktop.org/drm/intel/-/issues/7648
> > Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> > ---
> >  tests/i915/kms_fb_coherency.c | 354 ++++++++++++++++++++++++++++++++++
> >  tests/meson.build             |   1 +
> >  2 files changed, 355 insertions(+)
> >  create mode 100644 tests/i915/kms_fb_coherency.c
> >=20
> > diff --git a/tests/i915/kms_fb_coherency.c b/tests/i915/kms_fb_coherenc=
y.c
> > new file mode 100644
> > index 0000000000..9223f13b05
> > --- /dev/null
> > +++ b/tests/i915/kms_fb_coherency.c
> > @@ -0,0 +1,354 @@
> > +// SPDX-License-Identifier: MIT
> > +/*
> > + * Copyright =A9 2023 Intel Corporation
> > + *
> > + * Derived from tests/i915/kms_pwrite_crc.c
> > + * Copyright =A9 2014 Intel Corporation
>=20
> imho you do not need above two lines, you already wrote this
> in description.

OK.

>=20
> > + */
> > +
> > +/**
> > + * TEST: kms_fb_coherency
> > + * Description: Exercise coherency of future scanout buffer objects
> > + */
> > +
> > +#include "igt.h"
>=20
> Put this after sys includes below.

Copy-pasted from kms_pwrite_crc.c.  I'll fix it.

>=20
> > +#include <errno.h>
> > +#include <limits.h>
> > +#include <stdbool.h>
> > +#include <stdio.h>
> > +#include <string.h>
> > +
>=20
> Here put any igt include(s).

Yes.

>=20
> > +
> > +typedef struct {
> > +	int drm_fd;
> > +	igt_display_t display;
> > +	struct igt_fb fb[2];
> > +	igt_output_t *output;
> > +	igt_plane_t *primary;
> > +	enum pipe pipe;
> > +	igt_crc_t ref_crc;
> > +	igt_pipe_crc_t *pipe_crc;
> > +	uint32_t devid;
> > +} data_t;
> > +
> > +static void prepare_crtc(data_t *data)
> > +{
> > +	igt_display_t *display =3D &data->display;
> > +	igt_output_t *output =3D data->output;
> > +	drmModeModeInfo *mode;
> > +
> > +	igt_display_reset(display);
> > +	/* select the pipe we want to use */
> > +	igt_output_set_pipe(output, data->pipe);
> > +
> > +	mode =3D igt_output_get_mode(output);
> > +
> > +	/* create a white reference fb and flip to it */
> > +	igt_create_color_fb(data->drm_fd, mode->hdisplay, mode->vdisplay,
> > +			    DRM_FORMAT_XRGB8888, DRM_FORMAT_MOD_LINEAR,
> > +			    1.0, 1.0, 1.0, &data->fb[0]);
> > +
> > +	data->primary =3D igt_output_get_plane_type(output, DRM_PLANE_TYPE_PR=
IMARY);
> > +
> > +	igt_plane_set_fb(data->primary, &data->fb[0]);
> > +	igt_display_commit(display);
> > +
> > +	if (data->pipe_crc)
> > +		igt_pipe_crc_free(data->pipe_crc);
> > +
> > +	data->pipe_crc =3D igt_pipe_crc_new(data->drm_fd, data->pipe,
> > +					  IGT_PIPE_CRC_SOURCE_AUTO);
> > +
> > +	/* get reference crc for the white fb */
> > +	igt_pipe_crc_collect_crc(data->pipe_crc, &data->ref_crc);
> > +}
> > +
> > +static struct igt_fb *prepare_fb(data_t *data)
> > +{
> > +	igt_output_t *output =3D data->output;
> > +	struct igt_fb *fb =3D &data->fb[1];
> > +	drmModeModeInfo *mode;
> > +
> > +	prepare_crtc(data);
> > +
> > +	mode =3D igt_output_get_mode(output);
> > +
> > +	/* create a non-white fb we can overwrite later */
> > +	igt_create_pattern_fb(data->drm_fd, mode->hdisplay, mode->vdisplay,
> > +			      DRM_FORMAT_XRGB8888, DRM_FORMAT_MOD_LINEAR, fb);
> > +
> > +	/* flip to it to make it UC/WC and fully flushed */
> > +	drmModeSetPlane(data->drm_fd,
> > +			data->primary->drm_plane->plane_id,
> > +			output->config.crtc->crtc_id,
> > +			fb->fb_id, 0,
> > +			0, 0, fb->width, fb->height,
> > +			0, 0, fb->width << 16, fb->height << 16);
> > +
> > +	/* flip back the original white buffer */
> > +	drmModeSetPlane(data->drm_fd,
> > +			data->primary->drm_plane->plane_id,
> > +			output->config.crtc->crtc_id,
> > +			data->fb[0].fb_id, 0,
> > +			0, 0, fb->width, fb->height,
> > +			0, 0, fb->width << 16, fb->height << 16);
> > +
> > +	if (!gem_has_lmem(data->drm_fd)) {
> > +		uint32_t caching;
> > +
> > +		/* make sure caching mode has become UC/WT */
> > +		caching =3D gem_get_caching(data->drm_fd, fb->gem_handle);
> > +		igt_assert(caching =3D=3D I915_CACHING_NONE ||
> > +			   caching =3D=3D I915_CACHING_DISPLAY);
> > +	}
> > +
> > +	return fb;
> > +}
> > +
> > +static igt_crc_t get_buf_crc(data_t *data, void *buf, igt_fb_t *fb)
> > +{
> > +	igt_crc_t crc;
> > +
> > +	/* use memset to make the mmapped fb all white */
> > +	memset(buf, 0xff, fb->size);
> > +	munmap(buf, fb->size);
> > +
> > +	/* and flip to it */
> > +	drmModeSetPlane(data->drm_fd,
> > +			data->primary->drm_plane->plane_id,
> > +			data->output->config.crtc->crtc_id,
> > +			fb->fb_id, 0,
> > +			0, 0, fb->width, fb->height,
> > +			0, 0, fb->width << 16, fb->height << 16);
> > +
> > +	/* check that the crc is as expected, which requires that caches got =
flushed */
> ---------- ^
> Checks happen later, here you collect it.

Right.

>=20
> > +	igt_pipe_crc_collect_crc(data->pipe_crc, &crc);
>=20
> Add newline.

OK.

>=20
> > +	return crc;
> > +}
> > +
> > +static void cleanup_crtc(data_t *data)
> > +{
> > +	igt_display_t *display =3D &data->display;
> > +	igt_output_t *output =3D data->output;
> > +
> > +	igt_pipe_crc_free(data->pipe_crc);
> > +	data->pipe_crc =3D NULL;
> > +
> > +	igt_plane_set_fb(data->primary, NULL);
> > +
> > +	igt_output_set_pipe(output, PIPE_ANY);
> > +	igt_display_commit(display);
> > +
> > +	igt_remove_fb(data->drm_fd, &data->fb[0]);
> > +	igt_remove_fb(data->drm_fd, &data->fb[1]);
> > +
>=20
> Remove empty line.

OK.

>=20
> > +}
> > +
> > +static void test_mmap_gtt(data_t *data)
> > +{
> > +	igt_crc_t crc;
> > +	igt_fb_t *fb;
> > +	void *buf;
> > +
> > +	gem_require_mappable_ggtt(data->drm_fd);
> > +
> > +	fb =3D prepare_fb(data);
> > +
> > +	buf =3D gem_mmap__gtt(data->drm_fd, fb->gem_handle, fb->size, PROT_WR=
ITE);
> > +
> > +	crc =3D get_buf_crc(data, buf, fb);
> > +	igt_assert_crc_equal(&crc, &data->ref_crc);
> > +}
> > +
> > +static void test_mmap_offset_wc(data_t *data)
> > +{
> > +	igt_crc_t crc;
> > +	igt_fb_t *fb;
> > +	void *buf;
> > +
> > +	igt_require(gem_mmap_offset__has_wc(data->drm_fd));
> > +
> > +	fb =3D prepare_fb(data);
> > +
> > +	buf =3D gem_mmap_offset__wc(data->drm_fd, fb->gem_handle, 0, fb->size=
, PROT_WRITE);
> > +
> > +	crc =3D get_buf_crc(data, buf, fb);
> > +	igt_assert_crc_equal(&crc, &data->ref_crc);
> > +}
> > +
> > +static void test_mmap_offset_wb(data_t *data)
> > +{
> > +	igt_crc_t crc;
> > +	igt_fb_t *fb;
> > +	void *buf;
> > +
> > +	igt_require(gem_has_mmap_offset(data->drm_fd));
> > +	igt_skip_on(gem_has_lmem(data->drm_fd));
> > +
> > +	fb =3D prepare_fb(data);
> > +
> > +	/* mmap the fb */
> > +	buf =3D gem_mmap_offset__cpu(data->drm_fd, fb->gem_handle, 0, fb->siz=
e, PROT_WRITE);
> > +
> > +	crc =3D get_buf_crc(data, buf, fb);
> > +	igt_fail_on(igt_check_crc_equal(&crc, &data->ref_crc));
>=20
> Why not use igt_assert_crc_equal ?

Because I expected the opposite -- crc not equal with non-coherent caching=
=20
modes in use.  But please note that this function and the similar =20
test_legacy_mmap_cpu() below are actually not used and should be dropped. =
=20
I used them on trybot to verify if it is possible to get consistent results=
 =20
across different platforms when using non-coherent caching modes and I foun=
d=20
it's not -- some succeeded, some were failing.  Then, I decided to just dro=
p=20
non-coherent dynamic subtests, but forgot to drop the corresponding functio=
ns.

Thanks,
Janusz

>=20
> > +}
> > +
> > +static void test_mmap_offset_uc(data_t *data)
> > +{
> > +	igt_crc_t crc;
> > +	igt_fb_t *fb;
> > +	void *buf;
> > +
> > +	igt_require(gem_has_mmap_offset(data->drm_fd));
> > +	igt_skip_on(gem_has_lmem(data->drm_fd));
> > +
> > +	fb =3D prepare_fb(data);
> > +
> > +	/* mmap the fb */
> > +	buf =3D __gem_mmap_offset(data->drm_fd, fb->gem_handle, 0, fb->size, =
PROT_WRITE,
> > +				I915_MMAP_OFFSET_UC);
> > +	igt_assert(buf);
> > +
> > +	crc =3D get_buf_crc(data, buf, fb);
> > +	igt_assert_crc_equal(&crc, &data->ref_crc);
> > +}
> > +
> > +static void test_mmap_offset_fixed(data_t *data)
> > +{
> > +	igt_crc_t crc;
> > +	igt_fb_t *fb;
> > +	void *buf;
> > +
> > +	igt_require(gem_has_lmem(data->drm_fd));
> > +
> > +	fb =3D prepare_fb(data);
> > +
> > +	/* mmap the fb */
> > +	buf =3D gem_mmap_offset__fixed(data->drm_fd, fb->gem_handle, 0, fb->s=
ize, PROT_WRITE);
> > +
> > +	crc =3D get_buf_crc(data, buf, fb);
> > +	igt_assert_crc_equal(&crc, &data->ref_crc);
> > +}
> > +
> > +static void test_legacy_mmap_wc(data_t *data)
> > +{
> > +	igt_crc_t crc;
> > +	igt_fb_t *fb;
> > +	void *buf;
> > +
> > +	igt_require(gem_has_legacy_mmap(data->drm_fd));
> > +	igt_require(gem_mmap__has_wc(data->drm_fd));
> > +
> > +	fb =3D prepare_fb(data);
> > +
> > +	/* mmap the fb */
> > +	buf =3D gem_mmap__wc(data->drm_fd, fb->gem_handle, 0, fb->size, PROT_=
WRITE);
> > +
> > +	crc =3D get_buf_crc(data, buf, fb);
> > +	igt_assert_crc_equal(&crc, &data->ref_crc);
> > +}
> > +
> > +static void test_legacy_mmap_cpu(data_t *data)
> > +{
> > +	igt_crc_t crc;
> > +	igt_fb_t *fb;
> > +	void *buf;
> > +
> > +	igt_require(gem_has_legacy_mmap(data->drm_fd));
> > +
> > +	fb =3D prepare_fb(data);
> > +
> > +	/* mmap the fb */
> > +	buf =3D gem_mmap__cpu(data->drm_fd, fb->gem_handle, 0, fb->size, PROT=
_WRITE);
> > +
> > +	crc =3D get_buf_crc(data, buf, fb);
> > +	igt_fail_on(igt_check_crc_equal(&crc, &data->ref_crc));
>=20
> Same here, use igt_assert_crc_equal ?
>=20
> Regards,
> Kamil
>=20
> > +}
> > +
> > +static void select_valid_pipe_output_combo(data_t *data)
> > +{
> > +	igt_display_t *display =3D &data->display;
> > +
> > +	for_each_pipe_with_valid_output(display, data->pipe, data->output) {
> > +		igt_display_reset(display);
> > +
> > +		igt_output_set_pipe(data->output, data->pipe);
> > +		if (!i915_pipe_output_combo_valid(display))
> > +			continue;
> > +
> > +		/* one is enough */
> > +		return;
> > +	}
> > +
> > +	igt_skip("no valid crtc/connector combinations found\n");
> > +}
> > +
> > +igt_main
> > +{
> > +	data_t data;
> > +
> > +	igt_fixture {
> > +		data.drm_fd =3D drm_open_driver_master(DRIVER_INTEL);
> > +
> > +		data.devid =3D intel_get_drm_devid(data.drm_fd);
> > +
> > +		kmstest_set_vt_graphics_mode();
> > +
> > +		igt_require_pipe_crc(data.drm_fd);
> > +
> > +		igt_display_require(&data.display, data.drm_fd);
> > +
> > +		select_valid_pipe_output_combo(&data);
> > +	}
> > +
> > +	/**
> > +	 * SUBTEST: memset-crc
> > +	 * Description: Use display controller CRC hardware to validate (non)=
coherency
> > +	 *		of memset operations on future scanout buffer objects
> > +	 *		mmapped with different mmap methods and different caching modes.
> > +	 */
> > +	igt_subtest_with_dynamic("memset-crc") {
> > +		if (gem_has_mappable_ggtt(data.drm_fd)) {
> > +			igt_dynamic("mmap-gtt")
> > +				test_mmap_gtt(&data);
> > +
> > +			cleanup_crtc(&data);
> > +		}
> > +
> > +		if (gem_mmap_offset__has_wc(data.drm_fd)) {
> > +			igt_dynamic("mmap-offset-wc")
> > +				test_mmap_offset_wc(&data);
> > +
> > +			cleanup_crtc(&data);
> > +		}
> > +
> > +		if (gem_has_mmap_offset(data.drm_fd)) {
> > +			if (gem_has_lmem(data.drm_fd)) {
> > +				igt_dynamic("mmap-offset-fixed")
> > +					test_mmap_offset_fixed(&data);
> > +
> > +				cleanup_crtc(&data);
> > +
> > +			} else {
> > +				igt_dynamic("mmap-offset-uc")
> > +					test_mmap_offset_uc(&data);
> > +
> > +				cleanup_crtc(&data);
> > +			}
> > +		}
> > +
> > +		if (gem_has_legacy_mmap(data.drm_fd) &&
> > +		    gem_mmap__has_wc(data.drm_fd)) {
> > +			igt_dynamic("mmap-legacy-wc")
> > +				test_legacy_mmap_wc(&data);
> > +
> > +			cleanup_crtc(&data);
> > +		}
> > +	}
> > +
> > +	igt_fixture {
> > +		igt_display_fini(&data.display);
> > +		close(data.drm_fd);
> > +	}
> > +}
> > diff --git a/tests/meson.build b/tests/meson.build
> > index c15eb3a08c..371b501992 100644
> > --- a/tests/meson.build
> > +++ b/tests/meson.build
> > @@ -224,6 +224,7 @@ i915_progs =3D [
> >  	'kms_ccs',
> >  	'kms_cdclk',
> >  	'kms_draw_crc',
> > +	'kms_fb_coherency',
> >  	'kms_fbcon_fbt',
> >  	'kms_fence_pin_leak',
> >  	'kms_flip_scaled_crc',
>=20




