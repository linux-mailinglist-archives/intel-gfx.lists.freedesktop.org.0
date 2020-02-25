Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA40E16BFF4
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2020 12:50:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB6996EAA4;
	Tue, 25 Feb 2020 11:50:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D74926EAA4
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Feb 2020 11:50:31 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id v4so1501254wrs.8
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Feb 2020 03:50:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PdTyKBaTg8Qo4ILE+rwR1Bwd8DQYGX//WMu/YUlCs0I=;
 b=OfMcq4QDoay9vzi4dyREOeBWd6QLCX66XG1G0uxkLuLjNFp5w2ZtK8lTMmdE+t4XQI
 5gUC+n2Xk3V0m8K+OV35IaOODDOm5xLiu4FYy/6tT1Jz/T20ug1h2ZsR2J4OJG8JgFBn
 vzItZhUyCeUXYZpbkHX18Ft+7BdC1ZFPiA668=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PdTyKBaTg8Qo4ILE+rwR1Bwd8DQYGX//WMu/YUlCs0I=;
 b=um63vur3JCTv3pLfGgIoKS9IlbnL5hF4hYMU3v64RNEywUimI69iCor0cNWhqK+Gdr
 V5lODnq1l3wcjbPWGGv9hE6CCXFL0aOwXXCpL2xGN82faRW12k0EVjTKkSMRVWBmG5I9
 kfJOIrzlQG9E1+BC50Ay7LuDZhFzYxJh6A/fUfxsiLliPtWRdSrpskTZV1CEkr1xkaFp
 t/rHjySCLhNC4rwad/rzTEzpSi+EJ/8WG6a1y47BvjTLXaPVb/557tubB/YhNSyznL8Y
 V6txIbtpnxVaL5szYL4xCF3mOB84lclxT4wD2jE+ruq6UD99O31ZcH+oc9sZqpg+CkhD
 AWMA==
X-Gm-Message-State: APjAAAVj71nneVEK7ptFyuhGJNY7Th5Op1gCXZjvpByQU3D3bm6q3o1d
 Xx3M4hActUGZgi9V3fHZRoyIpw==
X-Google-Smtp-Source: APXvYqxXmRcPlYalesaPbDBTyZlFmRdgPXFsGhjv1DdX1GWp4d7EOFwNeqbJZ15b4V7LTbW5RLLohA==
X-Received: by 2002:adf:f607:: with SMTP id t7mr3807177wrp.36.1582631430430;
 Tue, 25 Feb 2020 03:50:30 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id k7sm3674674wmi.19.2020.02.25.03.50.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Feb 2020 03:50:29 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue, 25 Feb 2020 12:50:24 +0100
Message-Id: <20200225115024.2386811-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm: avoid spurious EBUSY due to nonblocking
 atomic modesets
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
Cc: Daniel Stone <daniels@collabora.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 stable@vger.kernel.org, Daniel Vetter <daniel.vetter@intel.com>,
 Pekka Paalanen <pekka.paalanen@collabora.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

When doing an atomic modeset with ALLOW_MODESET drivers are allowed to
pull in arbitrary other resources, including CRTCs (e.g. when
reconfiguring global resources).

But in nonblocking mode userspace has then no idea this happened,
which can lead to spurious EBUSY calls, both:
- when that other CRTC is currently busy doing a page_flip the
  ALLOW_MODESET commit can fail with an EBUSY
- on the other CRTC a normal atomic flip can fail with EBUSY because
  of the additional commit inserted by the kernel without userspace's
  knowledge

For blocking commits this isn't a problem, because everyone else will
just block until all the CRTC are reconfigured. Only thing userspace
can notice is the dropped frames without any reason for why frames got
dropped.

Consensus is that we need new uapi to handle this properly, but no one
has any idea what exactly the new uapi should look like. As a stop-gap
plug this problem by demoting nonblocking commits which might cause
issues by including CRTCs not in the original request to blocking
commits.

v2: Add comments and a WARN_ON to enforce this only when allowed - we
don't want to silently convert page flips into blocking plane updates
just because the driver is buggy.

v3: Fix inverted WARN_ON (Pekka).

References: https://lists.freedesktop.org/archives/dri-devel/2018-July/182281.html
Bugzilla: https://gitlab.freedesktop.org/wayland/weston/issues/24#note_9568
Cc: Daniel Stone <daniel@fooishbar.org>
Cc: Pekka Paalanen <pekka.paalanen@collabora.co.uk>
Cc: stable@vger.kernel.org
Reviewed-by: Daniel Stone <daniels@collabora.com>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 drivers/gpu/drm/drm_atomic.c | 34 +++++++++++++++++++++++++++++++---
 1 file changed, 31 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/drm_atomic.c b/drivers/gpu/drm/drm_atomic.c
index 9ccfbf213d72..4c035abf98b8 100644
--- a/drivers/gpu/drm/drm_atomic.c
+++ b/drivers/gpu/drm/drm_atomic.c
@@ -1362,15 +1362,43 @@ EXPORT_SYMBOL(drm_atomic_commit);
 int drm_atomic_nonblocking_commit(struct drm_atomic_state *state)
 {
 	struct drm_mode_config *config = &state->dev->mode_config;
-	int ret;
+	unsigned requested_crtc = 0;
+	unsigned affected_crtc = 0;
+	struct drm_crtc *crtc;
+	struct drm_crtc_state *crtc_state;
+	bool nonblocking = true;
+	int ret, i;
+
+	/*
+	 * For commits that allow modesets drivers can add other CRTCs to the
+	 * atomic commit, e.g. when they need to reallocate global resources.
+	 *
+	 * But when userspace also requests a nonblocking commit then userspace
+	 * cannot know that the commit affects other CRTCs, which can result in
+	 * spurious EBUSY failures. Until we have better uapi plug this by
+	 * demoting such commits to blocking mode.
+	 */
+	for_each_new_crtc_in_state(state, crtc, crtc_state, i)
+		requested_crtc |= drm_crtc_mask(crtc);
 
 	ret = drm_atomic_check_only(state);
 	if (ret)
 		return ret;
 
-	DRM_DEBUG_ATOMIC("committing %p nonblocking\n", state);
+	for_each_new_crtc_in_state(state, crtc, crtc_state, i)
+		affected_crtc |= drm_crtc_mask(crtc);
+
+	if (affected_crtc != requested_crtc) {
+		/* adding other CRTC is only allowed for modeset commits */
+		WARN_ON(!state->allow_modeset);
+
+		DRM_DEBUG_ATOMIC("demoting %p to blocking mode to avoid EBUSY\n", state);
+		nonblocking = false;
+	} else {
+		DRM_DEBUG_ATOMIC("committing %p nonblocking\n", state);
+	}
 
-	return config->funcs->atomic_commit(state->dev, state, true);
+	return config->funcs->atomic_commit(state->dev, state, nonblocking);
 }
 EXPORT_SYMBOL(drm_atomic_nonblocking_commit);
 
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
