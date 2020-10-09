Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DD51288608
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Oct 2020 11:38:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82A036EC8E;
	Fri,  9 Oct 2020 09:38:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B76A46EC8B;
 Fri,  9 Oct 2020 09:38:10 +0000 (UTC)
IronPort-SDR: A6+7+VYHAakXSeO+/YR/slasccr1tOeGpOvq6TflkvCCOhQX93fkQ9ppDTDlTod6hRn79f2mr0
 wuttmxCLQ8oA==
X-IronPort-AV: E=McAfee;i="6000,8403,9768"; a="164675106"
X-IronPort-AV: E=Sophos;i="5.77,354,1596524400"; d="scan'208";a="164675106"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2020 02:38:10 -0700
IronPort-SDR: mfQ1WXDv4KOXGj2YoueYRVbNdWQE8gHCHzH43FBX3kYF5qePcPIUwI3r7vjjiJK/tSzy+w4pO8
 Eg1+Ib4fyWfw==
X-IronPort-AV: E=Sophos;i="5.77,354,1596524400"; d="scan'208";a="528858490"
Received: from assafbab-mobl2.ger.corp.intel.com (HELO [10.255.196.109])
 ([10.255.196.109])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2020 02:38:07 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20201008221334.1478509-1-chris@chris-wilson.co.uk>
 <20201008230303.1560301-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <478fbc5e-0d54-8fd9-bf76-a8a431a54148@linux.intel.com>
Date: Fri, 9 Oct 2020 10:38:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201008230303.1560301-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t v3] prime_vgem: Check that
 we wrap the vgem mmap with userptr
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
Cc: igt-dev@lists.freedesktop.org, "Lahtinen,
 Joonas" <joonas.lahtinen@intel.com>, "Graunke,
 Kenneth W" <kenneth.w.graunke@intel.com>, "Kondapally,
 Kalyan" <kalyan.kondapally@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 09/10/2020 00:03, Chris Wilson wrote:
> This came up in a discussion about importing virtio dma-buf, which are
> themselves plain shmemfs objects and so not only backed by struct pages,
> but wrappable by userptr. vgem share the same properties and so should
> serve as a useful proxy for testing.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: "Graunke, Kenneth W" <kenneth.w.graunke@intel.com>,
> Cc: "Lahtinen, Joonas" <joonas.lahtinen@intel.com>
> Cc: "Kondapally, Kalyan" <kalyan.kondapally@intel.com>
> ---
>   tests/intel-ci/fast-feedback.testlist |  1 +
>   tests/prime_vgem.c                    | 31 +++++++++++++++++++++++++++
>   2 files changed, 32 insertions(+)
> 
> diff --git a/tests/intel-ci/fast-feedback.testlist b/tests/intel-ci/fast-feedback.testlist
> index aa2eb3295..982d25834 100644
> --- a/tests/intel-ci/fast-feedback.testlist
> +++ b/tests/intel-ci/fast-feedback.testlist
> @@ -143,6 +143,7 @@ igt@prime_vgem@basic-fence-read
>   igt@prime_vgem@basic-gtt
>   igt@prime_vgem@basic-read
>   igt@prime_vgem@basic-write
> +igt@prime_vgem@basic-userptr
>   igt@vgem_basic@setversion
>   igt@vgem_basic@create
>   igt@vgem_basic@debugfs
> diff --git a/tests/prime_vgem.c b/tests/prime_vgem.c
> index 38e2026aa..bc74d6844 100644
> --- a/tests/prime_vgem.c
> +++ b/tests/prime_vgem.c
> @@ -287,6 +287,34 @@ static void test_write(int vgem, int i915)
>   	munmap(ptr, scratch.size);
>   }
>   
> +static void test_userptr(int vgem, int i915)
> +{
> +	struct vgem_bo scratch;
> +	struct drm_i915_gem_exec_object2 obj = {};
> +	struct drm_i915_gem_execbuffer2 execbuf = {
> +		.buffers_ptr = to_user_pointer(&obj),
> +		.buffer_count = 1,
> +	};
> +	uint32_t *ptr;
> +
> +	scratch.width = 1024;
> +	scratch.height = 1024;
> +	scratch.bpp = 32;
> +	vgem_create(vgem, &scratch);
> +
> +	ptr = vgem_mmap(vgem, &scratch, PROT_WRITE);
> +	gem_close(vgem, scratch.handle);
> +	*ptr = MI_BATCH_BUFFER_END;
> +
> +	gem_userptr(i915, ptr, scratch.size, 0, 0, &obj.handle);
> +	gem_set_caching(i915, obj.handle, I915_CACHING_NONE); /* for exec */
> +
> +	gem_execbuf(i915, &execbuf);
> +	gem_close(i915, obj.handle);
> +
> +	munmap(ptr, scratch.size);
> +}
> +
>   static void test_gtt(int vgem, int i915)
>   {
>   	struct vgem_bo scratch;
> @@ -1038,6 +1066,9 @@ igt_main
>   	igt_subtest("basic-write")
>   		test_write(vgem, i915);
>   
> +	igt_subtest("basic-userptr")
> +		test_userptr(vgem, i915);
> +
>   	igt_subtest("basic-gtt") {
>   		gem_require_mappable_ggtt(i915);
>   		test_gtt(vgem, i915);
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
