Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E4797870C3
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 15:46:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89F1410E552;
	Thu, 24 Aug 2023 13:46:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5912A10E034;
 Thu, 24 Aug 2023 13:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692884786; x=1724420786;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=k/KJQx8gqsSEm7rm85TQpOlExCDa24aHbOQ6NV6RaK4=;
 b=meI7dCnpjTEl933B0lWJNKlfpzODfLtu8A/o6ELbXBLvZI2pxlKxX3cJ
 ButWJLvAicotmen9kpKgRcgV/2Wj868akkrc1WB0unud6TnbPy/Q1hFDR
 XQ03G8eo+NRUBJ7twybz6wsmxx7vI5tqlQ/8o3lpmW6hrS6p/gqE380y+
 fnUTINUnkpKXqwu5OPd5lgxuoKhGs9aHSAmL7Mv8266MRMTcBsV5rwfI5
 1bT1SLRaVeLDrao4ggRnkaDhuIZXfOPniemUsGPjctOvHmzsp8ttSfnss
 /B+i2UjFwKqRNRl1/QvpXNgqJQaX1hfrLjb+HquLUi+aNCIJ88o5MJojn A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="405447499"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="405447499"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 06:46:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="802550886"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="802550886"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.162])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 06:46:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Thu, 24 Aug 2023 16:46:01 +0300
Message-Id: <cover.1692884619.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/6] drm, cec and edid updates
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
Cc: Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 linux-media@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Avoid accessing the raw edid directly. Pre-parse the source physical
address during normal EDID parsing and use that for CEC.

Jani Nikula (6):
  drm/edid: add drm_edid_is_digital()
  drm/i915/display: use drm_edid_is_digital()
  drm/edid: parse source physical address
  drm/cec: add drm_dp_cec_attach() as the non-edid version of set edid
  drm/i915/cec: switch to setting physical address directly
  media: cec: core: add note about *_from_edid() function usage in drm

 drivers/gpu/drm/display/drm_dp_cec.c      | 22 +++++++++++++++++++---
 drivers/gpu/drm/drm_edid.c                | 22 ++++++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_crt.c  | 11 ++++-------
 drivers/gpu/drm/i915/display/intel_dp.c   |  7 ++-----
 drivers/gpu/drm/i915/display/intel_hdmi.c |  8 +++-----
 drivers/gpu/drm/i915/display/intel_sdvo.c |  7 ++-----
 drivers/media/cec/core/cec-adap.c         |  4 ++++
 drivers/media/cec/core/cec-notifier.c     |  4 ++++
 include/drm/display/drm_dp_helper.h       |  6 ++++++
 include/drm/drm_connector.h               |  8 ++++++++
 include/drm/drm_edid.h                    |  1 +
 11 files changed, 73 insertions(+), 27 deletions(-)

-- 
2.39.2

