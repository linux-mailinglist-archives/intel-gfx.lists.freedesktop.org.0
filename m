Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5879511A31C
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 04:39:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BADE46EA7E;
	Wed, 11 Dec 2019 03:39:40 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
X-Greylist: delayed 425 seconds by postgrey-1.36 at gabe;
 Wed, 11 Dec 2019 03:39:38 UTC
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFA8C6EA7D
 for <Intel-GFX@lists.freedesktop.org>; Wed, 11 Dec 2019 03:39:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Dec 2019 19:32:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,301,1571727600"; d="scan'208";a="238391589"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by fmsmga004.fm.intel.com with ESMTP; 10 Dec 2019 19:32:32 -0800
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Tue, 10 Dec 2019 19:32:32 -0800
Message-Id: <20191211033232.18087-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a983
In-Reply-To: <20191121002723.33133-1-John.C.Harrison@Intel.com>
References: <20191121002723.33133-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3] drm/i915/uc: More useful FW version
 mis-match notice
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

If a FW override is present then a version mis-match is actually
ignored. The warning notice was still being printed, though. Which
could confuse people by implying that the load had failed when it had
actually succeeded. So add an extra tag to the notice to say whether
the mis-match caused a failure to load (normal case) or was ignored
(override case).

So, only print the notice when actually failing the load and avoid any
potential confusion.

v2: Original patch added a new 'ignore the previous notice' notice.
Now it just suppresses the existing notice. Review feedback from
Michal W.
v3: Always print the notice, but add a tag about override or failure.
Review feedback from Michal W.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
CC: Michal Wajdeczko <michal.wajdeczko@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index 66a30ab7044a..deae1e89de0e 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -353,10 +353,12 @@ int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw, struct drm_i915_private *i915)
 
 	if (uc_fw->major_ver_found != uc_fw->major_ver_wanted ||
 	    uc_fw->minor_ver_found < uc_fw->minor_ver_wanted) {
-		dev_notice(dev, "%s firmware %s: unexpected version: %u.%u != %u.%u\n",
+		dev_notice(dev, "%s firmware %s: unexpected version: %u.%u != %u.%u, %s\n",
 			   intel_uc_fw_type_repr(uc_fw->type), uc_fw->path,
 			   uc_fw->major_ver_found, uc_fw->minor_ver_found,
-			   uc_fw->major_ver_wanted, uc_fw->minor_ver_wanted);
+			   uc_fw->major_ver_wanted, uc_fw->minor_ver_wanted,
+			   intel_uc_fw_is_overridden(uc_fw) ?
+			   "ignoring" : "aborting");
 		if (!intel_uc_fw_is_overridden(uc_fw)) {
 			err = -ENOEXEC;
 			goto fail;
-- 
2.21.0.5.gaeb582a983

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
