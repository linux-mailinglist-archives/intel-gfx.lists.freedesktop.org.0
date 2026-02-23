Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wMdHDRyGnGm7IwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Feb 2026 17:53:48 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8815417A2DB
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Feb 2026 17:53:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64A0610E3F9;
	Mon, 23 Feb 2026 16:53:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RM8xwLsb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F5F910E3F9;
 Mon, 23 Feb 2026 16:53:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771865624; x=1803401624;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nwMXs4ltbqSKwF+Z2Nne/1X4M8VSTxz4QFpywvNUb6A=;
 b=RM8xwLsbNA1p3WsVsNtqWkxmu6I7o3meQogbScyiXcnvAkBkfyRB+seq
 /0eHv6bs3PGKRW8O45745c0YxWJkvKvJv1PlAUG94b+EmylnYwVGANDiR
 BtLlfpzeiDDxXChv52l3yfWXPh7JDpwwMt8/nT8jOyfB14rIsFW++NTra
 JksIAYsWY5Ri3olq1JlkoTW4zn2iCxlfmQgEKuGtrLXmxl64qAle+VfIq
 0bhFnFWqoIwpw24OsBGUvNXIsgknSqqdtvksbOptpeMfGvbdPW9BHDJAr
 ynzR5lc7Pu+e5CpR0aPWXriMgZYGqLGhUUukpggTB3xgQ7bwIiQmUZWi3 g==;
X-CSE-ConnectionGUID: nj0QQaVqR22gi3Ry/oSqiQ==
X-CSE-MsgGUID: RU1oUCCgTfSpIttnd+XQwA==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="76477617"
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="76477617"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 08:53:44 -0800
X-CSE-ConnectionGUID: Se356/5lRXaPvV0T5ekqlw==
X-CSE-MsgGUID: GUw0HBI7S1W9rn8Acwzs7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="220613629"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by orviesa005.jf.intel.com with ESMTP; 23 Feb 2026 08:53:42 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH] drm/xe/compat: Remove unused i915_reg.h from compat header
Date: Mon, 23 Feb 2026 22:40:15 +0530
Message-ID: <20260223171015.1035550-1-uma.shankar@intel.com>
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
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 8815417A2DB
X-Rspamd-Action: no action

Display Code is made independent of i915_reg.h, hence
it can be dropped from compat header.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/xe/compat-i915-headers/i915_reg.h | 6 ------
 1 file changed, 6 deletions(-)
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/i915_reg.h

diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_reg.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_reg.h
deleted file mode 100644
index 8619ec015ad4..000000000000
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_reg.h
+++ /dev/null
@@ -1,6 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2023 Intel Corporation
- */
-
-#include "../../i915/i915_reg.h"
-- 
2.50.1

