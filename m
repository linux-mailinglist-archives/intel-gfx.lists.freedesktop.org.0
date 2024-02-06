Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3833084BB5C
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Feb 2024 17:49:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA4181125A5;
	Tue,  6 Feb 2024 16:49:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A+icv705";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B59610EAEF;
 Tue,  6 Feb 2024 16:49:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707238186; x=1738774186;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PcZr5pzu+BHKsEJt7ivmY6AaeLpscv2s8ZoXvZFJz4Y=;
 b=A+icv705aBpDHPhVLScGPahHoTPgNsfqOdpLIllIdmNkw/GamZC5ulZY
 yIM9CW+lKGok7I7uaShnIuSYUuwcZoPHaafWcvPyvRYPtvZBUxus6jaHR
 MNzv9gp8dI+FvFtr1a/JNZaQf8Zqv7VOXNCDXLGyabr823aM8rbUjbshR
 /Vr4YdHT9cmhwexvMXO3QS7yKUFgKY7Qycab8ts+4/kTwFbmH/X2SIW5P
 4aoye/1rFLNTWGlL+0gNyJFIlh2o78H8mTbt2rsB8XZYFZXlUNSqoQpnL
 q7hQ1I770hHSiLL5H6vz4MOgEJCatyJ3w72H3N3w3+iTYi24fbkFlRgai Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10976"; a="11525151"
X-IronPort-AV: E=Sophos;i="6.05,247,1701158400"; d="scan'208";a="11525151"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2024 08:49:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,247,1701158400"; d="scan'208";a="24309525"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa002.fm.intel.com with ESMTP; 06 Feb 2024 08:49:43 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: daniele.ceraolospurio@intel.com, chaitanya.kumar.borah@intel.com,
 ankit.k.nautiyal@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 0/3] XE HDCP Enablement
Date: Tue,  6 Feb 2024 22:17:39 +0530
Message-Id: <20240206164742.1222593-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
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

This patch series enables HDCP on XE.
Mainly includes rewriting functions that were responsible for
sending hdcp messages via gsc cs.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Suraj Kandpal (3):
  drm/i915/hdcp: Move intel_hdcp_gsc_message def away from header file
  drm/xe/hdcp: Enable HDCP for XE
  drm/xe/hdcp: Add intel_hdcp_gsc_message to Makefile

 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c |  10 +-
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.h |   7 +-
 drivers/gpu/drm/xe/Makefile                   |   1 +
 .../gpu/drm/xe/abi/gsc_command_header_abi.h   |   2 +
 drivers/gpu/drm/xe/display/xe_hdcp_gsc.c      | 197 +++++++++++++++++-
 drivers/gpu/drm/xe/xe_gsc_submit.c            |  19 ++
 drivers/gpu/drm/xe/xe_gsc_submit.h            |   1 +
 7 files changed, 225 insertions(+), 12 deletions(-)

-- 
2.25.1

