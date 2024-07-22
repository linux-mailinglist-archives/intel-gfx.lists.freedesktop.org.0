Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D19293890D
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jul 2024 08:47:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D31210E377;
	Mon, 22 Jul 2024 06:47:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C/Coe7P9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93C5310E377;
 Mon, 22 Jul 2024 06:47:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721630839; x=1753166839;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BoqNOeXr5Yv/EcVCOCdOuxKlVYPeo61A5ROSFXiTiQ4=;
 b=C/Coe7P9tfTINY+0S5C2+e9qfKFXqf9DixuCIOYbviYLa0URiB7kCzyB
 a2Tiooe16vWyEL0u4qfXetYE8S1vN/cROYaGHk6ZuQ5XIMP/nYayhLJ8U
 RIOimUgO6gPJF24wmaIJkVKzLx5EJyu2HrMD//GCwQMT88KA8rwDcCqfi
 zIQoqoWBzARRSisUVl0zX0UR6hH1Ve+A/dLKRB0L0aVgkkgHXf/3i5EYN
 bIu6+irkbYvNHZtr2sXlHl/fh7Hm99WbVqXz0yv601LMrNnR10GXaATFw
 G4E3VJ4TCMwpRv02tDCWZCgmxJMBurLl5TlIiJ2t8lumJ4iKRN18j0eSA w==;
X-CSE-ConnectionGUID: QYc9SWhsTkqQr+dGwaHoZg==
X-CSE-MsgGUID: n2beYeaRQsCLv+OB8+AaEQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11140"; a="18798180"
X-IronPort-AV: E=Sophos;i="6.09,227,1716274800"; d="scan'208";a="18798180"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2024 23:47:18 -0700
X-CSE-ConnectionGUID: NsSalQfSQAyme38JBENLHQ==
X-CSE-MsgGUID: 6J7s2dWeRym++inQ9NzfFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,227,1716274800"; d="scan'208";a="51670535"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa008.fm.intel.com with ESMTP; 21 Jul 2024 23:47:16 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 0/2] Fix null pointer error in HDCP capability check 
Date: Mon, 22 Jul 2024 12:14:48 +0530
Message-ID: <20240722064451.3610512-1-suraj.kandpal@intel.com>
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

During suspend/resume or plug/unplug scenarios encoder and gsc
are not initialized. This patch series adds checks to make sure
we don't run into a null pointer error.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Suraj Kandpal (3):
  drm/i915/hdcp: Add encoder check in intel_hdcp_get_capability
  drm/i915/hdcp: Add encoder check in hdcp2_get_capability
  drm/xe/hdcp: Check GSC structure validity

 drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 11 +++++++++--
 drivers/gpu/drm/i915/display/intel_hdcp.c    |  7 ++++++-
 drivers/gpu/drm/xe/display/xe_hdcp_gsc.c     |  8 ++++++--
 3 files changed, 21 insertions(+), 5 deletions(-)

-- 
2.43.2

