Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D06686BE540
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Mar 2023 10:16:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7B6610EEB0;
	Fri, 17 Mar 2023 09:16:12 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 698CB10EEB0
 for <Intel-GFX@lists.freedesktop.org>; Fri, 17 Mar 2023 09:16:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679044570; x=1710580570;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=752zws2AP3EVoP82Zw/tEJ1bICjTaA+0cd0wv1phSbQ=;
 b=AcAD/jyrB6ZwOLY9F43Fa537O2Lp8G0ThKItjGXQozvR4MbDRAi0GL6N
 eq7Aum15JqB96yojOsOyTYdL2Ri6B58ovQv3C54PqVzqJqRzL2PdoAgFy
 uwI2ykZqt3kLrjesAWOvLML5/GBAchPxKqbQ4RfTOiqjXy6VJ7AUMSRLl
 /c05PllZjylQ0W/qvWozl5x31z26/TjsgJnh7kFCnWeO0xjRtg0+Ij1We
 drQGnUWWILIW16MN92rgVHxNrhVJZb3jp/3/LOFSJ32atpOPf8S4LcS7T
 w+fJq6w3mGkp3qIos0l00S+7focUMgsnFQTYcL3aNGPMvymDCiYA3UHsv w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="338238076"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="338238076"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 02:16:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="744493687"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="744493687"
Received: from fcostelx-mobl2.ger.corp.intel.com (HELO [10.213.223.216])
 ([10.213.223.216])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 02:16:09 -0700
Message-ID: <eeec7ffd-0e77-9360-6bd3-9054c23b77a5@linux.intel.com>
Date: Fri, 17 Mar 2023 09:16:07 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Tejas Upadhyay <tejas.upadhyay@intel.com>, Intel-GFX@Lists.FreeDesktop.Org
References: <20230317055239.1313175-1-tejas.upadhyay@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20230317055239.1313175-1-tejas.upadhyay@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Consider multi-gt at all places
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


On 17/03/2023 05:52, Tejas Upadhyay wrote:
> In order to make igt_live_test work in proper
> way, we need to consider multi-gt in all tests
> where igt_live_test is used as well as at other
> random places where multi-gt should be considered.

Description is a bit vague - is this for Meteorlake in general? What is 
the "proper way" ie what is broken?

> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>
> ---
>   .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 13 ++--
>   .../drm/i915/gem/selftests/i915_gem_context.c | 28 ++++----
>   drivers/gpu/drm/i915/gt/intel_engine_user.c   |  2 +-
>   drivers/gpu/drm/i915/gt/selftest_execlists.c  | 68 +++++++++----------
>   drivers/gpu/drm/i915/selftests/i915_request.c | 36 +++++-----
>   .../gpu/drm/i915/selftests/igt_live_test.c    | 10 +--
>   .../gpu/drm/i915/selftests/igt_live_test.h    |  4 +-
>   7 files changed, 81 insertions(+), 80 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index 9dce2957b4e5..289b75ac39e1 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -2449,9 +2449,9 @@ static int eb_submit(struct i915_execbuffer *eb)
>   	return err;
>   }
>   
> -static int num_vcs_engines(struct drm_i915_private *i915)
> +static int num_vcs_engines(struct intel_gt *gt)
>   {
> -	return hweight_long(VDBOX_MASK(to_gt(i915)));
> +	return hweight_long(VDBOX_MASK(gt));
>   }
>   
>   /*
> @@ -2459,7 +2459,7 @@ static int num_vcs_engines(struct drm_i915_private *i915)
>    * The engine index is returned.
>    */
>   static unsigned int
> -gen8_dispatch_bsd_engine(struct drm_i915_private *dev_priv,
> +gen8_dispatch_bsd_engine(struct intel_gt *gt,
>   			 struct drm_file *file)
>   {
>   	struct drm_i915_file_private *file_priv = file->driver_priv;
> @@ -2467,7 +2467,7 @@ gen8_dispatch_bsd_engine(struct drm_i915_private *dev_priv,
>   	/* Check whether the file_priv has already selected one ring. */
>   	if ((int)file_priv->bsd_engine < 0)
>   		file_priv->bsd_engine =
> -			get_random_u32_below(num_vcs_engines(dev_priv));
> +			get_random_u32_below(num_vcs_engines(gt));
>   
>   	return file_priv->bsd_engine;
>   }
> @@ -2644,6 +2644,7 @@ static unsigned int
>   eb_select_legacy_ring(struct i915_execbuffer *eb)
>   {
>   	struct drm_i915_private *i915 = eb->i915;
> +	struct intel_gt *gt = eb->gt;
>   	struct drm_i915_gem_execbuffer2 *args = eb->args;
>   	unsigned int user_ring_id = args->flags & I915_EXEC_RING_MASK;
>   
> @@ -2655,11 +2656,11 @@ eb_select_legacy_ring(struct i915_execbuffer *eb)
>   		return -1;
>   	}
>   
> -	if (user_ring_id == I915_EXEC_BSD && num_vcs_engines(i915) > 1) {
> +	if (user_ring_id == I915_EXEC_BSD && num_vcs_engines(gt) > 1) {
>   		unsigned int bsd_idx = args->flags & I915_EXEC_BSD_MASK;
>   
>   		if (bsd_idx == I915_EXEC_BSD_DEFAULT) {
> -			bsd_idx = gen8_dispatch_bsd_engine(i915, eb->file);
> +			bsd_idx = gen8_dispatch_bsd_engine(gt, eb->file);
>   		} else if (bsd_idx >= I915_EXEC_BSD_RING1 &&
>   			   bsd_idx <= I915_EXEC_BSD_RING2) {
>   			bsd_idx >>= I915_EXEC_BSD_SHIFT;

The hunks above I don't think are correct. Execbuf is in principle based 
on uabi engines, and that is not a per GT concept.

There is also no functional change above so I can only guess it is a 
prep work for something?

[snip]

> -int igt_live_test_end(struct igt_live_test *t)
> +int igt_live_test_end(struct igt_live_test *t, struct intel_gt *gt)
>   {
> -	struct drm_i915_private *i915 = t->i915;
> +	struct drm_i915_private *i915 = gt->i915;
>   	struct intel_engine_cs *engine;
>   	enum intel_engine_id id;
>   
> @@ -57,7 +57,7 @@ int igt_live_test_end(struct igt_live_test *t)
>   		return -EIO;
>   	}
>   
> -	for_each_engine(engine, to_gt(i915), id) {
> +	for_each_engine(engine, gt, id) {
>   		if (t->reset_engine[id] ==
>   		    i915_reset_engine_count(&i915->gpu_error, engine))
>   			continue;
> diff --git a/drivers/gpu/drm/i915/selftests/igt_live_test.h b/drivers/gpu/drm/i915/selftests/igt_live_test.h
> index 36ed42736c52..209b0548c603 100644
> --- a/drivers/gpu/drm/i915/selftests/igt_live_test.h
> +++ b/drivers/gpu/drm/i915/selftests/igt_live_test.h
> @@ -27,9 +27,9 @@ struct igt_live_test {
>    * e.g. if the GPU was reset.
>    */
>   int igt_live_test_begin(struct igt_live_test *t,
> -			struct drm_i915_private *i915,
> +			struct intel_gt *gt,
>   			const char *func,
>   			const char *name);
> -int igt_live_test_end(struct igt_live_test *t);
> +int igt_live_test_end(struct igt_live_test *t, struct intel_gt *gt);

Back in the day the plan was that live selftests are device focused and 
then we also have intel_gt_live_subtests, which are obviously GT 
focused. So in that sense adding a single GT parameter to 
igt_live_test_begin isn't something I immediately understand.

Could you explain in one or two practical examples what is not working 
properly and how is this patch fixing it?

Regards,

Tvrtko
