Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BB33720B45
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jun 2023 23:54:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F37DB10E64A;
	Fri,  2 Jun 2023 21:54:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE7E710E646
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Jun 2023 21:54:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685742840; x=1717278840;
 h=date:message-id:from:to:cc:subject:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3DsZKMTbHQTXXFB8ROaDYUCa8mLjG0oGnxqnoyLSeYM=;
 b=dGJiT3BlMRs2FyneNnuOxbYVgoAkm8RmiqpLlVE9LrruUzOTzf36xK4j
 YDO3+45q4Gp5PsPxIn6zhhHKxViP/OTp+YmIvt4/geQ80US/UzpSV7x5e
 N2fqHSwM6AyoZVKco14WbS9s3P8ipp3YNCUOBjwb09FO8IARIg3kpMGPE
 dSsGGIM3CX12WgalEnUqDYfppJLtL++S0xaoISF1lIH58bNRQfjH7iMTA
 c2fOVUDBSMJrmM7TJZwkv7Ckq1ZVU00mE8ERRfucttcHyAB8Db1EHLRoM
 E48Gq9m7yK6qx8KozMv30SUSiOGxAl3le5RRWDchuvHEzf/99sZxiI91Z A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="358413634"
X-IronPort-AV: E=Sophos;i="6.00,214,1681196400"; d="scan'208";a="358413634"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 14:53:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="820435872"
X-IronPort-AV: E=Sophos;i="6.00,214,1681196400"; d="scan'208";a="820435872"
Received: from adixit-mobl.amr.corp.intel.com (HELO adixit-arch.intel.com)
 ([10.209.18.212])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 14:53:59 -0700
Date: Fri, 02 Jun 2023 14:53:48 -0700
Message-ID: <87mt1hledv.wl-ashutosh.dixit@intel.com>
From: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20230602205327.1542958-2-umesh.nerlige.ramappa@intel.com>
References: <20230602205327.1542958-1-umesh.nerlige.ramappa@intel.com>
 <20230602205327.1542958-2-umesh.nerlige.ramappa@intel.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?ISO-8859-4?Q?Goj=F2?=) APEL-LB/10.8 EasyPG/1.0.0
 Emacs/28.2 (x86_64-pc-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v3 1/2] i915/perf: Drop the aging_tail logic
 in perf OA
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 02 Jun 2023 13:53:26 -0700, Umesh Nerlige Ramappa wrote:
>

Hi Umesh,

