Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 317264E7A3E
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Mar 2022 19:37:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E28C10E149;
	Fri, 25 Mar 2022 18:37:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60CB510E149
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Mar 2022 18:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648233442; x=1679769442;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Sw6BJaZb5NBjSGHCuAVrngXxZtXfDwG866ogFQz1exg=;
 b=ZTKfiEurUHuCZ0FkNtXD/ilHC2KhmJ7aa4RmF53Cjw5H2o1LepYyG64u
 50kUQwDkegQpRkxV/BrH5Y4FvKWhL1WGXnVjY201POFAnDzPmAUSpUKWq
 fzxoBniVV+uNXeTQLV3fvGLo1vtg0WXFc/+6HNFtC8Q6DJj/IseFwiBoK
 xqR/Bhs/vAFP+XPOpp2HmF0CVdwDtxahwdVTnVOMauBSN9s944djYEFam
 u1mRncLa5SOlMs8HplLcsRn1YMwa7rfH4lrlPqhMjuAaFMlAPGyWuIky8
 Aoi5fZulyxHEvBZWDapfLfJAkzRBc54AGihsgm9583gQzPYRz/lLJR9uM Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10297"; a="258410729"
X-IronPort-AV: E=Sophos;i="5.90,211,1643702400"; d="scan'208";a="258410729"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 11:37:21 -0700
X-IronPort-AV: E=Sophos;i="5.90,211,1643702400"; d="scan'208";a="545183983"
Received: from mymcglot-mobl.amr.corp.intel.com (HELO
 josouza-mobl2.amr.corp.intel.com) ([10.213.175.5])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 11:37:20 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Mar 2022 11:38:32 -0700
Message-Id: <20220325183832.146472-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] docs: gpu: i915.rst: Fix DRRS documentation
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

intel_drrs_enable() and intel_drrs_disable() were renamed to
intel_drrs_activate() and intel_drrs_deactivate() in commit
54903c7a6b40 ("drm/i915: s/enable/active/ for DRRS") and it is
causing warnings when generating the kernel documentation.

But as for a while DRRS has its own file, so here just let the tool
generate the documentation for all exported and documented functions
in intel_drrs.c.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 Documentation/gpu/i915.rst | 14 +-------------
 1 file changed, 1 insertion(+), 13 deletions(-)

diff --git a/Documentation/gpu/i915.rst b/Documentation/gpu/i915.rst
index bcaefc952764e..0f08693d05cdf 100644
--- a/Documentation/gpu/i915.rst
+++ b/Documentation/gpu/i915.rst
@@ -187,19 +187,7 @@ Display Refresh Rate Switching (DRRS)
    :doc: Display Refresh Rate Switching (DRRS)
 
 .. kernel-doc:: drivers/gpu/drm/i915/display/intel_drrs.c
-   :functions: intel_drrs_enable
-
-.. kernel-doc:: drivers/gpu/drm/i915/display/intel_drrs.c
-   :functions: intel_drrs_disable
-
-.. kernel-doc:: drivers/gpu/drm/i915/display/intel_drrs.c
-   :functions: intel_drrs_invalidate
-
-.. kernel-doc:: drivers/gpu/drm/i915/display/intel_drrs.c
-   :functions: intel_drrs_flush
-
-.. kernel-doc:: drivers/gpu/drm/i915/display/intel_drrs.c
-   :functions: intel_drrs_init
+   :internal:
 
 DPIO
 ----
-- 
2.35.1

