Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F0F3278564
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Sep 2020 12:50:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1391C6E098;
	Fri, 25 Sep 2020 10:50:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5651A6E098;
 Fri, 25 Sep 2020 10:50:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4F9EAA0009;
 Fri, 25 Sep 2020 10:50:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Fri, 25 Sep 2020 10:50:40 -0000
Message-ID: <160103104030.10247.465928066276481273@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200925084651.3250104-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200925084651.3250104-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/atomic=3A_document_and_e?=
 =?utf-8?q?nforce_rules_around_=22spurious=22_EBUSY?=
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

Series: series starting with [1/2] drm/atomic: document and enforce rules around "spurious" EBUSY
URL   : https://patchwork.freedesktop.org/series/82086/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
6e02c964a485 drm/atomic: document and enforce rules around "spurious" EBUSY
-:49: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#49: 
References: https://lists.freedesktop.org/archives/dri-devel/2018-July/182281.html

-:76: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#76: FILE: drivers/gpu/drm/drm_atomic.c:1269:
+	unsigned requested_crtc = 0;

-:77: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#77: FILE: drivers/gpu/drm/drm_atomic.c:1270:
+	unsigned affected_crtc = 0;

-:114: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 4 warnings, 0 checks, 51 lines checked
caec65c608ae drm/atomic: debug output for EBUSY
-:33: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#33: FILE: drivers/gpu/drm/drm_atomic_helper.c:1741:
+		DRM_DEBUG_ATOMIC("[PLANE:%d:%s] inflight previous commit preventing async commit\n",
+			plane->base.id, plane->name);

-:44: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#44: FILE: drivers/gpu/drm/drm_atomic_helper.c:1962:
+				DRM_DEBUG_ATOMIC("[CRTC:%d:%s] busy with a previous commit\n",
+					crtc->base.id, crtc->name);

-:56: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#56: FILE: drivers/gpu/drm/drm_atomic_helper.c:2140:
+			DRM_DEBUG_ATOMIC("[CONNECTOR:%d:%s] busy with a previous commit\n",
+				conn->base.id, conn->name);

-:70: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#70: FILE: drivers/gpu/drm/drm_atomic_helper.c:2159:
+			DRM_DEBUG_ATOMIC("[PLANE:%d:%s] busy with a previous commit\n",
+				plane->base.id, plane->name);

-:76: WARNING:NO_AUTHOR_SIGN_OFF: Missing Signed-off-by: line by nominal patch author 'Daniel Vetter <daniel.vetter@ffwll.ch>'

total: 0 errors, 1 warnings, 4 checks, 47 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
