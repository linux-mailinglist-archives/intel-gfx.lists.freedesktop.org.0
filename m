Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3C0A4EDA70
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Mar 2022 15:23:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B898A10F3A4;
	Thu, 31 Mar 2022 13:23:36 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A25BB10F39B;
 Thu, 31 Mar 2022 13:23:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648733014; x=1680269014;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=f+0deVlrhG6tFVpx84UDD/k6usmkAHCQcnZWCerHob8=;
 b=YL9S5mrDjSvPb6xZy+ewGBISykupM8hHPVYp3jugtb2UQGrs7r1fYr19
 7K9kM4/IyZNphA+05Dex4A5/B41jnY+abACuU2SoMdX1faFJgo3XYM4Hg
 Q/dXA3O20eg7e3Q2GEWMvqTJB9TAL8nLztVhRVBcJy7YIeIfVrThSuOsd
 CMGMOCy75+OIfSfrvmU9cKiUJblEiwXY57QXbZxKrc/AQd4Tw9Sm2z4X+
 On9DBJcPTremhxWAUYrtRkZVYELR5geQ5Usn/8bEGdbbQZn1zyQV+qa2q
 V1eICbsBqSDDEit/jKRf8+j360yUgPHE3ptlNrzTuw6RTKFXnZorK5Yp9 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="239762544"
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="239762544"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 06:23:33 -0700
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="654744263"
Received: from juanniex-mobl.ger.corp.intel.com (HELO [10.213.215.247])
 ([10.213.215.247])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 06:23:32 -0700
Message-ID: <c6af06bc-7d13-7f69-2acb-baf8d8c1b3ea@linux.intel.com>
Date: Thu, 31 Mar 2022 14:23:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
References: <20220222135605.1120767-1-tvrtko.ursulin@linux.intel.com>
 <20220222135605.1120767-3-tvrtko.ursulin@linux.intel.com>
 <20220330201109.GE59408@unerlige-ril-10.165.21.154>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220330201109.GE59408@unerlige-ril-10.165.21.154>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 02/11]
 tests/i915/drm_fdinfo: Basic and functional tests for GPU busyness exported
 via fdinfo
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
Cc: igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 30/03/2022 21:11, Umesh Nerlige Ramappa wrote:
> This looks very similar to existing perf_pmu tests with the slight 
> change that the busyness is now captured from the fdinfo.

Yep, much copy-and-paste was involved. :)
> lgtm,
> Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Thanks!

Regards,

Tvrtko

