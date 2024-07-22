Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF9959387F0
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jul 2024 06:08:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93F7710E23B;
	Mon, 22 Jul 2024 04:08:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MFG5ZzKN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1FC410E188;
 Mon, 22 Jul 2024 04:08:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721621327; x=1753157327;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=pwr2CvIbH3d4gdoVL52Mki8m0rGEKzr2+/DcgfmO6xU=;
 b=MFG5ZzKNSN4t2uMVpHkuSt8PtzAxo3gyoOsLr/x33T77g2hOabNvvXMV
 DirqZQ1ClGjfsV8z1bG1iWPAvaK5IC2tRdDh0xRTeOgvBeRhkY7FuVbnZ
 Rxh0ekuAA3QQaV6DlKqmUJzUqKJnaoWjAETYiozWYh94u+YKrmI+ztasB
 ijIhhu92MZvIL0CLXmXhTCct9sIgFj2p9Bzuo/5svj5vcZHMQnrsxwjjp
 t5rA/8Jd1WyrZ3LYX7c02hq+R8hgup92FM6/OfriWE53ZpPhQPcRsmvs+
 bHwH1MFUzaXhAVzhr0ASRZlUby9EaiXJVT21eG33RyqGprww005MJtsOH Q==;
X-CSE-ConnectionGUID: M0YAs7kPQgqfiq9yHvAAjQ==
X-CSE-MsgGUID: Adc/OA9VR1KwdvbTqZLQ6Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11140"; a="22931933"
X-IronPort-AV: E=Sophos;i="6.09,227,1716274800"; d="scan'208";a="22931933"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2024 21:08:46 -0700
X-CSE-ConnectionGUID: jea2dfB7S4asHkXXBTLGQw==
X-CSE-MsgGUID: LaUkZM8ZQ8SZ+h37JQNPOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,227,1716274800"; d="scan'208";a="56296268"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa004.fm.intel.com with ESMTP; 21 Jul 2024 21:08:45 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 0/2] Fix null pointer error in HDCP capability check 
Date: Mon, 22 Jul 2024 09:36:20 +0530
Message-ID: <20240722040622.3605835-1-suraj.kandpal@intel.com>
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

Suraj Kandpal (2):
  drm/i915/hdcp: Check encoder availibility before using it
  drm/xe/hdcp: Check GSC structure validity

 drivers/gpu/drm/i915/display/intel_hdcp.c | 7 ++++++-
 drivers/gpu/drm/xe/display/xe_hdcp_gsc.c  | 8 ++++++--
 2 files changed, 12 insertions(+), 3 deletions(-)

-- 
2.43.2

