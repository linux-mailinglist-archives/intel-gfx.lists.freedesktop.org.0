Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E125342A92
	for <lists+intel-gfx@lfdr.de>; Sat, 20 Mar 2021 05:43:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 489156EB30;
	Sat, 20 Mar 2021 04:42:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9A5C6EB31
 for <intel-gfx@lists.freedesktop.org>; Sat, 20 Mar 2021 04:42:55 +0000 (UTC)
IronPort-SDR: DlMV29DEkeLOR7TW5jS3pmbrtFgc59787vY9NeFzYcgIdn3zzWcA+J4fdYr8uGILxmQyq3ZVW4
 rUumgVvkNvVQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9928"; a="275080361"
X-IronPort-AV: E=Sophos;i="5.81,263,1610438400"; d="scan'208";a="275080361"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2021 21:42:55 -0700
IronPort-SDR: nF4W4JKiAjSQRu6BuRQDBsu+OJZkjj8mMRSKBgHFJEoyPreaqWfsmkSn33k8X0r7RYd9O9GBNc
 lfZbQ9nFL//w==
X-IronPort-AV: E=Sophos;i="5.81,263,1610438400"; d="scan'208";a="440326951"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2021 21:42:55 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 19 Mar 2021 21:42:41 -0700
Message-Id: <20210320044245.3920043-3-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210320044245.3920043-1-matthew.d.roper@intel.com>
References: <20210320044245.3920043-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/6] drm/i915: Add DISPLAY_VER() and related
 macros
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Although we've long referred to platforms by a single "GEN" number, the
hardware teams have recommended that we stop doing this since the
various component IP blocks are going to start using independent number
schemes with varying cadence.  To support this, hardware platforms a bit
down the road are going to start providing MMIO registers that the
driver can read to obtain the "graphics version," "media version," and
"display version" without needing to do a PCI ID -> platform -> version
translation.

Although our current platforms don't yet expose these registers (and the
next couple we release probably won't have them yet either), the
hardware teams would still like to see us move to this independent
numbering scheme now in preparation.  For i915 that means we should try
to eliminate all usage of INTEL_GEN() throughout our code and instead
replace it with separate GRAPHICS_VER(), MEDIA_VER(), and DISPLAY_VER()
constructs in the code.  For old platforms, these will all usually give
the same value for each IP block (aside from a few special cases like
GLK which we can no more accurately represent as graphics=9 +
display=10), but future platforms will have more flexibility to bump IP
version numbers independently.

The upcoming ADL-P platform will have a display version of 13 and a
graphics version of 12, so let's just the first step of breaking out
DISPLAY_VER(), but leaving the rest of INTEL_GEN() untouched for now.
For now we'll automatically derive the display version from the
platform's INTEL_GEN() value except in cases where an alternative
display version is explicitly provided in the device info structure.

We'll also add some helper macros IS_DISPLAY_VER(i915, ver) and
IS_DISPLAY_RANGE(i915, from, until) that match the behavior of the
existing gen-based macros.  However unlike IS_GEN(), we will implement
those macros with direct comparisons rather than trying to maintain a
mask to help compiler optimization.  In practice the optimization winds
up not being used in very many places (since the vast majority of our
platform checks are of the form "gen >= x") so there is pretty minimal
size reduction in the final driver binary[1].  We're also likely going
to need to extend these version numbers to non-integer major.minor
values at some point in the future, so the mask approach won't work at
all once we get to platforms like that.

 [1] The results before/after the next patch in this series, which
     switches our code over to the new display macros:

        $ size i915.ko.{orig,new}
           text    data     bss     dec     hex filename
        2940291  102944    5384 3048619  2e84ab i915.ko.orig
        2940723  102956    5384 3049063  2e8667 i915.ko.new

v2:
 - Move version into device info's display sub-struct. (Jani)
 - Add extra parentheses to macros.  (Jani)
 - Note the lack of genmask optimization in the display-based macros and
   give size data.  (Lucas)

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          | 5 +++++
 drivers/gpu/drm/i915/i915_pci.c          | 2 +-
 drivers/gpu/drm/i915/intel_device_info.h | 2 ++
 3 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 1aca1274e698..89e8cb52647a 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1241,6 +1241,11 @@ static inline struct drm_i915_private *pdev_to_i915(struct pci_dev *pdev)
 #define INTEL_GEN(dev_priv)	(INTEL_INFO(dev_priv)->gen)
 #define INTEL_DEVID(dev_priv)	(RUNTIME_INFO(dev_priv)->device_id)
 
+#define DISPLAY_VER(i915)	(INTEL_INFO(i915)->display.version)
+#define IS_DISPLAY_RANGE(i915, from, until) \
+	(DISPLAY_VER(i915) >= (from) && DISPLAY_VER(i915) <= (until))
+#define IS_DISPLAY_VER(i915, v) (DISPLAY_VER(i915) == (v))
+
 #define REVID_FOREVER		0xff
 #define INTEL_REVID(dev_priv)	(to_pci_dev((dev_priv)->drm.dev)->revision)
 
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index a9f24f2bda33..d327882d6d4b 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -36,7 +36,7 @@
 #include "i915_selftest.h"
 
 #define PLATFORM(x) .platform = (x)
-#define GEN(x) .gen = (x), .gen_mask = BIT((x) - 1)
+#define GEN(x) .gen = (x), .gen_mask = BIT((x) - 1), .display.version = (x)
 
 #define I845_PIPE_OFFSETS \
 	.pipe_offsets = { \
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index d44f64b57b7a..90acbaf800d5 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -187,6 +187,8 @@ struct intel_device_info {
 #undef DEFINE_FLAG
 
 	struct {
+		u8 version;
+
 #define DEFINE_FLAG(name) u8 name:1
 		DEV_INFO_DISPLAY_FOR_EACH_FLAG(DEFINE_FLAG);
 #undef DEFINE_FLAG
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
