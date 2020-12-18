Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A052E2DDCEE
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Dec 2020 03:32:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15A9189807;
	Fri, 18 Dec 2020 02:32:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28DF889807
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Dec 2020 02:32:50 +0000 (UTC)
IronPort-SDR: +qloJkrTZ5mX4EWix1HKgh8L3OOn5Ujk5JKoSHjnmJxnill6DpLj4FVHy0VsgIw4mx1Lytqpdt
 3PUzBbYJgxUA==
X-IronPort-AV: E=McAfee;i="6000,8403,9838"; a="239458028"
X-IronPort-AV: E=Sophos;i="5.78,428,1599548400"; d="scan'208";a="239458028"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2020 18:32:49 -0800
IronPort-SDR: 87aeQekHQvzn/tk7/3V2Prc/wvwLqz2/xRpDw90tfubP5BvPwZAXneJbtx9wloACQvA0DdRQ2u
 eB/lf8lbIUdQ==
X-IronPort-AV: E=Sophos;i="5.78,428,1599548400"; d="scan'208";a="353675241"
Received: from orsosgc001.ra.intel.com ([10.23.184.150])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2020 18:32:49 -0800
Date: Thu, 17 Dec 2020 18:32:49 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20201218023249.GB45615@orsosgc001.ra.intel.com>
References: <20201215214901.10038-1-umesh.nerlige.ramappa@intel.com>
 <ca9fac19-a681-3ec1-a2fd-16166c8ad6e4@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ca9fac19-a681-3ec1-a2fd-16166c8ad6e4@linux.intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH 1/2] i915/perf: Move gen specific OA formats
 to single array
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 16, 2020 at 09:25:35AM +0000, Tvrtko Ursulin wrote:
>
>On 15/12/2020 21:49, Umesh Nerlige Ramappa wrote:
>>Variations in OA formats in the different gens has led to creation of
>>several sparse arrays to store the formats.
>>
>>Move oa formats into a single array and add the supported range of
>>platforms for the oa formats.
>>
>>Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>>---
>>  drivers/gpu/drm/i915/i915_perf.c       | 56 ++++++++++++--------------
>>  drivers/gpu/drm/i915/i915_perf_types.h |  3 ++
>>  2 files changed, 28 insertions(+), 31 deletions(-)
>>
>>diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>>index f553caf4b06d..afa92cf075c4 100644
>>--- a/drivers/gpu/drm/i915/i915_perf.c
>>+++ b/drivers/gpu/drm/i915/i915_perf.c
>>@@ -298,28 +298,27 @@ static u32 i915_oa_max_sample_rate = 100000;
>>  /* XXX: beware if future OA HW adds new report formats that the current
>>   * code assumes all reports have a power-of-two size and ~(size - 1) can
>>- * be used as a mask to align the OA tail pointer.
>>+ * be used as a mask to align the OA tail pointer. Note that the platforms
>>+ * in this array specify a range (inclusive of start and end).
>>   */
>>-static const struct i915_oa_format hsw_oa_formats[I915_OA_FORMAT_MAX] = {
>>-	[I915_OA_FORMAT_A13]	    = { 0, 64 },
>>-	[I915_OA_FORMAT_A29]	    = { 1, 128 },
>>-	[I915_OA_FORMAT_A13_B8_C8]  = { 2, 128 },
>>-	/* A29_B8_C8 Disallowed as 192 bytes doesn't factor into buffer size */
>>-	[I915_OA_FORMAT_B4_C8]	    = { 4, 64 },
>>-	[I915_OA_FORMAT_A45_B8_C8]  = { 5, 256 },
>>-	[I915_OA_FORMAT_B4_C8_A16]  = { 6, 128 },
>>-	[I915_OA_FORMAT_C4_B8]	    = { 7, 64 },
>>-};
>>-
>>-static const struct i915_oa_format gen8_plus_oa_formats[I915_OA_FORMAT_MAX] = {
>>-	[I915_OA_FORMAT_A12]		    = { 0, 64 },
>>-	[I915_OA_FORMAT_A12_B8_C8]	    = { 2, 128 },
>>-	[I915_OA_FORMAT_A32u40_A4u32_B8_C8] = { 5, 256 },
>>-	[I915_OA_FORMAT_C4_B8]		    = { 7, 64 },
>>-};
>>-
>>-static const struct i915_oa_format gen12_oa_formats[I915_OA_FORMAT_MAX] = {
>>-	[I915_OA_FORMAT_A32u40_A4u32_B8_C8] = { 5, 256 },
>>+static const struct i915_oa_format oa_formats[I915_OA_FORMAT_MAX] = {
>>+	/* haswell */
>>+	[I915_OA_FORMAT_A13]                    = { 0, 64, INTEL_IVYBRIDGE, INTEL_HASWELL },
>>+	[I915_OA_FORMAT_A29]                    = { 1, 128, INTEL_IVYBRIDGE, INTEL_HASWELL },
>>+	[I915_OA_FORMAT_A13_B8_C8]              = { 2, 128, INTEL_IVYBRIDGE, INTEL_HASWELL },
>>+	[I915_OA_FORMAT_B4_C8]                  = { 4, 64, INTEL_IVYBRIDGE, INTEL_HASWELL },
>>+	[I915_OA_FORMAT_A45_B8_C8]              = { 5, 256, INTEL_IVYBRIDGE, INTEL_HASWELL },
>>+	[I915_OA_FORMAT_B4_C8_A16]              = { 6, 128, INTEL_IVYBRIDGE, INTEL_HASWELL },
>>+
>>+	/* haswell+ upto but not including tigerlake */
>>+	[I915_OA_FORMAT_C4_B8]                  = { 7, 64, INTEL_IVYBRIDGE, INTEL_TIGERLAKE - 1 },
>>+
>>+	/* gen8+ upto but not including tigerlake */
>>+	[I915_OA_FORMAT_A12]                    = { 0, 64, INTEL_BROADWELL, INTEL_TIGERLAKE - 1 },
>>+	[I915_OA_FORMAT_A12_B8_C8]              = { 2, 128, INTEL_BROADWELL, INTEL_TIGERLAKE - 1 },
>>+
>>+	/* gen8+ */
>>+	[I915_OA_FORMAT_A32u40_A4u32_B8_C8]     = { 5, 256, INTEL_BROADWELL, INTEL_MAX_PLATFORMS - 1 },
>>  };
>>  #define SAMPLE_OA_REPORT      (1<<0)
>>@@ -3575,6 +3574,7 @@ static int read_properties_unlocked(struct i915_perf *perf,
>>  	for (i = 0; i < n_props; i++) {
>>  		u64 oa_period, oa_freq_hz;
>>  		u64 id, value;
>>+		enum intel_platform p = INTEL_INFO(perf->i915)->platform;
>>  		ret = get_user(id, uprop);
>>  		if (ret)
>>@@ -3611,8 +3611,9 @@ static int read_properties_unlocked(struct i915_perf *perf,
>>  					  value);
>>  				return -EINVAL;
>>  			}
>>-			if (!perf->oa_formats[value].size) {
>>-				DRM_DEBUG("Unsupported OA report format %llu\n",
>>+			if (p < perf->oa_formats[value].start ||
>>+			    p > perf->oa_formats[value].end) {
>>+				DRM_DEBUG("OA report format not supported %llu\n",
>>  					  value);
>>  				return -EINVAL;
>>  			}
>>@@ -4270,6 +4271,7 @@ void i915_perf_init(struct drm_i915_private *i915)
>>  	/* XXX const struct i915_perf_ops! */
>>+	perf->oa_formats = oa_formats;
>>  	if (IS_HASWELL(i915)) {
>>  		perf->ops.is_valid_b_counter_reg = gen7_is_valid_b_counter_addr;
>>  		perf->ops.is_valid_mux_reg = hsw_is_valid_mux_addr;
>>@@ -4280,8 +4282,6 @@ void i915_perf_init(struct drm_i915_private *i915)
>>  		perf->ops.oa_disable = gen7_oa_disable;
>>  		perf->ops.read = gen7_oa_read;
>>  		perf->ops.oa_hw_tail_read = gen7_oa_hw_tail_read;
>>-
>>-		perf->oa_formats = hsw_oa_formats;
>>  	} else if (HAS_LOGICAL_RING_CONTEXTS(i915)) {
>>  		/* Note: that although we could theoretically also support the
>>  		 * legacy ringbuffer mode on BDW (and earlier iterations of
>>@@ -4292,8 +4292,6 @@ void i915_perf_init(struct drm_i915_private *i915)
>>  		perf->ops.read = gen8_oa_read;
>>  		if (IS_GEN_RANGE(i915, 8, 9)) {
>>-			perf->oa_formats = gen8_plus_oa_formats;
>>-
>>  			perf->ops.is_valid_b_counter_reg =
>>  				gen7_is_valid_b_counter_addr;
>>  			perf->ops.is_valid_mux_reg =
>>@@ -4324,8 +4322,6 @@ void i915_perf_init(struct drm_i915_private *i915)
>>  				perf->gen8_valid_ctx_bit = BIT(16);
>>  			}
>>  		} else if (IS_GEN_RANGE(i915, 10, 11)) {
>>-			perf->oa_formats = gen8_plus_oa_formats;
>>-
>>  			perf->ops.is_valid_b_counter_reg =
>>  				gen7_is_valid_b_counter_addr;
>>  			perf->ops.is_valid_mux_reg =
>>@@ -4348,8 +4344,6 @@ void i915_perf_init(struct drm_i915_private *i915)
>>  			}
>>  			perf->gen8_valid_ctx_bit = BIT(16);
>>  		} else if (IS_GEN(i915, 12)) {
>>-			perf->oa_formats = gen12_oa_formats;
>>-
>>  			perf->ops.is_valid_b_counter_reg =
>>  				gen12_is_valid_b_counter_addr;
>>  			perf->ops.is_valid_mux_reg =
>>diff --git a/drivers/gpu/drm/i915/i915_perf_types.h b/drivers/gpu/drm/i915/i915_perf_types.h
>>index a36a455ae336..84dceb743ebc 100644
>>--- a/drivers/gpu/drm/i915/i915_perf_types.h
>>+++ b/drivers/gpu/drm/i915/i915_perf_types.h
>>@@ -19,6 +19,7 @@
>>  #include "gt/intel_sseu.h"
>>  #include "i915_reg.h"
>>  #include "intel_wakeref.h"
>>+#include "intel_device_info.h"
>>  struct drm_i915_private;
>>  struct file;
>>@@ -32,6 +33,8 @@ struct intel_engine_cs;
>>  struct i915_oa_format {
>>  	u32 format;
>>  	int size;
>>+	enum intel_platform start;
>>+	enum intel_platform end;
>
>As a drive by only - I question the concept of thinking about 
>platforms enums as ordered and having things like INTEL_TIGERLAKE - 1 
>in the code. It's completely novel concept and I think fragile. Order 
>there is purely the order of upstreaming and not stable.
>
>Suggestions wise, if the rules are Gen based you could use a mask, but 
>if they are truly platform based then it is more tricky. However 
>current code does use gen ranges to assign them, so would a genmask 
>really not fit?

Hmm, the rules are platform-based. A mask would be ideal, but the last I 
thought about it, it felt more complex than this solution. This code 
would have to maintain a mask of supported platforms (and subplatforms) 
for each entry (preferably in the same format as runtime info -> 
platform_mask).  Then we would just AND this mask with the 
platform_mask/s to check for support. Let me know if that's what you 
have in mind, then I can give it a try.

Thanks,
Umesh

>
>Regards,
>
>Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
