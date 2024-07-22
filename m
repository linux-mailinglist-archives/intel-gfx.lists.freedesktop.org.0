Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DCA39387DB
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jul 2024 05:55:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4221310E143;
	Mon, 22 Jul 2024 03:55:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F/U60JlA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBADA10E111;
 Mon, 22 Jul 2024 03:55:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721620533; x=1753156533;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=pwr2CvIbH3d4gdoVL52Mki8m0rGEKzr2+/DcgfmO6xU=;
 b=F/U60JlAfBXM3kUDlp816TJ7mJq0hszT90IBieYTxbWuuUkbnHohTht/
 aANjdXynAODRdtxcrhHMdby6m/jtdaZirM1qRL8m1xgmm7gJOKJogM/du
 nbAFZny29u2f1xF3WfzF6uP9je3tEN/pQ+uboO4lWC/znD1Z6ucxdrA8Q
 M6ate36kOKgWjHR9NN0SET1dUhK91tFzgtr9U60bHJ09ITJIvfBej6Dyz
 tFKt159RCup1HF9CwAEXT0GYkVf8fkrQFERATeT6VCSk1rmu+wFRhTMkD
 5ka2Dlhn1heqYtzNwsoyzVzJBXsMUxYEnbfNrG1YozvgevOvTLZPhPMcq w==;
X-CSE-ConnectionGUID: P+olupy3SxiAE2KEEbS9Iw==
X-CSE-MsgGUID: cYASQ/7lQCKv2KRP2puaUA==
X-IronPort-AV: E=McAfee;i="6700,10204,11140"; a="44592968"
X-IronPort-AV: E=Sophos;i="6.09,227,1716274800"; d="scan'208";a="44592968"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2024 20:55:32 -0700
X-CSE-ConnectionGUID: KA2iUxSEQxK5aRwTKhiOow==
X-CSE-MsgGUID: rBlasapwR7+J5O74roNBww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,227,1716274800"; d="scan'208";a="51630404"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa008.fm.intel.com with ESMTP; 21 Jul 2024 20:55:30 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 0/2] Fix null pointer error in HDCP capability check 
Date: Mon, 22 Jul 2024 09:23:03 +0530
Message-ID: <20240722035306.3605245-1-suraj.kandpal@intel.com>
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

