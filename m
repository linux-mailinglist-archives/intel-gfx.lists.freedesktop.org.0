Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E4BE361E0B
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Apr 2021 12:38:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D754E6EB6D;
	Fri, 16 Apr 2021 10:37:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFB096EB6A;
 Fri, 16 Apr 2021 10:37:49 +0000 (UTC)
IronPort-SDR: ql17xg0sFfpzlBHwV2/1cwsG/0EIgn1rX328/AXuu9QZdmf4DycWIdE8I1LXktzrJ1elWFRbLJ
 r7Czd7oNqKqA==
X-IronPort-AV: E=McAfee;i="6200,9189,9955"; a="256336417"
X-IronPort-AV: E=Sophos;i="5.82,226,1613462400"; d="scan'208";a="256336417"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2021 03:37:49 -0700
IronPort-SDR: C0/fj5AoZvqg0dx70v/Ijg02YD3Kd+3wYnHJV72eb2ltL6OsiI0dNGAdfvEVCGo5FtxLJjedHe
 zgEHh3R7RdzQ==
X-IronPort-AV: E=Sophos;i="5.82,226,1613462400"; d="scan'208";a="451434332"
Received: from pmwillia-mobl2.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.7.203])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2021 03:37:47 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Apr 2021 11:37:16 +0100
Message-Id: <20210416103718.460830-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210416103718.460830-1-matthew.auld@intel.com>
References: <20210416103718.460830-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/4] drm/doc: add section for driver uAPI
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
Cc: dri-devel@lists.freedesktop.org, Kenneth Graunke <kenneth@whitecape.org>,
 mesa-dev@lists.freedesktop.org, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add section for drm/i915 uAPI and pull in i915_drm.h.

Suggested-by: Daniel Vetter <daniel@ffwll.ch>
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Jordan Justen <jordan.l.justen@intel.com>
Cc: Daniel Vetter <daniel.vetter@intel.com>
Cc: Kenneth Graunke <kenneth@whitecape.org>
Cc: Jason Ekstrand <jason@jlekstrand.net>
Cc: Dave Airlie <airlied@gmail.com>
Cc: dri-devel@lists.freedesktop.org
Cc: mesa-dev@lists.freedesktop.org
---
 Documentation/gpu/driver-uapi.rst | 8 ++++++++
 Documentation/gpu/index.rst       | 1 +
 2 files changed, 9 insertions(+)
 create mode 100644 Documentation/gpu/driver-uapi.rst

diff --git a/Documentation/gpu/driver-uapi.rst b/Documentation/gpu/driver-uapi.rst
new file mode 100644
index 000000000000..4411e6919a3d
--- /dev/null
+++ b/Documentation/gpu/driver-uapi.rst
@@ -0,0 +1,8 @@
+===============
+DRM Driver uAPI
+===============
+
+drm/i915 uAPI
+=============
+
+.. kernel-doc:: include/uapi/drm/i915_drm.h
diff --git a/Documentation/gpu/index.rst b/Documentation/gpu/index.rst
index ec4bc72438e4..b9c1214d8f23 100644
--- a/Documentation/gpu/index.rst
+++ b/Documentation/gpu/index.rst
@@ -10,6 +10,7 @@ Linux GPU Driver Developer's Guide
    drm-kms
    drm-kms-helpers
    drm-uapi
+   driver-uapi
    drm-client
    drivers
    backlight
-- 
2.26.3

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
