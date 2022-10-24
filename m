Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 50F6960A870
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Oct 2022 15:05:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0385D10E5AB;
	Mon, 24 Oct 2022 13:05:38 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7514010E5E1
 for <Intel-gfx@lists.freedesktop.org>; Mon, 24 Oct 2022 13:05:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666616734; x=1698152734;
 h=message-id:date:mime-version:to:cc:from:subject:
 content-transfer-encoding;
 bh=BG2Oeecsv7NngMNbDAIke4cQ/9TXD3nM6TGthLKpBxw=;
 b=EMPS3RrwV2vjMyS67O1gwCRma1k6mcctOFVvnjTNXUsAlvVGt4Kh7bGl
 4cLcgMGUg/l4IkVzQ8cjXRQ0+x1umRVn6wLt6cBposWkiE0kakDmr77pc
 kxVd1zIBtovH46dGZgfupcFcv5Puy6lqd0MR2HGPf2LH9JPs4FHogo/Bh
 DKhqBnWR90/N21lzuydvD+XgSkLks7IQryIwoppJ9OF4n/SaCc02/asoz
 ZaTY5ToCrRSoNr9Tyfd6X/0FtxKHbmpKrAieLJvwRC6etLmKrVb5MP/LO
 19iOXzCraKX4zGN86tyNEfk8+kxli2iyL9W9WVLQLzHJXoq3VYmRBT+zU A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="305019287"
X-IronPort-AV: E=Sophos;i="5.95,209,1661842800"; d="scan'208";a="305019287"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2022 06:04:54 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="626061907"
X-IronPort-AV: E=Sophos;i="5.95,209,1661842800"; d="scan'208";a="626061907"
Received: from amaceyx-mobl1.ger.corp.intel.com (HELO [10.213.236.254])
 ([10.213.236.254])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2022 06:04:52 -0700
Message-ID: <1596edbb-02ad-6bdf-51b8-15c2d2e08b76@linux.intel.com>
Date: Mon, 24 Oct 2022 14:04:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Content-Language: en-US
To: Mel Gorman <mgorman@techsingularity.net>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] mm/huge_memory: do not clobber swp_entry_t during
 THP split
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
Cc: Linux MM <linux-mm@kvack.org>,
 "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


Hi Mel, mm experts,

With 6.1-rc2 we started hitting the WARN_ON added in 71e2d666ef85 ("mm/huge_memory: do not clobber swp_entry_t during THP split") in i915 automated CI:

It looks like this:

