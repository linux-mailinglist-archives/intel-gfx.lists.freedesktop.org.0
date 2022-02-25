Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 12FCA4C510A
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Feb 2022 22:55:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 901E310E3ED;
	Fri, 25 Feb 2022 21:55:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A107310E21C
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Feb 2022 21:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645826099; x=1677362099;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=C+i898sAUOztwJUN1c+BgX49AaCIq+KO/JNBMazi4Vo=;
 b=Wr5aFthY+IMJr7UDdUcgi354hDDAd1GvqfV/bBoqMJ/TMuCKTqJ0N6dk
 /WzpdfOW2J7sJaqlaveEbEo1dxGr2xSvVkBW6//SaLR2jfoMhLmEBZb1H
 vtAVUtyr6sPxjE2nOaxzYnhBVbXpiWweLz0VZWZrYO1r98e8/7legsrS4
 NWxX6Eek9Yr7w0qXXf7Nh7DU0WkNLtdqOdhJj3WfSWK2Gr57Ir3j4Ataj
 i8dVXQd5E15hpcKWtfpdLGdP02H5sd3fQFcs7qyHhRU7+xFlye9N5p7fO
 P4bKoHQOaYJTUNjo8+P2TZNs61Si+1so45p/tUMA/+LNGNke/0LE5ZUE0 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10269"; a="252782969"
X-IronPort-AV: E=Sophos;i="5.90,137,1643702400"; d="scan'208";a="252782969"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 13:54:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,137,1643702400"; d="scan'208";a="638369708"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga002.fm.intel.com with ESMTP; 25 Feb 2022 13:54:54 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Feb 2022 13:57:05 -0800
Message-Id: <20220225215705.248707-2-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220225215705.248707-1-alan.previn.teres.alexis@intel.com>
References: <20220225215705.248707-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/1] drm/i915/reset: Fix error_state_read ptr +
 offset use
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Fix our pointer offset usage in error_state_read
when there is no i915_gpu_coredump but buf offset
is non-zero.

This fixes a kernel page fault can happen when
multiple tests are running concurrently in a loop
and one is producing engine resets and consuming
the i915 error_state dump while the other is
forcing full GT resets. (takes a while to trigger).

The dmesg call trace:

