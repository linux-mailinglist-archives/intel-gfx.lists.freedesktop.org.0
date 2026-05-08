Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8KYGHBW5/Wm4hwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 12:21:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CEB64F4EE2
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 12:21:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7626210F42C;
	Fri,  8 May 2026 10:21:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EDffY7ic";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB98210F413;
 Fri,  8 May 2026 10:21:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778235666; x=1809771666;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=USaUKU7Ct/HceSlQTVU4H9nQaCwApldV6p0bPy+4ql8=;
 b=EDffY7icNLQLZxPFOtYb+mcKP9OI7xO8wLOpRNb6XAHFKC7kZR+6UBPb
 5hEUrPnv1MmfmskbRpCovcXkGyXwso+oD02mTTPLqJjWgUyhsnx0+W0b/
 JjK+hgQloHFVy7Lvg5C3Ne3UW2sBw6YvxzY9QeXIQqwgp4FCzgy5Bp5sQ
 0OiiqmT7r7NdmkMKAEj7QbQqtIZdtHrXVMIrYUlz1N+jHjjjbf78fjzWU
 pb8+cUqUMVlLxTMiciMwWzF+0irkMGPFI597bRpDbqg1Bguqr4gXWcnHt
 BCJGBcFyxVuGKxw+o97/8mfV8eUzZR/4/st4oCdk7rpXfNFjMSRJGVGw7 A==;
X-CSE-ConnectionGUID: FEuDvSV1R/OUyoj3bPY90w==
X-CSE-MsgGUID: ZVlfaHEtRc29NstWML3sHQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="79055458"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="79055458"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 03:21:06 -0700
X-CSE-ConnectionGUID: pfV2yD58Rb2HJa3LM4vvxg==
X-CSE-MsgGUID: i7qDTUQrRjaiI+hVYU3iNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="230333926"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.40])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 03:21:03 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org
Cc: rodrigo.vivi@intel.com, Matthew Brost <matthew.brost@intel.com>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 joonas.lahtinen@linux.intel.com, tursulin@ursulin.net,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 1/3] Documentation/gpu: add dedicated documentation for Intel
 display
Date: Fri,  8 May 2026 13:20:47 +0300
Message-ID: <21bfa7777eb0926eadd309d4c6f5c9cf48405cf0.1778235406.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1778235406.git.jani.nikula@intel.com>
References: <cover.1778235406.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Rspamd-Queue-Id: 1CEB64F4EE2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Action: no action

Nowadays, the display support for drm/i915 and drm/xe is shared between
the drivers, even though the code is located under drm/i915/display.

The drm/i915 documentation has everything, including display topics, in
one huge page, while the drm/xe documentation is well-organized but
hardly mentions display. It's not great, to put it mildly.

Split out the Intel display documentation to a dedicated directory,
Documentation/gpu/intel-display. Also directly split the
functionality/feature documentation to dedicated pages to keep the main
index page high level and readable. We'll want to organize this further,
but just sort them alphabetically for starters.

Drop the boilerplate documentation sections that don't actually document
anything.

Cross-reference drm/i915, drm/xe, and intel-display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>

---

