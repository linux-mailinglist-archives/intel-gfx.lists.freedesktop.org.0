Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oBa/G9YroGmLfwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 12:17:42 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE9DD1A4F47
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 12:17:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 091EE10E8CE;
	Thu, 26 Feb 2026 11:17:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ac/cCWeM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1735410E8CE;
 Thu, 26 Feb 2026 11:17:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772104658; x=1803640658;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Br1FlB0tZ21POETBt6kVd4qi6DuRZ5UWIjoWajgirPA=;
 b=ac/cCWeM7057y7VuJNRq1sppIAaFZIlYXivCJSMqdQ/y38X8zt4kOkRW
 wbCHaxG3ZYEFR1W7bQI90HsOiAbY0MWDRj2b4iXdyCSECsYayOTNvJdMq
 oCDkhqC1spOIUhhziW63Yabuz16ZffYJFDig9O9fMadk01ZHp9rFm0o8Z
 /hXsP+20rsOYoCOKynMQMnuAD57f5QJf7NtHio2S78ucdbrCRDCkYSUhE
 7HOZFbY+oUfhyVGx5u7cbrYhifIkE953/atbFek7waghnVxxpggMlaJai
 bobH5H2op5sQ459IRJvCSM8AJVqwZ+/2WkuR3bweyzxEkVKUP49PAO5J/ w==;
X-CSE-ConnectionGUID: HcQefEy+Thm58WUM6ivgqg==
X-CSE-MsgGUID: SntvgVOwRV2hgvHOn+KJfQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="84257027"
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="84257027"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 03:17:37 -0800
X-CSE-ConnectionGUID: IiTentSNR7afWgOZxILLHg==
X-CSE-MsgGUID: EbGO8jrfQEOJa6sZlYtF+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="221040958"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by orviesa004.jf.intel.com with ESMTP; 26 Feb 2026 03:17:37 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH] Revert "drm/xe/compat: Remove unused i915_reg.h from compat
 header"
Date: Thu, 26 Feb 2026 17:04:13 +0530
Message-ID: <20260226113413.2045899-1-uma.shankar@intel.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: DE9DD1A4F47
X-Rspamd-Action: no action

This reverts commit 4953d806a423087fcc49d4f8884fde85cd23ec1e.
Change breaks build for drm-xe-next, hence revert.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/xe/compat-i915-headers/i915_reg.h | 6 ++++++
 1 file changed, 6 insertions(+)
 create mode 100644 drivers/gpu/drm/xe/compat-i915-headers/i915_reg.h

diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_reg.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_reg.h
new file mode 100644
index 000000000000..8619ec015ad4
--- /dev/null
+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_reg.h
@@ -0,0 +1,6 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2023 Intel Corporation
+ */
+
+#include "../../i915/i915_reg.h"
-- 
2.50.1

