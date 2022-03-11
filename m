Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 800A34D56F7
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Mar 2022 01:50:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CFFD10E432;
	Fri, 11 Mar 2022 00:50:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB27C10E434
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Mar 2022 00:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646959852; x=1678495852;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zP9McEsADQmohiHtrqE5XLytq6mSQ8pQjGN5InMJ4Qs=;
 b=kVfpSAwbrGE9l3982QhyFqI/B/0Rx9BhFi3RV9VAIc0AX6ChBdgvl91d
 +OWdbYJK7NyqywjqLdI7A5lZYhx56KjRVo+/juaigs+65l55rx1Lb/uD8
 RImWY3O5lUFb3tKE7gAuPqhrdhpuRFkoUuVfHPIC0sYoyRG1dy3JBpIHR
 84sGBzLeIDOFiRVZCZ2uPhMBgbgTbcztUfCcxRaeGaiVVFYbfHmNzoCZj
 Z4AKx889gewPAghmv1d+6BynzCS6oy1o3iIf9fwAAnZI8NphpKu6lTsWE
 c5B89HVKdo/ikmo3HVD+4iunr/joffH1KfhDwwOniQiPIDbIi7yUL/cAT w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10282"; a="237626449"
X-IronPort-AV: E=Sophos;i="5.90,172,1643702400"; d="scan'208";a="237626449"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 16:40:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,172,1643702400"; d="scan'208";a="633213673"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by FMSMGA003.fm.intel.com with ESMTP; 10 Mar 2022 16:40:47 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Mar 2022 16:43:11 -0800
Message-Id: <20220311004311.514198-2-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220311004311.514198-1-alan.previn.teres.alexis@intel.com>
References: <20220311004311.514198-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 1/1] drm/i915/reset: Fix error_state_read ptr
 + offset use
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

Fixes: 0e39037b3165 ("drm/i915: Cache the error string")

This fixes a kernel page fault can happen when
multiple tests are running concurrently in a loop
and one is producing engine resets and consuming
the i915 error_state dump while the other is
forcing full GT resets. (takes a while to trigger).

The dmesg call trace:

[ 5590.803000] BUG: unable to handle page fault for address:
               ffffffffa0b0e000
[ 5590.803009] #PF: supervisor read access in kernel mode
[ 5590.803013] #PF: error_code(0x0000) - not-present page
[ 5590.803016] PGD 5814067 P4D 5814067 PUD 5815063 PMD 109de4067
               PTE 0
