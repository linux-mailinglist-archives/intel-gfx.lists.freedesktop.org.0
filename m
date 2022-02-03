Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0FF94A9011
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Feb 2022 22:40:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 053CF10E21F;
	Thu,  3 Feb 2022 21:40:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04FC310E21F
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Feb 2022 21:40:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643924451; x=1675460451;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=inHnAPWcGWQh0uR6z+1MVfGL6ziIsIXm2vgQ2Bto2BQ=;
 b=mTm7m+N0Zn6lNcKQc7zLbYvvTCa3xrjIPbRCiBvIIUBHVcWx1/wkAcrg
 cJ6xYKFf9F0DpsmRBM6/w5LiDAgKmJkWUKBVlnbo4SV/ou4yflEYkOEV+
 uyzq4PHyEfXz6saxEkqG8afYsyN5HwnB8s6NizLv2i0inOr/42KJbMFAj
 gaDwzKvKt/AX0NSCixFwv+IOJEF/UsMxxGkBmYuMe35WRu7hETf0Jt+vX
 HMKx5/N65ygV8j0zR8sYGT4jMeITW7H3HiTNVA9rmgBUvNbK2jOoittpe
 rB4oOP9YOodRo/0dsLkpNVxzMPqI1RnZHwyGeJ2+njIsc9Pmyic/RTxDE w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10247"; a="247092272"
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="247092272"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 13:40:50 -0800
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="538930290"
Received: from ekabir-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.144.43])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 13:40:50 -0800
Date: Thu, 3 Feb 2022 13:40:48 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
Message-ID: <20220203214048.ibdty7rftm5nqwjr@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220126104822.3653079-1-alan.previn.teres.alexis@intel.com>
 <20220126104822.3653079-2-alan.previn.teres.alexis@intel.com>
 <20220126224619.lyftw7w3okka4lfg@ldmartin-desk2>
 <20220203190324.GA4413@jons-linux-dev-box>
 <20220203200453.jrxhact4bcmwfpw7@ldmartin-desk2>
 <d96b56cd199796f429263ebb5335d97dfd2d9e3d.camel@intel.com>
 <a7dc9b9d3cbdabdec9a56a0a8406f15d1e72692b.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <a7dc9b9d3cbdabdec9a56a0a8406f15d1e72692b.camel@intel.com>
Subject: Re: [Intel-gfx] [PATCH v5 01/10] drm/i915/guc: Update GuC ADS size
 for error capture lists
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

