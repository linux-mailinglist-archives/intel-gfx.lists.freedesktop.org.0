Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C76F31689A4
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 22:57:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 488466E1C0;
	Fri, 21 Feb 2020 21:57:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4062C6E183;
 Fri, 21 Feb 2020 21:57:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Feb 2020 13:57:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,469,1574150400"; d="scan'208";a="316174601"
Received: from rmfosha-dev-1.fm.intel.com (HELO [10.19.83.123])
 ([10.19.83.123])
 by orsmga001.jf.intel.com with ESMTP; 21 Feb 2020 13:57:35 -0800
To: Dale B Stimson <dale.b.stimson@intel.com>, igt-dev@lists.freedesktop.org, 
 intel-gfx@lists.freedesktop.org
References: <20200215023331.41469-1-dale.b.stimson@intel.com>
 <20200215023331.41469-3-dale.b.stimson@intel.com>
From: "Fosha, Robert M" <robert.m.fosha@intel.com>
Message-ID: <9f4932d0-f426-689e-bb64-a1b423a718a6@intel.com>
Date: Fri, 21 Feb 2020 13:47:48 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200215023331.41469-3-dale.b.stimson@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t v4 2/2] i915/gem_ctx_isolation: Check
 engine relative registers (revised)
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 2/14/20 6:33 PM, Dale B Stimson wrote:
> From: Chris Wilson <chris@chris-wilson.co.uk>
>
> Some of the non-privileged registers are at the same offset on each
> engine. We can improve our coverage for unknown HW layout by using the
> reported engine->mmio_base for relative offsets.
>
> Subsequent to sign-off by Chris Wilson, added by Dale B Stimson:
>
> Modify previous "i915/gem_ctx_isolation: Check engine relative registers"
> to support alternative mmio_base infrastructure API.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Signed-off-by: Dale B Stimson <dale.b.stimson@intel.com>

Acked-by: Robert M. Fosha <robert.m.fosha@intel.com>

