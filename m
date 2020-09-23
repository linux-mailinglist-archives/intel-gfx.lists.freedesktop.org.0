Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17EAA275C55
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Sep 2020 17:47:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 499C36E9E1;
	Wed, 23 Sep 2020 15:47:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 042916E9E1;
 Wed, 23 Sep 2020 15:47:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F101CA0003;
 Wed, 23 Sep 2020 15:47:23 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Wed, 23 Sep 2020 15:47:23 -0000
Message-ID: <160087604395.4495.7051380475133038121@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200923105737.2943649-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200923105737.2943649-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_drm/atomic=3A_document_and_enforce_rul?=
 =?utf-8?q?es_around_=22spurious=22_EBUSY_=28rev2=29?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with drm/atomic: document and enforce rules around "spurious" EBUSY (rev2)
URL   : https://patchwork.freedesktop.org/series/82023/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
2ae63b2182d7 drm/atomic: document and enforce rules around "spurious" EBUSY
-:47: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#47: 
References: https://lists.freedesktop.org/archives/dri-devel/2018-July/182281.html

-:74: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#74: FILE: drivers/gpu/drm/drm_atomic.c:1269:
+	unsigned requested_crtc = 0;

-:75: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#75: FILE: drivers/gpu/drm/drm_atomic.c:1270:
+	unsigned affected_crtc = 0;

-:112: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 4 warnings, 0 checks, 51 lines checked
126d6b5ccc51 drm/atomic: debug output for EBUSY
-:52: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#52: FILE: drivers/gpu/drm/drm_atomic_helper.c:1741:
+		DRM_DEBUG_ATOMIC("[PLANE:%d:%s] inflight previous commit preventing async commit\n",
+			plane->base.id, plane->name);

-:63: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#63: FILE: drivers/gpu/drm/drm_atomic_helper.c:1962:
+				DRM_DEBUG_ATOMIC("[CRTC:%d:%s] busy with a previous commit\n",
+					crtc->base.id, crtc->name);

-:75: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#75: FILE: drivers/gpu/drm/drm_atomic_helper.c:2140:
+			DRM_DEBUG_ATOMIC("[CONNECTOR:%d:%s] busy with a previous commit\n",
+				conn->base.id, conn->name);

-:89: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#89: FILE: drivers/gpu/drm/drm_atomic_helper.c:2159:
+			DRM_DEBUG_ATOMIC("[PLANE:%d:%s] busy with a previous commit\n",
+				plane->base.id, plane->name);

-:95: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 4 checks, 63 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
