Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E113CA7327B
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Mar 2025 13:47:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DA4310E8B5;
	Thu, 27 Mar 2025 12:47:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fWs42Mky";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3863510E8B5
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Mar 2025 12:47:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743079665; x=1774615665;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dPTgiceUwjafHwdSnWa1VDkHBvutgxCyLTWXMroYQ7s=;
 b=fWs42MkyT5Mb+Cn5HkDnN3YxZPZGse1KZSb16DsXKKUj6UkqVYgl6UhY
 nH6kNxpsKOT6ZwI7MFaBqcCfwaw2eEI7gFtQz1AyBfEUehH2dk1nBmtHg
 6z1eBVW8EwZjgHSLTzscwbC+uxj6lkeWxBCaWSxIur+FPjnG8Qm/01CgD
 7/uPdNx2y+EXOUagnbJGrcIO2Eac4iXIG9+OBcVDf3I+edGGwKcKOkbor
 IOsXIUnEVD0lcV7N4DG2IvCK/2UNqBn35RoRxUF2hxoeFYDCt2wlLH9Pn
 2GWPofsMQFhZC9WcJ6462w9/vQczwzNJRa8RZIVwrg5VPrS3xa6cQ49L7 Q==;
X-CSE-ConnectionGUID: cwXMVc02Qem77SUCkcVhhw==
X-CSE-MsgGUID: hJzMh+nITWGnHQaLqn0RdQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="61938114"
X-IronPort-AV: E=Sophos;i="6.14,280,1736841600"; d="scan'208";a="61938114"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2025 05:47:45 -0700
X-CSE-ConnectionGUID: etJtt3kDRQqY2UT27GZXKQ==
X-CSE-MsgGUID: pKlRY0cXSwS1XXbuh4p78A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,280,1736841600"; d="scan'208";a="130324033"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.17])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2025 05:47:43 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, Kees Cook <kees@kernel.org>,
 Nicolas Chauvet <kwizart@gmail.com>,
 Damian Tometzki <damian@riscv-rocks.de>, stable@vger.kernel.org
Subject: [PATCH] drm/i915/gvt: fix unterminated-string-initialization warning
Date: Thu, 27 Mar 2025 14:47:39 +0200
Message-Id: <20250327124739.2609656-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Initializing const char opregion_signature[16] = OPREGION_SIGNATURE
(which is "IntelGraphicsMem") drops the NUL termination of the
string. This is intentional, but the compiler doesn't know this.

Switch to initializing header->signature directly from the string
litaral, with sizeof destination rather than source. We don't treat the
signature as a string other than for initialization; it's really just a
blob of binary data.

Add a static assert for good measure to cross-check the sizes.

Reported-by: Kees Cook <kees@kernel.org>
Closes: https://lore.kernel.org/r/20250310222355.work.417-kees@kernel.org
Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13934
Tested-by: Nicolas Chauvet <kwizart@gmail.com>
Tested-by: Damian Tometzki <damian@riscv-rocks.de>
Cc: stable@vger.kernel.org
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gvt/opregion.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/opregion.c b/drivers/gpu/drm/i915/gvt/opregion.c
index 509f9ccae3a9..dbad4d853d3a 100644
--- a/drivers/gpu/drm/i915/gvt/opregion.c
+++ b/drivers/gpu/drm/i915/gvt/opregion.c
@@ -222,7 +222,6 @@ int intel_vgpu_init_opregion(struct intel_vgpu *vgpu)
 	u8 *buf;
 	struct opregion_header *header;
 	struct vbt v;
-	const char opregion_signature[16] = OPREGION_SIGNATURE;
 
 	gvt_dbg_core("init vgpu%d opregion\n", vgpu->id);
 	vgpu_opregion(vgpu)->va = (void *)__get_free_pages(GFP_KERNEL |
@@ -236,8 +235,10 @@ int intel_vgpu_init_opregion(struct intel_vgpu *vgpu)
 	/* emulated opregion with VBT mailbox only */
 	buf = (u8 *)vgpu_opregion(vgpu)->va;
 	header = (struct opregion_header *)buf;
-	memcpy(header->signature, opregion_signature,
-	       sizeof(opregion_signature));
+
+	static_assert(sizeof(header->signature) == sizeof(OPREGION_SIGNATURE) - 1);
+	memcpy(header->signature, OPREGION_SIGNATURE, sizeof(header->signature));
+
 	header->size = 0x8;
 	header->opregion_ver = 0x02000000;
 	header->mboxes = MBOX_VBT;
-- 
2.39.5

