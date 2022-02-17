Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0244F4BA9A9
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Feb 2022 20:21:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17A7610E6D6;
	Thu, 17 Feb 2022 19:21:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 007FC10E6D6
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Feb 2022 19:21:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645125699; x=1676661699;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=fox4tZ/N3RsIK99P/3w+2Sj9EZ115k17SWDTFCGKavI=;
 b=PtxjJD4fuMuoEMkmChOPhWdsI9bNzoHxDnBFHbtrexlMAnmV1n5m4Gev
 s7Umm1t6kXWPOn52ZRnMHpf8WE0TCLXYVguXkOzKUpzCiMsDnfC7K58qD
 yPnjg9og96uH6ptegTumBz5FJkYUp7wVyGMPn2FpO4rDzoiV7HtsIKJA8
 jmS8psbHVl1JINX1/D0gAxgDgwD87Yze/TsACjBS/ZYjn4suLeBRqUe4m
 mpAE/K0VIjvoIRjJ7G9yZ9noAys1oKnZJti3GJi7W9kYqkFGsmOvXifOY
 hT/aX/lDbeDHGRB51JYdDJASadqczrKuJFkabuaaOEbAbDN+QIC2XAew7 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10261"; a="314219872"
X-IronPort-AV: E=Sophos;i="5.88,376,1635231600"; d="scan'208";a="314219872"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 11:21:39 -0800
X-IronPort-AV: E=Sophos;i="5.88,376,1635231600"; d="scan'208";a="545803906"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril-10.165.21.154)
 ([10.165.21.154])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 11:21:39 -0800
Date: Thu, 17 Feb 2022 11:21:39 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
Message-ID: <20220217192139.GH34157@unerlige-ril-10.165.21.154>
References: <20220126104822.3653079-1-alan.previn.teres.alexis@intel.com>
 <20220126104822.3653079-8-alan.previn.teres.alexis@intel.com>
 <20220211013629.GA34157@unerlige-ril-10.165.21.154>
 <df189b62fad353301c33ea2c37fba1391e11a6d7.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
In-Reply-To: <df189b62fad353301c33ea2c37fba1391e11a6d7.camel@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH v5 07/10] drm/i915/guc: Extract GuC error
 capture lists on G2H notification.
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, Feb 13, 2022 at 11:47:00AM -0800, Teres Alexis, Alan Previn wrote:
>Thanks Umesh for reviewing the patch.
>Am fixing all the rest but a couple of comments.
>Responses to the latter and other questions below:
>
>...alan
>
>> > +enum intel_guc_state_capture_event_status {
>> > +   INTEL_GUC_STATE_CAPTURE_EVENT_STATUS_SUCCESS = 0x0,
>> > +   INTEL_GUC_STATE_CAPTURE_EVENT_STATUS_NOSPACE = 0x1,
>> > +};
>> > +
>> > +#define INTEL_GUC_STATE_CAPTURE_EVENT_STATUS_MASK      0x1
>>
>> MASK is not needed. See below
>
>Alan: Oh wait, actually the mask for the capture status is 0x000000FF
>(above is a typo). I'll fix above  mask and shall not change the
>code below because the upper 24 bits of the first dword of this msg
>is not defined.
>
>...
>
>
>> > +static int guc_capture_buf_cnt(struct __guc_capture_bufstate *buf)
>> > +{
>> > +   if (buf->rd == buf->wr)
>> > +           return 0;
>> > +   if (buf->wr > buf->rd)
>> > +           return (buf->wr - buf->rd);
>> > +   return (buf->size - buf->rd) + buf->wr;
>> > +}
>>
>> Is this a circular buffer shared between GuC and kmd? Since the size is
>> a power of 2, the above function is simply:
>>
>Alan: not this is not a circular buffer, so I'll keep the above
>version.
>> static u32 guc_capture_buf_count(struct __guc_capture_bufstate *buf)
>> {
>>       return (buf->wr - buf->rd) & (buf->size - 1);
>> }
>>
>
>...
>
>> > +static int
>> > +guc_capture_log_remove_dw(struct intel_guc *guc, struct __guc_capture_bufstate *buf,
>> > +                     u32 *dw)
>> > +{
>> > +   struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
>> > +   int tries = 2;
>> > +   int avail = 0;
>> > +   u32 *src_data;
>> > +
>> > +   if (!guc_capture_buf_cnt(buf))
>> > +           return 0;
>> > +
>> > +   while (tries--) {
>> > +           avail = guc_capture_buf_cnt_to_end(buf);
>>
>> Shouldn't this be avail = guc_capture_buf_cnt(buf)?
>>
>
>Alan : The "guc_capture_log_get_[foo]" functions only call above
>guc_capture_log_remove_dw when there isnt sufficient space to
>copy out an entire structure from the space between the read pointer
>and the end of the subregion (before the wrap-around). Those function
>would populate the structure dword by dword by calling above func.
>(NOTE the buffer and all error capture output structs are dword
>aligned). Thats why above function tries twice and resets buf->rd = 0
>if we find no space left at the end of the subregion (i.e. need to
>wrap around) - which can only be done by calling
>"guc_capture_buf_cnt_to_end".
>
>...
>
>> > +
>> > +   /* Bookkeeping stuff */
>> > +   guc->log_state[GUC_CAPTURE_LOG_BUFFER].flush += log_buf_state_local.flush_to_file;
>> > +   new_overflow = intel_guc_check_log_buf_overflow(guc,
>> > +                                                   &guc->log_state[GUC_CAPTURE_LOG_BUFFER],
>> > +                                                   full_count);
>>
>> I am not sure how the overflow logic works here and whether it is
>> applicable to the error capture buffer. Is the guc log buffer one big
>> buffer where the error capture is just a portion of that buffer? If so,
>> is the wrap around applicable to just the errorcapture buffer or to the
>> whole buffer?
>>
>Alan: Yes, the guc log buffer is one big log buffer but there are 3 independent
>subregions within that are populated with different content and are used
>in different ways and timings. Each guc-log subregion (general-logs,
>crash-dump and error-capture) has it's own read and write pointers.

got it. I would also put this one detail in the commit message since 
it's not quickly inferred.

>
>
>> Also what is the wrap_offset field in struct guc_log_buffer_state?
>
>Alan: This is the byte offset of a location in the subregion that is the 1st byte
>after the last valid guc entry written by Guc firmware before a wraparound
>was done. This would generate a tiny hole at the end of the subregion for better
>cacheline alignment when flushing entries into the subregion. However,
>the error-capture subregion is dword aligned and all of the output structures
>used for error-capture are also dword aligned so this can never happen for the
>error-capture subregion.
>
Makes sense, thanks for clarifying.

Umesh
>
>>
