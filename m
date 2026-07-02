Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ah6aMg9TRmpDQwsAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 14:01:19 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 776496F7359
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 14:01:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=arm.com header.s=foss header.b=O5la7sBy;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=arm.com (policy=none)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BC1B10F320;
	Thu,  2 Jul 2026 12:01:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8D3A410F320;
 Thu,  2 Jul 2026 12:01:11 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 98D0D1655;
 Thu,  2 Jul 2026 05:01:06 -0700 (PDT)
Received: from [10.2.212.23] (e121345-lin.cambridge.arm.com [10.2.212.23])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9EAAB3F85F;
 Thu,  2 Jul 2026 05:01:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=arm.com; s=foss;
 t=1782993671; bh=Q++t6UDjEPmAM1sRpwFz4r69sHx9kEtoP4L1SoBqxGQ=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=O5la7sBy9fpG9oKdnfnA7d5kfya6c7tw+A6LroXoItQlVAf1iyPXjjgCxSHX0d7Vg
 hIP+jrTnvTVFjlgfnrVCEIHoqJlHVFsg8UBSu4eTTScJh7rW6PCoFFGvCBZiVSLMHe
 tpk4DdMS5+Pi+vpx5n7NY+ZVX92QhgW61o7a2Ubc=
Message-ID: <50d61140-15e2-471e-8a07-d4a3752ddcbc@arm.com>
Date: Thu, 2 Jul 2026 13:01:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] drm/i915/gem: split shared memory allocation table
 logic
To: Krzysztof Karas <krzysztof.karas@intel.com>,
 Andi Shyti <andi.shyti@kernel.org>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 iommu@lists.linux.dev, Andi Shyti <andi.shyti@linux.intel.com>,
 Joerg Roedel <joro@8bytes.org>, =?UTF-8?Q?Micha=C5=82_Grzelak?=
 <michal.grzelak@intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>
References: <20260701104437.236979-1-krzysztof.karas@intel.com>
 <20260701104437.236979-2-krzysztof.karas@intel.com>
 <akUibf3NyThHnXco@zenone.zhora.eu>
 <5yosfyp4yuvix56sc7uzsbelndiph2ibzzg747lyrklqjy4bxr@mbbbcvl2cczk>
From: Robin Murphy <robin.murphy@arm.com>
Content-Language: en-GB
In-Reply-To: <5yosfyp4yuvix56sc7uzsbelndiph2ibzzg747lyrklqjy4bxr@mbbbcvl2cczk>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.49 / 15.00];
	R_DKIM_REJECT(1.00)[arm.com:s=foss];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[arm.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[arm.com:-];
	RSPAMD_EMAILBL_FAIL(0.00)[krzysztof.karas.intel.com:query timed out];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robin.murphy@arm.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,arm.com:mid,arm.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 776496F7359

On 02/07/2026 7:18 am, Krzysztof Karas wrote:
> Hi Andi,
> 
> thanks for reviewing!
> 
> On 2026-07-01 at 16:38:11 +0200, Andi Shyti wrote:
>> Hi Krzysztof,
>>
>> On Wed, Jul 01, 2026 at 10:44:35AM +0000, Krzysztof Karas wrote:
>>> shmem_sg_alloc_table is a complex and hard to read function.
>>> Split its logic into smaller pieces to improve readability and
>>> reduce indentation. Change the main "for" loop into "while" to
>>> get rid of obscure iterator "i" and be more explicit in
>>> traversing scatterlist.
>>
>> any chance we can split this cleanup into smaller pieces?
> Yeah, I'll work something out.
> 
>>
>>> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
>>
>> ...
>>
>>> +static struct folio *shmem_shrink_get_folio(struct address_space *mapping,
>>> +					    unsigned long folio_index,
>>> +					    gfp_t gfp, unsigned int pages_left,
>>> +					    struct drm_i915_private *i915)
>>> +{
>>> +#define MAX_READS 2
>>
>> This MAX_READS here is very ugly! Just use 2 and explain it in a
>> comment. In the 'if' below you can check out of "if (... || i)"
>> and still explain it in a comment.
> If we are on the topic of personal preferences, I'd prefer
> moving this to a variable instead of leaving a magic number
> buried in the code. The comment is unnecessary if you figure out
> what this loop does and in the end "2" is just a number somebody
> picked way back.

FWIW since I'm looking at the thread - indeed if it's just a retry loop 
and the actual index value isn't significant, then often a count-down 
loop can be the most self-explanatory, e.g.:

	int retries = 2;

	while (retries--) {
		...
	}

Or perhaps in this case:

	do {
		folio = shmem_read_folio();
		if (IS_ERR(folio))
			i915_gem_shrink();
	while (!IS_ERR(folio) && --retries);
	return folio;

Cheers,
Robin.

>>
>>> +	struct folio *folio;
>>> +	unsigned int i;
>>> +
>>> +	for (i = 0; i < MAX_READS; i++) {
>>> +		cond_resched();
>>> +		folio = shmem_read_folio_gfp(mapping, folio_index, gfp);
>>> +		if (!IS_ERR(folio) || i == MAX_READS - 1)
>>> +			return folio;
>>> +
>>> +		i915_gem_shrink(NULL, i915, 2 * pages_left, NULL,
>>
>> /pages_left/page_count/
> I mean, sure, but is there a reason for using "count" instead of
> "left"?
> 
>>
>>> +				I915_SHRINK_BOUND | I915_SHRINK_UNBOUND);
>>> +
>>
>> ...
>>
>>> +	}
>>> +
>>> +	/* Should never happen */
>>> +	WARN_ON_ONCE(1);
>>
>> no need.
> Okay, I'll remove it.
> 
>>
>> Thanks,
>> Andi
>>
>>> +	return ERR_PTR(-EINVAL);
>>> +}
> 

