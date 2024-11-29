Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37A349DBF91
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2024 07:50:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D86A010EDAE;
	Fri, 29 Nov 2024 06:50:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NIkqvX2x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCF4C10EDAE
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Nov 2024 06:50:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732863032; x=1764399032;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9XzREiPdVKCbGFj2yQy4hn3XUcNXWCClhjURNW9UuLE=;
 b=NIkqvX2xeQwLga06fUAxbyj2uynT+fUFMUsA21XPRZeBPcbRcj+3N4Ki
 C3L67Vet6ZHQv6lnfrs41QLzxJd5oKSmt7JFv5V+S/mXDj+HGcLySZNKh
 HymQVZf6JZUKBb6a7Tap8eqizKB3fXnNxP31evqjJNuFDJg4vFqUrkbr6
 9YZLUdFwRjmFoOFu+3XBnkPUAD2byy2NxEsoKnVNdnP3lJ1XZCg2V2pEX
 IAXdB7pgcj7DG4g42D6VZZvySMMUaaD9G46s+6QqyUErKlBGRZDYKLh58
 IYIlCkrVF9LyB9IMfK/kkuYK1IpSMJ6SIPdz681bx3NsxZ+wlKWzOgH7W Q==;
X-CSE-ConnectionGUID: p5zCYBSRQi+idw334XQQMA==
X-CSE-MsgGUID: JOztF+baQ46B2PYxt/+2NA==
X-IronPort-AV: E=McAfee;i="6700,10204,11270"; a="44468047"
X-IronPort-AV: E=Sophos;i="6.12,194,1728975600"; d="scan'208";a="44468047"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2024 22:50:32 -0800
X-CSE-ConnectionGUID: NZDwcdarRWeoe421o0BohQ==
X-CSE-MsgGUID: gw6Bp+glSbydnu3WGG4row==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,194,1728975600"; d="scan'208";a="92589217"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 28 Nov 2024 22:50:30 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 29 Nov 2024 08:50:29 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Sagar Ghuge <sagar.ghuge@intel.com>,
 Nanley Chery <nanley.g.chery@intel.com>, Xi Ruoyao <xry111@xry111.site>
Subject: [PATCH 4/4] drm/uapi/fourcc: Document the Intel clear color alignment
 better
Date: Fri, 29 Nov 2024 08:50:14 +0200
Message-ID: <20241129065014.8363-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241129065014.8363-1-ville.syrjala@linux.intel.com>
References: <20241129065014.8363-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Document the fact that the Intel clear color offset and pitch
must be 64 byte aligned.

Cc: Sagar Ghuge <sagar.ghuge@intel.com>
Cc: Nanley Chery <nanley.g.chery@intel.com>
Cc: Xi Ruoyao <xry111@xry111.site>
Link: https://gitlab.freedesktop.org/mesa/mesa/-/commit/17f97a69c13832a6c1b0b3aad45b06f07d4b852f
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 include/uapi/drm/drm_fourcc.h | 27 ++++++++++++++-------------
 1 file changed, 14 insertions(+), 13 deletions(-)

diff --git a/include/uapi/drm/drm_fourcc.h b/include/uapi/drm/drm_fourcc.h
index 70f3b00b0681..8234db1f484a 100644
--- a/include/uapi/drm/drm_fourcc.h
+++ b/include/uapi/drm/drm_fourcc.h
@@ -598,7 +598,7 @@ extern "C" {
  * compression.
  *
  * The main surface is Y-tiled and is at plane index 0 whereas CCS is linear
- * and at index 1. The clear color is stored at index 2, and the pitch should
+ * and at index 1. The clear color is stored at index 2, and the offset and pitch must
  * be 64 bytes aligned. The clear color structure is 256 bits. The first 128 bits
  * represents Raw Clear Color Red, Green, Blue and Alpha color each represented
  * by 32 bits. The raw clear color is consumed by the 3d engine and generates
@@ -652,7 +652,7 @@ extern "C" {
  * outside of the GEM object in a reserved memory area dedicated for the
  * storage of the CCS data for all RC/RC_CC/MC compressible GEM objects. The
  * main surface pitch is required to be a multiple of four Tile 4 widths. The
- * clear color is stored at plane index 1 and the pitch should be 64 bytes
+ * clear color is stored at plane index 1, and the offset and pitch must be 64 bytes
  * aligned. The format of the 256 bits of clear color data matches the one used
  * for the I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC modifier, see its description
  * for details.
@@ -688,17 +688,18 @@ extern "C" {
  * compression.
  *
  * The main surface is tile4 and is at plane index 0 whereas CCS is linear
- * and at index 1. The clear color is stored at index 2, and the pitch should
- * be ignored. The clear color structure is 256 bits. The first 128 bits
- * represents Raw Clear Color Red, Green, Blue and Alpha color each represented
- * by 32 bits. The raw clear color is consumed by the 3d engine and generates
- * the converted clear color of size 64 bits. The first 32 bits store the Lower
- * Converted Clear Color value and the next 32 bits store the Higher Converted
- * Clear Color value when applicable. The Converted Clear Color values are
- * consumed by the DE. The last 64 bits are used to store Color Discard Enable
- * and Depth Clear Value Valid which are ignored by the DE. A CCS cache line
- * corresponds to an area of 4x1 tiles in the main surface. The main surface
- * pitch is required to be a multiple of 4 tile widths.
+ * and at index 1. The clear color is stored at index 2, and the offset and
+ * pitch must be 64 bytes aligned. The clear color structure is 256 bits.
+ * The first 128 bits represents Raw Clear Color Red, Green, Blue and Alpha
+ * color each represented by 32 bits. The raw clear color is consumed by the
+ * 3d engine and generates the converted clear color of size 64 bits. The
+ * first 32 bits store the Lower Converted Clear Color value and the next 32
+ * bits store the Higher Converted Clear Color value when applicable. The
+ * Converted Clear Color values are consumed by the DE. The last 64 bits are
+ * used to store Color Discard Enable and Depth Clear Value Valid which are
+ * ignored by the DE. A CCS cache line corresponds to an area of 4x1 tiles in
+ * the main surface. The main surface pitch is required to be a multiple of
+ * 4 tile widths.
  */
 #define I915_FORMAT_MOD_4_TILED_MTL_RC_CCS_CC fourcc_mod_code(INTEL, 15)
 
-- 
2.45.2

