Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D7D7154ED4F
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jun 2022 00:28:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BEE810F6CE;
	Thu, 16 Jun 2022 22:28:06 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FE4A10F683;
 Thu, 16 Jun 2022 22:28:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655418484; x=1686954484;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=3nFoiCs/i+b4saC1BZhajJGcgBHReiCbs/41b0uXmQI=;
 b=H15JLc8bYGSiW420vU9X8jLbCFWvQABSieq0HwtZcJLEUbnZg2VijLsD
 wjwvxwC4iYo2mFzZHrM/bTB0XqKdSyrXIOOLQGBb7EB3IhmRTOsXkY/zJ
 xbiwNmuvA8o4CCkx3kbrY5pjg/e458ubGK6/DmgGvmczmYEJOe/jhx2WJ
 TK8eI23O5CWGCJaHTwBNSfXN+H4U7CK1ynJ8J7ULPxdEm6XNoOviXWo1D
 Up3nGINsqX406cKN4+1jQopX6VjA82u1STrYzP6PvdL2zr1qPXeDetB8l
 fdbTpOXg2efOwNq1TPyrHcXrKCFZIJ1xbbU/9jDkf+e0C0jmsm+5YrELx Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="259826506"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="259826506"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 15:28:03 -0700
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="589841344"
Received: from orsosgc001.jf.intel.com ([10.165.21.154])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 15:28:03 -0700
Date: Thu, 16 Jun 2022 15:27:59 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20220616222759.GA35313@orsosgc001.jf.intel.com>
References: <20220616133203.278584-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
In-Reply-To: <20220616133203.278584-1-tvrtko.ursulin@linux.intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests/drm_fdinfo: Test virtual engines
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
Cc: igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Thanks for adding these tests. I ran these with the kernel patch I had 
posted for GuC support and updated the patch to work with virtual 
engines - https://patchwork.freedesktop.org/series/105085/#rev3

I have listed some changes I had to do in the below patch. With those 
(or similar changes), this is:

Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

