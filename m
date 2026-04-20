Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kNNjJNzk5WkupAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 10:33:32 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4413A4282DC
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 10:33:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9145510E451;
	Mon, 20 Apr 2026 08:33:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=lankhorst.se header.i=@lankhorst.se header.b="Z1p+ciyn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C27F10E112;
 Mon, 20 Apr 2026 08:33:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1776674007;
 bh=gmvkaYyC+MMsCC22MHUEX/8sKRQEwhd1V9emFHijYQk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Z1p+ciynn96UA+tyDeYA2LWuP7BTk/fBowqJGVOO4QxEwq9NvmHoyYYkMFpq3r+I2
 suhoOyVwj3m0X/M37APCKuN1DcRg5hP+0KD7T1gF9w02p70qVKPacN8xuTi4tRoAEk
 TlJg/BEi6AJlGpFrYsiTjXRh5kwdGzmvQX3y1QEPQq4MVSwJ9MgFyw0pB0xs0HJYCR
 8L79ICR2FEJ9h/JVqvBOrkf41UahgiAyqLd8M466upMEX9w+MaG4JU/weXEq4P1t3k
 gMdpA2FbSnRHEcbtiftlghy2+DT7WXKfsBVh7iA7QRUj1lYSlPOmYJ2tkRK+ph9hMO
 ojJ9d9JghxyAw==