<4> [259.367534] page:ffffea0008850000 refcount:0 mapcount:0 mapping:ffff88811a756a00 index:0x0 pfn:0x221400
<4> [259.367593] head:ffffea0008850000 order:9 compound_mapcount:0 compound_pincount:0
<4> [259.367596] aops:shmem_aops ino:2 dentry name:"i915"
<4> [259.367600] flags: 0x80000000000d003f(locked|referenced|uptodate|dirty|lru|active|head|reclaim|swapbacked|zone=2)
<4> [259.367604] raw: 80000000000d003f ffffea00042d08c8 ffffea0008855248 ffff88811a756a00
<4> [259.367606] raw: 0000000000000000 0000000000000000 00000000ffffffff 0000000000000000
<4> [259.367607] page dumped because: VM_WARN_ON_ONCE_PAGE(page_tail->private != 0)
<4> [259.367613] ------------[ cut here ]------------
<4> [259.367614] WARNING: CPU: 2 PID: 5515 at mm/huge_memory.c:2465 split_huge_page_to_list+0x12de/0x1760
<4> [259.367619] Modules linked in: i915(+) drm_display_helper drm_kms_helper vgem drm_shmem_helper snd_intel_dspcfg snd_hda_codec snd_hwdep snd_hda_core snd_pcm prime_numbers ttm drm_buddy syscopyarea sysfillrect sysimgblt fb_sys_fops fuse x86_pkg_temp_thermal coretemp kvm_intel kvm irqbypass crct10dif_pclmul crc32_pclmul ghash_clmulni_intel igb ptp mei_me pps_core i2c_i801 i2c_smbus mei video acpi_power_meter wmi [last unloaded: i915]
<4> [259.367663] CPU: 2 PID: 5515 Comm: i915_selftest Tainted: G     U    I        6.1.0-rc2-CI_DRM_12280-g7bb7f55322b3+ #1
<4> [259.367666] Hardware name: Intel Corporation S1200SP/S1200SP, BIOS S1200SP.86B.03.01.0026.092720170729 09/27/2017
<4> [259.367667] RIP: 0010:split_huge_page_to_list+0x12de/0x1760
<4> [259.367670] Code: 86 00 e9 31 fa ff ff 80 3d b8 3a 5a 01 00 0f 85 bb f4 ff ff 48 c7 c6 60 8c 2c 82 48 89 df e8 39 26 f9 ff c6 05 9c 3a 5a 01 01 <0f> 0b e9 9e f4 ff ff 48 83 e8 01 e9 a9 f8 ff ff 48 8b 45 08 49 89
<4> [259.367672] RSP: 0018:ffffc9000146b738 EFLAGS: 00010046
<4> [259.367675] RAX: 0000000000000042 RBX: ffffea0008850000 RCX: 0000000000000003
<4> [259.367677] RDX: 0000000000000000 RSI: ffffffff822ca515 RDI: 00000000ffffffff
<4> [259.367678] RBP: ffffea0008855200 R08: 0000000000000000 R09: c0000000ffffdf42
<4> [259.367680] R10: 00000000001a5e18 R11: ffffc9000146b5d8 R12: ffffea0008850000
<4> [259.367681] R13: ffffea0008850000 R14: ffff88811a756a00 R15: 0000000000000200
<4> [259.367683] FS:  00007f42aafecc00(0000) GS:ffff88826b300000(0000) knlGS:0000000000000000
<4> [259.367685] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
<4> [259.367687] CR2: 000055792f60d9f0 CR3: 0000000107514005 CR4: 00000000003706e0
<4> [259.367688] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
<4> [259.367690] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
<4> [259.367691] Call Trace:
<4> [259.367692]  <TASK>
<4> [259.367706]  shmem_writepage+0x53/0x5e0
<4> [259.367710]  ? folio_mapping+0x47/0x80
<4> [259.367715]  __shmem_writeback+0x1f2/0x510 [i915]
<4> [259.367853]  shmem_shrink+0x3a/0x50 [i915]
<4> [259.367961]  i915_gem_shrink+0x57c/0x860 [i915]
<4> [259.368083]  igt_shrink_thp+0x362/0x490 [i915]
<4> [259.368209]  __i915_subtests.cold.7+0x42/0x92 [i915]
<4> [259.368345]  ? __i915_nop_teardown+0x10/0x10 [i915]
<4> [259.368495]  ? __i915_live_setup+0x30/0x30 [i915]
<4> [259.368612]  __run_selftests.part.3+0xfa/0x158 [i915]
<4> [259.368747]  i915_live_selftests.cold.5+0x1f/0x4f [i915]
<4> [259.368878]  i915_pci_probe+0xd6/0x240 [i915]
<4> [259.368965]  ? _raw_spin_unlock_irqrestore+0x3d/0x70
<4> [259.368971]  pci_device_probe+0x98/0x110
<4> [259.368976]  really_probe+0xd9/0x350
<4> [259.368979]  ? pm_runtime_barrier+0x4b/0xa0
<4> [259.368985]  __driver_probe_device+0x73/0x170
<4> [259.368989]  driver_probe_device+0x1a/0x90
<4> [259.368992]  __driver_attach+0xbc/0x190
<4> [259.368995]  ? __device_attach_driver+0x110/0x110
<4> [259.368998]  ? __device_attach_driver+0x110/0x110
<4> [259.369001]  bus_for_each_dev+0x75/0xc0
<4> [259.369006]  bus_add_driver+0x1bb/0x210
<4> [259.369012]  driver_register+0x66/0xc0
<4> [259.369015]  i915_init+0x22/0x82 [i915]
<4> [259.369098]  ? 0xffffffffa0860000
<4> [259.369101]  do_one_initcall+0x56/0x2f0
<4> [259.369105]  ? rcu_read_lock_sched_held+0x51/0x80
<4> [259.369109]  ? kmalloc_trace+0xae/0x100
<4> [259.369113]  do_init_module+0x45/0x1c0
<4> [259.369117]  load_module+0x1d5e/0x1e90
<4> [259.369134]  ? __do_sys_finit_module+0xaf/0x120
<4> [259.369137]  __do_sys_finit_module+0xaf/0x120
<4> [259.369150]  do_syscall_64+0x3a/0x90
<4> [259.369154]  entry_SYSCALL_64_after_hwframe+0x63/0xcd
<4> [259.369157] RIP: 0033:0x7f42ad7bd89d
<4> [259.369159] Code: 00 c3 66 2e 0f 1f 84 00 00 00 00 00 90 f3 0f 1e fa 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d c3 f5 0c 00 f7 d8 64 89 01 48
<4> [259.369161] RSP: 002b:00007ffd788a2268 EFLAGS: 00000246 ORIG_RAX: 0000000000000139
<4> [259.369164] RAX: ffffffffffffffda RBX: 000055d219ecf5a0 RCX: 00007f42ad7bd89d
<4> [259.369166] RDX: 0000000000000000 RSI: 000055d219edb390 RDI: 0000000000000006
<4> [259.369167] RBP: 0000000000000020 R08: 00007ffd788a1040 R09: 000055d219ec3470
<4> [259.369168] R10: 00007ffd788a23b0 R11: 0000000000000246 R12: 000055d219edb390
<4> [259.369170] R13: 0000000000000000 R14: 000055d219eda730 R15: 000055d219ecf5a0
<4> [259.369180]  </TASK>
<4> [259.369181] irq event stamp: 65138522
<4> [259.369183] hardirqs last  enabled at (65138521): [<ffffffff81b73764>] _raw_spin_unlock_irqrestore+0x54/0x70
<4> [259.369186] hardirqs last disabled at (65138522): [<ffffffff8129ca93>] split_huge_page_to_list+0x5f3/0x1760
<4> [259.369189] softirqs last  enabled at (65138410): [<ffffffff81e0031e>] __do_softirq+0x31e/0x48a
<4> [259.369191] softirqs last disabled at (65138403): [<ffffffff810c1b58>] irq_exit_rcu+0xb8/0xe0
<4> [259.369194] ---[ end trace 0000000000000000 ]---

