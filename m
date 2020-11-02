Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FD112A3110
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Nov 2020 18:14:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5D9689D57;
	Mon,  2 Nov 2020 17:14:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D6A489D57;
 Mon,  2 Nov 2020 17:14:30 +0000 (UTC)
IronPort-SDR: oaKABEbc8qaU75SVEwTXmgmXPuJLgrOT9ZkO9RILPhmxZhujuuwtbtJR4RPokvLyNBU25FOZIz
 NaJOCENxamxg==
X-IronPort-AV: E=McAfee;i="6000,8403,9793"; a="166327208"
X-IronPort-AV: E=Sophos;i="5.77,445,1596524400"; d="scan'208";a="166327208"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2020 09:14:29 -0800
IronPort-SDR: kgp3yAXf2mp17zOUsICeMFZh7f3eQIR8P4r/jM0GSuwPuZ5Hahibz7Ncd4z/767jsIFB4Q4W9y
 rBuav59Ul7bA==
X-IronPort-AV: E=Sophos;i="5.77,445,1596524400"; d="scan'208";a="538097301"
Received: from obarniv1-mobl.ger.corp.intel.com (HELO [10.214.212.214])
 ([10.214.212.214])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2020 09:14:27 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, igt-dev@lists.freedesktop.org
References: <20201102153334.3732960-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <966e4a04-0388-a555-5029-c9b5efb4a2c0@linux.intel.com>
Date: Mon, 2 Nov 2020 17:14:24 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201102153334.3732960-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t] gem_wsim: Use CTX_TIMESTAMP for timed
 spinners
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


On 02/11/2020 15:33, Chris Wilson wrote:
> Use MI_MATH and MI_COND_BBE we can construct a loop that runs for a
> precise number of clock cycles, as measured by the CTX_TIMESTAMP. We use
> the CTX_TIMESTAMP (as opposed to the CS_TIMESTAMP) so that the elapsed
> time is measured local to the context, and the length of the batch is
> unaffected by preemption. Since the clock ticks at a known frequency, we
> can directly translate the batch durations into cycles and so remove the
> requirement for nop calibration, and the often excessively large nop
> batches.
> 
> The downside to this is that we need to use engine local registers, and
> before gen11 there is no support in the CS for relative mmio and so this
> technique does not support transparent load balancing on a virtual
> engine before Icelake.

I am enthusiastic, just that I don't have a local Gen11+ DUT but that's 
secondary.

> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   benchmarks/gem_wsim.c | 524 ++++++++++++++----------------------------
>   1 file changed, 169 insertions(+), 355 deletions(-)
> 
> diff --git a/benchmarks/gem_wsim.c b/benchmarks/gem_wsim.c
> index dbb46b9aa..5d67468d1 100644
> --- a/benchmarks/gem_wsim.c
> +++ b/benchmarks/gem_wsim.c
> @@ -176,10 +176,9 @@ struct w_step
>   
>   	struct drm_i915_gem_execbuffer2 eb;
>   	struct drm_i915_gem_exec_object2 *obj;
> -	struct drm_i915_gem_relocation_entry reloc[1];
> -	unsigned long bb_sz;
> +	struct drm_i915_gem_relocation_entry reloc[3];
>   	uint32_t bb_handle;
> -	uint32_t *recursive_bb_start;
> +	uint32_t *bb_duration;
>   };
>   
>   struct ctx {
> @@ -227,10 +226,6 @@ struct workload
>   	unsigned int nrequest[NUM_ENGINES];
>   };
>   
> -static const unsigned int nop_calibration_us = 1000;
> -static bool has_nop_calibration = false;
> -static bool sequential = true;
> -
>   static unsigned int master_prng;
>   
>   static int verbose = 1;
> @@ -253,59 +248,67 @@ static const char *ring_str_map[NUM_ENGINES] = {
>   	[VECS] = "VECS",
>   };
>   
> -/* stores calibrations for particular engines */
> -static unsigned long engine_calib_map[NUM_ENGINES];
> -
> -static enum intel_engine_id
> -ci_to_engine_id(int class, int instance)
> -{
> -	static const struct {
> -		int class;
> -		int instance;
> -		unsigned int id;
> -	} map[] = {
> -		{ I915_ENGINE_CLASS_RENDER, 0, RCS },
> -		{ I915_ENGINE_CLASS_COPY, 0, BCS },
> -		{ I915_ENGINE_CLASS_VIDEO, 0, VCS1 },
> -		{ I915_ENGINE_CLASS_VIDEO, 1, VCS2 },
> -		{ I915_ENGINE_CLASS_VIDEO, 2, VCS2 }, /* FIXME/ICL */
> -		{ I915_ENGINE_CLASS_VIDEO_ENHANCE, 0, VECS },
> +static int read_timestamp_frequency(int i915)
> +{
> +	int value = 0;
> +	drm_i915_getparam_t gp = {
> +		.value = &value,
> +		.param = I915_PARAM_CS_TIMESTAMP_FREQUENCY,
>   	};
> -
> -	unsigned int i;
> -
> -	for (i = 0; i < ARRAY_SIZE(map); i++) {
> -		if (class == map[i].class && instance == map[i].instance)
> -			return map[i].id;
> -	}
> -	return -1;
> +	ioctl(i915, DRM_IOCTL_I915_GETPARAM, &gp);
> +	return value;
>   }
>   
> -static void
> -apply_unset_calibrations(unsigned long raw_number)
> +static uint64_t div64_u64_round_up(uint64_t x, uint64_t y)
>   {
> -	for (int i = 0; i < NUM_ENGINES; i++)
> -		engine_calib_map[i] += engine_calib_map[i] ? 0 : raw_number;
> +	return (x + y - 1) / y;
>   }
>   
> -static void
> -print_engine_calibrations(void)
> +static uint64_t ns_to_ctx_ticks(uint64_t ns)
>   {
> -	bool first_entry = true;
> +	static long f;
>   
> -	printf("Nop calibration for %uus delay is: ", nop_calibration_us);
> -	for (int i = 0; i < NUM_ENGINES; i++) {
> -		/* skip engines not present and DEFAULT and VCS */
> -		if (i != DEFAULT && i != VCS && engine_calib_map[i]) {
> -			if (first_entry) {
> -				printf("%s=%lu", ring_str_map[i], engine_calib_map[i]);
> -				first_entry = false;
> -			} else {
> -				printf(",%s=%lu", ring_str_map[i], engine_calib_map[i]);
> -			}
> -		}
> +	if (!f) {
> +		f = read_timestamp_frequency(fd);
> +		if (intel_gen(intel_get_drm_devid(fd)) == 11)
> +			f = 12500000; /* icl!!! are you feeling alright? */

What does the comment refer to?

Should there be an assert here if < gen11?

>   	}
> -	printf("\n");
> +
> +	return div64_u64_round_up(ns * f, NSEC_PER_SEC);
> +}
> +
> +#define MI_INSTR(opcode, flags) (((opcode) << 23) | (flags))
> +
> +#define MI_MATH(x)                      MI_INSTR(0x1a, (x) - 1)
> +#define MI_MATH_INSTR(opcode, op1, op2) ((opcode) << 20 | (op1) << 10 | (op2))
> +/* Opcodes for MI_MATH_INSTR */
> +#define   MI_MATH_NOOP                  MI_MATH_INSTR(0x000, 0x0, 0x0)
> +#define   MI_MATH_LOAD(op1, op2)        MI_MATH_INSTR(0x080, op1, op2)
> +#define   MI_MATH_LOADINV(op1, op2)     MI_MATH_INSTR(0x480, op1, op2)
> +#define   MI_MATH_LOAD0(op1)            MI_MATH_INSTR(0x081, op1)
> +#define   MI_MATH_LOAD1(op1)            MI_MATH_INSTR(0x481, op1)
> +#define   MI_MATH_ADD                   MI_MATH_INSTR(0x100, 0x0, 0x0)
> +#define   MI_MATH_SUB                   MI_MATH_INSTR(0x101, 0x0, 0x0)
> +#define   MI_MATH_AND                   MI_MATH_INSTR(0x102, 0x0, 0x0)
> +#define   MI_MATH_OR                    MI_MATH_INSTR(0x103, 0x0, 0x0)
> +#define   MI_MATH_XOR                   MI_MATH_INSTR(0x104, 0x0, 0x0)
> +#define   MI_MATH_STORE(op1, op2)       MI_MATH_INSTR(0x180, op1, op2)
> +#define   MI_MATH_STOREINV(op1, op2)    MI_MATH_INSTR(0x580, op1, op2)
> +/* Registers used as operands in MI_MATH_INSTR */
> +#define   MI_MATH_REG(x)                (x)
> +#define   MI_MATH_REG_SRCA              0x20
> +#define   MI_MATH_REG_SRCB              0x21
> +#define   MI_MATH_REG_ACCU              0x31
> +#define   MI_MATH_REG_ZF                0x32
> +#define   MI_MATH_REG_CF                0x33
> +
> +#define MI_LOAD_REGISTER_REG    MI_INSTR(0x2A, 1)
> +#define   MI_CS_MMIO_DST BIT(19)
> +#define   MI_CS_MMIO_SRC BIT(18)
> +
> +static unsigned int offset_in_page(void *addr)
> +{
> +	return (uintptr_t)addr & 4095;
>   }
>   
>   static void add_dep(struct deps *deps, struct dep_entry entry)
> @@ -1392,91 +1395,116 @@ __get_ctx(struct workload *wrk, const struct w_step *w)
>   	return &wrk->ctx_list[w->context];
>   }
>   
> -static unsigned long
> -__get_bb_sz(const struct w_step *w, unsigned int duration)
> -{
> -	enum intel_engine_id engine = w->engine;
> -	struct ctx *ctx = __get_ctx(w->wrk, w);
> -	unsigned long d;
> -
> -	if (ctx->engine_map && engine == DEFAULT)
> -		/* Assume first engine calibration. */
> -		engine = ctx->engine_map[0];
> -
> -	igt_assert(engine_calib_map[engine]);
> -	d = ALIGN(duration * engine_calib_map[engine] * sizeof(uint32_t) /
> -		  nop_calibration_us,
> -		  sizeof(uint32_t));
> -
> -	return d;
> -}
> -
> -static unsigned long
> -get_bb_sz(const struct w_step *w, unsigned int duration)
> +static uint32_t mmio_base(int i915, enum intel_engine_id engine, int gen)
>   {
> -	unsigned long d = __get_bb_sz(w, duration);
> -
> -	igt_assert(d);
> +	const char *name;
>   
> -	return d;
> -}
> +	if (gen >= 11)
> +		return 0;
>   
> -static void init_bb(struct w_step *w)
> -{
> -	const unsigned int arb_period =
> -			__get_bb_sz(w, w->preempt_us) / sizeof(uint32_t);
> -	const unsigned int mmap_len = ALIGN(w->bb_sz, 4096);
> -	unsigned int i;
> -	uint32_t *ptr;
> +	switch (engine) {
> +	case NUM_ENGINES:
> +	default:
> +		return 0;
>   
> -	if (w->unbound_duration || !arb_period)
> -		return;
> +	case DEFAULT:
> +	case RCS:
> +		name = "rcs0";
> +		break;
>   
> -	gem_set_domain(fd, w->bb_handle,
> -		       I915_GEM_DOMAIN_WC, I915_GEM_DOMAIN_WC);
> +	case BCS:
> +		name = "bcs0";
> +		break;
>   
> -	ptr = gem_mmap__wc(fd, w->bb_handle, 0, mmap_len, PROT_WRITE);
> +	case VCS:
> +	case VCS1:
> +		name = "vcs0";
> +		break;
> +	case VCS2:
> +		name = "vcs1";
> +		break;
>   
> -	for (i = arb_period; i < w->bb_sz / sizeof(uint32_t); i += arb_period)
> -		ptr[i] = 0x5 << 23; /* MI_ARB_CHK */
> +	case VECS:
> +		name = "vecs0";
> +		break;
> +	}
>   
> -	munmap(ptr, mmap_len);
> +	return gem_engine_mmio_base(i915, name);

Why is mmio base needed if relative addressing is used? Maybe I'll 
figure it out after reading further.

>   }
>   
> -static unsigned int terminate_bb(struct w_step *w)
> +static unsigned int create_bb(struct w_step *w, int self)
>   {
> -	const uint32_t bbe = 0xa << 23;
> -	unsigned long mmap_start, mmap_len;
> -	unsigned long batch_start = w->bb_sz;
> +	const int gen = intel_gen(intel_get_drm_devid(fd));
> +	const uint32_t base = mmio_base(fd, w->engine, gen);
> +#define CS_GPR(x) (base + 0x600 + 8 * (x))
> +#define TIMESTAMP (base + 0x3a8)
> +	const int use_64b = gen >= 8;
> +	enum { START_TS, NOW_TS };
> +	uint32_t *ptr, *cs, *jmp;
>   	unsigned int r = 0;
> -	uint32_t *ptr, *cs;
> -
> -	batch_start -= sizeof(uint32_t); /* bbend */
> -
> -	if (w->unbound_duration)
> -		batch_start -= 4 * sizeof(uint32_t); /* MI_ARB_CHK + MI_BATCH_BUFFER_START */
> -
> -	mmap_start = rounddown(batch_start, PAGE_SIZE);
> -	mmap_len = ALIGN(w->bb_sz - mmap_start, PAGE_SIZE);
>   
>   	gem_set_domain(fd, w->bb_handle,
>   		       I915_GEM_DOMAIN_WC, I915_GEM_DOMAIN_WC);
>   
> -	ptr = gem_mmap__wc(fd, w->bb_handle, mmap_start, mmap_len, PROT_WRITE);
> -	cs = (uint32_t *)((char *)ptr + batch_start - mmap_start);
> +	cs = ptr = gem_mmap__wc(fd, w->bb_handle, 0, 4096, PROT_WRITE);
>   
> -	if (w->unbound_duration) {
> -		w->reloc[r++].offset = batch_start + 2 * sizeof(uint32_t);
> -		batch_start += 4 * sizeof(uint32_t);
> +	*cs++ = MI_LOAD_REGISTER_IMM | MI_CS_MMIO_DST;
> +	*cs++ = CS_GPR(START_TS) + 4;

What is "+ 4"?

> +	*cs++ = 0;
> +	*cs++ = MI_LOAD_REGISTER_REG | MI_CS_MMIO_DST | MI_CS_MMIO_SRC;
> +	*cs++ = TIMESTAMP;
> +	*cs++ = CS_GPR(START_TS);
>   
> -		*cs++ = w->preempt_us ? 0x5 << 23 /* MI_ARB_CHK; */ : MI_NOOP;
> -		w->recursive_bb_start = cs;
> -		*cs++ = MI_BATCH_BUFFER_START | 1 << 8 | 1;
> +	if (offset_in_page(cs) & 4)
>   		*cs++ = 0;
> +	jmp = cs;
> +
> +	if (w->preempt_us)
> +		*cs++ = 0x5 << 23; /* MI_ARB_CHECK */
> +
> +	*cs++ = MI_LOAD_REGISTER_IMM | MI_CS_MMIO_DST;
> +	*cs++ = CS_GPR(NOW_TS) + 4;
> +	*cs++ = 0;
> +	*cs++ = MI_LOAD_REGISTER_REG | MI_CS_MMIO_DST | MI_CS_MMIO_SRC;
> +	*cs++ = TIMESTAMP;
> +	*cs++ = CS_GPR(NOW_TS);
> +
> +	*cs++ = MI_MATH(4);
> +	*cs++ = MI_MATH_LOAD(MI_MATH_REG_SRCA, MI_MATH_REG(NOW_TS));
> +	*cs++ = MI_MATH_LOAD(MI_MATH_REG_SRCB, MI_MATH_REG(START_TS));

MI_MATH_REG is aliased to CS_GPR?

> +	*cs++ = MI_MATH_SUB;
> +	*cs++ = MI_MATH_STOREINV(MI_MATH_REG(NOW_TS), MI_MATH_REG_ACCU);
> +
> +	*cs++ = 0x24 << 23 | (1 + use_64b) | MI_CS_MMIO_DST; /* SRM */

All others have nice defines but SRM, any special reason?

> +	*cs++ = CS_GPR(NOW_TS);
> +	w->reloc[r].target_handle = self;
> +	w->reloc[r].offset = offset_in_page(cs);
> +	*cs++ = w->reloc[r].delta = 4000;
> +	*cs++ = 0;
> +	r++;
> +
> +	/* Delay between SRM and COND_BBE to post the writes */
> +	for (int n = 0; n < 8; n++) {
> +		*cs++ = MI_INSTR(0x21, 1);
> +		*cs++ = 2048;
>   		*cs++ = 0;

Whats this instruction? Add a define so it is self-documenting?

>   	}
>   
> -	*cs = bbe;
> +	*cs++ = MI_COND_BATCH_BUFFER_END | MI_DO_COMPARE | (1 + use_64b);
> +	w->bb_duration = cs;
> +	*cs++ = 0;
> +	w->reloc[r].target_handle = self;
> +	w->reloc[r].offset = offset_in_page(cs);
> +	*cs++ = w->reloc[r].delta = 4000;
> +	*cs++ = 0;
> +	r++;
> +
> +	*cs++ = MI_BATCH_BUFFER_START | 1 << 8 | use_64b;
> +	w->reloc[r].target_handle = self;
> +	w->reloc[r].offset = offset_in_page(cs);
> +	*cs++ = w->reloc[r].delta = offset_in_page(jmp);

Presumably MI_MATH stuff relaxed the loop enough and we don't need any 
extra noops?

I would appreaciate a banner style comment explaining the batch layout 
mentioning the interesting offsets and high-level logic.

> +	*cs++ = 0;
> +	r++;
>   
>   	return r;
>   }
> @@ -1590,23 +1618,10 @@ alloc_step_batch(struct workload *wrk, struct w_step *w)
>   		igt_assert(j < nr_obj);
>   	}
>   
> -	if (w->unbound_duration)
> -		/* nops + MI_ARB_CHK + MI_BATCH_BUFFER_START */
> -		w->bb_sz = max(PAGE_SIZE, __get_bb_sz(w, w->preempt_us)) +
> -			   (1 + 3) * sizeof(uint32_t);
> -	else
> -		w->bb_sz = get_bb_sz(w, w->duration.max);
> -
> -	w->bb_handle = w->obj[j].handle =
> -		alloc_bo(fd, w->bb_sz + (w->unbound_duration ? 4096 : 0));
> -	init_bb(w);
> -	w->obj[j].relocation_count = terminate_bb(w);
> -
> -	if (w->obj[j].relocation_count) {
> -		igt_assert(w->unbound_duration);
> -		w->obj[j].relocs_ptr = to_user_pointer(&w->reloc);
> -		w->reloc[0].target_handle = j;
> -	}
> +	w->bb_handle = w->obj[j].handle = gem_create(fd, 4096);
> +	w->obj[j].relocation_count = create_bb(w, j);
> +	igt_assert(w->obj[j].relocation_count <= ARRAY_SIZE(w->reloc));
> +	w->obj[j].relocs_ptr = to_user_pointer(&w->reloc);
>   
>   	w->eb.buffers_ptr = to_user_pointer(w->obj);
>   	w->eb.buffer_count = j + 1;
> @@ -1617,8 +1632,8 @@ alloc_step_batch(struct workload *wrk, struct w_step *w)
>   	printf("%u: %u:|", w->idx, w->eb.buffer_count);
>   	for (i = 0; i <= j; i++)
>   		printf("%x|", w->obj[i].handle);
> -	printf(" %10lu flags=%llx bb=%x[%u] ctx[%u]=%u\n",
> -		w->bb_sz, w->eb.flags, w->bb_handle, j, w->context,
> +	printf(" flags=%llx bb=%x[%u] ctx[%u]=%u\n",
> +		w->eb.flags, w->bb_handle, j, w->context,
>   		get_ctxid(wrk, w));
>   #endif
>   }
> @@ -1803,7 +1818,7 @@ static void measure_active_set(struct workload *wrk)
>   		if (w->type != BATCH)
>   			continue;
>   
> -		batch_sizes += w->bb_sz;
> +		batch_sizes += 4096;
>   
>   		for (j = 0; j < w->data_deps.nr; j++) {
>   			struct dep_entry *dep = &w->data_deps.list[j];
> @@ -1904,6 +1919,10 @@ static int prepare_workload(unsigned int id, struct workload *wrk)
>   					wsim_err("Load balancing needs an engine map!\n");
>   					return 1;
>   				}
> +				if (intel_gen(intel_get_drm_devid(fd)) < 11) {
> +					wsim_err("Load balancing needs relative mmio support, gen11+!\n");
> +					return 1;
> +				}
>   				ctx->load_balance = w->load_balance;
>   			} else if (w->type == BOND) {
>   				if (!ctx->load_balance) {
> @@ -2163,15 +2182,15 @@ static int elapsed_us(const struct timespec *start, const struct timespec *end)
>   }
>   
>   static void
> -update_bb_start(struct w_step *w)
> +update_bb_start(struct workload *wrk, struct w_step *w)

I think there is w->wrk if you find it easier but it's only one callsite 
so it's probably even better like this.

>   {
> -	if (!w->unbound_duration)
> -		return;
> +	uint32_t ticks;
>   
> -	gem_set_domain(fd, w->bb_handle,
> -		       I915_GEM_DOMAIN_WC, I915_GEM_DOMAIN_WC);
> +	ticks = 0;
> +	if (!w->unbound_duration)
> +		ticks = ~ns_to_ctx_ticks(1000 * get_duration(wrk, w));

Hm inverted ticks, why? And since it is not obvious I think it deserves 
a comment.

>   
> -	*w->recursive_bb_start = MI_BATCH_BUFFER_START | (1 << 8) | 1;
> +	*w->bb_duration = ticks;
>   }
>   
>   static void w_sync_to(struct workload *wrk, struct w_step *w, int target)
> @@ -2198,13 +2217,7 @@ do_eb(struct workload *wrk, struct w_step *w, enum intel_engine_id engine)
>   	unsigned int i;
>   
>   	eb_update_flags(wrk, w, engine);
> -	update_bb_start(w);
> -
> -	w->eb.batch_start_offset =
> -		w->unbound_duration ?
> -		0 :
> -		ALIGN(w->bb_sz - get_bb_sz(w, get_duration(wrk, w)),
> -		      2 * sizeof(uint32_t));
> +	update_bb_start(wrk, w);
>   
>   	for (i = 0; i < w->fence_deps.nr; i++) {
>   		int tgt = w->idx + w->fence_deps.list[i].target;
> @@ -2353,8 +2366,7 @@ static void *run_workload(void *data)
>   				igt_assert(wrk->steps[t_idx].type == BATCH);
>   				igt_assert(wrk->steps[t_idx].unbound_duration);
>   
> -				*wrk->steps[t_idx].recursive_bb_start =
> -					MI_BATCH_BUFFER_END;
> +				*wrk->steps[t_idx].bb_duration = 0xffffffff;
>   				__sync_synchronize();
>   				continue;
>   			} else if (w->type == SSEU) {
> @@ -2467,131 +2479,15 @@ static void fini_workload(struct workload *wrk)
>   	free(wrk);
>   }
>   
> -static unsigned long calibrate_nop(unsigned int tolerance_pct, struct intel_execution_engine2 *engine)
> -{
> -	const uint32_t bbe = 0xa << 23;
> -	unsigned int loops = 17;
> -	unsigned int usecs = nop_calibration_us;
> -	struct drm_i915_gem_exec_object2 obj = {};
> -	struct drm_i915_gem_execbuffer2 eb = {
> -		.buffer_count = 1,
> -		.buffers_ptr = (uintptr_t)&obj,
> -		.flags = engine->flags
> -	};
> -	long size, last_size;
> -	struct timespec t_0, t_end;
> -
> -	clock_gettime(CLOCK_MONOTONIC, &t_0);
> -
> -	size = 256 * 1024;
> -	do {
> -		struct timespec t_start;
> -
> -		obj.handle = alloc_bo(fd, size);
> -		gem_write(fd, obj.handle, size - sizeof(bbe), &bbe,
> -			  sizeof(bbe));
> -		gem_execbuf(fd, &eb);
> -		gem_sync(fd, obj.handle);
> -
> -		clock_gettime(CLOCK_MONOTONIC, &t_start);
> -		for (int loop = 0; loop < loops; loop++)
> -			gem_execbuf(fd, &eb);
> -		gem_sync(fd, obj.handle);
> -		clock_gettime(CLOCK_MONOTONIC, &t_end);
> -
> -		gem_close(fd, obj.handle);
> -
> -		last_size = size;
> -		size = loops * size / elapsed(&t_start, &t_end) / 1e6 * usecs;
> -		size = ALIGN(size, sizeof(uint32_t));
> -	} while (elapsed(&t_0, &t_end) < 5 ||
> -		 labs(size - last_size) > (size * tolerance_pct / 100));
> -
> -	return size / sizeof(uint32_t);
> -}
> -
> -static void
> -calibrate_sequentially(void)
> -{
> -	struct intel_execution_engine2 *engine;
> -	enum intel_engine_id eng_id;
> -
> -	__for_each_physical_engine(fd, engine) {
> -		eng_id = ci_to_engine_id(engine->class, engine->instance);
> -		igt_assert(eng_id >= 0);
> -		engine_calib_map[eng_id] = calibrate_nop(fd, engine);
> -	}
> -}
> -
> -struct thread_data {
> -	struct intel_execution_engine2 *eng;
> -	pthread_t thr;
> -	unsigned long calib;
> -};
> -
> -static void *
> -engine_calibration_thread(void *data)
> -{
> -	struct thread_data *thr_d = (struct thread_data *) data;
> -
> -	thr_d->calib = calibrate_nop(fd, thr_d->eng);
> -	return NULL;
> -}
> -
> -static void
> -calibrate_in_parallel(void)
> -{
> -	struct thread_data *thr_d = malloc(NUM_ENGINES * sizeof(*thr_d));
> -	struct intel_execution_engine2 *engine;
> -	enum intel_engine_id id;
> -	int ret;
> -
> -	__for_each_physical_engine(fd, engine) {
> -		id = ci_to_engine_id(engine->class, engine->instance);
> -		thr_d[id].eng = engine;
> -		ret = pthread_create(&thr_d[id].thr, NULL, engine_calibration_thread, &thr_d[id]);
> -		igt_assert_eq(ret, 0);
> -	}
> -
> -	__for_each_physical_engine(fd, engine) {
> -		id = ci_to_engine_id(engine->class, engine->instance);
> -		igt_assert(id >= 0);
> -
> -		ret = pthread_join(thr_d[id].thr, NULL);
> -		igt_assert_eq(ret, 0);
> -		engine_calib_map[id] = thr_d[id].calib;
> -	}
> -
> -	free(thr_d);
> -}
> -
> -static void
> -calibrate_engines(void)
> -{
> -	if (sequential)
> -		calibrate_sequentially();
> -	else
> -		calibrate_in_parallel();
> -}
> -
>   static void print_help(void)
>   {
>   	puts(
>   "Usage: gem_wsim [OPTIONS]\n"
>   "\n"
>   "Runs a simulated workload on the GPU.\n"
> -"When ran without arguments performs a GPU calibration result of which needs to\n"
> -"be provided when running the simulation in subsequent invocations.\n"
> -"\n"
>   "Options:\n"
>   "  -h                This text.\n"
>   "  -q                Be quiet - do not output anything to stdout.\n"
> -"  -n <n |           Nop calibration value - single value is set to all engines\n"
> -"  e1=v1,e2=v2,n...> without specified value; you can also specify calibrations for\n"
> -"                    particular engines.\n"
> -"  -t <n>            Nop calibration tolerance percentage.\n"
> -"  -T                Disable sequential calibration and perform calibration in parallel.\n"
> -"                    Use when there is a difficulty obtaining calibration with the\n"
>   "                    default settings.\n"

One more line to snip here.

>   "  -I <n>            Initial randomness seed.\n"
>   "  -p <n>            Context priority to use for the following workload on the\n"
> @@ -2671,17 +2567,12 @@ int main(int argc, char **argv)
>   	int master_workload = -1;
>   	char *append_workload_arg = NULL;
>   	struct w_arg *w_args = NULL;
> -	unsigned int tolerance_pct = 1;
>   	int exitcode = EXIT_FAILURE;
>   	double scale_time = 1.0f;
>   	double scale_dur = 1.0f;
>   	int prio = 0;
>   	double t;
> -	int i, c;
> -	char *subopts, *value;
> -	int raw_number = 0;
> -	long calib_val;
> -	int eng;
> +	int i, c, ret;
>   
>   	/*
>   	 * Open the device via the low-level API so we can do the GPU quiesce
> @@ -2721,70 +2612,7 @@ int main(int argc, char **argv)
>   		case 'c':
>   			clients = strtol(optarg, NULL, 0);
>   			break;
> -		case 't':
> -			tolerance_pct = strtol(optarg, NULL, 0);
> -			break;
> -		case 'T':
> -			sequential = false;
> -			break;
> -
> -		case 'n':
> -			subopts = optarg;
> -			while (*subopts != '\0') {
> -				eng = getsubopt(&subopts, (char **)ring_str_map, &value);
> -				if (!value) {
> -					/* only engine name was given */
> -					wsim_err("Missing calibration value for '%s'!\n",
> -						ring_str_map[eng]);
> -					goto err;
> -				}
>   
> -				calib_val = atol(value);
> -
> -				if (eng >= 0 && eng < NUM_ENGINES) {
> -				/* engine name with some value were given */
> -
> -					if (eng == DEFAULT || eng == VCS) {
> -						wsim_err("'%s' not allowed in engine calibrations!\n",
> -							ring_str_map[eng]);
> -						goto err;
> -					} else if (calib_val <= 0) {
> -						wsim_err("Invalid calibration for engine '%s' - value "
> -						"is either non-positive or is not a number!\n",
> -							ring_str_map[eng]);
> -						goto err;
> -					} else if (engine_calib_map[eng]) {
> -						wsim_err("Invalid repeated calibration of '%s'!\n",
> -							ring_str_map[eng]);
> -						goto err;
> -					} else {
> -						engine_calib_map[eng] = calib_val;
> -						if (eng == RCS)
> -							engine_calib_map[DEFAULT] = calib_val;
> -						else if (eng == VCS1 || eng == VCS2)
> -							engine_calib_map[VCS] = calib_val;
> -						has_nop_calibration = true;
> -					}
> -				} else {
> -					/* raw number was given */
> -
> -					if (!calib_val) {
> -						wsim_err("Invalid engine or zero calibration!\n");
> -						goto err;
> -					} else if (calib_val < 0) {
> -						wsim_err("Invalid negative calibration!\n");
> -						goto err;
> -					} else if (raw_number) {
> -						wsim_err("Default engine calibration provided more than once!\n");
> -						goto err;
> -					} else {
> -						raw_number = calib_val;
> -						apply_unset_calibrations(raw_number);
> -						has_nop_calibration = true;
> -					}
> -				}
> -			}
> -			break;
>   		case 'r':
>   			repeat = strtol(optarg, NULL, 0);
>   			break;
> @@ -2812,6 +2640,9 @@ int main(int argc, char **argv)
>   		case 'F':
>   			scale_time = atof(optarg);
>   			break;
> +		case 'n':
> +			/* ignored; using HW timers */
> +			break;

For what user? I deleted media-bench.pl but maybe you are using it locally?

>   		case 'h':
>   			print_help();
>   			goto out;
> @@ -2820,19 +2651,6 @@ int main(int argc, char **argv)
>   		}
>   	}
>   
> -	if (!has_nop_calibration) {
> -		if (verbose > 1) {
> -			printf("Calibrating nop delays with %u%% tolerance...\n",
> -				tolerance_pct);
> -		}
> -
> -		calibrate_engines();
> -
> -		if (verbose)
> -			print_engine_calibrations();
> -		goto out;
> -	}
> -
>   	if (!nr_w_args) {
>   		wsim_err("No workload descriptor(s)!\n");
>   		goto err;
> @@ -2885,7 +2703,6 @@ int main(int argc, char **argv)
>   
>   	if (verbose > 1) {
>   		printf("Random seed is %u.\n", master_prng);
> -		print_engine_calibrations();
>   		printf("%u client%s.\n", clients, clients > 1 ? "s" : "");
>   	}
>   
> @@ -2916,16 +2733,13 @@ int main(int argc, char **argv)
>   	clock_gettime(CLOCK_MONOTONIC, &t_start);
>   
>   	for (i = 0; i < clients; i++) {
> -		int ret;
> -
>   		ret = pthread_create(&w[i]->thread, NULL, run_workload, w[i]);
>   		igt_assert_eq(ret, 0);
>   	}
>   
>   	if (master_workload >= 0) {
> -		int ret = pthread_join(w[master_workload]->thread, NULL);
> -
> -		igt_assert(ret == 0);
> +		ret = pthread_join(w[master_workload]->thread, NULL);
> +		igt_assert_eq(ret, 0);
>   
>   		for (i = 0; i < clients; i++)
>   			w[i]->run = false;
> @@ -2933,8 +2747,8 @@ int main(int argc, char **argv)
>   
>   	for (i = 0; i < clients; i++) {
>   		if (master_workload != i) {
> -			int ret = pthread_join(w[i]->thread, NULL);
> -			igt_assert(ret == 0);
> +			ret = pthread_join(w[i]->thread, NULL);
> +			igt_assert_eq(ret, 0);
>   		}
>   	}
>   
> 

Cool.

Regards,

Tvrtko


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