> On DG2, capturing OA reports while running heavy render workloads
> sometimes results in invalid OA reports where 64-byte chunks inside
> reports have stale values. Under memory pressure, high OA sampling rates
> (13.3 us) and heavy render workload, occasionally, the OA HW TAIL
> pointer does not progress as fast as the sampling rate. When these
> glitches occur, the TAIL pointer takes approx. 200us to progress.  While
> this is expected behavior from the HW perspective, invalid reports are
> not expected.
>
> In oa_buffer_check_unlocked(), when we execute the if condition, we are
> updating the oa_buffer.tail to the aging tail and then setting pollin
> based on this tail value, however, we do not have a chance to rewind and
> validate the reports prior to setting pollin. The validation happens
> in a subsequent call to oa_buffer_check_unlocked(). If a read occurs
> before this validation, then we end up reading reports up until this
> oa_buffer.tail value which includes invalid reports. Though found on
> DG2, this affects all platforms.
>
> The aging tail logic is no longer necessary since we are explicitly
> checking for landed reports.
>
> Start by dropping the aging tail logic.
>
> v2:
> - Drop extra blank line
> - Add reason to drop aging logic (Ashutosh)
> - Add bug links (Ashutosh)
> - rename aged_tail to read_tail
> - Squash patches 3 and 1
>
> Bug: https://gitlab.freedesktop.org/drm/intel/-/issues/7484
> Bug: https://gitlab.freedesktop.org/drm/intel/-/issues/7757
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_perf.c       | 75 ++++++++++----------------
>  drivers/gpu/drm/i915/i915_perf_types.h | 12 -----
>  2 files changed, 28 insertions(+), 59 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915=
_perf.c
> index 58284156428d..9cb3d395046e 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -531,8 +531,7 @@ static void oa_context_id_squash(struct i915_perf_str=
eam *stream, u32 *report)
>   * (See description of OA_TAIL_MARGIN_NSEC above for further details.)
>   *
>   * Besides returning true when there is data available to read() this fu=
nction
> - * also updates the tail, aging_tail and aging_timestamp in the oa_buffer
> - * object.
> + * also updates the tail in the oa_buffer object.
>   *
>   * Note: It's safe to read OA config state here unlocked, assuming that =
this is
>   * only called while the stream is enabled, while the global OA configur=
ation
> @@ -544,10 +543,10 @@ static bool oa_buffer_check_unlocked(struct i915_pe=
rf_stream *stream)
>  {
>	u32 gtt_offset =3D i915_ggtt_offset(stream->oa_buffer.vma);
>	int report_size =3D stream->oa_buffer.format->size;
> +	u32 head, tail, read_tail;
>	unsigned long flags;
>	bool pollin;
>	u32 hw_tail;
> -	u64 now;
>	u32 partial_report_size;
>
>	/* We have to consider the (unlikely) possibility that read() errors
> @@ -568,27 +567,15 @@ static bool oa_buffer_check_unlocked(struct i915_pe=
rf_stream *stream)
>	/* Subtract partial amount off the tail */
>	hw_tail =3D gtt_offset + OA_TAKEN(hw_tail, partial_report_size);
>
> -	now =3D ktime_get_mono_fast_ns();
> -
> -	if (hw_tail =3D=3D stream->oa_buffer.aging_tail &&
> -	    (now - stream->oa_buffer.aging_timestamp) > OA_TAIL_MARGIN_NSEC) {
> -		/* If the HW tail hasn't move since the last check and the HW
> -		 * tail has been aging for long enough, declare it the new
> -		 * tail.
> -		 */
> -		stream->oa_buffer.tail =3D stream->oa_buffer.aging_tail;
> -	} else {
> -		u32 head, tail, aged_tail;
> -
> -		/* NB: The head we observe here might effectively be a little
> -		 * out of date. If a read() is in progress, the head could be
> -		 * anywhere between this head and stream->oa_buffer.tail.
> -		 */
> -		head =3D stream->oa_buffer.head - gtt_offset;
> -		aged_tail =3D stream->oa_buffer.tail - gtt_offset;
> +	/* NB: The head we observe here might effectively be a little
> +	 * out of date. If a read() is in progress, the head could be
> +	 * anywhere between this head and stream->oa_buffer.tail.
> +	 */
> +	head =3D stream->oa_buffer.head - gtt_offset;
> +	read_tail =3D stream->oa_buffer.tail - gtt_offset;
>
> -		hw_tail -=3D gtt_offset;
> -		tail =3D hw_tail;
> +	hw_tail -=3D gtt_offset;
> +	tail =3D hw_tail;
>
>		/* Walk the stream backward until we find a report with report
>		 * id and timestmap not at 0. Since the circular buffer pointers
> @@ -596,31 +583,28 @@ static bool oa_buffer_check_unlocked(struct i915_pe=
rf_stream *stream)
>		 * to 256 bytes long, we can't tell whether a report has fully
>		 * landed in memory before the report id and timestamp of the
>		 * following report have effectively landed.

This entire comment above should move to the left (at present the above
half is floating to the right).

> -		 *
> -		 * This is assuming that the writes of the OA unit land in
> -		 * memory in the order they were written to.
> -		 * If not : (=E2=95=AF=C2=B0=E2=96=A1=C2=B0=EF=BC=89=E2=95=AF=EF=B8=B5=
 =E2=94=BB=E2=94=81=E2=94=BB
> -		 */
> -		while (OA_TAKEN(tail, aged_tail) >=3D report_size) {
> -			void *report =3D stream->oa_buffer.vaddr + tail;
> +	 *
> +	 * This is assuming that the writes of the OA unit land in
> +	 * memory in the order they were written to.
> +	 * If not : (=E2=95=AF=C2=B0=E2=96=A1=C2=B0=EF=BC=89=E2=95=AF=EF=B8=B5 =
=E2=94=BB=E2=94=81=E2=94=BB
> +	 */
> +	while (OA_TAKEN(tail, read_tail) >=3D report_size) {
> +		void *report =3D stream->oa_buffer.vaddr + tail;
>
> -			if (oa_report_id(stream, report) ||
> -			    oa_timestamp(stream, report))
> -				break;
> +		if (oa_report_id(stream, report) ||
> +		    oa_timestamp(stream, report))
> +			break;
>
> -			tail =3D (tail - report_size) & (OA_BUFFER_SIZE - 1);
> -		}
> +		tail =3D (tail - report_size) & (OA_BUFFER_SIZE - 1);
> +	}
>
> -		if (OA_TAKEN(hw_tail, tail) > report_size &&
> -		    __ratelimit(&stream->perf->tail_pointer_race))
> -			drm_notice(&stream->uncore->i915->drm,
> -				   "unlanded report(s) head=3D0x%x tail=3D0x%x hw_tail=3D0x%x\n",
> -				   head, tail, hw_tail);
> +	if (OA_TAKEN(hw_tail, tail) > report_size &&
> +	    __ratelimit(&stream->perf->tail_pointer_race))
> +		drm_notice(&stream->uncore->i915->drm,
> +			   "unlanded report(s) head=3D0x%x tail=3D0x%x hw_tail=3D0x%x\n",
> +		 head, tail, hw_tail);
>
> -		stream->oa_buffer.tail =3D gtt_offset + tail;
> -		stream->oa_buffer.aging_tail =3D gtt_offset + hw_tail;
> -		stream->oa_buffer.aging_timestamp =3D now;
> -	}
> +	stream->oa_buffer.tail =3D gtt_offset + tail;
>
>	pollin =3D OA_TAKEN(stream->oa_buffer.tail - gtt_offset,
>			  stream->oa_buffer.head - gtt_offset) >=3D report_size;

I forgot to mention it earlier, but the above statement is exactly
equivalent to:

	pollin =3D OA_TAKEN(stream->oa_buffer.tail,
			  stream->oa_buffer.head) >=3D report_size;

So gtt_offset can be removed (because OA_TAKEN is a circular diff). Anyway
this is optional, you can sneak it into Patch 1 or Patch 2 if you wish,
otherwise leave as is.

Otherwise, this is:

Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>

> @@ -1727,7 +1711,6 @@ static void gen7_init_oa_buffer(struct i915_perf_st=
ream *stream)
>			   gtt_offset | OABUFFER_SIZE_16M);
>
>	/* Mark that we need updated tail pointers to read from... */
> -	stream->oa_buffer.aging_tail =3D INVALID_TAIL_PTR;
>	stream->oa_buffer.tail =3D gtt_offset;
>
>	spin_unlock_irqrestore(&stream->oa_buffer.ptr_lock, flags);
> @@ -1779,7 +1762,6 @@ static void gen8_init_oa_buffer(struct i915_perf_st=
ream *stream)
>	intel_uncore_write(uncore, GEN8_OATAILPTR, gtt_offset & GEN8_OATAILPTR_MA=
SK);
>
>	/* Mark that we need updated tail pointers to read from... */
> -	stream->oa_buffer.aging_tail =3D INVALID_TAIL_PTR;
>	stream->oa_buffer.tail =3D gtt_offset;
>
>	/*
> @@ -1833,7 +1815,6 @@ static void gen12_init_oa_buffer(struct i915_perf_s=
tream *stream)
>			   gtt_offset & GEN12_OAG_OATAILPTR_MASK);
>
>	/* Mark that we need updated tail pointers to read from... */
> -	stream->oa_buffer.aging_tail =3D INVALID_TAIL_PTR;
>	stream->oa_buffer.tail =3D gtt_offset;
>
>	/*
> diff --git a/drivers/gpu/drm/i915/i915_perf_types.h b/drivers/gpu/drm/i91=
5/i915_perf_types.h
> index 66dd5f74de05..fe3a5dae8c22 100644
> --- a/drivers/gpu/drm/i915/i915_perf_types.h
> +++ b/drivers/gpu/drm/i915/i915_perf_types.h
> @@ -312,18 +312,6 @@ struct i915_perf_stream {
>		 */
>		spinlock_t ptr_lock;
>
> -		/**
> -		 * @aging_tail: The last HW tail reported by HW. The data
> -		 * might not have made it to memory yet though.
> -		 */
> -		u32 aging_tail;
> -
> -		/**
> -		 * @aging_timestamp: A monotonic timestamp for when the current aging =
tail pointer
> -		 * was read; used to determine when it is old enough to trust.
> -		 */
> -		u64 aging_timestamp;
> -
>		/**
>		 * @head: Although we can always read back the head pointer register,
>		 * we prefer to avoid trusting the HW state, just to avoid any
> --
> 2.36.1
>