At the point of the warn it should have been a single huge page and then we entered i915 shrinker which does this:

void __shmem_writeback(size_t size, struct address_space *mapping)
{
	struct writeback_control wbc = {
		.sync_mode = WB_SYNC_NONE,
		.nr_to_write = SWAP_CLUSTER_MAX,
		.range_start = 0,
		.range_end = LLONG_MAX,
		.for_reclaim = 1,
	};
	unsigned long i;

	/*
	 * Leave mmapings intact (GTT will have been revoked on unbinding,
	 * leaving only CPU mmapings around) and add those pages to the LRU
	 * instead of invoking writeback so they are aged and paged out
	 * as normal.
	 */

	/* Begin writeback on each dirty page */
	for (i = 0; i < size >> PAGE_SHIFT; i++) {
		struct page *page;

		page = find_lock_page(mapping, i);
		if (!page)
			continue;

		if (!page_mapped(page) && clear_page_dirty_for_io(page)) {
			int ret;

			SetPageReclaim(page);
			ret = mapping->a_ops->writepage(page, &wbc);
			if (!PageWriteback(page))
				ClearPageReclaim(page);
			if (!ret)
				goto put;
		}
		unlock_page(page);
put:
		put_page(page);
	}
}

Not sure if this loop is doing something incorrectly or what is going on. Help and suggestions would be appreciated.

Regards,

Tvrtko
