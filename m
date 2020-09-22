Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E2B8274578
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Sep 2020 17:38:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA9006E896;
	Tue, 22 Sep 2020 15:38:44 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from ale.deltatee.com (ale.deltatee.com [204.191.154.188])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0220D6E896
 for <Intel-gfx@lists.freedesktop.org>; Tue, 22 Sep 2020 15:38:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=deltatee.com; s=20200525; h=Subject:Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=w91K0ySdj6J2fRTRA20OaGy7pb8BTxgzgdk9b0RyflE=; b=trj3yemx5Kb1/rvGL2tc2bAfA9
 T7dYUvEy8FYqlxJjS8Z1diE8qMOqIEVe2s0c+tDldX74S0XFfx1OLHwiycrmbyJBS7wxX4MqYGjY8
 Y+Hm0R/o6N3DRSM8YhfIhAMeXB4hYX47gab9Jz3x5oc6r1mpYg7NADVPs1FMmw8Uw4+zywSR1Unyf
 bxdrwI7WYbKFrYdPEhQZuqDgtMnaBcAkOlbdePklM96zB5V0wz0hyo3PPZ7iRZhszcmDVLH3+1M/g
 GVlt2q3igxqRzemAeg8na4VCEAdXc7JrPli8jWFI0Dh9/WN/uuizfLf/j3va35wPUwn80YKn3SxzF
 yuDkz7JQ==;
Received: from guinness.priv.deltatee.com ([172.16.1.162])
 by ale.deltatee.com with esmtp (Exim 4.92)
 (envelope-from <logang@deltatee.com>)
 id 1kKkNM-000140-Vs; Tue, 22 Sep 2020 09:38:41 -0600
To: Lu Baolu <baolu.lu@linux.intel.com>, Joerg Roedel <joro@8bytes.org>,
 Tom Murphy <murphyt7@tcd.ie>, David Woodhouse <dwmw2@infradead.org>,
 Christoph Hellwig <hch@infradead.org>
References: <20200912032200.11489-1-baolu.lu@linux.intel.com>
 <776771a2-247a-d1be-d882-bee02d919ae0@deltatee.com>
 <fe94760f-3c10-4222-ec87-291c01325fef@linux.intel.com>
 <e95a55ea-b03f-4b3c-327a-b48d364577e9@deltatee.com>
 <c8bde158-50f6-1656-4a7d-6323573ba501@linux.intel.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <0047a398-3246-9363-5092-adeab6a8b2b9@deltatee.com>
Date: Tue, 22 Sep 2020 09:38:37 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <c8bde158-50f6-1656-4a7d-6323573ba501@linux.intel.com>
Content-Language: en-CA
X-SA-Exim-Connect-IP: 172.16.1.162
X-SA-Exim-Rcpt-To: iommu@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Intel-gfx@lists.freedesktop.org,
 ashok.raj@intel.com, hch@infradead.org, dwmw2@infradead.org, murphyt7@tcd.ie,
 joro@8bytes.org, baolu.lu@linux.intel.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE,MYRULES_FREE,NICE_REPLY_A autolearn=ham
 autolearn_force=no version=3.4.2
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
Subject: Re: [Intel-gfx] [PATCH v3 0/6] Convert the intel iommu driver to
 the dma-iommu api
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
Cc: Intel-gfx@lists.freedesktop.org, Ashok Raj <ashok.raj@intel.com>,
 iommu@lists.linux-foundation.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 2020-09-21 6:24 p.m., Lu Baolu wrote:
>>>> I'm trying to test this on an old Sandy Bridge, but found that I get
>>>> spammed with warnings on boot. I've put a sample of a few of them below.
>>>> They all seem to be related to ioat.
>>>>
>>>> I had the same issue with Tom's v2 but never saw this on his v1.
>>>
>>> Have you verified whether this could be reproduced with the lasted
>>> upstream kernel (without this patch series)?
>>
>> Yes.
> 
> I am sorry. Just want to make sure I understand you correctly. :-) When
> you say "yes", do you mean you could reproduce this with pure upstream
> kernel (5.9-rc6)?