> 
> Umesh
> 
> On Tue, Feb 22, 2022 at 01:55:56PM +0000, Tvrtko Ursulin wrote:
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> Mostly inherited from the perf_pmu, some basic tests, and some tests to
>> verify exported GPU busyness is as expected.
>>
>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> ---
>> tests/i915/drm_fdinfo.c | 555 ++++++++++++++++++++++++++++++++++++++++
>> tests/meson.build       |   8 +
>> 2 files changed, 563 insertions(+)
>> create mode 100644 tests/i915/drm_fdinfo.c
>>
>> diff --git a/tests/i915/drm_fdinfo.c b/tests/i915/drm_fdinfo.c
>> new file mode 100644
>> index 000000000000..e3b1ebb0f454
>> --- /dev/null
>> +++ b/tests/i915/drm_fdinfo.c
>> @@ -0,0 +1,555 @@
>> +/*
>> + * Copyright © 2022 Intel Corporation
>> + *
>> + * Permission is hereby granted, free of charge, to any person 
>> obtaining a
>> + * copy of this software and associated documentation files (the 
>> "Software"),
>> + * to deal in the Software without restriction, including without 
>> limitation
>> + * the rights to use, copy, modify, merge, publish, distribute, 
>> sublicense,
>> + * and/or sell copies of the Software, and to permit persons to whom the
>> + * Software is furnished to do so, subject to the following conditions:
>> + *
>> + * The above copyright notice and this permission notice (including 
>> the next
>> + * paragraph) shall be included in all copies or substantial portions 
>> of the
>> + * Software.
>> + *
>> + * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, 
>> EXPRESS OR
>> + * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF 
>> MERCHANTABILITY,
>> + * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT 
>> SHALL
>> + * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES 
>> OR OTHER
>> + * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, 
>> ARISING
>> + * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR 
>> OTHER DEALINGS
>> + * IN THE SOFTWARE.
>> + *
>> + */
>> +
>> +#include "igt.h"
>> +#include "igt_core.h"
>> +#include "igt_device.h"
>> +#include "igt_drm_fdinfo.h"
>> +#include "i915/gem.h"
>> +#include "intel_ctx.h"
>> +
>> +IGT_TEST_DESCRIPTION("Test the i915 drm fdinfo data");
>> +
>> +const double tolerance = 0.05f;
>> +const unsigned long batch_duration_ns = 500e6;
>> +
>> +#define __assert_within_epsilon(x, ref, tol_up, tol_down) \
>> +    igt_assert_f((double)(x) <= (1.0 + (tol_up)) * (double)(ref) && \
>> +             (double)(x) >= (1.0 - (tol_down)) * (double)(ref), \
>> +             "'%s' != '%s' (%f not within +%.1f%%/-%.1f%% tolerance 
>> of %f)\n",\
>> +             #x, #ref, (double)(x), \
>> +             (tol_up) * 100.0, (tol_down) * 100.0, \
>> +             (double)(ref))
>> +
>> +#define assert_within_epsilon(x, ref, tolerance) \
>> +    __assert_within_epsilon(x, ref, tolerance, tolerance)
>> +
>> +static void basics(int i915, unsigned int num_classes)
>> +{
>> +    struct drm_client_fdinfo info = { };
>> +    bool ret;
>> +
>> +    ret = igt_parse_drm_fdinfo(i915, &info);
>> +    igt_assert(ret);
>> +
>> +    igt_assert(!strcmp(info.driver, "i915"));
>> +
>> +    igt_assert_eq(info.num_engines, num_classes);
>> +}
>> +
>> +/*
>> + * Helper for cases where we assert on time spent sleeping (directly or
>> + * indirectly), so make it more robust by ensuring the system sleep time
>> + * is within test tolerance to start with.
>> + */
>> +static unsigned int measured_usleep(unsigned int usec)
>> +{
>> +    struct timespec ts = { };
>> +    unsigned int slept;
>> +
>> +    slept = igt_nsec_elapsed(&ts);
>> +    igt_assert(slept == 0);
>> +    do {
>> +        usleep(usec - slept);
>> +        slept = igt_nsec_elapsed(&ts) / 1000;
>> +    } while (slept < usec);
>> +
>> +    return igt_nsec_elapsed(&ts);
>> +}
>> +
>> +#define TEST_BUSY (1)
>> +#define FLAG_SYNC (2)
>> +#define TEST_TRAILING_IDLE (4)
>> +#define FLAG_HANG (8)
>> +#define TEST_ISOLATION (16)
>> +
>> +static igt_spin_t *__spin_poll(int fd, uint64_t ahnd, const 
>> intel_ctx_t *ctx,
>> +                   const struct intel_execution_engine2 *e)
>> +{
>> +    struct igt_spin_factory opts = {
>> +        .ahnd = ahnd,
>> +        .ctx = ctx,
>> +        .engine = e->flags,
>> +    };
>> +
>> +    if (gem_class_can_store_dword(fd, e->class))
>> +        opts.flags |= IGT_SPIN_POLL_RUN;
>> +
>> +    return __igt_spin_factory(fd, &opts);
>> +}
>> +
>> +static unsigned long __spin_wait(int fd, igt_spin_t *spin)
>> +{
>> +    struct timespec start = { };
>> +
>> +    igt_nsec_elapsed(&start);
>> +
>> +    if (igt_spin_has_poll(spin)) {
>> +        unsigned long timeout = 0;
>> +
>> +        while (!igt_spin_has_started(spin)) {
>> +            unsigned long t = igt_nsec_elapsed(&start);
>> +
>> +            igt_assert(gem_bo_busy(fd, spin->handle));
>> +            if ((t - timeout) > 250e6) {
>> +                timeout = t;
>> +                igt_warn("Spinner not running after %.2fms\n",
>> +                     (double)t / 1e6);
>> +                igt_assert(t < 2e9);
>> +            }
>> +        }
>> +    } else {
>> +        igt_debug("__spin_wait - usleep mode\n");
>> +        usleep(500e3); /* Better than nothing! */
>> +    }
>> +
>> +    igt_assert(gem_bo_busy(fd, spin->handle));
>> +    return igt_nsec_elapsed(&start);
>> +}
>> +
>> +static igt_spin_t *__spin_sync(int fd, uint64_t ahnd, const 
>> intel_ctx_t *ctx,
>> +                   const struct intel_execution_engine2 *e)
>> +{
>> +    igt_spin_t *spin = __spin_poll(fd, ahnd, ctx, e);
>> +
>> +    __spin_wait(fd, spin);
>> +
>> +    return spin;
>> +}
>> +
>> +static igt_spin_t *spin_sync(int fd, uint64_t ahnd, const intel_ctx_t 
>> *ctx,
>> +                 const struct intel_execution_engine2 *e)
>> +{
>> +    igt_require_gem(fd);
>> +
>> +    return __spin_sync(fd, ahnd, ctx, e);
>> +}
>> +
>> +static void end_spin(int fd, igt_spin_t *spin, unsigned int flags)
>> +{
>> +    if (!spin)
>> +        return;
>> +
>> +    igt_spin_end(spin);
>> +
>> +    if (flags & FLAG_SYNC)
>> +        gem_sync(fd, spin->handle);
>> +
>> +    if (flags & TEST_TRAILING_IDLE) {
>> +        unsigned long t, timeout = 0;
>> +        struct timespec start = { };
>> +
>> +        igt_nsec_elapsed(&start);
>> +
>> +        do {
>> +            t = igt_nsec_elapsed(&start);
>> +
>> +            if (gem_bo_busy(fd, spin->handle) &&
>> +                (t - timeout) > 10e6) {
>> +                timeout = t;
>> +                igt_warn("Spinner not idle after %.2fms\n",
>> +                     (double)t / 1e6);
>> +            }
>> +
>> +            usleep(1e3);
>> +        } while (t < batch_duration_ns / 5);
>> +    }
>> +}
>> +
>> +static uint64_t read_busy(int i915, unsigned int class)
>> +{
>> +    struct drm_client_fdinfo info = { };
>> +
>> +    igt_assert(igt_parse_drm_fdinfo(i915, &info));
>> +
>> +    return info.busy[class];
>> +}
>> +
>> +static void
>> +single(int gem_fd, const intel_ctx_t *ctx,
>> +       const struct intel_execution_engine2 *e, unsigned int flags)
>> +{
>> +    unsigned long slept;
>> +    igt_spin_t *spin;
>> +    uint64_t val;
>> +    int spin_fd;
>> +    uint64_t ahnd;
>> +
>> +    if (flags & TEST_ISOLATION) {
>> +        spin_fd = gem_reopen_driver(gem_fd);
>> +        ctx = intel_ctx_create_all_physical(spin_fd);
>> +    } else {
>> +        spin_fd = gem_fd;
>> +    }
>> +
>> +    ahnd = get_reloc_ahnd(spin_fd, ctx->id);
>> +
>> +    if (flags & TEST_BUSY)
>> +        spin = spin_sync(spin_fd, ahnd, ctx, e);
>> +    else
>> +        spin = NULL;
>> +
>> +    val = read_busy(gem_fd, e->class);
>> +    slept = measured_usleep(batch_duration_ns / 1000);
>> +    if (flags & TEST_TRAILING_IDLE)
>> +        end_spin(spin_fd, spin, flags);
>> +    val = read_busy(gem_fd, e->class) - val;
>> +
>> +    if (flags & FLAG_HANG)
>> +        igt_force_gpu_reset(spin_fd);
>> +    else
>> +        end_spin(spin_fd, spin, FLAG_SYNC);
>> +
>> +    assert_within_epsilon(val,
>> +                  (flags & TEST_BUSY) && !(flags & TEST_ISOLATION) ?
>> +                  slept : 0.0f,
>> +                  tolerance);
>> +
>> +    /* Check for idle after hang. */
>> +    if (flags & FLAG_HANG) {
>> +        gem_quiescent_gpu(spin_fd);
>> +        igt_assert(!gem_bo_busy(spin_fd, spin->handle));
>> +
>> +        val = read_busy(gem_fd, e->class);
>> +        slept = measured_usleep(batch_duration_ns / 1000);
>> +        val = read_busy(gem_fd, e->class) - val;
>> +
>> +        assert_within_epsilon(val, 0, tolerance);
>> +    }
>> +
>> +    igt_spin_free(spin_fd, spin);
>> +    put_ahnd(ahnd);
>> +
>> +    gem_quiescent_gpu(spin_fd);
>> +}
>> +
>> +static void log_busy(unsigned int num_engines, uint64_t *val)
>> +{
>> +    char buf[1024];
>> +    int rem = sizeof(buf);
>> +    unsigned int i;
>> +    char *p = buf;
>> +
>> +    for (i = 0; i < num_engines; i++) {
>> +        int len;
>> +
>> +        len = snprintf(p, rem, "%u=%" PRIu64 "\n",  i, val[i]);
>> +        igt_assert(len > 0);
>> +        rem -= len;
>> +        p += len;
>> +    }
>> +
>> +    igt_info("%s", buf);
>> +}
>> +
>> +static void read_busy_all(int i915, uint64_t *val)
>> +{
>> +    struct drm_client_fdinfo info = { };
>> +
>> +    igt_assert(igt_parse_drm_fdinfo(i915, &info));
>> +
>> +    memcpy(val, info.busy, sizeof(info.busy));
>> +}
>> +
>> +static void
>> +busy_check_all(int gem_fd, const intel_ctx_t *ctx,
>> +           const struct intel_execution_engine2 *e,
>> +           const unsigned int num_engines,
>> +           const unsigned int classes[16], const unsigned int 
>> num_classes,
>> +           unsigned int flags)
>> +{
>> +    uint64_t ahnd = get_reloc_ahnd(gem_fd, ctx->id);
>> +    uint64_t tval[2][16];
>> +    unsigned long slept;
>> +    uint64_t val[16];
>> +    igt_spin_t *spin;
>> +    unsigned int i;
>> +
>> +    memset(tval, 0, sizeof(tval));
>> +
>> +    spin = spin_sync(gem_fd, ahnd, ctx, e);
>> +
>> +    read_busy_all(gem_fd, tval[0]);
>> +    slept = measured_usleep(batch_duration_ns / 1000);
>> +    if (flags & TEST_TRAILING_IDLE)
>> +        end_spin(gem_fd, spin, flags);
>> +    read_busy_all(gem_fd, tval[1]);
>> +
>> +    end_spin(gem_fd, spin, FLAG_SYNC);
>> +    igt_spin_free(gem_fd, spin);
>> +    put_ahnd(ahnd);
>> +
>> +    for (i = 0; i < num_classes; i++)
>> +        val[i] = tval[1][i] - tval[0][i];
>> +
>> +    log_busy(num_classes, val);
>> +
>> +    for (i = 0; i < num_classes; i++) {
>> +        double target = i == e->class ? slept : 0.0f;
>> +
>> +        assert_within_epsilon(val[i], target, tolerance);
>> +    }
>> +
>> +    gem_quiescent_gpu(gem_fd);
>> +}
>> +
>> +static void
>> +__submit_spin(int gem_fd, igt_spin_t *spin,
>> +          const struct intel_execution_engine2 *e,
>> +          int offset)
>> +{
>> +    struct drm_i915_gem_execbuffer2 eb = spin->execbuf;
>> +
>> +    eb.flags &= ~(0x3f | I915_EXEC_BSD_MASK);
>> +    eb.flags |= e->flags | I915_EXEC_NO_RELOC;
>> +    eb.batch_start_offset += offset;
>> +
>> +    gem_execbuf(gem_fd, &eb);
>> +}
>> +
>> +static void
>> +most_busy_check_all(int gem_fd, const intel_ctx_t *ctx,
>> +            const struct intel_execution_engine2 *e,
>> +            const unsigned int num_engines,
>> +            const unsigned int classes[16],
>> +            const unsigned int num_classes,
>> +            unsigned int flags)
>> +{
>> +    uint64_t ahnd = get_reloc_ahnd(gem_fd, ctx->id);
>> +    unsigned int busy_class[num_classes];
>> +    struct intel_execution_engine2 *e_;
>> +    igt_spin_t *spin = NULL;
>> +    uint64_t tval[2][16];
>> +    unsigned long slept;
>> +    uint64_t val[16];
>> +    unsigned int i;
>> +
>> +    memset(busy_class, 0, sizeof(busy_class));
>> +    memset(tval, 0, sizeof(tval));
>> +
>> +    for_each_ctx_engine(gem_fd, ctx, e_) {
>> +        if (e->class == e_->class && e->instance == e_->instance) {
>> +            continue;
>> +        } else if (spin) {
>> +            __submit_spin(gem_fd, spin, e_, 64);
>> +            busy_class[e_->class]++;
>> +        } else {
>> +            spin = __spin_poll(gem_fd, ahnd, ctx, e_);
>> +            busy_class[e_->class]++;
>> +        }
>> +    }
>> +    igt_require(spin); /* at least one busy engine */
>> +
>> +    /* Small delay to allow engines to start. */
>> +    usleep(__spin_wait(gem_fd, spin) * num_engines / 1e3);
>> +
>> +    read_busy_all(gem_fd, tval[0]);
>> +    slept = measured_usleep(batch_duration_ns / 1000);
>> +    if (flags & TEST_TRAILING_IDLE)
>> +        end_spin(gem_fd, spin, flags);
>> +    read_busy_all(gem_fd, tval[1]);
>> +
>> +    end_spin(gem_fd, spin, FLAG_SYNC);
>> +    igt_spin_free(gem_fd, spin);
>> +    put_ahnd(ahnd);
>> +
>> +    for (i = 0; i < num_classes; i++)
>> +        val[i] = tval[1][i] - tval[0][i];
>> +
>> +    log_busy(num_classes, val);
>> +
>> +    for (i = 0; i < num_classes; i++) {
>> +        double target = slept * busy_class[i];
>> +
>> +        assert_within_epsilon(val[i], target, tolerance);
>> +    }
>> +    gem_quiescent_gpu(gem_fd);
>> +}
>> +
>> +static void
>> +all_busy_check_all(int gem_fd, const intel_ctx_t *ctx,
>> +           const unsigned int num_engines,
>> +           const unsigned int classes[16],
>> +           const unsigned int num_classes,
>> +           unsigned int flags)
>> +{
>> +    uint64_t ahnd = get_reloc_ahnd(gem_fd, ctx->id);
>> +    unsigned int busy_class[num_classes];
>> +    struct intel_execution_engine2 *e;
>> +    igt_spin_t *spin = NULL;
>> +    uint64_t tval[2][16];
>> +    unsigned long slept;
>> +    uint64_t val[16];
>> +    unsigned int i;
>> +
>> +    memset(busy_class, 0, sizeof(busy_class));
>> +    memset(tval, 0, sizeof(tval));
>> +
>> +    for_each_ctx_engine(gem_fd, ctx, e) {
>> +        if (spin)
>> +            __submit_spin(gem_fd, spin, e, 64);
>> +        else
>> +            spin = __spin_poll(gem_fd, ahnd, ctx, e);
>> +        busy_class[e->class]++;
>> +    }
>> +
>> +    /* Small delay to allow engines to start. */
>> +    usleep(__spin_wait(gem_fd, spin) * num_engines / 1e3);
>> +
>> +    read_busy_all(gem_fd, tval[0]);
>> +    slept = measured_usleep(batch_duration_ns / 1000);
>> +    if (flags & TEST_TRAILING_IDLE)
>> +        end_spin(gem_fd, spin, flags);
>> +    read_busy_all(gem_fd, tval[1]);
>> +
>> +    end_spin(gem_fd, spin, FLAG_SYNC);
>> +    igt_spin_free(gem_fd, spin);
>> +    put_ahnd(ahnd);
>> +
>> +    for (i = 0; i < num_classes; i++)
>> +        val[i] = tval[1][i] - tval[0][i];
>> +
>> +    log_busy(num_classes, val);
>> +
>> +    for (i = 0; i < num_classes; i++) {
>> +        double target = slept * busy_class[i];
>> +
>> +        assert_within_epsilon(val[i], target, tolerance);
>> +    }
>> +    gem_quiescent_gpu(gem_fd);
>> +}
>> +
>> +#define test_each_engine(T, i915, ctx, e) \
>> +    igt_subtest_with_dynamic(T) for_each_ctx_engine(i915, ctx, e) \
>> +        igt_dynamic_f("%s", e->name)
>> +
>> +igt_main
>> +{
>> +    unsigned int num_engines = 0, num_classes = 0;
>> +    const struct intel_execution_engine2 *e;
>> +    unsigned int classes[16] = { };
>> +    const intel_ctx_t *ctx = NULL;
>> +    int i915 = -1;
>> +
>> +    igt_fixture {
>> +        unsigned int i;
>> +
>> +        i915 = __drm_open_driver(DRIVER_INTEL);
>> +
>> +        igt_require_gem(i915);
>> +
>> +        ctx = intel_ctx_create_all_physical(i915);
>> +
>> +        for_each_ctx_engine(i915, ctx, e) {
>> +            num_engines++;
>> +            igt_assert(e->class < ARRAY_SIZE(classes));
>> +            classes[e->class]++;
>> +        }
>> +        igt_require(num_engines);
>> +
>> +        for (i = 0; i < ARRAY_SIZE(classes); i++) {
>> +            if (classes[i])
>> +                num_classes++;
>> +        }
>> +        igt_assert(num_classes);
>> +    }
>> +
>> +    /**
>> +     * Test basic fdinfo content.
>> +     */
>> +    igt_subtest("basics")
>> +        basics(i915, num_classes);
>> +
>> +    /**
>> +     * Test that engines show no load when idle.
>> +     */
>> +    test_each_engine("idle", i915, ctx, e)
>> +        single(i915, ctx, e, 0);
>> +
>> +    /**
>> +     * Test that a single engine reports load correctly.
>> +     */
>> +    test_each_engine("busy", i915, ctx, e)
>> +        single(i915, ctx, e, TEST_BUSY);
>> +
>> +    test_each_engine("busy-idle", i915, ctx, e)
>> +        single(i915, ctx, e, TEST_BUSY | TEST_TRAILING_IDLE);
>> +
>> +    test_each_engine("busy-hang", i915, ctx, e) {
>> +        igt_hang_t hang = igt_allow_hang(i915, ctx->id, 0);
>> +
>> +        single(i915, ctx, e, TEST_BUSY | FLAG_HANG);
>> +
>> +        igt_disallow_hang(i915, hang);
>> +    }
>> +
>> +    /**
>> +     * Test that when one engine is loaded other report no
>> +     * load.
>> +     */
>> +    test_each_engine("busy-check-all", i915, ctx, e)
>> +        busy_check_all(i915, ctx, e, num_engines, classes, num_classes,
>> +                   TEST_BUSY);
>> +
>> +    test_each_engine("busy-idle-check-all", i915, ctx, e)
>> +        busy_check_all(i915, ctx, e, num_engines, classes, num_classes,
>> +                   TEST_BUSY | TEST_TRAILING_IDLE);
>> +
>> +    /**
>> +     * Test that when all except one engine are loaded all
>> +     * loads are correctly reported.
>> +     */
>> +    test_each_engine("most-busy-check-all", i915, ctx, e)
>> +        most_busy_check_all(i915, ctx, e, num_engines,
>> +                    classes, num_classes,
>> +                    TEST_BUSY);
>> +
>> +    test_each_engine("most-busy-idle-check-all", i915, ctx, e)
>> +        most_busy_check_all(i915, ctx, e, num_engines,
>> +                    classes, num_classes,
>> +                    TEST_BUSY | TEST_TRAILING_IDLE);
>> +
>> +    /**
>> +     * Test that when all engines are loaded all loads are
>> +     * correctly reported.
>> +     */
>> +    igt_subtest("all-busy-check-all")
>> +        all_busy_check_all(i915, ctx, num_engines, classes, num_classes,
>> +                   TEST_BUSY);
>> +
>> +    igt_subtest("all-busy-idle-check-all")
>> +        all_busy_check_all(i915, ctx, num_engines, classes, num_classes,
>> +                   TEST_BUSY | TEST_TRAILING_IDLE);
>> +
>> +    /**
>> +     * Test for no cross-client contamination.
>> +     */
>> +    test_each_engine("isolation", i915, ctx, e)
>> +        single(i915, ctx, e, TEST_BUSY | TEST_ISOLATION);
>> +
>> +    igt_fixture {
>> +        intel_ctx_destroy(i915, ctx);
>> +        close(i915);
>> +    }
>> +}
>> diff --git a/tests/meson.build b/tests/meson.build
>> index 7003d0641d1d..0a87755d5433 100644
>> --- a/tests/meson.build
>> +++ b/tests/meson.build
>> @@ -290,6 +290,14 @@ foreach prog : i915_progs
>>     test_list += prog
>> endforeach
>>
>> +test_executables += executable('drm_fdinfo',
>> +       join_paths('i915', 'drm_fdinfo.c'),
>> +       dependencies : test_deps + [ lib_igt_drm_fdinfo ],
>> +       install_dir : libexecdir,
>> +       install_rpath : libexecdir_rpathdir,
>> +       install : true)
>> +test_list += 'drm_fdinfo'
>> +
>> test_executables += executable('dumb_buffer', 'dumb_buffer.c',
>>        dependencies : test_deps + [ libatomic ],
>>        install_dir : libexecdir,
>> -- 
>> 2.32.0
>>
