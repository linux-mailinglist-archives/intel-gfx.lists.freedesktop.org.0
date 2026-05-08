Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uN+lKyG5/Wm4hwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 12:21:21 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61BFC4F4F12
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 12:21:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86BD610F433;
	Fri,  8 May 2026 10:21:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BxNcf+7K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC11210F413;
 Fri,  8 May 2026 10:21:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778235677; x=1809771677;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cojI/gwaZHr93LDbN4OO8ZbULbP2R4eNiodl6E7Ecs4=;
 b=BxNcf+7KPpkDRXqpD/ChH3la2iuG9f5h0qYqnWuk1oIJ2Yk2e8d7qiQc
 gvuCycZ/jajMZUTjAGgNUauxaE201R1xdrigxwrMmsKIav4j9eBhYykgp
 nr9xne5+shzZ8iyKFDaKVrmEaG7TIk3Vtpo9/9IKitmmuIizoxghzQJ7Z
 oMR+coIG8fck/ZOz0+BdKkJ+eDO179xKdSLXM2oHhFIwVE8queTIX1vvy
 PhExG7Ahugo6rRezcetDwaUAeMRP4/IV2hb5x0HpRYkULDA225EK1gw5H
 9+C6GYKmeHDE1aFHegSnGuuvtwnrnajs9I+U7ARRe064Gh7I6BUb+eLXX A==;
X-CSE-ConnectionGUID: UuKivsKiQpaHG2HuRlj9wg==
X-CSE-MsgGUID: YWESGzvfTTCzmJPXBiulPA==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="79055468"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="79055468"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 03:21:17 -0700
X-CSE-ConnectionGUID: fJX+Tc7oTtaTIOHJU2ZKJA==
X-CSE-MsgGUID: Idp2DgbXTYKlAbYWVe7f0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="230333933"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.40])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 03:21:15 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org
Cc: rodrigo.vivi@intel.com, Matthew Brost <matthew.brost@intel.com>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 joonas.lahtinen@linux.intel.com, tursulin@ursulin.net,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 3/3] Documentation/gpu: add remaining DOC: comments to Intel
 display documentation
Date: Fri,  8 May 2026 13:20:49 +0300
Message-ID: <589c46cf9a46763f4fbb7e1756656e6d71ba1431.1778235406.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1778235406.git.jani.nikula@intel.com>
References: <cover.1778235406.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Type: text/plain; charset=UTF-8
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
X-Rspamd-Queue-Id: 61BFC4F4F12
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Action: no action

Not all of the overview DOC: comments in the display driver are
incorporated into the documentation. Add the missing ones, including
some function documentation.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 Documentation/gpu/intel-display/atomic.rst   | 11 +++++++++++
 Documentation/gpu/intel-display/casf.rst     |  8 ++++++++
 Documentation/gpu/intel-display/cmtg.rst     |  8 ++++++++
 Documentation/gpu/intel-display/index.rst    |  4 ++++
 Documentation/gpu/intel-display/snps-phy.rst |  8 ++++++++
 5 files changed, 39 insertions(+)
 create mode 100644 Documentation/gpu/intel-display/atomic.rst
 create mode 100644 Documentation/gpu/intel-display/casf.rst
 create mode 100644 Documentation/gpu/intel-display/cmtg.rst
 create mode 100644 Documentation/gpu/intel-display/snps-phy.rst

diff --git a/Documentation/gpu/intel-display/atomic.rst b/Documentation/gpu/intel-display/atomic.rst
new file mode 100644
index 000000000000..43a473181e7a
--- /dev/null
+++ b/Documentation/gpu/intel-display/atomic.rst
@@ -0,0 +1,11 @@
+.. SPDX-License-Identifier: MIT
+.. Copyright © 2026 Intel Corporation
+
+Atomic Modeset Support
+======================
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_atomic.c
+   :doc: atomic modeset support
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_atomic.c
+   :internal:
diff --git a/Documentation/gpu/intel-display/casf.rst b/Documentation/gpu/intel-display/casf.rst
new file mode 100644
index 000000000000..406778ccd94c
--- /dev/null
+++ b/Documentation/gpu/intel-display/casf.rst
@@ -0,0 +1,8 @@
+.. SPDX-License-Identifier: MIT
+.. Copyright © 2026 Intel Corporation
+
+Content Adaptive Sharpness Filter (CASF)
+========================================
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_casf.c
+   :doc: Content Adaptive Sharpness Filter (CASF)
diff --git a/Documentation/gpu/intel-display/cmtg.rst b/Documentation/gpu/intel-display/cmtg.rst
new file mode 100644
index 000000000000..04edd0bd165d
--- /dev/null
+++ b/Documentation/gpu/intel-display/cmtg.rst
@@ -0,0 +1,8 @@
+.. SPDX-License-Identifier: MIT
+.. Copyright © 2026 Intel Corporation
+
+Common Primary Timing Generator (CMTG)
+======================================
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_cmtg.c
+   :doc: Common Primary Timing Generator (CMTG)
diff --git a/Documentation/gpu/intel-display/index.rst b/Documentation/gpu/intel-display/index.rst
index 8d40363b8f90..01c3d1e576b7 100644
--- a/Documentation/gpu/intel-display/index.rst
+++ b/Documentation/gpu/intel-display/index.rst
@@ -24,8 +24,11 @@ driver. The display driver isn't an independent driver in that sense.
    :caption: Detailed display topics
 
    async-flip
+   atomic
    audio
+   casf
    cdclk
+   cmtg
    dmc
    dpio
    dpll
@@ -37,4 +40,5 @@ driver. The display driver isn't an independent driver in that sense.
    hotplug
    plane
    psr
+   snps-phy
    vbt
diff --git a/Documentation/gpu/intel-display/snps-phy.rst b/Documentation/gpu/intel-display/snps-phy.rst
new file mode 100644
index 000000000000..c9e333fa7f62
--- /dev/null
+++ b/Documentation/gpu/intel-display/snps-phy.rst
@@ -0,0 +1,8 @@
+.. SPDX-License-Identifier: MIT
+.. Copyright © 2026 Intel Corporation
+
+Synopsis PHY support
+====================
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_snps_phy.c
+   :doc: Synopsis PHY support
-- 
2.47.3

