Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iKFLNZbry2l6MgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 17:43:18 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E4F636BEF2
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 17:43:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A7D210EA64;
	Tue, 31 Mar 2026 15:43:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iPuJcDTP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DED6A10EA60;
 Tue, 31 Mar 2026 15:43:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774971796; x=1806507796;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pGuaesHTw3qJWGRoLz2eBP5S1i5uVyvBTAm7wqtVe8o=;
 b=iPuJcDTPL0f6QQE5sfqIX/XhLc2LbHg/1Xrl7p4GmO8iGDeVsLBPgsb+
 pfEe3mNLqtB5iaxIW5NqtSOMEZGHTJLChHlBB7gP/liDxCuusbU73HMuc
 3S53ejV0m5yLHfHF40T6H+KBWqU0PMSO5R0Yg9YGuR03TmzzRz9U6veNJ
 7FJB0QcT5TkbI8QoVKsrWeM8J6SsR/MkWvhSnG7ZR/gGV4lnNrDw7WgoC
 x7zCZvPuGFC6Rfb0czytrV1Ay5v+Jy/uhamoSrMu6E7UUx3XpSSFCuWNm
 HN/JMLu0eDyza/NmBgo+w9lJP0XgWwNj5lGrxI07hJQ/jujm8SEFdCex3 Q==;
X-CSE-ConnectionGUID: 6iXi4j9MRpC8IYtMck1PnA==
X-CSE-MsgGUID: T02ezyIPRGqvWDH5eCn7rA==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="75884127"
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="75884127"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 08:43:16 -0700
X-CSE-ConnectionGUID: 1/IKxr57T8uTACA54Q7d2A==
X-CSE-MsgGUID: 5fZKRKyZRceElO8CqGJivQ==
X-ExtLoop1: 1
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost) ([10.245.244.24])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 08:43:14 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 03/12] drm/i915/mchbar: Define the end of the MCHBAR mirror
Date: Tue, 31 Mar 2026 18:42:50 +0300
Message-ID: <20260331154259.24600-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260331154259.24600-1-ville.syrjala@linux.intel.com>
References: <20260331154259.24600-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,linux.intel.com:mid]
X-Rspamd-Queue-Id: 7E4F636BEF2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Add defines for the end of the MCHBAR mirror. I'm planning to
use this for some range sanity checks.

BSpec: 51771
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_mchbar_regs.h | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/intel_mchbar_regs.h b/drivers/gpu/drm/i915/intel_mchbar_regs.h
index 614d4017b57b..ca0d421be16c 100644
--- a/drivers/gpu/drm/i915/intel_mchbar_regs.h
+++ b/drivers/gpu/drm/i915/intel_mchbar_regs.h
@@ -16,11 +16,16 @@
  * every way.  It is not accessible from the CP register read instructions.
  *
  * Starting from Haswell, you can't write registers using the MCHBAR mirror,
- * just read.
+ * just read. On MTL+ the mirror no longer exists.
  */
 
 #define MCHBAR_MIRROR_BASE			0x10000
+#define MCHBAR_MIRROR_END			0x13fff
+
 #define MCHBAR_MIRROR_BASE_SNB			0x140000
+#define MCHBAR_MIRROR_END_SNB			0x147fff
+#define MCHBAR_MIRROR_END_ICL_RKL		0x14ffff
+#define MCHBAR_MIRROR_END_TGL			0x15ffff
 
 #define CTG_STOLEN_RESERVED			_MMIO(MCHBAR_MIRROR_BASE + 0x34)
 #define ELK_STOLEN_RESERVED			_MMIO(MCHBAR_MIRROR_BASE + 0x48)
-- 
2.52.0