> ---
>   lib/i915/gem_mmio_base.c       |   7 +-
>   tests/i915/gem_ctx_isolation.c | 229 ++++++++++++++++++++-------------
>   2 files changed, 141 insertions(+), 95 deletions(-)
>
> diff --git a/lib/i915/gem_mmio_base.c b/lib/i915/gem_mmio_base.c
> index d1b83221a..c712b4431 100644
> --- a/lib/i915/gem_mmio_base.c
> +++ b/lib/i915/gem_mmio_base.c
> @@ -286,13 +286,14 @@ struct eng_mmio_base_table_s *gem_engine_mmio_base_info_get(int fd_dev)
>   {
>   	struct eng_mmio_base_table_s *mbp = NULL;
>   
> -	/* If and when better ways are provided to find the mmio_base
> -	 * information, they may be added them here in order of preference.
> +	/* If and when more desirable ways exist to find the mmio_base
> +	 * information, they may be added here, in order of consideration.
>   	 */
>   
>   #if 0
> +	/* Anticipating a future method: */
>   	if (!mbp)
> -		mbp = _mmio_base_info_get_via_sysfs(fd_dev);
> +		mbp = _gem_engine_mmio_base_info_get_sysfs(fd_dev);
>   #endif
>   
>   	if (!mbp)
> diff --git a/tests/i915/gem_ctx_isolation.c b/tests/i915/gem_ctx_isolation.c
> index 1b66fec11..07ffbb84a 100644
> --- a/tests/i915/gem_ctx_isolation.c
> +++ b/tests/i915/gem_ctx_isolation.c
> @@ -70,6 +70,7 @@ static const struct named_register {
>   	uint32_t ignore_bits;
>   	uint32_t write_mask; /* some registers bits do not exist */
>   	bool masked;
> +	bool relative;
>   } nonpriv_registers[] = {
>   	{ "NOPID", NOCTX, RCS0, 0x2094 },
>   	{ "MI_PREDICATE_RESULT_2", NOCTX, RCS0, 0x23bc },
> @@ -109,7 +110,6 @@ static const struct named_register {
>   	{ "PS_DEPTH_COUNT_1", GEN8, RCS0, 0x22f8, 2 },
>   	{ "BB_OFFSET", GEN8, RCS0, 0x2158, .ignore_bits = 0x7 },
>   	{ "MI_PREDICATE_RESULT_1", GEN8, RCS0, 0x241c },
> -	{ "CS_GPR", GEN8, RCS0, 0x2600, 32 },
>   	{ "OA_CTX_CONTROL", GEN8, RCS0, 0x2360 },
>   	{ "OACTXID", GEN8, RCS0, 0x2364 },
>   	{ "PS_INVOCATION_COUNT_2", GEN8, RCS0, 0x2448, 2, .write_mask = ~0x3 },
> @@ -138,79 +138,56 @@ static const struct named_register {
>   
>   	{ "CTX_PREEMPT", NOCTX /* GEN10 */, RCS0, 0x2248 },
>   	{ "CS_CHICKEN1", GEN11, RCS0, 0x2580, .masked = true },
> -	{ "HDC_CHICKEN1", GEN_RANGE(10, 10), RCS0, 0x7304, .masked = true },
>   
>   	/* Privileged (enabled by w/a + FORCE_TO_NONPRIV) */
>   	{ "CTX_PREEMPT", NOCTX /* GEN9 */, RCS0, 0x2248 },
>   	{ "CS_CHICKEN1", GEN_RANGE(9, 10), RCS0, 0x2580, .masked = true },
>   	{ "COMMON_SLICE_CHICKEN2", GEN_RANGE(9, 9), RCS0, 0x7014, .masked = true },
> -	{ "HDC_CHICKEN1", GEN_RANGE(9, 9), RCS0, 0x7304, .masked = true },
> +	{ "HDC_CHICKEN1", GEN_RANGE(9, 10), RCS0, 0x7304, .masked = true },
>   	{ "SLICE_COMMON_ECO_CHICKEN1", GEN_RANGE(11, 11) /* + glk */, RCS0,  0x731c, .masked = true },
>   	{ "L3SQREG4", NOCTX /* GEN9:skl,kbl */, RCS0, 0xb118, .write_mask = ~0x1ffff0 },
>   	{ "HALF_SLICE_CHICKEN7", GEN_RANGE(11, 11), RCS0, 0xe194, .masked = true },
>   	{ "SAMPLER_MODE", GEN_RANGE(11, 11), RCS0, 0xe18c, .masked = true },
>   
> -	{ "BCS_GPR", GEN9, BCS0, 0x22600, 32 },
>   	{ "BCS_SWCTRL", GEN8, BCS0, 0x22200, .write_mask = 0x3, .masked = true },
>   
>   	{ "MFC_VDBOX1", NOCTX, VCS0, 0x12800, 64 },
>   	{ "MFC_VDBOX2", NOCTX, VCS1, 0x1c800, 64 },
>   
> -	{ "VCS0_GPR", GEN_RANGE(9, 10), VCS0, 0x12600, 32 },
> -	{ "VCS1_GPR", GEN_RANGE(9, 10), VCS1, 0x1c600, 32 },
> -	{ "VECS_GPR", GEN_RANGE(9, 10), VECS0, 0x1a600, 32 },
> -
> -	{ "VCS0_GPR", GEN11, VCS0, 0x1c0600, 32 },
> -	{ "VCS1_GPR", GEN11, VCS1, 0x1c4600, 32 },
> -	{ "VCS2_GPR", GEN11, VCS2, 0x1d0600, 32 },
> -	{ "VCS3_GPR", GEN11, VCS3, 0x1d4600, 32 },
> -	{ "VECS_GPR", GEN11, VECS0, 0x1c8600, 32 },
> +	{ "xCS_GPR", GEN9, ALL, 0x600, 32, .relative = true },
>   
>   	{}
>   }, ignore_registers[] = {
>   	{ "RCS timestamp", GEN6, ~0u, 0x2358 },
>   	{ "BCS timestamp", GEN7, ~0u, 0x22358 },
>   
> -	{ "VCS0 timestamp", GEN_RANGE(7, 10), ~0u, 0x12358 },
> -	{ "VCS1 timestamp", GEN_RANGE(7, 10), ~0u, 0x1c358 },
> -	{ "VECS timestamp", GEN_RANGE(8, 10), ~0u, 0x1a358 },
> -
> -	{ "VCS0 timestamp", GEN11, ~0u, 0x1c0358 },
> -	{ "VCS1 timestamp", GEN11, ~0u, 0x1c4358 },
> -	{ "VCS2 timestamp", GEN11, ~0u, 0x1d0358 },
> -	{ "VCS3 timestamp", GEN11, ~0u, 0x1d4358 },
> -	{ "VECS timestamp", GEN11, ~0u, 0x1c8358 },
> +	{ "xCS timestamp", GEN8, ALL, 0x358, .relative = true },
>   
>   	/* huc read only */
> -	{ "BSD0 0x2000", GEN11, ~0u, 0x1c0000 + 0x2000 },
> -	{ "BSD0 0x2000", GEN11, ~0u, 0x1c0000 + 0x2014 },
> -	{ "BSD0 0x2000", GEN11, ~0u, 0x1c0000 + 0x23b0 },
> -
> -	{ "BSD1 0x2000", GEN11, ~0u, 0x1c4000 + 0x2000 },
> -	{ "BSD1 0x2000", GEN11, ~0u, 0x1c4000 + 0x2014 },
> -	{ "BSD1 0x2000", GEN11, ~0u, 0x1c4000 + 0x23b0 },
> -
> -	{ "BSD2 0x2000", GEN11, ~0u, 0x1d0000 + 0x2000 },
> -	{ "BSD2 0x2000", GEN11, ~0u, 0x1d0000 + 0x2014 },
> -	{ "BSD2 0x2000", GEN11, ~0u, 0x1d0000 + 0x23b0 },
> -
> -	{ "BSD3 0x2000", GEN11, ~0u, 0x1d4000 + 0x2000 },
> -	{ "BSD3 0x2000", GEN11, ~0u, 0x1d4000 + 0x2014 },
> -	{ "BSD3 0x2000", GEN11, ~0u, 0x1d4000 + 0x23b0 },
> +	{ "BSD 0x2000", GEN11, ALL, 0x2000, .relative = true },
> +	{ "BSD 0x2014", GEN11, ALL, 0x2014, .relative = true },
> +	{ "BSD 0x23b0", GEN11, ALL, 0x23b0, .relative = true },
>   
>   	{}
>   };
>   
> -static const char *register_name(uint32_t offset, char *buf, size_t len)
> +static const char *
> +register_name(uint32_t offset, uint32_t mmio_base, char *buf, size_t len)
>   {
>   	for (const struct named_register *r = nonpriv_registers; r->name; r++) {
>   		unsigned int width = r->count ? 4*r->count : 4;
> -		if (offset >= r->offset && offset < r->offset + width) {
> +		uint32_t base;
> +
> +		base = r->offset;
> +		if (r->relative)
> +			base += mmio_base;
> +
> +		if (offset >= base && offset < base + width) {
>   			if (r->count <= 1)
>   				return r->name;
>   
>   			snprintf(buf, len, "%s[%d]",
> -				 r->name, (offset - r->offset)/4);
> +				 r->name, (offset - base) / 4);
>   			return buf;
>   		}
>   	}
> @@ -218,22 +195,35 @@ static const char *register_name(uint32_t offset, char *buf, size_t len)
>   	return "unknown";
>   }
>   
> -static const struct named_register *lookup_register(uint32_t offset)
> +static const struct named_register *
> +lookup_register(uint32_t offset, uint32_t mmio_base)
>   {
>   	for (const struct named_register *r = nonpriv_registers; r->name; r++) {
>   		unsigned int width = r->count ? 4*r->count : 4;
> -		if (offset >= r->offset && offset < r->offset + width)
> +		uint32_t base;
> +
> +		base = r->offset;
> +		if (r->relative)
> +			base += mmio_base;
> +
> +		if (offset >= base && offset < base + width)
>   			return r;
>   	}
>   
>   	return NULL;
>   }
>   
> -static bool ignore_register(uint32_t offset)
> +static bool ignore_register(uint32_t offset, uint32_t mmio_base)
>   {
>   	for (const struct named_register *r = ignore_registers; r->name; r++) {
>   		unsigned int width = r->count ? 4*r->count : 4;
> -		if (offset >= r->offset && offset < r->offset + width)
> +		uint32_t base;
> +
> +		base = r->offset;
> +		if (r->relative)
> +			base += mmio_base;
> +
> +		if (offset >= base && offset < base + width)
>   			return true;
>   	}
>   
> @@ -243,6 +233,7 @@ static bool ignore_register(uint32_t offset)
>   static void tmpl_regs(int fd,
>   		      uint32_t ctx,
>   		      const struct intel_execution_engine2 *e,
> +		      uint32_t mmio_base,
>   		      uint32_t handle,
>   		      uint32_t value)
>   {
> @@ -259,12 +250,20 @@ static void tmpl_regs(int fd,
>   		       I915_GEM_DOMAIN_CPU, I915_GEM_DOMAIN_CPU);
>   
>   	for (const struct named_register *r = nonpriv_registers; r->name; r++) {
> +		uint32_t offset;
> +
>   		if (!(r->engine_mask & engine_bit))
>   			continue;
>   		if (!(r->gen_mask & gen_bit))
>   			continue;
> -		for (unsigned count = r->count ?: 1, offset = r->offset;
> -		     count--; offset += 4) {
> +		if (r->relative && !mmio_base)
> +			continue;
> +
> +		offset = r->offset;
> +		if (r->relative)
> +			offset += mmio_base;
> +
> +		for (unsigned count = r->count ?: 1; count--; offset += 4) {
>   			uint32_t x = value;
>   			if (r->write_mask)
>   				x &= r->write_mask;
> @@ -279,6 +278,7 @@ static void tmpl_regs(int fd,
>   static uint32_t read_regs(int fd,
>   			  uint32_t ctx,
>   			  const struct intel_execution_engine2 *e,
> +			  uint32_t mmio_base,
>   			  unsigned int flags)
>   {
>   	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
> @@ -311,13 +311,20 @@ static uint32_t read_regs(int fd,
>   
>   	n = 0;
>   	for (const struct named_register *r = nonpriv_registers; r->name; r++) {
> +		uint32_t offset;
> +
>   		if (!(r->engine_mask & engine_bit))
>   			continue;
>   		if (!(r->gen_mask & gen_bit))
>   			continue;
> +		if (r->relative && !mmio_base)
> +			continue;
> +
> +		offset = r->offset;
> +		if (r->relative)
> +			offset += mmio_base;
>   
> -		for (unsigned count = r->count ?: 1, offset = r->offset;
> -		     count--; offset += 4) {
> +		for (unsigned count = r->count ?: 1; count--; offset += 4) {
>   			*b++ = 0x24 << 23 | (1 + r64b); /* SRM */
>   			*b++ = offset;
>   			reloc[n].target_handle = obj[0].handle;
> @@ -352,6 +359,7 @@ static uint32_t read_regs(int fd,
>   static void write_regs(int fd,
>   		       uint32_t ctx,
>   		       const struct intel_execution_engine2 *e,
> +		       uint32_t mmio_base,
>   		       unsigned int flags,
>   		       uint32_t value)
>   {
> @@ -372,12 +380,20 @@ static void write_regs(int fd,
>   	gem_set_domain(fd, obj.handle,
>   		       I915_GEM_DOMAIN_CPU, I915_GEM_DOMAIN_CPU);
>   	for (const struct named_register *r = nonpriv_registers; r->name; r++) {
> +		uint32_t offset;
> +
>   		if (!(r->engine_mask & engine_bit))
>   			continue;
>   		if (!(r->gen_mask & gen_bit))
>   			continue;
> -		for (unsigned count = r->count ?: 1, offset = r->offset;
> -		     count--; offset += 4) {
> +		if (r->relative && !mmio_base)
> +			continue;
> +
> +		offset = r->offset;
> +		if (r->relative)
> +			offset += mmio_base;
> +
> +		for (unsigned count = r->count ?: 1; count--; offset += 4) {
>   			uint32_t x = value;
>   			if (r->write_mask)
>   				x &= r->write_mask;
> @@ -404,6 +420,7 @@ static void write_regs(int fd,
>   static void restore_regs(int fd,
>   			 uint32_t ctx,
>   			 const struct intel_execution_engine2 *e,
> +			 uint32_t mmio_base,
>   			 unsigned int flags,
>   			 uint32_t regs)
>   {
> @@ -437,13 +454,20 @@ static void restore_regs(int fd,
>   
>   	n = 0;
>   	for (const struct named_register *r = nonpriv_registers; r->name; r++) {
> +		uint32_t offset;
> +
>   		if (!(r->engine_mask & engine_bit))
>   			continue;
>   		if (!(r->gen_mask & gen_bit))
>   			continue;
> +		if (r->relative && !mmio_base)
> +			continue;
>   
> -		for (unsigned count = r->count ?: 1, offset = r->offset;
> -		     count--; offset += 4) {
> +		offset = r->offset;
> +		if (r->relative)
> +			offset += mmio_base;
> +
> +		for (unsigned count = r->count ?: 1; count--; offset += 4) {
>   			*b++ = 0x29 << 23 | (1 + r64b); /* LRM */
>   			*b++ = offset;
>   			reloc[n].target_handle = obj[0].handle;
> @@ -474,6 +498,7 @@ static void restore_regs(int fd,
>   __attribute__((unused))
>   static void dump_regs(int fd,
>   		      const struct intel_execution_engine2 *e,
> +		      uint32_t mmio_base,
>   		      unsigned int regs)
>   {
>   	const int gen = intel_gen(intel_get_drm_devid(fd));
> @@ -489,25 +514,35 @@ static void dump_regs(int fd,
>   	gem_set_domain(fd, regs, I915_GEM_DOMAIN_CPU, 0);
>   
>   	for (const struct named_register *r = nonpriv_registers; r->name; r++) {
> +		uint32_t offset;
> +
>   		if (!(r->engine_mask & engine_bit))
>   			continue;
>   		if (!(r->gen_mask & gen_bit))
>   			continue;
> +		if (r->relative && !mmio_base)
> +			continue;
> +
> +		offset = r->offset;
> +		if (r->relative)
> +			offset += mmio_base;
>   
>   		if (r->count <= 1) {
>   			igt_debug("0x%04x (%s): 0x%08x\n",
> -				  r->offset, r->name, out[r->offset/4]);
> +				  offset, r->name, out[offset / 4]);
>   		} else {
>   			for (unsigned x = 0; x < r->count; x++)
>   				igt_debug("0x%04x (%s[%d]): 0x%08x\n",
> -					  r->offset+4*x, r->name, x,
> -					  out[r->offset/4 + x]);
> +					  offset + 4 * x, r->name, x,
> +					  out[offset / 4 + x]);
>   		}
>   	}
>   	munmap(out, regs_size);
>   }
>   
> -static void compare_regs(int fd, uint32_t A, uint32_t B, const char *who)
> +static void compare_regs(int fd, const struct intel_execution_engine2 *e,
> +			 uint32_t mmio_base,
> +			 uint32_t A, uint32_t B, const char *who)
>   {
>   	unsigned int num_errors;
>   	unsigned int regs_size;
> @@ -532,11 +567,11 @@ static void compare_regs(int fd, uint32_t A, uint32_t B, const char *who)
>   		if (a[n] == b[n])
>   			continue;
>   
> -		if (ignore_register(offset))
> +		if (ignore_register(offset, mmio_base))
>   			continue;
>   
>   		mask = ~0u;
> -		r = lookup_register(offset);
> +		r = lookup_register(offset, mmio_base);
>   		if (r && r->masked)
>   			mask >>= 16;
>   		if (r && r->ignore_bits)
> @@ -547,7 +582,7 @@ static void compare_regs(int fd, uint32_t A, uint32_t B, const char *who)
>   
>   		igt_warn("Register 0x%04x (%s): A=%08x B=%08x\n",
>   			 offset,
> -			 register_name(offset, buf, sizeof(buf)),
> +			 register_name(offset, mmio_base, buf, sizeof(buf)),
>   			 a[n] & mask, b[n] & mask);
>   		num_errors++;
>   	}
> @@ -561,6 +596,7 @@ static void compare_regs(int fd, uint32_t A, uint32_t B, const char *who)
>   
>   static void nonpriv(int fd,
>   		    const struct intel_execution_engine2 *e,
> +		    uint32_t mmio_base,
>   		    unsigned int flags)
>   {
>   	static const uint32_t values[] = {
> @@ -588,16 +624,16 @@ static void nonpriv(int fd,
>   
>   		ctx = gem_context_clone_with_engines(fd, 0);
>   
> -		tmpl = read_regs(fd, ctx, e, flags);
> -		regs[0] = read_regs(fd, ctx, e, flags);
> +		tmpl = read_regs(fd, ctx, e, mmio_base, flags);
> +		regs[0] = read_regs(fd, ctx, e, mmio_base, flags);
>   
> -		tmpl_regs(fd, ctx, e, tmpl, values[v]);
> +		tmpl_regs(fd, ctx, e, mmio_base, tmpl, values[v]);
>   
>   		spin = igt_spin_new(fd, .ctx = ctx, .engine = e->flags);
>   
>   		igt_debug("%s[%d]: Setting all registers to 0x%08x\n",
>   			  __func__, v, values[v]);
> -		write_regs(fd, ctx, e, flags, values[v]);
> +		write_regs(fd, ctx, e, mmio_base, flags, values[v]);
>   
>   		if (flags & DIRTY2) {
>   			uint32_t sw = gem_context_clone_with_engines(fd, 0);
> @@ -628,17 +664,17 @@ static void nonpriv(int fd,
>   			gem_context_destroy(fd, sw);
>   		}
>   
> -		regs[1] = read_regs(fd, ctx, e, flags);
> +		regs[1] = read_regs(fd, ctx, e, mmio_base, flags);
>   
>   		/*
>   		 * Restore the original register values before the HW idles.
>   		 * Or else it may never restart!
>   		 */
> -		restore_regs(fd, ctx, e, flags, regs[0]);
> +		restore_regs(fd, ctx, e, mmio_base, flags, regs[0]);
>   
>   		igt_spin_free(fd, spin);
>   
> -		compare_regs(fd, tmpl, regs[1], "nonpriv read/writes");
> +		compare_regs(fd, e, mmio_base, tmpl, regs[1], "nonpriv read/writes");
>   
>   		for (int n = 0; n < ARRAY_SIZE(regs); n++)
>   			gem_close(fd, regs[n]);
> @@ -649,6 +685,7 @@ static void nonpriv(int fd,
>   
>   static void isolation(int fd,
>   		      const struct intel_execution_engine2 *e,
> +		      uint32_t mmio_base,
>   		      unsigned int flags)
>   {
>   	static const uint32_t values[] = {
> @@ -670,14 +707,14 @@ static void isolation(int fd,
>   		uint32_t ctx[2], regs[2], tmp;
>   
>   		ctx[0] = gem_context_clone_with_engines(fd, 0);
> -		regs[0] = read_regs(fd, ctx[0], e, flags);
> +		regs[0] = read_regs(fd, ctx[0], e, mmio_base, flags);
>   
>   		spin = igt_spin_new(fd, .ctx = ctx[0], .engine = e->flags);
>   
>   		if (flags & DIRTY1) {
>   			igt_debug("%s[%d]: Setting all registers of ctx 0 to 0x%08x\n",
>   				  __func__, v, values[v]);
> -			write_regs(fd, ctx[0], e, flags, values[v]);
> +			write_regs(fd, ctx[0], e, mmio_base, flags, values[v]);
>   		}
>   
>   		/*
> @@ -689,26 +726,27 @@ static void isolation(int fd,
>   		 * see the corruption from the previous context instead!
>   		 */
>   		ctx[1] = gem_context_clone_with_engines(fd, 0);
> -		regs[1] = read_regs(fd, ctx[1], e, flags);
> +		regs[1] = read_regs(fd, ctx[1], e, mmio_base, flags);
>   
>   		if (flags & DIRTY2) {
>   			igt_debug("%s[%d]: Setting all registers of ctx 1 to 0x%08x\n",
>   				  __func__, v, ~values[v]);
> -			write_regs(fd, ctx[1], e, flags, ~values[v]);
> +			write_regs(fd, ctx[1], e, mmio_base, flags, ~values[v]);
>   		}
>   
>   		/*
>   		 * Restore the original register values before the HW idles.
>   		 * Or else it may never restart!
>   		 */
> -		tmp = read_regs(fd, ctx[0], e, flags);
> -		restore_regs(fd, ctx[0], e, flags, regs[0]);
> +		tmp = read_regs(fd, ctx[0], e, mmio_base, flags);
> +		restore_regs(fd, ctx[0], e, mmio_base, flags, regs[0]);
>   
>   		igt_spin_free(fd, spin);
>   
>   		if (!(flags & DIRTY1))
> -			compare_regs(fd, regs[0], tmp, "two reads of the same ctx");
> -		compare_regs(fd, regs[0], regs[1], "two virgin contexts");
> +			compare_regs(fd, e, mmio_base, regs[0], tmp,
> +				     "two reads of the same ctx");
> +		compare_regs(fd, e, mmio_base, regs[0], regs[1], "two virgin contexts");
>   
>   		for (int n = 0; n < ARRAY_SIZE(ctx); n++) {
>   			gem_close(fd, regs[n]);
> @@ -758,6 +796,7 @@ static void inject_reset_context(int fd, const struct intel_execution_engine2 *e
>   
>   static void preservation(int fd,
>   			 const struct intel_execution_engine2 *e,
> +			 uint32_t mmio_base,
>   			 unsigned int flags)
>   {
>   	static const uint32_t values[] = {
> @@ -778,15 +817,15 @@ static void preservation(int fd,
>   
>   	ctx[num_values] = gem_context_clone_with_engines(fd, 0);
>   	spin = igt_spin_new(fd, .ctx = ctx[num_values], .engine = e->flags);
> -	regs[num_values][0] = read_regs(fd, ctx[num_values], e, flags);
> +	regs[num_values][0] = read_regs(fd, ctx[num_values], e, mmio_base, flags);
>   	for (int v = 0; v < num_values; v++) {
>   		ctx[v] = gem_context_clone_with_engines(fd, 0);
> -		write_regs(fd, ctx[v], e, flags, values[v]);
> +		write_regs(fd, ctx[v], e, mmio_base, flags, values[v]);
>   
> -		regs[v][0] = read_regs(fd, ctx[v], e, flags);
> +		regs[v][0] = read_regs(fd, ctx[v], e, mmio_base, flags);
>   
>   	}
> -	gem_close(fd, read_regs(fd, ctx[num_values], e, flags));
> +	gem_close(fd, read_regs(fd, ctx[num_values], e, mmio_base, flags));
>   	igt_spin_free(fd, spin);
>   
>   	if (flags & RESET)
> @@ -819,21 +858,21 @@ static void preservation(int fd,
>   
>   	spin = igt_spin_new(fd, .ctx = ctx[num_values], .engine = e->flags);
>   	for (int v = 0; v < num_values; v++)
> -		regs[v][1] = read_regs(fd, ctx[v], e, flags);
> -	regs[num_values][1] = read_regs(fd, ctx[num_values], e, flags);
> +		regs[v][1] = read_regs(fd, ctx[v], e, mmio_base, flags);
> +	regs[num_values][1] = read_regs(fd, ctx[num_values], e, mmio_base, flags);
>   	igt_spin_free(fd, spin);
>   
>   	for (int v = 0; v < num_values; v++) {
>   		char buf[80];
>   
>   		snprintf(buf, sizeof(buf), "dirty %x context\n", values[v]);
> -		compare_regs(fd, regs[v][0], regs[v][1], buf);
> +		compare_regs(fd, e, mmio_base, regs[v][0], regs[v][1], buf);
>   
>   		gem_close(fd, regs[v][0]);
>   		gem_close(fd, regs[v][1]);
>   		gem_context_destroy(fd, ctx[v]);
>   	}
> -	compare_regs(fd, regs[num_values][0], regs[num_values][1], "clean");
> +	compare_regs(fd, e, mmio_base, regs[num_values][0], regs[num_values][1], "clean");
>   	gem_context_destroy(fd, ctx[num_values]);
>   }
>   
> @@ -857,6 +896,8 @@ igt_main
>   	unsigned int has_context_isolation = 0;
>   	const struct intel_execution_engine2 *e;
>   	int fd = -1;
> +	struct eng_mmio_base_table_s *mbp = NULL;
> +	uint32_t mmio_base = 0;
>   
>   	igt_fixture {
>   		int gen;
> @@ -873,36 +914,38 @@ igt_main
>   		igt_warn_on_f(gen > LAST_KNOWN_GEN,
>   			      "GEN not recognized! Test needs to be updated to run.\n");
>   		igt_skip_on(gen > LAST_KNOWN_GEN);
> +
> +		mbp = gem_engine_mmio_base_info_get(fd);
>   	}
>   
>   	/* __for_each_physical_engine switches context to all engines. */
> -
>   	__for_each_physical_engine(fd, e) {
>   		igt_subtest_group {
>   			igt_fixture {
>   				igt_require(has_context_isolation & (1 << e->class));
>   				gem_require_ring(fd, e->flags);
>   				igt_fork_hang_detector(fd);
> +				mmio_base = gem_engine_mmio_base(mbp, e->name);
>   			}
>   
>   			igt_subtest_f("%s-nonpriv", e->name)
> -				nonpriv(fd, e, 0);
> +				nonpriv(fd, e, mmio_base, 0);
>   			igt_subtest_f("%s-nonpriv-switch", e->name)
> -				nonpriv(fd, e, DIRTY2);
> +				nonpriv(fd, e, mmio_base, DIRTY2);
>   
>   			igt_subtest_f("%s-clean", e->name)
> -				isolation(fd, e, 0);
> +				isolation(fd, e, mmio_base, 0);
>   			igt_subtest_f("%s-dirty-create", e->name)
> -				isolation(fd, e, DIRTY1);
> +				isolation(fd, e, mmio_base, DIRTY1);
>   			igt_subtest_f("%s-dirty-switch", e->name)
> -				isolation(fd, e, DIRTY2);
> +				isolation(fd, e, mmio_base, DIRTY2);
>   
>   			igt_subtest_f("%s-none", e->name)
> -				preservation(fd, e, 0);
> +				preservation(fd, e, mmio_base, 0);
>   			igt_subtest_f("%s-S3", e->name)
> -				preservation(fd, e, S3);
> +				preservation(fd, e, mmio_base, S3);
>   			igt_subtest_f("%s-S4", e->name)
> -				preservation(fd, e, S4);
> +				preservation(fd, e, mmio_base, S4);
>   
>   			igt_fixture {
>   				igt_stop_hang_detector();
> @@ -910,9 +953,11 @@ igt_main
>   
>   			igt_subtest_f("%s-reset", e->name) {
>   				igt_hang_t hang = igt_allow_hang(fd, 0, 0);
> -				preservation(fd, e, RESET);
> +				preservation(fd, e, mmio_base, RESET);
>   				igt_disallow_hang(fd, hang);
>   			}
>   		}
>   	}
> +
> +	gem_engine_mmio_base_info_free(mbp);
>   }

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
