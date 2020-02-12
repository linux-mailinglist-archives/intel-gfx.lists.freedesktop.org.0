Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A60015A656
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2020 11:29:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6511C89A08;
	Wed, 12 Feb 2020 10:29:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A1AD89A08;
 Wed, 12 Feb 2020 10:29:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 02:29:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="434000923"
Received: from ramaling-i9x.iind.intel.com ([10.99.66.154])
 by fmsmga006.fm.intel.com with ESMTP; 12 Feb 2020 02:29:26 -0800
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Date: Wed, 12 Feb 2020 15:59:37 +0530
Message-Id: <20200212102942.26568-1-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 0/5] HDCP misc
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

Combined HDCP patches together. Few for DRM SRM handling and few
more for hdcp2.2 compliance fix at I915.

v2:
  minor changes in i915 related 3 patches.

Ramalingam C (5):
  drm/hdcp: optimizing the srm handling
  drm/hdcp: fix DRM_HDCP_2_KSV_COUNT_2_LSBITS
  drm/i915: terminate reauth at stream management failure
  drm/i915: dont retry stream management at seq_num_m roll over
  drm/i915/hdcp: conversion to struct drm_device based logging macros.

 drivers/gpu/drm/drm_hdcp.c                | 158 +++++++-----------
 drivers/gpu/drm/drm_internal.h            |   4 -
 drivers/gpu/drm/drm_sysfs.c               |   2 -
 drivers/gpu/drm/i915/display/intel_hdcp.c | 189 +++++++++++++---------
 include/drm/drm_hdcp.h                    |   6 +-
 5 files changed, 171 insertions(+), 188 deletions(-)

-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
