Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 903835B68B6
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Sep 2022 09:32:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5775610E626;
	Tue, 13 Sep 2022 07:32:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4272E10E626
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Sep 2022 07:32:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663054366; x=1694590366;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Uu6zkO3QSRYBfpPEvHGGqJ4LXKaCb1KuHBfjISGeON0=;
 b=Wm/1LguzW3yDdYUCDp2Nto1S1RdHyXs6MpQEoHkwQpw89bClFUIBu5DX
 KREvOy0rTBs1uDz14pVrN4Q0Cz2/Es4jgSbI18KEzz6pYE+IEqhdCct3Z
 juErs3EkxiPND2EaN6ATPbh3HciSaolU2SykWT+j8DH7WAU9X01IpLaWA
 Uteo61E85KIcWIgx4g7HgLdTELfGZ6fLf1DhoGUZVWoMiqxENmzEhcNoj
 ZvCPFg2wQPWSv8F4+Rswz0aakfxXENd8IBOCziBpXuWDIE7s16FrdeQdy
 WQgaZpldXKTSphP9yGeCYNrHry4HW85BhHnk6gR53bQqxgM+dWJbQZkG1 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10468"; a="296801827"
X-IronPort-AV: E=Sophos;i="5.93,312,1654585200"; d="scan'208";a="296801827"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 00:32:45 -0700
X-IronPort-AV: E=Sophos;i="5.93,312,1654585200"; d="scan'208";a="593830961"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 00:32:43 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Sep 2022 13:02:24 +0530
Message-Id: <20220913073224.23626-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/DG{1,
 2}: FIXME Temporary hammer to disable rpm
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
Cc: Matthew Auld <matthew.auld@intel.com>, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DG1 and DG2 has lmem, and cpu can access the lmem objects
via mmap and i915 internal i915_gem_object_pin_map() for
i915 own usages. Both of these methods has pre-requisite
requirement to keep GFX PCI endpoint in D0 for a supported
iomem transaction over PCI link. (Refer PCIe specs pecs 5.3.1.4.1)

TODO:
A solution towards releasing mmap mappings in runtime suspend is
already work in progress.
With respect to i915_gem_object_pin_map(), every caller
has to grab a wakeref if gem object lies in lmem.

Till we fix all issues related to runtime PM, we need
to keep runtime PM disable on both DG1 and DG2.

Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 77e7df21f539..28f38f1cc5cc 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -931,6 +931,7 @@ static const struct intel_device_info dg1_info = {
 		BIT(VCS0) | BIT(VCS2),
 	/* Wa_16011227922 */
 	.__runtime.ppgtt_size = 47,
+	.has_runtime_pm = 0,
 };
 
 static const struct intel_device_info adl_s_info = {
@@ -1076,6 +1077,7 @@ static const struct intel_device_info dg2_info = {
 	XE_LPD_FEATURES,
 	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
 			       BIT(TRANSCODER_C) | BIT(TRANSCODER_D),
+	.has_runtime_pm = 0,
 	.require_force_probe = 1,
 };
 
-- 
2.26.2