Tip: 'git show --color-moved' conveniently highlights what gets moved
and what gets deleted.
---
 Documentation/gpu/drivers.rst                 |   1 +
 Documentation/gpu/drm-kms.rst                 |   3 +
 Documentation/gpu/i915.rst                    | 202 +-----------------
 .../gpu/intel-display/async-flip.rst          |   8 +
 Documentation/gpu/intel-display/audio.rst     |  23 ++
 Documentation/gpu/intel-display/cdclk.rst     |  11 +
 Documentation/gpu/intel-display/dmc.rst       |  26 +++
 Documentation/gpu/intel-display/dpio.rst      |   8 +
 Documentation/gpu/intel-display/dpll.rst      |  14 ++
 Documentation/gpu/intel-display/drrs.rst      |  11 +
 Documentation/gpu/intel-display/dsb.rst       |  11 +
 Documentation/gpu/intel-display/fbc.rst       |  11 +
 .../gpu/intel-display/fifo-underrun.rst       |  11 +
 .../gpu/intel-display/frontbuffer.rst         |  14 ++
 Documentation/gpu/intel-display/hotplug.rst   |  11 +
 Documentation/gpu/intel-display/index.rst     |  40 ++++
 Documentation/gpu/intel-display/plane.rst     |  11 +
 Documentation/gpu/intel-display/psr.rst       |  11 +
 Documentation/gpu/intel-display/vbt.rst       |  14 ++
 Documentation/gpu/xe/index.rst                |   5 +
 20 files changed, 251 insertions(+), 195 deletions(-)
 create mode 100644 Documentation/gpu/intel-display/async-flip.rst
 create mode 100644 Documentation/gpu/intel-display/audio.rst
 create mode 100644 Documentation/gpu/intel-display/cdclk.rst
 create mode 100644 Documentation/gpu/intel-display/dmc.rst
 create mode 100644 Documentation/gpu/intel-display/dpio.rst
 create mode 100644 Documentation/gpu/intel-display/dpll.rst
 create mode 100644 Documentation/gpu/intel-display/drrs.rst
 create mode 100644 Documentation/gpu/intel-display/dsb.rst
 create mode 100644 Documentation/gpu/intel-display/fbc.rst
 create mode 100644 Documentation/gpu/intel-display/fifo-underrun.rst
 create mode 100644 Documentation/gpu/intel-display/frontbuffer.rst
 create mode 100644 Documentation/gpu/intel-display/hotplug.rst
 create mode 100644 Documentation/gpu/intel-display/index.rst
 create mode 100644 Documentation/gpu/intel-display/plane.rst
 create mode 100644 Documentation/gpu/intel-display/psr.rst
 create mode 100644 Documentation/gpu/intel-display/vbt.rst

diff --git a/Documentation/gpu/drivers.rst b/Documentation/gpu/drivers.rst
index 2e13e0ad7e88..20d2c454aa1d 100644
--- a/Documentation/gpu/drivers.rst
+++ b/Documentation/gpu/drivers.rst
@@ -8,6 +8,7 @@ GPU Driver Documentation
    amdgpu/index
    i915
    imagination/index
+   intel-display/index
    mcde
    meson
    nouveau
diff --git a/Documentation/gpu/drm-kms.rst b/Documentation/gpu/drm-kms.rst
index fbe0583eb84c..a125052f46bc 100644
--- a/Documentation/gpu/drm-kms.rst
+++ b/Documentation/gpu/drm-kms.rst
@@ -1,3 +1,6 @@
+
+.. _drm-kms:
+
 =========================
 Kernel Mode Setting (KMS)
 =========================
diff --git a/Documentation/gpu/i915.rst b/Documentation/gpu/i915.rst
index eba09c3ddce4..0c9d68758533 100644
--- a/Documentation/gpu/i915.rst
+++ b/Documentation/gpu/i915.rst
@@ -1,3 +1,6 @@
+
+.. _drm/i915:
+
 ===========================
  drm/i915 Intel GFX Driver
 ===========================
@@ -7,6 +10,9 @@ models) integrated GFX chipsets with both Intel display and rendering
 blocks. This excludes a set of SoC platforms with an SGX rendering unit,
 those have basic support through the gma500 drm driver.
 
+The display, or :ref:`drm-kms`, support for drm/i915 is provided by
+:ref:`drm/intel-display`, and shared with :ref:`drm/xe <drm/xe>`.
+
 Core Driver Infrastructure
 ==========================
 
@@ -64,200 +70,6 @@ Workarounds
 .. kernel-doc:: drivers/gpu/drm/i915/gt/intel_workarounds.c
    :doc: Hardware workarounds
 
