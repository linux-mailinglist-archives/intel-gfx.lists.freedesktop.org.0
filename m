Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 975B3581F80
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jul 2022 07:31:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52CE911A614;
	Wed, 27 Jul 2022 05:30:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM02-DM3-obe.outbound.protection.outlook.com
 (mail-dm3nam02on2061.outbound.protection.outlook.com [40.107.95.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEF0B11A097;
 Wed, 27 Jul 2022 05:30:56 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J+YrRVmxzXbfUxXqacNEI7DNInyi3jo4GVQ9korA2E70zbVPZI2nfrmO0Q8/EYmh47lWKTDg80huJPEXhMXEkxiLxz915ys6ja6CaSq0/XEDx0zhh3MkrFhz1bpRwzDCqUZeqx5mCI41W5zSeU3s/9+akKd88PPECwS0Ql14cEGji3ECYS3aWAnOdMwIFi0h62oskK9++R4WrhE96c6GKuNo6Yx31oLMVMsCMp9uynDbcU8UHnpmVV4RUJCO8MNwYmMVCDoSjJHL3GnUbEnRyuA9cOy0rR4OQMPX5NEnTJ6bKIEbfBOBphKbnHaH8o65DyaNstp5Fi41plywZ7tyqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=An6BlZLV0SgBCMCIalE/HmLZcGgp3U0Ts1OKFrEO93U=;
 b=NBPF03HWqLsFZr3toLng4ATHVg6vujShHH84q9kp+F07/iSuta8oStZTSsI8VL/f6susbJXbnARUCn7Y5PdSJ/i6y7FIUVAMwN7YssVfOz/ZmrzHSBDSIdAoDOyX4hEejS6aU8dJgnWIUuE9/MjgOVTkdAr65kEwgu33G7O8z7eN28C8t6aUVoyzaq2Kk+xorBBJZX75rTtuRYzL40FCUXX3Ev25DixiWaiI7qK7+odCscK7meZjDOl14qv0hzlE/CBYgixY4OfaiO8dhI6RPsZagUW7N+W4rF7Zixr1zvnnupj67aseiRGNuibHcNutc7YE7IDSh2n6A1wEStHl6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 165.204.84.17) smtp.rcpttodomain=lists.freedesktop.org smtp.mailfrom=amd.com; 
 dmarc=pass (p=quarantine sp=quarantine pct=100) action=none
 header.from=amd.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=An6BlZLV0SgBCMCIalE/HmLZcGgp3U0Ts1OKFrEO93U=;
 b=t1VR0QnZI8VxLIZwnG83K4/AqtTqAWJ5rWq4dOSAMwRnHM/vv3mw0m45q56dRUN8GwftsZhHIbzXzjirwyZuZxS0u96vnheBNafBLxL6mp5SBe2eoVgdb7GQbCD9ULmn0uNyiapyCtkyw1SpAQepjVM3bbY+DFN9kt898B4f2OE=
Received: from BN0PR03CA0038.namprd03.prod.outlook.com (2603:10b6:408:e7::13)
 by MWHPR1201MB2526.namprd12.prod.outlook.com (2603:10b6:300:ec::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.19; Wed, 27 Jul
 2022 05:30:53 +0000
Received: from BN8NAM11FT034.eop-nam11.prod.protection.outlook.com
 (2603:10b6:408:e7:cafe::f) by BN0PR03CA0038.outlook.office365.com
 (2603:10b6:408:e7::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.21 via Frontend
 Transport; Wed, 27 Jul 2022 05:30:52 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 165.204.84.17)
 smtp.mailfrom=amd.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=amd.com;
Received-SPF: Pass (protection.outlook.com: domain of amd.com designates
 165.204.84.17 as permitted sender) receiver=protection.outlook.com;
 client-ip=165.204.84.17; helo=SATLEXMB04.amd.com; pr=C
Received: from SATLEXMB04.amd.com (165.204.84.17) by
 BN8NAM11FT034.mail.protection.outlook.com (10.13.176.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.5482.10 via Frontend Transport; Wed, 27 Jul 2022 05:30:52 +0000
Received: from amd-X570-AORUS-ELITE.amd.com (10.180.168.240) by
 SATLEXMB04.amd.com (10.181.40.145) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 27 Jul 2022 00:30:49 -0500
From: Arunpravin Paneer Selvam <Arunpravin.PaneerSelvam@amd.com>
To: <dri-devel@lists.freedesktop.org>, <amd-gfx@lists.freedesktop.org>,
 <intel-gfx@lists.freedesktop.org>
Date: Tue, 26 Jul 2022 22:30:32 -0700
Message-ID: <20220727053032.3668-1-Arunpravin.PaneerSelvam@amd.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.180.168.240]
X-ClientProxiedBy: SATLEXMB03.amd.com (10.181.40.144) To SATLEXMB04.amd.com
 (10.181.40.145)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a0ea23c3-ebf1-4bdc-e46a-08da6f912c05
X-MS-TrafficTypeDiagnostic: MWHPR1201MB2526:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iigSN8UM/QFKXlLLmeOYDYKV0NVqx/KUnwitPnTOL0V92bKt5ZOSfcKOtkLq7SmfwLAFmHdDOJYkOINbqqEC4suQ/IbMo1qUx1otzPuXcpWmlU/lC2h2xFg6Tu8bvCRVdH1VpEhoceUpFcIU/svQu0g7QkWvpRuiCotylcph+eQtOcBfuk4I94q5OUJZ6Qqcw2DgGcPs6/YFyqX7PxJEIHXiKg2ssprN0waicVio89jTqwCqXs00aVI2nt+FYmGVsFs0Mp3+N8kTzlkeKRomAeYVH9pmQlqKUhFkTNOqDm8dCH/5aRtA4hy8uVh/1fykZheTZfCCg+fa7TDk3OYpf83A2k5Swl5FUhzyYxGuEnExU8zd0tkp8kt+kwxan4aJCmFIFFuxgPkWW/S4PjaNwBynutEYT8GY2uh1tOl/vHGdnm1q3EjyzzYQrHq3m6htmtK5UxopSY7f5SikufNA5yyk3DrlOkNvzB9oHFwbe65h/HG6b2u9tbKvonAlKzU87O1E6oa+QxyKnEYlzm9NIMt+isbMswZIw9AWdQfD//3n7iQGjL2xhJRKNYMyEGdhJS7FTwT4xMYP1vIZ2c351ikD10FKN72IbEXVzsT2INOjc3r9lzDE/2MSspFsMJA0xAiUv/tZLn7PfdTWB5bHJ87cu6nFotebpDNAwIL1BheeulJ2Dup8ysE7nPKwgMgG/zC8lkyyIPo08Kc5xED2h2fe+YedC4Z+6DgK+HsEqERbtxtEfB6qYu9+74ekIALYmqY3DMMr7n5NOs6WX/aL5v9NCQjNnv+jBgPKCtjnAC9YmpgfEJlEpmEWFIZSDKNGtaDZ2/luaZpShRle554ccg==
X-Forefront-Antispam-Report: CIP:165.204.84.17; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:SATLEXMB04.amd.com; PTR:InfoDomainNonexistent; CAT:NONE;
 SFS:(13230016)(4636009)(376002)(346002)(136003)(39860400002)(396003)(36840700001)(46966006)(40470700004)(82310400005)(6666004)(16526019)(316002)(36756003)(86362001)(47076005)(186003)(41300700001)(426003)(83380400001)(7696005)(2906002)(40460700003)(1076003)(336012)(5660300002)(356005)(2616005)(4326008)(40480700001)(54906003)(82740400003)(8936002)(26005)(478600001)(110136005)(70586007)(36860700001)(70206006)(8676002)(81166007)(36900700001);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jul 2022 05:30:52.5246 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a0ea23c3-ebf1-4bdc-e46a-08da6f912c05
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d; Ip=[165.204.84.17];
 Helo=[SATLEXMB04.amd.com]
X-MS-Exchange-CrossTenant-AuthSource: BN8NAM11FT034.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1201MB2526
Subject: [Intel-gfx] [PATCH v2] drm/ttm: Fix dummy res NULL ptr deref bug
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
Cc: alexander.deucher@amd.com, luben.tuikov@amd.com,
 kernel test robot <oliver.sang@intel.com>, christian.koenig@amd.com,
 Arunpravin Paneer Selvam <Arunpravin.PaneerSelvam@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Check the bo->resource value before accessing the resource
mem_type.

v2: Fix commit description unwrapped warning

<log snip>
[   40.191227][  T184] general protection fault, probably for non-canonical address 0xdffffc0000000002: 0000 [#1] SMP KASAN PTI
[   40.192995][  T184] KASAN: null-ptr-deref in range [0x0000000000000010-0x0000000000000017]
[   40.194411][  T184] CPU: 1 PID: 184 Comm: systemd-udevd Not tainted 5.19.0-rc4-00721-gb297c22b7070 #1
[   40.196063][  T184] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.16.0-debian-1.16.0-4 04/01/2014
[   40.199605][  T184] RIP: 0010:ttm_bo_validate+0x1b3/0x240 [ttm]
[   40.200754][  T184] Code: e8 72 c5 ff ff 83 f8 b8 74 d4 85 c0 75 54 49 8b 9e 58 01 00 00 48 b8 00 00 00 00 00 fc ff df 48 8d 7b 10 48 89 fa 48 c1 ea 03 <0f> b6 04 02 84 c0 74 04 3c 03 7e 44 8b 53 10 31 c0 85 d2 0f 85 58
[   40.203685][  T184] RSP: 0018:ffffc900006df0c8 EFLAGS: 00010202
[   40.204630][  T184] RAX: dffffc0000000000 RBX: 0000000000000000 RCX: 1ffff1102f4bb71b
[   40.205864][  T184] RDX: 0000000000000002 RSI: ffffc900006df208 RDI: 0000000000000010
[   40.207102][  T184] RBP: 1ffff920000dbe1a R08: ffffc900006df208 R09: 0000000000000000
[   40.208394][  T184] R10: ffff88817a5f0000 R11: 0000000000000001 R12: ffffc900006df110
[   40.209692][  T184] R13: ffffc900006df0f0 R14: ffff88817a5db800 R15: ffffc900006df208
[   40.210862][  T184] FS:  00007f6b1d16e8c0(0000) GS:ffff88839d700000(0000) knlGS:0000000000000000
[   40.212250][  T184] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[   40.213275][  T184] CR2: 000055a1001d4ff0 CR3: 00000001700f4000 CR4: 00000000000006e0
[   40.214469][  T184] Call Trace:
[   40.214974][  T184]  <TASK>
[   40.215438][  T184]  ? ttm_bo_bounce_temp_buffer+0x140/0x140 [ttm]
[   40.216572][  T184]  ? mutex_spin_on_owner+0x240/0x240
[   40.217456][  T184]  ? drm_vma_offset_add+0xaa/0x100 [drm]
[   40.218457][  T184]  ttm_bo_init_reserved+0x3d6/0x540 [ttm]
[   40.219410][  T184]  ? shmem_get_inode+0x744/0x980
[   40.220231][  T184]  ttm_bo_init_validate+0xb1/0x200 [ttm]
[   40.221172][  T184]  ? bo_driver_evict_flags+0x340/0x340 [drm_vram_helper]
[   40.222530][  T184]  ? ttm_bo_init_reserved+0x540/0x540 [ttm]
[   40.223643][  T184]  ? __do_sys_finit_module+0x11a/0x1c0
[   40.224654][  T184]  ? __shmem_file_setup+0x102/0x280
[   40.234764][  T184]  drm_gem_vram_create+0x305/0x480 [drm_vram_helper]
[   40.235766][  T184]  ? bo_driver_evict_flags+0x340/0x340 [drm_vram_helper]
[   40.236846][  T184]  ? __kasan_slab_free+0x108/0x180
[   40.237650][  T184]  drm_gem_vram_fill_create_dumb+0x134/0x340 [drm_vram_helper]
[   40.238864][  T184]  ? local_pci_probe+0xdf/0x180
[   40.239674][  T184]  ? drmm_vram_helper_init+0x400/0x400 [drm_vram_helper]
[   40.240826][  T184]  drm_client_framebuffer_create+0x19c/0x400 [drm]
[   40.241955][  T184]  ? drm_client_buffer_delete+0x200/0x200 [drm]
[   40.243001][  T184]  ? drm_client_pick_crtcs+0x554/0xb80 [drm]
[   40.244030][  T184]  drm_fb_helper_generic_probe+0x23f/0x940 [drm_kms_helper]
[   40.245226][  T184]  ? __cond_resched+0x1c/0xc0
[   40.245987][  T184]  ? drm_fb_helper_memory_range_to_clip+0x180/0x180 [drm_kms_helper]
[   40.247316][  T184]  ? mutex_unlock+0x80/0x100
[   40.248005][  T184]  ? __mutex_unlock_slowpath+0x2c0/0x2c0
[   40.249083][  T184]  drm_fb_helper_single_fb_probe+0x907/0xf00 [drm_kms_helper]
[   40.250314][  T184]  ? drm_fb_helper_check_var+0x1180/0x1180 [drm_kms_helper]
[   40.251540][  T184]  ? __cond_resched+0x1c/0xc0
[   40.252321][  T184]  ? mutex_lock+0x9f/0x100
[   40.253062][  T184]  __drm_fb_helper_initial_config_and_unlock+0xb9/0x2c0 [drm_kms_helper]
[   40.254394][  T184]  drm_fbdev_client_hotplug+0x56f/0x840 [drm_kms_helper]
[   40.255477][  T184]  drm_fbdev_generic_setup+0x165/0x3c0 [drm_kms_helper]
[   40.256607][  T184]  bochs_pci_probe+0x6b7/0x900 [bochs]
[   40.257515][  T184]  ? _raw_spin_lock_irqsave+0x87/0x100
[   40.258312][  T184]  ? bochs_hw_init+0x480/0x480 [bochs]
[   40.259244][  T184]  ? bochs_hw_init+0x480/0x480 [bochs]
[   40.260186][  T184]  local_pci_probe+0xdf/0x180
[   40.260928][  T184]  pci_call_probe+0x15f/0x500
[   40.265798][  T184]  ? _raw_spin_lock+0x81/0x100
[   40.266508][  T184]  ? pci_pm_suspend_noirq+0x980/0x980
[   40.267322][  T184]  ? pci_assign_irq+0x81/0x280
[   40.268096][  T184]  ? pci_match_device+0x351/0x6c0
[   40.268883][  T184]  ? kernfs_put+0x18/0x40
[   40.269611][  T184]  pci_device_probe+0xee/0x240
[   40.270352][  T184]  really_probe+0x435/0xa80
[   40.271021][  T184]  __driver_probe_device+0x2ab/0x480
[   40.271828][  T184]  driver_probe_device+0x49/0x140
[   40.272627][  T184]  __driver_attach+0x1bd/0x4c0
[   40.273372][  T184]  ? __device_attach_driver+0x240/0x240
[   40.274273][  T184]  bus_for_each_dev+0x11e/0x1c0
[   40.275080][  T184]  ? subsys_dev_iter_exit+0x40/0x40
[   40.275951][  T184]  ? klist_add_tail+0x132/0x280
[   40.276767][  T184]  bus_add_driver+0x39b/0x580
[   40.277574][  T184]  driver_register+0x20f/0x3c0
[   40.278281][  T184]  ? 0xffffffffc04a2000
[   40.278894][  T184]  do_one_initcall+0x8a/0x300
[   40.279642][  T184]  ? trace_event_raw_event_initcall_level+0x1c0/0x1c0
[   40.280707][  T184]  ? kasan_unpoison+0x23/0x80
[   40.281479][  T184]  ? kasan_unpoison+0x23/0x80
[   40.282197][  T184]  do_init_module+0x190/0x640
[   40.282926][  T184]  load_module+0x221b/0x2780
[   40.283611][  T184]  ? layout_and_allocate+0x5c0/0x5c0
[   40.284401][  T184]  ? kernel_read_file+0x286/0x6c0
[   40.285216][  T184]  ? __x64_sys_fspick+0x2c0/0x2c0
[   40.286043][  T184]  ? mmap_region+0x4e7/0x1300
[   40.286832][  T184]  ? __do_sys_finit_module+0x11a/0x1c0
[   40.287743][  T184]  __do_sys_finit_module+0x11a/0x1c0
[   40.288636][  T184]  ? __ia32_sys_init_module+0xc0/0xc0
[   40.289557][  T184]  ? __seccomp_filter+0x15e/0xc80
[   40.290341][  T184]  ? vm_mmap_pgoff+0x185/0x240
[   40.291060][  T184]  do_syscall_64+0x3b/0xc0
[   40.291763][  T184]  entry_SYSCALL_64_after_hwframe+0x46/0xb0
[   40.292678][  T184] RIP: 0033:0x7f6b1d6279b9
[   40.293438][  T184] Code: 00 c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 44 00 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d a7 54 0c 00 f7 d8 64 89 01 48
[   40.296302][  T184] RSP: 002b:00007ffe7f51b798 EFLAGS: 00000246 ORIG_RAX: 0000000000000139
[   40.297633][  T184] RAX: ffffffffffffffda RBX: 00005642dcca2880 RCX: 00007f6b1d6279b9
[   40.298890][  T184] RDX: 0000000000000000 RSI: 00007f6b1d7b2e2d RDI: 0000000000000016
[   40.300199][  T184] RBP: 0000000000020000 R08: 0000000000000000 R09: 00005642dccd5530
[   40.301547][  T184] R10: 0000000000000016 R11: 0000000000000246 R12: 00007f6b1d7b2e2d
[   40.302698][  T184] R13: 0000000000000000 R14: 00005642dcca4230 R15: 00005642dcca2880

Signed-off-by: Arunpravin Paneer Selvam <Arunpravin.PaneerSelvam@amd.com>
Reported-by: kernel test robot <oliver.sang@intel.com>
---
 drivers/gpu/drm/ttm/ttm_bo.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/ttm/ttm_bo.c b/drivers/gpu/drm/ttm/ttm_bo.c
index c1bd006a5525..590110fdf59c 100644
--- a/drivers/gpu/drm/ttm/ttm_bo.c
+++ b/drivers/gpu/drm/ttm/ttm_bo.c
@@ -912,7 +912,7 @@ int ttm_bo_validate(struct ttm_buffer_object *bo,
 	/*
 	 * We might need to add a TTM.
 	 */
-	if (bo->resource->mem_type == TTM_PL_SYSTEM) {
+	if (!bo->resource || bo->resource->mem_type == TTM_PL_SYSTEM) {
 		ret = ttm_tt_create(bo, true);
 		if (ret)
 			return ret;
-- 
2.25.1

