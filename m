Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aD2oNJ1D62nZKAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 12:19:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84F1A45CD55
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 12:19:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54C9010F4CC;
	Fri, 24 Apr 2026 10:19:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="aUXsoeSX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA5B710F4CB;
 Fri, 24 Apr 2026 10:19:04 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 3C7EC43AA0;
 Fri, 24 Apr 2026 10:19:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 90A56C19425;
 Fri, 24 Apr 2026 10:19:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1777025944;
 bh=cINX/D5QpQR2W4U6rueBfqwioXlzpvH8HbHly8FuKYM=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=aUXsoeSXpv8hlDL/1PaaUSueigcD2BEDlCUc0/Sd9XgisLUYeJ6kXfstGCrDgSX5D
 4uhuRX+jmXrlLhq/hk9+65PXyc6/4OXOA+UkQD1CDnqtl0P0hO7QIjxNU21oz9kA14
 CCh/CqPAhGcURZT2HFoBZ0JEUn1AiixJxWSq+0wNraxozo8zlQyREFGgz29QVoZy4A
 1A8Z+7VoH6Usbida8JPBaeot8jstA5QMHybYVDT9AmRNWpDSWx/xZg9Yz/V/+efgkC
 jG2MQKtm8FXrmP7kOYjHapE43XdNmSmu6hueo9dFQkkSuV+piu/qOmd1QGADEtrbDs
 7uaIZAGOabNPQ==
