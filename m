Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 665643C9E39
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jul 2021 14:08:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A82B6E82E;
	Thu, 15 Jul 2021 12:08:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EA836E82E
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jul 2021 12:08:47 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 15 Jul 2021 14:08:42 +0200
Message-Id: <20210715120842.806605-1-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.31.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915: Add missing docbook chapters for
 i915 uapi.
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

I noticed when grepping for DOC: that those were defined
in the header, but not actually used. Fix it by removing
all chapters and the internal annotation, so the docbook
generated chapters are used.

Changes since v1:
- Just remove the chapters, no need for those.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20210709113842.651140-1-maarten.lankhorst@linux.intel.com
---
 Documentation/gpu/driver-uapi.rst | 21 ---------------------
 1 file changed, 21 deletions(-)

diff --git a/Documentation/gpu/driver-uapi.rst b/Documentation/gpu/driver-uapi.rst
index 27d0fbe33e87..4411e6919a3d 100644
--- a/Documentation/gpu/driver-uapi.rst
+++ b/Documentation/gpu/driver-uapi.rst
@@ -5,25 +5,4 @@ DRM Driver uAPI
 drm/i915 uAPI
 =============
 
-Engine Discovery uAPI
----------------------
-
-.. kernel-doc:: include/uapi/drm/i915_drm.h
-   :doc: Engine Discovery uAPI
-
-Context Engine Map uAPI
------------------------
-
-.. kernel-doc:: include/uapi/drm/i915_drm.h
-   :doc: Context Engine Map uAPI
-
-Virtual Engine uAPI
--------------------
-
-.. kernel-doc:: include/uapi/drm/i915_drm.h
-   :doc: Virtual Engine uAPI
-
-i915_drm.h
-----------
 .. kernel-doc:: include/uapi/drm/i915_drm.h
-   :internal:
-- 
2.31.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