On Thu, Jun 16, 2022 at 02:32:03PM +0100, Tvrtko Ursulin wrote:
>From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>
>We need some coverage of the virtual engines.
>
>Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>---
> tests/i915/drm_fdinfo.c | 284 +++++++++++++++++++++++++++++++++++++++-
> 1 file changed, 282 insertions(+), 2 deletions(-)
>
>diff --git a/tests/i915/drm_fdinfo.c b/tests/i915/drm_fdinfo.c
>index 3475d35b23b9..0a42370d54ce 100644
>--- a/tests/i915/drm_fdinfo.c
>+++ b/tests/i915/drm_fdinfo.c
>@@ -27,6 +27,7 @@
> #include "igt_device.h"
> #include "igt_drm_fdinfo.h"
> #include "i915/gem.h"
>+#include "i915/gem_vm.h"
> #include "intel_ctx.h"
>
> IGT_TEST_DESCRIPTION("Test the i915 drm fdinfo data");
>@@ -90,10 +91,10 @@ static igt_spin_t *__spin_poll(int fd, uint64_t ahnd, const intel_ctx_t *ctx,
> 	struct igt_spin_factory opts = {
> 		.ahnd = ahnd,
> 		.ctx = ctx,
>-		.engine = e->flags,
>+		.engine = e ? e->flags : 0,
> 	};
>
>-	if (gem_class_can_store_dword(fd, e->class))
>+	if (!e || gem_class_can_store_dword(fd, e->class))
> 		opts.flags |= IGT_SPIN_POLL_RUN;
>
> 	return __igt_spin_factory(fd, &opts);
>@@ -440,6 +441,265 @@ all_busy_check_all(int gem_fd, const intel_ctx_t *ctx,
> 	gem_quiescent_gpu(gem_fd);
> }
>
>+static struct i915_engine_class_instance *
>+list_engines(const intel_ctx_cfg_t *cfg,
>+	     unsigned int class, unsigned int *out)
>+{
>+	struct i915_engine_class_instance *ci;
>+	unsigned int count = 0, i;
>+
>+	ci = malloc(cfg->num_engines * sizeof(*ci));
>+	igt_assert(ci);
>+
>+	for (i = 0; i < cfg->num_engines; i++) {
>+		if (class == cfg->engines[i].engine_class)
>+			ci[count++] = cfg->engines[i];
>+	}
>+
>+	if (!count) {
>+		free(ci);
>+		ci = NULL;
>+	}
>+
>+	*out = count;
>+	return ci;
>+}
>+
>+static size_t sizeof_load_balance(int count)
>+{
>+	return offsetof(struct i915_context_engines_load_balance,
>+			engines[count]);
>+}
>+
>+static size_t sizeof_param_engines(int count)
>+{
>+	return offsetof(struct i915_context_param_engines,
>+			engines[count]);
>+}
>+
>+#define alloca0(sz) ({ size_t sz__ = (sz); memset(alloca(sz__), 0, sz__); })
>+
>+static int __set_load_balancer(int i915, uint32_t ctx,
>+			       const struct i915_engine_class_instance *ci,
>+			       unsigned int count,
>+			       void *ext)
>+{
>+	struct i915_context_engines_load_balance *balancer =
>+		alloca0(sizeof_load_balance(count));
>+	struct i915_context_param_engines *engines =
>+		alloca0(sizeof_param_engines(count + 1));
>+	struct drm_i915_gem_context_param p = {
>+		.ctx_id = ctx,
>+		.param = I915_CONTEXT_PARAM_ENGINES,
>+		.size = sizeof_param_engines(count + 1),
>+		.value = to_user_pointer(engines)
>+	};
>+
>+	balancer->base.name = I915_CONTEXT_ENGINES_EXT_LOAD_BALANCE;
>+	balancer->base.next_extension = to_user_pointer(ext);
>+
>+	igt_assert(count);
>+	balancer->num_siblings = count;
>+	memcpy(balancer->engines, ci, count * sizeof(*ci));
>+
>+	engines->extensions = to_user_pointer(balancer);
>+	engines->engines[0].engine_class =
>+		I915_ENGINE_CLASS_INVALID;
>+	engines->engines[0].engine_instance =
>+		I915_ENGINE_CLASS_INVALID_NONE;
>+	memcpy(engines->engines + 1, ci, count * sizeof(*ci));
>+
>+	return __gem_context_set_param(i915, &p);
>+}
>+
>+static void set_load_balancer(int i915, uint32_t ctx,
>+			      const struct i915_engine_class_instance *ci,
>+			      unsigned int count,
>+			      void *ext)
>+{
>+	igt_assert_eq(__set_load_balancer(i915, ctx, ci, count, ext), 0);
>+}
>+

static void context_unban(int i915, uint32_t context_id)
{
	struct drm_i915_gem_context_param param = {
		.ctx_id = context_id,
		.param = I915_CONTEXT_PARAM_BANNABLE,
		.value = 0,
	};

	gem_context_set_param(i915, &param);
}

>+static void
>+virtual(int i915, const intel_ctx_cfg_t *base_cfg, unsigned int flags)
>+{
>+	intel_ctx_cfg_t cfg = {};
>+
>+	cfg.vm = gem_vm_create(i915);
>+
>+	for (int class = 0; class < 32; class++) {
>+		struct i915_engine_class_instance *ci;
>+		unsigned int count;
>+
>+		if (!gem_class_can_store_dword(i915, class))
>+			continue;
>+
>+		ci = list_engines(base_cfg, class, &count);
>+		if (!ci)
>+			continue;
>+
>+		for (unsigned int pass = 0; pass < count; pass++) {
>+			const intel_ctx_t *ctx;
>+			unsigned long slept;
>+			uint64_t ahnd, val;
>+			igt_spin_t *spin;
>+
>+			igt_assert(sizeof(*ci) == sizeof(int));
>+			igt_permute_array(ci, count, igt_exchange_int);
>+
>+			igt_debug("class %u, pass %u/%u...\n", class, pass, count);
>+
>+			ctx = intel_ctx_create(i915, &cfg);

if (flags & FLAG_HANG)
	context_unban(i915, ctx->id);

>+			ahnd = get_reloc_ahnd(i915, ctx->id);
>+
>+			set_load_balancer(i915, ctx->id, ci, count, NULL);
>+
>+			if (flags & TEST_BUSY)
>+				spin = spin_sync(i915, ahnd, ctx, NULL);
>+			else
>+				spin = NULL;
>+
>+			val = read_busy(i915, class);
>+			slept = measured_usleep(batch_duration_ns / 1000);
>+			if (flags & TEST_TRAILING_IDLE)
>+				end_spin(i915, spin, flags);
>+			val = read_busy(i915, class) - val;
>+
>+			if (flags & FLAG_HANG)
>+				igt_force_gpu_reset(i915);
>+			else
>+				end_spin(i915, spin, FLAG_SYNC);
>+
>+			assert_within_epsilon(val,
>+					      flags & TEST_BUSY ?
>+					      slept : 0.0f,
>+					      tolerance);
>+
>+			/* Check for idle after hang. */
>+			if (flags & FLAG_HANG) {
>+				gem_quiescent_gpu(i915);
>+				igt_assert(!gem_bo_busy(i915, spin->handle));
>+
>+				val = read_busy(i915, class);
>+				slept = measured_usleep(batch_duration_ns /
>+							1000);
>+				val = read_busy(i915, class) - val;
>+
>+				assert_within_epsilon(val, 0, tolerance);
>+			}
>+
>+			igt_spin_free(i915, spin);
>+			put_ahnd(ahnd);
>+			intel_ctx_destroy(i915, ctx);
>+
>+			gem_quiescent_gpu(i915);
>+		}
>+
>+		free(ci);
>+	}
>+}
>+
>+static void
>+__virt_submit_spin(int i915, igt_spin_t *spin,
>+		   const intel_ctx_t *ctx,
>+		   int offset)
>+{
>+	struct drm_i915_gem_execbuffer2 eb = spin->execbuf;
>+
>+	eb.flags &= ~(0x3f | I915_EXEC_BSD_MASK);
>+	eb.flags |= I915_EXEC_NO_RELOC;
>+	eb.batch_start_offset += offset;
>+	eb.rsvd1 = ctx->id;
>+
>+	gem_execbuf(i915, &eb);
>+}
>+
>+static void
>+virtual_all(int i915, const intel_ctx_cfg_t *base_cfg, unsigned int flags)
>+{
>+	const unsigned int num_engines = base_cfg->num_engines;
>+	intel_ctx_cfg_t cfg = {};
>+
>+	cfg.vm = gem_vm_create(i915);
>+
>+	for (int class = 0; class < 32; class++) {
>+		struct i915_engine_class_instance *ci;
>+		const intel_ctx_t *ctx[num_engines];
>+		igt_spin_t *spin = NULL;
>+		unsigned int count;
>+		unsigned long slept;
>+		uint64_t val;
>+
>+		if (!gem_class_can_store_dword(i915, class))
>+			continue;
>+
>+		ci = list_engines(base_cfg, class, &count);
>+		if (!ci)
>+			continue;
>+		igt_assert(count <= num_engines);
>+
>+		if (count < 2)
>+			continue;
>+
>+		igt_debug("class %u, %u engines...\n", class, count);
>+
>+		for (unsigned int i = 0; i < count; i++) {
>+			uint64_t ahnd;
>+
>+			igt_assert(sizeof(*ci) == sizeof(int));
>+			igt_permute_array(ci, count, igt_exchange_int);
>+
>+			ctx[i] = intel_ctx_create(i915, &cfg);

if (flags & FLAG_HANG)
	context_unban(i915, ctx[i]->id);

>+			ahnd = get_reloc_ahnd(i915, ctx[i]->id);
>+
>+			set_load_balancer(i915, ctx[i]->id, ci, count, NULL);
>+
>+			if (spin)
>+				__virt_submit_spin(i915, spin, ctx[i], 64);
>+			else
>+				spin = __spin_poll(i915, ahnd, ctx[i], NULL);
>+		}
>+
>+		/* Small delay to allow engines to start. */
>+		usleep(__spin_wait(i915, spin) * count / 1e3);
>+
>+		val = read_busy(i915, class);
>+		slept = measured_usleep(batch_duration_ns / 1000);
>+		if (flags & TEST_TRAILING_IDLE)
>+			end_spin(i915, spin, flags);
>+		val = read_busy(i915, class) - val;
>+
>+		if (flags & FLAG_HANG)
>+			igt_force_gpu_reset(i915);
>+		else
>+			end_spin(i915, spin, FLAG_SYNC);
>+
>+		assert_within_epsilon(val, slept * count, tolerance);
>+
>+		/* Check for idle after hang. */
>+		if (flags & FLAG_HANG) {
>+			gem_quiescent_gpu(i915);
>+			igt_assert(!gem_bo_busy(i915, spin->handle));
>+
>+			val = read_busy(i915, class);
>+			slept = measured_usleep(batch_duration_ns /
>+						1000);
>+			val = read_busy(i915, class) - val;
>+
>+			assert_within_epsilon(val, 0, tolerance);
>+		}
>+
>+		put_ahnd(spin->opts.ahnd);
>+		igt_spin_free(i915, spin);

The above 2 lines should be swapped.

Regards,
Umesh
