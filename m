Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id BE/LG2QGSGpFjwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Jul 2026 20:58:44 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFBE870504D
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Jul 2026 20:58:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=arm.com header.s=foss header.b=XE7CPE5M;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=arm.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3951510E66F;
	Fri,  3 Jul 2026 18:58:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by gabe.freedesktop.org (Postfix) with ESMTP id 56BA110E65A;
 Fri,  3 Jul 2026 18:58:36 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C53471756;
 Fri,  3 Jul 2026 11:58:31 -0700 (PDT)
Received: from [10.2.212.23] (e121345-lin.cambridge.arm.com [10.2.212.23])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6348A3F905;
 Fri,  3 Jul 2026 11:58:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=arm.com; s=foss;
 t=1783105116; bh=eJi3Q668y9RAPTvxGdrmsu4bbQ/DxsV+6g+FezUkJLA=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=XE7CPE5MdLDFjPysJeNjbm56qsnl/g7p4caBxL49moaNJ8FjVu9pvtO+g+sItZO1a
 M0c8apqFxgI3llPzzC9FgK/HOZzcjhOlNNLMsp/Z0vrDdddNLxgQ/hC8moCoEuhyOY
 ksTufc2hx7lIKBU3LHszq3cPrKRBfccmqELbFOg4=
Message-ID: <90558ba3-44e6-4d5e-9c72-ed8817d372be@arm.com>
Date: Fri, 3 Jul 2026 19:58:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] drivers/iommu: Catch scatterlist length overflows
To: Jason Gunthorpe <jgg@ziepe.ca>, Krzysztof Karas <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 iommu@lists.linux.dev, Andi Shyti <andi.shyti@linux.intel.com>,
 Joerg Roedel <joro@8bytes.org>, =?UTF-8?Q?Micha=C5=82_Grzelak?=
 <michal.grzelak@intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>
References: <20260701104437.236979-1-krzysztof.karas@intel.com>
 <20260701104437.236979-4-krzysztof.karas@intel.com>
 <20260703162236.GX7525@ziepe.ca>
From: Robin Murphy <robin.murphy@arm.com>
Content-Language: en-GB
In-Reply-To: <20260703162236.GX7525@ziepe.ca>
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
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robin.murphy@arm.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,arm.com:mid,arm.com:from_mime,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EFBE870504D

On 03/07/2026 5:22 pm, Jason Gunthorpe wrote:
> On Wed, Jul 01, 2026 at 10:44:37AM +0000, Krzysztof Karas wrote:
>> It is possible, when a very large mapping uses a single
>> scatterlist, that padding overflows scatterlist's length field.
>> This results in:
>>   1) silently wrapping the value
>>   2) smaller than desired mappings produced by iommu_map_sg
>>   3) leaving mapped bytes in memory (no iommu_unmap)
>>
>> Address this issue by adding overflow detection for previous
>> scatterlist length field.
> 
> Urk, this is unfortunate, it means we cannot map certain kinds of
> scatterlists? Meaning there is a condition that makes a scatterlist
> ill formed?
> 
> This seems like something that needs to be more clearly documented and
> we need to ensure at least the common scatterlist builders don't hit
> it..

Well, it's taken 10 years to be caught by a test which seemingly expects 
the mapping of a single absurdly giant scatterlist to fail anyway, so 
combined with the great urgency to get rid of scatterlists, I hardly see 
it being a big deal... This will always have returned an error due to 
the "ret < iova_len" condition at the end, the fix just means we can now 
error out earlier without passing a mangled list to iommu_map_sg() and 
corrupting the pagetable in the process.

Certainly if a list was initially malformed with an individual segment 
longer than the segment boundary mask then it's not going to do any 
favours here, but I suspect this is likely just regular iova_granule 
rounding overflowing when the segment boundary is the maximum 4GB, since 
the largest representable segment length is 4GB - 1. Note the 
off-by-an-exact-multiple-of-4GB error in Krzysztof's logging from the v1 
thread:

[   79.915571] iommu_dma_map_sg: ret = 7138717696, iova_len = 20023619584

Quite simply this code was never written with the expectation of mapping 
4GB+ of _physically contiguous_ memory in one go. We could possibly try 
adding a bunch of special-case complexity to allow treating UINT_MAX as 
4GB through iommu_map_sg() if there was a real need to make something 
which never worked start working, but going back to my initial point, it 
really doesn't seem worth the bother.

Thanks,
Robin.

>> diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
>> index 9abaec0703ef..c403057577df 100644
>> --- a/drivers/iommu/dma-iommu.c
>> +++ b/drivers/iommu/dma-iommu.c
>> @@ -1493,8 +1493,18 @@ int iommu_dma_map_sg(struct device *dev, struct scatterlist *sg, int nents,
>>   		 *   time through here (i.e. before it has a meaningful value).
>>   		 */
>>   		if (pad_len && pad_len < s_length - 1) {
>> -			prev->length += pad_len;
>> -			iova_len += pad_len;
>> +			if (overflows_type(prev->length + pad_len, prev->length)) {
>> +				/*
>> +				 * For large mappings spanning multiple GBs we
>> +				 * may not be able to fit all needed padding into
>> +				 * sg->length.
>> +				 */
>> +				ret = -EOVERFLOW;
>> +				goto out_restore_sg;
>> +			} else {
>> +				prev->length += pad_len;
>> +				iova_len += pad_len;
>> +			}
> 
> It is better to use
>    check_add_overflow(prev->length, pad_len, &prev->length)
> 
> instead of overflows_type()..
> 
> Jason

