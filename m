Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 521006335D0
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 08:22:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 308E710E397;
	Tue, 22 Nov 2022 07:22:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A50C10E021;
 Tue, 22 Nov 2022 07:22:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669101761; x=1700637761;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=rMH+96IyvZ1ON6CY6hI+ULhpRlUPB2njOzaKL3Tn8Ws=;
 b=FMsySEZYPVozHHRJKiJmUPyaKgBOd1V2RtB7GEVAhdKr1YWv71zTTqh3
 y0Xf5u49VIytTHe6SsrQsaL/v3rm3ikP2/lif3eVyRMpPEoxgWKHqE7NI
 +mWKcIQSHauWlZYShXK0cOyKvyNmEmLZ/D9P+yGE127j7IikxX+XO+1Ru
 0ErEKlyC712XV9fhgeEmAJjiZHM8C1ASMkGfrvkKvBz6zdNxuBXvuXONf
 i2xzTx2O34uKdFA5HP9diM4sIPmc232ymJxx15fxxyN1KyNPhXnMckB5F
 tZZhiyo9OjD07B4Qmo4lf8i8rMRmmrPh4luSXyK2Xlh9KHFhlmQjOqPyW A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="314902039"
X-IronPort-AV: E=Sophos;i="5.96,183,1665471600"; d="scan'208";a="314902039"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2022 23:22:40 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="886422504"
X-IronPort-AV: E=Sophos;i="5.96,183,1665471600"; d="scan'208";a="886422504"
Received: from dprzewlo-mobl.ger.corp.intel.com (HELO [10.213.0.33])
 ([10.213.0.33])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2022 23:22:39 -0800
Message-ID: <ef633c97-64e1-b39e-3e15-4368799922a4@intel.com>
Date: Tue, 22 Nov 2022 08:22:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.4.2
Content-Language: en-US
To: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
References: <20221115072834.2115985-1-andrzej.hajda@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20221115072834.2115985-1-andrzej.hajda@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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
Cc: Chris Wilson <chris.p.wilson@intel.com>,
 Matthew Auld <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Gently ping.

Regards
Andrzej

On 15.11.2022 08:28, Andrzej Hajda wrote:
> test_plane_panning requires about 10 times bigger amount of memory than
> memory required by framebuffer in default display mode. In case of some
> configurations it can exceed available memory (4k modes on small-bar
> systems), causing test aborts.
>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6824
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> ---
>   tests/kms_plane.c | 28 +++++++++++++++++++++++++---
>   1 file changed, 25 insertions(+), 3 deletions(-)
>
> diff --git a/tests/kms_plane.c b/tests/kms_plane.c
> index 8a54ba6645c..fc530d2cfd3 100644
> --- a/tests/kms_plane.c
> +++ b/tests/kms_plane.c
> @@ -342,14 +342,14 @@ test_plane_panning_with_output(data_t *data,
>   	drmModeModeInfo *mode;
>   	igt_crc_t crc;
>   
> -	igt_info("Testing connector %s using pipe %s\n",
> -		 igt_output_name(output), kmstest_pipe_name(pipe));
> -
>   	igt_output_set_pipe(output, pipe);
>   
>   	mode = igt_output_get_mode(output);
>   	primary = igt_output_get_plane(output, 0);
>   
> +	igt_info("Testing connector %s using pipe %s, mode %s\n",
> +		 igt_output_name(output), kmstest_pipe_name(pipe), mode->name);
> +
>   	create_fb_for_mode_panning(data, mode, &primary_fb);
>   	igt_plane_set_fb(primary, &primary_fb);
>   
> @@ -381,6 +381,8 @@ test_plane_panning_with_output(data_t *data,
>   static void
>   test_plane_panning(data_t *data, enum pipe pipe)
>   {
> +	bool mode_found = false;
> +	uint64_t mem_size = 0;
>   	igt_output_t *output;
>   	igt_crc_t ref_crc;
>   
> @@ -389,6 +391,26 @@ test_plane_panning(data_t *data, enum pipe pipe)
>   
>   	test_init(data, pipe);
>   
> +	for_each_memory_region(r, data->drm_fd)
> +		if (r->ci.memory_class == I915_MEMORY_CLASS_DEVICE)
> +			mem_size = r->cpu_size;
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
>   	if (data->flags & TEST_PANNING_TOP_LEFT)
>   		test_grab_crc(data, output, pipe, &red, data->flags, &ref_crc);
>   	else

