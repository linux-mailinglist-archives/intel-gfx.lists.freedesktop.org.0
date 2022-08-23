Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4887459D29B
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Aug 2022 09:51:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9178F14A1DE;
	Tue, 23 Aug 2022 07:51:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB9D38E4A9
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Aug 2022 07:51:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661241082; x=1692777082;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=Qvbw2JMGVi9+noha9I/lwGZ+LaZ3kXP5Rl5zeW+jOzQ=;
 b=S0yesPWkQSR00+5Wn0jbsZiuu4gSX4yjevWNYiP3sHmqgSaAu+IrE5Pq
 cDEXsIiL62NrQTXxsYOfNu3Fpc3SHLTp3Fe7qYpFCLUptjD9hUN2bqJcE
 eIy95U6es/ZP2VS05mqfySijxHgH6R7YGKr/fSR+WuiNzlTTYVgbepjtt
 LldNHYHfEG1qs6oaER7LRSkobRr8sdw4yiomjapbN17IYsyAxfJveljCH
 z9WDfXqmMcJHU+JBMA/fwIEWbCKfKGwt6DBtZnbFMeSpTx/Q2zatsnoDU
 EgfQmr9c/kby6PejyIoEoJOwk4zQgyp52uRGTK1kGj4zPmKiNE7t5n2EA w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10447"; a="273371995"
X-IronPort-AV: E=Sophos;i="5.93,256,1654585200"; d="scan'208";a="273371995"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 00:51:10 -0700
X-IronPort-AV: E=Sophos;i="5.93,256,1654585200"; d="scan'208";a="669912828"
Received: from bmarkovi-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.43.229])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 00:51:09 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org, Lionel G Landwerlin
 <lionel.g.landwerlin@intel.com>, Ashutosh Dixit <ashutosh.dixit@intel.com>
In-Reply-To: <20220823000342.281222-13-umesh.nerlige.ramappa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220823000342.281222-1-umesh.nerlige.ramappa@intel.com>
 <20220823000342.281222-13-umesh.nerlige.ramappa@intel.com>
Date: Tue, 23 Aug 2022 10:51:06 +0300
Message-ID: <87a67vmm8l.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 12/19] drm/i915/perf: Parse 64bit report
 header formats correctly
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

On Tue, 23 Aug 2022, Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com=
> wrote:
> Now that OA formats come in flavor of 64 bit reports, the report header
> has 64 bit report-id, timestamp, context-id and gpu-ticks fields. When
> filtering these reports, use the right width for these fields.
>
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_perf.c       | 109 ++++++++++++++++++++-----
>  drivers/gpu/drm/i915/i915_perf_types.h |   6 ++
>  2 files changed, 94 insertions(+), 21 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915=
_perf.c
> index 41634d614ba5..c3183aedc712 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -324,8 +324,8 @@ static const struct i915_oa_format oa_formats[I915_OA=
_FORMAT_MAX] =3D {
>  	[I915_OA_FORMAT_A32u40_A4u32_B8_C8] =3D { 5, 256 },
>  	[I915_OAR_FORMAT_A32u40_A4u32_B8_C8]    =3D { 5, 256 },
>  	[I915_OA_FORMAT_A24u40_A14u32_B8_C8]    =3D { 5, 256 },
> -	[I915_OAR_FORMAT_A36u64_B8_C8]		=3D { 1, 384 },
> -	[I915_OA_FORMAT_A38u64_R2u64_B8_C8]	=3D { 1, 448 },
> +	[I915_OAR_FORMAT_A36u64_B8_C8]		=3D { 1, 384, HDR_64_BIT },
> +	[I915_OA_FORMAT_A38u64_R2u64_B8_C8]	=3D { 1, 448, HDR_64_BIT },
>  };
>=20=20
>  #define SAMPLE_OA_REPORT      (1<<0)
> @@ -457,6 +457,75 @@ static u32 gen7_oa_hw_tail_read(struct i915_perf_str=
eam *stream)
>  	return oastatus1 & GEN7_OASTATUS1_TAIL_MASK;
>  }
>=20=20
> +#define oa_report_header_64bit(__s) \
> +	((__s)->oa_buffer.format->header =3D=3D HDR_64_BIT)
> +
> +static inline u64
> +oa_report_id(struct i915_perf_stream *stream, void *report)
> +{
> +	return oa_report_header_64bit(stream) ? *(u64 *)report : *(u32 *)report;
> +}