On Thu, Feb 03, 2022 at 12:40:54PM -0800, Teres Alexis, Alan Previn wrote:
>Apologies, please ignore last reply (wrestling with my VNC). Proper reply:
>
>On Thu, 2022-02-03 at 12:39 -0800, Alan Previn Teres Alexis wrote:
>>
>>
>> On Thu, 2022-02-03 at 12:04 -0800, Lucas De Marchi wrote:
>> > On Thu, Feb 03, 2022 at 11:03:24AM -0800, Matthew Brost wrote:
>> > > On Wed, Jan 26, 2022 at 02:46:19PM -0800, Lucas De Marchi wrote:
>> > > > On Wed, Jan 26, 2022 at 02:48:13AM -0800, Alan Previn wrote:
>> > > > > Update GuC ADS size allocation to include space for
>> > > > > the lists of error state capture register descriptors.
>> > > > >
>> > > > > Also, populate the lists of registers we want GuC to report back to
>> > > > > Host on engine reset events. This list should include global,
>> > > > > engine-class and engine-instance registers for every engine-class
>> > > > > type on the current hardware.
>> > > > >
>> > > > > NOTE: Start with a sample table of register lists to layout the
>> > > > > framework before adding real registers in subsequent patch.
>> > > > >
>> > > > > Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
>> > > > > ---
>> > > >
>> > > > ...
>> > > >
>> > > > > static void __guc_ads_init(struct intel_guc *guc)
>> > > > > {
>> > > > >       struct intel_gt *gt = guc_to_gt(guc);
>> > > > > @@ -573,9 +553,9 @@ static void __guc_ads_init(struct intel_guc *guc)
>> > > > >
>> > > > >       base = intel_guc_ggtt_offset(guc, guc->ads_vma);
>> > > > >
>> > > > > -     /* Capture list for hang debug */
>> > > > > -     guc_capture_list_init(guc, blob);
>> > > > > -
>> > > > > +     /* Lists for error capture debug */
>> > > > > +     intel_guc_capture_prep_lists(guc, (struct guc_ads *)blob, base,
>> > > >
>> > > > no, please don't cast/export struct guc_ads like this. We can't really
>> > > > dereference it since it may be in IO memory.
>> > > >
>> > > > See https://patchwork.freedesktop.org/series/99378/ with the huge
>> > > > refactor in this file to make it conform to the rules of accessing IO
>> > > > memory.
>> > > >
>> > > > Maybe this list could be appended in the same reglist buffer and we just
>> > > > copy it once to its final location, like we are doing with the reglist?
>> > > >
>> > >
>> > > Agree with Lucas here, let's create the capture list on probe and store
>> > > it somewhere in the device data. On ADS population this more or less
>> > > turns into a memcpy (or after Lucas's series a dma-buf-map call). And on
>> > > fini, just free to stored data. The create capture list IMO is fine to
>> > > be done in an external file and return the data to the ADS code but
>> > > let's make sure everyone is on board with that. Maybe ping Lucas
>> > > directly about this?
>> >
>> > yeah, sounds good to me. My worry is exporting ADS struct layout to
>> > other compilation units. Asking for the entire ads blob
>> > (or what would be dma_buf_map in my patches, or iosys_map in the new
>> > version I will send soon) could quickly spread too much knowledge about it to
>> > the rest of the driver.
>> >
>>
>
>I'm in partial disagreement with above. Based on above statement, are we enforcing
>that we must always continue to only have ADS know the 2nd level blobl structure layout?

no

>Doesn't that also force that intelligence of knowing its substructure contents to
>always be in ADS only? So ADS C file continues to grow larger and larger with completely
>orthogonal domain specific knowledge? (golden context: engine info,
>error-capture: debug registers, etc..).

no, see below

>I believe ADS should really let the substructure headers be accessible to external
>modules to deal with the parsing, size determination and preparing its contents.
>
>NOTE: see my next comment specifically regarding the pointer access.
>
>
>> I think we should at most export the speficic offset inside the buffer
>>
>> > another compilation unit can fill out. In that case with the
>> > iosys_buf API we would return a shallow copy of our guc->ads_map +
>> > offset.
>> >
>> > And the other alternative would be as you suggested: save the list in a
>> > temporary buffer and when needed call intel_guc_ads() to populate that
>> > into ads in the right place.
>> >
>>
>Alan: The first part of above is already what is happening in my series today,
>we have a seperate register list  in the intel_guc_capture module

no, what you have in this patch I commented on is:

>> > > > > +     /* Lists for error capture debug */
>> > > > > +     intel_guc_capture_prep_lists(guc, (struct guc_ads *)blob, base,

you are passing the complete ads blob outside. I'd even try to avoid passing 
the second level struct depending on the case, but that would be
much more acceptable.



>that also determines (based on device and fusing) which registers
>to include or exclude. There is are static global lists and
>per-gt-allocated lists (based on fuse masks). The latter
>is not in current rev but already commented as planned change.
>
>So in response to the original review comment, I can change this
>patch so that the ADS gets a regular heap-kzalloc-allocated pointer and
>size from the error-capture module and ADS do the copying into the
>io-mem ptr but i want to ensure the layout of the error-capture
>lists are not private to ADS only.
>
>Are we okay with that?

I think that is fine.  Either of these 2 solutions would actually be
fine with me. Note that in my patch series I use both depending on the
case. The reglist uses a temporary buffer allocated on gt init, while
all the remaining read/write go directlry to the ads_map. There is even the
intel_guc_engine_usage_record_map() that exports the second level struct
and intel_guc_submission.c reads that out (see
https://patchwork.freedesktop.org/patch/471052/?series=99378&rev=1)
When doing the patch I was tempted to change that with something like

	intel_guc_ads_get_engine_usage_record(engine, &last_switch, &ctx_id, &total)

but decided that it would not be future-proof.

Lucas De Marchi

>
>
>>
>> > The integration with iosys-map I can figure out if my patch series lands
>> > after this one, or I can help rebasing this otherwise. But IMO we
>> > should not pass the plain blob pointer around regardless of iosys-map.
>> >
>> >
>> > thanks
>> > Lucas De Marchi
>> >
>> > > Specific patch Lucas's is referencing:
>> > > https://patchwork.freedesktop.org/patch/471051/?series=99378&rev=1
>> > >
>> > > Matt
>> > >
>> > > > Lucas De Marchi
>
