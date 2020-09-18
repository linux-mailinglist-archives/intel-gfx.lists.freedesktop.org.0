Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 004A2270753
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Sep 2020 22:47:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F8196ED8A;
	Fri, 18 Sep 2020 20:47:44 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from ale.deltatee.com (ale.deltatee.com [204.191.154.188])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F043A6ED87
 for <Intel-gfx@lists.freedesktop.org>; Fri, 18 Sep 2020 20:47:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=deltatee.com; s=20200525; h=Subject:Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:References:Cc:To:From:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0WCJePsMIc8PmYYr3jv0z1ZzGHc7yYDmyDvySGIOkQ8=; b=gQJYqQSYtaAAES3C1f6tbQ5f4V
 9ha9xNaxenmitVBWr5ntwgf0d6dMRxtVZU68sRKK9VbURAl85ky7cPS+J5xJjNqDUPAyimh6Xh/Xe
 U0tRwK15N+byoXq1Df7aMMzHDtELZ4ySUc/hD2aEXtT2/QvBzvR1Ia1r1Fh1GLgWH3f8XVVn0xFwI
 VW0IJeYp1RLXyvMPk0887tKDLLhn701h5CDTWS0RU3GVzeOZ9ycKGJEAE04+orMZHtGCRxPCWoTz6
 0D2Naya7vhuTa2oC+R1mbax2x3ZlLI1m5qQbwC5+zGNMO1fgdunafVH/8wOxAb85ohyDwJ3zPS/Pc
 9tq/awbA==;
Received: from s01060023bee90a7d.cg.shawcable.net ([24.64.145.4]
 helo=[192.168.0.10])
 by ale.deltatee.com with esmtpsa (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.92) (envelope-from <logang@deltatee.com>)
 id 1kJNIB-0001e3-J4; Fri, 18 Sep 2020 14:47:41 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: Lu Baolu <baolu.lu@linux.intel.com>, Joerg Roedel <joro@8bytes.org>,
 Tom Murphy <murphyt7@tcd.ie>, David Woodhouse <dwmw2@infradead.org>,
 Christoph Hellwig <hch@infradead.org>
References: <20200912032200.11489-1-baolu.lu@linux.intel.com>
Message-ID: <776771a2-247a-d1be-d882-bee02d919ae0@deltatee.com>
Date: Fri, 18 Sep 2020 14:47:28 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200912032200.11489-1-baolu.lu@linux.intel.com>
Content-Language: en-US
X-SA-Exim-Connect-IP: 24.64.145.4
X-SA-Exim-Rcpt-To: iommu@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Intel-gfx@lists.freedesktop.org,
 ashok.raj@intel.com, hch@infradead.org, dwmw2@infradead.org, murphyt7@tcd.ie,
 joro@8bytes.org, baolu.lu@linux.intel.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-10.6 required=5.0 tests=ALL_TRUSTED,BAYES_00,
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

Hi Lu,

On 2020-09-11 9:21 p.m., Lu Baolu wrote:
> Tom Murphy has almost done all the work. His latest patch series was
> posted here.
>
> https://lore.kernel.org/linux-iommu/20200903201839.7327-1-murphyt7@tcd.ie/
>
> Thanks a lot!
>
> This series is a follow-up with below changes:
>
> 1. Add a quirk for the i915 driver issue described in Tom's cover
> letter.
> 2. Fix several bugs in patch "iommu: Allow the dma-iommu api to use
> bounce buffers" to make the bounce buffer work for untrusted devices.
> 3. Several cleanups in iommu/vt-d driver after the conversion.
>

I'm trying to test this on an old Sandy Bridge, but found that I get
spammed with warnings on boot. I've put a sample of a few of them below.
They all seem to be related to ioat.

I had the same issue with Tom's v2 but never saw this on his v1.

Thanks,

Logan


