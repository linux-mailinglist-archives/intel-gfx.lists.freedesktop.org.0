Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F237709E73
	for <lists+intel-gfx@lfdr.de>; Fri, 19 May 2023 19:44:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6F2C10E372;
	Fri, 19 May 2023 17:44:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E386410E372;
 Fri, 19 May 2023 17:44:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684518267; x=1716054267;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=d2qbwF7fzfJjAu4jKOl4Kii6NCCK3b0H4amJ4DMXY48=;
 b=YeFLibrApc2Znlb8l5LcFNgJEAxMo7B/OQSxpnWdTKer26+c6KqKHVBI
 3EdyBNm83Uo4PvUz4r2ny4LUbMVkWBHbMMGd+cDAxEN42XK924DoaFCmt
 pUaEJCQm2IbQAHZIZZH8VHq/yPoS7K8TBg886iuNd1q1yfRx/gH6sjSZv
 2I7FpONEDJHgeL1upiaItVm1150psA0JZfAv9Chd7sSD3QD8fexBOy4jW
 lIK/TQkCWXhk5/njzc1yB3oSiujLeDIbWjGWXSqobBAPmSotRIegDcX8r
 Vf6F66pP+3l0zUj8dite6s+WBIiOXXqipXyEkv+PJUhGpsXmzc1g3bkYL Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10715"; a="332799964"
X-IronPort-AV: E=Sophos;i="6.00,177,1681196400"; d="scan'208";a="332799964"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2023 10:44:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10715"; a="653129063"
X-IronPort-AV: E=Sophos;i="6.00,177,1681196400"; d="scan'208";a="653129063"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.31.132])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2023 10:44:24 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org, Andrzej Hajda <andrzej.hajda@intel.com>
Date: Fri, 19 May 2023 19:44:22 +0200
Message-ID: <5857904.DvuYhMxLoT@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <10012f90-c405-9403-656c-0b0ea1e6ca37@intel.com>
References: <20230519094343.157002-1-janusz.krzysztofik@linux.intel.com>
 <10012f90-c405-9403-656c-0b0ea1e6ca37@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
Subject: Re: [Intel-gfx] [PATCH i-g-t v3] tests/i915: Exercise coherency of
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
Cc: intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Friday, 19 May 2023 12:28:49 CEST Andrzej Hajda wrote:
> On 19.05.2023 11:43, Janusz Krzysztofik wrote:
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
> > v3: Drop redundant prerequisite checks (Andrzej),
> >    - if (condition) return; construct gives shorter code than
> >      if (!condition) continue; (Andrzej),
> >    - gem_has_lmem() implies gem_has_mmap_offset(), flatten related nest=
ed
> >      conditions.
> > v2: Drop unused functions -- left-overs from unsuccessful negative subt=
est
> >      attempts requiring consistent crc mismatches in non-coherent modes,
> >    - since all subtests now call igt_assert_crc_equal(), move it from
> >      subtest bodies to an updated and renamed helper,
> >    - drop "derived from ..." info from copyrights comment (Kamil),
> >    - fix order of includes (Kamil),
> >    - fix whitespace (Kamil),
> >    - Cc: Bhanuprakash (Kamil).
> >=20
> > Link: https://gitlab.freedesktop.org/drm/intel/-/issues/7648
> > Cc: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
> > Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com> # v2
> > Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> > ---
> > Hi Andrzej,
> >=20
> > Your requested optimisations applied.  I've introduced one more
> > optimisation -- see changelog.  Please confirm your R-b still applies.
>=20
> Yes, it applies :)

Thank you, Andrzej, pushed.

Janusz

