Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F05068AB68A
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Apr 2024 23:42:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B5ED112044;
	Fri, 19 Apr 2024 21:42:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OIvua/Rq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87A0A10FF87
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Apr 2024 21:42:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713562922; x=1745098922;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=y7hhe81WJtkvVy1ZAX26Gco4kU9mv3ozCNiQqItl/tY=;
 b=OIvua/RqiGRdA7b9ArwW51zIHoa5+QmcPYqYmSp08W2MVKJuWK7dAGYs
 KHvXIRIAcoVvLCRqFtjUFyHGtHZqezDU08PCoFCreYLC9hzKy911XPlJ0
 9ng6lBCvkDV+lRuE3fOlOgVfzr8iPczXbwcEiZmr8tGxVi7w54APbiFVU
 CvhAdpNDo4YcAv7oVdIlWjA4ZOIqFsh8PvnoTrua8qdq89W4goqY1X88W
 9UhaqkqR2oJKMQxkYf+/nfMlyBLoKoacDWeHkL9lHqI9SUHxrtk2DNRi4
 H6dKeqYtwGzzDnFKmtOqRkZx1740pUSH+MPioIHJ4NwsrOw+J+NI594Sv g==;
X-CSE-ConnectionGUID: Q3CHqZJOQK2bnUJRpx2uIg==
X-CSE-MsgGUID: PRViBgXcQfG3u7dnlz2lFA==
X-IronPort-AV: E=McAfee;i="6600,9927,11049"; a="31664337"
X-IronPort-AV: E=Sophos;i="6.07,214,1708416000"; d="scan'208";a="31664337"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 14:42:01 -0700
X-CSE-ConnectionGUID: 1ik2BuLAT/KEXZ4z6DVZ9g==
X-CSE-MsgGUID: AjqnWSqORjOwtL7K9eEmkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,214,1708416000"; d="scan'208";a="23479138"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 14:42:01 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: saurabhg.gupta@intel.com, jonathan.cavitt@intel.com,
 John.C.Harrison@intel.com, chris.p.wilson@linux.intel.com,
 andi.shyti@linux.intel.com, nirmoy.das@intel.com
Subject: [PATCH] drm/i915/gem: Downgrade stolen lmem setup warning
Date: Fri, 19 Apr 2024 14:26:43 -0700
Message-Id: <20240419212643.3915745-1-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

In the case where lmem_size < dsm_base, hardware is reporting that
stolen lmem is unusable.  In this case, instead of throwing a warning,
we can continue execution as normal by disabling stolen LMEM support.
For example, this change will allow the following error report from
ATS-M to no longer apply:

<6> [144.859887] pcieport 0000:4b:00.0: bridge window [mem 0xb1000000-0xb11fffff]
<6> [144.859900] pcieport 0000:4b:00.0: bridge window [mem 0x3bbc00000000-0x3bbc17ffffff 64bit pref]
<6> [144.859917] pcieport 0000:4c:01.0: PCI bridge to [bus 4d-4e]
<6> [144.859932] pcieport 0000:4c:01.0: bridge window [mem 0xb1000000-0xb11fffff]
<6> [144.859945] pcieport 0000:4c:01.0: bridge window [mem 0x3bbc00000000-0x3bbc17ffffff 64bit pref]
<6> [144.859984] i915 0000:4d:00.0: [drm] BAR2 resized to 256M
<6> [144.860640] i915 0000:4d:00.0: [drm] Using a reduced BAR size of 256MiB. Consider enabling 'Resizable BAR' or similar, if available in the BIOS.
<4> [144.860719] -----------[ cut here ]-----------
<4> [144.860727] WARNING: CPU: 17 PID: 1815 at drivers/gpu/drm/i915/gem/i915_gem_stolen.c:939 i915_gem_stolen_lmem_setup+0x38c/0x430 [i915]
<4> [144.861430] Modules linked in: i915 snd_intel_dspcfg snd_hda_codec snd_hwdep snd_hda_core snd_pcm vgem drm_shmem_helper prime_numbers i2c_algo_bit ttm video drm_display_helper drm_buddy fuse x86_pkg_temp_thermal coretemp kvm_intel kvm ixgbe mdio irqbypass ptp crct10dif_pclmul crc32_pclmul ghash_clmulni_intel pps_core i2c_i801 mei_me i2c_smbus mei wmi acpi_power_meter [last unloaded: i915]
<4> [144.861611] CPU: 17 PID: 1815 Comm: i915_module_loa Tainted: G U 6.8.0-rc5-drmtip_1515-g78f49af27723+ #1
<4> [144.861624] Hardware name: Intel Corporation WHITLEY/WHITLEY, BIOS SE5C6200.86B.0020.P41.2109300305 09/30/2021
<4> [144.861632] RIP: 0010:i915_gem_stolen_lmem_setup+0x38c/0x430 [i915]
<4> [144.862287] Code: ff 41 c1 e4 05 e9 ac fe ff ff 4d 63 e4 48 89 ef 48 85 ed 74 04 48 8b 7d 08 48 c7 c6 10 a3 7b a0 e8 e9 90 43 e1 e9 ee fd ff ff <0f> 0b 49 c7 c4 ed ff ff ff e9 e0 fd ff ff 0f b7 d2 48 c7 c6 00 d9
<4> [144.862299] RSP: 0018:ffffc90005607980 EFLAGS: 00010207
<4> [144.862315] RAX: fffffffffff00000 RBX: 0000000000000003 RCX: 0000000000000000

Fixes: https://gitlab.freedesktop.org/drm/intel/-/issues/10833

Suggested-by: Chris Wilson <chris.p.wilson@linux.intel.com>
Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index ad6dd7f3259bc..efa632a9e61c6 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -936,8 +936,12 @@ i915_gem_stolen_lmem_setup(struct drm_i915_private *i915, u16 type,
 	} else {
 		/* Use DSM base address instead for stolen memory */
 		dsm_base = intel_uncore_read64(uncore, GEN6_DSMBASE) & GEN11_BDSM_MASK;
-		if (WARN_ON(lmem_size < dsm_base))
+		if (lmem_size < dsm_base) {
+			drm_dbg(&i915->drm,
+				"Disabling stolen memory support due to OOB placement: lmem_size = %lli vs dsm_base = %lli\n",
+				lmem_size, dsm_base);
 			return ERR_PTR(-ENODEV);
+		}
 		dsm_size = ALIGN_DOWN(lmem_size - dsm_base, SZ_1M);
 	}
 
-- 
2.25.1

