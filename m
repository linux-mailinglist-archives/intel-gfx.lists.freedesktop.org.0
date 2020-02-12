Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED60A15A4E1
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2020 10:35:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B2326E479;
	Wed, 12 Feb 2020 09:35:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43A336E3D8;
 Wed, 12 Feb 2020 09:35:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 01:35:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="406240175"
Received: from ramaling-i9x.iind.intel.com ([10.99.66.154])
 by orsmga005.jf.intel.com with ESMTP; 12 Feb 2020 01:35:00 -0800
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Date: Wed, 12 Feb 2020 15:05:10 +0530
Message-Id: <20200212093515.11700-1-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/5] HDCP misc
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

Ramalingam C (5):
  drm/hdcp: optimizing the srm handling
  drm/hdcp: fix DRM_HDCP_2_KSV_COUNT_2_LSBITS
  drm/i915: terminate reauth at stream management failure
  drm/i915: dont retry stream management at seq_num_m roll over
  drm/i915/hdcp: conversion to struct drm_device based logging macros.

 drivers/gpu/drm/drm_hdcp.c                | 158 +++++++-----------
 drivers/gpu/drm/drm_internal.h            |   4 -
 drivers/gpu/drm/drm_sysfs.c               |   2 -
 drivers/gpu/drm/i915/display/intel_hdcp.c | 188 +++++++++++++---------
 include/drm/drm_hdcp.h                    |   6 +-
 5 files changed, 170 insertions(+), 188 deletions(-)

-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
