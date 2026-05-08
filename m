Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WI6tGxu5/Wm4hwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 12:21:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 057CE4F4EF4
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 12:21:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71B8010F431;
	Fri,  8 May 2026 10:21:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X56CwfZT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46CE610F41C;
 Fri,  8 May 2026 10:21:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778235672; x=1809771672;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=q68vCM9WRvadvv7O1j0K3UaWIp9XAxTwub11fMUW5IY=;
 b=X56CwfZTPm3CrZVgbgyLlg8xkleRIgRro51AA/r02CBLhz358KlwgtHG
 J8dvIk5QLFL/DJdBp4XdW5RZShE2p7h/fDqQS5v9EzgihVrJrGN8aCVxR
 TlcYOMEdIJ5zTDvD2EfIhOJQ+/v0Un0sd5gUOOyTHThf/Eicigla+FnYW
 A8Akfs5NKCp5hAZsR0ZtczMInKUlKqQ5G/8ZNPrnVUpEB3UfpTKWOvCq9
 JyW8TBLDRDqTH+mkaJwUU5lqz5Zlu0T0WIZ73BnhKDY5q1bw9EO3gBlTB
 qvvimQDSitRdaJPqaKgEe3QEKerq6GGX9VZNodldbFEu13ClD4wtCJS4N Q==;
X-CSE-ConnectionGUID: zEmDBI6TTwWQ7fcobJSMXw==
X-CSE-MsgGUID: h+OahcUATwS8lt0hMDnWzQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="79055463"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="79055463"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 03:21:11 -0700
X-CSE-ConnectionGUID: A6M6TT13S9aI99EupBz6Zg==
X-CSE-MsgGUID: pm+N2MzUQyqeBKkSgHZolw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="230333929"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.40])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 03:21:09 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org
Cc: rodrigo.vivi@intel.com, Matthew Brost <matthew.brost@intel.com>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 joonas.lahtinen@linux.intel.com, tursulin@ursulin.net,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 2/3] Documentation/gpu: use === for Intel display section
 heading underlines
Date: Fri,  8 May 2026 13:20:48 +0300
Message-ID: <f49968792220ca3ff24efde813550850340d092e.1778235406.git.jani.nikula@intel.com>
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
X-Rspamd-Queue-Id: 057CE4F4EF4
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

Prefer to use === instead of --- for top level section heading
underlines to allow using the latter for sub-headings later.

While at it, fix the underline lenghts where needed.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 Documentation/gpu/intel-display/async-flip.rst    | 2 +-
 Documentation/gpu/intel-display/audio.rst         | 4 ++--
 Documentation/gpu/intel-display/cdclk.rst         | 2 +-
 Documentation/gpu/intel-display/dmc.rst           | 6 +++---
 Documentation/gpu/intel-display/dpio.rst          | 2 +-
 Documentation/gpu/intel-display/dpll.rst          | 2 +-
 Documentation/gpu/intel-display/drrs.rst          | 2 +-
 Documentation/gpu/intel-display/dsb.rst           | 2 +-
 Documentation/gpu/intel-display/fbc.rst           | 2 +-
 Documentation/gpu/intel-display/fifo-underrun.rst | 2 +-
 Documentation/gpu/intel-display/frontbuffer.rst   | 2 +-
 Documentation/gpu/intel-display/hotplug.rst       | 2 +-
 Documentation/gpu/intel-display/plane.rst         | 2 +-
 Documentation/gpu/intel-display/psr.rst           | 2 +-
 Documentation/gpu/intel-display/vbt.rst           | 2 +-
 15 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/Documentation/gpu/intel-display/async-flip.rst b/Documentation/gpu/intel-display/async-flip.rst
index e4ae4012efc5..40f93e885bb7 100644
--- a/Documentation/gpu/intel-display/async-flip.rst
+++ b/Documentation/gpu/intel-display/async-flip.rst
@@ -2,7 +2,7 @@
 .. Copyright © 2026 Intel Corporation
 
 Asynchronous Page Flip
-----------------------
+======================
 
 .. kernel-doc:: drivers/gpu/drm/i915/display/intel_display.c
    :doc: asynchronous flip implementation
diff --git a/Documentation/gpu/intel-display/audio.rst b/Documentation/gpu/intel-display/audio.rst
index 7d3c1b514b0e..eef95df75f8d 100644
--- a/Documentation/gpu/intel-display/audio.rst
+++ b/Documentation/gpu/intel-display/audio.rst
@@ -2,7 +2,7 @@
 .. Copyright © 2026 Intel Corporation
 
 High Definition Audio
