Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E7F2E69E81D
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Feb 2023 20:10:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B06D10E0CF;
	Tue, 21 Feb 2023 19:10:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF66610E15D
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Feb 2023 19:10:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677006647; x=1708542647;
 h=date:message-id:from:to:cc:subject:in-reply-to:
 references:mime-version;
 bh=n52c82HiTl5SnTVEej6+WjQu29T8TtCLF/ZIBsNWclg=;
 b=O5qLJaT3M4RLALbkXN66G0OuaBS10G+6u1+5zyXvGD/HHAcaGyoxdU/B
 jdQc8nexi7NOyjh3dhNpZK29Iq1VhY7RXs2br14qOagPuI8cXOki//YJn
 8K9s//aigXlsu7dE0cQsxKQk8Vkh4tI633TviPH2dZ7R8iRmwGDdeAZae
 AnYh2eEr1+mGi7ki8r9/SXcM2sFWFRR8z1I3YFox1gRNDyHiN2LdB9cQR
 oPLIUEEHuelPzH/nlIZRjEumIOeH4hw8HM9sxqHX3eKw5b/u5F19WDLnI
 uB+fNHyF57Co4CDcmrzKJEiAalevcdcqZEG8EWUAhfRO3sVu4K4VfBwMq Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="334924566"
X-IronPort-AV: E=Sophos;i="5.97,315,1669104000"; d="scan'208";a="334924566"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 11:10:45 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="740521579"
X-IronPort-AV: E=Sophos;i="5.97,315,1669104000"; d="scan'208";a="740521579"
Received: from adixit-mobl.amr.corp.intel.com (HELO adixit-arch.intel.com)
 ([10.209.100.215])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 11:10:44 -0800
