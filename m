Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9BAD810CFD
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 10:08:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBFE710E749;
	Wed, 13 Dec 2023 09:08:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71BE910E749
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 09:08:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702458495; x=1733994495;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zDPbeQCNxg4+aoIpTUhwSFYn8Gs6dUyUMgzirB6yZBE=;
 b=PpMyBxM7XmLKD9a589i+1UtN28wviCrE20n67AwT1aPa71+jmPofIPqF
 MvB6pIedgC9yLINXikh2gH0q47VJtWZVAvV8x1xdoyuicDGkKCxsU7pPP
 9j2qFisYcmbnWgwX7Hm8ngfewBWdxCDNWWODPuSEjIOF20yYT0/wHl4/X
 eF6JFrBBI7XTwBzjVzWL9eJm6dNUD1PHMa26WYrBTP1RMO0FutdwoZPPm
 IyNrgUrhJZEFn+W6An0vS2s2IILKCjJ5MdUqVJv3l4H5l4ml6gWp1k1jp
 +HryaUopVzyix/BVmPuqrfkdQsrhtW0jtBJjP/IWGehxOzkItyx31qt4+ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="379930483"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="379930483"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 01:08:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="864553884"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="864553884"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by FMSMGA003.fm.intel.com with ESMTP; 13 Dec 2023 01:08:12 -0800
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v3 0/2] Enable Darkscreen Feature
Date: Wed, 13 Dec 2023 14:36:39 +0530
Message-Id: <20231213090641.1153030-1-nemesa.garg@intel.com>
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

The logic checks for any black screen at pipe level and
upon such detection prints error. Darkscreen compares the
pixels with the compare value(0x00 - black) for the detection
purpose. This feature can be enables/disabled through debugfs.

Nemesa Garg (2):
  drm/i915/display: Add support for darskscreen detection
  drm/i915/display: Add darkscreen debugfs entry under crtc

 drivers/gpu/drm/i915/Makefile                 |   1 +
 .../gpu/drm/i915/display/intel_darkscreen.c   | 131 ++++++++++++++++++
 .../gpu/drm/i915/display/intel_darkscreen.h   |  26 ++++
 .../drm/i915/display/intel_display_debugfs.c  |   2 +
 .../drm/i915/display/intel_display_types.h    |   2 +
 drivers/gpu/drm/i915/i915_reg.h               |   8 ++
 drivers/gpu/drm/xe/Makefile                   |   1 +
 7 files changed, 171 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/display/intel_darkscreen.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_darkscreen.h

-- 
2.25.1