----------------------
+=====================
 
 .. kernel-doc:: drivers/gpu/drm/i915/display/intel_audio.c
    :doc: High Definition Audio over HDMI and Display Port
@@ -14,7 +14,7 @@ High Definition Audio
    :internal:
 
 Intel HDMI LPE Audio Support
-----------------------------
+============================
 
 .. kernel-doc:: drivers/gpu/drm/i915/display/intel_lpe_audio.c
    :doc: LPE Audio integration for HDMI or DP playback
diff --git a/Documentation/gpu/intel-display/cdclk.rst b/Documentation/gpu/intel-display/cdclk.rst
index 231b22a733e7..a66d623b0ec9 100644
--- a/Documentation/gpu/intel-display/cdclk.rst
+++ b/Documentation/gpu/intel-display/cdclk.rst
@@ -2,7 +2,7 @@
 .. Copyright © 2026 Intel Corporation
 
 Display clocks
---------------
+==============
 
 .. kernel-doc:: drivers/gpu/drm/i915/display/intel_cdclk.c
    :doc: CDCLK / RAWCLK
diff --git a/Documentation/gpu/intel-display/dmc.rst b/Documentation/gpu/intel-display/dmc.rst
index 2fcdbd457d79..4368da4c7048 100644
--- a/Documentation/gpu/intel-display/dmc.rst
+++ b/Documentation/gpu/intel-display/dmc.rst
@@ -4,7 +4,7 @@
 .. _drm/intel-display/dmc:
 
 DMC Firmware Support
---------------------
+====================
 
 .. kernel-doc:: drivers/gpu/drm/i915/display/intel_dmc.c
    :doc: DMC Firmware Support
@@ -14,13 +14,13 @@ DMC Firmware Support
 
 
 DMC Flip Queue
---------------------
+==============
 
 .. kernel-doc:: drivers/gpu/drm/i915/display/intel_flipq.c
    :doc: DMC Flip Queue
 
 DMC wakelock support
---------------------
+====================
 
 .. kernel-doc:: drivers/gpu/drm/i915/display/intel_dmc_wl.c
    :doc: DMC wakelock support
diff --git a/Documentation/gpu/intel-display/dpio.rst b/Documentation/gpu/intel-display/dpio.rst
index 32e6f299f256..84d92ac162f8 100644
--- a/Documentation/gpu/intel-display/dpio.rst
+++ b/Documentation/gpu/intel-display/dpio.rst
@@ -2,7 +2,7 @@
 .. Copyright © 2026 Intel Corporation
 
 DPIO
-----
+====
 
 .. kernel-doc:: drivers/gpu/drm/i915/display/intel_dpio_phy.c
    :doc: DPIO
diff --git a/Documentation/gpu/intel-display/dpll.rst b/Documentation/gpu/intel-display/dpll.rst
index 35e8168ccfb9..c750352e0ae5 100644
--- a/Documentation/gpu/intel-display/dpll.rst
+++ b/Documentation/gpu/intel-display/dpll.rst
@@ -2,7 +2,7 @@
 .. Copyright © 2026 Intel Corporation
 
 Display PLLs
-------------
+============
 
 .. kernel-doc:: drivers/gpu/drm/i915/display/intel_dpll_mgr.c
    :doc: Display PLLs
diff --git a/Documentation/gpu/intel-display/drrs.rst b/Documentation/gpu/intel-display/drrs.rst
index adb413f300f1..a5aaba63d6b9 100644
--- a/Documentation/gpu/intel-display/drrs.rst
+++ b/Documentation/gpu/intel-display/drrs.rst
@@ -2,7 +2,7 @@
 .. Copyright © 2026 Intel Corporation
 
 Display Refresh Rate Switching (DRRS)
--------------------------------------
+=====================================
 
 .. kernel-doc:: drivers/gpu/drm/i915/display/intel_drrs.c
    :doc: Display Refresh Rate Switching (DRRS)
diff --git a/Documentation/gpu/intel-display/dsb.rst b/Documentation/gpu/intel-display/dsb.rst
index cbd40b0a4e7b..857aca59995a 100644
--- a/Documentation/gpu/intel-display/dsb.rst
+++ b/Documentation/gpu/intel-display/dsb.rst
@@ -2,7 +2,7 @@
 .. Copyright © 2026 Intel Corporation
 
 Display State Buffer