[ 5590.803022] Oops: 0000 [#1] PREEMPT SMP NOPTI
[ 5590.803026] CPU: 5 PID: 13656 Comm: i915_hangman Tainted: G U
                    5.17.0-rc5-ups69-guc-err-capt-rev6+ #136
[ 5590.803033] Hardware name: Intel Corporation Alder Lake Client
                    Platform/AlderLake-M LP4x RVP, BIOS ADLPFWI1.R00.
                    3031.A02.2201171222	01/17/2022
[ 5590.803039] RIP: 0010:memcpy_erms+0x6/0x10
[ 5590.803045] Code: fe ff ff cc eb 1e 0f 1f 00 48 89 f8 48 89 d1
                     48 c1 e9 03 83 e2 07 f3 48 a5 89 d1 f3 a4 c3
                     66 0f 1f 44 00 00 48 89 f8 48 89 d1 <f3> a4
                     c3 0f 1f 80 00 00 00 00 48 89 f8 48 83 fa 20
                     72 7e 40 38 fe
[ 5590.803054] RSP: 0018:ffffc90003a8fdf0 EFLAGS: 00010282
[ 5590.803057] RAX: ffff888107ee9000 RBX: ffff888108cb1a00
               RCX: 0000000000000f8f
[ 5590.803061] RDX: 0000000000001000 RSI: ffffffffa0b0e000
               RDI: ffff888107ee9071
[ 5590.803065] RBP: 0000000000000000 R08: 0000000000000001
               R09: 0000000000000001
[ 5590.803069] R10: 0000000000000001 R11: 0000000000000002
               R12: 0000000000000019
[ 5590.803073] R13: 0000000000174fff R14: 0000000000001000
               R15: ffff888107ee9000
[ 5590.803077] FS: 00007f62a99bee80(0000) GS:ffff88849f880000(0000)
               knlGS:0000000000000000
[ 5590.803082] CS: 0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[ 5590.803085] CR2: ffffffffa0b0e000 CR3: 000000010a1a8004
               CR4: 0000000000770ee0
[ 5590.803089] PKRU: 55555554
[ 5590.803091] Call Trace:
[ 5590.803093] <TASK>
[ 5590.803096] error_state_read+0xa1/0xd0 [i915]
[ 5590.803175] kernfs_fop_read_iter+0xb2/0x1b0
[ 5590.803180] new_sync_read+0x116/0x1a0
[ 5590.803185] vfs_read+0x114/0x1b0
[ 5590.803189] ksys_read+0x63/0xe0
[ 5590.803193] do_syscall_64+0x38/0xc0
[ 5590.803197] entry_SYSCALL_64_after_hwframe+0x44/0xae
[ 5590.803201] RIP: 0033:0x7f62aaea5912
[ 5590.803204] Code: c0 e9 b2 fe ff ff 50 48 8d 3d 5a b9 0c 00 e8 05
                     19 02 00 0f 1f 44 00 00 f3 0f 1e fa 64 8b 04 25
                     18 00 00 00 85 c0 75 10 0f 05 <48> 3d 00 f0 ff
                     ff 77 56 c3 0f 1f 44 00 00 48 83 ec 28 48 89 54 24
[ 5590.803213] RSP: 002b:00007fff5b659ae8 EFLAGS: 00000246
               ORIG_RAX: 0000000000000000
[ 5590.803218] RAX: ffffffffffffffda RBX: 0000000000100000
               RCX: 00007f62aaea5912
[ 5590.803221] RDX: 000000000008b000 RSI: 00007f62a8c4000f
               RDI: 0000000000000006
[ 5590.803225] RBP: 00007f62a8bcb00f R08: 0000000000200010
               R09: 0000000000101000
[ 5590.803229] R10: 0000000000000001 R11: 0000000000000246
               R12: 0000000000000006
[ 5590.803233] R13: 0000000000075000 R14: 00007f62a8acb010
               R15: 0000000000200000
[ 5590.803238] </TASK>
[ 5590.803240] Modules linked in: i915 ttm drm_buddy drm_dp_helper
                        drm_kms_helper syscopyarea sysfillrect sysimgblt
                        fb_sys_fops prime_numbers nfnetlink br_netfilter
                        overlay mei_pxp mei_hdcp x86_pkg_temp_thermal
                        coretemp kvm_intel snd_hda_codec_hdmi snd_hda_intel
                        snd_intel_dspcfg snd_hda_codec snd_hwdep
                        snd_hda_core snd_pcm mei_me mei fuse ip_tables
                        x_tables crct10dif_pclmul e1000e crc32_pclmul ptp
                        i2c_i801 ghash_clmulni_intel i2c_smbus pps_core
                        [last unloa ded: ttm]
[ 5590.803277] CR2: ffffffffa0b0e000
[ 5590.803280] ---[ end trace 0000000000000000 ]---

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/i915_sysfs.c | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_sysfs.c b/drivers/gpu/drm/i915/i915_sysfs.c
index a4d1759375b9..66a8880eaf19 100644
--- a/drivers/gpu/drm/i915/i915_sysfs.c
+++ b/drivers/gpu/drm/i915/i915_sysfs.c
@@ -432,7 +432,14 @@ static ssize_t error_state_read(struct file *filp, struct kobject *kobj,
 	struct device *kdev = kobj_to_dev(kobj);
 	struct drm_i915_private *i915 = kdev_minor_to_i915(kdev);
 	struct i915_gpu_coredump *gpu;
-	ssize_t ret;
+	ssize_t ret = 0;
+
+	/*
+	 * FIXME: Concurrent clients triggering resets and reading + clearing
+	 * dumps can cause inconsistent sysfs reads when a user calls in with a
+	 * non-zero offset to complete a prior partial read but the
+	 * gpu_coredump has been cleared or replaced.
+	 */
 
 	gpu = i915_first_error_state(i915);
 	if (IS_ERR(gpu)) {
@@ -444,8 +451,10 @@ static ssize_t error_state_read(struct file *filp, struct kobject *kobj,
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

