Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 180DB703E13
	for <lists+intel-gfx@lfdr.de>; Mon, 15 May 2023 22:03:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F130B10E268;
	Mon, 15 May 2023 20:02:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADCCF10E07F;
 Mon, 15 May 2023 20:02:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684180977; x=1715716977;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=eielrCMfpuCTBP21VG8PoXQnlx8LGd600lAq7tOJ7uU=;
 b=eR5UzsH+mrYzCHQvvnHotHEsW74a7FT+6lWLXOUyvFU9bH4RDwDRYnq0
 htGT22D0QN+QTCWQ6C+OSBaxGASIrEAW0gDlZk7zVUhWoSt0N3zD+fApd
 q97SqgnOejpqInfnelXpxGAEWFbouG95axtN9s+nxl11lRN1dqa7R9D2a
 4D5Z9VUwCUU8Ko0C/M++S6Px5+8Ny31tJ38nsw8qkZ/bLg/SD6mClrRVy
 iELKFe/UsRIv2FkUFx9mHzsj4HRd+cTy8zyvSrp/ICeiOpgqFxVVK4oQP
 8afFwOjtVWEmcz+3wYB7Uc+m3n3wRtguH30fnOfUaqlqdgxi3PUVSwu0a w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="340661158"
X-IronPort-AV: E=Sophos;i="5.99,277,1677571200"; d="scan'208";a="340661158"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 13:02:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="947536037"
X-IronPort-AV: E=Sophos;i="5.99,277,1677571200"; d="scan'208";a="947536037"
Received: from jfialkow-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.213.1.45])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 13:02:53 -0700
Date: Mon, 15 May 2023 22:02:51 +0200
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Message-ID: <20230515200251.n53v73uik7yd5w7r@kamilkon-desk1>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 Bhanuprakash Modem <bhanuprakash.modem@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230515085020.16325-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230515085020.16325-1-janusz.krzysztofik@linux.intel.com>
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
Cc: intel-gfx@lists.freedesktop.org, Andrzej Hajda <andrzej.hajda@intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Janusz,

On 2023-05-15 at 10:50:20 +0200, Janusz Krzysztofik wrote:
> Visible glitches have been observed when running graphics applications on
> Linux under Xen hypervisor.  Those observations have been confirmed with
> failures from kms_pwrite_crc IGT test that verifies data coherency of DRM
> frame buffer objects using hardware CRC checksums calculated by display
> controllers, exposed to userspace via debugfs.  Since not all applications
> exhibit the issue, we need to exercise more methods than just pwrite in
> order to identify all affected processing paths.
> 
> Create a new test focused on exercising coherency of future scanout
> buffers populated over mmap.  Cover all available mmap methods and caching
> modes expected to be device coherent.
> 

+cc kms dev Bhanuprakash Modem

> Link: https://gitlab.freedesktop.org/drm/intel/-/issues/7648
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>  tests/i915/kms_fb_coherency.c | 354 ++++++++++++++++++++++++++++++++++
>  tests/meson.build             |   1 +
>  2 files changed, 355 insertions(+)
>  create mode 100644 tests/i915/kms_fb_coherency.c
> 
> diff --git a/tests/i915/kms_fb_coherency.c b/tests/i915/kms_fb_coherency.c
> new file mode 100644
> index 0000000000..9223f13b05
> --- /dev/null
> +++ b/tests/i915/kms_fb_coherency.c
> @@ -0,0 +1,354 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright © 2023 Intel Corporation
> + *
> + * Derived from tests/i915/kms_pwrite_crc.c
> + * Copyright © 2014 Intel Corporation

imho you do not need above two lines, you already wrote this
in description.

> + */
> +
> +/**
> + * TEST: kms_fb_coherency
> + * Description: Exercise coherency of future scanout buffer objects
> + */
> +
> +#include "igt.h"

Put this after sys includes below.

> +#include <errno.h>
> +#include <limits.h>
> +#include <stdbool.h>
> +#include <stdio.h>
> +#include <string.h>
> +

Here put any igt include(s).