Drive-by-comment, I suspect you're not really gaining anything by making
these "inline". Just let the compiler do its thing.

Actually making them inline prevents you from getting warnings for
unused functions if they ever become unused.

BR,
Jani.


> +static inline u64
> +oa_report_reason(struct i915_perf_stream *stream, void *report)
> +{
> +	return (oa_report_id(stream, report) >> OAREPORT_REASON_SHIFT) &
> +	       (GRAPHICS_VER(stream->perf->i915) =3D=3D 12 ?
> +		OAREPORT_REASON_MASK_EXTENDED :
> +		OAREPORT_REASON_MASK);
> +}
> +
> +static inline void
> +oa_report_id_clear(struct i915_perf_stream *stream, u32 *report)
> +{
> +	if (oa_report_header_64bit(stream))
> +		*(u64 *)report =3D 0;
> +	else
> +		*report =3D 0;
> +}
> +
> +static inline bool
> +oa_report_ctx_invalid(struct i915_perf_stream *stream, void *report)
> +{
> +	return !(oa_report_id(stream, report) &
> +	       stream->perf->gen8_valid_ctx_bit) &&
> +	       GRAPHICS_VER(stream->perf->i915) <=3D 11;
> +}
> +
> +static inline u64
> +oa_timestamp(struct i915_perf_stream *stream, void *report)
> +{
> +	return oa_report_header_64bit(stream) ?
> +		*((u64 *)report + 1) :
> +		*((u32 *)report + 1);
> +}
> +
> +static inline void
> +oa_timestamp_clear(struct i915_perf_stream *stream, u32 *report)
> +{
> +	if (oa_report_header_64bit(stream))
> +		*(u64 *)&report[2] =3D 0;
> +	else
> +		report[1] =3D 0;
> +}
> +
> +static inline u32
> +oa_context_id(struct i915_perf_stream *stream, u32 *report)
> +{
> +	u32 ctx_id =3D oa_report_header_64bit(stream) ? report[4] : report[2];
> +
> +	return ctx_id & stream->specific_ctx_id_mask;
> +}
> +
> +static inline void
> +oa_context_id_squash(struct i915_perf_stream *stream, u32 *report)
> +{
> +	if (oa_report_header_64bit(stream))
> +		report[4] =3D INVALID_CTX_ID;
> +	else
> +		report[2] =3D INVALID_CTX_ID;
> +}
> +
>  /**
>   * oa_buffer_check_unlocked - check for data and update tail ptr state
>   * @stream: i915 stream instance
> @@ -546,9 +615,10 @@ static bool oa_buffer_check_unlocked(struct i915_per=
f_stream *stream)
>  		 * If not : (=E2=95=AF=C2=B0=E2=96=A1=C2=B0=EF=BC=89=E2=95=AF=EF=B8=B5=
 =E2=94=BB=E2=94=81=E2=94=BB
>  		 */
>  		while (_oa_taken(stream, tail, aged_tail) >=3D report_size) {
> -			u32 *report32 =3D (void *)(stream->oa_buffer.vaddr + tail);
> +			void *report =3D stream->oa_buffer.vaddr + tail;
>=20=20
> -			if (report32[0] !=3D 0 || report32[1] !=3D 0)
> +			if (oa_report_id(stream, report) ||
> +			    oa_timestamp(stream, report))
>  				break;
>=20=20
>  			tail =3D _rewind_tail(stream, tail, report_size);
> @@ -741,23 +811,19 @@ static int gen8_append_oa_reports(struct i915_perf_=
stream *stream,
>  		u8 *report =3D oa_buf_base + head;
>  		u32 *report32 =3D (void *)report;
>  		u32 ctx_id;
> -		u32 reason;
> +		u64 reason;
>=20=20
>  		/*
>  		 * The reason field includes flags identifying what
>  		 * triggered this specific report (mostly timer
>  		 * triggered or e.g. due to a context switch).
>  		 *
> -		 * This field is never expected to be zero so we can
> -		 * check that the report isn't invalid before copying
> -		 * it to userspace...
> +		 * In MMIO triggered reports, some platforms do not set the
> +		 * reason bit in this field and it is valid to have a reason
> +		 * field of zero.
>  		 */
> -		reason =3D ((report32[0] >> OAREPORT_REASON_SHIFT) &
> -			  (GRAPHICS_VER(stream->perf->i915) =3D=3D 12 ?
> -			   OAREPORT_REASON_MASK_EXTENDED :
> -			   OAREPORT_REASON_MASK));
> -
> -		ctx_id =3D report32[2] & stream->specific_ctx_id_mask;
> +		reason =3D oa_report_reason(stream, report);
> +		ctx_id =3D oa_context_id(stream, report32);
>=20=20
>  		/*
>  		 * Squash whatever is in the CTX_ID field if it's marked as
> @@ -767,9 +833,10 @@ static int gen8_append_oa_reports(struct i915_perf_s=
tream *stream,
>  		 * Note: that we don't clear the valid_ctx_bit so userspace can
>  		 * understand that the ID has been squashed by the kernel.
>  		 */
> -		if (!(report32[0] & stream->perf->gen8_valid_ctx_bit) &&
> -		    GRAPHICS_VER(stream->perf->i915) <=3D 11)
> -			ctx_id =3D report32[2] =3D INVALID_CTX_ID;
> +		if (oa_report_ctx_invalid(stream, report)) {
> +			ctx_id =3D INVALID_CTX_ID;
> +			oa_context_id_squash(stream, report32);
> +		}
>=20=20
>  		/*
>  		 * NB: For Gen 8 the OA unit no longer supports clock gating
> @@ -813,7 +880,7 @@ static int gen8_append_oa_reports(struct i915_perf_st=
ream *stream,
>  			 */
>  			if (stream->ctx &&
>  			    stream->specific_ctx_id !=3D ctx_id) {
> -				report32[2] =3D INVALID_CTX_ID;
> +				oa_context_id_squash(stream, report32);
>  			}
>=20=20
>  			ret =3D append_oa_sample(stream, buf, count, offset,
> @@ -825,11 +892,11 @@ static int gen8_append_oa_reports(struct i915_perf_=
stream *stream,
>  		}
>=20=20
>  		/*
> -		 * Clear out the first 2 dword as a mean to detect unlanded
> +		 * Clear out the report id and timestamp as a means to detect unlanded
>  		 * reports.
>  		 */
> -		report32[0] =3D 0;
> -		report32[1] =3D 0;
> +		oa_report_id_clear(stream, report32);
> +		oa_timestamp_clear(stream, report32);
>  	}
>=20=20
>  	if (start_offset !=3D *offset) {
> diff --git a/drivers/gpu/drm/i915/i915_perf_types.h b/drivers/gpu/drm/i91=
5/i915_perf_types.h
> index e0c96b44eda8..68db5f94bc58 100644
> --- a/drivers/gpu/drm/i915/i915_perf_types.h
> +++ b/drivers/gpu/drm/i915/i915_perf_types.h
> @@ -30,9 +30,15 @@ struct i915_vma;
>  struct intel_context;
>  struct intel_engine_cs;
>=20=20
> +enum report_header {
> +	HDR_32_BIT =3D 0,
> +	HDR_64_BIT,
> +};
> +
>  struct i915_oa_format {
>  	u32 format;
>  	int size;
> +	enum report_header header;
>  };
>=20=20
>  struct i915_oa_reg {

--=20
Jani Nikula, Intel Open Source Graphics Center
