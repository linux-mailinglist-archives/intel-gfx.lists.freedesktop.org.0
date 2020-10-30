Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00AC92A003C
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Oct 2020 09:43:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0565E6ED24;
	Fri, 30 Oct 2020 08:43:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B1236ED20
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Oct 2020 08:43:55 +0000 (UTC)
IronPort-SDR: zIhddJnHw01i2zsG1q5R50YGTpsLOSTA6rU0HsD/BZ8QitnJCukpWL4GB3C08SVc0vJXLE2aWx
 Ci0mEqXprcYQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9789"; a="148433260"
X-IronPort-AV: E=Sophos;i="5.77,432,1596524400"; d="scan'208";a="148433260"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2020 01:43:55 -0700
IronPort-SDR: PxT3dfPT8f/7noI0BSdIMrHCrPW9+mRA4J4YgQ7ce1KcsiyySU8eaSds6jxV2Q4fngxL141W1v
 FI1n0o9L//3w==
X-IronPort-AV: E=Sophos;i="5.77,432,1596524400"; d="scan'208";a="527048950"
Received: from bmurphy-mobl.ger.corp.intel.com (HELO [10.249.41.199])
 ([10.249.41.199])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2020 01:43:54 -0700
To: Matthew Brost <matthew.brost@intel.com>
References: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
 <20201016104444.1492028-3-maarten.lankhorst@linux.intel.com>
 <20201020201816.GA6055@gtax-ubuntu-1910.fm.intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <b5a7ac50-0a09-4cc3-22b5-724f8932c945@linux.intel.com>
Date: Fri, 30 Oct 2020 09:43:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20201020201816.GA6055@gtax-ubuntu-1910.fm.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v4 02/61] drm/i915: Add missing -EDEADLK
 handling to execbuf pinning
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Op 20-10-2020 om 22:18 schreef Matthew Brost:
> On Fri, Oct 16, 2020 at 12:43:45PM +0200, Maarten Lankhorst wrote:
>> i915_vma_pin may fail with -EDEADLK when we start locking page tables,
>> so ensure we handle this correctly.
>>
>> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>> ---
>>  .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 23 +++++++++++++++----
>>  1 file changed, 18 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>> index a199336792fb..0f5efced0b87 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>> @@ -419,13 +419,14 @@ static u64 eb_pin_flags(const struct drm_i915_gem_exec_object2 *entry,
>>  	return pin_flags;
>>  }
>>  
>> -static inline bool
>> +static inline int
>>  eb_pin_vma(struct i915_execbuffer *eb,
>>  	   const struct drm_i915_gem_exec_object2 *entry,
>>  	   struct eb_vma *ev)
>>  {
>>  	struct i915_vma *vma = ev->vma;
>>  	u64 pin_flags;
>> +	int err;
>>  
>>  	if (vma->node.size)
>>  		pin_flags = vma->node.start;
>> @@ -438,16 +439,24 @@ eb_pin_vma(struct i915_execbuffer *eb,
>>  
>>  	/* Attempt to reuse the current location if available */
>>  	/* TODO: Add -EDEADLK handling here */
> Drop the TODO?
>
>> -	if (unlikely(i915_vma_pin_ww(vma, &eb->ww, 0, 0, pin_flags))) {
>> +	err = i915_vma_pin_ww(vma, &eb->ww, 0, 0, pin_flags);
>> +	if (err == -EDEADLK)
>> +		return err;
>> +
>> +	if (unlikely(err)) {
>>  		if (entry->flags & EXEC_OBJECT_PINNED)
>>  			return false;
>>  
>>  		/* Failing that pick any _free_ space if suitable */
>> -		if (unlikely(i915_vma_pin_ww(vma, &eb->ww,
>> +		err = i915_vma_pin_ww(vma, &eb->ww,
>>  					     entry->pad_to_size,
>>  					     entry->alignment,
>>  					     eb_pin_flags(entry, ev->flags) |
>> -					     PIN_USER | PIN_NOEVICT)))
>> +					     PIN_USER | PIN_NOEVICT);
>> +		if (err == -EDEADLK)
>> +			return err;
>> +
>> +		if (unlikely(err))
>>  			return false;
> Confusing to return a boolean 'false' while the return value of this
> function is an int. Return '0' if that is the intent, which I believe it
> based on how the caller handles the return. 

Yeah, I think it makes more sense to change eb_pin_vma to a proper int, instead of a special one.

In most places we can just propagate the error. I will respin this patch. :)

>>  	}
>>  
>> @@ -900,7 +909,11 @@ static int eb_validate_vmas(struct i915_execbuffer *eb)
>>  		if (err)
>>  			return err;
>>  
> Can't say I love the triple comparison of the return values, but if you
> need to do this I'd put all of comparison in the same clause. Just my
> opinion.
Neither. I think I will just special case -EDEADLK, which should be easy with the fix to eb_pin_vma I suggested above.
>
> Matt
>
>> -		if (eb_pin_vma(eb, entry, ev)) {
>> +		err = eb_pin_vma(eb, entry, ev);
>> +		if (err < 0)
>> +			return err;
>> +
>> +		if (err > 0) {
>>  			if (entry->offset != vma->node.start) {
>>  				entry->offset = vma->node.start | UPDATE;
>>  				eb->args->flags |= __EXEC_HAS_RELOC;
>> -- 
>> 2.28.0
>>
>> _______________________________________________
>> Intel-gfx mailing list
>> Intel-gfx@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/intel-gfx


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
