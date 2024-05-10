Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F13DE8C2031
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 11:05:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5470B10E28F;
	Fri, 10 May 2024 09:05:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CjATO8R6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0B9D10E28F
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2024 09:05:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715331914; x=1746867914;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6OfXqDaFhUVWn3dEePdncQImh80hFJhuGhhiQeBg/eo=;
 b=CjATO8R61Mg5bXwdvg1eozGxhFvrFnOKZTr6AcFjBKIPcDeHLihPEhvr
 0Z707Mirl/uKTeP5aiO/++8HrfGJkRcqsEFK2zKc9SyQo2CRMXdPqSYYm
 gLzGw1375DzNo/Yfhid6ymsOSPBQZxTgTclAYnWm+m+2DjKTdJHP87A6U
 Bf14CAop495rmjaNlEDlMIQ3CKhZZ8WMUN4+m1U0CubIhuIS47Az0ySLe
 BocMoCi0/aX6UVIgq+UvkD4C56V4AdHCDwuIj4JQqP7Uvvb9tiaV6MaSh
 Pz3GU5kAiS1tra8Ap6t4WkrFbnPEuIAqvgGDVW7TNbWSJONj0RRoL0OIC A==;
X-CSE-ConnectionGUID: hrrXafM+TlesaLeCiapQZQ==
X-CSE-MsgGUID: r+37Gfx/REqQbrcUXMjb8w==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="11433174"
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="11433174"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 02:05:14 -0700
X-CSE-ConnectionGUID: W8VZb/jbQneWUSnLWWZ5iw==
X-CSE-MsgGUID: RklqWl36QU+mqroi5tDoxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="34414330"
Received: from hrmarapi-mobl1.ger.corp.intel.com (HELO
 hazy.ger.corp.intel.com) ([10.252.35.104])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 02:05:12 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	gustavo.sousa@intel.com
Subject: [PATCH] Documentation/i915: remove kernel-doc for DMC wakelocks
Date: Fri, 10 May 2024 12:05:02 +0300
Message-Id: <20240510090502.667556-1-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.39.2
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

The function descriptions are optional and have not yet been added to
the DMC wakelock code, so we shouldn't try to use it.  Since this is a
regression, remove the kernel-doc entry for DMC wakelocks for now.
The proper documentation will be added in a future patch.

Fixes: 765425f598c2 ("drm/i915/display: add support for DMC wakelocks")
Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 Documentation/gpu/i915.rst | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/Documentation/gpu/i915.rst b/Documentation/gpu/i915.rst
index 17261ba18313..3113e36f14cf 100644
--- a/Documentation/gpu/i915.rst
+++ b/Documentation/gpu/i915.rst
@@ -210,9 +210,6 @@ DMC wakelock support
 .. kernel-doc:: drivers/gpu/drm/i915/display/intel_dmc_wl.c
    :doc: DMC wakelock support
 
-.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dmc_wl.c
-   :internal:
-
 Video BIOS Table (VBT)
 ----------------------
 
-- 
2.39.2