> +
> +typedef struct {
> +	int drm_fd;
> +	igt_display_t display;
> +	struct igt_fb fb[2];
> +	igt_output_t *output;
> +	igt_plane_t *primary;
> +	enum pipe pipe;
> +	igt_crc_t ref_crc;
> +	igt_pipe_crc_t *pipe_crc;
> +	uint32_t devid;
> +} data_t;
> +
> +static void prepare_crtc(data_t *data)
> +{
> +	igt_display_t *display = &data->display;
> +	igt_output_t *output = data->output;
> +	drmModeModeInfo *mode;
> +
> +	igt_display_reset(display);
> +	/* select the pipe we want to use */
> +	igt_output_set_pipe(output, data->pipe);
> +
> +	mode = igt_output_get_mode(output);
> +
> +	/* create a white reference fb and flip to it */
> +	igt_create_color_fb(data->drm_fd, mode->hdisplay, mode->vdisplay,
> +			    DRM_FORMAT_XRGB8888, DRM_FORMAT_MOD_LINEAR,
> +			    1.0, 1.0, 1.0, &data->fb[0]);
> +
> +	data->primary = igt_output_get_plane_type(output, DRM_PLANE_TYPE_PRIMARY);
> +
> +	igt_plane_set_fb(data->primary, &data->fb[0]);
> +	igt_display_commit(display);
> +
> +	if (data->pipe_crc)
> +		igt_pipe_crc_free(data->pipe_crc);
> +
> +	data->pipe_crc = igt_pipe_crc_new(data->drm_fd, data->pipe,
> +					  IGT_PIPE_CRC_SOURCE_AUTO);
> +
> +	/* get reference crc for the white fb */
> +	igt_pipe_crc_collect_crc(data->pipe_crc, &data->ref_crc);
> +}
> +
> +static struct igt_fb *prepare_fb(data_t *data)
> +{
> +	igt_output_t *output = data->output;
> +	struct igt_fb *fb = &data->fb[1];
> +	drmModeModeInfo *mode;
> +
> +	prepare_crtc(data);
> +
> +	mode = igt_output_get_mode(output);
> +
> +	/* create a non-white fb we can overwrite later */
> +	igt_create_pattern_fb(data->drm_fd, mode->hdisplay, mode->vdisplay,
> +			      DRM_FORMAT_XRGB8888, DRM_FORMAT_MOD_LINEAR, fb);
> +
> +	/* flip to it to make it UC/WC and fully flushed */
> +	drmModeSetPlane(data->drm_fd,
> +			data->primary->drm_plane->plane_id,
> +			output->config.crtc->crtc_id,
> +			fb->fb_id, 0,
> +			0, 0, fb->width, fb->height,
> +			0, 0, fb->width << 16, fb->height << 16);
> +
> +	/* flip back the original white buffer */
> +	drmModeSetPlane(data->drm_fd,
> +			data->primary->drm_plane->plane_id,
> +			output->config.crtc->crtc_id,
> +			data->fb[0].fb_id, 0,
> +			0, 0, fb->width, fb->height,
> +			0, 0, fb->width << 16, fb->height << 16);
> +
> +	if (!gem_has_lmem(data->drm_fd)) {
> +		uint32_t caching;
> +
> +		/* make sure caching mode has become UC/WT */
> +		caching = gem_get_caching(data->drm_fd, fb->gem_handle);
> +		igt_assert(caching == I915_CACHING_NONE ||
> +			   caching == I915_CACHING_DISPLAY);
> +	}
> +
> +	return fb;
> +}
> +
> +static igt_crc_t get_buf_crc(data_t *data, void *buf, igt_fb_t *fb)
> +{
> +	igt_crc_t crc;
> +
> +	/* use memset to make the mmapped fb all white */
> +	memset(buf, 0xff, fb->size);
> +	munmap(buf, fb->size);
> +
> +	/* and flip to it */
> +	drmModeSetPlane(data->drm_fd,
> +			data->primary->drm_plane->plane_id,
> +			data->output->config.crtc->crtc_id,
> +			fb->fb_id, 0,
> +			0, 0, fb->width, fb->height,
> +			0, 0, fb->width << 16, fb->height << 16);
> +
> +	/* check that the crc is as expected, which requires that caches got flushed */
---------- ^
Checks happen later, here you collect it.

> +	igt_pipe_crc_collect_crc(data->pipe_crc, &crc);

Add newline.

> +	return crc;
> +}
> +
> +static void cleanup_crtc(data_t *data)
> +{
> +	igt_display_t *display = &data->display;
> +	igt_output_t *output = data->output;
> +
> +	igt_pipe_crc_free(data->pipe_crc);
> +	data->pipe_crc = NULL;
> +
> +	igt_plane_set_fb(data->primary, NULL);
> +
> +	igt_output_set_pipe(output, PIPE_ANY);
> +	igt_display_commit(display);
> +
> +	igt_remove_fb(data->drm_fd, &data->fb[0]);
> +	igt_remove_fb(data->drm_fd, &data->fb[1]);
> +

Remove empty line.

> +}
> +
> +static void test_mmap_gtt(data_t *data)
> +{
> +	igt_crc_t crc;
> +	igt_fb_t *fb;
> +	void *buf;
> +
> +	gem_require_mappable_ggtt(data->drm_fd);
> +
> +	fb = prepare_fb(data);
> +
> +	buf = gem_mmap__gtt(data->drm_fd, fb->gem_handle, fb->size, PROT_WRITE);
> +
> +	crc = get_buf_crc(data, buf, fb);
> +	igt_assert_crc_equal(&crc, &data->ref_crc);
> +}
> +
> +static void test_mmap_offset_wc(data_t *data)
> +{
> +	igt_crc_t crc;
> +	igt_fb_t *fb;
> +	void *buf;
> +
> +	igt_require(gem_mmap_offset__has_wc(data->drm_fd));
> +
> +	fb = prepare_fb(data);
> +
> +	buf = gem_mmap_offset__wc(data->drm_fd, fb->gem_handle, 0, fb->size, PROT_WRITE);
> +
> +	crc = get_buf_crc(data, buf, fb);
> +	igt_assert_crc_equal(&crc, &data->ref_crc);
> +}
> +
> +static void test_mmap_offset_wb(data_t *data)
> +{
> +	igt_crc_t crc;
> +	igt_fb_t *fb;
> +	void *buf;
> +
> +	igt_require(gem_has_mmap_offset(data->drm_fd));
> +	igt_skip_on(gem_has_lmem(data->drm_fd));
> +
> +	fb = prepare_fb(data);
> +
> +	/* mmap the fb */
> +	buf = gem_mmap_offset__cpu(data->drm_fd, fb->gem_handle, 0, fb->size, PROT_WRITE);
> +
> +	crc = get_buf_crc(data, buf, fb);
> +	igt_fail_on(igt_check_crc_equal(&crc, &data->ref_crc));

Why not use igt_assert_crc_equal ?

> +}
> +
> +static void test_mmap_offset_uc(data_t *data)
> +{
> +	igt_crc_t crc;
> +	igt_fb_t *fb;
> +	void *buf;
> +
> +	igt_require(gem_has_mmap_offset(data->drm_fd));
> +	igt_skip_on(gem_has_lmem(data->drm_fd));
> +
> +	fb = prepare_fb(data);
> +
> +	/* mmap the fb */
> +	buf = __gem_mmap_offset(data->drm_fd, fb->gem_handle, 0, fb->size, PROT_WRITE,
> +				I915_MMAP_OFFSET_UC);
> +	igt_assert(buf);
> +
> +	crc = get_buf_crc(data, buf, fb);
> +	igt_assert_crc_equal(&crc, &data->ref_crc);
> +}
> +
> +static void test_mmap_offset_fixed(data_t *data)
> +{
> +	igt_crc_t crc;
> +	igt_fb_t *fb;
> +	void *buf;
> +
> +	igt_require(gem_has_lmem(data->drm_fd));
> +
> +	fb = prepare_fb(data);
> +
> +	/* mmap the fb */
> +	buf = gem_mmap_offset__fixed(data->drm_fd, fb->gem_handle, 0, fb->size, PROT_WRITE);
> +
> +	crc = get_buf_crc(data, buf, fb);
> +	igt_assert_crc_equal(&crc, &data->ref_crc);
> +}
> +
> +static void test_legacy_mmap_wc(data_t *data)
> +{
> +	igt_crc_t crc;
> +	igt_fb_t *fb;
> +	void *buf;
> +
> +	igt_require(gem_has_legacy_mmap(data->drm_fd));
> +	igt_require(gem_mmap__has_wc(data->drm_fd));
> +
> +	fb = prepare_fb(data);
> +
> +	/* mmap the fb */
> +	buf = gem_mmap__wc(data->drm_fd, fb->gem_handle, 0, fb->size, PROT_WRITE);
> +
> +	crc = get_buf_crc(data, buf, fb);
> +	igt_assert_crc_equal(&crc, &data->ref_crc);
> +}
> +
> +static void test_legacy_mmap_cpu(data_t *data)
> +{
> +	igt_crc_t crc;
> +	igt_fb_t *fb;
> +	void *buf;
> +
> +	igt_require(gem_has_legacy_mmap(data->drm_fd));
> +
> +	fb = prepare_fb(data);
> +
> +	/* mmap the fb */
> +	buf = gem_mmap__cpu(data->drm_fd, fb->gem_handle, 0, fb->size, PROT_WRITE);
> +
> +	crc = get_buf_crc(data, buf, fb);
> +	igt_fail_on(igt_check_crc_equal(&crc, &data->ref_crc));

Same here, use igt_assert_crc_equal ?

Regards,
Kamil

> +}
> +
> +static void select_valid_pipe_output_combo(data_t *data)
> +{
> +	igt_display_t *display = &data->display;
> +
> +	for_each_pipe_with_valid_output(display, data->pipe, data->output) {
> +		igt_display_reset(display);
> +
> +		igt_output_set_pipe(data->output, data->pipe);
> +		if (!i915_pipe_output_combo_valid(display))
> +			continue;
> +
> +		/* one is enough */
> +		return;
> +	}
> +
> +	igt_skip("no valid crtc/connector combinations found\n");
> +}
> +
> +igt_main
> +{
> +	data_t data;
> +
> +	igt_fixture {
> +		data.drm_fd = drm_open_driver_master(DRIVER_INTEL);
> +
> +		data.devid = intel_get_drm_devid(data.drm_fd);
> +
> +		kmstest_set_vt_graphics_mode();
> +
> +		igt_require_pipe_crc(data.drm_fd);
> +
> +		igt_display_require(&data.display, data.drm_fd);
> +
> +		select_valid_pipe_output_combo(&data);
> +	}
> +
> +	/**
> +	 * SUBTEST: memset-crc
> +	 * Description: Use display controller CRC hardware to validate (non)coherency
> +	 *		of memset operations on future scanout buffer objects
> +	 *		mmapped with different mmap methods and different caching modes.
> +	 */
> +	igt_subtest_with_dynamic("memset-crc") {
> +		if (gem_has_mappable_ggtt(data.drm_fd)) {
> +			igt_dynamic("mmap-gtt")
> +				test_mmap_gtt(&data);
> +
> +			cleanup_crtc(&data);
> +		}
> +
> +		if (gem_mmap_offset__has_wc(data.drm_fd)) {
> +			igt_dynamic("mmap-offset-wc")
> +				test_mmap_offset_wc(&data);
> +
> +			cleanup_crtc(&data);
> +		}
> +
> +		if (gem_has_mmap_offset(data.drm_fd)) {
> +			if (gem_has_lmem(data.drm_fd)) {
> +				igt_dynamic("mmap-offset-fixed")
> +					test_mmap_offset_fixed(&data);
> +
> +				cleanup_crtc(&data);
> +
> +			} else {
> +				igt_dynamic("mmap-offset-uc")
> +					test_mmap_offset_uc(&data);
> +
> +				cleanup_crtc(&data);
> +			}
> +		}
> +
> +		if (gem_has_legacy_mmap(data.drm_fd) &&
> +		    gem_mmap__has_wc(data.drm_fd)) {
> +			igt_dynamic("mmap-legacy-wc")
> +				test_legacy_mmap_wc(&data);
> +
> +			cleanup_crtc(&data);
> +		}
> +	}
> +
> +	igt_fixture {
> +		igt_display_fini(&data.display);
> +		close(data.drm_fd);
> +	}
> +}
> diff --git a/tests/meson.build b/tests/meson.build
> index c15eb3a08c..371b501992 100644
> --- a/tests/meson.build
> +++ b/tests/meson.build
> @@ -224,6 +224,7 @@ i915_progs = [
>  	'kms_ccs',
>  	'kms_cdclk',
>  	'kms_draw_crc',
> +	'kms_fb_coherency',
>  	'kms_fbcon_fbt',
>  	'kms_fence_pin_leak',
>  	'kms_flip_scaled_crc',
> -- 
> 2.40.1
> 
