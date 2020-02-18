Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98DDE162D8A
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2020 18:56:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A5106E39B;
	Tue, 18 Feb 2020 17:56:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4206B6E39B;
 Tue, 18 Feb 2020 17:56:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Feb 2020 09:56:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,456,1574150400"; d="scan'208";a="382531854"
Received: from relo-linux-2.fm.intel.com (HELO [10.1.27.125]) ([10.1.27.125])
 by orsmga004.jf.intel.com with ESMTP; 18 Feb 2020 09:56:10 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200218122648.1252102-1-chris@chris-wilson.co.uk>
 <20200218174219.1301127-1-chris@chris-wilson.co.uk>
From: Antonio Argenziano <antonio.argenziano@intel.com>
Message-ID: <7c8a0bc1-3e3f-4551-7e62-9f21bed92192@intel.com>
Date: Tue, 18 Feb 2020 09:56:10 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20200218174219.1301127-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_exec_schedule: Exercise
 implicit ordering between engines
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
Cc: igt-dev@lists.freedesktop.org,
 Sravan Kumar Nedunoori <sravan.kumar.nedunoori@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 18/02/20 09:42, Chris Wilson wrote:
> Check that reads are serialised after a write, and that a subsequent
> write is after all reads.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Antonio Argenziano <antonio.argenziano@intel.com>
> Cc: Sravan Kumar Nedunoori <sravan.kumar.nedunoori@intel.com>
> ---
>   tests/i915/gem_exec_schedule.c | 73 ++++++++++++++++++++++++++++++++++
>   1 file changed, 73 insertions(+)
> 
> diff --git a/tests/i915/gem_exec_schedule.c b/tests/i915/gem_exec_schedule.c
> index a20985864..cfd06aa55 100644
> --- a/tests/i915/gem_exec_schedule.c
> +++ b/tests/i915/gem_exec_schedule.c
> @@ -241,6 +241,61 @@ static void fifo(int fd, unsigned ring)
>   	igt_assert_eq_u32(result, 2);
>   }
>   
> +enum implicit_dir {
> +	READ_WRITE = 0x1,
> +	WRITE_READ = 0x2,
> +};
> +
> +static void implicit_rw(int i915, unsigned ring, enum implicit_dir dir)
> +{
> +	IGT_CORK_FENCE(cork);
> +	unsigned int count;
> +	uint32_t scratch;
> +	uint32_t result;
> +	int fence;
> +
> +	count = 0;
> +	for_each_physical_engine(other, i915) {
> +		if (eb_ring(other) == ring)
> +			continue;
> +
> +		count++;
> +	}
> +	igt_require(count);
> +
> +	scratch = gem_create(i915, 4096);
> +	fence = igt_cork_plug(&cork, i915);
> +
> +	if (dir & WRITE_READ)
> +		store_dword_fenced(i915, 0,
> +				   ring, scratch, 0, -ring,
> +				   fence, I915_GEM_DOMAIN_RENDER);
> +
> +	for_each_physical_engine(other, i915) {
> +		if (eb_ring(other) == ring)
> +			continue;
> +
> +		store_dword_fenced(i915, 0,
> +				   eb_ring(other), scratch, 0, eb_ring(other),
> +				   fence, 0);
> +	}
> +
> +	if (dir & READ_WRITE)
> +		store_dword_fenced(i915, 0,
> +				   ring, scratch, 0, ring,
> +				   fence, I915_GEM_DOMAIN_RENDER);
> +
> +	unplug_show_queue(i915, &cork, ring);
> +	close(fence);
> +
> +	result =  __sync_read_u32(i915, scratch, 0);
> +	gem_close(i915, scratch);
> +
> +	igt_assert_neq_u32(result, -ring);

if (dir & WRITE_READ) ?

Other that that LGTM.

Reviewed-by: Antonio Argenziano <antonio.argenziano@intel.com>

> +	if (dir & READ_WRITE)
> +		igt_assert_eq_u32(result, ring);
> +}
> +
>   static void independent(int fd, unsigned int engine)
>   {
>   	IGT_CORK_FENCE(cork);
> @@ -2042,6 +2097,24 @@ igt_main
>   				fifo(fd, eb_ring(e));
>   			}
>   
> +			igt_subtest_f("implicit-read-write-%s", e->name) {
> +				igt_require(gem_ring_has_physical_engine(fd, eb_ring(e)));
> +				igt_require(gem_can_store_dword(fd, eb_ring(e)));
> +				implicit_rw(fd, eb_ring(e), READ_WRITE);
> +			}
> +
> +			igt_subtest_f("implicit-write-read-%s", e->name) {
> +				igt_require(gem_ring_has_physical_engine(fd, eb_ring(e)));
> +				igt_require(gem_can_store_dword(fd, eb_ring(e)));
> +				implicit_rw(fd, eb_ring(e), WRITE_READ);
> +			}
> +
> +			igt_subtest_f("implicit-both-%s", e->name) {
> +				igt_require(gem_ring_has_physical_engine(fd, eb_ring(e)));
> +				igt_require(gem_can_store_dword(fd, eb_ring(e)));
> +				implicit_rw(fd, eb_ring(e), READ_WRITE | WRITE_READ);
> +			}
> +
>   			igt_subtest_f("independent-%s", e->name) {
>   				igt_require(gem_ring_has_physical_engine(fd, eb_ring(e)));
>   				igt_require(gem_can_store_dword(fd, eb_ring(e)));
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
