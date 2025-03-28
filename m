Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D729A74685
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Mar 2025 10:44:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A907310E9BB;
	Fri, 28 Mar 2025 09:44:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K0Dgz1Y9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E356810E9B8;
 Fri, 28 Mar 2025 09:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743155040; x=1774691040;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=NxTYpwHlfbDgQW950umsnx/d9Kl4D8uqtvrNbNN/2lQ=;
 b=K0Dgz1Y9MQA9fNMCI2Zrw/675061reKjZH8pY5FNuwaNbs1I7Hrt0EFF
 bqWP2LmLcpswMh6sCnREouYKxnMjvtgha9XzsdC274EpU4N8CGiseAfqy
 xmqzKZAYgeLZcjDFPZZfdb+4nx6AglHAujRhgspbbh2QwgcUA793iyUMU
 MmIVOVEiNiUEwTJrPFi2fFRs2dtmvC0QeuR5fG1xhR+lLgsxVV/zxUa//
 hbBUxbK04Gkb45UO/MfESFmeuwK1Zu37+IZTc9K5JZyks470tQQ4ok7Hq
 BaJzl40WbdOVt8xZsrAj2o1Xt1/iWZ/WEyxHKNkV+ImakX3VYXTpEQ15r Q==;
X-CSE-ConnectionGUID: YY8CbekgSZSFDLwnOFrciA==
X-CSE-MsgGUID: Uf9Ua86LRPuMl+SC+S70jw==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="48170263"
X-IronPort-AV: E=Sophos;i="6.14,283,1736841600"; d="scan'208";a="48170263"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2025 02:44:00 -0700
X-CSE-ConnectionGUID: omahNqeaToWPDqqvDqMDXA==
X-CSE-MsgGUID: u8Xm+/tTRnq5A15WWp3hrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,283,1736841600"; d="scan'208";a="129547502"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmviesa003.fm.intel.com with ESMTP; 28 Mar 2025 02:43:56 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
Date: Fri, 28 Mar 2025 14:59:13 +0530
Subject: [PATCH v10 1/4] drm/plane: Add new plane property IN_FORMATS_ASYNC
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250328-asyn-v10-1-8b8ad12cfc97@intel.com>
References: <20250328-asyn-v10-0-8b8ad12cfc97@intel.com>
In-Reply-To: <20250328-asyn-v10-0-8b8ad12cfc97@intel.com>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>, 
 chaitanya.kumar.borah@intel.com, ville.syrjala@intel.com, 
 Arun R Murthy <arun.r.murthy@intel.com>, 
 =?utf-8?q?Ville_Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>, 
 Naveen Kumar <naveen1.kumar@intel.com>
X-Mailer: b4 0.15-dev
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

There exists a property IN_FORMATS which exposes the plane supported
modifiers/formats to the user. In some platforms when asynchronous flip
are used all of modifiers/formats mentioned in IN_FORMATS are not
supported. This patch adds a new plane property IN_FORMATS_ASYNC to
expose the async flip supported modifiers/formats so that user can use
this information ahead and do flip with unsupported
formats/modifiers. This will save flip failures.
Add a new function pointer similar to format_mod_supported specifically
for asynchronous flip.

v2: Remove async variable from drm_plane (Ville)
v3: Add new function pointer for async (Ville)
v5: Typo corrected in commit message & some correction in the kernel
documentation. (Chaitanya)
v7: Place IN_FORMATS_ASYNC next to IN_FORMATS (Ville)
v8: replace uint32_t with u32 and uint64_t with u64 (Chaitanya)

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Tested-by: Naveen Kumar <naveen1.kumar@intel.com>
---
 drivers/gpu/drm/drm_mode_config.c |  7 +++++++
 drivers/gpu/drm/drm_plane.c       |  8 ++++++++
 include/drm/drm_mode_config.h     |  6 ++++++
 include/drm/drm_plane.h           | 17 +++++++++++++++++
 4 files changed, 38 insertions(+)