Date: Tue, 21 Feb 2023 10:51:57 -0800
Message-ID: <87sfeyonqq.wl-ashutosh.dixit@intel.com>
From: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
In-Reply-To: <87cz67g2hd.wl-ashutosh.dixit@intel.com>
References: <20230217005850.2511422-1-umesh.nerlige.ramappa@intel.com>
 <20230217005850.2511422-8-umesh.nerlige.ramappa@intel.com>
 <87edqof1qt.wl-ashutosh.dixit@intel.com>
 <Y/AWXg7u6/fnwtpH@orsosgc001.jf.intel.com>
 <87cz67g2hd.wl-ashutosh.dixit@intel.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?ISO-8859-4?Q?Goj=F2?=) APEL-LB/10.8 EasyPG/1.0.0
 Emacs/28.2 (x86_64-pc-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [Intel-gfx] [PATCH v2 7/9] drm/i915/perf: Handle non-power-of-2
 reports
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

On Fri, 17 Feb 2023 17:57:02 -0800, Dixit, Ashutosh wrote:
>
> On Fri, 17 Feb 2023 16:05:50 -0800, Umesh Nerlige Ramappa wrote:
> > On Fri, Feb 17, 2023 at 12:58:18PM -0800, Dixit, Ashutosh wrote:
> > > On Thu, 16 Feb 2023 16:58:48 -0800, Umesh Nerlige Ramappa wrote:
> > >>
> > >
> > > Hi Umesh, couple of nits below.
> > >
> > >> Some of the newer OA formats are not powers of 2. For those formats,
> > >> adjust the hw_tail accordingly when checking for new reports.
> > >>
> > >> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> > >> ---
> > >>  drivers/gpu/drm/i915/i915_perf.c | 50 ++++++++++++++++++--------------
> > >>  1 file changed, 28 insertions(+), 22 deletions(-)
> > >>
> > >> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> > >> index 9715b964aa1e..d3a1892c93be 100644
> > >> --- a/drivers/gpu/drm/i915/i915_perf.c
> > >> +++ b/drivers/gpu/drm/i915/i915_perf.c
> > >> @@ -542,6 +542,7 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
> > >>	bool pollin;
> > >>	u32 hw_tail;
> > >>	u64 now;
> > >> +	u32 partial_report_size;
> > >>
> > >>	/* We have to consider the (unlikely) possibility that read() errors
> > >>	 * could result in an OA buffer reset which might reset the head and
> > >> @@ -551,10 +552,16 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
> > >>
> > >>	hw_tail = stream->perf->ops.oa_hw_tail_read(stream);
> > >>
> > >> -	/* The tail pointer increases in 64 byte increments,
> > >> -	 * not in report_size steps...
> > >> +	/* The tail pointer increases in 64 byte increments, whereas report
> > >> +	 * sizes need not be integral multiples or 64 or powers of 2.
> > > s/or/of/ ---------------------------------------^
> > >
> > > Also I think report sizes can only be multiples of 64, the ones we have
> > > seen till now definitely are. Also the lower 6 bits of tail pointer are 0.
> >
> > Agree, the only addition to the old comment should be that the new reports
> > may not be powers of 2.
> >
> > >
> > >> +	 * Compute potentially partially landed report in the OA buffer
> > >>	 */
> > >> -	hw_tail &= ~(report_size - 1);
> > >> +	partial_report_size = OA_TAKEN(hw_tail, stream->oa_buffer.tail);
> > >> +	partial_report_size %= report_size;
> > >> +
> > >> +	/* Subtract partial amount off the tail */
> > >> +	hw_tail = gtt_offset + ((hw_tail - partial_report_size) &
> > >> +				(stream->oa_buffer.vma->size - 1));
> > >
> > > Couple of questions here because OA_TAKEN uses OA_BUFFER_SIZE and the above
> > > expression uses stream->oa_buffer.vma->size:
> > >
> > > 1. Is 'OA_BUFFER_SIZE == stream->oa_buffer.vma->size'? We seem to be using
> > >   the two interchaneably in the code.
> >
> > Yes. I think the code was updated to use vma->size when support for
> > selecting OA buffer size along with large OA buffers was added, but we
> > haven't pushed that upstream yet. Since I have cherry-picked patches here,
> > there is some inconsistency. I would just change this patch to use
> > OA_BUFFER_SIZE for now.
> >
> > > 2. If yes, can we add an assert about this in alloc_oa_buffer?
> >
> > If I change to OA_BUFFER_SIZE, then okay to skip assert?
>
> Yes.
>
> > Do you suspect that the vma size may actually differ from what we
> > requested?
>
> Not sure how shmem objects are allocated but my guess would be that for a
> nice whole size like 16 M they the vma size will be the same. So ok to just
> use OA_BUFFER_SIZE in a couple of places in this patch and skip the
> assert. As long as vma_size >= OA_BUFFER_SIZE we are ok.
>
> >
> > > 3. Can the above expression be changed to:
> > >
> > >	hw_tail = gtt_offset + OA_TAKEN(hw_tail, partial_report_size);
> >
> > Not if hw_tail has rolled over, but stream->oa_buffer.tail hasn't.
>
> Why not, the two expressions are exactly the same? And anyway
> stream->oa_buffer.tail is already handled in the first OA_TAKEN expression.

Basically, for me OA_TAKEN is a "circular diff" (for a power-of-2 sized
circular buffer), so anywhere we have these "circular diff" opereations we
should be able to replace them by OA_TAKEN.

> > >
> > > It would be good to use the same construct if possible. Maybe we can even
> > > change OA_TAKEN to something like:
> > >
> > > #define OA_TAKEN(tail, head)    ((tail - head) & (stream->oa_buffer.vma->size - 1))
> >
> > I am thinking of changing to OA_BUFFER_SIZE at other places in this
> > patch. Thoughts?
>
> Sure, let's do that, there are just 2 places.
>
> > >
> > >>
> > >>	now = ktime_get_mono_fast_ns();
> > >>
> > >> @@ -677,6 +684,8 @@ static int append_oa_sample(struct i915_perf_stream *stream,
> > >>  {
> > >>	int report_size = stream->oa_buffer.format->size;
> > >>	struct drm_i915_perf_record_header header;
> > >> +	int report_size_partial;
> > >> +	u8 *oa_buf_end;
> > >>
> > >>	header.type = DRM_I915_PERF_RECORD_SAMPLE;
> > >>	header.pad = 0;
> > >> @@ -690,8 +699,21 @@ static int append_oa_sample(struct i915_perf_stream *stream,
> > >>		return -EFAULT;
> > >>	buf += sizeof(header);
> > >>
> > >> -	if (copy_to_user(buf, report, report_size))
> > >> +	oa_buf_end = stream->oa_buffer.vaddr +
> > >> +		     stream->oa_buffer.vma->size;
> > >> +	report_size_partial = oa_buf_end - report;
> > >> +
> > >> +	if (report_size_partial < report_size) {
> > >> +		if (copy_to_user(buf, report, report_size_partial))
> > >> +			return -EFAULT;
> > >> +		buf += report_size_partial;
> > >> +
> > >> +		if (copy_to_user(buf, stream->oa_buffer.vaddr,
> > >> +				 report_size - report_size_partial))
> > >> +			return -EFAULT;
> > >> +	} else if (copy_to_user(buf, report, report_size)) {
> > >>		return -EFAULT;
> > >> +	}
> > >>
> > >>	(*offset) += header.size;
> > >>
> > >> @@ -759,8 +781,8 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
> > >>	 * all a power of two).
> > >>	 */
> > >>	if (drm_WARN_ONCE(&uncore->i915->drm,
> > >> -			  head > OA_BUFFER_SIZE || head % report_size ||
> > >> -			  tail > OA_BUFFER_SIZE || tail % report_size,
> > >> +			  head > OA_BUFFER_SIZE ||
> > >> +			  tail > OA_BUFFER_SIZE,
> > >
> > > The comment above the if () also needs to be fixed.
> >
> > Will fix
> >
> > >
> > > Also, does it make sense to have 'head % 64 || tail % 64' checks above? As
> > > I was saying above head and tail will be 64 byte aligned.
> >
> > Since head and tail are derived from HW registers and the HW only
> > increments them by 64, we should be good even without the %64.
>
> OK.
>
> Thanks.
> --
> Ashutosh