5014 [ 5590.803000] BUG: unable to handle page fault for address: ffffffffa0b0e000
5015 [ 5590.803009] #PF: supervisor read access in kernel mode
5016 [ 5590.803013] #PF: error_code(0x0000) - not-present page
5017 [ 5590.803016] PGD 5814067 P4D 5814067 PUD 5815063 PMD 109de4067 PTE 0
5018 [ 5590.803022] Oops: 0000 [#1] PREEMPT SMP NOPTI
5019 [ 5590.803026] CPU: 5 PID: 13656 Comm: i915_hangman Tainted: G U 5.17.0-rc5-ups69-guc-err-capt-rev6+ #136
5020 [ 5590.803033] Hardware name: Intel Corporation Alder Lake Client Platform/AlderLake-M LP4x RVP, BIOS ADLPFWI1.R00.3031.A02.2201171222 01/17/2022
5021 [ 5590.803039] RIP: 0010:memcpy_erms+0x6/0x10
5022 [ 5590.803045] Code: fe ff ff cc eb 1e 0f 1f 00 48 89 f8 48 89 d1 48 c1 e9 03 83 e2 07 f3 48 a5 89 d1 f3 a4 c3 66 0f 1f 44 00 00 48 89 f8 48 89 d1 <f3> a4 c3 0f 1f 80 00 00 00 00 48 89 f8 48 83 fa 20 72 7e 40 38 fe
5023 [ 5590.803054] RSP: 0018:ffffc90003a8fdf0 EFLAGS: 00010282
5024 [ 5590.803057] RAX: ffff888107ee9000 RBX: ffff888108cb1a00 RCX: 0000000000000f8f
5025 [ 5590.803061] RDX: 0000000000001000 RSI: ffffffffa0b0e000 RDI: ffff888107ee9071
5026 [ 5590.803065] RBP: 0000000000000000 R08: 0000000000000001 R09: 0000000000000001
5027 [ 5590.803069] R10: 0000000000000001 R11: 0000000000000002 R12: 0000000000000019
5028 [ 5590.803073] R13: 0000000000174fff R14: 0000000000001000 R15: ffff888107ee9000
5029 [ 5590.803077] FS: 00007f62a99bee80(0000) GS:ffff88849f880000(0000) knlGS:0000000000000000
5030 [ 5590.803082] CS: 0010 DS: 0000 ES: 0000 CR0: 0000000080050033
5031 [ 5590.803085] CR2: ffffffffa0b0e000 CR3: 000000010a1a8004 CR4: 0000000000770ee0
5032 [ 5590.803089] PKRU: 55555554
5033 [ 5590.803091] Call Trace:
5034 [ 5590.803093] <TASK>
5035 [ 5590.803096] error_state_read+0xa1/0xd0 [i915]
5036 [ 5590.803175] kernfs_fop_read_iter+0xb2/0x1b0
5037 [ 5590.803180] new_sync_read+0x116/0x1a0
5038 [ 5590.803185] vfs_read+0x114/0x1b0
5039 [ 5590.803189] ksys_read+0x63/0xe0
5040 [ 5590.803193] do_syscall_64+0x38/0xc0
5041 [ 5590.803197] entry_SYSCALL_64_after_hwframe+0x44/0xae
5042 [ 5590.803201] RIP: 0033:0x7f62aaea5912
5043 [ 5590.803204] Code: c0 e9 b2 fe ff ff 50 48 8d 3d 5a b9 0c 00 e8 05 19 02 00 0f 1f 44 00 00 f3 0f 1e fa 64 8b 04 25 18 00 00 00 85 c0 75 10 0f 05 <48> 3d 00 f0 ff ff 77 56 c3 0f 1f 44 00 00 48 83 ec 28 48 89 54 24
5044 [ 5590.803213] RSP: 002b:00007fff5b659ae8 EFLAGS: 00000246 ORIG_RAX: 0000000000000000
5045 [ 5590.803218] RAX: ffffffffffffffda RBX: 0000000000100000 RCX: 00007f62aaea5912
5046 [ 5590.803221] RDX: 000000000008b000 RSI: 00007f62a8c4000f RDI: 0000000000000006
5047 [ 5590.803225] RBP: 00007f62a8bcb00f R08: 0000000000200010 R09: 0000000000101000
5048 [ 5590.803229] R10: 0000000000000001 R11: 0000000000000246 R12: 0000000000000006
5049 [ 5590.803233] R13: 0000000000075000 R14: 00007f62a8acb010 R15: 0000000000200000
5050 [ 5590.803238] </TASK>
5051 [ 5590.803240] Modules linked in: i915 ttm drm_buddy drm_dp_helper drm_kms_helper syscopyarea sysfillrect sysimgblt fb_sys_fops prime_numbers nfnetlink br_netfilter overlay mei_pxp mei_hdcp x86_pkg_temp_thermal coretemp kvm_intel snd_hda_codec_hdmi snd_hda_intel snd_intel_dspcfg snd_hda_codec snd_hwdep snd_hda_core snd_pcm mei_me mei fuse ip_tables x_tables crct10dif_pclmul e1000e crc32_pclmul ptp i2c_i801 ghash_clmulni_intel i2c_smbus pps_core [last unloa ded: ttm]
5052 [ 5590.803277] CR2: ffffffffa0b0e000
5053 [ 5590.803280] ---[ end trace 0000000000000000 ]---

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/i915_sysfs.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_sysfs.c b/drivers/gpu/drm/i915/i915_sysfs.c
index a4d1759375b9..9171c340c41e 100644
--- a/drivers/gpu/drm/i915/i915_sysfs.c
+++ b/drivers/gpu/drm/i915/i915_sysfs.c
@@ -444,8 +444,10 @@ static ssize_t error_state_read(struct file *filp, struct kobject *kobj,
 		const char *str = "No error state collected\n";
 		size_t len = strlen(str);
 
-		ret = min_t(size_t, count, len - off);
-		memcpy(buf, str + off, ret);
+		if (off < len) {
+			ret = min_t(size_t, count, len - off);
+			memcpy(buf, str + off, ret);
+		}
 	}
 
 	return ret;
-- 
2.25.1