diff --git a/drivers/gpu/drm/drm_mode_config.c b/drivers/gpu/drm/drm_mode_config.c
index 8642a2fb25a90116dab975aa0ab6b51deafb4b96..b4239fd04e9da4d4b5cfccdef1d3dde9556f322d 100644
--- a/drivers/gpu/drm/drm_mode_config.c
+++ b/drivers/gpu/drm/drm_mode_config.c
@@ -381,6 +381,13 @@ static int drm_mode_create_standard_properties(struct drm_device *dev)
 		return -ENOMEM;
 	dev->mode_config.modifiers_property = prop;
 
+	prop = drm_property_create(dev,
+				   DRM_MODE_PROP_IMMUTABLE | DRM_MODE_PROP_BLOB,
+				   "IN_FORMATS_ASYNC", 0);
+	if (!prop)
+		return -ENOMEM;
+	dev->mode_config.async_modifiers_property = prop;
+
 	prop = drm_property_create(dev,
 				   DRM_MODE_PROP_IMMUTABLE | DRM_MODE_PROP_BLOB,
 				   "SIZE_HINTS", 0);
diff --git a/drivers/gpu/drm/drm_plane.c b/drivers/gpu/drm/drm_plane.c
index a28b22fdd7a41aca82d097d42237851da9a0a79b..fe181c1002171acc68d3054c2d178f9b9f501fe2 100644
--- a/drivers/gpu/drm/drm_plane.c
+++ b/drivers/gpu/drm/drm_plane.c
@@ -141,6 +141,14 @@
  *     various bugs in this area with inconsistencies between the capability
  *     flag and per-plane properties.
  *
+ * IN_FORMATS_ASYNC:
+ *     Blob property which contains the set of buffer format and modifier
+ *     pairs supported by this plane for asynchronous flips. The blob is a struct
+ *     drm_format_modifier_blob. Userspace cannot change this property. This is an
+ *     optional property and if not present then user should expect a failure in
+ *     atomic ioctl when the modifier/format is not supported by that plane under
+ *     asynchronous flip.
+ *
  * SIZE_HINTS:
  *     Blob property which contains the set of recommended plane size
  *     which can used for simple "cursor like" use cases (eg. no scaling).
diff --git a/include/drm/drm_mode_config.h b/include/drm/drm_mode_config.h
index 271765e2e9f2da62aaf0d258828ef4196e14822e..0c116d6dfd277262b1a4c0f097fce2d719f43844 100644
--- a/include/drm/drm_mode_config.h
+++ b/include/drm/drm_mode_config.h
@@ -936,6 +936,12 @@ struct drm_mode_config {
 	 */
 	struct drm_property *modifiers_property;
 
+	/**
+	 * @async_modifiers_property: Plane property to list support modifier/format
+	 * combination for asynchronous flips.
+	 */
+	struct drm_property *async_modifiers_property;
+
 	/**
 	 * @size_hints_property: Plane SIZE_HINTS property.
 	 */
diff --git a/include/drm/drm_plane.h b/include/drm/drm_plane.h
index dd718c62ac31bf16606f3ee9f025a5b171cd1e67..01479dd94e76a8389a0c9e9d6744400aa2291064 100644
--- a/include/drm/drm_plane.h
+++ b/include/drm/drm_plane.h
@@ -549,6 +549,23 @@ struct drm_plane_funcs {
 	 */
 	bool (*format_mod_supported)(struct drm_plane *plane, uint32_t format,
 				     uint64_t modifier);
+	/**
+	 * @format_mod_supported_async:
+	 *
+	 * This optional hook is used for the DRM to determine if for
+	 * asynchronous flip the given format/modifier combination is valid for
+	 * the plane. This allows the DRM to generate the correct format
+	 * bitmask (which formats apply to which modifier), and to validate
+	 * modifiers at atomic_check time.
+	 *
+	 * Returns:
+	 *
+	 * True if the given modifier is valid for that format on the plane.
+	 * False otherwise.
+	 */
+	bool (*format_mod_supported_async)(struct drm_plane *plane,
+					   u32 format, u64 modifier);
+
 };
 
 /**

-- 
2.25.1

