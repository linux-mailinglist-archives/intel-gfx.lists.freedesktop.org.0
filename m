Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id n44zDTAaMGprNgUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 17:28:48 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D4D2687ACC
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 17:28:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=naKvnPKj;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 217BB10E50B;
	Mon, 15 Jun 2026 15:28:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C6A410E505;
 Mon, 15 Jun 2026 15:28:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781537324; x=1813073324;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jbJy6h47RtheuI3fo3h3cMXQoSr559B606X+Z4Cx0ZU=;
 b=naKvnPKjyejdGCyhdOLsbIwZlmH7J8xldvL+TP3YZFmyrzp3/Oe5J8Ar
 SuJviQzoUNW65gygxSftJa5Wh6YinWNb3Mqe8nbQeFyrNheNKJenHwc7U
 pDgXbYxPQbNctsW32Tt+tLkAPeOHdZOfbuT+rd9NaaU1/rDC1dtJB0g3G
 IvT5pJM/vXqO4H0ZO8kWNgPQUh/KD9rJPb1AJ+/l0lKvmbauno4Zj6p5K
 CecQtg8SppwIV4lSS7Tjl0AQtqEoC8dkGGWxtzYxK39ISWvFYgUcFu7p2
 hmxdWuZQON+JYsEj7QtMjiqO8Iq5AMuNu6GvexA6aR9r9tKUnOmtC0TIO A==;
X-CSE-ConnectionGUID: Z7Nr7O3YR9Kdh53vsVV6OA==
X-CSE-MsgGUID: h48CdmGbTrWF+4ywSazEpA==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="86181128"
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="86181128"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 08:28:44 -0700
X-CSE-ConnectionGUID: jIkCG+CYTZarRAMFdLnLuQ==
X-CSE-MsgGUID: W7nwjW6qTDem5rZ180wDjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="243335475"
Received: from mkosciow-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.28])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 08:28:42 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH] drm/intel: drop driver include from mchbar_regs.h
Date: Mon, 15 Jun 2026 18:28:37 +0300
Message-ID: <20260615152837.1898991-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8D4D2687ACC

Headers under include/ aren't supposed to try to include headers from
driver directories, such as i915_reg_defs.h. Remove it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 include/drm/intel/mchbar_regs.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/include/drm/intel/mchbar_regs.h b/include/drm/intel/mchbar_regs.h
index ca0d421be16c..66498ca5e40b 100644
--- a/include/drm/intel/mchbar_regs.h
+++ b/include/drm/intel/mchbar_regs.h
@@ -6,8 +6,6 @@
 #ifndef __INTEL_MCHBAR_REGS__
 #define __INTEL_MCHBAR_REGS__
 
-#include "i915_reg_defs.h"
-
 /*
  * MCHBAR mirror.
  *
-- 
2.47.3