I mean I've verified the bug does *not* exist without this patch set.

> 
>> Also, it's hitting a warning in the dma-iommu code which would not
>> be hit without this patch set.
> 
> Without this series, DMA APIs don't go through dma-iommu. Do you mind
> posting the warning message?

It was on my original email but here it is again:


[   44.057877] ------------[ cut here ]------------
[   44.063167] WARNING: CPU: 4 PID: 84 at drivers/iommu/dma-iommu.c:496
__iommu_dma_unmap+0x115/0x130
[   44.073351] Modules linked in:
[   44.076882] CPU: 4 PID: 84 Comm: kworker/4:1 Tainted: G        W
   5.9.0-rc4-00006-g110da1e703a2 #216
[   44.087935] Hardware name: Supermicro SYS-7047GR-TRF/X9DRG-QF, BIOS
3.0a 12/05/2013
[   44.096650] Workqueue: events work_for_cpu_fn
[   44.101644] RIP: 0010:__iommu_dma_unmap+0x115/0x130
[   44.107225] Code: 48 8b 0c 24 48 c7 44 24 10 00 00 00 00 48 c7 44 24
18 00 00 00 00 48 c7 44 24 20 00 00 00 00 48 c7 44 24 08 ff ff ff ff eb
8d <0f> 0b e9 74 ff ff ff e8 1f 36 66 00 66 66 2e 0f 1f 84 00 00 00 00
[   44.128443] RSP: 0000:ffffc90002397c38 EFLAGS: 00010206
[   44.134413] RAX: 0000000000200000 RBX: 0000000000080000 RCX:
0000000000000000
[   44.144487] RDX: 0000000000000403 RSI: ffffffff82a7fb20 RDI:
ffff888477804f30
[   44.152613] RBP: 00000000fec00000 R08: 00000000000fec00 R09:
00000000000fedff
[   44.160733] R10: 0000000000000002 R11: 0000000000000004 R12:
ffff888270c39000
[   44.168861] R13: ffff888472d85ee8 R14: 0000000000080000 R15:
0000000000000000
[   44.176980] FS:  0000000000000000(0000) GS:ffff888479800000(0000)
knlGS:0000000000000000
[   44.186198] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[   44.192761] CR2: 0000000000000000 CR3: 0000000002a20001 CR4:
00000000000606e0
[   44.200871] Call Trace:
[   44.203716]  ? lockdep_hardirqs_on_prepare+0xad/0x180
[   44.209509]  iommu_dma_free+0x18/0x30
[   44.213734]  ioat_free_chan_resources+0x19e/0x300
[   44.219133]  ioat_dma_self_test+0x2a0/0x3d0
[   44.223964]  ioat_pci_probe+0x60e/0x903
[   44.228387]  local_pci_probe+0x42/0x80
[   44.232721]  work_for_cpu_fn+0x16/0x20
[   44.237037]  process_one_work+0x292/0x630
[   44.241644]  ? __schedule+0x344/0x970
[   44.245868]  worker_thread+0x227/0x3e0
[   44.250185]  ? process_one_work+0x630/0x630
[   44.254989]  kthread+0x136/0x150
[   44.258718]  ? kthread_use_mm+0x100/0x100
[   44.263334]  ret_from_fork+0x22/0x30
[   44.267474] irq event stamp: 1881262
[   44.271602] hardirqs last  enabled at (1881272): [<ffffffff811b8465>]
console_unlock+0x435/0x570
[   44.281593] hardirqs last disabled at (1881281): [<ffffffff811b845b>]
console_unlock+0x42b/0x570
[   44.291588] softirqs last  enabled at (1747140): [<ffffffff817da3e5>]
ioat_cleanup+0x65/0x470
[   44.301285] softirqs last disabled at (1747144): [<ffffffff817d797a>]
ioat_free_chan_resources+0x6a/0x300
[   44.312153] ---[ end trace ed0f88fd959a5a39 ]---
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
