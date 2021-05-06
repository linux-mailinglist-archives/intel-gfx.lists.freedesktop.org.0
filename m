Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A84E9375045
	for <lists+intel-gfx@lfdr.de>; Thu,  6 May 2021 09:39:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13DAC89EF7;
	Thu,  6 May 2021 07:39:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F8B189EF7
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 May 2021 07:39:45 +0000 (UTC)
IronPort-SDR: XwPoqjZahha5jJzRXZUktAAG9Dp4l+CQlvgMXuXDpt01aJZB92th4po4hWtFvf564lfnP5O8pF
 BPreLmCUq3gA==
X-IronPort-AV: E=McAfee;i="6200,9189,9975"; a="185866329"
X-IronPort-AV: E=Sophos;i="5.82,276,1613462400"; d="scan'208";a="185866329"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2021 00:39:44 -0700
IronPort-SDR: A1RRNpKv6xEKZsiMleZYs0UNIVF2hPIF3Uz8c+DYfZ42j5hTJb6L4B7wFmCluoc8j0wdky6UxY
 uvc/Xu3Y0saQ==
X-IronPort-AV: E=Sophos;i="5.82,276,1613462400"; d="scan'208";a="532444323"
Received: from unknown (HELO Nischal-desktop.iind.intel.com) ([10.223.74.174])
 by fmsmga001-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 May 2021 00:39:42 -0700
From: Nischal Varide <nischal.varide@intel.com>
To: intel-gfx@lists.freedesktop.org, nischal.varide@intel.com,
 uma.shankar@intel.com, anshuman.gupta@intel.com
Date: Thu,  6 May 2021 06:17:18 +0530
Message-Id: <20210506004719.4121-1-nischal.varide@intel.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 0/1] drm/i915/display: Expose HDMI properties to
 userspace
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Right now the HDMI properties like vendor and product ids are hardcoded
in the function "intel_hdmi_compute_spd_infoframe()".

ret = hdmi_spd_infoframe_init(frame, "Intel", "Integrated gfx").

This patch enables the possibility of setting vendor and product fields
of the Infoframe structure in the userspace, instead of hardcoding in
the kernel.

The changes has been Tested by an IGT testcase , which will be floated
in few hours


Nischal Varide (1):
  drm/i915/display: Expose HDMI properties to userspace

 drivers/gpu/drm/i915/display/intel_atomic.c   | 14 +++++++++++++
 .../gpu/drm/i915/display/intel_connector.c    | 20 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_connector.h    |  1 +
 .../drm/i915/display/intel_display_types.h    |  5 +++++
 drivers/gpu/drm/i915/display/intel_hdmi.c     | 14 ++++++++++++-
 drivers/gpu/drm/i915/display/intel_hdmi.h     |  5 +++++
 drivers/gpu/drm/i915/i915_drv.h               |  1 +
 7 files changed, 59 insertions(+), 1 deletion(-)

-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
