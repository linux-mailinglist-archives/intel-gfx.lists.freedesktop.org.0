Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +EN1Elo+e2mNCgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 12:02:50 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC089AF562
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 12:02:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 514FF10E31C;
	Thu, 29 Jan 2026 11:02:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PYxsdwZW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D9ED10E102;
 Thu, 29 Jan 2026 11:02:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769684567; x=1801220567;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zyC8VKz5aS6W4/l1+3DxCQ0yH37qtqSXhcpR94LBS74=;
 b=PYxsdwZWc5Quw/l5A6cwrO8mWgW32uVxJT7bI8Pd00D6gjc2zMXrw/zw
 RXM58EIOq/Dqv4eAcEYbmH1LNoFPQfTpFStOR15Seg7AXkwkCgAYKPMcm
 upjBPEOnpZ0YVmb+1jQhv9Rj8nJ6i4IhxfLTlQVHRF/eQbunvf1kIcLIU
 rmVtHkwRoV7xcDlOe18PiXj+kUWGJN7q5rbYhp2KA0SbntZtTSXaPOQqE
 dTc07NReJQJL89v/OVQD4zGLSsmNRgwt55fSR7Ldp+JVf9LtgMZeeWA7X
 iTHp/X16sVuBxtNl1E3CpS8IuQ0geu8yv/l2aolK5Codu835wRyx21J4+ g==;
X-CSE-ConnectionGUID: PP6WsmEPS4mog35+ELjmWg==
X-CSE-MsgGUID: VE5dcpH9RpmCGeB0rW7IrA==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="58501507"
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="58501507"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 03:02:46 -0800
X-CSE-ConnectionGUID: 5dBykHyMS2y5wOws+oIgtw==
X-CSE-MsgGUID: HvyOjBU/RVu969o7d1l5fQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="239280093"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by orviesa002.jf.intel.com with ESMTP; 29 Jan 2026 03:02:45 -0800
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: daniele.ceraolospurio@intel.com
Subject: [PATCH] drm/xe/guc: Fix kernel-doc warning in GuC scheduler ABI header
Date: Thu, 29 Jan 2026 16:07:30 +0530
Message-Id: <20260129103730.2289942-1-chaitanya.kumar.borah@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: CC089AF562
X-Rspamd-Action: no action

The GuC scheduler ABI header contains a file-level comment that is not
intended to document a kernel-doc symbol. Using kernel-doc comment
syntax (/** */) triggers kernel-doc warnings.

With "-Werror", this causes the build to fail. Convert the comment to a
regular block comment.

HDRTEST drivers/gpu/drm/xe/abi/guc_scheduler_abi.h
Warning: drivers/gpu/drm/xe/abi/guc_scheduler_abi.h:11 This comment starts with '/**', but isn't a kernel-doc comment. Refer to Documentation/doc-guide/kernel-doc.rst
 * Generic defines required for registration with and submissions to the GuC
1 warnings as errors
make[6]: *** [drivers/gpu/drm/xe/Makefile:377: drivers/gpu/drm/xe/abi/guc_scheduler_abi.hdrtest] Error 3
make[5]: *** [scripts/Makefile.build:544: drivers/gpu/drm/xe] Error 2
make[4]: *** [scripts/Makefile.build:544: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:544: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:544: drivers] Error 2
make[1]: *** [/home/kbuild2/kernel/Makefile:2088: .] Error 2
make: *** [Makefile:248: __sub-make] Error 2

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/xe/abi/guc_scheduler_abi.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/abi/guc_scheduler_abi.h b/drivers/gpu/drm/xe/abi/guc_scheduler_abi.h
index 513b22a87428..19ec89bf39c5 100644
--- a/drivers/gpu/drm/xe/abi/guc_scheduler_abi.h
+++ b/drivers/gpu/drm/xe/abi/guc_scheduler_abi.h
@@ -8,7 +8,7 @@
 
 #include <linux/types.h>
 
-/**
+/*
  * Generic defines required for registration with and submissions to the GuC
  * scheduler. Includes engine class/instance defines and context attributes
  * (id, priority, etc)
-- 
2.25.1

