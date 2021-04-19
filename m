Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EAFB364001
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Apr 2021 12:59:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8756E6E214;
	Mon, 19 Apr 2021 10:58:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF9266E22F;
 Mon, 19 Apr 2021 10:58:55 +0000 (UTC)
IronPort-SDR: TQsb8uOsWlndO7ITNKOU9E2VOtiHNvoaLk99EzXx5ezyS+iZwPlV2T9Qc2ISWr98ZIxVZgMYjU
 50ZhmPZXz9kQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9958"; a="259264065"
X-IronPort-AV: E=Sophos;i="5.82,233,1613462400"; d="scan'208";a="259264065"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2021 03:58:55 -0700
IronPort-SDR: Mtpgb/LQCaGBJW1muEvvoW3rlZROKviIZ3fhGBXa6ezhlL0zTUxRUGy6NWtuL3cuo/e1zAcqy7
 8PAka8dN/j6g==
X-IronPort-AV: E=Sophos;i="5.82,233,1613462400"; d="scan'208";a="383700192"
Received: from vpjampan-mobl2.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.9.192])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2021 03:58:53 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 19 Apr 2021 11:57:39 +0100
Message-Id: <20210419105741.27844-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210419105741.27844-1-matthew.auld@intel.com>
References: <20210419105741.27844-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/4] drm/doc: add section for driver uAPI
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
Cc: dri-devel@lists.freedesktop.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Kenneth Graunke <kenneth@whitecape.org>, mesa-dev@lists.freedesktop.org,
 Daniel Vetter <daniel.vetter@intel.com>
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
Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
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