[   44.057877] ------------[ cut here ]------------
[   44.063167] WARNING: CPU: 4 PID: 84 at drivers/iommu/dma-iommu.c:496 __iommu_dma_unmap+0x115/0x130
[   44.073351] Modules linked in:
[   44.076882] CPU: 4 PID: 84 Comm: kworker/4:1 Tainted: G        W         5.9.0-rc4-00006-g110da1e703a2 #216
[   44.087935] Hardware name: Supermicro SYS-7047GR-TRF/X9DRG-QF, BIOS 3.0a 12/05/2013
[   44.096650] Workqueue: events work_for_cpu_fn
[   44.101644] RIP: 0010:__iommu_dma_unmap+0x115/0x130
[   44.107225] Code: 48 8b 0c 24 48 c7 44 24 10 00 00 00 00 48 c7 44 24 18 00 00 00 00 48 c7 44 24 20 00 00 00 00 48 c7 44 24 08 ff ff ff ff eb 8d <0f> 0b e9 74 ff ff ff e8 1f 36 66 00 66 66 2e 0f 1f 84 00 00 00 00
[   44.128443] RSP: 0000:ffffc90002397c38 EFLAGS: 00010206
[   44.134413] RAX: 0000000000200000 RBX: 0000000000080000 RCX: 0000000000000000
[   44.144487] RDX: 0000000000000403 RSI: ffffffff82a7fb20 RDI: ffff888477804f30
[   44.152613] RBP: 00000000fec00000 R08: 00000000000fec00 R09: 00000000000fedff
[   44.160733] R10: 0000000000000002 R11: 0000000000000004 R12: ffff888270c39000
[   44.168861] R13: ffff888472d85ee8 R14: 0000000000080000 R15: 0000000000000000
[   44.176980] FS:  0000000000000000(0000) GS:ffff888479800000(0000) knlGS:0000000000000000
[   44.186198] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[   44.192761] CR2: 0000000000000000 CR3: 0000000002a20001 CR4: 00000000000606e0
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
[   44.271602] hardirqs last  enabled at (1881272): [<ffffffff811b8465>] console_unlock+0x435/0x570
[   44.281593] hardirqs last disabled at (1881281): [<ffffffff811b845b>] console_unlock+0x42b/0x570
[   44.291588] softirqs last  enabled at (1747140): [<ffffffff817da3e5>] ioat_cleanup+0x65/0x470
[   44.301285] softirqs last disabled at (1747144): [<ffffffff817d797a>] ioat_free_chan_resources+0x6a/0x300
[   44.312153] ---[ end trace ed0f88fd959a5a39 ]---
[   44.353963] ------------[ cut here ]------------
[   44.359291] WARNING: CPU: 4 PID: 84 at drivers/iommu/dma-iommu.c:496 __iommu_dma_unmap+0x115/0x130
[   44.369482] Modules linked in:
[   44.373030] CPU: 4 PID: 84 Comm: kworker/4:1 Tainted: G        W         5.9.0-rc4-00006-g110da1e703a2 #216
[   44.384097] Hardware name: Supermicro SYS-7047GR-TRF/X9DRG-QF, BIOS 3.0a 12/05/2013
[   44.392825] Workqueue: events work_for_cpu_fn
[   44.397831] RIP: 0010:__iommu_dma_unmap+0x115/0x130
[   44.403421] Code: 48 8b 0c 24 48 c7 44 24 10 00 00 00 00 48 c7 44 24 18 00 00 00 00 48 c7 44 24 20 00 00 00 00 48 c7 44 24 08 ff ff ff ff eb 8d <0f> 0b e9 74 ff ff ff e8 1f 36 66 00 66 66 2e 0f 1f 84 00 00 00 00
[   44.424644] RSP: 0000:ffffc90002397c38 EFLAGS: 00010206
[   44.430627] RAX: 0000000000200000 RBX: 0000000000080000 RCX: 0000000000000000
[   44.438770] RDX: 0000000000000403 RSI: ffffffff82a7fb20 RDI: ffff888477804f30
[   44.446885] RBP: 00000000ffc00000 R08: 00000000000ffc00 R09: 00000000000ffdff
[   44.455000] R10: 0000000000000002 R11: 0000000000000004 R12: ffff888270c55000
[   44.463119] R13: ffff888472dc7268 R14: 0000000000080000 R15: 0000000000000000
[   44.471235] FS:  0000000000000000(0000) GS:ffff888479800000(0000) knlGS:0000000000000000
[   44.480440] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[   44.487004] CR2: 0000000000000000 CR3: 0000000002a20001 CR4: 00000000000606e0
[   44.495128] Call Trace:
[   44.498008]  iommu_dma_free+0x18/0x30
[   44.502230]  ioat_free_chan_resources+0x19e/0x300
[   44.507631]  ioat_dma_self_test+0x2a0/0x3d0
[   44.512466]  ioat_pci_probe+0x60e/0x903
[   44.516889]  local_pci_probe+0x42/0x80
[   44.521217]  work_for_cpu_fn+0x16/0x20
[   44.525540]  process_one_work+0x292/0x630
[   44.530157]  ? __schedule+0x344/0x970
[   44.534393]  worker_thread+0x227/0x3e0
[   44.538720]  ? process_one_work+0x630/0x630
[   44.543531]  kthread+0x136/0x150
[   44.547270]  ? kthread_use_mm+0x100/0x100
[   44.551889]  ret_from_fork+0x22/0x30
[   44.556034] irq event stamp: 2145654
[   44.560161] hardirqs last  enabled at (2145664): [<ffffffff811b8465>] console_unlock+0x435/0x570
[   44.570158] hardirqs last disabled at (2145673): [<ffffffff811b845b>] console_unlock+0x42b/0x570
[   44.580153] softirqs last  enabled at (2014254): [<ffffffff817da3e5>] ioat_cleanup+0x65/0x470
[   44.589854] softirqs last disabled at (2014258): [<ffffffff817d797a>] ioat_free_chan_resources+0x6a/0x300
[   44.600729] ---[ end trace ed0f88fd959a5a3a ]---
[   44.606043] ------------[ cut here ]------------
[   44.611331] WARNING: CPU: 4 PID: 84 at drivers/iommu/dma-iommu.c:496 __iommu_dma_unmap+0x115/0x130
[   44.621524] Modules linked in:
[   44.625050] CPU: 4 PID: 84 Comm: kworker/4:1 Tainted: G        W         5.9.0-rc4-00006-g110da1e703a2 #216
[   44.636119] Hardware name: Supermicro SYS-7047GR-TRF/X9DRG-QF, BIOS 3.0a 12/05/2013
[   44.644834] Workqueue: events work_for_cpu_fn
[   44.649827] RIP: 0010:__iommu_dma_unmap+0x115/0x130
[   44.655410] Code: 48 8b 0c 24 48 c7 44 24 10 00 00 00 00 48 c7 44 24 18 00 00 00 00 48 c7 44 24 20 00 00 00 00 48 c7 44 24 08 ff ff ff ff eb 8d <0f> 0b e9 74 ff ff ff e8 1f 36 66 00 66 66 2e 0f 1f 84 00 00 00 00
[   44.676618] RSP: 0000:ffffc90002397c38 EFLAGS: 00010206
[   44.682588] RAX: 0000000000200000 RBX: 0000000000080000 RCX: 0000000000000000
[   44.690702] RDX: 0000000000000403 RSI: ffffffff82a7fb20 RDI: ffff888477804f30
[   44.698816] RBP: 00000000ffa00000 R08: 00000000000ffa00 R09: 00000000000ffbff
[   44.706934] R10: 0000000000000002 R11: 0000000000000004 R12: ffff888270c55000
[   44.715054] R13: ffff888472dc7268 R14: 0000000000080000 R15: 0000000000000000
[   44.723174] FS:  0000000000000000(0000) GS:ffff888479800000(0000) knlGS:0000000000000000
[   44.732384] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[   44.738941] CR2: 0000000000000000 CR3: 0000000002a20001 CR4: 00000000000606e0
[   44.747060] Call Trace:
[   44.749921]  ? lockdep_hardirqs_on_prepare+0xad/0x180
[   44.755706]  iommu_dma_free+0x18/0x30
[   44.759931]  ioat_free_chan_resources+0x19e/0x300
[   44.765332]  ioat_dma_self_test+0x2a0/0x3d0
[   44.770156]  ioat_pci_probe+0x60e/0x903
[   44.774583]  local_pci_probe+0x42/0x80
[   44.778909]  work_for_cpu_fn+0x16/0x20
[   44.783232]  process_one_work+0x292/0x630
[   44.787846]  ? __schedule+0x344/0x970
[   44.792079]  worker_thread+0x227/0x3e0
[   44.796403]  ? process_one_work+0x630/0x630
[   44.801205]  kthread+0x136/0x150
[   44.804946]  ? kthread_use_mm+0x100/0x100
[   44.809563]  ret_from_fork+0x22/0x30
[   44.813704] irq event stamp: 2146044
[   44.817831] hardirqs last  enabled at (2146054): [<ffffffff811b8465>] console_unlock+0x435/0x570
[   44.827821] hardirqs last disabled at (2146063): [<ffffffff811b845b>] console_unlock+0x42b/0x570
[   44.837810] softirqs last  enabled at (2014254): [<ffffffff817da3e5>] ioat_cleanup+0x65/0x470
[   44.847503] softirqs last disabled at (2014258): [<ffffffff817d797a>] ioat_free_chan_resources+0x6a/0x300
[   44.858366] ---[ end trace ed0f88fd959a5a3b ]---
[   44.863675] ------------[ cut here ]------------
[   44.868969] WARNING: CPU: 4 PID: 84 at drivers/iommu/dma-iommu.c:496 __iommu_dma_unmap+0x115/0x130
[   44.879148] Modules linked in:
[   44.882689] CPU: 4 PID: 84 Comm: kworker/4:1 Tainted: G        W         5.9.0-rc4-00006-g110da1e703a2 #216
[   44.893760] Hardware name: Supermicro SYS-7047GR-TRF/X9DRG-QF, BIOS 3.0a 12/05/2013
[   44.902487] Workqueue: events work_for_cpu_fn
[   44.907493] RIP: 0010:__iommu_dma_unmap+0x115/0x130
[   44.913080] Code: 48 8b 0c 24 48 c7 44 24 10 00 00 00 00 48 c7 44 24 18 00 00 00 00 48 c7 44 24 20 00 00 00 00 48 c7 44 24 08 ff ff ff ff eb 8d <0f> 0b e9 74 ff ff ff e8 1f 36 66 00 66 66 2e 0f 1f 84 00 00 00 00
[   44.934290] RSP: 0000:ffffc90002397c38 EFLAGS: 00010206
[   44.940254] RAX: 0000000000200000 RBX: 0000000000080000 RCX: 0000000000000000
[   44.948379] RDX: 0000000000000403 RSI: ffffffff82a7fb20 RDI: ffff888477804f30
[   44.956505] RBP: 00000000ff800000 R08: 00000000000ff800 R09: 00000000000ff9ff
[   44.964627] R10: 0000000000000002 R11: 0000000000000004 R12: ffff888270c55000
[   44.972748] R13: ffff888472dc7268 R14: 0000000000080000 R15: 0000000000000000
[   44.980871] FS:  0000000000000000(0000) GS:ffff888479800000(0000) knlGS:0000000000000000
[   44.990084] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[   44.996644] CR2: 0000000000000000 CR3: 0000000002a20001 CR4: 00000000000606e0
[   45.004759] Call Trace:
[   45.007600]  ? lockdep_hardirqs_on_prepare+0xad/0x180
[   45.013391]  iommu_dma_free+0x18/0x30
[   45.017609]  ioat_free_chan_resources+0x19e/0x300
[   45.022992]  ioat_dma_self_test+0x2a0/0x3d0
[   45.027809]  ioat_pci_probe+0x60e/0x903
[   45.032237]  local_pci_probe+0x42/0x80
[   45.036563]  work_for_cpu_fn+0x16/0x20
[   45.040886]  process_one_work+0x292/0x630
[   45.045500]  ? __schedule+0x344/0x970
[   45.049735]  worker_thread+0x227/0x3e0
[   45.054061]  ? process_one_work+0x630/0x630
[   45.058864]  kthread+0x136/0x150
[   45.062597]  ? kthread_use_mm+0x100/0x100
[   45.067200]  ret_from_fork+0x22/0x30
[   45.071335] irq event stamp: 2146432
[   45.075458] hardirqs last  enabled at (2146442): [<ffffffff811b8465>] console_unlock+0x435/0x570
[   45.085440] hardirqs last disabled at (2146451): [<ffffffff811b845b>] console_unlock+0x42b/0x570
[   45.095432] softirqs last  enabled at (2014254): [<ffffffff817da3e5>] ioat_cleanup+0x65/0x470
[   45.105134] softirqs last disabled at (2014258): [<ffffffff817d797a>] ioat_free_chan_resources+0x6a/0x300
[   45.116004] ---[ end trace ed0f88fd959a5a3c ]---
[   45.121305] ------------[ cut here ]------------
[   45.126596] WARNING: CPU: 4 PID: 84 at drivers/iommu/dma-iommu.c:496 __iommu_dma_unmap+0x115/0x130
[   45.136772] Modules linked in:
[   45.142288] CPU: 4 PID: 84 Comm: kworker/4:1 Tainted: G        W         5.9.0-rc4-00006-g110da1e703a2 #216
[   45.153351] Hardware name: Supermicro SYS-7047GR-TRF/X9DRG-QF, BIOS 3.0a 12/05/2013
[   45.162077] Workqueue: events work_for_cpu_fn
[   45.167074] RIP: 0010:__iommu_dma_unmap+0x115/0x130
[   45.172663] Code: 48 8b 0c 24 48 c7 44 24 10 00 00 00 00 48 c7 44 24 18 00 00 00 00 48 c7 44 24 20 00 00 00 00 48 c7 44 24 08 ff ff ff ff eb 8d <0f> 0b e9 74 ff ff ff e8 1f 36 66 00 66 66 2e 0f 1f 84 00 00 00 00
[   45.193874] RSP: 0000:ffffc90002397c38 EFLAGS: 00010206
[   45.199850] RAX: 0000000000200000 RBX: 0000000000080000 RCX: 0000000000000000
[   45.207970] RDX: 0000000000000403 RSI: ffffffff82a7fb20 RDI: ffff888477804f30
[   45.216095] RBP: 00000000ff600000 R08: 00000000000ff600 R09: 00000000000ff7ff
[   45.224207] R10: 0000000000000002 R11: 0000000000000004 R12: ffff888270c55000
[   45.232327] R13: ffff888472dc7268 R14: 0000000000080000 R15: 0000000000000000
[   45.240446] FS:  0000000000000000(0000) GS:ffff888479800000(0000) knlGS:0000000000000000
[   45.249662] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[   45.256225] CR2: 0000000000000000 CR3: 0000000002a20001 CR4: 00000000000606e0
[   45.264344] Call Trace:
[   45.267205]  ? lockdep_hardirqs_on_prepare+0xad/0x180
[   45.273003]  iommu_dma_free+0x18/0x30
[   45.277231]  ioat_free_chan_resources+0x19e/0x300
[   45.282631]  ioat_dma_self_test+0x2a0/0x3d0
[   45.287457]  ioat_pci_probe+0x60e/0x903
[   45.291894]  local_pci_probe+0x42/0x80
[   45.296217]  work_for_cpu_fn+0x16/0x20
[   45.300539]  process_one_work+0x292/0x630
[   45.305162]  ? __schedule+0x344/0x970
[   45.309399]  worker_thread+0x227/0x3e0
[   45.313724]  ? process_one_work+0x630/0x630
[   45.318535]  kthread+0x136/0x150
[   45.322274]  ? kthread_use_mm+0x100/0x100
[   45.326893]  ret_from_fork+0x22/0x30
[   45.331034] irq event stamp: 2146822
[   45.335161] hardirqs last  enabled at (2146832): [<ffffffff811b8465>] console_unlock+0x435/0x570
[   45.345154] hardirqs last disabled at (2146841): [<ffffffff811b845b>] console_unlock+0x42b/0x570
[   45.355150] softirqs last  enabled at (2014254): [<ffffffff817da3e5>] ioat_cleanup+0x65/0x470
[   45.364850] softirqs last disabled at (2014258): [<ffffffff817d797a>] ioat_free_chan_resources+0x6a/0x300
[   45.375710] ---[ end trace ed0f88fd959a5a3d ]---
[   45.381018] ------------[ cut here ]------------
[   45.386308] WARNING: CPU: 4 PID: 84 at drivers/iommu/dma-iommu.c:496 __iommu_dma_unmap+0x115/0x130
[   45.396494] Modules linked in:
[   45.400020] CPU: 4 PID: 84 Comm: kworker/4:1 Tainted: G        W         5.9.0-rc4-00006-g110da1e703a2 #216
[   45.411086] Hardware name: Supermicro SYS-7047GR-TRF/X9DRG-QF, BIOS 3.0a 12/05/2013
[   45.419810] Workqueue: events work_for_cpu_fn
[   45.424819] RIP: 0010:__iommu_dma_unmap+0x115/0x130
[   45.430406] Code: 48 8b 0c 24 48 c7 44 24 10 00 00 00 00 48 c7 44 24 18 00 00 00 00 48 c7 44 24 20 00 00 00 00 48 c7 44 24 08 ff ff ff ff eb 8d <0f> 0b e9 74 ff ff ff e8 1f 36 66 00 66 66 2e 0f 1f 84 00 00 00 00
[   45.451630] RSP: 0000:ffffc90002397c38 EFLAGS: 00010206
[   45.457610] RAX: 0000000000200000 RBX: 0000000000080000 RCX: 0000000000000000
[   45.465730] RDX: 0000000000000403 RSI: ffffffff82a7fb20 RDI: ffff888477804f30
[   45.473853] RBP: 00000000ff400000 R08: 00000000000ff400 R09: 00000000000ff5ff
[   45.481973] R10: 0000000000000002 R11: 0000000000000004 R12: ffff888270c55000
[   45.490092] R13: ffff888472dc7268 R14: 0000000000080000 R15: 0000000000000000
[   45.498211] FS:  0000000000000000(0000) GS:ffff888479800000(0000) knlGS:0000000000000000
[   45.507418] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[   45.513969] CR2: 0000000000000000 CR3: 0000000002a20001 CR4: 00000000000606e0
[   45.522081] Call Trace:
[   45.524934]  ? lockdep_hardirqs_on_prepare+0xad/0x180
[   45.530718]  iommu_dma_free+0x18/0x30
[   45.534989]  ioat_free_chan_resources+0x19e/0x300
[   45.540378]  ioat_dma_self_test+0x2a0/0x3d0
[   45.545193]  ioat_pci_probe+0x60e/0x903
[   45.549619]  local_pci_probe+0x42/0x80
[   45.553940]  work_for_cpu_fn+0x16/0x20
[   45.558258]  process_one_work+0x292/0x630
[   45.562871]  ? __schedule+0x344/0x970
[   45.567108]  worker_thread+0x227/0x3e0
[   45.571434]  ? process_one_work+0x630/0x630
[   45.576243]  kthread+0x136/0x150
[   45.579981]  ? kthread_use_mm+0x100/0x100
[   45.584598]  ret_from_fork+0x22/0x30
[   45.588733] irq event stamp: 2147210
[   45.592860] hardirqs last  enabled at (2147220): [<ffffffff811b8465>] console_unlock+0x435/0x570
[   45.602845] hardirqs last disabled at (2147229): [<ffffffff811b845b>] console_unlock+0x42b/0x570
[   45.612836] softirqs last  enabled at (2014254): [<ffffffff817da3e5>] ioat_cleanup+0x65/0x470
[   45.622531] softirqs last disabled at (2014258): [<ffffffff817d797a>] ioat_free_chan_resources+0x6a/0x300
[   45.633392] ---[ end trace ed0f88fd959a5a3e ]---
[   45.638708] ------------[ cut here ]------------
[   45.644003] WARNING: CPU: 4 PID: 84 at drivers/iommu/dma-iommu.c:496 __iommu_dma_unmap+0x115/0x130
[   45.654191] Modules linked in:
[   45.657734] CPU: 4 PID: 84 Comm: kworker/4:1 Tainted: G        W         5.9.0-rc4-00006-g110da1e703a2 #216
[   45.668807] Hardware name: Supermicro SYS-7047GR-TRF/X9DRG-QF, BIOS 3.0a 12/05/2013
[   45.677534] Workqueue: events work_for_cpu_fn
[   45.682538] RIP: 0010:__iommu_dma_unmap+0x115/0x130
[   45.688126] Code: 48 8b 0c 24 48 c7 44 24 10 00 00 00 00 48 c7 44 24 18 00 00 00 00 48 c7 44 24 20 00 00 00 00 48 c7 44 24 08 ff ff ff ff eb 8d <0f> 0b e9 74 ff ff ff e8 1f 36 66 00 66 66 2e 0f 1f 84 00 00 00 00
[   45.709343] RSP: 0000:ffffc90002397c38 EFLAGS: 00010206
[   45.715321] RAX: 0000000000200000 RBX: 0000000000080000 RCX: 0000000000000000
[   45.723440] RDX: 0000000000000403 RSI: ffffffff82a7fb20 RDI: ffff888477804f30
[   45.731555] RBP: 00000000ff200000 R08: 00000000000ff200 R09: 00000000000ff3ff
[   45.739665] R10: 0000000000000002 R11: 0000000000000004 R12: ffff888270c55000
[   45.747777] R13: ffff888472dc7268 R14: 0000000000080000 R15: 0000000000000000
[   45.755897] FS:  0000000000000000(0000) GS:ffff888479800000(0000) knlGS:0000000000000000
[   45.765106] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[   45.771661] CR2: 0000000000000000 CR3: 0000000002a20001 CR4: 00000000000606e0
[   45.779778] Call Trace:
[   45.782638]  ? lockdep_hardirqs_on_prepare+0xad/0x180
[   45.788439]  iommu_dma_free+0x18/0x30
[   45.792664]  ioat_free_chan_resources+0x19e/0x300
[   45.798060]  ioat_dma_self_test+0x2a0/0x3d0
[   45.802886]  ioat_pci_probe+0x60e/0x903
[   45.807306]  local_pci_probe+0x42/0x80
[   45.811633]  work_for_cpu_fn+0x16/0x20
[   45.815946]  process_one_work+0x292/0x630
[   45.820556]  ? __schedule+0x344/0x970
[   45.824791]  worker_thread+0x227/0x3e0
[   45.829117]  ? process_one_work+0x630/0x630
[   45.833969]  kthread+0x136/0x150
[   45.837706]  ? kthread_use_mm+0x100/0x100
[   45.842325]  ret_from_fork+0x22/0x30
[   45.846475] irq event stamp: 2147602
[   45.850608] hardirqs last  enabled at (2147612): [<ffffffff811b8465>] console_unlock+0x435/0x570
[   45.860603] hardirqs last disabled at (2147621): [<ffffffff811b845b>] console_unlock+0x42b/0x570
[   45.870589] softirqs last  enabled at (2014254): [<ffffffff817da3e5>] ioat_cleanup+0x65/0x470
[   45.880293] softirqs last disabled at (2014258): [<ffffffff817d797a>] ioat_free_chan_resources+0x6a/0x300
[   45.891163] ---[ end trace ed0f88fd959a5a3f ]---
[   45.896473] ------------[ cut here ]------------
[   45.901762] WARNING: CPU: 4 PID: 84 at drivers/iommu/dma-iommu.c:496 __iommu_dma_unmap+0x115/0x130
[   45.911956] Modules linked in:
[   45.915503] CPU: 4 PID: 84 Comm: kworker/4:1 Tainted: G        W         5.9.0-rc4-00006-g110da1e703a2 #216
[   45.926570] Hardware name: Supermicro SYS-7047GR-TRF/X9DRG-QF, BIOS 3.0a 12/05/2013
[   45.935302] Workqueue: events work_for_cpu_fn
[   45.940312] RIP: 0010:__iommu_dma_unmap+0x115/0x130
[   45.945905] Code: 48 8b 0c 24 48 c7 44 24 10 00 00 00 00 48 c7 44 24 18 00 00 00 00 48 c7 44 24 20 00 00 00 00 48 c7 44 24 08 ff ff ff ff eb 8d <0f> 0b e9 74 ff ff ff e8 1f 36 66 00 66 66 2e 0f 1f 84 00 00 00 00
[   45.967128] RSP: 0000:ffffc90002397c38 EFLAGS: 00010206
[   45.973111] RAX: 0000000000200000 RBX: 0000000000080000 RCX: 0000000000000000
[   45.981236] RDX: 0000000000000403 RSI: ffffffff82a7fb20 RDI: ffff888477804f30
[   45.989363] RBP: 00000000ff000000 R08: 00000000000ff000 R09: 00000000000ff1ff
[   45.997489] R10: 0000000000000002 R11: 0000000000000004 R12: ffff888270c55000
[   46.005613] R13: ffff888472dc7268 R14: 0000000000080000 R15: 0000000000000000
[   46.013738] FS:  0000000000000000(0000) GS:ffff888479800000(0000) knlGS:0000000000000000
[   46.022952] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[   46.029521] CR2: 0000000000000000 CR3: 0000000002a20001 CR4: 00000000000606e0
[   46.037643] Call Trace:
[   46.040508]  ? lockdep_hardirqs_on_prepare+0xad/0x180
[   46.046305]  iommu_dma_free+0x18/0x30
[   46.050538]  ioat_free_chan_resources+0x19e/0x300
[   46.055941]  ioat_dma_self_test+0x2a0/0x3d0
[   46.060765]  ioat_pci_probe+0x60e/0x903
[   46.065196]  local_pci_probe+0x42/0x80
[   46.069526]  work_for_cpu_fn+0x16/0x20
[   46.073854]  process_one_work+0x292/0x630
[   46.078477]  ? __schedule+0x344/0x970
[   46.082717]  worker_thread+0x227/0x3e0
[   46.087035]  ? process_one_work+0x630/0x630
[   46.091849]  kthread+0x136/0x150
[   46.095594]  ? kthread_use_mm+0x100/0x100
[   46.100218]  ret_from_fork+0x22/0x30
[   46.104366] irq event stamp: 2147992
[   46.108499] hardirqs last  enabled at (2148002): [<ffffffff811b8465>] console_unlock+0x435/0x570
[   46.120483] hardirqs last disabled at (2148011): [<ffffffff811b845b>] console_unlock+0x42b/0x570
[   46.130472] softirqs last  enabled at (2014254): [<ffffffff817da3e5>] ioat_cleanup+0x65/0x470
[   46.140171] softirqs last disabled at (2014258): [<ffffffff817d797a>] ioat_free_chan_resources+0x6a/0x300
[   46.151034] ---[ end trace ed0f88fd959a5a40 ]---
[   46.156339] ------------[ cut here ]------------
[   46.161628] WARNING: CPU: 4 PID: 84 at drivers/iommu/dma-iommu.c:496 __iommu_dma_unmap+0x115/0x130
[   46.171817] Modules linked in:
[   46.175365] CPU: 4 PID: 84 Comm: kworker/4:1 Tainted: G        W         5.9.0-rc4-00006-g110da1e703a2 #216
[   46.186430] Hardware name: Supermicro SYS-7047GR-TRF/X9DRG-QF, BIOS 3.0a 12/05/2013
[   46.195163] Workqueue: events work_for_cpu_fn
[   46.200173] RIP: 0010:__iommu_dma_unmap+0x115/0x130
[   46.205767] Code: 48 8b 0c 24 48 c7 44 24 10 00 00 00 00 48 c7 44 24 18 00 00 00 00 48 c7 44 24 20 00 00 00 00 48 c7 44 24 08 ff ff ff ff eb 8d <0f> 0b e9 74 ff ff ff e8 1f 36 66 00 66 66 2e 0f 1f 84 00 00 00 00
[   46.226991] RSP: 0000:ffffc90002397c38 EFLAGS: 00010206
[   46.232976] RAX: 0000000000200000 RBX: 0000000000080000 RCX: 0000000000000000
[   46.241101] RDX: 0000000000000403 RSI: ffffffff82a7fb20 RDI: ffff888477804f30
[   46.249226] RBP: 00000000fec00000 R08: 00000000000fec00 R09: 00000000000fedff
[   46.257352] R10: 0000000000000002 R11: 0000000000000004 R12: ffff888270c55000
[   46.265474] R13: ffff888472dc7268 R14: 0000000000080000 R15: 0000000000000000
[   46.273602] FS:  0000000000000000(0000) GS:ffff888479800000(0000) knlGS:0000000000000000
[   46.282822] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[   46.289388] CR2: 0000000000000000 CR3: 0000000002a20001 CR4: 00000000000606e0
[   46.297513] Call Trace:
[   46.300358]  ? lockdep_hardirqs_on_prepare+0xad/0x180
[   46.306152]  iommu_dma_free+0x18/0x30
[   46.310379]  ioat_free_chan_resources+0x19e/0x300
[   46.315776]  ioat_dma_self_test+0x2a0/0x3d0
[   46.320607]  ioat_pci_probe+0x60e/0x903
[   46.325044]  local_pci_probe+0x42/0x80
[   46.329373]  work_for_cpu_fn+0x16/0x20
[   46.333699]  process_one_work+0x292/0x630
[   46.338321]  ? __schedule+0x344/0x970
[   46.342563]  worker_thread+0x227/0x3e0
[   46.346891]  ? process_one_work+0x630/0x630
[   46.351704]  kthread+0x136/0x150
[   46.355449]  ? kthread_use_mm+0x100/0x100
[   46.360069]  ret_from_fork+0x22/0x30
[   46.364204] irq event stamp: 2148380
[   46.368338] hardirqs last  enabled at (2148390): [<ffffffff811b8465>] console_unlock+0x435/0x570
[   46.378336] hardirqs last disabled at (2148399): [<ffffffff811b845b>] console_unlock+0x42b/0x570
[   46.388335] softirqs last  enabled at (2014254): [<ffffffff817da3e5>] ioat_cleanup+0x65/0x470
[   46.398040] softirqs last disabled at (2014258): [<ffffffff817d797a>] ioat_free_chan_resources+0x6a/0x300
[   46.408914] ---[ end trace ed0f88fd959a5a41 ]---
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