---------------------
+====================
 
 .. kernel-doc:: drivers/gpu/drm/i915/display/intel_dsb.c
    :doc: DSB
diff --git a/Documentation/gpu/intel-display/fbc.rst b/Documentation/gpu/intel-display/fbc.rst
index 40f9d16bdebd..de9e19021f50 100644
--- a/Documentation/gpu/intel-display/fbc.rst
+++ b/Documentation/gpu/intel-display/fbc.rst
@@ -2,7 +2,7 @@
 .. Copyright © 2026 Intel Corporation
 
 Frame Buffer Compression (FBC)
-------------------------------
+==============================
 
 .. kernel-doc:: drivers/gpu/drm/i915/display/intel_fbc.c
    :doc: Frame Buffer Compression (FBC)
diff --git a/Documentation/gpu/intel-display/fifo-underrun.rst b/Documentation/gpu/intel-display/fifo-underrun.rst
index 50731f3a1f03..5d8f01921506 100644
--- a/Documentation/gpu/intel-display/fifo-underrun.rst
+++ b/Documentation/gpu/intel-display/fifo-underrun.rst
@@ -2,7 +2,7 @@
 .. Copyright © 2026 Intel Corporation
 
 Display FIFO Underrun Reporting
--------------------------------
+===============================
 
 .. kernel-doc:: drivers/gpu/drm/i915/display/intel_fifo_underrun.c
    :doc: fifo underrun handling
diff --git a/Documentation/gpu/intel-display/frontbuffer.rst b/Documentation/gpu/intel-display/frontbuffer.rst
index 2a1bc63ba6b4..7ae38e0827bf 100644
--- a/Documentation/gpu/intel-display/frontbuffer.rst
+++ b/Documentation/gpu/intel-display/frontbuffer.rst
@@ -2,7 +2,7 @@
 .. Copyright © 2026 Intel Corporation
 
 Frontbuffer Tracking
---------------------
+====================
 
 .. kernel-doc:: drivers/gpu/drm/i915/display/intel_frontbuffer.c
    :doc: frontbuffer tracking
diff --git a/Documentation/gpu/intel-display/hotplug.rst b/Documentation/gpu/intel-display/hotplug.rst
index 4cd9dd5ac8fc..f33bc0087c27 100644
--- a/Documentation/gpu/intel-display/hotplug.rst
+++ b/Documentation/gpu/intel-display/hotplug.rst
@@ -2,7 +2,7 @@
 .. Copyright © 2026 Intel Corporation
 
 Hotplug
--------
+=======
 
 .. kernel-doc:: drivers/gpu/drm/i915/display/intel_hotplug.c
    :doc: Hotplug
diff --git a/Documentation/gpu/intel-display/plane.rst b/Documentation/gpu/intel-display/plane.rst
index 41cf6571aab0..59932a82051b 100644
--- a/Documentation/gpu/intel-display/plane.rst
+++ b/Documentation/gpu/intel-display/plane.rst
@@ -2,7 +2,7 @@
 .. Copyright © 2026 Intel Corporation
 
 Atomic Plane Helpers
---------------------
+====================
 
 .. kernel-doc:: drivers/gpu/drm/i915/display/intel_plane.c
    :doc: atomic plane helpers
diff --git a/Documentation/gpu/intel-display/psr.rst b/Documentation/gpu/intel-display/psr.rst
index 134c905f500e..63e56abcdd56 100644
--- a/Documentation/gpu/intel-display/psr.rst
+++ b/Documentation/gpu/intel-display/psr.rst
@@ -2,7 +2,7 @@
 .. Copyright © 2026 Intel Corporation
 
 Panel Self Refresh PSR (PSR/SRD)
---------------------------------
+================================
 
 .. kernel-doc:: drivers/gpu/drm/i915/display/intel_psr.c
    :doc: Panel Self Refresh (PSR/SRD)
diff --git a/Documentation/gpu/intel-display/vbt.rst b/Documentation/gpu/intel-display/vbt.rst
index bbc7ee183f1b..be69f7fd7b39 100644
--- a/Documentation/gpu/intel-display/vbt.rst
+++ b/Documentation/gpu/intel-display/vbt.rst
@@ -2,7 +2,7 @@
 .. Copyright © 2026 Intel Corporation
 
 Video BIOS Table (VBT)
-----------------------
+======================
 
 .. kernel-doc:: drivers/gpu/drm/i915/display/intel_bios.c
    :doc: Video BIOS Table (VBT)
-- 
2.47.3

