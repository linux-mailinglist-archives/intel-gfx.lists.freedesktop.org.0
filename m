Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C3A13A4266
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Jun 2021 14:50:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1BF56EE91;
	Fri, 11 Jun 2021 12:50:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ste-pvt-msa2.bahnhof.se (ste-pvt-msa2.bahnhof.se
 [213.80.101.71])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6B046EE91
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Jun 2021 12:50:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by ste-pvt-msa2.bahnhof.se (Postfix) with ESMTP id D8F113F6F3
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Jun 2021 14:50:39 +0200 (CEST)
Authentication-Results: ste-pvt-msa2.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b="jnmeCtOl";
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.1
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, NICE_REPLY_A=-0.001,
 URIBL_BLOCKED=0.001] autolearn=ham autolearn_force=no
Authentication-Results: ste-ftg-msa2.bahnhof.se (amavisd-new);
 dkim=pass (1024-bit key) header.d=shipmail.org
Received: from ste-pvt-msa2.bahnhof.se ([127.0.0.1])
 by localhost (ste-ftg-msa2.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8lVg_MdEJ4BS for <intel-gfx@lists.freedesktop.org>;
 Fri, 11 Jun 2021 14:50:38 +0200 (CEST)
Received: by ste-pvt-msa2.bahnhof.se (Postfix) with ESMTPA id AE0483F6DE
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Jun 2021 14:50:38 +0200 (CEST)
Received: from [192.168.0.209] (unknown [192.198.151.43])
 by mail1.shipmail.org (Postfix) with ESMTPSA id D5343360132
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Jun 2021 14:50:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1623415838; bh=2vmOwzLsRh/UMV02oa5VM8WADDz7GzGZ0VMNPL8YLbM=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=jnmeCtOlNSA/oAlvGC8dmVqJXFQ2fw5/zfW4XvRKlzqzpl4dI5wX4MFIVhdaUWrny
 99aR/3YKo8c8spTIpluYWWYQjLb12aPXBLTgPi8cUMKDRmku19w2K6ZKuj7/RO+ZJu
 b/ZaAMc0xpx3YTHGlrOOh4b2Ws8pJhgGQbvnEf5s=
To: intel-gfx@lists.freedesktop.org
References: <eb71ee2d-3413-6ca8-0b7c-a58695f00b77@linux.intel.com>
 <162340805657.68262.6607541005525077753@jlahtine-mobl.ger.corp.intel.com>
 <162340998262.68262.6045527397253780242@jlahtine-mobl.ger.corp.intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <b105591a-44a3-55d5-f0d0-a4bd832f28d2@shipmail.org>
Date: Fri, 11 Jun 2021 14:50:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <162340998262.68262.6045527397253780242@jlahtine-mobl.ger.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PULL] topic/i915-ttm
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 6/11/21 1:13 PM, Joonas Lahtinen wrote:
> Quoting Joonas Lahtinen (2021-06-11 13:40:56)
>> Quoting Maarten Lankhorst (2021-06-11 12:27:15)
>>> Pull request for drm-misc-next and drm-intel-gt-next.
>>>
>>> topic/i915-ttm-2021-06-11:
>>> drm-misc and drm-intel pull request for topic/i915-ttm:
>>> - Convert i915 lmem handling to ttm.
>>> - Add a patch to temporarily add a driver_private member to vma_node.
>>> - Use this to allow mixed object mmap handling for i915.
>>> The following changes since commit 1bd8a7dc28c1c410f1ceefae1f2a97c06d1a67c2:
>>>
>>>    Merge tag 'exynos-drm-next-for-v5.14' of git://git.kernel.org/pub/scm/linux/kernel/git/daeinki/drm-exynos into drm-next (2021-06-11 14:19:12 +1000)
>> This base is not in drm-misc-next or drm-intel-gt-next, so effectively
>> we would end up pulling 478 extra commits from drm-next as a result. And
>> also causing all the warnings for those commits. I don't think we should
>> do that?
>>
>> The common ancestor would be ccd1950c2f7e38ae45aeefb99a08b39407cd6c63
>> "Merge tag 'drm-intel-gt-next-2021-05-28' of git://anongit.freedesktop.org/drm/drm-intel into drm-next"
>> Should we re-do the topic branch based on that?
> This problem seems to come from the fact that only the PR from yesterday
> that got merged to drm-next had the dependency patches. The previous
> backmerge of drm-next was requested too early.
>
> I've solved this with least hassle by backmerging drm-next again and
> then applying the PR to drm-intel-gt-next.

Yeah, that was motivated by our first i915 ttm patches IIRC depending on 
some recent changes in TTM, and then in addition we made changes to TTM 
that we were asked to merge through drm-misc-next to avoid conflicts. In 
hindsight it might have actually been better to merge the TTM changes 
through drm-intel-gt-next and take responsibility of resolving i915/TTM 
conflicts as they appear in drm-tip...

/Thomas


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