-Display Hardware Handling
-=========================
-
-This section covers everything related to the display hardware including
-the mode setting infrastructure, plane, sprite and cursor handling and
-display, output probing and related topics.
-
-Mode Setting Infrastructure
----------------------------
-
-The i915 driver is thus far the only DRM driver which doesn't use the
-common DRM helper code to implement mode setting sequences. Thus it has
-its own tailor-made infrastructure for executing a display configuration
-change.
-
-Frontbuffer Tracking
---------------------
-
-.. kernel-doc:: drivers/gpu/drm/i915/display/intel_frontbuffer.c
-   :doc: frontbuffer tracking
-
-.. kernel-doc:: drivers/gpu/drm/i915/display/intel_frontbuffer.h
-   :internal:
-
-.. kernel-doc:: drivers/gpu/drm/i915/display/intel_frontbuffer.c
-   :internal:
-
-Display FIFO Underrun Reporting
--------------------------------
-
-.. kernel-doc:: drivers/gpu/drm/i915/display/intel_fifo_underrun.c
-   :doc: fifo underrun handling
-
-.. kernel-doc:: drivers/gpu/drm/i915/display/intel_fifo_underrun.c
-   :internal:
-
-Plane Configuration
--------------------
-
-This section covers plane configuration and composition with the primary
-plane, sprites, cursors and overlays. This includes the infrastructure
-to do atomic vsync'ed updates of all this state and also tightly coupled
-topics like watermark setup and computation, framebuffer compression and
-panel self refresh.
-
-Atomic Plane Helpers
---------------------
-
-.. kernel-doc:: drivers/gpu/drm/i915/display/intel_plane.c
-   :doc: atomic plane helpers
-
-.. kernel-doc:: drivers/gpu/drm/i915/display/intel_plane.c
-   :internal:
-
-Asynchronous Page Flip
-----------------------
-
-.. kernel-doc:: drivers/gpu/drm/i915/display/intel_display.c
-   :doc: asynchronous flip implementation
-
-Output Probing
---------------
-
-This section covers output probing and related infrastructure like the
-hotplug interrupt storm detection and mitigation code. Note that the
-i915 driver still uses most of the common DRM helper code for output
-probing, so those sections fully apply.
-
-Hotplug
--------
-
-.. kernel-doc:: drivers/gpu/drm/i915/display/intel_hotplug.c
-   :doc: Hotplug
-
-.. kernel-doc:: drivers/gpu/drm/i915/display/intel_hotplug.c
-   :internal:
-
-High Definition Audio
----------------------
-
-.. kernel-doc:: drivers/gpu/drm/i915/display/intel_audio.c
-   :doc: High Definition Audio over HDMI and Display Port
-
-.. kernel-doc:: drivers/gpu/drm/i915/display/intel_audio.c
-   :internal:
-
-.. kernel-doc:: include/drm/intel/i915_component.h
-   :internal:
-
-Intel HDMI LPE Audio Support
-----------------------------
-
-.. kernel-doc:: drivers/gpu/drm/i915/display/intel_lpe_audio.c
-   :doc: LPE Audio integration for HDMI or DP playback
-
-.. kernel-doc:: drivers/gpu/drm/i915/display/intel_lpe_audio.c
-   :internal:
-
-Panel Self Refresh PSR (PSR/SRD)
---------------------------------
-
-.. kernel-doc:: drivers/gpu/drm/i915/display/intel_psr.c
-   :doc: Panel Self Refresh (PSR/SRD)
-
-.. kernel-doc:: drivers/gpu/drm/i915/display/intel_psr.c
-   :internal:
-
-Frame Buffer Compression (FBC)
-------------------------------
-
-.. kernel-doc:: drivers/gpu/drm/i915/display/intel_fbc.c
-   :doc: Frame Buffer Compression (FBC)
-
-.. kernel-doc:: drivers/gpu/drm/i915/display/intel_fbc.c
-   :internal:
-
-Display Refresh Rate Switching (DRRS)
--------------------------------------
-
-.. kernel-doc:: drivers/gpu/drm/i915/display/intel_drrs.c
-   :doc: Display Refresh Rate Switching (DRRS)
-
-.. kernel-doc:: drivers/gpu/drm/i915/display/intel_drrs.c
-   :internal:
-
-DPIO
-----
-
-.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dpio_phy.c
-   :doc: DPIO
-
-DMC Firmware Support
---------------------
-
-.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dmc.c
-   :doc: DMC Firmware Support
-
-.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dmc.c
-   :internal:
-
-DMC Flip Queue
---------------------
-
-.. kernel-doc:: drivers/gpu/drm/i915/display/intel_flipq.c
-   :doc: DMC Flip Queue
-
-DMC wakelock support
---------------------
-
-.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dmc_wl.c
-   :doc: DMC wakelock support
-
-Video BIOS Table (VBT)
-----------------------
-
-.. kernel-doc:: drivers/gpu/drm/i915/display/intel_bios.c
-   :doc: Video BIOS Table (VBT)
-
-.. kernel-doc:: drivers/gpu/drm/i915/display/intel_bios.c
-   :internal:
-
-.. kernel-doc:: drivers/gpu/drm/i915/display/intel_vbt_defs.h
-   :internal:
-
-Display clocks
---------------
-
-.. kernel-doc:: drivers/gpu/drm/i915/display/intel_cdclk.c
-   :doc: CDCLK / RAWCLK
-
-.. kernel-doc:: drivers/gpu/drm/i915/display/intel_cdclk.c
-   :internal:
-
-Display PLLs
-------------
-
-.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dpll_mgr.c
-   :doc: Display PLLs
-
-.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dpll_mgr.c
-   :internal:
-
-.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dpll_mgr.h
-   :internal:
-
-Display State Buffer
---------------------
-
-.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dsb.c
-   :doc: DSB
-
-.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dsb.c
-   :internal:
-
 GT Programming
 ==============
 
