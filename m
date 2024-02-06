Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D9E584B9D2
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Feb 2024 16:38:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE89610EFD6;
	Tue,  6 Feb 2024 15:38:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KUOkBvLS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64E7110EFD6
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Feb 2024 15:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707233934; x=1738769934;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=eThw1e+mfk/O9+d/aFFiSujqObBDhjG9UKEcn1Ih4NU=;
 b=KUOkBvLS0Jm0R0K8r4JcdXUOp4kbtctCyQDpf+nsLruO3Zx9bhpghupl
 BPZnbx6FkVXQ4fsgToWdmDswIAels/jXLz8pp070rbc2XPR1kiM0GUjbn
 LQhnuE9wdJ2x1BBsJusKVmXy2GwGIT4fGDJm1pBb5fCnxFYPmWk0mjv8t
 T6KpewTwRzEXBKSgaNdd5TQS2O3p8Rn3AWERkqvNIs02cFQ5wY9lQFh8w
 H2hWZCxdwjmFmG0QDemgi23hhR96hemPvLfN1OXT0EKxp2TER0oYY049e
 tZA215oh/RDO9iFaYjOUQegYMmO75ykiAp/uqUSNaholBNqCvhrnsz5iB g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10976"; a="914702"
X-IronPort-AV: E=Sophos;i="6.05,247,1701158400"; 
   d="scan'208";a="914702"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2024 07:38:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,247,1701158400"; 
   d="scan'208";a="5652240"
Received: from unknown (HELO ideak-desk.fi.intel.com) ([10.237.66.155])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2024 07:38:52 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/2] drm/i915: Prevent HW access during init from connector
 hooks
Date: Tue,  6 Feb 2024 17:39:08 +0200
Message-Id: <20240206153910.1758057-1-imre.deak@intel.com>
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

Accessing the display HW from the connector get_modes hooks should be
prevented during driver init/shutdown similarly to how this is done in
the encoder detect hooks and modeset as explained in the following
commits:

drm/i915: Prevent modesets during driver init/shutdown
drm/i915: Disable hotplug detection works during driver init/shutdown
drm/i915: Disable hotplug detection handlers during driver init/shutdown

For the DP-SST/HDMI connectors the above is already ensured, since for
these the required HW access - to read out the display's EDID - happens
in the encoders' detect hook, however other connectors do a
corresponding detection/HW access from the connector get_modes hook.
Disable the access during init/shutdown from these hooks as well.

Imre Deak (2):
  drm/i915: Prevent HW access during init from SDVO TV get_modes hook
  drm/i915: Prevent HW access during init from connector get_modes hooks

 drivers/gpu/drm/i915/display/intel_crt.c    | 7 +++++++
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 4 ++++
 drivers/gpu/drm/i915/display/intel_dvo.c    | 5 +++++
 drivers/gpu/drm/i915/display/intel_sdvo.c   | 8 ++++++++
 4 files changed, 24 insertions(+)

-- 
2.39.2

