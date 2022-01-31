Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B72664A4EF9
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Jan 2022 19:53:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E59D10E40F;
	Mon, 31 Jan 2022 18:52:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk
 [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6823110E39E;
 Mon, 31 Jan 2022 18:52:53 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: bbeckett) with ESMTPSA id E5D8F1F436A1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1643655172;
 bh=7xQvHqE5JkxFe/B6GU5XOuYuw6gmCUNHi1lLN9/W+eo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=aQLudtPrPa1L6NVvXEx5KCn/cqO03iYjdGwdLeunnO61CXeAqzCRO7q7/XQ1ZkWAm
 sW1rhA/7ayjA17mNSM2mCFFwcTJe1knm1rJOq2pThYf3p8zZlMuMjlBlITRzTVvurj
 S6Safp7pX/SIerHnmK6Ip3hEKDfdS/PLzKIC9Mo8Oi5PopHoVQoMvY4wKagrj2Pus9
 ViD/PBf8cTt2lY3V4ZylNRDRRZhr/eS7C7cnRQmOjm+RL04wLOI59WTRKv6n0zqa9O
 +UjPIfLuHaIjDbMQci9LyNHQ8ZXa7tcCwxKU1Kj5qwXprjCtqDSGyILK2lnPcyUfo9
 ju2//nKev2OLg==
From: Robert Beckett <bob.beckett@collabora.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Date: Mon, 31 Jan 2022 18:52:31 +0000
Message-Id: <20220131185231.725346-6-bob.beckett@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220131185231.725346-1-bob.beckett@collabora.com>
References: <20220131185231.725346-1-bob.beckett@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 5/5] drm/i915/uapi: document behaviour for
 DG2 64K support
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Kenneth Graunke <kenneth@whitecape.org>,
 Slawomir Milczarek <slawomir.milczarek@intel.com>,
 Pekka Paalanen <ppaalanen@gmail.com>, Matthew Auld <matthew.auld@intel.com>,
 Simon Ser <contact@emersion.fr>, mesa-dev@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Matthew Auld <matthew.auld@intel.com>

On discrete platforms like DG2, we need to support a minimum page size
of 64K when dealing with device local-memory. This is quite tricky for
various reasons, so try to document the new implicit uapi for this.

v3: fix typos and less emphasis
v2: Fixed suggestions on formatting [Daniel]

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
Signed-off-by: Robert Beckett <bob.beckett@collabora.com>
Acked-by: Jordan Justen <jordan.l.justen@intel.com>
Reviewed-by: Ramalingam C <ramalingam.c@intel.com>
Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
cc: Simon Ser <contact@emersion.fr>
cc: Pekka Paalanen <ppaalanen@gmail.com>
Cc: Jordan Justen <jordan.l.justen@intel.com>
Cc: Kenneth Graunke <kenneth@whitecape.org>
Cc: mesa-dev@lists.freedesktop.org
Cc: Tony Ye <tony.ye@intel.com>
Cc: Slawomir Milczarek <slawomir.milczarek@intel.com>
---
 include/uapi/drm/i915_drm.h | 44 ++++++++++++++++++++++++++++++++-----
 1 file changed, 39 insertions(+), 5 deletions(-)

diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index 5e678917da70..77e5e74c32c1 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -1118,10 +1118,16 @@ struct drm_i915_gem_exec_object2 {
 	/**
 	 * When the EXEC_OBJECT_PINNED flag is specified this is populated by
 	 * the user with the GTT offset at which this object will be pinned.
+	 *
 	 * When the I915_EXEC_NO_RELOC flag is specified this must contain the
 	 * presumed_offset of the object.
+	 *
 	 * During execbuffer2 the kernel populates it with the value of the
 	 * current GTT offset of the object, for future presumed_offset writes.
+	 *
+	 * See struct drm_i915_gem_create_ext for the rules when dealing with
+	 * alignment restrictions with I915_MEMORY_CLASS_DEVICE, on devices with
+	 * minimum page sizes, like DG2.
 	 */
 	__u64 offset;
 
@@ -3145,11 +3151,39 @@ struct drm_i915_gem_create_ext {
 	 *
 	 * The (page-aligned) allocated size for the object will be returned.
 	 *
-	 * Note that for some devices we have might have further minimum
-	 * page-size restrictions(larger than 4K), like for device local-memory.
-	 * However in general the final size here should always reflect any
-	 * rounding up, if for example using the I915_GEM_CREATE_EXT_MEMORY_REGIONS
-	 * extension to place the object in device local-memory.
+	 *
+	 * DG2 64K min page size implications:
+	 *
+	 * On discrete platforms, starting from DG2, we have to contend with GTT
+	 * page size restrictions when dealing with I915_MEMORY_CLASS_DEVICE
+	 * objects.  Specifically the hardware only supports 64K or larger GTT
+	 * page sizes for such memory. The kernel will already ensure that all
+	 * I915_MEMORY_CLASS_DEVICE memory is allocated using 64K or larger page
+	 * sizes underneath.
+	 *
+	 * Note that the returned size here will always reflect any required
+	 * rounding up done by the kernel, i.e 4K will now become 64K on devices
+	 * such as DG2.
+	 *
+	 * Special DG2 GTT address alignment requirement:
+	 *
+	 * The GTT alignment will also need to be at least 2M for such objects.
+	 *
+	 * Note that due to how the hardware implements 64K GTT page support, we
+	 * have some further complications:
+	 *
+	 *   1) The entire PDE (which covers a 2MB virtual address range), must
+	 *   contain only 64K PTEs, i.e mixing 4K and 64K PTEs in the same
+	 *   PDE is forbidden by the hardware.
+	 *
+	 *   2) We still need to support 4K PTEs for I915_MEMORY_CLASS_SYSTEM
+	 *   objects.
+	 *
+	 * To keep things simple for userland, we mandate that any GTT mappings
+	 * must be aligned to and rounded up to 2MB. As this only wastes virtual
+	 * address space and avoids userland having to copy any needlessly
+	 * complicated PDE sharing scheme (coloring) and only affects DG2, this
+	 * is deemed to be a good compromise.
 	 */
 	__u64 size;
 	/**
-- 
2.25.1

