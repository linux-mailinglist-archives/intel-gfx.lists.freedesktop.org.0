Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 145A3972B2C
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2024 09:49:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AEEB10E6E8;
	Tue, 10 Sep 2024 07:49:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y8RAbzTG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C94A910E6E8;
 Tue, 10 Sep 2024 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725954594; x=1757490594;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7xMGVkg0jUj/ROAU2vXmxlBzNLV6qMgQFOJezD2RG00=;
 b=Y8RAbzTG6Jq2ikQxXknv1bzymtjIeGmVDHPuIWt3i36xoKnTfxyOv6S0
 k4o5VJL/AL+e9MBML9UEvPstBea3+3bJbx4Zwp0P3Wr/3fhkvev14Nyvc
 EzZy5MBITs+l7PMS4H6U3g+rX1ASwAZkz8xMdleQXDX9HXrUi2wgKU7hy
 z0cnUMX3cNffAqOs6UlIimpnTrqZ4AOTsP4zoxF0aZkp48eNylHQhm+Et
 XhS214SaQ7xzjGq4XwyIGLuATAmXCSbmdYdIW+YX/8anYJBZTC4pJTTiM
 Ql+wHIwxVdexv8Us0VojJ938g5sIIW3sM/L1fpieDEdsgQklHKCgjhqyx Q==;
X-CSE-ConnectionGUID: sdLO9GbFTyyeA7HetS7R7g==
X-CSE-MsgGUID: cYfXun/ZSw6q7EYQuz9rmA==
X-IronPort-AV: E=McAfee;i="6700,10204,11190"; a="24230983"
X-IronPort-AV: E=Sophos;i="6.10,216,1719903600"; d="scan'208";a="24230983"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 00:49:53 -0700
X-CSE-ConnectionGUID: DyaQMs81RJGVf+eBVpeuiw==
X-CSE-MsgGUID: FBaB2pEWSd+7v5rGUhgt0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,216,1719903600"; d="scan'208";a="66571801"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa006.fm.intel.com with ESMTP; 10 Sep 2024 00:49:51 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: uma.shankar@intel.com, ankit.k.nautiyal@intel.com, jani.nikula@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 0/2] HDCP intel_display refactors
Date: Tue, 10 Sep 2024 13:17:09 +0530
Message-ID: <20240910074712.544007-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
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

Refactors related to intel_hdcp/xe_hdcp in which we replace
drm_i915_private usage with intel_display wherever possible for
the ongoing efforts to try use intel_display structure more.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Suraj Kandpal (2):
  drm/i915/hdcp: Move to using intel_display in intel_hdcp
  drm/i915/hdcp: Use intel_display in hdcp_gsc

 drivers/gpu/drm/i915/display/intel_hdcp.c     | 673 +++++++++---------
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c |  40 +-
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.h |   9 +-
 .../drm/i915/display/intel_hdcp_gsc_message.c |  44 +-
 .../drm/i915/display/intel_hdcp_gsc_message.h |   3 +-
 drivers/gpu/drm/xe/display/xe_hdcp_gsc.c      |  30 +-
 6 files changed, 406 insertions(+), 393 deletions(-)

-- 
2.43.2

