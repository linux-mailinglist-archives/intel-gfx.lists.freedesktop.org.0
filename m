Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A60547EEBE
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Dec 2021 13:09:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 997AE10E39F;
	Fri, 24 Dec 2021 12:09:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6958B10E39F
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Dec 2021 12:09:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640347784; x=1671883784;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=Zo6kBTV25A2F0tRHU2SvhHbTatvVXR9v7htMVj5FcBY=;
 b=Z5B77WtAKfZqqT3VnrtFZ+YG0g0OHx98NBkyhizG3Xr7+dxTWjDcp2Fo
 0saDFWqOnNNF7kwTBLltCB2KQlfOqV8z6esGr0mrpzaalMX0mUGU1X6Bq
 vCKpRNoB3eBIk/aAJraRhQk8027Oi4dbI9DVVnvKnwTK/AEgcTXhfO4HQ
 YFJV6SEFH0wBbb30fMbw75aoEgmo4ezrloIAyjYnwYpiewKZHR6FXZ/OZ
 XBsipSNS4bq3FHGWrmtkgJFDHGOX1jYknbM3N5Xut+U5xbyfU2gMs5/gd
 9iDmiYsfHnhr5yGruq1gWfYrPVANlLMLZUJPBSp1NiCOWH1DNUjqCdN46 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10207"; a="301730716"
X-IronPort-AV: E=Sophos;i="5.88,232,1635231600"; d="scan'208";a="301730716"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Dec 2021 04:09:43 -0800
X-IronPort-AV: E=Sophos;i="5.88,232,1635231600"; d="scan'208";a="468827399"
Received: from conorgex-mobl.ger.corp.intel.com (HELO [10.213.229.158])
 ([10.213.229.158])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Dec 2021 04:09:42 -0800
Message-ID: <c0fa7466-ecdc-4768-0584-6937e7f0d71a@linux.intel.com>
Date: Fri, 24 Dec 2021 12:09:38 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>,
 "Brost, Matthew" <matthew.brost@intel.com>
References: <20211122230402.2023576-1-alan.previn.teres.alexis@intel.com>
 <20211122230402.2023576-8-alan.previn.teres.alexis@intel.com>
 <20211208002215.GA17960@jons-linux-dev-box>
 <bf9b1af14a700959ca58e615d7d15cb9300ab56f.camel@intel.com>
 <fb0f6eace4bd1c243544a0804ffa9fa5b16159a6.camel@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <fb0f6eace4bd1c243544a0804ffa9fa5b16159a6.camel@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [RFC 7/7] drm/i915/guc: Print the GuC error capture
 output register list.
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


Hi,

Somehow I stumbled on this while browsing through the mailing list.

On 23/12/2021 18:54, Teres Alexis, Alan Previn wrote:
> Revisiting below hunk of patch-7 comment, as per offline discussion with Matt,
> there is little benefit to even making that guc-id lookup because:
> 
> 1. the delay between the context reset notification (when the vmas are copied
>     and when we verify we had received a guc err capture dump) may be subjectively
>     large enough and not tethered that the guc-id may have already been re-assigned.
> 
> 2. I was really looking for some kind of unique context handle to print out that could
>     be correlated (by user inspecting the dump) back to a unique app or process or
>     context-id but cant find such a param in struct intel_context.
> 
> As part of further reviewing the end to end flows and possible error scenarios, there
> also may potentially be a mismatch between "which context was reset by guc at time-n"
> vs "which context's vma buffers is being printed out at time-n+x" if
> we are experiencing back-to-back resets and the user dumped the debugfs x-time later.

What does this all actually mean, because it sounds rather alarming, 
that it just won't be possible to know which context, belonging to which 
process, was reset? And because of guc_id potentially re-assigned even 
the captured VMAs may not be the correct ones?

Regards,

Tvrtko

> 
> (Recap: First, guc notifies capture event, second, guc notifies context reset during
> which we trigger i915_gpu_coredump. In this second step, the vma's are dumped and we
> verify that the guc capture happened but don't parse the guc-err-capture-logs yet.
> Third step is when user triggers the debugfs to dump which is when we parse the error
> capture logs.)
> 
> As a fix, what we can do in the guc_error_capture report out is to ensure that
> we dont re-print the previously dumped vmas if we end up finding multiple
> guc-error-capture dumps since the i915_gpu_coredump would have only captured the vma's
> for the very first context that was reset. And with guc-submission, that would always
> correlate to the "next-yet-to-be-parsed" guc-err-capture dump (since the guc-error-capture
> logs are large enough to hold data for multiple dumps).
> 
> The changes (removal of below-hunk and adding of only-print-the-first-vma") is trivial
> but i felt it warranted a good explanation. Apologies for the inbox noise.
> 
> ...alan
> 
> On Tue, 2021-12-07 at 22:32 -0800, Alan Previn Teres Alexis wrote:
>> Thanks again for the detailed review here.
>> Will fix all the rest on next rev.
>> One special response for this one:
>>
>>
>> On Tue, 2021-12-07 at 16:22 -0800, Matthew Brost wrote:
>>> On Mon, Nov 22, 2021 at 03:04:02PM -0800, Alan Previn wrote:
>>>> +			if (datatype == GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE) {
>>>> +				GCAP_PRINT_GUC_INST_INFO(i915, ebuf, data);
>>>> +				eng_inst = FIELD_GET(GUC_CAPTURE_DATAHDR_SRC_INSTANCE, data.info);
>>>> +				eng = guc_lookup_engine(guc, engineclass, eng_inst);
>>>> +				if (eng) {
>>>> +					GCAP_PRINT_INTEL_ENG_INFO(i915, ebuf, eng);
>>>> +				} else {
>>>> +					PRINT(&i915->drm, ebuf, "    i915-Eng-Lookup Fail!\n");
>>>> +				}
>>>> +				ce = guc_context_lookup(guc, data.guc_ctx_id);
>>>
>>> You are going to need to reference count the 'ce' here. See
>>> intel_guc_context_reset_process_msg for an example.
>>>
>>
>> Oh crap - i missed this one - which you had explicitly mentioned offline when i was doing the
>> development. Sorry about that i just totally missed it from my todo-notes.
>>
>> ...alan
> 
