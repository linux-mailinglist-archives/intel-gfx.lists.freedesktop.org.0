Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B7646336FD
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 09:26:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 375FE10E3A1;
	Tue, 22 Nov 2022 08:26:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6ED0C10E3A1;
 Tue, 22 Nov 2022 08:26:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669105572; x=1700641572;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=qtMm9kNtYKzQmgn7YVJLBcFE8fi/oSyetZSOd9w+nc4=;
 b=OGXWDsABjTxt1PGRqJbAQJNV6Q9oHE4LIYNNrWv2iSgpyRXpmVMu/QpW
 MNPS5D5Xrh3GpIi/gZIE/R7MD8m1WitxKCV1uS+h3Er0crqkiy4YRd6Zt
 Qco/ECK8ZNHAXtKHsgqEujZV7KKbfmp1jEAwnKhw6Nvl725x0c9sgD5Et
 qbLbIEpTmc5JktpzHTkFZeZJ3G53+TIMBJz2h3FUB7ueh8L6RD7XPqGqJ
 ITxnq6+0QewRpwF2yoK5+zWtlfIyxzozTmpGcRLyoWtH01dAu+rXi1sE/
 8MJ/riqOkVoccLxMDCN/XJoisC2A1LsCV4LxQvXvJu3vMDZbrHW5DIcOV g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="340630833"
X-IronPort-AV: E=Sophos;i="5.96,183,1665471600"; d="scan'208";a="340630833"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 00:26:11 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="766263811"
X-IronPort-AV: E=Sophos;i="5.96,183,1665471600"; d="scan'208";a="766263811"
Received: from mtroka-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.213.0.222])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 00:26:09 -0800
Date: Tue, 22 Nov 2022 09:26:07 +0100
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: intel-gfx@lists.freedesktop.org, igt-dev@lists.freedesktop.org
Message-ID: <Y3yHnztPiGNNWPuw@kamilkon-desk1>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, igt-dev@lists.freedesktop.org,
 Matthew Auld <matthew.auld@intel.com>,
 Chris Wilson <chris.p.wilson@intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>
References: <20221115072834.2115985-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20221115072834.2115985-1-andrzej.hajda@intel.com>
Subject: Re: [Intel-gfx] [i-g-t] tests/kms_plane: skip memory demanding
 modes in test_plane_panning
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Matthew Auld <matthew.auld@intel.com>, Chris Wilson <chris.p.wilson@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andrzej,

On 2022-11-15 at 08:28:34 +0100, Andrzej Hajda wrote:
> test_plane_panning requires about 10 times bigger amount of memory than
> memory required by framebuffer in default display mode. In case of some
> configurations it can exceed available memory (4k modes on small-bar
> systems), causing test aborts.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6824
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> ---
>  tests/kms_plane.c | 28 +++++++++++++++++++++++++---
>  1 file changed, 25 insertions(+), 3 deletions(-)
> 
> diff --git a/tests/kms_plane.c b/tests/kms_plane.c
> index 8a54ba6645c..fc530d2cfd3 100644
> --- a/tests/kms_plane.c
> +++ b/tests/kms_plane.c
> @@ -342,14 +342,14 @@ test_plane_panning_with_output(data_t *data,
>  	drmModeModeInfo *mode;
>  	igt_crc_t crc;
>  
> -	igt_info("Testing connector %s using pipe %s\n",
> -		 igt_output_name(output), kmstest_pipe_name(pipe));
> -
>  	igt_output_set_pipe(output, pipe);
>  
>  	mode = igt_output_get_mode(output);
>  	primary = igt_output_get_plane(output, 0);
>  
> +	igt_info("Testing connector %s using pipe %s, mode %s\n",
> +		 igt_output_name(output), kmstest_pipe_name(pipe), mode->name);
> +
>  	create_fb_for_mode_panning(data, mode, &primary_fb);
>  	igt_plane_set_fb(primary, &primary_fb);
>  
> @@ -381,6 +381,8 @@ test_plane_panning_with_output(data_t *data,
>  static void
>  test_plane_panning(data_t *data, enum pipe pipe)
>  {
> +	bool mode_found = false;
> +	uint64_t mem_size = 0;
>  	igt_output_t *output;
>  	igt_crc_t ref_crc;
>  
> @@ -389,6 +391,26 @@ test_plane_panning(data_t *data, enum pipe pipe)
>  
>  	test_init(data, pipe);
>  
> +	for_each_memory_region(r, data->drm_fd)
> +		if (r->ci.memory_class == I915_MEMORY_CLASS_DEVICE)
> +			mem_size = r->cpu_size;

imho either max(mem_size, r->cpu_size) or just break after
assign but maybe I overcomplicate this, so

Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

> +
> +	for_each_connector_mode(output) {
> +		drmModeModeInfo *m = &output->config.connector->modes[j__];
> +		uint32_t fb_size = m->hdisplay * m->vdisplay * 4;
> +
> +		/* test allocates 2 double-dim fbs, add one more, to be safe */
> +		if (mem_size && 3 * 4 * fb_size > mem_size) {
> +			igt_debug("Skipping mode %s due to low memory\n", m->name);
> +			continue;
> +		}
> +
> +		igt_output_override_mode(output, m);
> +		mode_found = true;
> +		break;
> +	}
> +	igt_require(mode_found);
> +
>  	if (data->flags & TEST_PANNING_TOP_LEFT)
>  		test_grab_crc(data, output, pipe, &red, data->flags, &ref_crc);
>  	else
> -- 
> 2.34.1
> 