From: Maxime Ripard <mripard@kernel.org>
Date: Fri, 24 Apr 2026 12:18:41 +0200
Subject: [PATCH v3 01/20] drm/atomic: Document atomic state lifetime
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260424-drm-mode-config-init-v3-1-8b68d9db0d8b@kernel.org>
References: <20260424-drm-mode-config-init-v3-0-8b68d9db0d8b@kernel.org>
In-Reply-To: <20260424-drm-mode-config-init-v3-0-8b68d9db0d8b@kernel.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, 
 Shuah Khan <skhan@linuxfoundation.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Jyri Sarha <jyri.sarha@iki.fi>, 
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Simon Ser <contact@emersion.fr>, Harry Wentland <harry.wentland@amd.com>, 
 Melissa Wen <mwen@igalia.com>, Sebastian Wick <sebastian.wick@redhat.com>, 
 Alex Hung <alex.hung@amd.com>, Jani Nikula <jani.nikula@linux.intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, Chen-Yu Tsai <wens@kernel.org>, 
 Samuel Holland <samuel@sholland.org>, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>, 
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>, 
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>
Cc: dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Daniel Stone <daniels@collabora.com>, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 Maxime Ripard <mripard@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=4304; i=mripard@kernel.org;
 h=from:subject:message-id; bh=cINX/D5QpQR2W4U6rueBfqwioXlzpvH8HbHly8FuKYM=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDJmvnTsDJmbUzD8gfvZZW8oL5vdPeXPvT5GUSLE79PyRp
 V/69IIDHVNZGIQ5GWTFFFmeyISdXt6+uMrBfuUPmDmsTCBDGLg4BWAilnqMDf9v1b+foea16+CH
 OsVFeWl2DaZn35dq8hzfHLqyZW7PRYlyu5snG3LOG1XVrWdrFzbay9iwZSlT/ImOE82Kb389fn9
 64tcTHZrzOpI2B+UoC6aau1izvDJ3OLv9lY1Tf/fkjjMFffMA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
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
X-Rspamd-Queue-Id: 84F1A45CD55
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[linux.intel.com,suse.de,gmail.com,ffwll.ch,lwn.net,linuxfoundation.org,oss.qualcomm.com,iki.fi,ideasonboard.com,intel.com,linaro.org,kernel.org,kwiboo.se,emersion.fr,amd.com,igalia.com,redhat.com,ursulin.net,sholland.org,raspberrypi.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[38];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[mripard@kernel.org,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]

How drm_atomic_state structures and the various entity structures are
allocated and freed isn't really trivial. Document it.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 Documentation/gpu/drm-kms.rst |  6 +++++
 drivers/gpu/drm/drm_atomic.c  | 55 +++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 61 insertions(+)

diff --git a/Documentation/gpu/drm-kms.rst b/Documentation/gpu/drm-kms.rst
index 2292e65f044c..017c7b196ed7 100644
--- a/Documentation/gpu/drm-kms.rst
+++ b/Documentation/gpu/drm-kms.rst
@@ -280,10 +280,16 @@ structure, ordering of committing state changes to hardware is sequenced using
 :c:type:`struct drm_crtc_commit <drm_crtc_commit>`.
 
 Read on in this chapter, and also in :ref:`drm_atomic_helper` for more detailed
 coverage of specific topics.
 
+Atomic State Lifetime
+---------------------
+
+.. kernel-doc:: drivers/gpu/drm/drm_atomic.c
+   :doc: state lifetime
+
 Handling Driver Private State
 -----------------------------
 
 .. kernel-doc:: drivers/gpu/drm/drm_atomic.c
    :doc: handling driver private state
diff --git a/drivers/gpu/drm/drm_atomic.c b/drivers/gpu/drm/drm_atomic.c
index 41c57063f3b4..253a00f450b0 100644
--- a/drivers/gpu/drm/drm_atomic.c
+++ b/drivers/gpu/drm/drm_atomic.c
@@ -45,10 +45,65 @@
 #include <drm/drm_colorop.h>
 
 #include "drm_crtc_internal.h"
 #include "drm_internal.h"
 
+/**
+ * DOC: state lifetime
+ *
+ * &struct drm_atomic_state represents an update to video pipeline
+ * state. Despite its confusing name, it's actually a transient object
+ * that holds a state update as a collection of pointers to individual
+ * objects' states. &struct drm_atomic_state has a much shorter lifetime
+ * than the objects' states, since it's only allocated while preparing,
+ * checking or committing the update, while object states are allocated
+ * when preparing the update and kept alive as long as they are active
+ * in the device.
+ *
+ * Their respective lifetimes are:
+ *
+ * - at reset time, the object reset implementation will allocate a new
+ *   default state and will store it in the object state pointer.
+ *
+ * - whenever a new update is needed:
+ *
+ *   + A new &struct drm_atomic_state is allocated using
+ *     drm_atomic_state_alloc().
+ *
+ *   + The current active state of affected entity is copied into this
+ *     new &struct drm_atomic_state using drm_atomic_get_plane_state(),
+ *     drm_atomic_get_crtc_state(), drm_atomic_get_connector_state(), or
+ *     drm_atomic_get_private_obj_state(). This new state can then be
+ *     modified.
+ *
+ *     At that point, &struct drm_atomic_state stores three state
+ *     pointers for any affected entity: the "old" and "new" states, and
+ *     state_to_destroy. The old state is the state currently active in
+ *     the hardware, which is either the one initialized by reset() or a
+ *     newer one if a commit has been made. The new state is the state
+ *     we just allocated and we might eventually commit to the hardware.
+ *     The state_to_destroy points to the state we'll eventually have to
+ *     free when the drm_atomic_state will be destroyed, and points to
+ *     the new state for now since the old state is still the active
+ *     state.
+ *
+ *   + After the state is populated, it is checked. If the check is
+ *     successful, the update is committed. Part of the commit is a call
+ *     to drm_atomic_helper_swap_state() which will turn the new states
+ *     into the active states. Doing so involves updating the object's
+ *     state pointer (&drm_crtc.state or similar) to point to the new
+ *     state, and state_to_destroy will now point to the old states,
+ *     that used to be active but aren't anymore.
+ *
+ *   + When the commit is done, and when all references to our &struct
+ *     drm_atomic_state are put, drm_atomic_state_clear() runs and will
+ *     free all state_to_destroy (ie. old states).
+ *
+ *   + Now, we don't have any active &struct drm_atomic_state anymore,
+ *     and only the entity active states remain allocated.
+ */
+
 void __drm_crtc_commit_free(struct kref *kref)
 {
 	struct drm_crtc_commit *commit =
 		container_of(kref, struct drm_crtc_commit, ref);
 

-- 
2.53.0

