Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31A8C7EAD48
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Nov 2023 10:48:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57DB810E1F8;
	Tue, 14 Nov 2023 09:48:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5199910E1F8
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Nov 2023 09:48:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699955334; x=1731491334;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:to:cc;
 bh=7+GGFxzWhpIfcKjoHsJFlTexQzuFrqJKATqqVwwoYcw=;
 b=ZNTjsSBPmWU1jxLA2wdpvG7P3kYen1TK45DuRIpYhcUGhPPcT3Uhwpya
 qO+WVPdloISnNMRIO+7nNW0Gmjdn+FEGodldxD78+aQ/dL+HIp7R4jG0U
 fgkzPAy3TGf4C0PMjd4rS3nT97jwoi6xI9KF6lnjCiFp6DcRLct+5MpgG
 YQ7KuxEFI0nIwfO5iYTkNPjTQfSbWLHU0aZJqBHjgMfTgqQZxd7ObxhcK
 R0Rk4uN0r54a08jbtEVEs/XQdP/aI06jKV/ZH2TqplrW0zt8jLeZMq8o9
 1HWvssROwikPFG/Jso7GxBDhMCh/w0BpFfh28gwYC/4KOzcuH0kTBymAk Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="387784913"
X-IronPort-AV: E=Sophos;i="6.03,301,1694761200"; d="scan'208";a="387784913"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2023 01:48:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="758122996"
X-IronPort-AV: E=Sophos;i="6.03,301,1694761200"; d="scan'208";a="758122996"
Received: from lab-ah.igk.intel.com ([10.102.138.202])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2023 01:48:51 -0800
From: Andrzej Hajda <andrzej.hajda@intel.com>
Date: Tue, 14 Nov 2023 10:48:29 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231114-dont_clean_gt_on_error_path-v1-1-37f2fa827fd2@intel.com>
X-B4-Tracking: v=1; b=H4sIAGxCU2UC/x3MwQrCMAwA0F8ZOVtYNy/zV0RKlsY1oGlJyxDG/
 t3q8V3eAZVNuMJtOMB4lypZO/xlAEqoGzuJ3TCN0+y9v7qYtQV6MWrYWsga2CxbKNiSWzzFhWZ
 CHBH6UIyf8vnv90f3ipXdaqiUfme0t2tS4Dy/GijeXYcAAAA=
To: intel-gfx@lists.freedesktop.org
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2111;
 i=andrzej.hajda@intel.com; h=from:subject:message-id;
 bh=7+GGFxzWhpIfcKjoHsJFlTexQzuFrqJKATqqVwwoYcw=;
 b=owEB7QES/pANAwAKASNispPeEP3XAcsmYgBlU0KDDj8M+3JDk4DDC+OSTmJf/ykpYWX31uS/z0+k
 BCqtbUqJAbMEAAEKAB0WIQT8qEQxNN2/XeF/A00jYrKT3hD91wUCZVNCgwAKCRAjYrKT3hD91457DA
 CI2fcvo76Hbu3k96cURtsdJdUD7OQsdr1Pgb5oC43GuFqUw+6nUpU1CIidGtzD1+Tvn3G4a0UOO4Ke
 K3eh6c+OIRwF5GBGn4ycp8pgaXfb6L8NW+xQm17bhHdxki/AJ1tee5t/giSd1jfbCE8Vn6PdWSFeC/
 KHlubavmTMG9bkf2lR3VUVN02IZArFtdSZ4ET+jO9PcYWE6kZWNWfJo/fU1mGW8FeceoesiLEtPMts
 +ZLjPD4DiSqp0vyTX5TPJrVNJd4yHFZxChLZ1IlR/TI+QC4pB+Kkvb53dJgyy7yofOpWwObmFv4R6f
 KNXMW7SFWTZRvWPLJv0KYZBcgYGhIwpe7Xox4otKWdHYRntZyV6BPQdj2WsyCBeyIggVpzeri3Y+XJ
 mNv9FqzmG13Bjrju4CB/lWqDb9GT5LtS1noAXwl2+coiCYlcg6pMGzyb4frLKAe0YJ0bFkQqVW/SKO
 ofxlj1U08fIh7a0A+F1MiTUIHlGh2KSJ/3OWD0e0UH5+0=
X-Developer-Key: i=andrzej.hajda@intel.com; a=openpgp;
 fpr=FCA8443134DDBF5DE17F034D2362B293DE10FDD7
Subject: [Intel-gfx] [PATCH] drm/i915: do not clean GT table on error path
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>,
 Matthew Auld <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The only task of intel_gt_release_all is to zero gt table. Calling
it on error path prevents intel_gt_driver_late_release_all (called from
i915_driver_late_release) to cleanup GTs, causing leakage.
After i915_driver_late_release GT array is not used anymore so
it does not need cleaning at all.

Sample leak report:

BUG i915_request (...): Objects remaining in i915_request on __kmem_cache_shutdown()
...
Object 0xffff888113420040 @offset=64
Allocated in __i915_request_create+0x75/0x610 [i915] age=18339 cpu=1 pid=1454
 kmem_cache_alloc+0x25b/0x270
 __i915_request_create+0x75/0x610 [i915]
 i915_request_create+0x109/0x290 [i915]
 __engines_record_defaults+0xca/0x440 [i915]
 intel_gt_init+0x275/0x430 [i915]
 i915_gem_init+0x135/0x2c0 [i915]
 i915_driver_probe+0x8d1/0xdc0 [i915]

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8489
Fixes: bec68cc9ea42d8 ("drm/i915: Prepare for multiple GTs")
Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 80e85cadb9a262..428ace0bebaac9 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -782,7 +782,7 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	ret = i915_driver_mmio_probe(i915);
 	if (ret < 0)
-		goto out_tiles_cleanup;
+		goto out_runtime_pm_put;
 
 	ret = i915_driver_hw_probe(i915);
 	if (ret < 0)
@@ -842,8 +842,6 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	i915_ggtt_driver_late_release(i915);
 out_cleanup_mmio:
 	i915_driver_mmio_release(i915);
-out_tiles_cleanup:
-	intel_gt_release_all(i915);
 out_runtime_pm_put:
 	enable_rpm_wakeref_asserts(&i915->runtime_pm);
 	i915_driver_late_release(i915);

---
base-commit: c6f47b4817ee55a02359c3347a298876cfa93b0e
change-id: 20231114-dont_clean_gt_on_error_path-91cd9c3caa0a

Best regards,
-- 
Andrzej Hajda <andrzej.hajda@intel.com>

