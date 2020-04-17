Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF15E1ADDC1
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 15:01:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07A6F6EBD2;
	Fri, 17 Apr 2020 13:01:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A763F6EBD2
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 13:01:15 +0000 (UTC)
IronPort-SDR: UV51oWx44BfmLt8Qbo30D1eXrl3BQhUkaxwQ/WQ+T7nrLpMZqTUnsT5W39jckF4Wliwp035PSY
 zb7xgKRFVHFw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2020 06:01:14 -0700
IronPort-SDR: FmCb8c3XvF9sPgwITx4v+5gd2TWVz3KdlGsClkks4RlZKgvHbX/rmsHET53PqHh63hqZohaHpH
 etl/NUla58xA==
X-IronPort-AV: E=Sophos;i="5.72,395,1580803200"; d="scan'208";a="428220457"
Received: from mcintra-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.44.191])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2020 06:01:13 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Apr 2020 16:01:09 +0300
Message-Id: <20200417130109.12791-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH] drm/i915: fix Sphinx build duplicate label
 warning
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Fix the warning caused by enabling the autosectionlabel extension in the
kernel Sphinx build:

Documentation/gpu/i915.rst:610: WARNING: duplicate label
gpu/i915:layout, other instance in Documentation/gpu/i915.rst

In the warning message, Sphinx is unable to reference the labels in
their true locations in the kernel-doc comments in source. In this case,
there's "Layout" sections in both gt/intel_workarounds.c and
i915_reg.h. Rename the section in the latter to "File Layout".

Fixes: 58ad30cf91f0 ("docs: fix reference to core-api/namespaces.rst")
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index a24e23e9b3d0..04123a96c979 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -34,8 +34,8 @@
  * Follow the style described here for new macros, and while changing existing
  * macros. Do **not** mass change existing definitions just to update the style.
  *
- * Layout
- * ~~~~~~
+ * File Layout
+ * ~~~~~~~~~~~
  *
  * Keep helper macros near the top. For example, _PIPE() and friends.
  *
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
