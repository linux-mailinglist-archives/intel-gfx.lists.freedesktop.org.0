Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D9F0F1BE27B
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 17:23:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EC096EF21;
	Wed, 29 Apr 2020 15:23:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47D1A6EEC0;
 Wed, 29 Apr 2020 15:23:37 +0000 (UTC)
IronPort-SDR: GHSDAElm7sx6rId6JNL7d9ReXqG7lKISHeVOCDn5dOHLV1cVnRzytoafeHy9ZNHtD93CGcwMpp
 /HGchdEv5SCg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2020 08:23:36 -0700
IronPort-SDR: 3Idcc9/6DfnlbaYPioljpkTYYxdI2DpcdNGHTkb70U9CR0taVzeci4I1aNw5gVqRxrSepKUPOp
 FSp+XpKlfm7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,332,1583222400"; d="scan'208";a="294205286"
Received: from michielh-mobl.ger.corp.intel.com (HELO [10.249.47.78])
 ([10.249.47.78])
 by orsmga008.jf.intel.com with ESMTP; 29 Apr 2020 08:23:35 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200429145113.588577-1-chris@chris-wilson.co.uk>
 <20200429150500.588743-1-chris@chris-wilson.co.uk>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <4e867fdf-6ae1-fab8-83bf-b7c02fcf3cc3@intel.com>
Date: Wed, 29 Apr 2020 18:23:34 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200429150500.588743-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t] perf: Flush the work between rounds
 of gen8-unprivileged-single-ctx-counter
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
Cc: igt-dev@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 29/04/2020 18:05, Chris Wilson wrote:
> Wait until the GPU is idle before starting a fresh round of probing
> gen8-unprivileged-single-ctx-counter. This avoids building up a huge
> backlog of render copies, hogging buffers and stale contexts, and
> invoking the oomkiller.
>
> v2: Release everything before starting again.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>

Reviewed-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>


Thanks,


-Lionel


> ---
>   tests/perf.c | 21 +++++++++++----------
>   1 file changed, 11 insertions(+), 10 deletions(-)
>
> diff --git a/tests/perf.c b/tests/perf.c
> index 74fc8fd87..7bde46af8 100644
> --- a/tests/perf.c
> +++ b/tests/perf.c
> @@ -3762,19 +3762,9 @@ gen8_test_single_ctx_render_target_writes_a_counter(void)
>   			igt_assert_eq(ret, 0);
>   
>   			ret = memcmp(src[0].bo->virtual, dst[0].bo->virtual, 4 * width * height);
> -			if (ret != 0) {
> -				accumulator_print(&accumulator, "total");
> -				/* This needs to be investigated... From time
> -				 * to time, the work we kick off doesn't seem
> -				 * to happen. WTH?? */
> -				exit(EAGAIN);
> -			}
> -
>   			drm_intel_bo_unmap(src[0].bo);
>   			drm_intel_bo_unmap(dst[0].bo);
>   
> -			igt_assert_eq(accumulator.deltas[2 + 26], width * height);
> -
>   			for (int i = 0; i < ARRAY_SIZE(src); i++) {
>   				drm_intel_bo_unreference(src[i].bo);
>   				drm_intel_bo_unreference(dst[i].bo);
> @@ -3787,6 +3777,17 @@ gen8_test_single_ctx_render_target_writes_a_counter(void)
>   			drm_intel_gem_context_destroy(context1);
>   			drm_intel_bufmgr_destroy(bufmgr);
>   			__perf_close(stream_fd);
> +			gem_quiescent_gpu(drm_fd);
> +
> +			if (ret != 0) {
> +				accumulator_print(&accumulator, "total");
> +				/* This needs to be investigated... From time
> +				 * to time, the work we kick off doesn't seem
> +				 * to happen. WTH?? */
> +				exit(EAGAIN);
> +			}
> +
> +			igt_assert_eq(accumulator.deltas[2 + 26], width * height);
>   		}
>   
>   		child_ret = igt_wait_helper(&child);


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
