Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA9A823E9AB
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Aug 2020 11:00:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4570B6E07B;
	Fri,  7 Aug 2020 09:00:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25A836E07B;
 Fri,  7 Aug 2020 09:00:48 +0000 (UTC)
IronPort-SDR: vIGSQPKh5IprHgdOiTZg68QGDrmSbX8yaz9mkzGvoQe5TE/tIzqmY+kMeloz/xsxjU4HnAVhnZ
 F+cq0WN4/b+A==
X-IronPort-AV: E=McAfee;i="6000,8403,9705"; a="152264243"
X-IronPort-AV: E=Sophos;i="5.75,445,1589266800"; d="scan'208";a="152264243"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2020 02:00:38 -0700
IronPort-SDR: Cc0Rbk8yFzd9Nih1TghptBeAz90hpnDEMC+0stJce2oJKNbfpLAdsM5Mmi3jpWXbeGyTtd+UOu
 A3eZSMQlqCgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,445,1589266800"; d="scan'208";a="275328100"
Received: from pniemiex-mobl1.ger.corp.intel.com (HELO [10.252.40.192])
 ([10.252.40.192])
 by fmsmga007.fm.intel.com with ESMTP; 07 Aug 2020 02:00:37 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200807084506.473089-1-chris@chris-wilson.co.uk>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <25f28f97-1e1f-e11f-ee6a-c524e4f854b2@intel.com>
Date: Fri, 7 Aug 2020 12:00:14 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200807084506.473089-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_exec_fence: Use
 default-context for syncobj-timeline-wait
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

On 07/08/2020 11:45, Chris Wilson wrote:
> syncobj-timeline-wait is only exercising waits on the syncobj along a
> single timeline, for which it can use the universally available default
> context, and so not try and fail to create a HW context on very old
> platforms.
>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2308
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>


Hm... I thought maybe we didn't get all the engines on the default context.

If that's not the case :


Reviewed-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>


Thanks!


-Lionel


> ---
>   tests/i915/gem_exec_fence.c | 6 +-----
>   1 file changed, 1 insertion(+), 5 deletions(-)
>
> diff --git a/tests/i915/gem_exec_fence.c b/tests/i915/gem_exec_fence.c
> index c9b95fe64..b240c30bf 100644
> --- a/tests/i915/gem_exec_fence.c
> +++ b/tests/i915/gem_exec_fence.c
> @@ -1970,7 +1970,6 @@ static void test_syncobj_timeline_wait(int fd)
>   		MI_BATCH_BUFFER_END,
>   		MI_NOOP,
>   	};
> -	uint32_t gem_context = gem_context_clone_with_engines(fd, 0);
>   	struct drm_i915_gem_exec_object2 obj;
>   	struct drm_i915_gem_execbuffer2 execbuf;
>   	struct drm_i915_gem_execbuffer_ext_timeline_fences timeline_fences;
> @@ -1988,7 +1987,7 @@ static void test_syncobj_timeline_wait(int fd)
>   
>   	gem_quiescent_gpu(fd);
>   
> -	spin = igt_spin_new(fd, .ctx = gem_context, .engine = ALL_ENGINES);
> +	spin = igt_spin_new(fd, .engine = ALL_ENGINES);
>   
>   	memset(&timeline_fences, 0, sizeof(timeline_fences));
>   	timeline_fences.base.name = DRM_I915_GEM_EXECBUFFER_EXT_TIMELINE_FENCES;
> @@ -2000,7 +1999,6 @@ static void test_syncobj_timeline_wait(int fd)
>   	execbuf.buffers_ptr = to_user_pointer(&obj);
>   	execbuf.buffer_count = 1;
>   	execbuf.batch_len = sizeof(bbe);
> -	execbuf.rsvd1 = gem_context;
>   
>   	memset(&obj, 0, sizeof(obj));
>   	obj.handle = gem_create(fd, 4096);
> @@ -2055,8 +2053,6 @@ static void test_syncobj_timeline_wait(int fd)
>   		gem_sync(fd, handle[i]);
>   		gem_close(fd, handle[i]);
>   	}
> -
> -	gem_context_destroy(fd, gem_context);
>   }
>   
>   static const char *test_syncobj_timeline_export_desc =


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