>=20
> Regards
> Andrzej
>=20
> >=20
> > Thanks,
> > Janusz
> >=20
> >=20
> >   tests/i915/kms_fb_coherency.c | 288 ++++++++++++++++++++++++++++++++++
> >   tests/meson.build             |   1 +
> >   2 files changed, 289 insertions(+)
> >   create mode 100644 tests/i915/kms_fb_coherency.c
> >=20
> > diff --git a/tests/i915/kms_fb_coherency.c b/tests/i915/kms_fb_coherenc=
y.c
> > new file mode 100644
> > index 0000000000..b530bf5dcd
> > --- /dev/null
> > +++ b/tests/i915/kms_fb_coherency.c
> > @@ -0,0 +1,288 @@
> > +// SPDX-License-Identifier: MIT
> > +/*
> > + * Copyright =A9 2023 Intel Corporation
> > + */
> > +
> > +/**
> > + * TEST: kms_fb_coherency
> > + * Description: Exercise coherency of future scanout buffer objects
> > + */
> > +
> > +#include <errno.h>
> > +#include <limits.h>
> > +#include <stdbool.h>
> > +#include <stdio.h>
> > +#include <string.h>
> > +
> > +#include "igt.h"
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
> > +static void check_buf_crc(data_t *data, void *buf, igt_fb_t *fb)
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
> > +	igt_pipe_crc_collect_crc(data->pipe_crc, &crc);
> > +	igt_assert_crc_equal(&crc, &data->ref_crc);
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
> > +}
> > +
> > +static void test_mmap_gtt(data_t *data)
> > +{
> > +	igt_fb_t *fb;
> > +	void *buf;
> > +
> > +	fb =3D prepare_fb(data);
> > +
> > +	buf =3D gem_mmap__gtt(data->drm_fd, fb->gem_handle, fb->size, PROT_WR=
ITE);
> > +
> > +	check_buf_crc(data, buf, fb);
> > +}
> > +
> > +static void test_mmap_offset_wc(data_t *data)
> > +{
> > +	igt_fb_t *fb;
> > +	void *buf;
> > +
> > +	fb =3D prepare_fb(data);
> > +
> > +	buf =3D gem_mmap_offset__wc(data->drm_fd, fb->gem_handle, 0, fb->size=
, PROT_WRITE);
> > +
> > +	check_buf_crc(data, buf, fb);
> > +}
> > +
> > +static void test_mmap_offset_uc(data_t *data)
> > +{
> > +	igt_fb_t *fb;
> > +	void *buf;
> > +
> > +	fb =3D prepare_fb(data);
> > +
> > +	/* mmap the fb */
> > +	buf =3D __gem_mmap_offset(data->drm_fd, fb->gem_handle, 0, fb->size, =
PROT_WRITE,
> > +				I915_MMAP_OFFSET_UC);
> > +	igt_assert(buf);
> > +
> > +	check_buf_crc(data, buf, fb);
> > +}
> > +
> > +static void test_mmap_offset_fixed(data_t *data)
> > +{
> > +	igt_fb_t *fb;
> > +	void *buf;
> > +
> > +	fb =3D prepare_fb(data);
> > +
> > +	/* mmap the fb */
> > +	buf =3D gem_mmap_offset__fixed(data->drm_fd, fb->gem_handle, 0, fb->s=
ize, PROT_WRITE);
> > +
> > +	check_buf_crc(data, buf, fb);
> > +}
> > +
> > +static void test_legacy_mmap_wc(data_t *data)
> > +{
> > +	igt_fb_t *fb;
> > +	void *buf;
> > +
> > +	fb =3D prepare_fb(data);
> > +
> > +	/* mmap the fb */
> > +	buf =3D gem_mmap__wc(data->drm_fd, fb->gem_handle, 0, fb->size, PROT_=
WRITE);
> > +
> > +	check_buf_crc(data, buf, fb);
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
> > +		if (i915_pipe_output_combo_valid(display))
> > +			return;
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
> > +		if (gem_has_lmem(data.drm_fd)) {
> > +			igt_dynamic("mmap-offset-fixed")
> > +				test_mmap_offset_fixed(&data);
> > +
> > +			cleanup_crtc(&data);
> > +
> > +		} else if (gem_has_mmap_offset(data.drm_fd)) {
> > +			igt_dynamic("mmap-offset-uc")
> > +				test_mmap_offset_uc(&data);
> > +
> > +			cleanup_crtc(&data);
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
> > index 38f080f7c2..f71be1dbe5 100644
> > --- a/tests/meson.build
> > +++ b/tests/meson.build
> > @@ -224,6 +224,7 @@ i915_progs =3D [
> >   	'kms_ccs',
> >   	'kms_cdclk',
> >   	'kms_draw_crc',
> > +	'kms_fb_coherency',
> >   	'kms_fbcon_fbt',
> >   	'kms_fence_pin_leak',
> >   	'kms_flip_scaled_crc',
>=20
>=20