@@ -568,7 +380,7 @@ The HuC FW layout is the same as the GuC one, see `GuC Firmware Layout`_
 
 DMC
 ---
-See `DMC Firmware Support`_
+See :ref:`drm/intel-display/dmc`.
 
 Tracing
 =======
diff --git a/Documentation/gpu/intel-display/async-flip.rst b/Documentation/gpu/intel-display/async-flip.rst
new file mode 100644
index 000000000000..e4ae4012efc5
--- /dev/null
+++ b/Documentation/gpu/intel-display/async-flip.rst
@@ -0,0 +1,8 @@
+.. SPDX-License-Identifier: MIT
+.. Copyright © 2026 Intel Corporation
+
+Asynchronous Page Flip
+----------------------
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_display.c
+   :doc: asynchronous flip implementation
diff --git a/Documentation/gpu/intel-display/audio.rst b/Documentation/gpu/intel-display/audio.rst
new file mode 100644
index 000000000000..7d3c1b514b0e
--- /dev/null
+++ b/Documentation/gpu/intel-display/audio.rst
@@ -0,0 +1,23 @@
+.. SPDX-License-Identifier: MIT
+.. Copyright © 2026 Intel Corporation
+
+High Definition Audio
+---------------------
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_audio.c
+   :doc: High Definition Audio over HDMI and Display Port
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_audio.c
+   :internal:
+
+.. kernel-doc:: include/drm/intel/i915_component.h
+   :internal:
+
+Intel HDMI LPE Audio Support
+----------------------------
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_lpe_audio.c
+   :doc: LPE Audio integration for HDMI or DP playback
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_lpe_audio.c
+   :internal:
diff --git a/Documentation/gpu/intel-display/cdclk.rst b/Documentation/gpu/intel-display/cdclk.rst
new file mode 100644
index 000000000000..231b22a733e7
--- /dev/null
+++ b/Documentation/gpu/intel-display/cdclk.rst
@@ -0,0 +1,11 @@
+.. SPDX-License-Identifier: MIT
+.. Copyright © 2026 Intel Corporation
+
+Display clocks
+--------------
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_cdclk.c
+   :doc: CDCLK / RAWCLK
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_cdclk.c
+   :internal:
diff --git a/Documentation/gpu/intel-display/dmc.rst b/Documentation/gpu/intel-display/dmc.rst
new file mode 100644
index 000000000000..2fcdbd457d79
--- /dev/null
+++ b/Documentation/gpu/intel-display/dmc.rst
@@ -0,0 +1,26 @@
+.. SPDX-License-Identifier: MIT
+.. Copyright © 2026 Intel Corporation
+
+.. _drm/intel-display/dmc:
+
+DMC Firmware Support
+--------------------
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dmc.c
+   :doc: DMC Firmware Support
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dmc.c
+   :internal:
+
+
+DMC Flip Queue
+--------------------
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_flipq.c
+   :doc: DMC Flip Queue
+
+DMC wakelock support
+--------------------
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dmc_wl.c
+   :doc: DMC wakelock support
diff --git a/Documentation/gpu/intel-display/dpio.rst b/Documentation/gpu/intel-display/dpio.rst
new file mode 100644
index 000000000000..32e6f299f256
--- /dev/null
+++ b/Documentation/gpu/intel-display/dpio.rst
@@ -0,0 +1,8 @@
+.. SPDX-License-Identifier: MIT
+.. Copyright © 2026 Intel Corporation
+
+DPIO
+----
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dpio_phy.c
+   :doc: DPIO
diff --git a/Documentation/gpu/intel-display/dpll.rst b/Documentation/gpu/intel-display/dpll.rst
new file mode 100644
index 000000000000..35e8168ccfb9
--- /dev/null
+++ b/Documentation/gpu/intel-display/dpll.rst
@@ -0,0 +1,14 @@
+.. SPDX-License-Identifier: MIT
+.. Copyright © 2026 Intel Corporation
+
+Display PLLs
+------------
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+   :doc: Display PLLs
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+   :internal:
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+   :internal:
diff --git a/Documentation/gpu/intel-display/drrs.rst b/Documentation/gpu/intel-display/drrs.rst
new file mode 100644
index 000000000000..adb413f300f1
--- /dev/null
+++ b/Documentation/gpu/intel-display/drrs.rst
@@ -0,0 +1,11 @@
+.. SPDX-License-Identifier: MIT
+.. Copyright © 2026 Intel Corporation
+
+Display Refresh Rate Switching (DRRS)
+-------------------------------------
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_drrs.c
+   :doc: Display Refresh Rate Switching (DRRS)
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_drrs.c
+   :internal:
diff --git a/Documentation/gpu/intel-display/dsb.rst b/Documentation/gpu/intel-display/dsb.rst
new file mode 100644
index 000000000000..cbd40b0a4e7b
--- /dev/null
+++ b/Documentation/gpu/intel-display/dsb.rst
@@ -0,0 +1,11 @@
+.. SPDX-License-Identifier: MIT
+.. Copyright © 2026 Intel Corporation
+
+Display State Buffer
+--------------------
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dsb.c
+   :doc: DSB
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dsb.c
+   :internal:
diff --git a/Documentation/gpu/intel-display/fbc.rst b/Documentation/gpu/intel-display/fbc.rst
new file mode 100644
index 000000000000..40f9d16bdebd
--- /dev/null
+++ b/Documentation/gpu/intel-display/fbc.rst
@@ -0,0 +1,11 @@
+.. SPDX-License-Identifier: MIT
+.. Copyright © 2026 Intel Corporation
+
+Frame Buffer Compression (FBC)
+------------------------------
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_fbc.c
+   :doc: Frame Buffer Compression (FBC)
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_fbc.c
+   :internal:
diff --git a/Documentation/gpu/intel-display/fifo-underrun.rst b/Documentation/gpu/intel-display/fifo-underrun.rst
new file mode 100644
index 000000000000..50731f3a1f03
--- /dev/null
+++ b/Documentation/gpu/intel-display/fifo-underrun.rst
@@ -0,0 +1,11 @@
+.. SPDX-License-Identifier: MIT
+.. Copyright © 2026 Intel Corporation
+
+Display FIFO Underrun Reporting
+-------------------------------
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_fifo_underrun.c
+   :doc: fifo underrun handling
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_fifo_underrun.c
+   :internal:
diff --git a/Documentation/gpu/intel-display/frontbuffer.rst b/Documentation/gpu/intel-display/frontbuffer.rst
new file mode 100644
index 000000000000..2a1bc63ba6b4
--- /dev/null
+++ b/Documentation/gpu/intel-display/frontbuffer.rst
@@ -0,0 +1,14 @@
+.. SPDX-License-Identifier: MIT
+.. Copyright © 2026 Intel Corporation
+
+Frontbuffer Tracking
+--------------------
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_frontbuffer.c
+   :doc: frontbuffer tracking
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_frontbuffer.h
+   :internal:
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_frontbuffer.c
+   :internal:
diff --git a/Documentation/gpu/intel-display/hotplug.rst b/Documentation/gpu/intel-display/hotplug.rst
new file mode 100644
index 000000000000..4cd9dd5ac8fc
--- /dev/null
+++ b/Documentation/gpu/intel-display/hotplug.rst
@@ -0,0 +1,11 @@
+.. SPDX-License-Identifier: MIT
+.. Copyright © 2026 Intel Corporation
+
+Hotplug
+-------
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_hotplug.c
+   :doc: Hotplug
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_hotplug.c
+   :internal:
diff --git a/Documentation/gpu/intel-display/index.rst b/Documentation/gpu/intel-display/index.rst
new file mode 100644
index 000000000000..8d40363b8f90
--- /dev/null
+++ b/Documentation/gpu/intel-display/index.rst
@@ -0,0 +1,40 @@
+.. SPDX-License-Identifier: MIT
+.. Copyright © 2026 Intel Corporation
+
+.. _drm/intel-display:
+
+====================
+Intel Display Driver
+====================
+
+The Intel display driver provides the display, or :ref:`drm-kms`, support for
+both the :ref:`drm/xe <drm/xe>` and :ref:`drm/i915 <drm/i915>` Intel GPU
+drivers.
+
+The source code currently resides under ``drivers/gpu/drm/i915/display`` due to
+historical reasons, and it's compiled separately into both drm/xe and drm/i915
+kernel modules.
+
+The drm/xe and drm/i915 drivers are the "core" or "parent" drivers for display,
+as they initialize and own the drm device, and pass that on to the display
+driver. The display driver isn't an independent driver in that sense.
+
+.. toctree::
+   :maxdepth: 1
+   :caption: Detailed display topics
+
+   async-flip
+   audio
+   cdclk
+   dmc
+   dpio
+   dpll
+   drrs
+   dsb
+   fbc
+   fifo-underrun
+   frontbuffer
+   hotplug
+   plane
+   psr
+   vbt
diff --git a/Documentation/gpu/intel-display/plane.rst b/Documentation/gpu/intel-display/plane.rst
new file mode 100644
index 000000000000..41cf6571aab0
--- /dev/null
+++ b/Documentation/gpu/intel-display/plane.rst
@@ -0,0 +1,11 @@
+.. SPDX-License-Identifier: MIT
+.. Copyright © 2026 Intel Corporation
+
+Atomic Plane Helpers
+--------------------
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_plane.c
+   :doc: atomic plane helpers
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_plane.c
+   :internal:
diff --git a/Documentation/gpu/intel-display/psr.rst b/Documentation/gpu/intel-display/psr.rst
new file mode 100644
index 000000000000..134c905f500e
--- /dev/null
+++ b/Documentation/gpu/intel-display/psr.rst
@@ -0,0 +1,11 @@
+.. SPDX-License-Identifier: MIT
+.. Copyright © 2026 Intel Corporation
+
+Panel Self Refresh PSR (PSR/SRD)
+--------------------------------
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_psr.c
+   :doc: Panel Self Refresh (PSR/SRD)
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_psr.c
+   :internal:
diff --git a/Documentation/gpu/intel-display/vbt.rst b/Documentation/gpu/intel-display/vbt.rst
new file mode 100644
index 000000000000..bbc7ee183f1b
--- /dev/null
+++ b/Documentation/gpu/intel-display/vbt.rst
@@ -0,0 +1,14 @@
+.. SPDX-License-Identifier: MIT
+.. Copyright © 2026 Intel Corporation
+
+Video BIOS Table (VBT)
+----------------------
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_bios.c
+   :doc: Video BIOS Table (VBT)
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_bios.c
+   :internal:
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_vbt_defs.h
+   :internal:
diff --git a/Documentation/gpu/xe/index.rst b/Documentation/gpu/xe/index.rst
index 874ffcb6da3a..665c0e93601c 100644
--- a/Documentation/gpu/xe/index.rst
+++ b/Documentation/gpu/xe/index.rst
@@ -1,5 +1,7 @@
 .. SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 
+.. _drm/xe:
+
 =======================
 drm/xe Intel GFX Driver
 =======================
@@ -8,6 +10,9 @@ The drm/xe driver supports some future GFX cards with rendering, display,
 compute and media. Support for currently available platforms like TGL, ADL,
 DG2, etc is provided to prototype the driver.
 
+The display, or :ref:`drm-kms`, support for drm/xe is provided by
+:ref:`drm/intel-display`, and shared with :ref:`drm/i915 <drm/i915>`.
+
 .. toctree::
    :titlesonly:
 
-- 
2.47.3