From: Maarten Lankhorst <dev@lankhorst.se>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH 3/4] drm/doc/rfc: Remove i915_small_bar rfc.
Date: Mon, 20 Apr 2026 10:33:21 +0200
Message-ID: <20260420083318.92038-9-dev@lankhorst.se>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260420083318.92038-6-dev@lankhorst.se>
References: <20260420083318.92038-6-dev@lankhorst.se>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[lankhorst.se,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[lankhorst.se:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[lankhorst.se:+];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dev@lankhorst.se,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_COUNT_TWO(0.00)[2];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lankhorst.se:email,lankhorst.se:dkim,lankhorst.se:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 4413A4282DC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Probably done, with commit 525e93f6317a ("drm/i915/uapi: add NEEDS_CPU_ACCESS hint")
and 3f4309cbdc84 ("drm/i915/uapi: add probed_cpu_visible_size")

Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
 Documentation/gpu/rfc/i915_small_bar.h   | 189 -----------------------
 Documentation/gpu/rfc/i915_small_bar.rst |  47 ------
 Documentation/gpu/rfc/index.rst          |   4 -
 3 files changed, 240 deletions(-)
 delete mode 100644 Documentation/gpu/rfc/i915_small_bar.h
 delete mode 100644 Documentation/gpu/rfc/i915_small_bar.rst

diff --git a/Documentation/gpu/rfc/i915_small_bar.h b/Documentation/gpu/rfc/i915_small_bar.h
deleted file mode 100644
index 6003c81d5aa40..0000000000000
--- a/Documentation/gpu/rfc/i915_small_bar.h
+++ /dev/null
@@ -1,189 +0,0 @@
-/**
- * struct __drm_i915_memory_region_info - Describes one region as known to the
- * driver.
- *
- * Note this is using both struct drm_i915_query_item and struct drm_i915_query.
- * For this new query we are adding the new query id DRM_I915_QUERY_MEMORY_REGIONS
- * at &drm_i915_query_item.query_id.
- */
-struct __drm_i915_memory_region_info {
-	/** @region: The class:instance pair encoding */
-	struct drm_i915_gem_memory_class_instance region;
-
-	/** @rsvd0: MBZ */
-	__u32 rsvd0;
-
-	/**
-	 * @probed_size: Memory probed by the driver
-	 *
-	 * Note that it should not be possible to ever encounter a zero value
-	 * here, also note that no current region type will ever return -1 here.
-	 * Although for future region types, this might be a possibility. The
-	 * same applies to the other size fields.
-	 */
-	__u64 probed_size;
-
-	/**
-	 * @unallocated_size: Estimate of memory remaining
-	 *
-	 * Requires CAP_PERFMON or CAP_SYS_ADMIN to get reliable accounting.
-	 * Without this (or if this is an older kernel) the value here will
-	 * always equal the @probed_size. Note this is only currently tracked
-	 * for I915_MEMORY_CLASS_DEVICE regions (for other types the value here
-	 * will always equal the @probed_size).
-	 */
-	__u64 unallocated_size;
-
-	union {
-		/** @rsvd1: MBZ */
-		__u64 rsvd1[8];
-		struct {
-			/**
-			 * @probed_cpu_visible_size: Memory probed by the driver
-			 * that is CPU accessible.
-			 *
-			 * This will be always be <= @probed_size, and the
-			 * remainder (if there is any) will not be CPU
-			 * accessible.
-			 *
-			 * On systems without small BAR, the @probed_size will
-			 * always equal the @probed_cpu_visible_size, since all
-			 * of it will be CPU accessible.
-			 *
-			 * Note this is only tracked for
-			 * I915_MEMORY_CLASS_DEVICE regions (for other types the
-			 * value here will always equal the @probed_size).
-			 *
-			 * Note that if the value returned here is zero, then
-			 * this must be an old kernel which lacks the relevant
-			 * small-bar uAPI support (including
-			 * I915_GEM_CREATE_EXT_FLAG_NEEDS_CPU_ACCESS), but on
-			 * such systems we should never actually end up with a
-			 * small BAR configuration, assuming we are able to load
-			 * the kernel module. Hence it should be safe to treat
-			 * this the same as when @probed_cpu_visible_size ==
-			 * @probed_size.
-			 */
-			__u64 probed_cpu_visible_size;
-
-			/**
-			 * @unallocated_cpu_visible_size: Estimate of CPU
-			 * visible memory remaining
-			 *
-			 * Note this is only tracked for
-			 * I915_MEMORY_CLASS_DEVICE regions (for other types the
-			 * value here will always equal the
-			 * @probed_cpu_visible_size).
-			 *
-			 * Requires CAP_PERFMON or CAP_SYS_ADMIN to get reliable
-			 * accounting.  Without this the value here will always
-			 * equal the @probed_cpu_visible_size. Note this is only
-			 * currently tracked for I915_MEMORY_CLASS_DEVICE
-			 * regions (for other types the value here will also
-			 * always equal the @probed_cpu_visible_size).
-			 *
-			 * If this is an older kernel the value here will be
-			 * zero, see also @probed_cpu_visible_size.
-			 */
-			__u64 unallocated_cpu_visible_size;
-		};
-	};
-};
-
-/**
- * struct __drm_i915_gem_create_ext - Existing gem_create behaviour, with added
- * extension support using struct i915_user_extension.
- *
- * Note that new buffer flags should be added here, at least for the stuff that
- * is immutable. Previously we would have two ioctls, one to create the object
- * with gem_create, and another to apply various parameters, however this
- * creates some ambiguity for the params which are considered immutable. Also in
- * general we're phasing out the various SET/GET ioctls.
- */
-struct __drm_i915_gem_create_ext {
-	/**
-	 * @size: Requested size for the object.
-	 *
-	 * The (page-aligned) allocated size for the object will be returned.
-	 *
-	 * Note that for some devices we have might have further minimum
-	 * page-size restrictions (larger than 4K), like for device local-memory.
-	 * However in general the final size here should always reflect any
-	 * rounding up, if for example using the I915_GEM_CREATE_EXT_MEMORY_REGIONS
-	 * extension to place the object in device local-memory. The kernel will
-	 * always select the largest minimum page-size for the set of possible
-	 * placements as the value to use when rounding up the @size.
-	 */
-	__u64 size;
-
-	/**
-	 * @handle: Returned handle for the object.
-	 *
-	 * Object handles are nonzero.
-	 */
-	__u32 handle;
-
-	/**
-	 * @flags: Optional flags.
-	 *
-	 * Supported values:
-	 *
-	 * I915_GEM_CREATE_EXT_FLAG_NEEDS_CPU_ACCESS - Signal to the kernel that
-	 * the object will need to be accessed via the CPU.
-	 *
-	 * Only valid when placing objects in I915_MEMORY_CLASS_DEVICE, and only
-	 * strictly required on configurations where some subset of the device
-	 * memory is directly visible/mappable through the CPU (which we also
-	 * call small BAR), like on some DG2+ systems. Note that this is quite
-	 * undesirable, but due to various factors like the client CPU, BIOS etc
-	 * it's something we can expect to see in the wild. See
-	 * &__drm_i915_memory_region_info.probed_cpu_visible_size for how to
-	 * determine if this system applies.
-	 *
-	 * Note that one of the placements MUST be I915_MEMORY_CLASS_SYSTEM, to
-	 * ensure the kernel can always spill the allocation to system memory,
-	 * if the object can't be allocated in the mappable part of
-	 * I915_MEMORY_CLASS_DEVICE.
-	 *
-	 * Also note that since the kernel only supports flat-CCS on objects
-	 * that can *only* be placed in I915_MEMORY_CLASS_DEVICE, we therefore
-	 * don't support I915_GEM_CREATE_EXT_FLAG_NEEDS_CPU_ACCESS together with
-	 * flat-CCS.
-	 *
-	 * Without this hint, the kernel will assume that non-mappable
-	 * I915_MEMORY_CLASS_DEVICE is preferred for this object. Note that the
-	 * kernel can still migrate the object to the mappable part, as a last
-	 * resort, if userspace ever CPU faults this object, but this might be
-	 * expensive, and so ideally should be avoided.
-	 *
-	 * On older kernels which lack the relevant small-bar uAPI support (see
-	 * also &__drm_i915_memory_region_info.probed_cpu_visible_size),
-	 * usage of the flag will result in an error, but it should NEVER be
-	 * possible to end up with a small BAR configuration, assuming we can
-	 * also successfully load the i915 kernel module. In such cases the
-	 * entire I915_MEMORY_CLASS_DEVICE region will be CPU accessible, and as
-	 * such there are zero restrictions on where the object can be placed.
-	 */
-#define I915_GEM_CREATE_EXT_FLAG_NEEDS_CPU_ACCESS (1 << 0)
-	__u32 flags;
-
-	/**
-	 * @extensions: The chain of extensions to apply to this object.
-	 *
-	 * This will be useful in the future when we need to support several
-	 * different extensions, and we need to apply more than one when
-	 * creating the object. See struct i915_user_extension.
-	 *
-	 * If we don't supply any extensions then we get the same old gem_create
-	 * behaviour.
-	 *
-	 * For I915_GEM_CREATE_EXT_MEMORY_REGIONS usage see
-	 * struct drm_i915_gem_create_ext_memory_regions.
-	 *
-	 * For I915_GEM_CREATE_EXT_PROTECTED_CONTENT usage see
-	 * struct drm_i915_gem_create_ext_protected_content.
-	 */
-#define I915_GEM_CREATE_EXT_MEMORY_REGIONS 0
-#define I915_GEM_CREATE_EXT_PROTECTED_CONTENT 1
-	__u64 extensions;
-};
diff --git a/Documentation/gpu/rfc/i915_small_bar.rst b/Documentation/gpu/rfc/i915_small_bar.rst
deleted file mode 100644
index d6c03ce3b862b..0000000000000
--- a/Documentation/gpu/rfc/i915_small_bar.rst
+++ /dev/null
@@ -1,47 +0,0 @@
-==========================
-I915 Small BAR RFC Section
-==========================
-Starting from DG2 we will have resizable BAR support for device local-memory(i.e
-I915_MEMORY_CLASS_DEVICE), but in some cases the final BAR size might still be
-smaller than the total probed_size. In such cases, only some subset of
-I915_MEMORY_CLASS_DEVICE will be CPU accessible(for example the first 256M),
-while the remainder is only accessible via the GPU.
-
-I915_GEM_CREATE_EXT_FLAG_NEEDS_CPU_ACCESS flag
-----------------------------------------------
-New gem_create_ext flag to tell the kernel that a BO will require CPU access.
-This becomes important when placing an object in I915_MEMORY_CLASS_DEVICE, where
-underneath the device has a small BAR, meaning only some portion of it is CPU
-accessible. Without this flag the kernel will assume that CPU access is not
-required, and prioritize using the non-CPU visible portion of
-I915_MEMORY_CLASS_DEVICE.
-
-.. kernel-doc:: Documentation/gpu/rfc/i915_small_bar.h
-   :functions: __drm_i915_gem_create_ext
-
-probed_cpu_visible_size attribute
----------------------------------
-New struct__drm_i915_memory_region attribute which returns the total size of the
-CPU accessible portion, for the particular region. This should only be
-applicable for I915_MEMORY_CLASS_DEVICE. We also report the
-unallocated_cpu_visible_size, alongside the unallocated_size.
-
-Vulkan will need this as part of creating a separate VkMemoryHeap with the
-VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT set, to represent the CPU visible portion,
-where the total size of the heap needs to be known. It also wants to be able to
-give a rough estimate of how memory can potentially be allocated.
-
-.. kernel-doc:: Documentation/gpu/rfc/i915_small_bar.h
-   :functions: __drm_i915_memory_region_info
-
-Error Capture restrictions
---------------------------
-With error capture we have two new restrictions:
-
-    1) Error capture is best effort on small BAR systems; if the pages are not
-    CPU accessible, at the time of capture, then the kernel is free to skip
-    trying to capture them.
-
-    2) On discrete and newer integrated platforms we now reject error capture
-    on recoverable contexts. In the future the kernel may want to blit during
-    error capture, when for example something is not currently CPU accessible.
diff --git a/Documentation/gpu/rfc/index.rst b/Documentation/gpu/rfc/index.rst
index 1256dde0fb3b1..3ab666616c3c5 100644
--- a/Documentation/gpu/rfc/index.rst
+++ b/Documentation/gpu/rfc/index.rst
@@ -24,9 +24,5 @@ host such documentation:
 
     i915_scheduler.rst
 
-.. toctree::
-
-    i915_small_bar.rst
-
 .. toctree::
     color_pipeline.rst
-- 
2.53.0

